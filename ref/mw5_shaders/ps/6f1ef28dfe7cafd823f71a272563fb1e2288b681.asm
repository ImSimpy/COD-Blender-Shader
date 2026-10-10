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
; PACKED_TRI_DATA          0   xyzw       14     NONE    uint   x   
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
; shader hash: 93b26b30f65a5754b4c219fa230c5c1a
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
;                                   sampler      NA          NA      S1             s1     1
;                                   sampler      NA          NA      S2             s2     1
;                                   sampler      NA          NA      S3             s3     1
;                                   sampler      NA          NA      S4             s4     1
;                                   sampler      NA          NA      S5             s5     1
;                                   texture     f32          2d      T0      t0,space3unbounded
;                                   texture    byte         r/o      T1     t37,space1     1
;                                   texture    byte         r/o      T2     t61,space1     1
;                                   texture    byte         r/o      T3     t62,space1     1
;                                   texture    byte         r/o      T4     t63,space1     1
;                                   texture     f32          3d      T5     t21,space2     1
;                                   texture     f32          3d      T6     t22,space2     1
;                                   texture     f32          2d      T7     t33,space2     1
;                                   texture     f32     2darray      T8     t16,space2     1
;                                   texture     f32          3d      T9     t15,space2     1
;                                   texture     f32          2d     T10     t14,space2     1
;                                   texture     f32          2d     T11     t13,space2     1
;                                   texture     u32          2d     T12     t17,space2     1
;                                   texture     f32          3d     T13     t18,space2     1
;                                   texture    byte         r/o     T14      t3,space1     1
;                                   texture    byte         r/o     T15      t4,space1     1
;                                   texture    byte         r/o     T16      t5,space1     1
;                                   texture    byte         r/o     T17      t6,space1     1
;                                   texture     f32          2d     T18     t69,space2     1
;                                   texture     f32          2d     T19     t37,space2     1
;                                   texture     f32     2darray     T20     t35,space2     1
;                                   texture     f32          3d     T21     t31,space2     1
;                                   texture    byte         r/o     T22     t10,space1     1
;                                   texture    byte         r/o     T23      t1,space1     1
;                                   texture     f32          1d     T24     t32,space2     1
;                                   texture     f32     2darray     T25      t8,space2     1
;                                   texture     f32          2d     T26      t2,space2     1
;                                   texture     f32          2d     T27      t3,space2     1
;                                   texture     f32          2d     T28      t4,space2     1
;                                   textureunorm_f32     2darray     T29     t80,space2     1
;                                   texture    byte         r/o     T30     t67,space1     1
;                                   texture     f32          2d     T31      t7,space2     1
;                                   texture     f32          2d     T32      t6,space2     1
;                                   texture     f32          2d     T33      t5,space2     1
;                                   texture     f32          2d     T34     t38,space2     1
;                                   texture    byte         r/o     T35     t12,space1     1
;                                   texture    byte         r/o     T36     t13,space1     1
;
;
; ViewId state:
;
; Number of inputs: 61, outputs: 4
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 3, 11, 12, 13, 14, 15, 20, 21, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 47, 56, 60 }
;   output 1 depends on inputs: { 0, 1, 3, 11, 12, 13, 14, 15, 20, 21, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 47, 56, 60 }
;   output 2 depends on inputs: { 0, 1, 3, 11, 12, 13, 14, 15, 20, 21, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 47, 56, 60 }
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
%"class.Texture3D<float>" = type { float, %"class.Texture3D<float>::mips_type" }
%"class.Texture3D<float>::mips_type" = type { i32 }
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

@PCF_OFFSETS_8.v.1dim = internal constant [16 x float] [float 0xBFE6A09020000000, float 0x3FE6A09020000000, float 0.000000e+00, float -8.750000e-01, float 0x3FE0F837C0000000, float 0x3FE0F837C0000000, float -6.250000e-01, float 0.000000e+00, float 0x3FD6A161E0000000, float 0xBFD6A161E0000000, float 0.000000e+00, float 3.750000e-01, float 0xBFC6A161E0000000, float 0xBFC6A161E0000000, float 1.250000e-01, float 0.000000e+00], align 4

define void @ps_main() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 36, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 35, i32 12, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 34, i32 38, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 33, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 32, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 31, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 30, i32 67, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 29, i32 80, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 28, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 27, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 26, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 25, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 24, i32 32, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 23, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 22, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 21, i32 31, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 20, i32 35, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 19, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 18, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 18, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %27 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 14, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %28 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 15, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %29 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %30 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 33, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %31 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 22, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %32 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 21, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %33 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 63, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %34 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 62, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %35 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 61, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %36 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %37 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 5, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %38 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 4, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %39 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %40 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %41 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %42 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %43 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %44 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %45 = alloca [4 x i32], align 4
  %46 = call i32 @dx.op.loadInput.i32(i32 4, i32 16, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %47 = icmp ne i32 %46, 0
  %48 = call i32 @dx.op.loadInput.i32(i32 4, i32 15, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %49 = call float @dx.op.loadInput.f32(i32 4, i32 12, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %50 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %51 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %52 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %53 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %54 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %55 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %56 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %57 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %58 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %59 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %60 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %61 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %62 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %63 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %64 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %65 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %66 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %67 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %68 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %69 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %70 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %71 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %72 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %73 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %74 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %75 = alloca [3 x float], align 4
  %76 = alloca [3 x float], align 4
  %77 = alloca [3 x float], align 4
  %78 = alloca [3 x float], align 4
  %79 = alloca [3 x float], align 4
  %80 = alloca [3 x float], align 4
  %81 = alloca [3 x float], align 4
  %82 = alloca [3 x float], align 4
  %83 = alloca [12 x float], align 4
  %84 = alloca [12 x float], align 4
  %85 = alloca [4 x float], align 4
  %86 = alloca [4 x float], align 4
  %87 = alloca [4 x float], align 4
  %88 = alloca [3 x float], align 4
  %89 = alloca [3 x float], align 4
  %90 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %91 = extractvalue %dx.types.CBufRet.f32 %90, 0
  %92 = fmul fast float %91, %72
  %93 = fmul fast float %91, %73
  %94 = select i1 %47, float 1.000000e+00, float -1.000000e+00
  %95 = call float @dx.op.dot3.f32(i32 55, float %68, float %69, float %70, float %68, float %69, float %70)  ; Dot3(ax,ay,az,bx,by,bz)
  %96 = bitcast float %95 to i32
  %97 = ashr i32 %96, 1
  %98 = sub nsw i32 1597250115, %97
  %99 = bitcast i32 %98 to float
  %100 = fmul fast float %68, %94
  %101 = fmul fast float %100, %99
  %102 = fmul fast float %69, %94
  %103 = fmul fast float %102, %99
  %104 = fmul fast float %70, %94
  %105 = fmul fast float %104, %99
  %106 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %107 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %44, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %108 = extractvalue %dx.types.CBufRet.i32 %107, 3
  %109 = and i32 %108, 3
  %110 = icmp ne i32 %109, 0
  %111 = and i32 %108, 4
  %112 = icmp ne i32 %111, 0
  %113 = and i1 %110, %112
  br i1 %113, label %114, label %125

; <label>:114                                     ; preds = %0
  %115 = extractvalue %dx.types.CBufRet.f32 %106, 3
  %116 = fmul fast float %115, %93
  %117 = extractvalue %dx.types.CBufRet.f32 %106, 2
  %118 = fmul fast float %117, %92
  %119 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %40, float %118, float %116, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %120 = extractvalue %dx.types.ResRet.f32 %119, 0
  %121 = fsub fast float 1.000000e+00, %120
  %122 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %123 = extractvalue %dx.types.CBufRet.f32 %122, 0
  %124 = fcmp fast olt float %121, %123
  br label %128

; <label>:125                                     ; preds = %0
  %126 = icmp eq i32 %111, 0
  %127 = and i1 %110, %126
  br label %128

; <label>:128                                     ; preds = %125, %114
  %129 = phi i1 [ %124, %114 ], [ %127, %125 ]
  %130 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %131 = extractvalue %dx.types.CBufRet.f32 %130, 2
  %132 = fmul fast float %131, 0x3FE3C6EF40000000
  %133 = frem fast float %92, 2.560000e+02
  %134 = frem fast float %93, 2.560000e+02
  %135 = fptoui float %133 to i32
  %136 = fptoui float %134 to i32
  %137 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %18, i32 0, i32 %135, i32 %136, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %138 = extractvalue %dx.types.ResRet.f32 %137, 0
  %139 = fadd fast float %138, %132
  %140 = add i32 %48, 60
  %141 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %140, i32 undef)  ; BufferLoad(srv,index,wot)
  %142 = extractvalue %dx.types.ResRet.i32 %141, 0
  %143 = add i32 %142, 0
  %144 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %143, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %145 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %144, i32 0)  ; GetDimensions(handle,mipLevel)
  %146 = extractvalue %dx.types.Dimensions %145, 0
  %147 = sitofp i32 %146 to float
  %148 = extractvalue %dx.types.Dimensions %145, 1
  %149 = sitofp i32 %148 to float
  %150 = add i32 %48, 24
  %151 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %150, i32 undef)  ; BufferLoad(srv,index,wot)
  %152 = extractvalue %dx.types.ResRet.i32 %151, 2
  %153 = bitcast i32 %152 to float
  %154 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %155 = extractvalue %dx.types.CBufRet.f32 %154, 0
  %156 = extractvalue %dx.types.CBufRet.f32 %154, 1
  %157 = extractvalue %dx.types.CBufRet.f32 %154, 2
  %158 = getelementptr [3 x float], [3 x float]* %88, i32 0, i32 0
  store float %65, float* %158, align 4, !noalias !91
  %159 = getelementptr [3 x float], [3 x float]* %88, i32 0, i32 1
  store float %66, float* %159, align 4, !noalias !91
  %160 = fsub fast float 1.000000e+00, %65
  %161 = fsub fast float %160, %66
  %162 = getelementptr [3 x float], [3 x float]* %88, i32 0, i32 2
  store float %161, float* %162, align 4, !noalias !91
  %163 = getelementptr inbounds [3 x float], [3 x float]* %89, i32 0, i32 0
  store float %50, float* %163, align 4, !tbaa !102, !noalias !91
  %164 = getelementptr inbounds [3 x float], [3 x float]* %89, i32 0, i32 1
  store float %51, float* %164, align 4, !tbaa !102, !noalias !91
  %165 = getelementptr inbounds [3 x float], [3 x float]* %89, i32 0, i32 2
  store float %52, float* %165, align 4, !tbaa !102, !noalias !91
  %166 = getelementptr [3 x float], [3 x float]* %77, i32 0, i32 0
  %167 = getelementptr [3 x float], [3 x float]* %78, i32 0, i32 0
  store float %63, float* %166, align 4
  store float %64, float* %167, align 4
  %168 = getelementptr [3 x float], [3 x float]* %77, i32 0, i32 1
  %169 = getelementptr [3 x float], [3 x float]* %78, i32 0, i32 1
  store float %59, float* %168, align 4
  store float %60, float* %169, align 4
  %170 = getelementptr [3 x float], [3 x float]* %77, i32 0, i32 2
  %171 = getelementptr [3 x float], [3 x float]* %78, i32 0, i32 2
  store float %55, float* %170, align 4
  store float %56, float* %171, align 4
  %172 = getelementptr [3 x float], [3 x float]* %75, i32 0, i32 0
  %173 = getelementptr [3 x float], [3 x float]* %76, i32 0, i32 0
  store float %61, float* %172, align 4
  store float %62, float* %173, align 4
  %174 = getelementptr [3 x float], [3 x float]* %75, i32 0, i32 1
  %175 = getelementptr [3 x float], [3 x float]* %76, i32 0, i32 1
  store float %57, float* %174, align 4
  store float %58, float* %175, align 4
  %176 = getelementptr [3 x float], [3 x float]* %75, i32 0, i32 2
  %177 = getelementptr [3 x float], [3 x float]* %76, i32 0, i32 2
  store float %53, float* %176, align 4
  store float %54, float* %177, align 4
  br label %178

; <label>:178                                     ; preds = %274, %128
  %179 = phi float [ %276, %274 ], [ %65, %128 ]
  %180 = phi float [ %265, %274 ], [ undef, %128 ]
  %181 = phi float [ %266, %274 ], [ undef, %128 ]
  %182 = phi float [ %267, %274 ], [ undef, %128 ]
  %183 = phi float [ %268, %274 ], [ 1.000000e+00, %128 ]
  %184 = phi float [ %269, %274 ], [ 0.000000e+00, %128 ]
  %185 = phi i32 [ %272, %274 ], [ 0, %128 ]
  %186 = phi float [ %270, %274 ], [ 0.000000e+00, %128 ]
  %187 = phi float [ %271, %274 ], [ 0.000000e+00, %128 ]
  %188 = fcmp fast ogt float %179, 0x3EB0C6F7A0000000
  br i1 %188, label %189, label %264

; <label>:189                                     ; preds = %178
  %190 = getelementptr inbounds [3 x float], [3 x float]* %89, i32 0, i32 %185
  %191 = load float, float* %190, align 4, !tbaa !102, !noalias !91
  %192 = fdiv fast float 1.000000e+00, %191
  %193 = getelementptr [3 x float], [3 x float]* %75, i32 0, i32 %185
  %194 = getelementptr [3 x float], [3 x float]* %76, i32 0, i32 %185
  %195 = load float, float* %193, align 4
  %196 = load float, float* %194, align 4
  %197 = fmul fast float %195, %192
  %198 = fmul fast float %196, %192
  %199 = getelementptr [3 x float], [3 x float]* %77, i32 0, i32 %185
  %200 = getelementptr [3 x float], [3 x float]* %78, i32 0, i32 %185
  %201 = load float, float* %199, align 4
  %202 = load float, float* %200, align 4
  %203 = fmul fast float %201, %192
  %204 = fmul fast float %202, %192
  %205 = fmul fast float %197, %147
  %206 = call float @dx.op.unary.f32(i32 83, float %205)  ; DerivCoarseX(value)
  %207 = call float @dx.op.unary.f32(i32 84, float %205)  ; DerivCoarseY(value)
  %208 = fmul fast float %198, %149
  %209 = call float @dx.op.unary.f32(i32 83, float %208)  ; DerivCoarseX(value)
  %210 = call float @dx.op.unary.f32(i32 84, float %208)  ; DerivCoarseY(value)
  %211 = fmul fast float %209, %209
  %212 = fmul fast float %210, %210
  %213 = fadd fast float %212, %211
  %214 = fmul fast float %209, %206
  %215 = fmul fast float %210, %207
  %216 = fadd fast float %215, %214
  %217 = fmul fast float %206, %206
  %218 = fmul fast float %207, %207
  %219 = fadd fast float %218, %217
  %220 = fmul fast float %213, %219
  %221 = fmul fast float %216, %216
  %222 = fsub fast float %220, %221
  %223 = bitcast float %222 to i32
  %224 = fadd fast float %213, %219
  %225 = bitcast float %224 to i32
  %226 = sub i32 8388608, %225
  %227 = add i32 %226, %223
  %228 = ashr i32 %227, 24
  %229 = sitofp i32 %228 to float
  %230 = add i32 %48, 72
  %231 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %230, i32 undef)  ; BufferLoad(srv,index,wot)
  %232 = extractvalue %dx.types.ResRet.i32 %231, 0
  %233 = add i32 %232, 0
  %234 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %233, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %235 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %234, %dx.types.Handle %40, float %197, float %198, float undef, float undef, i32 0, i32 0, i32 undef, float %229)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %236 = extractvalue %dx.types.ResRet.f32 %235, 0
  %237 = fmul fast float %236, 2.000000e+00
  %238 = fadd fast float %237, -1.000000e+00
  %239 = fmul fast float %238, %153
  %240 = fmul fast float %203, %239
  %241 = fmul fast float %204, %239
  %242 = fadd fast float %240, %197
  %243 = fadd fast float %241, %198
  %244 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %140, i32 undef)  ; BufferLoad(srv,index,wot)
  %245 = extractvalue %dx.types.ResRet.i32 %244, 0
  %246 = add i32 %245, 0
  %247 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %246, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %248 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %247, %dx.types.Handle %40, float %242, float %243, float undef, float undef, i32 0, i32 0, i32 undef, float %229)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %249 = extractvalue %dx.types.ResRet.f32 %248, 0
  %250 = extractvalue %dx.types.ResRet.f32 %248, 1
  %251 = extractvalue %dx.types.ResRet.f32 %248, 2
  %252 = extractvalue %dx.types.ResRet.f32 %248, 3
  %253 = fmul fast float %249, 2.000000e+00
  %254 = fmul fast float %250, 2.000000e+00
  %255 = fmul fast float %251, 2.000000e+00
  %256 = fadd fast float %253, -1.000000e+00
  %257 = fadd fast float %254, -1.000000e+00
  %258 = fadd fast float %255, -1.000000e+00
  %259 = fmul fast float %179, %252
  %260 = call float @dx.op.dot3.f32(i32 55, float %155, float %156, float %157, float %256, float %257, float %258)  ; Dot3(ax,ay,az,bx,by,bz)
  %261 = fmul fast float %259, %260
  %262 = fcmp fast olt float %261, %183
  br i1 %262, label %263, label %264

; <label>:263                                     ; preds = %189
  br label %264

; <label>:264                                     ; preds = %263, %189, %178
  %265 = phi float [ %180, %178 ], [ %256, %263 ], [ %180, %189 ]
  %266 = phi float [ %181, %178 ], [ %257, %263 ], [ %181, %189 ]
  %267 = phi float [ %182, %178 ], [ %258, %263 ], [ %182, %189 ]
  %268 = phi float [ %183, %178 ], [ %261, %263 ], [ %183, %189 ]
  %269 = phi float [ %184, %178 ], [ %229, %263 ], [ %229, %189 ]
  %270 = phi float [ %186, %178 ], [ %242, %263 ], [ %186, %189 ]
  %271 = phi float [ %187, %178 ], [ %243, %263 ], [ %187, %189 ]
  %272 = add nuw nsw i32 %185, 1
  %273 = icmp eq i32 %272, 3
  br i1 %273, label %277, label %274

; <label>:274                                     ; preds = %264
  %275 = getelementptr [3 x float], [3 x float]* %88, i32 0, i32 %272
  %276 = load float, float* %275, align 4, !tbaa !102, !noalias !91
  br label %178

; <label>:277                                     ; preds = %264
  %278 = call float @dx.op.unary.f32(i32 22, float %139)  ; Frc(value)
  br i1 %47, label %288, label %279

; <label>:279                                     ; preds = %277
  %280 = call float @dx.op.dot3.f32(i32 55, float %101, float %103, float %105, float %265, float %266, float %267)  ; Dot3(ax,ay,az,bx,by,bz)
  %281 = fmul fast float %280, 2.000000e+00
  %282 = fmul fast float %281, %101
  %283 = fmul fast float %281, %103
  %284 = fmul fast float %281, %105
  %285 = fsub fast float %265, %282
  %286 = fsub fast float %266, %283
  %287 = fsub fast float %267, %284
  br label %288

; <label>:288                                     ; preds = %279, %277
  %289 = phi float [ %285, %279 ], [ %265, %277 ]
  %290 = phi float [ %286, %279 ], [ %266, %277 ]
  %291 = phi float [ %287, %279 ], [ %267, %277 ]
  %292 = add i32 %48, 56
  %293 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %292, i32 undef)  ; BufferLoad(srv,index,wot)
  %294 = extractvalue %dx.types.ResRet.i32 %293, 0
  %295 = add i32 %294, 0
  %296 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %295, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %297 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %296, %dx.types.Handle %40, float %270, float %271, float undef, float undef, i32 0, i32 0, i32 undef, float %269)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %298 = extractvalue %dx.types.ResRet.f32 %297, 0
  %299 = extractvalue %dx.types.ResRet.f32 %297, 1
  %300 = extractvalue %dx.types.ResRet.f32 %297, 2
  %301 = extractvalue %dx.types.ResRet.f32 %297, 3
  %302 = add i32 %48, 64
  %303 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %302, i32 undef)  ; BufferLoad(srv,index,wot)
  %304 = extractvalue %dx.types.ResRet.i32 %303, 0
  %305 = add i32 %304, 0
  %306 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %305, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %307 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %306, %dx.types.Handle %40, float %270, float %271, float undef, float undef, i32 0, i32 0, i32 undef, float %269)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %308 = extractvalue %dx.types.ResRet.f32 %307, 0
  %309 = extractvalue %dx.types.ResRet.f32 %307, 1
  %310 = extractvalue %dx.types.ResRet.f32 %307, 2
  %311 = extractvalue %dx.types.ResRet.f32 %307, 3
  %312 = add i32 %48, 68
  %313 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %312, i32 undef)  ; BufferLoad(srv,index,wot)
  %314 = extractvalue %dx.types.ResRet.i32 %313, 0
  %315 = add i32 %314, 0
  %316 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %315, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %317 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %316, %dx.types.Handle %40, float %270, float %271, float undef, float undef, i32 0, i32 0, i32 undef, float %269)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %318 = extractvalue %dx.types.ResRet.f32 %317, 0
  %319 = add i32 %48, 72
  %320 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %319, i32 undef)  ; BufferLoad(srv,index,wot)
  %321 = extractvalue %dx.types.ResRet.i32 %320, 0
  %322 = add i32 %321, 0
  %323 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %322, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %324 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %323, %dx.types.Handle %40, float %270, float %271, float undef, float undef, i32 0, i32 0, i32 undef, float %269)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %325 = extractvalue %dx.types.ResRet.f32 %324, 0
  %326 = fadd fast float %67, 1.000000e+00
  %327 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %150, i32 undef)  ; BufferLoad(srv,index,wot)
  %328 = extractvalue %dx.types.ResRet.i32 %327, 2
  %329 = bitcast i32 %328 to float
  %330 = fmul fast float %325, 2.000000e+00
  %331 = fsub fast float %326, %330
  %332 = fmul fast float %329, %331
  %333 = fadd fast float %332, %74
  %334 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %335 = extractvalue %dx.types.CBufRet.f32 %334, 2
  %336 = extractvalue %dx.types.CBufRet.f32 %334, 3
  %337 = fmul fast float %92, 2.000000e+00
  %338 = fmul fast float %337, %335
  %339 = fmul fast float %93, 2.000000e+00
  %340 = fmul fast float %339, %336
  %341 = fsub fast float 1.000000e+00, %338
  %342 = fsub fast float 1.000000e+00, %340
  %343 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %344 = extractvalue %dx.types.CBufRet.f32 %343, 0
  %345 = extractvalue %dx.types.CBufRet.f32 %343, 1
  %346 = extractvalue %dx.types.CBufRet.f32 %343, 2
  %347 = fmul fast float %341, %344
  %348 = fmul fast float %341, %345
  %349 = fmul fast float %341, %346
  %350 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %351 = extractvalue %dx.types.CBufRet.f32 %350, 0
  %352 = extractvalue %dx.types.CBufRet.f32 %350, 1
  %353 = extractvalue %dx.types.CBufRet.f32 %350, 2
  %354 = fmul fast float %342, %351
  %355 = fmul fast float %342, %352
  %356 = fmul fast float %342, %353
  %357 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %358 = extractvalue %dx.types.CBufRet.f32 %357, 0
  %359 = extractvalue %dx.types.CBufRet.f32 %357, 1
  %360 = extractvalue %dx.types.CBufRet.f32 %357, 2
  %361 = fadd fast float %354, %358
  %362 = fadd fast float %361, %347
  %363 = fadd fast float %355, %359
  %364 = fadd fast float %363, %348
  %365 = fadd fast float %356, %360
  %366 = fadd fast float %365, %349
  %367 = fmul fast float %362, %333
  %368 = fmul fast float %364, %333
  %369 = fmul fast float %366, %333
  %370 = call float @dx.op.unary.f32(i32 26, float %49)  ; Round_ne(value)
  %371 = fptoui float %370 to i32
  %372 = call float @dx.op.unary.f32(i32 26, float %71)  ; Round_ne(value)
  %373 = fptoui float %372 to i32
  %374 = shl i32 %373, 3
  %375 = or i32 %374, 4
  %376 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %375, i32 undef)  ; BufferLoad(srv,index,wot)
  %377 = extractvalue %dx.types.ResRet.i32 %376, 0
  %378 = and i32 %377, 16777215
  %379 = add i32 %378, %371
  %380 = shl i32 %379, 6
  %381 = getelementptr [3 x float], [3 x float]* %79, i32 0, i32 0
  %382 = getelementptr [3 x float], [3 x float]* %80, i32 0, i32 0
  %383 = getelementptr [3 x float], [3 x float]* %81, i32 0, i32 0
  %384 = getelementptr [3 x float], [3 x float]* %82, i32 0, i32 0
  %385 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %380, i32 undef)  ; BufferLoad(srv,index,wot)
  %386 = extractvalue %dx.types.ResRet.f32 %385, 0
  %387 = extractvalue %dx.types.ResRet.f32 %385, 1
  %388 = extractvalue %dx.types.ResRet.f32 %385, 2
  %389 = extractvalue %dx.types.ResRet.f32 %385, 3
  store float %386, float* %381, align 4
  store float %387, float* %382, align 4
  store float %388, float* %383, align 4
  store float %389, float* %384, align 4
  %390 = getelementptr [3 x float], [3 x float]* %79, i32 0, i32 1
  %391 = getelementptr [3 x float], [3 x float]* %80, i32 0, i32 1
  %392 = getelementptr [3 x float], [3 x float]* %81, i32 0, i32 1
  %393 = getelementptr [3 x float], [3 x float]* %82, i32 0, i32 1
  %394 = or i32 %380, 16
  %395 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %394, i32 undef)  ; BufferLoad(srv,index,wot)
  %396 = extractvalue %dx.types.ResRet.f32 %395, 0
  %397 = extractvalue %dx.types.ResRet.f32 %395, 1
  %398 = extractvalue %dx.types.ResRet.f32 %395, 2
  %399 = extractvalue %dx.types.ResRet.f32 %395, 3
  store float %396, float* %390, align 4
  store float %397, float* %391, align 4
  store float %398, float* %392, align 4
  store float %399, float* %393, align 4
  %400 = getelementptr [3 x float], [3 x float]* %79, i32 0, i32 2
  %401 = getelementptr [3 x float], [3 x float]* %80, i32 0, i32 2
  %402 = getelementptr [3 x float], [3 x float]* %81, i32 0, i32 2
  %403 = getelementptr [3 x float], [3 x float]* %82, i32 0, i32 2
  %404 = or i32 %380, 32
  %405 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %404, i32 undef)  ; BufferLoad(srv,index,wot)
  %406 = extractvalue %dx.types.ResRet.f32 %405, 0
  %407 = extractvalue %dx.types.ResRet.f32 %405, 1
  %408 = extractvalue %dx.types.ResRet.f32 %405, 2
  %409 = extractvalue %dx.types.ResRet.f32 %405, 3
  store float %406, float* %400, align 4
  store float %407, float* %401, align 4
  store float %408, float* %402, align 4
  store float %409, float* %403, align 4
  %410 = or i32 %380, 48
  %411 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 %410, i32 undef)  ; BufferLoad(srv,index,wot)
  %412 = extractvalue %dx.types.ResRet.i32 %411, 0
  %413 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %44, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %414 = extractvalue %dx.types.CBufRet.i32 %413, 1
  %415 = icmp eq i32 %414, 0
  %416 = and i32 %412, 4
  %417 = icmp ne i32 %416, 0
  %418 = and i1 %415, %417
  br i1 %418, label %419, label %458

; <label>:419                                     ; preds = %288
  %420 = and i32 %412, 3
  %421 = getelementptr [3 x float], [3 x float]* %79, i32 0, i32 %420
  %422 = getelementptr [3 x float], [3 x float]* %80, i32 0, i32 %420
  %423 = getelementptr [3 x float], [3 x float]* %81, i32 0, i32 %420
  %424 = getelementptr [3 x float], [3 x float]* %82, i32 0, i32 %420
  %425 = load float, float* %421, align 4
  %426 = load float, float* %422, align 4
  %427 = load float, float* %423, align 4
  %428 = load float, float* %424, align 4
  %429 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %430 = extractvalue %dx.types.CBufRet.f32 %429, 0
  %431 = extractvalue %dx.types.CBufRet.f32 %429, 1
  %432 = extractvalue %dx.types.CBufRet.f32 %429, 2
  %433 = call float @dx.op.dot3.f32(i32 55, float %425, float %426, float %427, float %430, float %431, float %432)  ; Dot3(ax,ay,az,bx,by,bz)
  %434 = fadd fast float %433, %428
  %435 = fcmp fast ogt float %434, 1.000000e+00
  br i1 %435, label %436, label %441

; <label>:436                                     ; preds = %419
  %437 = fadd fast float %434, -1.000000e+00
  %438 = fmul fast float %437, 4.000000e+00
  %439 = call float @dx.op.unary.f32(i32 7, float %438)  ; Saturate(value)
  %440 = fmul fast float %439, 4.000000e+00
  br label %447

; <label>:441                                     ; preds = %419
  %442 = fcmp fast olt float %434, 0.000000e+00
  br i1 %442, label %443, label %447

; <label>:443                                     ; preds = %441
  %444 = fmul fast float %434, -4.000000e+00
  %445 = call float @dx.op.unary.f32(i32 7, float %444)  ; Saturate(value)
  %446 = fmul fast float %445, -4.000000e+00
  br label %447

; <label>:447                                     ; preds = %443, %441, %436
  %448 = phi float [ %440, %436 ], [ %446, %443 ], [ 0.000000e+00, %441 ]
  %449 = icmp eq i32 %420, 0
  %450 = select i1 %449, float %448, float 0.000000e+00
  %451 = fadd fast float %389, %450
  store float %451, float* %384, align 4, !noalias !106
  %452 = icmp eq i32 %420, 1
  %453 = select i1 %452, float %448, float 0.000000e+00
  %454 = fadd fast float %399, %453
  store float %454, float* %393, align 4, !noalias !106
  %455 = icmp eq i32 %420, 2
  %456 = select i1 %455, float %448, float 0.000000e+00
  %457 = fadd fast float %409, %456
  store float %457, float* %403, align 4, !noalias !106
  br label %458

; <label>:458                                     ; preds = %447, %288
  %459 = phi float [ %409, %288 ], [ %457, %447 ]
  %460 = phi float [ %399, %288 ], [ %454, %447 ]
  %461 = phi float [ %389, %288 ], [ %451, %447 ]
  %462 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %463 = extractvalue %dx.types.CBufRet.f32 %462, 0
  %464 = extractvalue %dx.types.CBufRet.f32 %462, 1
  %465 = extractvalue %dx.types.CBufRet.f32 %462, 2
  %466 = fadd fast float %463, %367
  %467 = fadd fast float %464, %368
  %468 = fadd fast float %465, %369
  %469 = call float @dx.op.dot4.f32(i32 56, float %386, float %387, float %388, float %461, float %466, float %467, float %468, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %470 = call float @dx.op.dot4.f32(i32 56, float %396, float %397, float %398, float %460, float %466, float %467, float %468, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %471 = call float @dx.op.dot4.f32(i32 56, float %406, float %407, float %408, float %459, float %466, float %467, float %468, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %472 = fadd fast float %318, 0xBFB99999A0000000
  %473 = call float @dx.op.unary.f32(i32 7, float %472)  ; Saturate(value)
  %474 = fmul fast float %473, 0x3FF1C71C80000000
  %475 = call float @dx.op.binary.f32(i32 36, float %318, float 0x3FB99999A0000000)  ; FMin(a,b)
  %476 = fsub fast float 1.000000e+00, %474
  %477 = call float @dx.op.unary.f32(i32 7, float %476)  ; Saturate(value)
  %478 = fmul fast float %477, %298
  %479 = fmul fast float %477, %299
  %480 = fmul fast float %477, %300
  %481 = call float @dx.op.unary.f32(i32 7, float %478)  ; Saturate(value)
  %482 = call float @dx.op.unary.f32(i32 7, float %479)  ; Saturate(value)
  %483 = call float @dx.op.unary.f32(i32 7, float %480)  ; Saturate(value)
  %484 = fmul fast float %474, %298
  %485 = fmul fast float %474, %299
  %486 = fmul fast float %474, %300
  %487 = fadd fast float %484, %475
  %488 = fadd fast float %485, %475
  %489 = fadd fast float %486, %475
  %490 = call float @dx.op.unary.f32(i32 7, float %487)  ; Saturate(value)
  %491 = call float @dx.op.unary.f32(i32 7, float %488)  ; Saturate(value)
  %492 = call float @dx.op.unary.f32(i32 7, float %489)  ; Saturate(value)
  %493 = call float @dx.op.dot3.f32(i32 55, float %481, float %482, float %483, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %494 = fmul fast float %493, 1.875000e-01
  %495 = fadd fast float %494, 0x3FE647AE20000000
  %496 = call float @dx.op.unary.f32(i32 7, float %495)  ; Saturate(value)
  %497 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %498 = extractvalue %dx.types.CBufRet.f32 %497, 0
  %499 = fsub fast float -0.000000e+00, %369
  %500 = call float @dx.op.dot3.f32(i32 55, float %367, float %368, float %369, float %367, float %368, float %369)  ; Dot3(ax,ay,az,bx,by,bz)
  %501 = call float @dx.op.unary.f32(i32 25, float %500)  ; Rsqrt(value)
  %502 = fmul fast float %501, %367
  %503 = fmul fast float %501, %368
  %504 = fmul fast float %501, %369
  %505 = fsub fast float -0.000000e+00, %502
  %506 = fsub fast float -0.000000e+00, %503
  %507 = fsub fast float -0.000000e+00, %504
  %508 = select i1 %129, float 0.000000e+00, float %492
  %509 = call float @dx.op.dot3.f32(i32 55, float %289, float %290, float %291, float %505, float %506, float %507)  ; Dot3(ax,ay,az,bx,by,bz)
  %510 = call float @dx.op.unary.f32(i32 7, float %509)  ; Saturate(value)
  %511 = call float @dx.op.dot3.f32(i32 55, float %502, float %503, float %504, float %289, float %290, float %291)  ; Dot3(ax,ay,az,bx,by,bz)
  %512 = fmul fast float %511, 2.000000e+00
  %513 = fmul fast float %512, %289
  %514 = fmul fast float %512, %290
  %515 = fmul fast float %512, %291
  %516 = fsub fast float %502, %513
  %517 = fsub fast float %503, %514
  %518 = fsub fast float %504, %515
  %519 = call float @dx.op.binary.f32(i32 36, float 1.000000e+00, float %311)  ; FMin(a,b)
  %520 = fsub fast float 1.000000e+00, %519
  %521 = bitcast float %520 to i32
  %522 = ashr i32 %521, 1
  %523 = add nsw i32 %522, 532487669
  %524 = bitcast i32 %523 to float
  %525 = fsub fast float 1.000000e+00, %301
  %526 = call float @dx.op.binary.f32(i32 35, float %525, float 0x3F847AE140000000)  ; FMax(a,b)
  %527 = fmul fast float %526, %526
  %528 = fmul fast float %527, %527
  %529 = call float @dx.op.unary.f32(i32 7, float %510)  ; Saturate(value)
  %530 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %40, float %524, float %528, float %529, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %531 = extractvalue %dx.types.ResRet.f32 %530, 0
  %532 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %533 = extractvalue %dx.types.CBufRet.f32 %532, 0
  %534 = extractvalue %dx.types.CBufRet.f32 %532, 1
  %535 = fadd fast float %533, %367
  %536 = fadd fast float %534, %368
  %537 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %44, i32 260)  ; CBufferLoadLegacy(handle,regIndex)
  %538 = extractvalue %dx.types.CBufRet.i32 %537, 0
  %539 = icmp eq i32 %538, 1
  br i1 %539, label %540, label %575

; <label>:540                                     ; preds = %458
  %541 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %542 = extractvalue %dx.types.CBufRet.f32 %541, 0
  %543 = extractvalue %dx.types.CBufRet.f32 %541, 1
  %544 = fsub fast float %535, %542
  %545 = fsub fast float %536, %543
  %546 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %547 = extractvalue %dx.types.CBufRet.f32 %546, 0
  %548 = extractvalue %dx.types.CBufRet.f32 %546, 1
  %549 = fmul fast float %544, %547
  %550 = fmul fast float %545, %548
  %551 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %27, %dx.types.Handle %40, float %549, float %550, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %552 = extractvalue %dx.types.ResRet.f32 %551, 0
  %553 = fcmp fast ogt float %552, 0.000000e+00
  %554 = extractvalue %dx.types.CBufRet.i32 %537, 3
  %555 = icmp ne i32 %554, 0
  %556 = and i1 %553, %555
  br i1 %556, label %557, label %575, !dx.controlflow.hints !111

; <label>:557                                     ; preds = %540
  %558 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %559 = extractvalue %dx.types.CBufRet.f32 %558, 0
  %560 = extractvalue %dx.types.CBufRet.f32 %558, 1
  %561 = fsub fast float %535, %559
  %562 = fsub fast float %536, %560
  %563 = fmul fast float %561, %561
  %564 = fmul fast float %562, %562
  %565 = fadd fast float %563, %564
  %566 = uitofp i32 %554 to float
  %567 = fmul fast float %566, %566
  %568 = fcmp fast ogt float %565, %567
  br i1 %568, label %575, label %569

; <label>:569                                     ; preds = %557
  %570 = call float @dx.op.unary.f32(i32 24, float %565)  ; Sqrt(value)
  %571 = fsub fast float %566, %570
  %572 = fmul fast float %571, 0x3F75555560000000
  %573 = call float @dx.op.unary.f32(i32 7, float %572)  ; Saturate(value)
  %574 = call float @dx.op.binary.f32(i32 36, float %573, float %552)  ; FMin(a,b)
  br label %575

; <label>:575                                     ; preds = %569, %557, %540, %458
  %576 = phi float [ 1.000000e+00, %458 ], [ %574, %569 ], [ %552, %540 ], [ 0.000000e+00, %557 ]
  %577 = fcmp fast ogt float %576, 0.000000e+00
  br i1 %577, label %578, label %955, !dx.controlflow.hints !112

; <label>:578                                     ; preds = %575
  %579 = fadd fast float %49, 5.000000e-01
  %580 = fptoui float %579 to i32
  %581 = fadd fast float %71, 5.000000e-01
  %582 = fptoui float %581 to i32
  %583 = shl i32 %582, 3
  %584 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %583, i32 undef)  ; BufferLoad(srv,index,wot)
  %585 = extractvalue %dx.types.ResRet.i32 %584, 0
  %586 = or i32 %583, 4
  %587 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %586, i32 undef)  ; BufferLoad(srv,index,wot)
  %588 = extractvalue %dx.types.ResRet.i32 %587, 0
  %589 = and i32 %588, 16777215
  %590 = add i32 %589, %580
  %591 = shl i32 %590, 5
  %592 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %591, i32 undef)  ; BufferLoad(srv,index,wot)
  %593 = extractvalue %dx.types.ResRet.f32 %592, 0
  %594 = extractvalue %dx.types.ResRet.f32 %592, 1
  %595 = extractvalue %dx.types.ResRet.f32 %592, 2
  %596 = or i32 %591, 16
  %597 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %596, i32 undef)  ; BufferLoad(srv,index,wot)
  %598 = extractvalue %dx.types.ResRet.f32 %597, 0
  %599 = extractvalue %dx.types.ResRet.f32 %597, 1
  %600 = extractvalue %dx.types.ResRet.f32 %597, 2
  %601 = lshr i32 %588, 24
  %602 = and i32 %601, 3
  %603 = add nuw nsw i32 %602, 3
  %604 = shl i32 1, %603
  %605 = lshr i32 %588, 29
  %606 = lshr i32 %588, 23
  %607 = and i32 %606, 56
  %608 = shl nuw nsw i32 %605, 3
  %609 = lshr i32 %585, 16
  %610 = and i32 %585, 65535
  %611 = uitofp i32 %604 to float
  %612 = fmul fast float %611, 1.562500e-02
  %613 = uitofp i32 %609 to float
  %614 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 302)  ; CBufferLoadLegacy(handle,regIndex)
  %615 = extractvalue %dx.types.CBufRet.f32 %614, 3
  %616 = fmul fast float %615, %613
  %617 = uitofp i32 %607 to float
  %618 = fmul fast float %617, 1.562500e-02
  %619 = uitofp i32 %608 to float
  %620 = fmul fast float %619, 1.562500e-02
  %621 = uitofp i32 %610 to float
  %622 = fmul fast float %615, %621
  %623 = call float @dx.op.unary.f32(i32 7, float %469)  ; Saturate(value)
  %624 = call float @dx.op.unary.f32(i32 7, float %470)  ; Saturate(value)
  %625 = call float @dx.op.unary.f32(i32 7, float %471)  ; Saturate(value)
  %626 = fmul fast float %623, %593
  %627 = fmul fast float %624, %594
  %628 = fmul fast float %625, %595
  %629 = fadd fast float %626, %598
  %630 = fmul fast float %612, %629
  %631 = fadd fast float %630, %618
  %632 = fadd fast float %627, %599
  %633 = fmul fast float %612, %632
  %634 = fadd fast float %633, %620
  %635 = fadd fast float %628, %600
  %636 = fmul fast float %616, %635
  %637 = fadd fast float %636, %622
  %638 = fmul fast float %631, 5.000000e-01
  %639 = fmul fast float %634, 0x3FD5555560000000
  %640 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %38, float %631, float %634, float %637, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %641 = extractvalue %dx.types.ResRet.f32 %640, 0
  %642 = extractvalue %dx.types.ResRet.f32 %640, 1
  %643 = extractvalue %dx.types.ResRet.f32 %640, 2
  %644 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %645 = extractvalue %dx.types.CBufRet.f32 %644, 3
  %646 = fmul fast float %645, %641
  %647 = fmul fast float %645, %642
  %648 = fmul fast float %645, %643
  %649 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %38, float %638, float %639, float %637, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %650 = extractvalue %dx.types.ResRet.f32 %649, 0
  %651 = extractvalue %dx.types.ResRet.f32 %649, 1
  %652 = extractvalue %dx.types.ResRet.f32 %649, 2
  %653 = extractvalue %dx.types.ResRet.f32 %649, 3
  %654 = fadd fast float %638, 5.000000e-01
  %655 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %38, float %654, float %639, float %637, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %656 = extractvalue %dx.types.ResRet.f32 %655, 0
  %657 = extractvalue %dx.types.ResRet.f32 %655, 1
  %658 = extractvalue %dx.types.ResRet.f32 %655, 2
  %659 = extractvalue %dx.types.ResRet.f32 %655, 3
  %660 = fadd fast float %639, 0x3FD5555560000000
  %661 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %38, float %638, float %660, float %637, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %662 = extractvalue %dx.types.ResRet.f32 %661, 0
  %663 = extractvalue %dx.types.ResRet.f32 %661, 1
  %664 = extractvalue %dx.types.ResRet.f32 %661, 2
  %665 = extractvalue %dx.types.ResRet.f32 %661, 3
  %666 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %38, float %654, float %660, float %637, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %667 = extractvalue %dx.types.ResRet.f32 %666, 0
  %668 = extractvalue %dx.types.ResRet.f32 %666, 1
  %669 = extractvalue %dx.types.ResRet.f32 %666, 2
  %670 = extractvalue %dx.types.ResRet.f32 %666, 3
  %671 = fadd fast float %639, 0x3FE5555560000000
  %672 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %38, float %638, float %671, float %637, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %673 = extractvalue %dx.types.ResRet.f32 %672, 0
  %674 = extractvalue %dx.types.ResRet.f32 %672, 1
  %675 = extractvalue %dx.types.ResRet.f32 %672, 2
  %676 = extractvalue %dx.types.ResRet.f32 %672, 3
  %677 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %38, float %654, float %671, float %637, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %678 = extractvalue %dx.types.ResRet.f32 %677, 0
  %679 = extractvalue %dx.types.ResRet.f32 %677, 1
  %680 = extractvalue %dx.types.ResRet.f32 %677, 2
  %681 = extractvalue %dx.types.ResRet.f32 %677, 3
  %682 = fmul fast float %650, 0x400BB67AE0000000
  %683 = fadd fast float %682, 0xBFFBB67AE0000000
  %684 = fmul fast float %683, %646
  %685 = fmul fast float %651, 0x400BB67AE0000000
  %686 = fadd fast float %685, 0xBFFBB67AE0000000
  %687 = fmul fast float %686, %647
  %688 = fmul fast float %652, 0x400BB67AE0000000
  %689 = fadd fast float %688, 0xBFFBB67AE0000000
  %690 = fmul fast float %689, %648
  %691 = fmul fast float %653, 0x4011E377A0000000
  %692 = fadd fast float %691, 0xC001E377A0000000
  %693 = fmul fast float %692, %646
  %694 = fmul fast float %656, 0x4011E377A0000000
  %695 = fadd fast float %694, 0xC001E377A0000000
  %696 = fmul fast float %695, %647
  %697 = fmul fast float %657, 0x4011E377A0000000
  %698 = fadd fast float %697, 0xC001E377A0000000
  %699 = fmul fast float %698, %648
  %700 = fmul fast float %658, 0x400BB67AE0000000
  %701 = fadd fast float %700, 0xBFFBB67AE0000000
  %702 = fmul fast float %701, %646
  %703 = fmul fast float %659, 0x400BB67AE0000000
  %704 = fadd fast float %703, 0xBFFBB67AE0000000
  %705 = fmul fast float %704, %647
  %706 = fmul fast float %662, 0x400BB67AE0000000
  %707 = fadd fast float %706, 0xBFFBB67AE0000000
  %708 = fmul fast float %707, %648
  %709 = fmul fast float %663, 0x400BB67AE0000000
  %710 = fadd fast float %709, 0xBFFBB67AE0000000
  %711 = fmul fast float %710, %646
  %712 = fmul fast float %664, 0x400BB67AE0000000
  %713 = fadd fast float %712, 0xBFFBB67AE0000000
  %714 = fmul fast float %713, %647
  %715 = fmul fast float %665, 0x400BB67AE0000000
  %716 = fadd fast float %715, 0xBFFBB67AE0000000
  %717 = fmul fast float %716, %648
  %718 = fmul fast float %667, 0x400EFBDEC0000000
  %719 = fadd fast float %718, 0xBFFEFBDEC0000000
  %720 = fmul fast float %719, %646
  %721 = fmul fast float %668, 0x400EFBDEC0000000
  %722 = fadd fast float %721, 0xBFFEFBDEC0000000
  %723 = fmul fast float %722, %647
  %724 = fmul fast float %669, 0x400EFBDEC0000000
  %725 = fadd fast float %724, 0xBFFEFBDEC0000000
  %726 = fmul fast float %725, %648
  %727 = fmul fast float %670, 0x400EFBDEC0000000
  %728 = fadd fast float %727, 0xBFFEFBDEC0000000
  %729 = fmul fast float %728, %646
  %730 = fmul fast float %673, 0x400EFBDEC0000000
  %731 = fadd fast float %730, 0xBFFEFBDEC0000000
  %732 = fmul fast float %731, %647
  %733 = fmul fast float %674, 0x400EFBDEC0000000
  %734 = fadd fast float %733, 0xBFFEFBDEC0000000
  %735 = fmul fast float %734, %648
  %736 = fmul fast float %675, 0x400EFBDEC0000000
  %737 = fadd fast float %736, 0xBFFEFBDEC0000000
  %738 = fmul fast float %737, %646
  %739 = fmul fast float %676, 0x400EFBDEC0000000
  %740 = fadd fast float %739, 0xBFFEFBDEC0000000
  %741 = fmul fast float %740, %647
  %742 = fmul fast float %678, 0x400EFBDEC0000000
  %743 = fadd fast float %742, 0xBFFEFBDEC0000000
  %744 = fmul fast float %743, %648
  %745 = fmul fast float %679, 0x400EFBDEC0000000
  %746 = fadd fast float %745, 0xBFFEFBDEC0000000
  %747 = fmul fast float %746, %646
  %748 = fmul fast float %680, 0x400EFBDEC0000000
  %749 = fadd fast float %748, 0xBFFEFBDEC0000000
  %750 = fmul fast float %749, %647
  %751 = fmul fast float %681, 0x400EFBDEC0000000
  %752 = fadd fast float %751, 0xBFFEFBDEC0000000
  %753 = fmul fast float %752, %648
  %754 = call float @dx.op.dot3.f32(i32 55, float %646, float %647, float %648, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %755 = fmul fast float %754, 0x3FD20DD760000000
  %756 = fmul fast float %646, 0x3FD20DD760000000
  %757 = fmul fast float %291, 0x3FD4D8D7C0000000
  %758 = fmul fast float %757, %684
  %759 = fmul fast float %291, %291
  %760 = fmul fast float %759, 0x3FEE471020000000
  %761 = fadd fast float %760, 0xBFD42F6020000000
  %762 = fmul fast float %693, %761
  %763 = fmul fast float %289, 0x3FD4D8D7C0000000
  %764 = fmul fast float %763, %711
  %765 = fmul fast float %290, 0x3FD4D8D7C0000000
  %766 = fmul fast float %765, %702
  %767 = fmul fast float %291, 0xBFF17B1420000000
  %768 = fmul fast float %720, %289
  %769 = fmul fast float %729, %290
  %770 = fmul fast float %289, %289
  %771 = fmul fast float %290, %290
  %772 = fsub fast float %770, %771
  %773 = fmul fast float %772, 0x3FC17B1420000000
  %774 = fmul fast float %773, %738
  %775 = fmul fast float %289, 0x3FD17B1420000000
  %776 = fmul fast float %775, %290
  %777 = fmul fast float %776, %747
  %778 = fadd fast float %769, %768
  %779 = fmul fast float %767, %778
  %780 = fadd fast float %779, %762
  %781 = fmul fast float %780, 2.500000e-01
  %782 = fadd fast float %758, %756
  %783 = fsub fast float %782, %766
  %784 = fsub fast float %783, %764
  %785 = fadd fast float %784, %781
  %786 = fadd fast float %785, %774
  %787 = fadd fast float %786, %777
  %788 = fmul fast float %647, 0x3FD20DD760000000
  %789 = fmul fast float %757, %687
  %790 = fmul fast float %696, %761
  %791 = fmul fast float %763, %714
  %792 = fmul fast float %765, %705
  %793 = fmul fast float %723, %289
  %794 = fmul fast float %732, %290
  %795 = fmul fast float %773, %741
  %796 = fmul fast float %776, %750
  %797 = fadd fast float %794, %793
  %798 = fmul fast float %767, %797
  %799 = fadd fast float %798, %790
  %800 = fmul fast float %799, 2.500000e-01
  %801 = fadd fast float %789, %788
  %802 = fsub fast float %801, %792
  %803 = fsub fast float %802, %791
  %804 = fadd fast float %803, %795
  %805 = fadd fast float %804, %800
  %806 = fadd fast float %805, %796
  %807 = fmul fast float %648, 0x3FD20DD760000000
  %808 = fmul fast float %757, %690
  %809 = fmul fast float %699, %761
  %810 = fmul fast float %763, %717
  %811 = fmul fast float %765, %708
  %812 = fmul fast float %726, %289
  %813 = fmul fast float %735, %290
  %814 = fmul fast float %773, %744
  %815 = fmul fast float %776, %753
  %816 = fadd fast float %813, %812
  %817 = fmul fast float %767, %816
  %818 = fadd fast float %817, %809
  %819 = fmul fast float %818, 2.500000e-01
  %820 = fadd fast float %808, %807
  %821 = fsub fast float %820, %810
  %822 = fsub fast float %821, %811
  %823 = fadd fast float %822, %819
  %824 = fadd fast float %823, %814
  %825 = fadd fast float %824, %815
  %826 = call float @dx.op.binary.f32(i32 35, float %787, float 0.000000e+00)  ; FMax(a,b)
  %827 = call float @dx.op.binary.f32(i32 35, float %806, float 0.000000e+00)  ; FMax(a,b)
  %828 = call float @dx.op.binary.f32(i32 35, float %825, float 0.000000e+00)  ; FMax(a,b)
  %829 = fsub fast float -0.000000e+00, %289
  %830 = fsub fast float -0.000000e+00, %290
  %831 = fmul fast float %291, 0xBFD4D8D7C0000000
  %832 = fmul fast float %831, %684
  %833 = fmul fast float %711, 0x3FD4D8D7C0000000
  %834 = fmul fast float %291, 0x3FF17B1420000000
  %835 = fmul fast float %720, %829
  %836 = fmul fast float %729, %830
  %837 = fmul fast float %290, 0x3FD17B1420000000
  %838 = fmul fast float %837, %747
  %839 = fadd fast float %836, %835
  %840 = fmul fast float %834, %839
  %841 = fadd fast float %840, %762
  %842 = fmul fast float %841, 2.500000e-01
  %843 = fadd fast float %838, %833
  %844 = fmul fast float %843, %289
  %845 = fadd fast float %832, %756
  %846 = fadd fast float %845, %766
  %847 = fadd fast float %846, %774
  %848 = fadd fast float %847, %842
  %849 = fadd fast float %848, %844
  %850 = fmul fast float %831, %687
  %851 = fmul fast float %714, 0x3FD4D8D7C0000000
  %852 = fmul fast float %723, %829
  %853 = fmul fast float %732, %830
  %854 = fmul fast float %837, %750
  %855 = fadd fast float %853, %852
  %856 = fmul fast float %834, %855
  %857 = fadd fast float %856, %790
  %858 = fmul fast float %857, 2.500000e-01
  %859 = fadd fast float %854, %851
  %860 = fmul fast float %859, %289
  %861 = fadd fast float %850, %788
  %862 = fadd fast float %861, %792
  %863 = fadd fast float %862, %795
  %864 = fadd fast float %863, %858
  %865 = fadd fast float %864, %860
  %866 = fmul fast float %831, %690
  %867 = fmul fast float %708, 0x3FD4D8D7C0000000
  %868 = fmul fast float %726, %829
  %869 = fmul fast float %735, %830
  %870 = fmul fast float %775, %753
  %871 = fadd fast float %869, %868
  %872 = fmul fast float %834, %871
  %873 = fadd fast float %872, %809
  %874 = fmul fast float %873, 2.500000e-01
  %875 = fadd fast float %870, %867
  %876 = fmul fast float %875, %290
  %877 = fadd fast float %866, %807
  %878 = fadd fast float %877, %810
  %879 = fadd fast float %878, %814
  %880 = fadd fast float %879, %874
  %881 = fadd fast float %880, %876
  %882 = call float @dx.op.binary.f32(i32 35, float %849, float 0.000000e+00)  ; FMax(a,b)
  %883 = call float @dx.op.binary.f32(i32 35, float %865, float 0.000000e+00)  ; FMax(a,b)
  %884 = call float @dx.op.binary.f32(i32 35, float %881, float 0.000000e+00)  ; FMax(a,b)
  %885 = fmul fast float %518, 0x3FD4D8D7C0000000
  %886 = fmul fast float %885, %684
  %887 = fmul fast float %518, %518
  %888 = fmul fast float %887, 0x3FEE471020000000
  %889 = fadd fast float %888, 0xBFD42F6020000000
  %890 = fmul fast float %693, %889
  %891 = fmul fast float %516, 0x3FD4D8D7C0000000
  %892 = fmul fast float %891, %711
  %893 = fmul fast float %517, 0x3FD4D8D7C0000000
  %894 = fmul fast float %893, %702
  %895 = fmul fast float %518, 0xBFF17B1420000000
  %896 = fmul fast float %720, %516
  %897 = fmul fast float %729, %517
  %898 = fmul fast float %516, %516
  %899 = fmul fast float %517, %517
  %900 = fsub fast float %898, %899
  %901 = fmul fast float %900, 0x3FC17B1420000000
  %902 = fmul fast float %901, %738
  %903 = fmul fast float %517, 0x3FD17B1420000000
  %904 = fmul fast float %903, %516
  %905 = fmul fast float %904, %747
  %906 = fadd fast float %897, %896
  %907 = fmul fast float %895, %906
  %908 = fadd fast float %907, %890
  %909 = fmul fast float %908, 2.500000e-01
  %910 = fadd fast float %886, %756
  %911 = fsub fast float %910, %894
  %912 = fsub fast float %911, %892
  %913 = fadd fast float %912, %909
  %914 = fadd fast float %913, %902
  %915 = fadd fast float %914, %905
  %916 = fmul fast float %885, %687
  %917 = fmul fast float %696, %889
  %918 = fmul fast float %891, %714
  %919 = fmul fast float %893, %705
  %920 = fmul fast float %723, %516
  %921 = fmul fast float %732, %517
  %922 = fmul fast float %901, %741
  %923 = fmul fast float %904, %750
  %924 = fadd fast float %921, %920
  %925 = fmul fast float %895, %924
  %926 = fadd fast float %925, %917
  %927 = fmul fast float %926, 2.500000e-01
  %928 = fadd fast float %916, %788
  %929 = fsub fast float %928, %919
  %930 = fsub fast float %929, %918
  %931 = fadd fast float %930, %922
  %932 = fadd fast float %931, %927
  %933 = fadd fast float %932, %923
  %934 = fmul fast float %885, %690
  %935 = fmul fast float %699, %889
  %936 = fmul fast float %891, %717
  %937 = fmul fast float %893, %708
  %938 = fmul fast float %726, %516
  %939 = fmul fast float %735, %517
  %940 = fmul fast float %901, %744
  %941 = fmul fast float %904, %753
  %942 = fadd fast float %939, %938
  %943 = fmul fast float %895, %942
  %944 = fadd fast float %943, %935
  %945 = fmul fast float %944, 2.500000e-01
  %946 = fadd fast float %934, %807
  %947 = fsub fast float %946, %936
  %948 = fsub fast float %947, %937
  %949 = fadd fast float %948, %945
  %950 = fadd fast float %949, %940
  %951 = fadd fast float %950, %941
  %952 = call float @dx.op.binary.f32(i32 35, float %915, float 0.000000e+00)  ; FMax(a,b)
  %953 = call float @dx.op.binary.f32(i32 35, float %933, float 0.000000e+00)  ; FMax(a,b)
  %954 = call float @dx.op.binary.f32(i32 35, float %951, float 0.000000e+00)  ; FMax(a,b)
  br label %955

; <label>:955                                     ; preds = %578, %575
  %956 = phi float [ %952, %578 ], [ 0.000000e+00, %575 ]
  %957 = phi float [ %953, %578 ], [ 0.000000e+00, %575 ]
  %958 = phi float [ %954, %578 ], [ 0.000000e+00, %575 ]
  %959 = phi float [ %882, %578 ], [ 0.000000e+00, %575 ]
  %960 = phi float [ %883, %578 ], [ 0.000000e+00, %575 ]
  %961 = phi float [ %884, %578 ], [ 0.000000e+00, %575 ]
  %962 = phi float [ %826, %578 ], [ 0.000000e+00, %575 ]
  %963 = phi float [ %827, %578 ], [ 0.000000e+00, %575 ]
  %964 = phi float [ %828, %578 ], [ 0.000000e+00, %575 ]
  %965 = phi float [ %755, %578 ], [ 0.000000e+00, %575 ]
  %966 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 271)  ; CBufferLoadLegacy(handle,regIndex)
  %967 = extractvalue %dx.types.CBufRet.f32 %966, 0
  %968 = fcmp fast ogt float %967, 0.000000e+00
  %969 = and i1 %577, %968
  br i1 %969, label %970, label %1177, !dx.controlflow.hints !113

; <label>:970                                     ; preds = %955
  %971 = extractvalue %dx.types.CBufRet.f32 %532, 2
  %972 = fadd fast float %971, %369
  %973 = fmul fast float %289, 3.200000e+01
  %974 = fmul fast float %290, 3.200000e+01
  %975 = fadd fast float %535, %973
  %976 = fadd fast float %536, %974
  %977 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %978 = extractvalue %dx.types.CBufRet.f32 %977, 0
  %979 = extractvalue %dx.types.CBufRet.f32 %977, 1
  %980 = fsub fast float %975, %978
  %981 = fsub fast float %976, %979
  %982 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %983 = extractvalue %dx.types.CBufRet.f32 %982, 0
  %984 = extractvalue %dx.types.CBufRet.f32 %982, 1
  %985 = fmul fast float %980, %983
  %986 = fmul fast float %981, %984
  %987 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %988 = extractvalue %dx.types.CBufRet.f32 %987, 0
  %989 = extractvalue %dx.types.CBufRet.f32 %987, 1
  %990 = fsub fast float %535, %988
  %991 = fsub fast float %536, %989
  %992 = fmul fast float %990, %990
  %993 = fmul fast float %991, %991
  %994 = fadd fast float %992, %993
  %995 = call float @dx.op.unary.f32(i32 24, float %994)  ; Sqrt(value)
  %996 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %997 = extractvalue %dx.types.CBufRet.f32 %996, 0
  %998 = extractvalue %dx.types.CBufRet.f32 %996, 1
  %999 = fsub fast float %995, %997
  %1000 = fdiv fast float %999, %998
  %1001 = call float @dx.op.unary.f32(i32 7, float %1000)  ; Saturate(value)
  %1002 = fmul fast float %1001, 2.000000e+00
  %1003 = fsub fast float 3.000000e+00, %1002
  %1004 = fmul fast float %1001, %1001
  %1005 = fmul fast float %1004, %1003
  %1006 = fcmp fast oge float %985, 0.000000e+00
  %1007 = fcmp fast ole float %985, 1.000000e+00
  %1008 = and i1 %1007, %1006
  %1009 = fcmp fast oge float %986, 0.000000e+00
  %1010 = and i1 %1009, %1008
  %1011 = fcmp fast ole float %986, 1.000000e+00
  %1012 = and i1 %1011, %1010
  %1013 = fcmp fast ogt float %1005, 0.000000e+00
  %1014 = and i1 %1013, %1012
  br i1 %1014, label %1015, label %1138, !dx.controlflow.hints !114

; <label>:1015                                    ; preds = %970
  %1016 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %1017 = extractvalue %dx.types.CBufRet.f32 %1016, 2
  %1018 = extractvalue %dx.types.CBufRet.f32 %1016, 3
  %1019 = fmul fast float %1017, %985
  %1020 = fmul fast float %1018, %986
  %1021 = call float @dx.op.unary.f32(i32 27, float %1019)  ; Round_ni(value)
  %1022 = call float @dx.op.unary.f32(i32 27, float %1020)  ; Round_ni(value)
  %1023 = fptosi float %1021 to i32
  %1024 = fptosi float %1022 to i32
  %1025 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %25, i32 0, i32 %1023, i32 %1024, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1026 = extractvalue %dx.types.ResRet.i32 %1025, 0
  %1027 = lshr i32 %1026, 16
  %1028 = icmp eq i32 %1027, 65535
  br i1 %1028, label %1138, label %1029

; <label>:1029                                    ; preds = %1015
  %1030 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %1031 = extractvalue %dx.types.CBufRet.f32 %1030, 0
  %1032 = fmul fast float %1031, %985
  %1033 = extractvalue %dx.types.CBufRet.f32 %1030, 1
  %1034 = fadd fast float %1032, %1033
  %1035 = extractvalue %dx.types.CBufRet.f32 %1030, 2
  %1036 = fmul fast float %1035, %986
  %1037 = extractvalue %dx.types.CBufRet.f32 %1030, 3
  %1038 = fadd fast float %1036, %1037
  %1039 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %40, float %1034, float %1038, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1040 = extractvalue %dx.types.ResRet.f32 %1039, 0
  %1041 = extractvalue %dx.types.ResRet.f32 %1039, 1
  %1042 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %1043 = extractvalue %dx.types.CBufRet.f32 %1042, 1
  %1044 = extractvalue %dx.types.CBufRet.f32 %1042, 0
  %1045 = fsub fast float %1043, %1044
  %1046 = fmul fast float %1045, %1040
  %1047 = fadd fast float %1046, %1044
  %1048 = extractvalue %dx.types.CBufRet.f32 %1042, 3
  %1049 = extractvalue %dx.types.CBufRet.f32 %1042, 2
  %1050 = fsub fast float %1048, %1049
  %1051 = fmul fast float %1050, %1041
  %1052 = fadd fast float %1051, %1049
  %1053 = fsub fast float %972, %1047
  %1054 = fsub fast float %1052, %1047
  %1055 = fdiv fast float %1053, %1054
  %1056 = call float @dx.op.unary.f32(i32 7, float %1055)  ; Saturate(value)
  %1057 = extractvalue %dx.types.CBufRet.f32 %966, 1
  %1058 = extractvalue %dx.types.CBufRet.f32 %1016, 0
  %1059 = extractvalue %dx.types.CBufRet.f32 %1016, 1
  %1060 = fmul fast float %1058, %985
  %1061 = fmul fast float %1059, %986
  %1062 = fmul fast float %1060, 1.250000e-01
  %1063 = fmul fast float %1061, 1.250000e-01
  %1064 = call float @dx.op.unary.f32(i32 27, float %1062)  ; Round_ni(value)
  %1065 = call float @dx.op.unary.f32(i32 27, float %1063)  ; Round_ni(value)
  %1066 = fmul fast float %1064, 8.000000e+00
  %1067 = fmul fast float %1065, 8.000000e+00
  %1068 = fsub fast float %1060, %1066
  %1069 = fsub fast float %1061, %1067
  %1070 = fadd fast float %1068, 5.000000e-01
  %1071 = fadd fast float %1069, 5.000000e-01
  %1072 = and i32 %1027, 255
  %1073 = lshr i32 %1026, 24
  %1074 = mul nuw nsw i32 %1072, 9
  %1075 = uitofp i32 %1074 to float
  %1076 = mul nuw nsw i32 %1073, 9
  %1077 = uitofp i32 %1076 to float
  %1078 = fadd fast float %1070, %1075
  %1079 = fadd fast float %1071, %1077
  %1080 = fdiv fast float %1078, %967
  %1081 = fdiv fast float %1079, %1057
  %1082 = fmul fast float %1056, 4.375000e-01
  %1083 = fadd fast float %1082, 3.125000e-02
  %1084 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %40, float %1080, float %1081, float %1083, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1085 = extractvalue %dx.types.ResRet.f32 %1084, 0
  %1086 = extractvalue %dx.types.ResRet.f32 %1084, 1
  %1087 = extractvalue %dx.types.ResRet.f32 %1084, 2
  %1088 = fadd fast float %1082, 5.312500e-01
  %1089 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %40, float %1080, float %1081, float %1088, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1090 = extractvalue %dx.types.ResRet.f32 %1089, 0
  %1091 = extractvalue %dx.types.ResRet.f32 %1089, 1
  %1092 = extractvalue %dx.types.ResRet.f32 %1089, 2
  %1093 = fmul fast float %1090, 2.000000e+00
  %1094 = fmul fast float %1091, 2.000000e+00
  %1095 = fmul fast float %1092, 2.000000e+00
  %1096 = fadd fast float %1093, -1.000000e+00
  %1097 = fadd fast float %1094, -1.000000e+00
  %1098 = fadd fast float %1095, -1.000000e+00
  %1099 = fmul fast float %1096, %1096
  %1100 = fmul fast float %1097, %1097
  %1101 = fadd fast float %1099, %1100
  %1102 = fmul fast float %1098, %1098
  %1103 = fadd fast float %1101, %1102
  %1104 = call float @dx.op.unary.f32(i32 24, float %1103)  ; Sqrt(value)
  %1105 = fcmp fast ogt float %1104, 0.000000e+00
  br i1 %1105, label %1106, label %1110

; <label>:1106                                    ; preds = %1029
  %1107 = fdiv fast float %1096, %1104
  %1108 = fdiv fast float %1097, %1104
  %1109 = fdiv fast float %1098, %1104
  br label %1110

; <label>:1110                                    ; preds = %1106, %1029
  %1111 = phi float [ %1107, %1106 ], [ 0.000000e+00, %1029 ]
  %1112 = phi float [ %1108, %1106 ], [ 0.000000e+00, %1029 ]
  %1113 = phi float [ %1109, %1106 ], [ 0.000000e+00, %1029 ]
  %1114 = call float @dx.op.dot3.f32(i32 55, float %1111, float %1112, float %1113, float %289, float %290, float %291)  ; Dot3(ax,ay,az,bx,by,bz)
  %1115 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1114)  ; FMax(a,b)
  %1116 = fmul fast float %1115, 0x400C5BF8A0000000
  %1117 = fmul fast float %1085, %1005
  %1118 = fmul fast float %1117, %1116
  %1119 = fmul fast float %1086, %1005
  %1120 = fmul fast float %1119, %1116
  %1121 = fmul fast float %1087, %1005
  %1122 = fmul fast float %1121, %1116
  %1123 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1124 = extractvalue %dx.types.CBufRet.f32 %1123, 3
  %1125 = fmul fast float %1118, %1124
  %1126 = fmul fast float %1120, %1124
  %1127 = fmul fast float %1122, %1124
  %1128 = fcmp fast ogt float %972, %1052
  br i1 %1128, label %1129, label %1138

; <label>:1129                                    ; preds = %1110
  %1130 = fmul fast float %1054, 0x3FC24924A0000000
  %1131 = fsub fast float %972, %1052
  %1132 = fdiv fast float %1131, %1130
  %1133 = call float @dx.op.unary.f32(i32 7, float %1132)  ; Saturate(value)
  %1134 = fsub fast float 1.000000e+00, %1133
  %1135 = fmul fast float %1134, %1125
  %1136 = fmul fast float %1134, %1126
  %1137 = fmul fast float %1134, %1127
  br label %1138

; <label>:1138                                    ; preds = %1129, %1110, %1015, %970
  %1139 = phi float [ %1137, %1129 ], [ %1127, %1110 ], [ 0.000000e+00, %1015 ], [ 0.000000e+00, %970 ]
  %1140 = phi float [ %1136, %1129 ], [ %1126, %1110 ], [ 0.000000e+00, %1015 ], [ 0.000000e+00, %970 ]
  %1141 = phi float [ %1135, %1129 ], [ %1125, %1110 ], [ 0.000000e+00, %1015 ], [ 0.000000e+00, %970 ]
  %1142 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1141)  ; FMax(a,b)
  %1143 = fmul fast float %1142, 0x3FD20DD760000000
  %1144 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float %516, float %517, float %518)  ; Dot3(ax,ay,az,bx,by,bz)
  %1145 = fmul fast float %1144, 0x3FDF454380000000
  %1146 = fmul fast float %1144, %1144
  %1147 = fmul fast float %1146, 0x3FEE471020000000
  %1148 = fadd fast float %1147, 0xBFD42F6020000000
  %1149 = call float @dx.op.dot3.f32(i32 55, float %1142, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %1145, float %1148)  ; Dot3(ax,ay,az,bx,by,bz)
  %1150 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1140)  ; FMax(a,b)
  %1151 = fmul fast float %1150, 0x3FD20DD760000000
  %1152 = call float @dx.op.dot3.f32(i32 55, float %1150, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %1145, float %1148)  ; Dot3(ax,ay,az,bx,by,bz)
  %1153 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1139)  ; FMax(a,b)
  %1154 = fmul fast float %1153, 0x3FD20DD760000000
  %1155 = call float @dx.op.dot3.f32(i32 55, float %1153, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %1145, float %1148)  ; Dot3(ax,ay,az,bx,by,bz)
  %1156 = call float @dx.op.binary.f32(i32 35, float %1143, float 0.000000e+00)  ; FMax(a,b)
  %1157 = call float @dx.op.binary.f32(i32 35, float %1151, float 0.000000e+00)  ; FMax(a,b)
  %1158 = call float @dx.op.binary.f32(i32 35, float %1154, float 0.000000e+00)  ; FMax(a,b)
  %1159 = call float @dx.op.binary.f32(i32 35, float %1149, float 0.000000e+00)  ; FMax(a,b)
  %1160 = call float @dx.op.binary.f32(i32 35, float %1152, float 0.000000e+00)  ; FMax(a,b)
  %1161 = call float @dx.op.binary.f32(i32 35, float %1155, float 0.000000e+00)  ; FMax(a,b)
  %1162 = fmul fast float %1156, %576
  %1163 = fmul fast float %1157, %576
  %1164 = fmul fast float %1158, %576
  %1165 = fadd fast float %1162, %962
  %1166 = fadd fast float %1163, %963
  %1167 = fadd fast float %1164, %964
  %1168 = fadd fast float %1162, %959
  %1169 = fadd fast float %1163, %960
  %1170 = fadd fast float %1164, %961
  %1171 = fmul fast float %1159, %576
  %1172 = fmul fast float %1160, %576
  %1173 = fmul fast float %1161, %576
  %1174 = fadd fast float %1171, %956
  %1175 = fadd fast float %1172, %957
  %1176 = fadd fast float %1173, %958
  br label %1177

; <label>:1177                                    ; preds = %1138, %955
  %1178 = phi float [ %1174, %1138 ], [ %956, %955 ]
  %1179 = phi float [ %1175, %1138 ], [ %957, %955 ]
  %1180 = phi float [ %1176, %1138 ], [ %958, %955 ]
  %1181 = phi float [ %1168, %1138 ], [ %959, %955 ]
  %1182 = phi float [ %1169, %1138 ], [ %960, %955 ]
  %1183 = phi float [ %1170, %1138 ], [ %961, %955 ]
  %1184 = phi float [ %1165, %1138 ], [ %962, %955 ]
  %1185 = phi float [ %1166, %1138 ], [ %963, %955 ]
  %1186 = phi float [ %1167, %1138 ], [ %964, %955 ]
  %1187 = fcmp fast olt float %576, 1.000000e+00
  br i1 %1187, label %1188, label %2026, !dx.controlflow.hints !115

; <label>:1188                                    ; preds = %1177
  %1189 = extractvalue %dx.types.CBufRet.f32 %532, 2
  %1190 = fadd fast float %1189, %369
  %1191 = fmul fast float %289, 3.200000e+01
  %1192 = fmul fast float %290, 3.200000e+01
  %1193 = fadd fast float %535, %1191
  %1194 = fadd fast float %536, %1192
  %1195 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %1196 = extractvalue %dx.types.CBufRet.f32 %1195, 0
  %1197 = extractvalue %dx.types.CBufRet.f32 %1195, 1
  %1198 = fsub fast float %1193, %1196
  %1199 = fsub fast float %1194, %1197
  %1200 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %1201 = extractvalue %dx.types.CBufRet.f32 %1200, 0
  %1202 = extractvalue %dx.types.CBufRet.f32 %1200, 1
  %1203 = fmul fast float %1198, %1201
  %1204 = fmul fast float %1199, %1202
  %1205 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %1206 = extractvalue %dx.types.CBufRet.f32 %1205, 0
  %1207 = fmul fast float %1203, %1206
  %1208 = extractvalue %dx.types.CBufRet.f32 %1205, 1
  %1209 = fadd fast float %1207, %1208
  %1210 = extractvalue %dx.types.CBufRet.f32 %1205, 2
  %1211 = fmul fast float %1210, %1204
  %1212 = extractvalue %dx.types.CBufRet.f32 %1205, 3
  %1213 = fadd fast float %1211, %1212
  %1214 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %40, float %1209, float %1213, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1215 = extractvalue %dx.types.ResRet.f32 %1214, 0
  %1216 = extractvalue %dx.types.ResRet.f32 %1214, 1
  %1217 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %1218 = extractvalue %dx.types.CBufRet.f32 %1217, 1
  %1219 = extractvalue %dx.types.CBufRet.f32 %1217, 0
  %1220 = fsub fast float %1218, %1219
  %1221 = fmul fast float %1220, %1215
  %1222 = fadd fast float %1221, %1219
  %1223 = extractvalue %dx.types.CBufRet.f32 %1217, 3
  %1224 = extractvalue %dx.types.CBufRet.f32 %1217, 2
  %1225 = fsub fast float %1223, %1224
  %1226 = fmul fast float %1225, %1216
  %1227 = fadd fast float %1226, %1224
  %1228 = fsub fast float %1190, %1222
  %1229 = fsub fast float %1227, %1222
  %1230 = fdiv fast float %1228, %1229
  %1231 = call float @dx.op.unary.f32(i32 7, float %1230)  ; Saturate(value)
  %1232 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 264)  ; CBufferLoadLegacy(handle,regIndex)
  %1233 = extractvalue %dx.types.CBufRet.f32 %1232, 0
  %1234 = fmul fast float %1233, %1231
  %1235 = extractvalue %dx.types.CBufRet.f32 %1232, 1
  %1236 = fadd fast float %1234, %1235
  %1237 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %28, %dx.types.Handle %40, float %1209, float %1213, float %1236, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1238 = extractvalue %dx.types.ResRet.f32 %1237, 0
  %1239 = extractvalue %dx.types.ResRet.f32 %1237, 1
  %1240 = extractvalue %dx.types.ResRet.f32 %1237, 2
  %1241 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 258)  ; CBufferLoadLegacy(handle,regIndex)
  %1242 = extractvalue %dx.types.CBufRet.f32 %1241, 0
  %1243 = extractvalue %dx.types.CBufRet.f32 %1241, 1
  %1244 = extractvalue %dx.types.CBufRet.f32 %1241, 2
  %1245 = fmul fast float %1242, %1238
  %1246 = fmul fast float %1243, %1239
  %1247 = fmul fast float %1244, %1240
  %1248 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 257)  ; CBufferLoadLegacy(handle,regIndex)
  %1249 = extractvalue %dx.types.CBufRet.f32 %1248, 0
  %1250 = extractvalue %dx.types.CBufRet.f32 %1248, 1
  %1251 = extractvalue %dx.types.CBufRet.f32 %1248, 2
  %1252 = fadd fast float %1245, %1249
  %1253 = fadd fast float %1246, %1250
  %1254 = fadd fast float %1247, %1251
  %1255 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 262)  ; CBufferLoadLegacy(handle,regIndex)
  %1256 = extractvalue %dx.types.CBufRet.f32 %1255, 0
  %1257 = fmul fast float %1256, %1203
  %1258 = extractvalue %dx.types.CBufRet.f32 %1255, 1
  %1259 = fadd fast float %1257, %1258
  %1260 = extractvalue %dx.types.CBufRet.f32 %1255, 2
  %1261 = fmul fast float %1260, %1204
  %1262 = extractvalue %dx.types.CBufRet.f32 %1255, 3
  %1263 = fadd fast float %1261, %1262
  %1264 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 265)  ; CBufferLoadLegacy(handle,regIndex)
  %1265 = extractvalue %dx.types.CBufRet.f32 %1264, 0
  %1266 = extractvalue %dx.types.CBufRet.f32 %1264, 1
  %1267 = extractvalue %dx.types.CBufRet.f32 %1264, 2
  %1268 = extractvalue %dx.types.CBufRet.f32 %1264, 3
  %1269 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 266)  ; CBufferLoadLegacy(handle,regIndex)
  %1270 = extractvalue %dx.types.CBufRet.f32 %1269, 0
  %1271 = extractvalue %dx.types.CBufRet.f32 %1269, 1
  %1272 = extractvalue %dx.types.CBufRet.f32 %1269, 2
  %1273 = extractvalue %dx.types.CBufRet.f32 %1269, 3
  %1274 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %40, float %1259, float %1263, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1275 = extractvalue %dx.types.ResRet.f32 %1274, 0
  %1276 = extractvalue %dx.types.ResRet.f32 %1274, 1
  %1277 = extractvalue %dx.types.ResRet.f32 %1274, 2
  %1278 = extractvalue %dx.types.ResRet.f32 %1274, 3
  %1279 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %40, float %1259, float %1263, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1280 = extractvalue %dx.types.ResRet.f32 %1279, 0
  %1281 = extractvalue %dx.types.ResRet.f32 %1279, 1
  %1282 = extractvalue %dx.types.ResRet.f32 %1279, 2
  %1283 = extractvalue %dx.types.ResRet.f32 %1279, 3
  %1284 = fmul fast float %1275, %1252
  %1285 = fmul fast float %1280, %1252
  %1286 = fmul fast float %1282, %1252
  %1287 = fmul fast float %1278, %1252
  %1288 = fadd fast float %1284, %1265
  %1289 = fadd fast float %1285, %1266
  %1290 = fadd fast float %1286, %1267
  %1291 = fadd fast float %1287, %1268
  %1292 = fmul fast float %1276, %1252
  %1293 = fmul fast float %1281, %1252
  %1294 = fadd fast float %1292, %1270
  %1295 = fadd fast float %1293, %1271
  %1296 = fmul fast float %1277, %1252
  %1297 = fmul fast float %1283, %1252
  %1298 = fadd fast float %1296, %1272
  %1299 = fadd fast float %1297, %1273
  %1300 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %40, float %1259, float %1263, float 2.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1301 = extractvalue %dx.types.ResRet.f32 %1300, 0
  %1302 = extractvalue %dx.types.ResRet.f32 %1300, 1
  %1303 = extractvalue %dx.types.ResRet.f32 %1300, 2
  %1304 = extractvalue %dx.types.ResRet.f32 %1300, 3
  %1305 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %40, float %1259, float %1263, float 3.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1306 = extractvalue %dx.types.ResRet.f32 %1305, 0
  %1307 = extractvalue %dx.types.ResRet.f32 %1305, 1
  %1308 = extractvalue %dx.types.ResRet.f32 %1305, 2
  %1309 = extractvalue %dx.types.ResRet.f32 %1305, 3
  %1310 = fmul fast float %1301, %1253
  %1311 = fmul fast float %1306, %1253
  %1312 = fmul fast float %1308, %1253
  %1313 = fmul fast float %1304, %1253
  %1314 = fadd fast float %1288, %1310
  %1315 = fadd fast float %1289, %1311
  %1316 = fadd fast float %1290, %1312
  %1317 = fadd fast float %1291, %1313
  %1318 = fmul fast float %1302, %1253
  %1319 = fmul fast float %1307, %1253
  %1320 = fadd fast float %1294, %1318
  %1321 = fadd fast float %1295, %1319
  %1322 = fmul fast float %1303, %1253
  %1323 = fmul fast float %1309, %1253
  %1324 = fadd fast float %1298, %1322
  %1325 = fadd fast float %1299, %1323
  %1326 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %40, float %1259, float %1263, float 4.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1327 = extractvalue %dx.types.ResRet.f32 %1326, 0
  %1328 = extractvalue %dx.types.ResRet.f32 %1326, 1
  %1329 = extractvalue %dx.types.ResRet.f32 %1326, 2
  %1330 = extractvalue %dx.types.ResRet.f32 %1326, 3
  %1331 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %40, float %1259, float %1263, float 5.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1332 = extractvalue %dx.types.ResRet.f32 %1331, 0
  %1333 = extractvalue %dx.types.ResRet.f32 %1331, 1
  %1334 = extractvalue %dx.types.ResRet.f32 %1331, 2
  %1335 = extractvalue %dx.types.ResRet.f32 %1331, 3
  %1336 = fmul fast float %1327, %1254
  %1337 = fmul fast float %1332, %1254
  %1338 = fmul fast float %1334, %1254
  %1339 = fmul fast float %1330, %1254
  %1340 = fadd fast float %1314, %1336
  %1341 = fadd fast float %1315, %1337
  %1342 = fadd fast float %1316, %1338
  %1343 = fadd fast float %1317, %1339
  %1344 = fmul fast float %1328, %1254
  %1345 = fmul fast float %1333, %1254
  %1346 = fadd fast float %1320, %1344
  %1347 = fadd fast float %1321, %1345
  %1348 = fmul fast float %1329, %1254
  %1349 = fmul fast float %1335, %1254
  %1350 = fadd fast float %1324, %1348
  %1351 = fadd fast float %1325, %1349
  %1352 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 255)  ; CBufferLoadLegacy(handle,regIndex)
  %1353 = extractvalue %dx.types.CBufRet.f32 %1352, 0
  %1354 = fsub fast float %535, %1353
  %1355 = fsub fast float %1196, %535
  %1356 = call float @dx.op.binary.f32(i32 35, float %1355, float %1354)  ; FMax(a,b)
  %1357 = extractvalue %dx.types.CBufRet.f32 %1352, 1
  %1358 = fsub fast float %536, %1357
  %1359 = fsub fast float %1197, %536
  %1360 = call float @dx.op.binary.f32(i32 35, float %1359, float %1358)  ; FMax(a,b)
  %1361 = call float @dx.op.binary.f32(i32 35, float %1356, float %1360)  ; FMax(a,b)
  %1362 = extractvalue %dx.types.CBufRet.f32 %1200, 3
  %1363 = fmul fast float %1362, %1361
  %1364 = call float @dx.op.unary.f32(i32 7, float %1363)  ; Saturate(value)
  %1365 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 272)  ; CBufferLoadLegacy(handle,regIndex)
  %1366 = extractvalue %dx.types.CBufRet.f32 %1365, 0
  %1367 = extractvalue %dx.types.CBufRet.f32 %1365, 1
  %1368 = extractvalue %dx.types.CBufRet.f32 %1365, 2
  %1369 = extractvalue %dx.types.CBufRet.f32 %1365, 3
  %1370 = fsub fast float %1366, %1340
  %1371 = fsub fast float %1367, %1341
  %1372 = fsub fast float %1368, %1342
  %1373 = fsub fast float %1369, %1343
  %1374 = fmul fast float %1370, %1364
  %1375 = fmul fast float %1371, %1364
  %1376 = fmul fast float %1372, %1364
  %1377 = fmul fast float %1373, %1364
  %1378 = fadd fast float %1374, %1340
  %1379 = fadd fast float %1375, %1341
  %1380 = fadd fast float %1376, %1342
  %1381 = fadd fast float %1377, %1343
  %1382 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 273)  ; CBufferLoadLegacy(handle,regIndex)
  %1383 = extractvalue %dx.types.CBufRet.f32 %1382, 0
  %1384 = extractvalue %dx.types.CBufRet.f32 %1382, 1
  %1385 = fsub fast float %1383, %1346
  %1386 = fsub fast float %1384, %1347
  %1387 = fmul fast float %1385, %1364
  %1388 = fmul fast float %1386, %1364
  %1389 = fadd fast float %1387, %1346
  %1390 = fadd fast float %1388, %1347
  %1391 = extractvalue %dx.types.CBufRet.f32 %1382, 2
  %1392 = extractvalue %dx.types.CBufRet.f32 %1382, 3
  %1393 = fsub fast float %1391, %1350
  %1394 = fsub fast float %1392, %1351
  %1395 = fmul fast float %1393, %1364
  %1396 = fmul fast float %1394, %1364
  %1397 = fadd fast float %1395, %1350
  %1398 = fadd fast float %1396, %1351
  %1399 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 267)  ; CBufferLoadLegacy(handle,regIndex)
  %1400 = extractvalue %dx.types.CBufRet.f32 %1399, 0
  %1401 = fmul fast float %1400, %1378
  %1402 = fmul fast float %1400, %1379
  %1403 = fmul fast float %1400, %1380
  %1404 = fmul fast float %1400, %1381
  %1405 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 268)  ; CBufferLoadLegacy(handle,regIndex)
  %1406 = extractvalue %dx.types.CBufRet.f32 %1405, 0
  %1407 = fmul fast float %1406, %1389
  %1408 = fmul fast float %1406, %1390
  %1409 = fadd fast float %1407, %1401
  %1410 = fadd fast float %1408, %1403
  %1411 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 269)  ; CBufferLoadLegacy(handle,regIndex)
  %1412 = extractvalue %dx.types.CBufRet.f32 %1411, 0
  %1413 = fmul fast float %1412, %1397
  %1414 = fmul fast float %1412, %1398
  %1415 = fadd fast float %1409, %1413
  %1416 = fadd fast float %1410, %1414
  %1417 = extractvalue %dx.types.CBufRet.f32 %1399, 1
  %1418 = fmul fast float %1417, %1378
  %1419 = fmul fast float %1417, %1379
  %1420 = fmul fast float %1417, %1380
  %1421 = fmul fast float %1417, %1381
  %1422 = extractvalue %dx.types.CBufRet.f32 %1405, 1
  %1423 = fmul fast float %1422, %1389
  %1424 = fmul fast float %1422, %1390
  %1425 = fadd fast float %1423, %1418
  %1426 = fadd fast float %1424, %1420
  %1427 = extractvalue %dx.types.CBufRet.f32 %1411, 1
  %1428 = fmul fast float %1427, %1397
  %1429 = fmul fast float %1427, %1398
  %1430 = fadd fast float %1425, %1428
  %1431 = fadd fast float %1426, %1429
  %1432 = extractvalue %dx.types.CBufRet.f32 %1399, 2
  %1433 = fmul fast float %1432, %1378
  %1434 = fmul fast float %1432, %1379
  %1435 = fmul fast float %1432, %1380
  %1436 = fmul fast float %1432, %1381
  %1437 = extractvalue %dx.types.CBufRet.f32 %1405, 2
  %1438 = fmul fast float %1437, %1389
  %1439 = fmul fast float %1437, %1390
  %1440 = fadd fast float %1438, %1433
  %1441 = fadd fast float %1439, %1435
  %1442 = extractvalue %dx.types.CBufRet.f32 %1411, 2
  %1443 = fmul fast float %1442, %1397
  %1444 = fmul fast float %1442, %1398
  %1445 = fadd fast float %1440, %1443
  %1446 = fadd fast float %1441, %1444
  %1447 = fmul fast float %1434, %1434
  %1448 = fmul fast float %1446, %1446
  %1449 = fmul fast float %1436, %1436
  %1450 = fadd fast float %1449, %1447
  %1451 = fadd fast float %1450, %1448
  %1452 = call float @dx.op.unary.f32(i32 24, float %1451)  ; Sqrt(value)
  %1453 = fcmp fast ugt float %1452, 0.000000e+00
  br i1 %1453, label %1454, label %1469

; <label>:1454                                    ; preds = %1188
  %1455 = fsub fast float -0.000000e+00, %1436
  %1456 = fdiv fast float %1455, %1452
  %1457 = fsub fast float -0.000000e+00, %1434
  %1458 = fdiv fast float %1457, %1452
  %1459 = fdiv fast float %1446, %1452
  %1460 = fmul fast float %1445, 0x3FE279A760000000
  %1461 = fmul fast float %1458, %1434
  %1462 = fmul fast float %1459, %1446
  %1463 = fmul fast float %1456, %1436
  %1464 = fadd fast float %1461, %1463
  %1465 = fsub fast float %1464, %1462
  %1466 = call float @dx.op.unary.f32(i32 6, float %1465)  ; FAbs(value)
  %1467 = fadd fast float %1466, 0x3DDB7CDFE0000000
  %1468 = fdiv fast float %1460, %1467
  br label %1469

; <label>:1469                                    ; preds = %1454, %1188
  %1470 = phi float [ %1468, %1454 ], [ 1.000000e+00, %1188 ]
  %1471 = fmul fast float %1419, %1419
  %1472 = fmul fast float %1431, %1431
  %1473 = fmul fast float %1421, %1421
  %1474 = fadd fast float %1473, %1471
  %1475 = fadd fast float %1474, %1472
  %1476 = call float @dx.op.unary.f32(i32 24, float %1475)  ; Sqrt(value)
  %1477 = fcmp fast ugt float %1476, 0.000000e+00
  br i1 %1477, label %1478, label %1493

; <label>:1478                                    ; preds = %1469
  %1479 = fsub fast float -0.000000e+00, %1421
  %1480 = fdiv fast float %1479, %1476
  %1481 = fsub fast float -0.000000e+00, %1419
  %1482 = fdiv fast float %1481, %1476
  %1483 = fdiv fast float %1431, %1476
  %1484 = fmul fast float %1430, 0x3FE279A760000000
  %1485 = fmul fast float %1482, %1419
  %1486 = fmul fast float %1483, %1431
  %1487 = fmul fast float %1480, %1421
  %1488 = fadd fast float %1485, %1487
  %1489 = fsub fast float %1488, %1486
  %1490 = call float @dx.op.unary.f32(i32 6, float %1489)  ; FAbs(value)
  %1491 = fadd fast float %1490, 0x3DDB7CDFE0000000
  %1492 = fdiv fast float %1484, %1491
  br label %1493

; <label>:1493                                    ; preds = %1478, %1469
  %1494 = phi float [ %1492, %1478 ], [ 1.000000e+00, %1469 ]
  %1495 = call float @dx.op.binary.f32(i32 36, float %1494, float %1470)  ; FMin(a,b)
  %1496 = fmul fast float %1402, %1402
  %1497 = fmul fast float %1416, %1416
  %1498 = fmul fast float %1404, %1404
  %1499 = fadd fast float %1498, %1496
  %1500 = fadd fast float %1499, %1497
  %1501 = call float @dx.op.unary.f32(i32 24, float %1500)  ; Sqrt(value)
  %1502 = fcmp fast ugt float %1501, 0.000000e+00
  br i1 %1502, label %1503, label %1518

; <label>:1503                                    ; preds = %1493
  %1504 = fsub fast float -0.000000e+00, %1404
  %1505 = fdiv fast float %1504, %1501
  %1506 = fsub fast float -0.000000e+00, %1402
  %1507 = fdiv fast float %1506, %1501
  %1508 = fdiv fast float %1416, %1501
  %1509 = fmul fast float %1415, 0x3FE279A760000000
  %1510 = fmul fast float %1507, %1402
  %1511 = fmul fast float %1508, %1416
  %1512 = fmul fast float %1505, %1404
  %1513 = fadd fast float %1510, %1512
  %1514 = fsub fast float %1513, %1511
  %1515 = call float @dx.op.unary.f32(i32 6, float %1514)  ; FAbs(value)
  %1516 = fadd fast float %1515, 0x3DDB7CDFE0000000
  %1517 = fdiv fast float %1509, %1516
  br label %1518

; <label>:1518                                    ; preds = %1503, %1493
  %1519 = phi float [ %1517, %1503 ], [ 1.000000e+00, %1493 ]
  %1520 = call float @dx.op.binary.f32(i32 36, float %1519, float %1495)  ; FMin(a,b)
  %1521 = call float @dx.op.unary.f32(i32 7, float %1520)  ; Saturate(value)
  %1522 = fcmp fast olt float %1521, 1.000000e+00
  br i1 %1522, label %1523, label %1533

; <label>:1523                                    ; preds = %1518
  %1524 = fmul fast float %1521, %1402
  %1525 = fmul fast float %1521, %1416
  %1526 = fmul fast float %1521, %1404
  %1527 = fmul fast float %1521, %1419
  %1528 = fmul fast float %1521, %1431
  %1529 = fmul fast float %1521, %1421
  %1530 = fmul fast float %1521, %1434
  %1531 = fmul fast float %1521, %1446
  %1532 = fmul fast float %1521, %1436
  br label %1533

; <label>:1533                                    ; preds = %1523, %1518
  %1534 = phi float [ %1530, %1523 ], [ %1434, %1518 ]
  %1535 = phi float [ %1531, %1523 ], [ %1446, %1518 ]
  %1536 = phi float [ %1532, %1523 ], [ %1436, %1518 ]
  %1537 = phi float [ %1527, %1523 ], [ %1419, %1518 ]
  %1538 = phi float [ %1528, %1523 ], [ %1431, %1518 ]
  %1539 = phi float [ %1529, %1523 ], [ %1421, %1518 ]
  %1540 = phi float [ %1524, %1523 ], [ %1402, %1518 ]
  %1541 = phi float [ %1525, %1523 ], [ %1416, %1518 ]
  %1542 = phi float [ %1526, %1523 ], [ %1404, %1518 ]
  %1543 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1415)  ; FMax(a,b)
  %1544 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1430)  ; FMax(a,b)
  %1545 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1445)  ; FMax(a,b)
  %1546 = fcmp fast oge float %1203, 0.000000e+00
  %1547 = and i1 %1546, %968
  %1548 = fcmp fast ole float %1203, 1.000000e+00
  %1549 = and i1 %1548, %1547
  %1550 = fcmp fast oge float %1204, 0.000000e+00
  %1551 = and i1 %1550, %1549
  %1552 = fcmp fast ole float %1204, 1.000000e+00
  %1553 = and i1 %1552, %1551
  br i1 %1553, label %1554, label %1699, !dx.controlflow.hints !116

; <label>:1554                                    ; preds = %1533
  %1555 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %1556 = extractvalue %dx.types.CBufRet.f32 %1555, 2
  %1557 = extractvalue %dx.types.CBufRet.f32 %1555, 3
  %1558 = fmul fast float %1556, %1203
  %1559 = fmul fast float %1557, %1204
  %1560 = call float @dx.op.unary.f32(i32 27, float %1558)  ; Round_ni(value)
  %1561 = call float @dx.op.unary.f32(i32 27, float %1559)  ; Round_ni(value)
  %1562 = fptosi float %1560 to i32
  %1563 = fptosi float %1561 to i32
  %1564 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %25, i32 0, i32 %1562, i32 %1563, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1565 = extractvalue %dx.types.ResRet.i32 %1564, 0
  %1566 = and i32 %1565, 65535
  %1567 = lshr i32 %1565, 16
  %1568 = icmp eq i32 %1566, 65535
  br i1 %1568, label %1605, label %1569

; <label>:1569                                    ; preds = %1554
  %1570 = extractvalue %dx.types.CBufRet.f32 %966, 1
  %1571 = extractvalue %dx.types.CBufRet.f32 %1555, 0
  %1572 = extractvalue %dx.types.CBufRet.f32 %1555, 1
  %1573 = fmul fast float %1571, %1203
  %1574 = fmul fast float %1572, %1204
  %1575 = fmul fast float %1573, 1.250000e-01
  %1576 = fmul fast float %1574, 1.250000e-01
  %1577 = call float @dx.op.unary.f32(i32 27, float %1575)  ; Round_ni(value)
  %1578 = call float @dx.op.unary.f32(i32 27, float %1576)  ; Round_ni(value)
  %1579 = fmul fast float %1577, 8.000000e+00
  %1580 = fmul fast float %1578, 8.000000e+00
  %1581 = and i32 %1565, 255
  %1582 = lshr i32 %1565, 8
  %1583 = and i32 %1582, 255
  %1584 = mul nuw nsw i32 %1581, 9
  %1585 = uitofp i32 %1584 to float
  %1586 = mul nuw nsw i32 %1583, 9
  %1587 = uitofp i32 %1586 to float
  %1588 = fadd fast float %1585, 5.000000e-01
  %1589 = fadd fast float %1588, %1573
  %1590 = fsub fast float %1589, %1579
  %1591 = fadd fast float %1587, 5.000000e-01
  %1592 = fadd fast float %1591, %1574
  %1593 = fsub fast float %1592, %1580
  %1594 = fdiv fast float %1590, %967
  %1595 = fdiv fast float %1593, %1570
  %1596 = fmul fast float %1231, 4.375000e-01
  %1597 = fadd fast float %1596, 3.125000e-02
  %1598 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %40, float %1594, float %1595, float %1597, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1599 = extractvalue %dx.types.ResRet.f32 %1598, 0
  %1600 = extractvalue %dx.types.ResRet.f32 %1598, 1
  %1601 = extractvalue %dx.types.ResRet.f32 %1598, 2
  %1602 = fadd fast float %1599, %1543
  %1603 = fadd fast float %1600, %1544
  %1604 = fadd fast float %1601, %1545
  br label %1605

; <label>:1605                                    ; preds = %1569, %1554
  %1606 = phi float [ %1604, %1569 ], [ %1545, %1554 ]
  %1607 = phi float [ %1603, %1569 ], [ %1544, %1554 ]
  %1608 = phi float [ %1602, %1569 ], [ %1543, %1554 ]
  %1609 = icmp eq i32 %1567, 65535
  br i1 %1609, label %1699, label %1610

; <label>:1610                                    ; preds = %1605
  %1611 = extractvalue %dx.types.CBufRet.f32 %966, 1
  %1612 = extractvalue %dx.types.CBufRet.f32 %1555, 0
  %1613 = extractvalue %dx.types.CBufRet.f32 %1555, 1
  %1614 = fmul fast float %1612, %1203
  %1615 = fmul fast float %1613, %1204
  %1616 = fmul fast float %1614, 1.250000e-01
  %1617 = fmul fast float %1615, 1.250000e-01
  %1618 = call float @dx.op.unary.f32(i32 27, float %1616)  ; Round_ni(value)
  %1619 = call float @dx.op.unary.f32(i32 27, float %1617)  ; Round_ni(value)
  %1620 = fmul fast float %1618, 8.000000e+00
  %1621 = fmul fast float %1619, 8.000000e+00
  %1622 = fsub fast float %1614, %1620
  %1623 = fsub fast float %1615, %1621
  %1624 = fadd fast float %1622, 5.000000e-01
  %1625 = fadd fast float %1623, 5.000000e-01
  %1626 = and i32 %1567, 255
  %1627 = lshr i32 %1565, 24
  %1628 = mul nuw nsw i32 %1626, 9
  %1629 = uitofp i32 %1628 to float
  %1630 = mul nuw nsw i32 %1627, 9
  %1631 = uitofp i32 %1630 to float
  %1632 = fadd fast float %1624, %1629
  %1633 = fadd fast float %1625, %1631
  %1634 = fdiv fast float %1632, %967
  %1635 = fdiv fast float %1633, %1611
  %1636 = fmul fast float %1231, 4.375000e-01
  %1637 = fadd fast float %1636, 3.125000e-02
  %1638 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %40, float %1634, float %1635, float %1637, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1639 = extractvalue %dx.types.ResRet.f32 %1638, 0
  %1640 = extractvalue %dx.types.ResRet.f32 %1638, 1
  %1641 = extractvalue %dx.types.ResRet.f32 %1638, 2
  %1642 = fadd fast float %1636, 5.312500e-01
  %1643 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %40, float %1634, float %1635, float %1642, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1644 = extractvalue %dx.types.ResRet.f32 %1643, 0
  %1645 = extractvalue %dx.types.ResRet.f32 %1643, 1
  %1646 = extractvalue %dx.types.ResRet.f32 %1643, 2
  %1647 = fmul fast float %1644, 2.000000e+00
  %1648 = fmul fast float %1645, 2.000000e+00
  %1649 = fmul fast float %1646, 2.000000e+00
  %1650 = fadd fast float %1647, -1.000000e+00
  %1651 = fadd fast float %1648, -1.000000e+00
  %1652 = fadd fast float %1649, -1.000000e+00
  %1653 = fmul fast float %1650, %1650
  %1654 = fmul fast float %1651, %1651
  %1655 = fadd fast float %1653, %1654
  %1656 = fmul fast float %1652, %1652
  %1657 = fadd fast float %1655, %1656
  %1658 = call float @dx.op.unary.f32(i32 24, float %1657)  ; Sqrt(value)
  %1659 = fcmp fast ogt float %1658, 0.000000e+00
  br i1 %1659, label %1660, label %1664

; <label>:1660                                    ; preds = %1610
  %1661 = fdiv fast float %1650, %1658
  %1662 = fdiv fast float %1651, %1658
  %1663 = fdiv fast float %1652, %1658
  br label %1664

; <label>:1664                                    ; preds = %1660, %1610
  %1665 = phi float [ %1661, %1660 ], [ 0.000000e+00, %1610 ]
  %1666 = phi float [ %1662, %1660 ], [ 0.000000e+00, %1610 ]
  %1667 = phi float [ %1663, %1660 ], [ 0.000000e+00, %1610 ]
  %1668 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1669 = extractvalue %dx.types.CBufRet.f32 %1668, 0
  %1670 = extractvalue %dx.types.CBufRet.f32 %1668, 1
  %1671 = fsub fast float %535, %1669
  %1672 = fsub fast float %536, %1670
  %1673 = fmul fast float %1671, %1671
  %1674 = fmul fast float %1672, %1672
  %1675 = fadd fast float %1673, %1674
  %1676 = call float @dx.op.unary.f32(i32 24, float %1675)  ; Sqrt(value)
  %1677 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %1678 = extractvalue %dx.types.CBufRet.f32 %1677, 0
  %1679 = extractvalue %dx.types.CBufRet.f32 %1677, 1
  %1680 = fsub fast float %1676, %1678
  %1681 = fdiv fast float %1680, %1679
  %1682 = call float @dx.op.unary.f32(i32 7, float %1681)  ; Saturate(value)
  %1683 = fmul fast float %1682, 2.000000e+00
  %1684 = fsub fast float 3.000000e+00, %1683
  %1685 = fmul fast float %1682, %1682
  %1686 = fmul fast float %1685, %1684
  %1687 = call float @dx.op.dot3.f32(i32 55, float %1665, float %1666, float %1667, float %289, float %290, float %291)  ; Dot3(ax,ay,az,bx,by,bz)
  %1688 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1687)  ; FMax(a,b)
  %1689 = fmul fast float %1688, 0x400C5BF8A0000000
  %1690 = fmul fast float %1686, %1639
  %1691 = fmul fast float %1690, %1689
  %1692 = fadd fast float %1691, %1608
  %1693 = fmul fast float %1686, %1640
  %1694 = fmul fast float %1693, %1689
  %1695 = fadd fast float %1694, %1607
  %1696 = fmul fast float %1686, %1641
  %1697 = fmul fast float %1696, %1689
  %1698 = fadd fast float %1697, %1606
  br label %1699

; <label>:1699                                    ; preds = %1664, %1605, %1533
  %1700 = phi float [ %1698, %1664 ], [ %1606, %1605 ], [ %1545, %1533 ]
  %1701 = phi float [ %1695, %1664 ], [ %1607, %1605 ], [ %1544, %1533 ]
  %1702 = phi float [ %1692, %1664 ], [ %1608, %1605 ], [ %1543, %1533 ]
  %1703 = fcmp fast ogt float %1190, %1227
  %1704 = and i1 %1546, %1703
  %1705 = and i1 %1548, %1704
  %1706 = and i1 %1550, %1705
  %1707 = and i1 %1552, %1706
  br i1 %1707, label %1708, label %1765, !dx.controlflow.hints !117

; <label>:1708                                    ; preds = %1699
  %1709 = fmul fast float %1229, 0x3FC24924A0000000
  %1710 = fsub fast float %1190, %1227
  %1711 = fdiv fast float %1710, %1709
  %1712 = call float @dx.op.unary.f32(i32 7, float %1711)  ; Saturate(value)
  %1713 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 275)  ; CBufferLoadLegacy(handle,regIndex)
  %1714 = extractvalue %dx.types.CBufRet.f32 %1713, 0
  %1715 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 276)  ; CBufferLoadLegacy(handle,regIndex)
  %1716 = extractvalue %dx.types.CBufRet.f32 %1715, 0
  %1717 = extractvalue %dx.types.CBufRet.f32 %1715, 1
  %1718 = extractvalue %dx.types.CBufRet.f32 %1715, 2
  %1719 = fsub fast float %1714, %1702
  %1720 = fsub fast float %1716, %1540
  %1721 = fsub fast float %1717, %1541
  %1722 = fsub fast float %1718, %1542
  %1723 = fmul fast float %1719, %1712
  %1724 = fmul fast float %1720, %1712
  %1725 = fmul fast float %1721, %1712
  %1726 = fmul fast float %1722, %1712
  %1727 = fadd fast float %1723, %1702
  %1728 = fadd fast float %1724, %1540
  %1729 = fadd fast float %1725, %1541
  %1730 = fadd fast float %1726, %1542
  %1731 = extractvalue %dx.types.CBufRet.f32 %1713, 1
  %1732 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 278)  ; CBufferLoadLegacy(handle,regIndex)
  %1733 = extractvalue %dx.types.CBufRet.f32 %1732, 0
  %1734 = extractvalue %dx.types.CBufRet.f32 %1732, 1
  %1735 = extractvalue %dx.types.CBufRet.f32 %1732, 2
  %1736 = fsub fast float %1731, %1701
  %1737 = fsub fast float %1733, %1537
  %1738 = fsub fast float %1734, %1538
  %1739 = fsub fast float %1735, %1539
  %1740 = fmul fast float %1736, %1712
  %1741 = fmul fast float %1737, %1712
  %1742 = fmul fast float %1738, %1712
  %1743 = fmul fast float %1739, %1712
  %1744 = fadd fast float %1740, %1701
  %1745 = fadd fast float %1741, %1537
  %1746 = fadd fast float %1742, %1538
  %1747 = fadd fast float %1743, %1539
  %1748 = extractvalue %dx.types.CBufRet.f32 %1713, 2
  %1749 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 280)  ; CBufferLoadLegacy(handle,regIndex)
  %1750 = extractvalue %dx.types.CBufRet.f32 %1749, 0
  %1751 = extractvalue %dx.types.CBufRet.f32 %1749, 1
  %1752 = extractvalue %dx.types.CBufRet.f32 %1749, 2
  %1753 = fsub fast float %1748, %1700
  %1754 = fsub fast float %1750, %1534
  %1755 = fsub fast float %1751, %1535
  %1756 = fsub fast float %1752, %1536
  %1757 = fmul fast float %1753, %1712
  %1758 = fmul fast float %1754, %1712
  %1759 = fmul fast float %1755, %1712
  %1760 = fmul fast float %1756, %1712
  %1761 = fadd fast float %1757, %1700
  %1762 = fadd fast float %1758, %1534
  %1763 = fadd fast float %1759, %1535
  %1764 = fadd fast float %1760, %1536
  br label %1765

; <label>:1765                                    ; preds = %1708, %1699
  %1766 = phi float [ %1761, %1708 ], [ %1700, %1699 ]
  %1767 = phi float [ %1762, %1708 ], [ %1534, %1699 ]
  %1768 = phi float [ %1763, %1708 ], [ %1535, %1699 ]
  %1769 = phi float [ %1764, %1708 ], [ %1536, %1699 ]
  %1770 = phi float [ %1744, %1708 ], [ %1701, %1699 ]
  %1771 = phi float [ %1745, %1708 ], [ %1537, %1699 ]
  %1772 = phi float [ %1746, %1708 ], [ %1538, %1699 ]
  %1773 = phi float [ %1747, %1708 ], [ %1539, %1699 ]
  %1774 = phi float [ %1727, %1708 ], [ %1702, %1699 ]
  %1775 = phi float [ %1728, %1708 ], [ %1540, %1699 ]
  %1776 = phi float [ %1729, %1708 ], [ %1541, %1699 ]
  %1777 = phi float [ %1730, %1708 ], [ %1542, %1699 ]
  %1778 = extractvalue %dx.types.CBufRet.f32 %1352, 3
  %1779 = fmul fast float %1778, %1774
  %1780 = fmul fast float %1778, %1770
  %1781 = fmul fast float %1778, %1766
  %1782 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1783 = extractvalue %dx.types.CBufRet.f32 %1782, 3
  %1784 = fmul fast float %1779, %1783
  %1785 = fmul fast float %1780, %1783
  %1786 = fmul fast float %1781, %1783
  %1787 = call float @dx.op.dot3.f32(i32 55, float %1784, float %1785, float %1786, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1788 = fmul fast float %1787, 0x3FD20DD760000000
  %1789 = fmul fast float %1775, 1.500000e+00
  %1790 = fmul fast float %1789, %1778
  %1791 = fmul fast float %1790, %1783
  %1792 = fmul fast float %1776, 1.500000e+00
  %1793 = fmul fast float %1792, %1778
  %1794 = fmul fast float %1793, %1783
  %1795 = fmul fast float %1777, 1.500000e+00
  %1796 = fmul fast float %1795, %1778
  %1797 = fmul fast float %1796, %1783
  %1798 = fmul fast float %1771, 1.500000e+00
  %1799 = fmul fast float %1798, %1778
  %1800 = fmul fast float %1799, %1783
  %1801 = fmul fast float %1772, 1.500000e+00
  %1802 = fmul fast float %1801, %1778
  %1803 = fmul fast float %1802, %1783
  %1804 = fmul fast float %1773, 1.500000e+00
  %1805 = fmul fast float %1804, %1778
  %1806 = fmul fast float %1805, %1783
  %1807 = fmul fast float %1767, 1.500000e+00
  %1808 = fmul fast float %1807, %1778
  %1809 = fmul fast float %1808, %1783
  %1810 = fmul fast float %1768, 1.500000e+00
  %1811 = fmul fast float %1810, %1778
  %1812 = fmul fast float %1811, %1783
  %1813 = fmul fast float %1769, 1.500000e+00
  %1814 = fmul fast float %1813, %1778
  %1815 = fmul fast float %1814, %1783
  %1816 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1784)  ; FMax(a,b)
  %1817 = call float @dx.op.dot3.f32(i32 55, float %1791, float %1794, float %1797, float %1791, float %1794, float %1797)  ; Dot3(ax,ay,az,bx,by,bz)
  %1818 = fcmp fast oeq float %1817, 0.000000e+00
  %1819 = fcmp fast oeq float %1816, 0.000000e+00
  %1820 = or i1 %1819, %1818
  br i1 %1820, label %1850, label %1821

; <label>:1821                                    ; preds = %1765
  %1822 = fsub fast float -0.000000e+00, %1797
  %1823 = fsub fast float -0.000000e+00, %1791
  %1824 = call float @dx.op.unary.f32(i32 24, float %1817)  ; Sqrt(value)
  %1825 = fdiv fast float %1824, %1816
  %1826 = fcmp fast ogt float %1825, 0x3FFB6F8900000000
  %1827 = select i1 %1826, float 0x3FFB6F8900000000, float %1825
  %1828 = fmul fast float %1827, 0x3FE8A23460000000
  %1829 = call float @dx.op.unary.f32(i32 7, float %1828)  ; Saturate(value)
  %1830 = call float @dx.op.binary.f32(i32 35, float %1827, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %1831 = fmul fast float %1829, %1816
  %1832 = fmul fast float %1830, 0x3FF279A740000000
  %1833 = fadd fast float %1832, -1.000000e+00
  %1834 = call float @dx.op.dot3.f32(i32 55, float %1822, float %1823, float %1794, float %1822, float %1823, float %1794)  ; Dot3(ax,ay,az,bx,by,bz)
  %1835 = call float @dx.op.unary.f32(i32 25, float %1834)  ; Rsqrt(value)
  %1836 = fmul fast float %1835, %1822
  %1837 = fmul fast float %1835, %1823
  %1838 = fmul fast float %1835, %1794
  %1839 = fmul fast float %1833, %1833
  %1840 = fsub fast float 1.000000e+00, %1839
  %1841 = fmul fast float %1830, 0x40005F8BE0000000
  %1842 = fsub fast float 0x400C5BF8A0000000, %1841
  %1843 = fdiv fast float %1831, %1842
  %1844 = fmul fast float %1843, 0x3FEE31C3C0000000
  %1845 = fmul fast float %1844, %1840
  %1846 = fmul fast float %1830, 0x3FDACB7480000000
  %1847 = fadd fast float %1846, 0xBFD7347680000000
  %1848 = fmul fast float %1847, %1843
  %1849 = fmul fast float %1848, %1840
  br label %1850

; <label>:1850                                    ; preds = %1821, %1765
  %1851 = phi float [ %1836, %1821 ], [ 0.000000e+00, %1765 ]
  %1852 = phi float [ %1837, %1821 ], [ 0.000000e+00, %1765 ]
  %1853 = phi float [ %1838, %1821 ], [ 0.000000e+00, %1765 ]
  %1854 = phi float [ %1845, %1821 ], [ 0.000000e+00, %1765 ]
  %1855 = phi float [ %1849, %1821 ], [ 0.000000e+00, %1765 ]
  %1856 = call float @dx.op.dot3.f32(i32 55, float %1851, float %1852, float %1853, float %289, float %290, float %291)  ; Dot3(ax,ay,az,bx,by,bz)
  %1857 = fmul fast float %1856, 0x3FDF454380000000
  %1858 = fmul fast float %1856, %1856
  %1859 = fmul fast float %1858, 0x3FEE471020000000
  %1860 = fadd fast float %1859, 0xBFD42F6020000000
  %1861 = fmul fast float %1816, 0x3FD20DD760000000
  %1862 = fmul fast float %1860, %1855
  %1863 = fadd fast float %1862, %1861
  %1864 = fmul fast float %1857, %1854
  %1865 = fadd fast float %1863, %1864
  %1866 = fsub fast float %1863, %1864
  %1867 = call float @dx.op.dot3.f32(i32 55, float %1851, float %1852, float %1853, float %516, float %517, float %518)  ; Dot3(ax,ay,az,bx,by,bz)
  %1868 = fmul fast float %1867, 0x3FDF454380000000
  %1869 = fmul fast float %1867, %1867
  %1870 = fmul fast float %1869, 0x3FEE471020000000
  %1871 = fadd fast float %1870, 0xBFD42F6020000000
  %1872 = call float @dx.op.dot3.f32(i32 55, float %1816, float %1854, float %1855, float 0x3FD20DD760000000, float %1868, float %1871)  ; Dot3(ax,ay,az,bx,by,bz)
  %1873 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1785)  ; FMax(a,b)
  %1874 = call float @dx.op.dot3.f32(i32 55, float %1800, float %1803, float %1806, float %1800, float %1803, float %1806)  ; Dot3(ax,ay,az,bx,by,bz)
  %1875 = fcmp fast oeq float %1874, 0.000000e+00
  %1876 = fcmp fast oeq float %1873, 0.000000e+00
  %1877 = or i1 %1876, %1875
  br i1 %1877, label %1907, label %1878

; <label>:1878                                    ; preds = %1850
  %1879 = fsub fast float -0.000000e+00, %1806
  %1880 = fsub fast float -0.000000e+00, %1800
  %1881 = call float @dx.op.unary.f32(i32 24, float %1874)  ; Sqrt(value)
  %1882 = fdiv fast float %1881, %1873
  %1883 = fcmp fast ogt float %1882, 0x3FFB6F8900000000
  %1884 = select i1 %1883, float 0x3FFB6F8900000000, float %1882
  %1885 = fmul fast float %1884, 0x3FE8A23460000000
  %1886 = call float @dx.op.unary.f32(i32 7, float %1885)  ; Saturate(value)
  %1887 = call float @dx.op.binary.f32(i32 35, float %1884, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %1888 = fmul fast float %1886, %1873
  %1889 = fmul fast float %1887, 0x3FF279A740000000
  %1890 = fadd fast float %1889, -1.000000e+00
  %1891 = call float @dx.op.dot3.f32(i32 55, float %1879, float %1880, float %1803, float %1879, float %1880, float %1803)  ; Dot3(ax,ay,az,bx,by,bz)
  %1892 = call float @dx.op.unary.f32(i32 25, float %1891)  ; Rsqrt(value)
  %1893 = fmul fast float %1892, %1879
  %1894 = fmul fast float %1892, %1880
  %1895 = fmul fast float %1892, %1803
  %1896 = fmul fast float %1890, %1890
  %1897 = fsub fast float 1.000000e+00, %1896
  %1898 = fmul fast float %1887, 0x40005F8BE0000000
  %1899 = fsub fast float 0x400C5BF8A0000000, %1898
  %1900 = fdiv fast float %1888, %1899
  %1901 = fmul fast float %1900, 0x3FEE31C3C0000000
  %1902 = fmul fast float %1901, %1897
  %1903 = fmul fast float %1887, 0x3FDACB7480000000
  %1904 = fadd fast float %1903, 0xBFD7347680000000
  %1905 = fmul fast float %1904, %1900
  %1906 = fmul fast float %1905, %1897
  br label %1907

; <label>:1907                                    ; preds = %1878, %1850
  %1908 = phi float [ %1893, %1878 ], [ 0.000000e+00, %1850 ]
  %1909 = phi float [ %1894, %1878 ], [ 0.000000e+00, %1850 ]
  %1910 = phi float [ %1895, %1878 ], [ 0.000000e+00, %1850 ]
  %1911 = phi float [ %1902, %1878 ], [ 0.000000e+00, %1850 ]
  %1912 = phi float [ %1906, %1878 ], [ 0.000000e+00, %1850 ]
  %1913 = call float @dx.op.dot3.f32(i32 55, float %1908, float %1909, float %1910, float %289, float %290, float %291)  ; Dot3(ax,ay,az,bx,by,bz)
  %1914 = fmul fast float %1913, 0x3FDF454380000000
  %1915 = fmul fast float %1913, %1913
  %1916 = fmul fast float %1915, 0x3FEE471020000000
  %1917 = fadd fast float %1916, 0xBFD42F6020000000
  %1918 = fmul fast float %1873, 0x3FD20DD760000000
  %1919 = fmul fast float %1917, %1912
  %1920 = fadd fast float %1919, %1918
  %1921 = fmul fast float %1914, %1911
  %1922 = fadd fast float %1920, %1921
  %1923 = fsub fast float %1920, %1921
  %1924 = call float @dx.op.dot3.f32(i32 55, float %1908, float %1909, float %1910, float %516, float %517, float %518)  ; Dot3(ax,ay,az,bx,by,bz)
  %1925 = fmul fast float %1924, 0x3FDF454380000000
  %1926 = fmul fast float %1924, %1924
  %1927 = fmul fast float %1926, 0x3FEE471020000000
  %1928 = fadd fast float %1927, 0xBFD42F6020000000
  %1929 = call float @dx.op.dot3.f32(i32 55, float %1873, float %1911, float %1912, float 0x3FD20DD760000000, float %1925, float %1928)  ; Dot3(ax,ay,az,bx,by,bz)
  %1930 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1786)  ; FMax(a,b)
  %1931 = call float @dx.op.dot3.f32(i32 55, float %1809, float %1812, float %1815, float %1809, float %1812, float %1815)  ; Dot3(ax,ay,az,bx,by,bz)
  %1932 = fcmp fast oeq float %1931, 0.000000e+00
  %1933 = fcmp fast oeq float %1930, 0.000000e+00
  %1934 = or i1 %1933, %1932
  br i1 %1934, label %1964, label %1935

; <label>:1935                                    ; preds = %1907
  %1936 = fsub fast float -0.000000e+00, %1815
  %1937 = fsub fast float -0.000000e+00, %1809
  %1938 = call float @dx.op.unary.f32(i32 24, float %1931)  ; Sqrt(value)
  %1939 = fdiv fast float %1938, %1930
  %1940 = fcmp fast ogt float %1939, 0x3FFB6F8900000000
  %1941 = select i1 %1940, float 0x3FFB6F8900000000, float %1939
  %1942 = fmul fast float %1941, 0x3FE8A23460000000
  %1943 = call float @dx.op.unary.f32(i32 7, float %1942)  ; Saturate(value)
  %1944 = call float @dx.op.binary.f32(i32 35, float %1941, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %1945 = fmul fast float %1943, %1930
  %1946 = fmul fast float %1944, 0x3FF279A740000000
  %1947 = fadd fast float %1946, -1.000000e+00
  %1948 = call float @dx.op.dot3.f32(i32 55, float %1936, float %1937, float %1812, float %1936, float %1937, float %1812)  ; Dot3(ax,ay,az,bx,by,bz)
  %1949 = call float @dx.op.unary.f32(i32 25, float %1948)  ; Rsqrt(value)
  %1950 = fmul fast float %1949, %1936
  %1951 = fmul fast float %1949, %1937
  %1952 = fmul fast float %1949, %1812
  %1953 = fmul fast float %1947, %1947
  %1954 = fsub fast float 1.000000e+00, %1953
  %1955 = fmul fast float %1944, 0x40005F8BE0000000
  %1956 = fsub fast float 0x400C5BF8A0000000, %1955
  %1957 = fdiv fast float %1945, %1956
  %1958 = fmul fast float %1957, 0x3FEE31C3C0000000
  %1959 = fmul fast float %1958, %1954
  %1960 = fmul fast float %1944, 0x3FDACB7480000000
  %1961 = fadd fast float %1960, 0xBFD7347680000000
  %1962 = fmul fast float %1961, %1957
  %1963 = fmul fast float %1962, %1954
  br label %1964

; <label>:1964                                    ; preds = %1935, %1907
  %1965 = phi float [ %1950, %1935 ], [ 0.000000e+00, %1907 ]
  %1966 = phi float [ %1951, %1935 ], [ 0.000000e+00, %1907 ]
  %1967 = phi float [ %1952, %1935 ], [ 0.000000e+00, %1907 ]
  %1968 = phi float [ %1959, %1935 ], [ 0.000000e+00, %1907 ]
  %1969 = phi float [ %1963, %1935 ], [ 0.000000e+00, %1907 ]
  %1970 = call float @dx.op.dot3.f32(i32 55, float %1965, float %1966, float %1967, float %289, float %290, float %291)  ; Dot3(ax,ay,az,bx,by,bz)
  %1971 = fmul fast float %1970, 0x3FDF454380000000
  %1972 = fmul fast float %1970, %1970
  %1973 = fmul fast float %1972, 0x3FEE471020000000
  %1974 = fadd fast float %1973, 0xBFD42F6020000000
  %1975 = fmul fast float %1930, 0x3FD20DD760000000
  %1976 = fmul fast float %1974, %1969
  %1977 = fadd fast float %1976, %1975
  %1978 = fmul fast float %1971, %1968
  %1979 = fadd fast float %1977, %1978
  %1980 = fsub fast float %1977, %1978
  %1981 = call float @dx.op.dot3.f32(i32 55, float %1965, float %1966, float %1967, float %516, float %517, float %518)  ; Dot3(ax,ay,az,bx,by,bz)
  %1982 = fmul fast float %1981, 0x3FDF454380000000
  %1983 = fmul fast float %1981, %1981
  %1984 = fmul fast float %1983, 0x3FEE471020000000
  %1985 = fadd fast float %1984, 0xBFD42F6020000000
  %1986 = call float @dx.op.dot3.f32(i32 55, float %1930, float %1968, float %1969, float 0x3FD20DD760000000, float %1982, float %1985)  ; Dot3(ax,ay,az,bx,by,bz)
  %1987 = call float @dx.op.binary.f32(i32 35, float %1865, float 0.000000e+00)  ; FMax(a,b)
  %1988 = call float @dx.op.binary.f32(i32 35, float %1922, float 0.000000e+00)  ; FMax(a,b)
  %1989 = call float @dx.op.binary.f32(i32 35, float %1979, float 0.000000e+00)  ; FMax(a,b)
  %1990 = call float @dx.op.binary.f32(i32 35, float %1866, float 0.000000e+00)  ; FMax(a,b)
  %1991 = call float @dx.op.binary.f32(i32 35, float %1923, float 0.000000e+00)  ; FMax(a,b)
  %1992 = call float @dx.op.binary.f32(i32 35, float %1980, float 0.000000e+00)  ; FMax(a,b)
  %1993 = call float @dx.op.binary.f32(i32 35, float %1872, float 0.000000e+00)  ; FMax(a,b)
  %1994 = call float @dx.op.binary.f32(i32 35, float %1929, float 0.000000e+00)  ; FMax(a,b)
  %1995 = call float @dx.op.binary.f32(i32 35, float %1986, float 0.000000e+00)  ; FMax(a,b)
  %1996 = fsub fast float %1184, %1987
  %1997 = fsub fast float %1185, %1988
  %1998 = fsub fast float %1186, %1989
  %1999 = fmul fast float %1996, %576
  %2000 = fmul fast float %1997, %576
  %2001 = fmul fast float %1998, %576
  %2002 = fadd fast float %1999, %1987
  %2003 = fadd fast float %2000, %1988
  %2004 = fadd fast float %2001, %1989
  %2005 = fsub fast float %1181, %1990
  %2006 = fsub fast float %1182, %1991
  %2007 = fsub fast float %1183, %1992
  %2008 = fmul fast float %2005, %576
  %2009 = fmul fast float %2006, %576
  %2010 = fmul fast float %2007, %576
  %2011 = fadd fast float %2008, %1990
  %2012 = fadd fast float %2009, %1991
  %2013 = fadd fast float %2010, %1992
  %2014 = fsub fast float %1178, %1993
  %2015 = fsub fast float %1179, %1994
  %2016 = fsub fast float %1180, %1995
  %2017 = fmul fast float %2014, %576
  %2018 = fmul fast float %2015, %576
  %2019 = fmul fast float %2016, %576
  %2020 = fadd fast float %2017, %1993
  %2021 = fadd fast float %2018, %1994
  %2022 = fadd fast float %2019, %1995
  %2023 = fsub fast float %965, %1788
  %2024 = fmul fast float %2023, %576
  %2025 = fadd fast float %2024, %1788
  br label %2026

; <label>:2026                                    ; preds = %1964, %1177
  %2027 = phi float [ %2020, %1964 ], [ %1178, %1177 ]
  %2028 = phi float [ %2021, %1964 ], [ %1179, %1177 ]
  %2029 = phi float [ %2022, %1964 ], [ %1180, %1177 ]
  %2030 = phi float [ %2011, %1964 ], [ %1181, %1177 ]
  %2031 = phi float [ %2012, %1964 ], [ %1182, %1177 ]
  %2032 = phi float [ %2013, %1964 ], [ %1183, %1177 ]
  %2033 = phi float [ %2002, %1964 ], [ %1184, %1177 ]
  %2034 = phi float [ %2003, %1964 ], [ %1185, %1177 ]
  %2035 = phi float [ %2004, %1964 ], [ %1186, %1177 ]
  %2036 = phi float [ %2025, %1964 ], [ %965, %1177 ]
  %2037 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %2038 = extractvalue %dx.types.CBufRet.f32 %2037, 0
  %2039 = call float @dx.op.binary.f32(i32 36, float %481, float %2038)  ; FMin(a,b)
  %2040 = fmul fast float %2039, %520
  %2041 = fsub fast float 1.000000e+00, %2040
  %2042 = bitcast float %2041 to i32
  %2043 = sub nsw i32 2129859010, %2042
  %2044 = bitcast i32 %2043 to float
  %2045 = call float @dx.op.binary.f32(i32 36, float %482, float %2038)  ; FMin(a,b)
  %2046 = fmul fast float %2045, %520
  %2047 = fsub fast float 1.000000e+00, %2046
  %2048 = bitcast float %2047 to i32
  %2049 = sub nsw i32 2129859010, %2048
  %2050 = bitcast i32 %2049 to float
  %2051 = call float @dx.op.binary.f32(i32 36, float %483, float %2038)  ; FMin(a,b)
  %2052 = fmul fast float %2051, %520
  %2053 = fsub fast float 1.000000e+00, %2052
  %2054 = bitcast float %2053 to i32
  %2055 = sub nsw i32 2129859010, %2054
  %2056 = bitcast i32 %2055 to float
  %2057 = fmul fast float %2033, %519
  %2058 = fmul fast float %2057, %2044
  %2059 = fmul fast float %2034, %519
  %2060 = fmul fast float %2059, %2050
  %2061 = fmul fast float %2035, %519
  %2062 = fmul fast float %2061, %2056
  %2063 = call float @dx.op.binary.f32(i32 36, float %490, float %2038)  ; FMin(a,b)
  %2064 = fmul fast float %2063, %520
  %2065 = fsub fast float 1.000000e+00, %2064
  %2066 = bitcast float %2065 to i32
  %2067 = sub nsw i32 2129859010, %2066
  %2068 = bitcast i32 %2067 to float
  %2069 = call float @dx.op.binary.f32(i32 36, float %491, float %2038)  ; FMin(a,b)
  %2070 = fmul fast float %2069, %520
  %2071 = fsub fast float 1.000000e+00, %2070
  %2072 = bitcast float %2071 to i32
  %2073 = sub nsw i32 2129859010, %2072
  %2074 = bitcast i32 %2073 to float
  %2075 = call float @dx.op.binary.f32(i32 36, float %508, float %2038)  ; FMin(a,b)
  %2076 = fmul fast float %2075, %520
  %2077 = fsub fast float 1.000000e+00, %2076
  %2078 = bitcast float %2077 to i32
  %2079 = sub nsw i32 2129859010, %2078
  %2080 = bitcast i32 %2079 to float
  %2081 = fmul fast float %2027, %519
  %2082 = fmul fast float %2081, %2068
  %2083 = fmul fast float %2028, %519
  %2084 = fmul fast float %2083, %2074
  %2085 = fmul fast float %2029, %519
  %2086 = fmul fast float %2085, %2080
  %2087 = call float @dx.op.dot3.f32(i32 55, float %2058, float %2060, float %2062, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2088 = select i1 %129, float 0.000000e+00, float %2058
  %2089 = select i1 %129, float %2087, float %2060
  %2090 = select i1 %129, float 0.000000e+00, float %2062
  %2091 = call float @dx.op.dot3.f32(i32 55, float %2030, float %2031, float %2032, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2092 = select i1 %129, float 0.000000e+00, float %2030
  %2093 = select i1 %129, float %2091, float %2031
  %2094 = select i1 %129, float 0.000000e+00, float %2032
  %2095 = call float @dx.op.dot3.f32(i32 55, float %2082, float %2084, float %2086, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2096 = select i1 %129, float 0.000000e+00, float %2082
  %2097 = select i1 %129, float %2095, float %2084
  %2098 = select i1 %129, float 0.000000e+00, float %2086
  %2099 = fmul fast float %510, 9.843750e-01
  %2100 = fmul fast float %301, 9.843750e-01
  %2101 = fadd fast float %2099, 7.812500e-03
  %2102 = fadd fast float %2100, 7.812500e-03
  %2103 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %40, float %2101, float %2102, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2104 = extractvalue %dx.types.ResRet.f32 %2103, 2
  %2105 = extractvalue %dx.types.ResRet.f32 %2103, 3
  %2106 = fmul fast float %2104, %490
  %2107 = fmul fast float %2104, %491
  %2108 = fmul fast float %2104, %508
  %2109 = fadd fast float %2106, %2105
  %2110 = fadd fast float %2107, %2105
  %2111 = fadd fast float %2108, %2105
  %2112 = call float @dx.op.binary.f32(i32 35, float %2110, float %2111)  ; FMax(a,b)
  %2113 = call float @dx.op.binary.f32(i32 35, float %2109, float %2112)  ; FMax(a,b)
  %2114 = fsub fast float 1.000000e+00, %2113
  %2115 = fmul fast float %2113, %301
  %2116 = fadd fast float %2115, %301
  %2117 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 252)  ; CBufferLoadLegacy(handle,regIndex)
  %2118 = extractvalue %dx.types.CBufRet.f32 %2117, 2
  %2119 = extractvalue %dx.types.CBufRet.f32 %2117, 3
  %2120 = fmul fast float %2116, %2118
  %2121 = fadd fast float %2120, %2119
  %2122 = call float @dx.op.unary.f32(i32 7, float %2121)  ; Saturate(value)
  %2123 = fsub fast float 1.000000e+00, %531
  %2124 = fadd fast float %2123, %2122
  %2125 = call float @dx.op.unary.f32(i32 7, float %2124)  ; Saturate(value)
  %2126 = fcmp fast olt float %2125, 1.000000e+00
  br i1 %2126, label %2127, label %2602

; <label>:2127                                    ; preds = %2026
  %2128 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %2129 = extractvalue %dx.types.CBufRet.f32 %2128, 2
  %2130 = extractvalue %dx.types.CBufRet.f32 %2128, 3
  %2131 = fmul fast float %2129, %92
  %2132 = fmul fast float %2130, %93
  %2133 = fptoui float %2131 to i32
  %2134 = fptoui float %2132 to i32
  %2135 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %2136 = extractvalue %dx.types.CBufRet.f32 %2135, 0
  %2137 = extractvalue %dx.types.CBufRet.f32 %2135, 2
  %2138 = extractvalue %dx.types.CBufRet.f32 %2135, 3
  %2139 = fadd fast float %333, -4.000000e+00
  %2140 = call float @dx.op.binary.f32(i32 35, float %2139, float 0.000000e+00)  ; FMax(a,b)
  %2141 = fadd fast float %2140, %2136
  %2142 = fmul fast float %2141, %2137
  %2143 = call float @dx.op.unary.f32(i32 23, float %2142)  ; Log(value)
  %2144 = fmul fast float %2143, %2138
  %2145 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %2146 = extractvalue %dx.types.CBufRet.f32 %2145, 2
  %2147 = fmul fast float %2144, %2146
  %2148 = call float @dx.op.unary.f32(i32 7, float %2147)  ; Saturate(value)
  %2149 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %44, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %2150 = extractvalue %dx.types.CBufRet.i32 %2149, 1
  %2151 = add i32 %2150, -1
  %2152 = uitofp i32 %2150 to float
  %2153 = fmul fast float %2152, %2148
  %2154 = fptoui float %2153 to i32
  %2155 = call i32 @dx.op.binary.i32(i32 40, i32 %2154, i32 %2151)  ; UMin(a,b)
  %2156 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %44, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %2157 = extractvalue %dx.types.CBufRet.i32 %2156, 2
  %2158 = extractvalue %dx.types.CBufRet.i32 %2156, 3
  %2159 = call i32 @dx.op.tertiary.i32(i32 49, i32 %2134, i32 %2157, i32 %2133)  ; UMad(a,b,c)
  %2160 = call i32 @dx.op.tertiary.i32(i32 49, i32 %2155, i32 %2158, i32 %2159)  ; UMad(a,b,c)
  %2161 = call float @dx.op.binary.f32(i32 35, float %333, float 0.000000e+00)  ; FMax(a,b)
  %2162 = fptoui float %2161 to i32
  %2163 = lshr i32 %2162, 5
  %2164 = call i32 @dx.op.binary.i32(i32 40, i32 %2163, i32 8191)  ; UMin(a,b)
  %2165 = call float @dx.op.unary.f32(i32 7, float %499)  ; Saturate(value)
  %2166 = fcmp fast ogt float %2165, 0.000000e+00
  %2167 = fcmp fast ogt float %518, 0.000000e+00
  %2168 = and i1 %2167, %2166
  br i1 %2168, label %2169, label %2198

; <label>:2169                                    ; preds = %2127
  %2170 = call float @dx.op.dot3.f32(i32 55, float %516, float %517, float %518, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %2171 = call float @dx.op.binary.f32(i32 35, float %2170, float -1.000000e+00)  ; FMax(a,b)
  %2172 = call float @dx.op.binary.f32(i32 36, float %2171, float 1.000000e+00)  ; FMin(a,b)
  %2173 = fmul fast float %2172, %2172
  %2174 = fsub fast float 1.000000e+00, %2173
  %2175 = fmul fast float %2174, 0x3FFC6E2300000000
  %2176 = fsub fast float 1.000000e+00, %2175
  %2177 = fcmp fast ogt float %2176, 0.000000e+00
  %2178 = call float @dx.op.unary.f32(i32 24, float %2176)  ; Sqrt(value)
  %2179 = fsub fast float 1.000000e+00, %2178
  %2180 = call float @dx.op.unary.f32(i32 23, float %2179)  ; Log(value)
  %2181 = fmul fast float %2180, 5.000000e+00
  %2182 = call float @dx.op.unary.f32(i32 21, float %2181)  ; Exp(value)
  %2183 = fmul fast float %2182, 0x3FEF591A60000000
  %2184 = fadd fast float %2183, 0x3F94DCB540000000
  %2185 = select i1 %2177, float %2184, float 1.000000e+00
  %2186 = fcmp fast oge float %2185, 1.000000e+00
  %2187 = fmul fast float %2170, 2.000000e+00
  %2188 = fadd fast float %2187, %518
  %2189 = select i1 %2186, float %2188, float %518
  %2190 = fsub fast float %2189, %518
  %2191 = fmul fast float %2190, %2165
  %2192 = fadd fast float %2191, %518
  %2193 = call float @dx.op.dot3.f32(i32 55, float %516, float %517, float %2192, float %516, float %517, float %2192)  ; Dot3(ax,ay,az,bx,by,bz)
  %2194 = call float @dx.op.unary.f32(i32 25, float %2193)  ; Rsqrt(value)
  %2195 = fmul fast float %2194, %516
  %2196 = fmul fast float %2194, %517
  %2197 = fmul fast float %2192, %2194
  br label %2198

; <label>:2198                                    ; preds = %2169, %2127
  %2199 = phi float [ %2195, %2169 ], [ %516, %2127 ]
  %2200 = phi float [ %2196, %2169 ], [ %517, %2127 ]
  %2201 = phi float [ %2197, %2169 ], [ %518, %2127 ]
  %2202 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %44, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %2203 = extractvalue %dx.types.CBufRet.i32 %2202, 2
  %2204 = add nsw i32 %2203, -1
  %2205 = call i32 @dx.op.binary.i32(i32 37, i32 %2204, i32 0)  ; IMax(a,b)
  %2206 = shl i32 %2164, 2
  %2207 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %2206, i32 undef)  ; BufferLoad(srv,index,wot)
  %2208 = extractvalue %dx.types.ResRet.i32 %2207, 0
  %2209 = lshr i32 %2208, 16
  %2210 = and i32 %2208, 65535
  %2211 = lshr i32 %2208, 21
  %2212 = lshr i32 %2210, 5
  %2213 = call i32 @dx.op.binary.i32(i32 40, i32 %2212, i32 %2205)  ; UMin(a,b)
  %2214 = icmp ugt i32 %2211, %2213
  br i1 %2214, label %2578, label %2215

; <label>:2215                                    ; preds = %2198
  br label %2216

; <label>:2216                                    ; preds = %2570, %2215
  %2217 = phi float [ %2571, %2570 ], [ 0.000000e+00, %2215 ]
  %2218 = phi float [ %2572, %2570 ], [ 0.000000e+00, %2215 ]
  %2219 = phi float [ %2573, %2570 ], [ 0.000000e+00, %2215 ]
  %2220 = phi float [ %2574, %2570 ], [ 1.000000e+00, %2215 ]
  %2221 = phi i32 [ %2575, %2570 ], [ %2211, %2215 ]
  %2222 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %44, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %2223 = extractvalue %dx.types.CBufRet.i32 %2222, 2
  %2224 = call i32 @dx.op.tertiary.i32(i32 49, i32 %2160, i32 %2223, i32 %2221)  ; UMad(a,b,c)
  %2225 = shl i32 %2224, 2
  %2226 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %2225, i32 undef)  ; BufferLoad(srv,index,wot)
  %2227 = extractvalue %dx.types.ResRet.i32 %2226, 0
  %2228 = shl i32 %2221, 5
  %2229 = sub nsw i32 %2209, %2228
  %2230 = call i32 @dx.op.binary.i32(i32 37, i32 %2229, i32 0)  ; IMax(a,b)
  %2231 = call i32 @dx.op.binary.i32(i32 38, i32 %2230, i32 31)  ; IMin(a,b)
  %2232 = sub nsw i32 1, %2209
  %2233 = add nsw i32 %2232, %2210
  %2234 = call i32 @dx.op.binary.i32(i32 37, i32 %2233, i32 0)  ; IMax(a,b)
  %2235 = call i32 @dx.op.binary.i32(i32 38, i32 %2234, i32 32)  ; IMin(a,b)
  %2236 = and i32 %2235, 31
  %2237 = shl i32 -1, %2236
  %2238 = xor i32 %2237, -1
  %2239 = and i32 %2231, 31
  %2240 = shl i32 %2238, %2239
  %2241 = icmp eq i32 %2235, 32
  %2242 = select i1 %2241, i32 -1, i32 %2240
  %2243 = and i32 %2242, %2227
  %2244 = icmp eq i32 %2243, 0
  br i1 %2244, label %2570, label %2245

; <label>:2245                                    ; preds = %2216
  br label %2246

; <label>:2246                                    ; preds = %2353, %2245
  %2247 = phi float [ %2354, %2353 ], [ %2217, %2245 ]
  %2248 = phi float [ %2355, %2353 ], [ %2218, %2245 ]
  %2249 = phi float [ %2356, %2353 ], [ %2219, %2245 ]
  %2250 = phi float [ %2357, %2353 ], [ %2220, %2245 ]
  %2251 = phi i32 [ %2256, %2353 ], [ %2243, %2245 ]
  %2252 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %2251)  ; FirstbitLo(value)
  %2253 = add i32 %2252, %2228
  %2254 = and i32 %2252, 31
  %2255 = shl i32 1, %2254
  %2256 = xor i32 %2255, %2251
  %2257 = mul i32 %2253, 72
  %2258 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %2257, i32 undef)  ; BufferLoad(srv,index,wot)
  %2259 = extractvalue %dx.types.ResRet.f32 %2258, 0
  %2260 = extractvalue %dx.types.ResRet.f32 %2258, 1
  %2261 = extractvalue %dx.types.ResRet.f32 %2258, 2
  %2262 = add i32 %2257, 12
  %2263 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2262, i32 undef)  ; BufferLoad(srv,index,wot)
  %2264 = extractvalue %dx.types.ResRet.i32 %2263, 0
  %2265 = add i32 %2257, 16
  %2266 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %2265, i32 undef)  ; BufferLoad(srv,index,wot)
  %2267 = extractvalue %dx.types.ResRet.f32 %2266, 0
  %2268 = extractvalue %dx.types.ResRet.f32 %2266, 1
  %2269 = extractvalue %dx.types.ResRet.f32 %2266, 2
  %2270 = add i32 %2257, 28
  %2271 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %2270, i32 undef)  ; BufferLoad(srv,index,wot)
  %2272 = extractvalue %dx.types.ResRet.f32 %2271, 0
  %2273 = add i32 %2257, 32
  %2274 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %2273, i32 undef)  ; BufferLoad(srv,index,wot)
  %2275 = extractvalue %dx.types.ResRet.f32 %2274, 0
  %2276 = extractvalue %dx.types.ResRet.f32 %2274, 1
  %2277 = extractvalue %dx.types.ResRet.f32 %2274, 2
  %2278 = extractvalue %dx.types.ResRet.f32 %2274, 3
  %2279 = add i32 %2257, 48
  %2280 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %2279, i32 undef)  ; BufferLoad(srv,index,wot)
  %2281 = extractvalue %dx.types.ResRet.f32 %2280, 0
  %2282 = extractvalue %dx.types.ResRet.f32 %2280, 1
  %2283 = add i32 %2257, 56
  %2284 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %2283, i32 undef)  ; BufferLoad(srv,index,wot)
  %2285 = extractvalue %dx.types.ResRet.f32 %2284, 0
  %2286 = extractvalue %dx.types.ResRet.f32 %2284, 1
  %2287 = add i32 %2257, 64
  %2288 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %2287, i32 undef)  ; BufferLoad(srv,index,wot)
  %2289 = extractvalue %dx.types.ResRet.f32 %2288, 0
  %2290 = extractvalue %dx.types.ResRet.f32 %2288, 1
  %2291 = mul i32 %2253, 60
  %2292 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %2291, i32 undef)  ; BufferLoad(srv,index,wot)
  %2293 = extractvalue %dx.types.ResRet.f32 %2292, 0
  %2294 = extractvalue %dx.types.ResRet.f32 %2292, 1
  %2295 = extractvalue %dx.types.ResRet.f32 %2292, 2
  %2296 = add i32 %2291, 12
  %2297 = add i32 %2291, 48
  %2298 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %2297, i32 undef)  ; BufferLoad(srv,index,wot)
  %2299 = extractvalue %dx.types.ResRet.f32 %2298, 0
  %2300 = extractvalue %dx.types.ResRet.f32 %2298, 1
  %2301 = extractvalue %dx.types.ResRet.f32 %2298, 2
  %2302 = and i32 %2264, 32767
  %2303 = bitcast float %2259 to i32
  %2304 = icmp eq i32 %2303, -1
  %2305 = bitcast float %2260 to i32
  %2306 = and i32 %2264, 32768
  %2307 = icmp ne i32 %2306, 0
  %2308 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %2309 = extractvalue %dx.types.CBufRet.f32 %2308, 0
  %2310 = extractvalue %dx.types.CBufRet.f32 %2308, 1
  %2311 = extractvalue %dx.types.CBufRet.f32 %2308, 2
  %2312 = fsub fast float %2293, %2309
  %2313 = fsub fast float %2294, %2310
  %2314 = fsub fast float %2295, %2311
  %2315 = fsub fast float %367, %2312
  %2316 = fsub fast float %368, %2313
  %2317 = fsub fast float %369, %2314
  %2318 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %2296, i32 undef)  ; BufferLoad(srv,index,wot)
  %2319 = extractvalue %dx.types.ResRet.f32 %2318, 0
  %2320 = extractvalue %dx.types.ResRet.f32 %2318, 1
  %2321 = extractvalue %dx.types.ResRet.f32 %2318, 2
  %2322 = call float @dx.op.dot3.f32(i32 55, float %2315, float %2316, float %2317, float %2319, float %2320, float %2321)  ; Dot3(ax,ay,az,bx,by,bz)
  %2323 = add i32 %2291, 24
  %2324 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %2323, i32 undef)  ; BufferLoad(srv,index,wot)
  %2325 = extractvalue %dx.types.ResRet.f32 %2324, 0
  %2326 = extractvalue %dx.types.ResRet.f32 %2324, 1
  %2327 = extractvalue %dx.types.ResRet.f32 %2324, 2
  %2328 = call float @dx.op.dot3.f32(i32 55, float %2315, float %2316, float %2317, float %2325, float %2326, float %2327)  ; Dot3(ax,ay,az,bx,by,bz)
  %2329 = add i32 %2291, 36
  %2330 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %2329, i32 undef)  ; BufferLoad(srv,index,wot)
  %2331 = extractvalue %dx.types.ResRet.f32 %2330, 0
  %2332 = extractvalue %dx.types.ResRet.f32 %2330, 1
  %2333 = extractvalue %dx.types.ResRet.f32 %2330, 2
  %2334 = call float @dx.op.dot3.f32(i32 55, float %2315, float %2316, float %2317, float %2331, float %2332, float %2333)  ; Dot3(ax,ay,az,bx,by,bz)
  %2335 = call float @dx.op.unary.f32(i32 6, float %2322)  ; FAbs(value)
  %2336 = call float @dx.op.unary.f32(i32 6, float %2328)  ; FAbs(value)
  %2337 = call float @dx.op.unary.f32(i32 6, float %2334)  ; FAbs(value)
  %2338 = fsub fast float %2299, %2335
  %2339 = fsub fast float %2300, %2336
  %2340 = fsub fast float %2301, %2337
  %2341 = fmul fast float %2338, %2267
  %2342 = fmul fast float %2339, %2268
  %2343 = fmul fast float %2340, %2269
  %2344 = call float @dx.op.binary.f32(i32 36, float %2342, float %2343)  ; FMin(a,b)
  %2345 = call float @dx.op.binary.f32(i32 36, float %2341, float %2344)  ; FMin(a,b)
  %2346 = call float @dx.op.unary.f32(i32 7, float %2345)  ; Saturate(value)
  %2347 = call float @dx.op.binary.f32(i32 36, float %2250, float %2346)  ; FMin(a,b)
  %2348 = uitofp i1 %2307 to float
  %2349 = fadd fast float %2165, 1.000000e+00
  %2350 = fsub fast float %2349, %2348
  %2351 = fmul fast float %2347, %2350
  %2352 = fcmp fast ogt float %2351, 0.000000e+00
  br i1 %2352, label %2359, label %2353

; <label>:2353                                    ; preds = %2501, %2246
  %2354 = phi float [ %2565, %2501 ], [ %2247, %2246 ]
  %2355 = phi float [ %2566, %2501 ], [ %2248, %2246 ]
  %2356 = phi float [ %2567, %2501 ], [ %2249, %2246 ]
  %2357 = phi float [ %2568, %2501 ], [ %2250, %2246 ]
  %2358 = icmp eq i32 %2251, %2255
  br i1 %2358, label %2569, label %2246

; <label>:2359                                    ; preds = %2246
  br i1 %2304, label %2417, label %2360

; <label>:2360                                    ; preds = %2359
  %2361 = fsub fast float -0.000000e+00, %2319
  %2362 = fsub fast float -0.000000e+00, %2320
  %2363 = fsub fast float -0.000000e+00, %2321
  %2364 = call float @dx.op.dot3.f32(i32 55, float %2199, float %2200, float %2201, float %2361, float %2362, float %2363)  ; Dot3(ax,ay,az,bx,by,bz)
  %2365 = fsub fast float -0.000000e+00, %2364
  %2366 = call float @dx.op.dot3.f32(i32 55, float %2315, float %2316, float %2317, float %2361, float %2362, float %2363)  ; Dot3(ax,ay,az,bx,by,bz)
  %2367 = fadd fast float %2366, %2282
  %2368 = fadd fast float %2281, %2366
  %2369 = fsub fast float -0.000000e+00, %2368
  %2370 = fcmp ogt float %2364, -0.000000e+00
  %2371 = select i1 %2370, float %2369, float %2367
  %2372 = call float @dx.op.unary.f32(i32 6, float %2365)  ; FAbs(value)
  %2373 = fdiv fast float 1.000000e+00, %2372
  %2374 = fmul fast float %2371, %2373
  %2375 = call float @dx.op.binary.f32(i32 35, float %2374, float 0.000000e+00)  ; FMax(a,b)
  %2376 = fsub fast float -0.000000e+00, %2325
  %2377 = fsub fast float -0.000000e+00, %2326
  %2378 = fsub fast float -0.000000e+00, %2327
  %2379 = call float @dx.op.dot3.f32(i32 55, float %2199, float %2200, float %2201, float %2376, float %2377, float %2378)  ; Dot3(ax,ay,az,bx,by,bz)
  %2380 = fsub fast float -0.000000e+00, %2379
  %2381 = call float @dx.op.dot3.f32(i32 55, float %2315, float %2316, float %2317, float %2376, float %2377, float %2378)  ; Dot3(ax,ay,az,bx,by,bz)
  %2382 = fadd fast float %2381, %2286
  %2383 = fadd fast float %2285, %2381
  %2384 = fsub fast float -0.000000e+00, %2383
  %2385 = fcmp ogt float %2379, -0.000000e+00
  %2386 = select i1 %2385, float %2384, float %2382
  %2387 = call float @dx.op.unary.f32(i32 6, float %2380)  ; FAbs(value)
  %2388 = fdiv fast float 1.000000e+00, %2387
  %2389 = fmul fast float %2386, %2388
  %2390 = call float @dx.op.binary.f32(i32 35, float %2389, float 0.000000e+00)  ; FMax(a,b)
  %2391 = fsub fast float -0.000000e+00, %2331
  %2392 = fsub fast float -0.000000e+00, %2332
  %2393 = fsub fast float -0.000000e+00, %2333
  %2394 = call float @dx.op.dot3.f32(i32 55, float %2199, float %2200, float %2201, float %2391, float %2392, float %2393)  ; Dot3(ax,ay,az,bx,by,bz)
  %2395 = fsub fast float -0.000000e+00, %2394
  %2396 = call float @dx.op.dot3.f32(i32 55, float %2315, float %2316, float %2317, float %2391, float %2392, float %2393)  ; Dot3(ax,ay,az,bx,by,bz)
  %2397 = fadd fast float %2396, %2290
  %2398 = fadd fast float %2289, %2396
  %2399 = fsub fast float -0.000000e+00, %2398
  %2400 = fcmp ogt float %2394, -0.000000e+00
  %2401 = select i1 %2400, float %2399, float %2397
  %2402 = call float @dx.op.unary.f32(i32 6, float %2395)  ; FAbs(value)
  %2403 = fdiv fast float 1.000000e+00, %2402
  %2404 = fmul fast float %2401, %2403
  %2405 = call float @dx.op.binary.f32(i32 35, float %2404, float 0.000000e+00)  ; FMax(a,b)
  %2406 = call float @dx.op.binary.f32(i32 36, float %2390, float %2405)  ; FMin(a,b)
  %2407 = call float @dx.op.binary.f32(i32 36, float %2375, float %2406)  ; FMin(a,b)
  %2408 = fmul fast float %2407, %2199
  %2409 = fmul fast float %2407, %2200
  %2410 = fmul fast float %2407, %2201
  %2411 = fadd fast float %2408, %367
  %2412 = fadd fast float %2409, %368
  %2413 = fadd fast float %2410, %369
  %2414 = fsub fast float %2411, %2259
  %2415 = fsub fast float %2412, %2260
  %2416 = fsub fast float %2413, %2261
  br label %2424

; <label>:2417                                    ; preds = %2359
  %2418 = fmul fast float %2199, 8.096000e+03
  %2419 = fmul fast float %2200, 8.096000e+03
  %2420 = fmul fast float %2201, 8.096000e+03
  %2421 = fadd fast float %2418, %367
  %2422 = fadd fast float %2419, %368
  %2423 = fadd fast float %2420, %369
  br label %2424

; <label>:2424                                    ; preds = %2417, %2360
  %2425 = phi float [ %2199, %2417 ], [ %2414, %2360 ]
  %2426 = phi float [ %2200, %2417 ], [ %2415, %2360 ]
  %2427 = phi float [ %2201, %2417 ], [ %2416, %2360 ]
  %2428 = phi float [ %2421, %2417 ], [ %2411, %2360 ]
  %2429 = phi float [ %2422, %2417 ], [ %2412, %2360 ]
  %2430 = phi float [ %2423, %2417 ], [ %2413, %2360 ]
  %2431 = fcmp fast olt float %2278, 1.000000e+00
  br i1 %2431, label %2432, label %2463, !dx.controlflow.hints !118

; <label>:2432                                    ; preds = %2424
  %2433 = fmul fast float %2427, %2276
  %2434 = fmul fast float %2426, %2277
  %2435 = fsub fast float %2433, %2434
  %2436 = fmul fast float %2425, %2277
  %2437 = fmul fast float %2427, %2275
  %2438 = fsub fast float %2436, %2437
  %2439 = fmul fast float %2426, %2275
  %2440 = fmul fast float %2425, %2276
  %2441 = fsub fast float %2439, %2440
  %2442 = fmul fast float %2435, 2.000000e+00
  %2443 = fmul fast float %2438, 2.000000e+00
  %2444 = fmul fast float %2441, 2.000000e+00
  %2445 = fmul fast float %2442, %2278
  %2446 = fmul fast float %2443, %2278
  %2447 = fmul fast float %2444, %2278
  %2448 = fmul fast float %2444, %2276
  %2449 = fmul fast float %2443, %2277
  %2450 = fmul fast float %2442, %2277
  %2451 = fmul fast float %2444, %2275
  %2452 = fmul fast float %2443, %2275
  %2453 = fmul fast float %2442, %2276
  %2454 = fadd fast float %2448, %2425
  %2455 = fadd fast float %2454, %2445
  %2456 = fsub fast float %2455, %2449
  %2457 = fsub fast float %2426, %2451
  %2458 = fadd fast float %2457, %2446
  %2459 = fadd fast float %2458, %2450
  %2460 = fadd fast float %2447, %2427
  %2461 = fsub fast float %2460, %2453
  %2462 = fadd fast float %2461, %2452
  br label %2463

; <label>:2463                                    ; preds = %2432, %2424
  %2464 = phi float [ %2456, %2432 ], [ %2425, %2424 ]
  %2465 = phi float [ %2459, %2432 ], [ %2426, %2424 ]
  %2466 = phi float [ %2462, %2432 ], [ %2427, %2424 ]
  br i1 %2304, label %2498, label %2467

; <label>:2467                                    ; preds = %2463
  %2468 = fmul fast float %301, 0x400187C840000000
  %2469 = fadd fast float %2468, 0xC00EFC2120000000
  %2470 = fmul fast float %2469, %301
  %2471 = fadd fast float %2470, 0x3FE5D16340000000
  %2472 = fmul fast float %2471, %301
  %2473 = fadd fast float %2472, 1.000000e+00
  %2474 = call float @dx.op.unary.f32(i32 7, float %2473)  ; Saturate(value)
  %2475 = fsub fast float %2428, %367
  %2476 = fsub fast float %2429, %368
  %2477 = fsub fast float %2430, %369
  %2478 = fsub fast float %2428, %2259
  %2479 = fsub fast float %2429, %2260
  %2480 = fsub fast float %2430, %2261
  %2481 = call float @dx.op.dot3.f32(i32 55, float %2475, float %2476, float %2477, float %2475, float %2476, float %2477)  ; Dot3(ax,ay,az,bx,by,bz)
  %2482 = call float @dx.op.dot3.f32(i32 55, float %2478, float %2479, float %2480, float %2478, float %2479, float %2480)  ; Dot3(ax,ay,az,bx,by,bz)
  %2483 = fadd fast float %2482, 0x3EE4F8B580000000
  %2484 = fdiv fast float %2481, %2483
  %2485 = bitcast float %2484 to i32
  %2486 = ashr i32 %2485, 1
  %2487 = add nsw i32 %2486, 532487669
  %2488 = bitcast i32 %2487 to float
  %2489 = fmul fast float %2488, %2474
  %2490 = call float @dx.op.unary.f32(i32 7, float %2489)  ; Saturate(value)
  %2491 = fmul fast float %2490, 0x4009981AE0000000
  %2492 = fsub fast float 0x40111BBD80000000, %2491
  %2493 = fmul fast float %2492, %2490
  %2494 = fadd fast float %2493, 0xC0009F6020000000
  %2495 = fmul fast float %2494, %2490
  %2496 = fadd fast float %2495, 1.000000e+00
  %2497 = call float @dx.op.unary.f32(i32 7, float %2496)  ; Saturate(value)
  br label %2501

; <label>:2498                                    ; preds = %2463
  %2499 = icmp ne i32 %2305, -1
  %2500 = zext i1 %2499 to i32
  br label %2501

; <label>:2501                                    ; preds = %2498, %2467
  %2502 = phi float [ %301, %2498 ], [ %2497, %2467 ]
  %2503 = phi i32 [ %2500, %2498 ], [ 0, %2467 ]
  %2504 = fmul float %2502, 5.000000e+00
  %2505 = fsub float 5.000000e+00, %2504
  %2506 = icmp ne i32 %2503, 0
  %2507 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %2508 = extractvalue %dx.types.CBufRet.f32 %2507, 3
  %2509 = fadd fast float %2508, %2505
  %2510 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2509)  ; FMax(a,b)
  %2511 = call float @dx.op.unary.f32(i32 6, float %2464)  ; FAbs(value)
  %2512 = call float @dx.op.unary.f32(i32 6, float %2465)  ; FAbs(value)
  %2513 = fadd fast float %2512, %2511
  %2514 = call float @dx.op.unary.f32(i32 6, float %2466)  ; FAbs(value)
  %2515 = fadd fast float %2513, %2514
  %2516 = fcmp fast oeq float %2515, 0.000000e+00
  %2517 = fdiv fast float 1.000000e+00, %2515
  %2518 = select i1 %2516, float 1.000000e+00, float %2517
  %2519 = fmul fast float %2518, %2464
  %2520 = fmul fast float %2518, %2465
  %2521 = call float @dx.op.unary.f32(i32 6, float %2520)  ; FAbs(value)
  %2522 = call float @dx.op.unary.f32(i32 6, float %2519)  ; FAbs(value)
  %2523 = fsub fast float 1.000000e+00, %2521
  %2524 = fsub fast float 1.000000e+00, %2522
  %2525 = fcmp fast oge float %2519, 0.000000e+00
  %2526 = fcmp fast oge float %2520, 0.000000e+00
  %2527 = select i1 %2525, float 1.000000e+00, float -1.000000e+00
  %2528 = select i1 %2526, float 1.000000e+00, float -1.000000e+00
  %2529 = fcmp fast ole float %2466, 0.000000e+00
  %2530 = fmul fast float %2527, %2523
  %2531 = fmul fast float %2528, %2524
  %2532 = select i1 %2529, float %2530, float %2519
  %2533 = select i1 %2529, float %2531, float %2520
  %2534 = fmul fast float %2532, 5.000000e-01
  %2535 = fmul fast float %2533, 5.000000e-01
  %2536 = fadd fast float %2534, 5.000000e-01
  %2537 = fadd fast float %2535, 5.000000e-01
  %2538 = uitofp i32 %2302 to float
  %2539 = call float @dx.op.binary.f32(i32 36, float %2510, float 3.000000e+00)  ; FMin(a,b)
  %2540 = fadd fast float %2539, 2.000000e+00
  %2541 = call float @dx.op.unary.f32(i32 21, float %2540)  ; Exp(value)
  %2542 = extractvalue %dx.types.CBufRet.f32 %2507, 1
  %2543 = fmul fast float %2542, %2541
  %2544 = fmul fast float %2543, 2.000000e+00
  %2545 = fsub fast float 1.000000e+00, %2544
  %2546 = fmul fast float %2536, %2545
  %2547 = fmul fast float %2537, %2545
  %2548 = fadd fast float %2546, %2543
  %2549 = fadd fast float %2547, %2543
  %2550 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %38, float %2548, float %2549, float %2538, float undef, i32 0, i32 0, i32 undef, float %2510)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2551 = extractvalue %dx.types.ResRet.f32 %2550, 0
  %2552 = extractvalue %dx.types.ResRet.f32 %2550, 1
  %2553 = extractvalue %dx.types.ResRet.f32 %2550, 2
  %2554 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2555 = extractvalue %dx.types.CBufRet.f32 %2554, 3
  %2556 = fmul fast float %2555, %2272
  %2557 = call float @dx.op.binary.f32(i32 36, float %2036, float %2556)  ; FMin(a,b)
  %2558 = select i1 %2506, float %2557, float %2556
  %2559 = fmul fast float %2551, %2351
  %2560 = fmul fast float %2559, %2558
  %2561 = fmul fast float %2552, %2351
  %2562 = fmul fast float %2561, %2558
  %2563 = fmul fast float %2553, %2351
  %2564 = fmul fast float %2563, %2558
  %2565 = fadd fast float %2560, %2247
  %2566 = fadd fast float %2562, %2248
  %2567 = fadd fast float %2564, %2249
  %2568 = fsub fast float %2250, %2351
  br label %2353

; <label>:2569                                    ; preds = %2353
  br label %2570

; <label>:2570                                    ; preds = %2569, %2216
  %2571 = phi float [ %2217, %2216 ], [ %2354, %2569 ]
  %2572 = phi float [ %2218, %2216 ], [ %2355, %2569 ]
  %2573 = phi float [ %2219, %2216 ], [ %2356, %2569 ]
  %2574 = phi float [ %2220, %2216 ], [ %2357, %2569 ]
  %2575 = add i32 %2221, 1
  %2576 = icmp ugt i32 %2575, %2213
  br i1 %2576, label %2577, label %2216, !llvm.loop !119

; <label>:2577                                    ; preds = %2570
  br label %2578

; <label>:2578                                    ; preds = %2577, %2198
  %2579 = phi float [ 0.000000e+00, %2198 ], [ %2571, %2577 ]
  %2580 = phi float [ 0.000000e+00, %2198 ], [ %2572, %2577 ]
  %2581 = phi float [ 0.000000e+00, %2198 ], [ %2573, %2577 ]
  %2582 = call float @dx.op.dot3.f32(i32 55, float %2579, float %2580, float %2581, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2583 = select i1 %129, float 0.000000e+00, float %2579
  %2584 = select i1 %129, float %2582, float %2580
  %2585 = select i1 %129, float 0.000000e+00, float %2581
  %2586 = fcmp fast olt float %2125, 0.000000e+00
  %2587 = call float @dx.op.unary.f32(i32 6, float %2125)  ; FAbs(value)
  %2588 = fmul fast float %2587, %2096
  %2589 = fmul fast float %2587, %2097
  %2590 = fmul fast float %2587, %2098
  %2591 = select i1 %2586, float %2096, float %2588
  %2592 = select i1 %2586, float %2097, float %2589
  %2593 = select i1 %2586, float %2098, float %2590
  %2594 = fsub fast float 1.000000e+00, %2587
  %2595 = call float @dx.op.unary.f32(i32 7, float %2594)  ; Saturate(value)
  %2596 = fmul fast float %2595, %2583
  %2597 = fmul fast float %2595, %2584
  %2598 = fmul fast float %2595, %2585
  %2599 = fadd fast float %2591, %2596
  %2600 = fadd fast float %2592, %2597
  %2601 = fadd fast float %2593, %2598
  br label %2602

; <label>:2602                                    ; preds = %2578, %2026
  %2603 = phi float [ %2096, %2026 ], [ %2599, %2578 ]
  %2604 = phi float [ %2097, %2026 ], [ %2600, %2578 ]
  %2605 = phi float [ %2098, %2026 ], [ %2601, %2578 ]
  %2606 = fmul fast float %2603, %2109
  %2607 = fmul fast float %2604, %2110
  %2608 = fmul fast float %2605, %2111
  %2609 = fmul fast float %2092, %308
  %2610 = fmul fast float %2093, %309
  %2611 = fmul fast float %2094, %310
  %2612 = fadd fast float %2609, %2088
  %2613 = fmul fast float %2612, %2114
  %2614 = fadd fast float %2610, %2089
  %2615 = fmul fast float %2614, %2114
  %2616 = fadd fast float %2611, %2090
  %2617 = fmul fast float %2616, %2114
  %2618 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %2619 = extractvalue %dx.types.CBufRet.f32 %2618, 3
  %2620 = fcmp fast oeq float %2619, 0.000000e+00
  br i1 %2620, label %4038, label %2621

; <label>:2621                                    ; preds = %2602
  %2622 = extractvalue %dx.types.CBufRet.f32 %2618, 0
  %2623 = extractvalue %dx.types.CBufRet.f32 %2618, 1
  %2624 = extractvalue %dx.types.CBufRet.f32 %2618, 2
  %2625 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %2626 = extractvalue %dx.types.CBufRet.f32 %2625, 0
  %2627 = extractvalue %dx.types.CBufRet.f32 %2625, 1
  %2628 = extractvalue %dx.types.CBufRet.f32 %2625, 2
  %2629 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %2630 = extractvalue %dx.types.CBufRet.f32 %2629, 0
  %2631 = extractvalue %dx.types.CBufRet.f32 %2629, 1
  %2632 = call float @dx.op.dot3.f32(i32 55, float %2626, float %2627, float %2628, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2633 = select i1 %129, float %2630, float %2626
  %2634 = select i1 %129, float %2632, float %2627
  %2635 = select i1 %129, float %2631, float %2628
  %2636 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %2637 = extractvalue %dx.types.CBufRet.f32 %2636, 2
  %2638 = fmul fast float %2637, %289
  %2639 = fmul fast float %2637, %290
  %2640 = fmul fast float %2637, %291
  %2641 = fadd fast float %2638, %367
  %2642 = fadd fast float %2639, %368
  %2643 = fadd fast float %2640, %369
  %2644 = fcmp fast olt float %2619, 0.000000e+00
  br i1 %2644, label %3740, label %2645

; <label>:2645                                    ; preds = %2621
  %2646 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %2647 = extractvalue %dx.types.CBufRet.f32 %2646, 0
  %2648 = extractvalue %dx.types.CBufRet.f32 %2646, 1
  %2649 = extractvalue %dx.types.CBufRet.f32 %2646, 2
  %2650 = extractvalue %dx.types.CBufRet.f32 %2646, 3
  %2651 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %2652 = extractvalue %dx.types.CBufRet.f32 %2651, 0
  %2653 = extractvalue %dx.types.CBufRet.f32 %2651, 1
  %2654 = extractvalue %dx.types.CBufRet.f32 %2651, 2
  %2655 = extractvalue %dx.types.CBufRet.f32 %2651, 3
  %2656 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %2657 = extractvalue %dx.types.CBufRet.f32 %2656, 0
  %2658 = extractvalue %dx.types.CBufRet.f32 %2656, 1
  %2659 = extractvalue %dx.types.CBufRet.f32 %2656, 2
  %2660 = extractvalue %dx.types.CBufRet.f32 %2656, 3
  %2661 = fmul fast float %2647, %2641
  %2662 = call float @dx.op.tertiary.f32(i32 46, float %2642, float %2648, float %2661)  ; FMad(a,b,c)
  %2663 = call float @dx.op.tertiary.f32(i32 46, float %2643, float %2649, float %2662)  ; FMad(a,b,c)
  %2664 = fadd fast float %2663, %2650
  %2665 = fmul fast float %2652, %2641
  %2666 = call float @dx.op.tertiary.f32(i32 46, float %2642, float %2653, float %2665)  ; FMad(a,b,c)
  %2667 = call float @dx.op.tertiary.f32(i32 46, float %2643, float %2654, float %2666)  ; FMad(a,b,c)
  %2668 = fadd fast float %2667, %2655
  %2669 = fmul fast float %2657, %2641
  %2670 = call float @dx.op.tertiary.f32(i32 46, float %2642, float %2658, float %2669)  ; FMad(a,b,c)
  %2671 = call float @dx.op.tertiary.f32(i32 46, float %2643, float %2659, float %2670)  ; FMad(a,b,c)
  %2672 = fadd fast float %2671, %2660
  %2673 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %2674 = extractvalue %dx.types.CBufRet.f32 %2673, 0
  %2675 = extractvalue %dx.types.CBufRet.f32 %2673, 1
  %2676 = extractvalue %dx.types.CBufRet.f32 %2673, 3
  %2677 = fmul fast float %2676, %2664
  %2678 = fmul fast float %2676, %2668
  %2679 = fadd fast float %2677, %2674
  %2680 = fadd fast float %2678, %2675
  %2681 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %2682 = extractvalue %dx.types.CBufRet.f32 %2681, 0
  %2683 = extractvalue %dx.types.CBufRet.f32 %2681, 1
  %2684 = extractvalue %dx.types.CBufRet.f32 %2681, 3
  %2685 = fmul fast float %2684, %2664
  %2686 = fmul fast float %2684, %2668
  %2687 = fadd fast float %2685, %2682
  %2688 = fadd fast float %2686, %2683
  %2689 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %2690 = extractvalue %dx.types.CBufRet.f32 %2689, 1
  %2691 = fsub fast float %2690, %2672
  %2692 = extractvalue %dx.types.CBufRet.f32 %2689, 2
  %2693 = fmul fast float %2691, %2692
  %2694 = fsub fast float 1.000000e+00, %2693
  %2695 = call float @dx.op.unary.f32(i32 7, float %2694)  ; Saturate(value)
  %2696 = extractvalue %dx.types.CBufRet.f32 %2681, 2
  %2697 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %2698 = extractvalue %dx.types.CBufRet.f32 %2697, 2
  %2699 = fadd fast float %2698, %2696
  %2700 = fcmp fast ogt float %2699, 0.000000e+00
  br i1 %2700, label %2701, label %2725

; <label>:2701                                    ; preds = %2645
  %2702 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %2703 = extractvalue %dx.types.CBufRet.f32 %2702, 0
  %2704 = extractvalue %dx.types.CBufRet.f32 %2702, 1
  %2705 = fsub fast float %2687, %2703
  %2706 = fsub fast float %2688, %2704
  %2707 = fcmp fast olt float %2705, 0.000000e+00
  %2708 = fcmp fast olt float %2706, 0.000000e+00
  %2709 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %2710 = extractvalue %dx.types.CBufRet.f32 %2709, 0
  %2711 = extractvalue %dx.types.CBufRet.f32 %2709, 1
  %2712 = extractvalue %dx.types.CBufRet.f32 %2709, 2
  %2713 = extractvalue %dx.types.CBufRet.f32 %2709, 3
  %2714 = select i1 %2707, float %2710, float %2712
  %2715 = select i1 %2708, float %2711, float %2713
  %2716 = fmul fast float %2714, %2705
  %2717 = fmul fast float %2715, %2706
  %2718 = call float @dx.op.unary.f32(i32 6, float %2716)  ; FAbs(value)
  %2719 = call float @dx.op.unary.f32(i32 6, float %2717)  ; FAbs(value)
  %2720 = extractvalue %dx.types.CBufRet.f32 %2636, 0
  %2721 = call float @dx.op.binary.f32(i32 35, float %2718, float %2719)  ; FMax(a,b)
  %2722 = fsub fast float %2720, %2721
  %2723 = call float @dx.op.unary.f32(i32 7, float %2722)  ; Saturate(value)
  %2724 = fmul fast float %2723, %2695
  br label %2725

; <label>:2725                                    ; preds = %2701, %2645
  %2726 = phi float [ %2724, %2701 ], [ 0.000000e+00, %2645 ]
  %2727 = extractvalue %dx.types.CBufRet.f32 %2673, 2
  %2728 = extractvalue %dx.types.CBufRet.f32 %2697, 1
  %2729 = fadd fast float %2728, %2727
  %2730 = fcmp fast ogt float %2729, 0.000000e+00
  %2731 = extractvalue %dx.types.CBufRet.f32 %2636, 0
  br i1 %2730, label %2732, label %2755

; <label>:2732                                    ; preds = %2725
  %2733 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %2734 = extractvalue %dx.types.CBufRet.f32 %2733, 0
  %2735 = extractvalue %dx.types.CBufRet.f32 %2733, 1
  %2736 = fsub fast float %2679, %2734
  %2737 = fsub fast float %2680, %2735
  %2738 = fcmp fast olt float %2736, 0.000000e+00
  %2739 = fcmp fast olt float %2737, 0.000000e+00
  %2740 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %2741 = extractvalue %dx.types.CBufRet.f32 %2740, 0
  %2742 = extractvalue %dx.types.CBufRet.f32 %2740, 1
  %2743 = extractvalue %dx.types.CBufRet.f32 %2740, 2
  %2744 = extractvalue %dx.types.CBufRet.f32 %2740, 3
  %2745 = select i1 %2738, float %2741, float %2743
  %2746 = select i1 %2739, float %2742, float %2744
  %2747 = fmul fast float %2745, %2736
  %2748 = fmul fast float %2746, %2737
  %2749 = call float @dx.op.unary.f32(i32 6, float %2747)  ; FAbs(value)
  %2750 = call float @dx.op.unary.f32(i32 6, float %2748)  ; FAbs(value)
  %2751 = call float @dx.op.binary.f32(i32 35, float %2749, float %2750)  ; FMax(a,b)
  %2752 = fsub fast float %2731, %2751
  %2753 = call float @dx.op.unary.f32(i32 7, float %2752)  ; Saturate(value)
  %2754 = fmul fast float %2753, %2695
  br label %2755

; <label>:2755                                    ; preds = %2732, %2725
  %2756 = phi float [ %2754, %2732 ], [ 0.000000e+00, %2725 ]
  %2757 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %2758 = extractvalue %dx.types.CBufRet.f32 %2757, 1
  %2759 = call float @dx.op.unary.f32(i32 7, float %2758)  ; Saturate(value)
  %2760 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %2761 = extractvalue %dx.types.CBufRet.f32 %2760, 0
  %2762 = extractvalue %dx.types.CBufRet.f32 %2760, 1
  %2763 = fsub fast float %2664, %2761
  %2764 = fsub fast float %2668, %2762
  %2765 = fcmp fast olt float %2763, 0.000000e+00
  %2766 = fcmp fast olt float %2764, 0.000000e+00
  %2767 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %2768 = extractvalue %dx.types.CBufRet.f32 %2767, 0
  %2769 = extractvalue %dx.types.CBufRet.f32 %2767, 1
  %2770 = extractvalue %dx.types.CBufRet.f32 %2767, 2
  %2771 = extractvalue %dx.types.CBufRet.f32 %2767, 3
  %2772 = select i1 %2765, float %2768, float %2770
  %2773 = select i1 %2766, float %2769, float %2771
  %2774 = fmul fast float %2772, %2763
  %2775 = fmul fast float %2773, %2764
  %2776 = call float @dx.op.unary.f32(i32 6, float %2774)  ; FAbs(value)
  %2777 = call float @dx.op.unary.f32(i32 6, float %2775)  ; FAbs(value)
  %2778 = call float @dx.op.binary.f32(i32 35, float %2776, float %2777)  ; FMax(a,b)
  %2779 = fsub fast float %2731, %2778
  %2780 = call float @dx.op.unary.f32(i32 7, float %2779)  ; Saturate(value)
  %2781 = call float @dx.op.binary.f32(i32 36, float %2780, float %2759)  ; FMin(a,b)
  %2782 = fmul fast float %2781, %2695
  %2783 = fsub fast float %2756, %2782
  %2784 = fsub fast float %2726, %2756
  %2785 = fsub fast float %2784, %2782
  %2786 = call float @dx.op.binary.f32(i32 35, float %2756, float %2726)  ; FMax(a,b)
  %2787 = call float @dx.op.binary.f32(i32 35, float %2782, float %2786)  ; FMax(a,b)
  %2788 = fcmp fast olt float %2787, 1.000000e+00
  br i1 %2788, label %2789, label %3187, !dx.controlflow.hints !121

; <label>:2789                                    ; preds = %2755
  %2790 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %2791 = extractvalue %dx.types.CBufRet.f32 %2790, 0
  %2792 = fcmp fast une float %2791, 0.000000e+00
  br i1 %2792, label %2793, label %3187, !dx.controlflow.hints !122

; <label>:2793                                    ; preds = %2789
  %2794 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %2795 = extractvalue %dx.types.CBufRet.f32 %2794, 0
  %2796 = extractvalue %dx.types.CBufRet.f32 %2794, 1
  %2797 = extractvalue %dx.types.CBufRet.f32 %2794, 2
  %2798 = extractvalue %dx.types.CBufRet.f32 %2794, 3
  %2799 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %2800 = extractvalue %dx.types.CBufRet.f32 %2799, 0
  %2801 = extractvalue %dx.types.CBufRet.f32 %2799, 1
  %2802 = extractvalue %dx.types.CBufRet.f32 %2799, 2
  %2803 = extractvalue %dx.types.CBufRet.f32 %2799, 3
  %2804 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %2805 = extractvalue %dx.types.CBufRet.f32 %2804, 0
  %2806 = extractvalue %dx.types.CBufRet.f32 %2804, 1
  %2807 = extractvalue %dx.types.CBufRet.f32 %2804, 2
  %2808 = extractvalue %dx.types.CBufRet.f32 %2804, 3
  %2809 = fmul fast float %2795, %2641
  %2810 = call float @dx.op.tertiary.f32(i32 46, float %2642, float %2796, float %2809)  ; FMad(a,b,c)
  %2811 = call float @dx.op.tertiary.f32(i32 46, float %2643, float %2797, float %2810)  ; FMad(a,b,c)
  %2812 = fadd fast float %2811, %2798
  %2813 = fmul fast float %2800, %2641
  %2814 = call float @dx.op.tertiary.f32(i32 46, float %2642, float %2801, float %2813)  ; FMad(a,b,c)
  %2815 = call float @dx.op.tertiary.f32(i32 46, float %2643, float %2802, float %2814)  ; FMad(a,b,c)
  %2816 = fadd fast float %2815, %2803
  %2817 = fmul fast float %2805, %2641
  %2818 = call float @dx.op.tertiary.f32(i32 46, float %2642, float %2806, float %2817)  ; FMad(a,b,c)
  %2819 = call float @dx.op.tertiary.f32(i32 46, float %2643, float %2807, float %2818)  ; FMad(a,b,c)
  %2820 = fadd fast float %2819, %2808
  %2821 = fcmp fast oge float %2812, 1.000000e+00
  %2822 = fcmp fast oge float %2816, 1.000000e+00
  %2823 = or i1 %2821, %2822
  %2824 = fcmp fast olt float %2812, 0.000000e+00
  %2825 = fcmp fast olt float %2816, 0.000000e+00
  %2826 = or i1 %2824, %2825
  %2827 = or i1 %2823, %2826
  br i1 %2827, label %3187, label %2828, !dx.controlflow.hints !123

; <label>:2828                                    ; preds = %2793
  %2829 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %2830 = extractvalue %dx.types.CBufRet.f32 %2829, 0
  %2831 = extractvalue %dx.types.CBufRet.f32 %2829, 1
  %2832 = extractvalue %dx.types.CBufRet.f32 %2829, 2
  %2833 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %44, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %2834 = extractvalue %dx.types.CBufRet.i32 %2833, 2
  %2835 = uitofp i32 %2834 to float
  %2836 = extractvalue %dx.types.CBufRet.i32 %2833, 3
  %2837 = uitofp i32 %2836 to float
  %2838 = extractvalue %dx.types.CBufRet.f32 %2829, 3
  %2839 = fmul fast float %2838, 2.000000e+00
  %2840 = fsub fast float %2812, %2830
  %2841 = fsub fast float %2816, %2831
  %2842 = fmul fast float %2839, %2840
  %2843 = fmul fast float %2839, %2841
  %2844 = fdiv fast float 1.000000e+00, %2624
  %2845 = fmul fast float %2843, %2844
  %2846 = call float @dx.op.unary.f32(i32 6, float %2845)  ; FAbs(value)
  %2847 = fmul fast float %2832, %2643
  %2848 = fmul fast float %2847, %2839
  %2849 = call float @dx.op.unary.f32(i32 6, float %2848)  ; FAbs(value)
  %2850 = call float @dx.op.unary.f32(i32 6, float %2842)  ; FAbs(value)
  %2851 = call float @dx.op.binary.f32(i32 35, float %2849, float %2846)  ; FMax(a,b)
  %2852 = call float @dx.op.binary.f32(i32 35, float %2850, float %2851)  ; FMax(a,b)
  %2853 = fmul fast float %2852, 2.000000e+00
  %2854 = call float @dx.op.unary.f32(i32 23, float %2853)  ; Log(value)
  %2855 = call float @dx.op.binary.f32(i32 35, float %2854, float %2835)  ; FMax(a,b)
  %2856 = call float @dx.op.unary.f32(i32 22, float %2855)  ; Frc(value)
  %2857 = fadd fast float %2856, 0xBFEA666660000000
  %2858 = fmul fast float %2857, 8.000000e+00
  %2859 = call float @dx.op.unary.f32(i32 7, float %2858)  ; Saturate(value)
  %2860 = call float @dx.op.unary.f32(i32 27, float %2855)  ; Round_ni(value)
  %2861 = fadd fast float %2860, %2859
  %2862 = call float @dx.op.binary.f32(i32 36, float %2861, float %2837)  ; FMin(a,b)
  %2863 = call float @dx.op.unary.f32(i32 27, float %2862)  ; Round_ni(value)
  %2864 = fsub fast float -0.000000e+00, %2863
  %2865 = call float @dx.op.unary.f32(i32 21, float %2864)  ; Exp(value)
  %2866 = fmul fast float %2865, %2839
  %2867 = fmul fast float %2866, %2812
  %2868 = fmul fast float %2866, %2816
  %2869 = fmul fast float %2867, 2.500000e-01
  %2870 = fmul fast float %2868, 2.500000e-01
  %2871 = fadd fast float %2869, 5.000000e-01
  %2872 = fadd fast float %2870, 5.000000e-01
  %2873 = fsub fast float %2837, %2835
  %2874 = fptoui float %2873 to i32
  %2875 = add i32 %2874, 320
  %2876 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 %2875)  ; CBufferLoadLegacy(handle,regIndex)
  %2877 = extractvalue %dx.types.CBufRet.f32 %2876, 0
  %2878 = extractvalue %dx.types.CBufRet.f32 %2876, 1
  %2879 = fcmp fast une float %2862, %2837
  %2880 = fsub fast float %2812, %2877
  %2881 = fsub fast float %2816, %2878
  %2882 = call float @dx.op.unary.f32(i32 6, float %2880)  ; FAbs(value)
  %2883 = call float @dx.op.unary.f32(i32 6, float %2881)  ; FAbs(value)
  %2884 = fmul fast float %2882, %2866
  %2885 = fmul fast float %2883, %2866
  %2886 = fcmp fast olt float %2884, 1.000000e+00
  %2887 = fcmp fast olt float %2885, 1.000000e+00
  %2888 = and i1 %2886, %2887
  %2889 = or i1 %2879, %2888
  br i1 %2889, label %2890, label %3187, !dx.controlflow.hints !124

; <label>:2890                                    ; preds = %2828
  %2891 = fmul fast float %2868, 5.000000e-01
  %2892 = fmul fast float %2867, 5.000000e-01
  %2893 = fadd fast float %2891, 5.000000e-01
  %2894 = fadd fast float %2892, 5.000000e-01
  %2895 = sitofp i32 %2834 to float
  %2896 = fsub fast float %2862, %2895
  %2897 = call float @dx.op.unary.f32(i32 27, float %2896)  ; Round_ni(value)
  %2898 = call float @dx.op.unary.f32(i32 22, float %2862)  ; Frc(value)
  %2899 = call float @dx.op.unary.f32(i32 22, float %2894)  ; Frc(value)
  %2900 = call float @dx.op.unary.f32(i32 22, float %2893)  ; Frc(value)
  %2901 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %39, float %2899, float %2900, float %2897, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2902 = extractvalue %dx.types.ResRet.f32 %2901, 0
  %2903 = extractvalue %dx.types.ResRet.f32 %2901, 1
  %2904 = extractvalue %dx.types.ResRet.f32 %2901, 2
  %2905 = extractvalue %dx.types.ResRet.f32 %2901, 3
  %2906 = fcmp fast ogt float %2898, 0.000000e+00
  br i1 %2906, label %2907, label %2928, !dx.controlflow.hints !125

; <label>:2907                                    ; preds = %2890
  %2908 = fadd fast float %2897, 1.000000e+00
  %2909 = call float @dx.op.unary.f32(i32 22, float %2871)  ; Frc(value)
  %2910 = call float @dx.op.unary.f32(i32 22, float %2872)  ; Frc(value)
  %2911 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %39, float %2909, float %2910, float %2908, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2912 = extractvalue %dx.types.ResRet.f32 %2911, 0
  %2913 = extractvalue %dx.types.ResRet.f32 %2911, 1
  %2914 = extractvalue %dx.types.ResRet.f32 %2911, 2
  %2915 = extractvalue %dx.types.ResRet.f32 %2911, 3
  %2916 = fsub fast float %2912, %2902
  %2917 = fsub fast float %2913, %2903
  %2918 = fsub fast float %2914, %2904
  %2919 = fsub fast float %2915, %2905
  %2920 = fmul fast float %2916, %2898
  %2921 = fmul fast float %2917, %2898
  %2922 = fmul fast float %2918, %2898
  %2923 = fmul fast float %2919, %2898
  %2924 = fadd fast float %2920, %2902
  %2925 = fadd fast float %2921, %2903
  %2926 = fadd fast float %2922, %2904
  %2927 = fadd fast float %2923, %2905
  br label %2928

; <label>:2928                                    ; preds = %2907, %2890
  %2929 = phi float [ %2924, %2907 ], [ %2902, %2890 ]
  %2930 = phi float [ %2925, %2907 ], [ %2903, %2890 ]
  %2931 = phi float [ %2926, %2907 ], [ %2904, %2890 ]
  %2932 = phi float [ %2927, %2907 ], [ %2905, %2890 ]
  %2933 = fadd fast float %2929, -5.000000e-01
  %2934 = fadd fast float %2931, -5.000000e-01
  %2935 = fmul fast float %2933, 0xBFD5555560000000
  %2936 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %2934, float %2935)  ; FMad(a,b,c)
  %2937 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %2930, float 0.000000e+00)  ; FMad(a,b,c)
  %2938 = fadd fast float %2937, %2932
  %2939 = fmul fast float %2933, -7.500000e-01
  %2940 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %2934, float %2939)  ; FMad(a,b,c)
  %2941 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %2930, float 0.000000e+00)  ; FMad(a,b,c)
  %2942 = fadd fast float %2941, %2932
  %2943 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %2944 = extractvalue %dx.types.CBufRet.f32 %2943, 0
  %2945 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %2946 = extractvalue %dx.types.CBufRet.f32 %2945, 0
  %2947 = extractvalue %dx.types.CBufRet.f32 %2945, 1
  %2948 = extractvalue %dx.types.CBufRet.f32 %2945, 2
  %2949 = extractvalue %dx.types.CBufRet.f32 %2945, 3
  %2950 = fsub fast float %2946, %2936
  %2951 = fsub fast float %2947, %2938
  %2952 = fsub fast float %2948, %2940
  %2953 = fsub fast float %2949, %2942
  %2954 = fmul fast float %2950, %2944
  %2955 = fmul fast float %2951, %2944
  %2956 = fmul fast float %2952, %2944
  %2957 = fmul fast float %2953, %2944
  %2958 = fadd fast float %2954, %2936
  %2959 = fadd fast float %2955, %2938
  %2960 = fadd fast float %2956, %2940
  %2961 = fadd fast float %2957, %2942
  %2962 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %2963 = extractvalue %dx.types.ResRet.i32 %2962, 0
  %2964 = and i32 %2963, 536870911
  %2965 = uitofp i32 %2964 to float
  %2966 = fmul fast float %2965, %2812
  %2967 = fmul fast float %2965, %2816
  %2968 = fptoui float %2966 to i32
  %2969 = fptoui float %2967 to i32
  %2970 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %2971 = extractvalue %dx.types.ResRet.i32 %2970, 0
  %2972 = and i32 %2971, 31
  %2973 = lshr i32 %2968, %2972
  %2974 = lshr i32 %2969, %2972
  %2975 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %2976 = extractvalue %dx.types.ResRet.i32 %2975, 0
  %2977 = and i32 %2976, 31
  %2978 = shl i32 1, %2977
  %2979 = call i32 @dx.op.binary.i32(i32 40, i32 %2978, i32 4)  ; UMin(a,b)
  %2980 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %2981 = extractvalue %dx.types.ResRet.i32 %2980, 0
  %2982 = extractvalue %dx.types.ResRet.i32 %2980, 1
  %2983 = icmp eq i32 %2979, 0
  br i1 %2983, label %3025, label %2984

; <label>:2984                                    ; preds = %2928
  br label %2985

; <label>:2985                                    ; preds = %3013, %2984
  %2986 = phi i32 [ %3016, %3013 ], [ 0, %2984 ]
  %2987 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %2988 = extractvalue %dx.types.ResRet.i32 %2987, 0
  %2989 = lshr i32 %2988, 16
  %2990 = and i32 %2989, 31
  %2991 = shl i32 %2974, %2990
  %2992 = add i32 %2991, %2973
  %2993 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %2994 = extractvalue %dx.types.ResRet.i32 %2993, 0
  %2995 = and i32 %2994, 31
  %2996 = shl i32 %2992, %2995
  %2997 = add i32 %2996, %2986
  %2998 = shl i32 %2997, 2
  %2999 = add i32 %2998, 32
  %3000 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %2999, i32 undef)  ; BufferLoad(srv,index,wot)
  %3001 = extractvalue %dx.types.ResRet.i32 %3000, 0
  %3002 = icmp slt i32 %3001, 0
  %3003 = getelementptr [12 x float], [12 x float]* %83, i32 0, i32 %2986
  %3004 = getelementptr [12 x float], [12 x float]* %84, i32 0, i32 %2986
  %3005 = bitcast float* %3003 to i32*
  %3006 = bitcast float* %3004 to i32*
  br i1 %3002, label %3007, label %3013

; <label>:3007                                    ; preds = %2985
  %3008 = and i32 %3001, 1073741823
  %3009 = add nuw nsw i32 %3008, 20
  %3010 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %3009, i32 undef)  ; BufferLoad(srv,index,wot)
  %3011 = extractvalue %dx.types.ResRet.i32 %3010, 0
  %3012 = extractvalue %dx.types.ResRet.i32 %3010, 1
  br label %3013

; <label>:3013                                    ; preds = %3007, %2985
  %3014 = phi i32 [ %3011, %3007 ], [ %2981, %2985 ]
  %3015 = phi i32 [ %3012, %3007 ], [ %2982, %2985 ]
  store i32 %3014, i32* %3005, align 4
  store i32 %3015, i32* %3006, align 4
  %3016 = add nuw i32 %2986, 1
  %3017 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %44, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %3018 = extractvalue %dx.types.CBufRet.i32 %3017, 2
  %3019 = icmp eq i32 %3018, 0
  %3020 = icmp ugt i32 %3001, -1073741825
  %3021 = and i1 %3020, %3019
  %3022 = icmp ult i32 %3016, %2979
  %3023 = and i1 %3021, %3022
  br i1 %3023, label %2985, label %3024

; <label>:3024                                    ; preds = %3013
  br label %3025

; <label>:3025                                    ; preds = %3024, %2928
  %3026 = phi i32 [ 0, %2928 ], [ %3016, %3024 ]
  %3027 = extractvalue %dx.types.CBufRet.f32 %2790, 2
  %3028 = fptoui float %3027 to i32
  %3029 = icmp eq i32 %3028, 0
  br i1 %3029, label %3081, label %3030

; <label>:3030                                    ; preds = %3025
  br label %3031

; <label>:3031                                    ; preds = %3076, %3030
  %3032 = phi i32 [ %3077, %3076 ], [ %3026, %3030 ]
  %3033 = phi i32 [ %3078, %3076 ], [ 0, %3030 ]
  %3034 = lshr i32 %3033, 2
  %3035 = and i32 %3033, 3
  %3036 = add nuw nsw i32 %3034, 83
  %3037 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %44, i32 %3036)  ; CBufferLoadLegacy(handle,regIndex)
  %3038 = extractvalue %dx.types.CBufRet.i32 %3037, 0
  %3039 = extractvalue %dx.types.CBufRet.i32 %3037, 1
  %3040 = extractvalue %dx.types.CBufRet.i32 %3037, 2
  %3041 = extractvalue %dx.types.CBufRet.i32 %3037, 3
  %3042 = getelementptr inbounds [4 x i32], [4 x i32]* %45, i32 0, i32 0
  store i32 %3038, i32* %3042, align 4
  %3043 = getelementptr inbounds [4 x i32], [4 x i32]* %45, i32 0, i32 1
  store i32 %3039, i32* %3043, align 4
  %3044 = getelementptr inbounds [4 x i32], [4 x i32]* %45, i32 0, i32 2
  store i32 %3040, i32* %3044, align 4
  %3045 = getelementptr inbounds [4 x i32], [4 x i32]* %45, i32 0, i32 3
  store i32 %3041, i32* %3045, align 4
  %3046 = getelementptr inbounds [4 x i32], [4 x i32]* %45, i32 0, i32 %3035
  %3047 = load i32, i32* %3046, align 4, !tbaa !126, !noalias !128
  %3048 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %3049 = extractvalue %dx.types.ResRet.i32 %3048, 0
  %3050 = lshr i32 %3049, 16
  %3051 = and i32 %3050, 31
  %3052 = shl i32 %2974, %3051
  %3053 = add i32 %3052, %2973
  %3054 = shl i32 %3053, 2
  %3055 = add i32 %3054, %3047
  %3056 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %3055, i32 undef)  ; BufferLoad(srv,index,wot)
  %3057 = extractvalue %dx.types.ResRet.i32 %3056, 0
  %3058 = icmp eq i32 %3057, 0
  br i1 %3058, label %3076, label %3059

; <label>:3059                                    ; preds = %3031
  %3060 = icmp slt i32 %3057, 0
  %3061 = getelementptr [12 x float], [12 x float]* %83, i32 0, i32 %3032
  %3062 = getelementptr [12 x float], [12 x float]* %84, i32 0, i32 %3032
  %3063 = bitcast float* %3061 to i32*
  %3064 = bitcast float* %3062 to i32*
  br i1 %3060, label %3065, label %3072

; <label>:3065                                    ; preds = %3059
  %3066 = and i32 %3057, 1073741823
  %3067 = add i32 %3047, 20
  %3068 = add i32 %3067, %3066
  %3069 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %3068, i32 undef)  ; BufferLoad(srv,index,wot)
  %3070 = extractvalue %dx.types.ResRet.i32 %3069, 0
  %3071 = extractvalue %dx.types.ResRet.i32 %3069, 1
  br label %3072

; <label>:3072                                    ; preds = %3065, %3059
  %3073 = phi i32 [ %3070, %3065 ], [ %2981, %3059 ]
  %3074 = phi i32 [ %3071, %3065 ], [ %2982, %3059 ]
  store i32 %3073, i32* %3063, align 4
  store i32 %3074, i32* %3064, align 4
  %3075 = add i32 %3032, 1
  br label %3076

; <label>:3076                                    ; preds = %3072, %3031
  %3077 = phi i32 [ %3032, %3031 ], [ %3075, %3072 ]
  %3078 = add nuw i32 %3033, 1
  %3079 = icmp eq i32 %3078, %3028
  br i1 %3079, label %3080, label %3031

; <label>:3080                                    ; preds = %3076
  br label %3081

; <label>:3081                                    ; preds = %3080, %3025
  %3082 = phi i32 [ %3026, %3025 ], [ %3077, %3080 ]
  %3083 = icmp eq i32 %3082, 1
  %3084 = getelementptr [12 x float], [12 x float]* %83, i32 0, i32 0
  %3085 = getelementptr [12 x float], [12 x float]* %84, i32 0, i32 0
  br i1 %3083, label %3086, label %3089

; <label>:3086                                    ; preds = %3081
  %3087 = load float, float* %3084, align 4
  %3088 = load float, float* %3085, align 4
  br label %3116

; <label>:3089                                    ; preds = %3081
  %3090 = load float, float* %3084, align 4
  %3091 = load float, float* %3085, align 4
  %3092 = fdiv fast float 1.000000e+00, %3091
  %3093 = fsub fast float %3090, %3092
  %3094 = icmp ugt i32 %3082, 1
  br i1 %3094, label %3095, label %3111

; <label>:3095                                    ; preds = %3089
  br label %3096

; <label>:3096                                    ; preds = %3096, %3095
  %3097 = phi float [ %3106, %3096 ], [ %3093, %3095 ]
  %3098 = phi float [ %3107, %3096 ], [ %3090, %3095 ]
  %3099 = phi i32 [ %3108, %3096 ], [ 1, %3095 ]
  %3100 = getelementptr [12 x float], [12 x float]* %83, i32 0, i32 %3099
  %3101 = load float, float* %3100, align 4
  %3102 = getelementptr [12 x float], [12 x float]* %84, i32 0, i32 %3099
  %3103 = load float, float* %3102, align 4
  %3104 = fdiv fast float 1.000000e+00, %3103
  %3105 = fsub fast float %3101, %3104
  %3106 = call float @dx.op.binary.f32(i32 36, float %3097, float %3105)  ; FMin(a,b)
  %3107 = call float @dx.op.binary.f32(i32 35, float %3098, float %3101)  ; FMax(a,b)
  %3108 = add nuw i32 %3099, 1
  %3109 = icmp eq i32 %3108, %3082
  br i1 %3109, label %3110, label %3096

; <label>:3110                                    ; preds = %3096
  br label %3111

; <label>:3111                                    ; preds = %3110, %3089
  %3112 = phi float [ %3093, %3089 ], [ %3106, %3110 ]
  %3113 = phi float [ %3090, %3089 ], [ %3107, %3110 ]
  %3114 = fsub fast float %3113, %3112
  %3115 = fdiv fast float 1.000000e+00, %3114
  br label %3116

; <label>:3116                                    ; preds = %3111, %3086
  %3117 = phi float [ %3087, %3086 ], [ %3113, %3111 ]
  %3118 = phi float [ %3088, %3086 ], [ %3115, %3111 ]
  %3119 = fadd fast float %2820, %3117
  %3120 = fmul fast float %3119, %3118
  %3121 = call float @dx.op.unary.f32(i32 7, float %3120)  ; Saturate(value)
  %3122 = fmul fast float %3121, 2.000000e+00
  %3123 = fsub fast float 1.000000e+00, %3122
  %3124 = fmul fast float %2958, %2958
  %3125 = fsub fast float %2959, %3124
  %3126 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %3125)  ; FMax(a,b)
  %3127 = fdiv fast float 1.000000e+00, %3126
  %3128 = fmul fast float %2959, %2958
  %3129 = fsub fast float %2960, %3128
  %3130 = fsub fast float %3123, %2958
  %3131 = fmul fast float %3123, %3123
  %3132 = fsub fast float %3131, %2959
  %3133 = fmul fast float %3127, %3129
  %3134 = fmul fast float %3133, %3130
  %3135 = fsub fast float %3132, %3134
  %3136 = fmul fast float %2959, %2959
  %3137 = fsub fast float %2961, %3136
  %3138 = fmul fast float %3129, %3129
  %3139 = fmul fast float %3138, %3127
  %3140 = fsub fast float %3137, %3139
  %3141 = fdiv fast float %3135, %3140
  %3142 = fmul fast float %3141, %3129
  %3143 = fsub fast float %3130, %3142
  %3144 = fmul fast float %3143, %3127
  %3145 = fmul fast float %3144, %2958
  %3146 = fsub fast float 1.000000e+00, %3145
  %3147 = fmul fast float %3141, %2959
  %3148 = fsub fast float %3146, %3147
  %3149 = fmul fast float %3144, %3144
  %3150 = fmul fast float %3141, 4.000000e+00
  %3151 = fmul fast float %3150, %3148
  %3152 = fsub fast float %3149, %3151
  %3153 = call float @dx.op.unary.f32(i32 24, float %3152)  ; Sqrt(value)
  %3154 = fcmp fast oge float %3144, 0.000000e+00
  %3155 = fsub fast float -0.000000e+00, %3153
  %3156 = select i1 %3154, float %3155, float %3153
  %3157 = fsub fast float %3156, %3144
  %3158 = fdiv fast float %3157, %3141
  %3159 = fdiv fast float %3148, %3157
  %3160 = fmul fast float %3158, 5.000000e-01
  %3161 = fmul fast float %3159, 2.000000e+00
  %3162 = select i1 %3154, float %3160, float %3161
  %3163 = select i1 %3154, float %3161, float %3160
  %3164 = call float @dx.op.binary.f32(i32 35, float %3162, float %3163)  ; FMax(a,b)
  %3165 = call float @dx.op.binary.f32(i32 36, float %3162, float %3163)  ; FMin(a,b)
  %3166 = fcmp fast ogt float %3123, %3164
  %3167 = fsub fast float %3123, %3165
  %3168 = fsub fast float %3123, %3164
  %3169 = fsub fast float %3164, %3165
  %3170 = select i1 %3166, float %3168, float %3169
  %3171 = fmul float %3167, %3170
  %3172 = select i1 %3166, float %3165, float %3123
  %3173 = fcmp fast ogt float %3123, %3165
  %3174 = fmul fast float %3172, %3164
  %3175 = fadd fast float %3172, %3164
  %3176 = fmul fast float %3175, %2958
  %3177 = fadd fast float %3174, %2959
  %3178 = fsub fast float %3177, %3176
  %3179 = fdiv fast float %3178, %3171
  %3180 = select i1 %3173, float %3179, float 0.000000e+00
  %3181 = fsub fast float 1.000000e+00, %3180
  %3182 = select i1 %3166, float %3181, float %3180
  %3183 = call float @dx.op.unary.f32(i32 7, float %3182)  ; Saturate(value)
  %3184 = extractvalue %dx.types.CBufRet.f32 %2943, 3
  %3185 = fmul fast float %3184, %3183
  %3186 = fsub fast float 1.000000e+00, %3185
  br label %3187

; <label>:3187                                    ; preds = %3116, %2828, %2793, %2789, %2755
  %3188 = phi float [ 1.000000e+00, %2755 ], [ %3186, %3116 ], [ 1.000000e+00, %2793 ], [ 1.000000e+00, %2828 ], [ 1.000000e+00, %2789 ]
  %3189 = fcmp fast ogt float %2785, 0.000000e+00
  br i1 %3189, label %3190, label %3352, !dx.controlflow.hints !137

; <label>:3190                                    ; preds = %3187
  %3191 = fadd fast float %2698, %2672
  %3192 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %3193 = extractvalue %dx.types.CBufRet.f32 %3192, 2
  %3194 = extractvalue %dx.types.CBufRet.f32 %3192, 3
  %3195 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %3196 = extractvalue %dx.types.CBufRet.f32 %3195, 2
  %3197 = call float @dx.op.binary.f32(i32 35, float %3191, float 0.000000e+00)  ; FMax(a,b)
  %3198 = fadd fast float %3197, 0x3F10000000000000
  %3199 = fcmp fast oeq float %3196, 0.000000e+00
  br i1 %3199, label %3200, label %3267

; <label>:3200                                    ; preds = %3190
  %3201 = extractvalue %dx.types.CBufRet.f32 %3192, 1
  %3202 = extractvalue %dx.types.CBufRet.f32 %3192, 0
  %3203 = fmul fast float %3202, %2687
  %3204 = fmul fast float %3201, %2688
  %3205 = fadd fast float %3203, 5.000000e-01
  %3206 = call float @dx.op.unary.f32(i32 27, float %3205)  ; Round_ni(value)
  %3207 = fadd fast float %3204, 5.000000e-01
  %3208 = call float @dx.op.unary.f32(i32 27, float %3207)  ; Round_ni(value)
  %3209 = fsub fast float %3205, %3206
  %3210 = fsub fast float %3207, %3208
  %3211 = fadd fast float %3206, -5.000000e-01
  %3212 = fadd fast float %3208, -5.000000e-01
  %3213 = fmul fast float %3209, 2.000000e+00
  %3214 = fsub fast float 3.000000e+00, %3213
  %3215 = fadd fast float %3213, 1.000000e+00
  %3216 = fsub fast float 2.000000e+00, %3209
  %3217 = bitcast float %3214 to i32
  %3218 = sub nsw i32 2129859010, %3217
  %3219 = bitcast i32 %3218 to float
  %3220 = fmul fast float %3219, %3216
  %3221 = fadd fast float %3220, -1.000000e+00
  %3222 = bitcast float %3215 to i32
  %3223 = sub nsw i32 2129859010, %3222
  %3224 = bitcast i32 %3223 to float
  %3225 = fmul fast float %3224, %3209
  %3226 = fadd fast float %3225, 1.000000e+00
  %3227 = fmul fast float %3210, 2.000000e+00
  %3228 = fsub fast float 3.000000e+00, %3227
  %3229 = fadd fast float %3227, 1.000000e+00
  %3230 = fsub fast float 2.000000e+00, %3210
  %3231 = bitcast float %3228 to i32
  %3232 = sub nsw i32 2129859010, %3231
  %3233 = bitcast i32 %3232 to float
  %3234 = fmul fast float %3233, %3230
  %3235 = fadd fast float %3234, -1.000000e+00
  %3236 = bitcast float %3229 to i32
  %3237 = sub nsw i32 2129859010, %3236
  %3238 = bitcast i32 %3237 to float
  %3239 = fmul fast float %3238, %3210
  %3240 = fadd fast float %3239, 1.000000e+00
  %3241 = fadd fast float %3221, %3211
  %3242 = fmul fast float %3241, %3193
  %3243 = fadd fast float %3235, %3212
  %3244 = fmul fast float %3243, %3194
  %3245 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %9, %dx.types.Handle %42, float %3242, float %3244, float undef, float undef, i32 0, i32 0, i32 undef, float %3198)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3246 = extractvalue %dx.types.ResRet.f32 %3245, 0
  %3247 = fmul fast float %3246, %3214
  %3248 = fadd fast float %3226, %3211
  %3249 = fmul fast float %3248, %3193
  %3250 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %9, %dx.types.Handle %42, float %3249, float %3244, float undef, float undef, i32 0, i32 0, i32 undef, float %3198)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3251 = extractvalue %dx.types.ResRet.f32 %3250, 0
  %3252 = fmul fast float %3251, %3215
  %3253 = fadd fast float %3240, %3212
  %3254 = fmul fast float %3253, %3194
  %3255 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %9, %dx.types.Handle %42, float %3242, float %3254, float undef, float undef, i32 0, i32 0, i32 undef, float %3198)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3256 = extractvalue %dx.types.ResRet.f32 %3255, 0
  %3257 = fmul fast float %3256, %3214
  %3258 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %9, %dx.types.Handle %42, float %3249, float %3254, float undef, float undef, i32 0, i32 0, i32 undef, float %3198)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3259 = extractvalue %dx.types.ResRet.f32 %3258, 0
  %3260 = fmul fast float %3259, %3215
  %3261 = fadd fast float %3260, %3257
  %3262 = fmul fast float %3261, %3229
  %3263 = fadd fast float %3252, %3247
  %3264 = fmul fast float %3263, %3228
  %3265 = fadd fast float %3264, %3262
  %3266 = fmul fast float %3265, 6.250000e-02
  br label %3352

; <label>:3267                                    ; preds = %3190
  %3268 = fmul fast float %278, 0x401921FB60000000
  %3269 = call float @dx.op.unary.f32(i32 13, float %3268)  ; Sin(value)
  %3270 = call float @dx.op.unary.f32(i32 12, float %3268)  ; Cos(value)
  %3271 = fsub fast float -0.000000e+00, %3269
  br label %3272

; <label>:3272                                    ; preds = %3321, %3267
  %3273 = phi float [ 0.000000e+00, %3267 ], [ %3316, %3321 ]
  %3274 = phi float [ 0.000000e+00, %3267 ], [ %3318, %3321 ]
  %3275 = phi i32 [ 0, %3267 ], [ %3322, %3321 ]
  %3276 = mul i32 %3275, 2
  %3277 = add i32 0, %3276
  %3278 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %3277
  %3279 = load float, float* %3278, align 4
  %3280 = mul i32 %3275, 2
  %3281 = add i32 1, %3280
  %3282 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %3281
  %3283 = load float, float* %3282, align 4
  %3284 = fmul fast float %3279, %3270
  %3285 = call float @dx.op.tertiary.f32(i32 46, float %3283, float %3271, float %3284)  ; FMad(a,b,c)
  %3286 = fmul fast float %3279, %3269
  %3287 = call float @dx.op.tertiary.f32(i32 46, float %3283, float %3270, float %3286)  ; FMad(a,b,c)
  %3288 = fmul fast float %3285, %3196
  %3289 = fmul fast float %3287, %3196
  %3290 = fadd fast float %3288, %2687
  %3291 = fadd fast float %3289, %2688
  %3292 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %9, %dx.types.Handle %41, float %3290, float %3291, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %3293 = extractvalue %dx.types.ResRet.f32 %3292, 0
  %3294 = extractvalue %dx.types.ResRet.f32 %3292, 1
  %3295 = extractvalue %dx.types.ResRet.f32 %3292, 2
  %3296 = extractvalue %dx.types.ResRet.f32 %3292, 3
  %3297 = getelementptr inbounds [4 x float], [4 x float]* %87, i32 0, i32 0
  store float %3293, float* %3297, align 4
  %3298 = getelementptr inbounds [4 x float], [4 x float]* %87, i32 0, i32 1
  store float %3294, float* %3298, align 4
  %3299 = getelementptr inbounds [4 x float], [4 x float]* %87, i32 0, i32 2
  store float %3295, float* %3299, align 4
  %3300 = getelementptr inbounds [4 x float], [4 x float]* %87, i32 0, i32 3
  store float %3296, float* %3300, align 4
  %3301 = fsub fast float %3293, %3198
  %3302 = fcmp fast olt float %3301, 0.000000e+00
  %3303 = select i1 %3302, float 0.000000e+00, float 1.000000e+00
  %3304 = fadd fast float %3303, %3273
  %3305 = fmul fast float %3303, %3301
  %3306 = fadd fast float %3305, %3274
  br label %3307

; <label>:3307                                    ; preds = %3307, %3272
  %3308 = phi i32 [ 1, %3272 ], [ %3319, %3307 ]
  %3309 = phi float [ %3306, %3272 ], [ %3318, %3307 ]
  %3310 = phi float [ %3304, %3272 ], [ %3316, %3307 ]
  %3311 = getelementptr [4 x float], [4 x float]* %87, i32 0, i32 %3308
  %3312 = load float, float* %3311, align 4, !tbaa !102, !noalias !128
  %3313 = fsub fast float %3312, %3198
  %3314 = fcmp fast olt float %3313, 0.000000e+00
  %3315 = select i1 %3314, float 0.000000e+00, float 1.000000e+00
  %3316 = fadd fast float %3315, %3310
  %3317 = fmul fast float %3315, %3313
  %3318 = fadd fast float %3317, %3309
  %3319 = add nuw nsw i32 %3308, 1
  %3320 = icmp eq i32 %3319, 4
  br i1 %3320, label %3321, label %3307, !llvm.loop !138

; <label>:3321                                    ; preds = %3307
  %3322 = add nuw nsw i32 %3275, 1
  %3323 = icmp eq i32 %3322, 8
  br i1 %3323, label %3324, label %3272, !llvm.loop !139

; <label>:3324                                    ; preds = %3321
  %3325 = fdiv fast float 1.000000e+00, %3316
  %3326 = fmul fast float %3325, %3318
  %3327 = fdiv fast float 1.000000e+00, %3198
  %3328 = fmul fast float %3326, %3327
  %3329 = call float @dx.op.unary.f32(i32 7, float %3328)  ; Saturate(value)
  %3330 = call float @dx.op.binary.f32(i32 35, float %3329, float 0.000000e+00)  ; FMax(a,b)
  %3331 = fmul fast float %3316, 3.125000e-02
  %3332 = call float @dx.op.unary.f32(i32 7, float %3331)  ; Saturate(value)
  %3333 = fmul fast float %3332, 2.000000e+00
  %3334 = fadd fast float %3333, -1.000000e+00
  %3335 = fcmp fast ogt float %3334, 0.000000e+00
  %3336 = fcmp fast olt float %3334, 0.000000e+00
  %3337 = zext i1 %3335 to i32
  %3338 = zext i1 %3336 to i32
  %3339 = sub nsw i32 %3337, %3338
  %3340 = sitofp i32 %3339 to float
  %3341 = fmul fast float %3340, %3334
  %3342 = fsub fast float 1.000000e+00, %3341
  %3343 = fmul fast float %3342, %3342
  %3344 = fmul fast float %3343, %3342
  %3345 = fsub fast float %3342, %3344
  %3346 = fmul fast float %3345, %3330
  %3347 = fsub fast float 1.000000e+00, %3344
  %3348 = fsub fast float %3347, %3346
  %3349 = fmul fast float %3340, 5.000000e-01
  %3350 = fmul fast float %3349, %3348
  %3351 = fsub fast float 5.000000e-01, %3350
  br label %3352

; <label>:3352                                    ; preds = %3324, %3200, %3187
  %3353 = phi float [ 1.000000e+00, %3187 ], [ %3266, %3200 ], [ %3351, %3324 ]
  %3354 = fcmp fast ogt float %2783, 0.000000e+00
  br i1 %3354, label %3355, label %3519, !dx.controlflow.hints !140

; <label>:3355                                    ; preds = %3352
  %3356 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %3357 = extractvalue %dx.types.CBufRet.f32 %3356, 1
  %3358 = fadd fast float %3357, %2672
  %3359 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %3360 = extractvalue %dx.types.CBufRet.f32 %3359, 2
  %3361 = extractvalue %dx.types.CBufRet.f32 %3359, 3
  %3362 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %3363 = extractvalue %dx.types.CBufRet.f32 %3362, 1
  %3364 = call float @dx.op.binary.f32(i32 35, float %3358, float 0.000000e+00)  ; FMax(a,b)
  %3365 = fadd fast float %3364, 0x3F10000000000000
  %3366 = fcmp fast oeq float %3363, 0.000000e+00
  br i1 %3366, label %3367, label %3434

; <label>:3367                                    ; preds = %3355
  %3368 = extractvalue %dx.types.CBufRet.f32 %3359, 1
  %3369 = extractvalue %dx.types.CBufRet.f32 %3359, 0
  %3370 = fmul fast float %3369, %2679
  %3371 = fmul fast float %3368, %2680
  %3372 = fadd fast float %3370, 5.000000e-01
  %3373 = call float @dx.op.unary.f32(i32 27, float %3372)  ; Round_ni(value)
  %3374 = fadd fast float %3371, 5.000000e-01
  %3375 = call float @dx.op.unary.f32(i32 27, float %3374)  ; Round_ni(value)
  %3376 = fsub fast float %3372, %3373
  %3377 = fsub fast float %3374, %3375
  %3378 = fadd fast float %3373, -5.000000e-01
  %3379 = fadd fast float %3375, -5.000000e-01
  %3380 = fmul fast float %3376, 2.000000e+00
  %3381 = fsub fast float 3.000000e+00, %3380
  %3382 = fadd fast float %3380, 1.000000e+00
  %3383 = fsub fast float 2.000000e+00, %3376
  %3384 = bitcast float %3381 to i32
  %3385 = sub nsw i32 2129859010, %3384
  %3386 = bitcast i32 %3385 to float
  %3387 = fmul fast float %3386, %3383
  %3388 = fadd fast float %3387, -1.000000e+00
  %3389 = bitcast float %3382 to i32
  %3390 = sub nsw i32 2129859010, %3389
  %3391 = bitcast i32 %3390 to float
  %3392 = fmul fast float %3391, %3376
  %3393 = fadd fast float %3392, 1.000000e+00
  %3394 = fmul fast float %3377, 2.000000e+00
  %3395 = fsub fast float 3.000000e+00, %3394
  %3396 = fadd fast float %3394, 1.000000e+00
  %3397 = fsub fast float 2.000000e+00, %3377
  %3398 = bitcast float %3395 to i32
  %3399 = sub nsw i32 2129859010, %3398
  %3400 = bitcast i32 %3399 to float
  %3401 = fmul fast float %3400, %3397
  %3402 = fadd fast float %3401, -1.000000e+00
  %3403 = bitcast float %3396 to i32
  %3404 = sub nsw i32 2129859010, %3403
  %3405 = bitcast i32 %3404 to float
  %3406 = fmul fast float %3405, %3377
  %3407 = fadd fast float %3406, 1.000000e+00
  %3408 = fadd fast float %3388, %3378
  %3409 = fmul fast float %3408, %3360
  %3410 = fadd fast float %3402, %3379
  %3411 = fmul fast float %3410, %3361
  %3412 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %10, %dx.types.Handle %42, float %3409, float %3411, float undef, float undef, i32 0, i32 0, i32 undef, float %3365)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3413 = extractvalue %dx.types.ResRet.f32 %3412, 0
  %3414 = fmul fast float %3413, %3381
  %3415 = fadd fast float %3393, %3378
  %3416 = fmul fast float %3415, %3360
  %3417 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %10, %dx.types.Handle %42, float %3416, float %3411, float undef, float undef, i32 0, i32 0, i32 undef, float %3365)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3418 = extractvalue %dx.types.ResRet.f32 %3417, 0
  %3419 = fmul fast float %3418, %3382
  %3420 = fadd fast float %3407, %3379
  %3421 = fmul fast float %3420, %3361
  %3422 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %10, %dx.types.Handle %42, float %3409, float %3421, float undef, float undef, i32 0, i32 0, i32 undef, float %3365)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3423 = extractvalue %dx.types.ResRet.f32 %3422, 0
  %3424 = fmul fast float %3423, %3381
  %3425 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %10, %dx.types.Handle %42, float %3416, float %3421, float undef, float undef, i32 0, i32 0, i32 undef, float %3365)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3426 = extractvalue %dx.types.ResRet.f32 %3425, 0
  %3427 = fmul fast float %3426, %3382
  %3428 = fadd fast float %3427, %3424
  %3429 = fmul fast float %3428, %3396
  %3430 = fadd fast float %3419, %3414
  %3431 = fmul fast float %3430, %3395
  %3432 = fadd fast float %3431, %3429
  %3433 = fmul fast float %3432, 6.250000e-02
  br label %3519

; <label>:3434                                    ; preds = %3355
  %3435 = fmul fast float %278, 0x401921FB60000000
  %3436 = call float @dx.op.unary.f32(i32 13, float %3435)  ; Sin(value)
  %3437 = call float @dx.op.unary.f32(i32 12, float %3435)  ; Cos(value)
  %3438 = fsub fast float -0.000000e+00, %3436
  br label %3439

; <label>:3439                                    ; preds = %3488, %3434
  %3440 = phi float [ 0.000000e+00, %3434 ], [ %3483, %3488 ]
  %3441 = phi float [ 0.000000e+00, %3434 ], [ %3485, %3488 ]
  %3442 = phi i32 [ 0, %3434 ], [ %3489, %3488 ]
  %3443 = mul i32 %3442, 2
  %3444 = add i32 0, %3443
  %3445 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %3444
  %3446 = load float, float* %3445, align 4
  %3447 = mul i32 %3442, 2
  %3448 = add i32 1, %3447
  %3449 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %3448
  %3450 = load float, float* %3449, align 4
  %3451 = fmul fast float %3446, %3437
  %3452 = call float @dx.op.tertiary.f32(i32 46, float %3450, float %3438, float %3451)  ; FMad(a,b,c)
  %3453 = fmul fast float %3446, %3436
  %3454 = call float @dx.op.tertiary.f32(i32 46, float %3450, float %3437, float %3453)  ; FMad(a,b,c)
  %3455 = fmul fast float %3452, %3363
  %3456 = fmul fast float %3454, %3363
  %3457 = fadd fast float %3455, %2679
  %3458 = fadd fast float %3456, %2680
  %3459 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %10, %dx.types.Handle %41, float %3457, float %3458, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %3460 = extractvalue %dx.types.ResRet.f32 %3459, 0
  %3461 = extractvalue %dx.types.ResRet.f32 %3459, 1
  %3462 = extractvalue %dx.types.ResRet.f32 %3459, 2
  %3463 = extractvalue %dx.types.ResRet.f32 %3459, 3
  %3464 = getelementptr inbounds [4 x float], [4 x float]* %86, i32 0, i32 0
  store float %3460, float* %3464, align 4
  %3465 = getelementptr inbounds [4 x float], [4 x float]* %86, i32 0, i32 1
  store float %3461, float* %3465, align 4
  %3466 = getelementptr inbounds [4 x float], [4 x float]* %86, i32 0, i32 2
  store float %3462, float* %3466, align 4
  %3467 = getelementptr inbounds [4 x float], [4 x float]* %86, i32 0, i32 3
  store float %3463, float* %3467, align 4
  %3468 = fsub fast float %3460, %3365
  %3469 = fcmp fast olt float %3468, 0.000000e+00
  %3470 = select i1 %3469, float 0.000000e+00, float 1.000000e+00
  %3471 = fadd fast float %3470, %3440
  %3472 = fmul fast float %3470, %3468
  %3473 = fadd fast float %3472, %3441
  br label %3474

; <label>:3474                                    ; preds = %3474, %3439
  %3475 = phi i32 [ 1, %3439 ], [ %3486, %3474 ]
  %3476 = phi float [ %3473, %3439 ], [ %3485, %3474 ]
  %3477 = phi float [ %3471, %3439 ], [ %3483, %3474 ]
  %3478 = getelementptr [4 x float], [4 x float]* %86, i32 0, i32 %3475
  %3479 = load float, float* %3478, align 4, !tbaa !102, !noalias !128
  %3480 = fsub fast float %3479, %3365
  %3481 = fcmp fast olt float %3480, 0.000000e+00
  %3482 = select i1 %3481, float 0.000000e+00, float 1.000000e+00
  %3483 = fadd fast float %3482, %3477
  %3484 = fmul fast float %3482, %3480
  %3485 = fadd fast float %3484, %3476
  %3486 = add nuw nsw i32 %3475, 1
  %3487 = icmp eq i32 %3486, 4
  br i1 %3487, label %3488, label %3474, !llvm.loop !138

; <label>:3488                                    ; preds = %3474
  %3489 = add nuw nsw i32 %3442, 1
  %3490 = icmp eq i32 %3489, 8
  br i1 %3490, label %3491, label %3439, !llvm.loop !139

; <label>:3491                                    ; preds = %3488
  %3492 = fdiv fast float 1.000000e+00, %3483
  %3493 = fmul fast float %3492, %3485
  %3494 = fdiv fast float 1.000000e+00, %3365
  %3495 = fmul fast float %3493, %3494
  %3496 = call float @dx.op.unary.f32(i32 7, float %3495)  ; Saturate(value)
  %3497 = call float @dx.op.binary.f32(i32 35, float %3496, float 0.000000e+00)  ; FMax(a,b)
  %3498 = fmul fast float %3483, 3.125000e-02
  %3499 = call float @dx.op.unary.f32(i32 7, float %3498)  ; Saturate(value)
  %3500 = fmul fast float %3499, 2.000000e+00
  %3501 = fadd fast float %3500, -1.000000e+00
  %3502 = fcmp fast ogt float %3501, 0.000000e+00
  %3503 = fcmp fast olt float %3501, 0.000000e+00
  %3504 = zext i1 %3502 to i32
  %3505 = zext i1 %3503 to i32
  %3506 = sub nsw i32 %3504, %3505
  %3507 = sitofp i32 %3506 to float
  %3508 = fmul fast float %3507, %3501
  %3509 = fsub fast float 1.000000e+00, %3508
  %3510 = fmul fast float %3509, %3509
  %3511 = fmul fast float %3510, %3509
  %3512 = fsub fast float %3509, %3511
  %3513 = fmul fast float %3512, %3497
  %3514 = fsub fast float 1.000000e+00, %3511
  %3515 = fsub fast float %3514, %3513
  %3516 = fmul fast float %3507, 5.000000e-01
  %3517 = fmul fast float %3516, %3515
  %3518 = fsub fast float 5.000000e-01, %3517
  br label %3519

; <label>:3519                                    ; preds = %3491, %3367, %3352
  %3520 = phi float [ 1.000000e+00, %3352 ], [ %3433, %3367 ], [ %3518, %3491 ]
  %3521 = fcmp fast ogt float %2782, 0.000000e+00
  br i1 %3521, label %3522, label %3686, !dx.controlflow.hints !141

; <label>:3522                                    ; preds = %3519
  %3523 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %3524 = extractvalue %dx.types.CBufRet.f32 %3523, 0
  %3525 = fadd fast float %3524, %2672
  %3526 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %3527 = extractvalue %dx.types.CBufRet.f32 %3526, 2
  %3528 = extractvalue %dx.types.CBufRet.f32 %3526, 3
  %3529 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %3530 = extractvalue %dx.types.CBufRet.f32 %3529, 0
  %3531 = call float @dx.op.binary.f32(i32 35, float %3525, float 0.000000e+00)  ; FMax(a,b)
  %3532 = fadd fast float %3531, 0x3F10000000000000
  %3533 = fcmp fast oeq float %3530, 0.000000e+00
  br i1 %3533, label %3534, label %3601

; <label>:3534                                    ; preds = %3522
  %3535 = extractvalue %dx.types.CBufRet.f32 %3526, 1
  %3536 = extractvalue %dx.types.CBufRet.f32 %3526, 0
  %3537 = fmul fast float %3536, %2664
  %3538 = fmul fast float %3535, %2668
  %3539 = fadd fast float %3537, 5.000000e-01
  %3540 = call float @dx.op.unary.f32(i32 27, float %3539)  ; Round_ni(value)
  %3541 = fadd fast float %3538, 5.000000e-01
  %3542 = call float @dx.op.unary.f32(i32 27, float %3541)  ; Round_ni(value)
  %3543 = fsub fast float %3539, %3540
  %3544 = fsub fast float %3541, %3542
  %3545 = fadd fast float %3540, -5.000000e-01
  %3546 = fadd fast float %3542, -5.000000e-01
  %3547 = fmul fast float %3543, 2.000000e+00
  %3548 = fsub fast float 3.000000e+00, %3547
  %3549 = fadd fast float %3547, 1.000000e+00
  %3550 = fsub fast float 2.000000e+00, %3543
  %3551 = bitcast float %3548 to i32
  %3552 = sub nsw i32 2129859010, %3551
  %3553 = bitcast i32 %3552 to float
  %3554 = fmul fast float %3553, %3550
  %3555 = fadd fast float %3554, -1.000000e+00
  %3556 = bitcast float %3549 to i32
  %3557 = sub nsw i32 2129859010, %3556
  %3558 = bitcast i32 %3557 to float
  %3559 = fmul fast float %3558, %3543
  %3560 = fadd fast float %3559, 1.000000e+00
  %3561 = fmul fast float %3544, 2.000000e+00
  %3562 = fsub fast float 3.000000e+00, %3561
  %3563 = fadd fast float %3561, 1.000000e+00
  %3564 = fsub fast float 2.000000e+00, %3544
  %3565 = bitcast float %3562 to i32
  %3566 = sub nsw i32 2129859010, %3565
  %3567 = bitcast i32 %3566 to float
  %3568 = fmul fast float %3567, %3564
  %3569 = fadd fast float %3568, -1.000000e+00
  %3570 = bitcast float %3563 to i32
  %3571 = sub nsw i32 2129859010, %3570
  %3572 = bitcast i32 %3571 to float
  %3573 = fmul fast float %3572, %3544
  %3574 = fadd fast float %3573, 1.000000e+00
  %3575 = fadd fast float %3555, %3545
  %3576 = fmul fast float %3575, %3527
  %3577 = fadd fast float %3569, %3546
  %3578 = fmul fast float %3577, %3528
  %3579 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %11, %dx.types.Handle %42, float %3576, float %3578, float undef, float undef, i32 0, i32 0, i32 undef, float %3532)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3580 = extractvalue %dx.types.ResRet.f32 %3579, 0
  %3581 = fmul fast float %3580, %3548
  %3582 = fadd fast float %3560, %3545
  %3583 = fmul fast float %3582, %3527
  %3584 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %11, %dx.types.Handle %42, float %3583, float %3578, float undef, float undef, i32 0, i32 0, i32 undef, float %3532)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3585 = extractvalue %dx.types.ResRet.f32 %3584, 0
  %3586 = fmul fast float %3585, %3549
  %3587 = fadd fast float %3574, %3546
  %3588 = fmul fast float %3587, %3528
  %3589 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %11, %dx.types.Handle %42, float %3576, float %3588, float undef, float undef, i32 0, i32 0, i32 undef, float %3532)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3590 = extractvalue %dx.types.ResRet.f32 %3589, 0
  %3591 = fmul fast float %3590, %3548
  %3592 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %11, %dx.types.Handle %42, float %3583, float %3588, float undef, float undef, i32 0, i32 0, i32 undef, float %3532)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3593 = extractvalue %dx.types.ResRet.f32 %3592, 0
  %3594 = fmul fast float %3593, %3549
  %3595 = fadd fast float %3594, %3591
  %3596 = fmul fast float %3595, %3563
  %3597 = fadd fast float %3586, %3581
  %3598 = fmul fast float %3597, %3562
  %3599 = fadd fast float %3598, %3596
  %3600 = fmul fast float %3599, 6.250000e-02
  br label %3686

; <label>:3601                                    ; preds = %3522
  %3602 = fmul fast float %278, 0x401921FB60000000
  %3603 = call float @dx.op.unary.f32(i32 13, float %3602)  ; Sin(value)
  %3604 = call float @dx.op.unary.f32(i32 12, float %3602)  ; Cos(value)
  %3605 = fsub fast float -0.000000e+00, %3603
  br label %3606

; <label>:3606                                    ; preds = %3655, %3601
  %3607 = phi float [ 0.000000e+00, %3601 ], [ %3650, %3655 ]
  %3608 = phi float [ 0.000000e+00, %3601 ], [ %3652, %3655 ]
  %3609 = phi i32 [ 0, %3601 ], [ %3656, %3655 ]
  %3610 = mul i32 %3609, 2
  %3611 = add i32 0, %3610
  %3612 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %3611
  %3613 = load float, float* %3612, align 4
  %3614 = mul i32 %3609, 2
  %3615 = add i32 1, %3614
  %3616 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %3615
  %3617 = load float, float* %3616, align 4
  %3618 = fmul fast float %3613, %3604
  %3619 = call float @dx.op.tertiary.f32(i32 46, float %3617, float %3605, float %3618)  ; FMad(a,b,c)
  %3620 = fmul fast float %3613, %3603
  %3621 = call float @dx.op.tertiary.f32(i32 46, float %3617, float %3604, float %3620)  ; FMad(a,b,c)
  %3622 = fmul fast float %3619, %3530
  %3623 = fmul fast float %3621, %3530
  %3624 = fadd fast float %3622, %2664
  %3625 = fadd fast float %3623, %2668
  %3626 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %11, %dx.types.Handle %41, float %3624, float %3625, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %3627 = extractvalue %dx.types.ResRet.f32 %3626, 0
  %3628 = extractvalue %dx.types.ResRet.f32 %3626, 1
  %3629 = extractvalue %dx.types.ResRet.f32 %3626, 2
  %3630 = extractvalue %dx.types.ResRet.f32 %3626, 3
  %3631 = getelementptr inbounds [4 x float], [4 x float]* %85, i32 0, i32 0
  store float %3627, float* %3631, align 4
  %3632 = getelementptr inbounds [4 x float], [4 x float]* %85, i32 0, i32 1
  store float %3628, float* %3632, align 4
  %3633 = getelementptr inbounds [4 x float], [4 x float]* %85, i32 0, i32 2
  store float %3629, float* %3633, align 4
  %3634 = getelementptr inbounds [4 x float], [4 x float]* %85, i32 0, i32 3
  store float %3630, float* %3634, align 4
  %3635 = fsub fast float %3627, %3532
  %3636 = fcmp fast olt float %3635, 0.000000e+00
  %3637 = select i1 %3636, float 0.000000e+00, float 1.000000e+00
  %3638 = fadd fast float %3637, %3607
  %3639 = fmul fast float %3637, %3635
  %3640 = fadd fast float %3639, %3608
  br label %3641

; <label>:3641                                    ; preds = %3641, %3606
  %3642 = phi i32 [ 1, %3606 ], [ %3653, %3641 ]
  %3643 = phi float [ %3640, %3606 ], [ %3652, %3641 ]
  %3644 = phi float [ %3638, %3606 ], [ %3650, %3641 ]
  %3645 = getelementptr [4 x float], [4 x float]* %85, i32 0, i32 %3642
  %3646 = load float, float* %3645, align 4, !tbaa !102, !noalias !128
  %3647 = fsub fast float %3646, %3532
  %3648 = fcmp fast olt float %3647, 0.000000e+00
  %3649 = select i1 %3648, float 0.000000e+00, float 1.000000e+00
  %3650 = fadd fast float %3649, %3644
  %3651 = fmul fast float %3649, %3647
  %3652 = fadd fast float %3651, %3643
  %3653 = add nuw nsw i32 %3642, 1
  %3654 = icmp eq i32 %3653, 4
  br i1 %3654, label %3655, label %3641, !llvm.loop !138

; <label>:3655                                    ; preds = %3641
  %3656 = add nuw nsw i32 %3609, 1
  %3657 = icmp eq i32 %3656, 8
  br i1 %3657, label %3658, label %3606, !llvm.loop !139

; <label>:3658                                    ; preds = %3655
  %3659 = fdiv fast float 1.000000e+00, %3650
  %3660 = fmul fast float %3659, %3652
  %3661 = fdiv fast float 1.000000e+00, %3532
  %3662 = fmul fast float %3660, %3661
  %3663 = call float @dx.op.unary.f32(i32 7, float %3662)  ; Saturate(value)
  %3664 = call float @dx.op.binary.f32(i32 35, float %3663, float 0.000000e+00)  ; FMax(a,b)
  %3665 = fmul fast float %3650, 3.125000e-02
  %3666 = call float @dx.op.unary.f32(i32 7, float %3665)  ; Saturate(value)
  %3667 = fmul fast float %3666, 2.000000e+00
  %3668 = fadd fast float %3667, -1.000000e+00
  %3669 = fcmp fast ogt float %3668, 0.000000e+00
  %3670 = fcmp fast olt float %3668, 0.000000e+00
  %3671 = zext i1 %3669 to i32
  %3672 = zext i1 %3670 to i32
  %3673 = sub nsw i32 %3671, %3672
  %3674 = sitofp i32 %3673 to float
  %3675 = fmul fast float %3674, %3668
  %3676 = fsub fast float 1.000000e+00, %3675
  %3677 = fmul fast float %3676, %3676
  %3678 = fmul fast float %3677, %3676
  %3679 = fsub fast float %3676, %3678
  %3680 = fmul fast float %3679, %3664
  %3681 = fsub fast float 1.000000e+00, %3678
  %3682 = fsub fast float %3681, %3680
  %3683 = fmul fast float %3674, 5.000000e-01
  %3684 = fmul fast float %3683, %3682
  %3685 = fsub fast float 5.000000e-01, %3684
  br label %3686

; <label>:3686                                    ; preds = %3658, %3534, %3519
  %3687 = phi float [ 1.000000e+00, %3519 ], [ %3600, %3534 ], [ %3685, %3658 ]
  %3688 = fsub fast float %3353, %3188
  %3689 = fmul fast float %3688, %2726
  %3690 = fadd fast float %3689, %3188
  %3691 = fsub fast float %3520, %3690
  %3692 = fmul fast float %3691, %2756
  %3693 = fadd fast float %3692, %3690
  %3694 = fsub fast float %3687, %3693
  %3695 = fmul fast float %3694, %2782
  %3696 = fadd fast float %3695, %3693
  %3697 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %3698 = extractvalue %dx.types.CBufRet.f32 %3697, 2
  %3699 = fcmp fast ogt float %3698, 0.000000e+00
  br i1 %3699, label %3700, label %3740, !dx.controlflow.hints !142

; <label>:3700                                    ; preds = %3686
  %3701 = fcmp fast ugt float %3698, 0.000000e+00
  br i1 %3701, label %3702, label %3737

; <label>:3702                                    ; preds = %3700
  %3703 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %3704 = extractvalue %dx.types.CBufRet.f32 %3703, 0
  %3705 = extractvalue %dx.types.CBufRet.f32 %3703, 1
  %3706 = extractvalue %dx.types.CBufRet.f32 %3703, 2
  %3707 = extractvalue %dx.types.CBufRet.f32 %3703, 3
  %3708 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %3709 = extractvalue %dx.types.CBufRet.f32 %3708, 0
  %3710 = extractvalue %dx.types.CBufRet.f32 %3708, 1
  %3711 = extractvalue %dx.types.CBufRet.f32 %3708, 2
  %3712 = extractvalue %dx.types.CBufRet.f32 %3708, 3
  %3713 = extractvalue %dx.types.CBufRet.f32 %3697, 0
  %3714 = extractvalue %dx.types.CBufRet.f32 %3697, 1
  %3715 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %3716 = extractvalue %dx.types.CBufRet.f32 %3715, 0
  %3717 = extractvalue %dx.types.CBufRet.f32 %3715, 1
  %3718 = extractvalue %dx.types.CBufRet.f32 %3715, 2
  %3719 = fadd fast float %3716, %2641
  %3720 = fadd fast float %3717, %2642
  %3721 = fadd fast float %3718, %2643
  %3722 = fmul fast float %3719, %3704
  %3723 = call float @dx.op.tertiary.f32(i32 46, float %3705, float %3720, float %3722)  ; FMad(a,b,c)
  %3724 = call float @dx.op.tertiary.f32(i32 46, float %3706, float %3721, float %3723)  ; FMad(a,b,c)
  %3725 = fadd fast float %3724, %3707
  %3726 = fmul fast float %3719, %3709
  %3727 = call float @dx.op.tertiary.f32(i32 46, float %3710, float %3720, float %3726)  ; FMad(a,b,c)
  %3728 = call float @dx.op.tertiary.f32(i32 46, float %3711, float %3721, float %3727)  ; FMad(a,b,c)
  %3729 = fadd fast float %3728, %3712
  %3730 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %6, %dx.types.Handle %37, float %3725, float %3729, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3731 = extractvalue %dx.types.ResRet.f32 %3730, 0
  %3732 = fmul fast float %3731, %3714
  %3733 = fadd fast float %3732, %3713
  %3734 = call float @dx.op.unary.f32(i32 7, float %3733)  ; Saturate(value)
  %3735 = fmul fast float %3734, %3698
  %3736 = fsub fast float 1.000000e+00, %3735
  br label %3737

; <label>:3737                                    ; preds = %3702, %3700
  %3738 = phi float [ %3736, %3702 ], [ 1.000000e+00, %3700 ]
  %3739 = fmul fast float %3738, %3696
  br label %3740

; <label>:3740                                    ; preds = %3737, %3686, %2621
  %3741 = phi float [ 1.000000e+00, %2621 ], [ %3739, %3737 ], [ %3696, %3686 ]
  %3742 = call float @dx.op.binary.f32(i32 36, float %3741, float %3741)  ; FMin(a,b)
  %3743 = call float @dx.op.binary.f32(i32 36, float %3741, float %3742)  ; FMin(a,b)
  %3744 = fcmp fast ogt float %3743, 0.000000e+00
  br i1 %3744, label %3745, label %3910, !dx.controlflow.hints !143

; <label>:3745                                    ; preds = %3740
  %3746 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %3747 = extractvalue %dx.types.CBufRet.f32 %3746, 0
  %3748 = extractvalue %dx.types.CBufRet.f32 %3746, 1
  %3749 = extractvalue %dx.types.CBufRet.f32 %3746, 2
  %3750 = extractvalue %dx.types.CBufRet.f32 %3746, 3
  %3751 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %3752 = extractvalue %dx.types.CBufRet.f32 %3751, 0
  %3753 = extractvalue %dx.types.CBufRet.f32 %3751, 1
  %3754 = extractvalue %dx.types.CBufRet.f32 %3751, 2
  %3755 = extractvalue %dx.types.CBufRet.f32 %3751, 3
  %3756 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %3757 = extractvalue %dx.types.CBufRet.f32 %3756, 0
  %3758 = extractvalue %dx.types.CBufRet.f32 %3756, 1
  %3759 = extractvalue %dx.types.CBufRet.f32 %3756, 2
  %3760 = extractvalue %dx.types.CBufRet.f32 %3756, 3
  %3761 = fmul fast float %3747, %2641
  %3762 = call float @dx.op.tertiary.f32(i32 46, float %2642, float %3748, float %3761)  ; FMad(a,b,c)
  %3763 = call float @dx.op.tertiary.f32(i32 46, float %2643, float %3749, float %3762)  ; FMad(a,b,c)
  %3764 = fadd fast float %3763, %3750
  %3765 = fmul fast float %3752, %2641
  %3766 = call float @dx.op.tertiary.f32(i32 46, float %2642, float %3753, float %3765)  ; FMad(a,b,c)
  %3767 = call float @dx.op.tertiary.f32(i32 46, float %2643, float %3754, float %3766)  ; FMad(a,b,c)
  %3768 = fadd fast float %3767, %3755
  %3769 = fmul fast float %3757, %2641
  %3770 = call float @dx.op.tertiary.f32(i32 46, float %2642, float %3758, float %3769)  ; FMad(a,b,c)
  %3771 = call float @dx.op.tertiary.f32(i32 46, float %2643, float %3759, float %3770)  ; FMad(a,b,c)
  %3772 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %3773 = extractvalue %dx.types.CBufRet.f32 %3772, 0
  %3774 = extractvalue %dx.types.CBufRet.f32 %3772, 1
  %3775 = extractvalue %dx.types.CBufRet.f32 %3772, 3
  %3776 = fmul fast float %3775, %3764
  %3777 = fmul fast float %3775, %3768
  %3778 = fadd fast float %3776, %3773
  %3779 = fadd fast float %3777, %3774
  %3780 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %3781 = extractvalue %dx.types.CBufRet.f32 %3780, 0
  %3782 = extractvalue %dx.types.CBufRet.f32 %3780, 1
  %3783 = fsub fast float %3778, %3781
  %3784 = fsub fast float %3779, %3782
  %3785 = fcmp fast olt float %3783, 0.000000e+00
  %3786 = fcmp fast olt float %3784, 0.000000e+00
  %3787 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %3788 = extractvalue %dx.types.CBufRet.f32 %3787, 0
  %3789 = extractvalue %dx.types.CBufRet.f32 %3787, 1
  %3790 = extractvalue %dx.types.CBufRet.f32 %3787, 2
  %3791 = extractvalue %dx.types.CBufRet.f32 %3787, 3
  %3792 = select i1 %3785, float %3788, float %3790
  %3793 = select i1 %3786, float %3789, float %3791
  %3794 = fmul fast float %3792, %3783
  %3795 = fmul fast float %3793, %3784
  %3796 = call float @dx.op.unary.f32(i32 6, float %3794)  ; FAbs(value)
  %3797 = call float @dx.op.unary.f32(i32 6, float %3795)  ; FAbs(value)
  %3798 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %3799 = extractvalue %dx.types.CBufRet.f32 %3798, 0
  %3800 = call float @dx.op.binary.f32(i32 35, float %3796, float %3797)  ; FMax(a,b)
  %3801 = fsub fast float %3799, %3800
  %3802 = call float @dx.op.unary.f32(i32 7, float %3801)  ; Saturate(value)
  %3803 = fcmp fast ogt float %3802, 0.000000e+00
  br i1 %3803, label %3804, label %3845, !dx.controlflow.hints !144

; <label>:3804                                    ; preds = %3745
  %3805 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %40, float %3778, float %3779, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3806 = extractvalue %dx.types.ResRet.f32 %3805, 1
  %3807 = fcmp fast ogt float %3806, 0.000000e+00
  br i1 %3807, label %3808, label %3841

; <label>:3808                                    ; preds = %3804
  %3809 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %40, float %3778, float %3779, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3810 = extractvalue %dx.types.ResRet.f32 %3809, 0
  %3811 = extractvalue %dx.types.ResRet.f32 %3809, 1
  %3812 = extractvalue %dx.types.ResRet.f32 %3809, 2
  %3813 = extractvalue %dx.types.ResRet.f32 %3809, 3
  %3814 = fsub fast float 1.000000e+00, %3760
  %3815 = fsub fast float %3814, %3771
  %3816 = fmul fast float %3815, 0x400921FB60000000
  %3817 = fadd fast float %3816, 0x3FF921FB60000000
  %3818 = call float @dx.op.unary.f32(i32 13, float %3817)  ; Sin(value)
  %3819 = fadd fast float %3818, -1.000000e+00
  %3820 = fmul fast float %3819, 0x3FD45F3060000000
  %3821 = fmul fast float %3815, 0x401921FB60000000
  %3822 = fadd fast float %3821, 0x400921FB60000000
  %3823 = call float @dx.op.unary.f32(i32 13, float %3822)  ; Sin(value)
  %3824 = fadd fast float %3823, 0x3E7777A5C0000000
  %3825 = fmul fast float %3824, 0x3FC45F3060000000
  %3826 = fmul fast float %3815, 0x4022D97C80000000
  %3827 = fadd fast float %3826, 0x4012D97C80000000
  %3828 = call float @dx.op.unary.f32(i32 13, float %3827)  ; Sin(value)
  %3829 = fadd fast float %3828, 1.000000e+00
  %3830 = fmul fast float %3829, 0x3FBB2995E0000000
  %3831 = fmul fast float %3815, 0x402921FB60000000
  %3832 = fadd fast float %3831, 0x401921FB60000000
  %3833 = call float @dx.op.unary.f32(i32 13, float %3832)  ; Sin(value)
  %3834 = fadd fast float %3833, 0xBE8777A5C0000000
  %3835 = fmul fast float %3834, 0x3FB45F3060000000
  %3836 = call float @dx.op.dot4.f32(i32 56, float %3810, float %3811, float %3812, float %3813, float %3820, float %3825, float %3830, float %3835)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3837 = fmul fast float %3836, 0xBFF7154760000000
  %3838 = call float @dx.op.unary.f32(i32 21, float %3837)  ; Exp(value)
  %3839 = call float @dx.op.unary.f32(i32 7, float %3838)  ; Saturate(value)
  %3840 = fadd float %3839, -1.000000e+00
  br label %3841

; <label>:3841                                    ; preds = %3808, %3804
  %3842 = phi float [ %3840, %3808 ], [ 0.000000e+00, %3804 ]
  %3843 = fmul fast float %3842, %3802
  %3844 = fadd fast float %3843, 1.000000e+00
  br label %3845

; <label>:3845                                    ; preds = %3841, %3745
  %3846 = phi float [ %3844, %3841 ], [ 1.000000e+00, %3745 ]
  %3847 = fmul fast float %3846, %3741
  %3848 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %3849 = extractvalue %dx.types.CBufRet.f32 %3848, 0
  %3850 = extractvalue %dx.types.CBufRet.f32 %3848, 1
  %3851 = extractvalue %dx.types.CBufRet.f32 %3848, 2
  %3852 = fadd fast float %3849, %367
  %3853 = fadd fast float %3850, %368
  %3854 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %3855 = extractvalue %dx.types.CBufRet.f32 %3854, 1
  %3856 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %3857 = extractvalue %dx.types.CBufRet.f32 %3856, 0
  %3858 = extractvalue %dx.types.CBufRet.f32 %3856, 1
  %3859 = extractvalue %dx.types.CBufRet.f32 %3856, 2
  %3860 = fsub fast float -0.000000e+00, %3852
  %3861 = fsub fast float -0.000000e+00, %3853
  %3862 = fsub fast float %499, %3851
  %3863 = fadd fast float %3862, %3855
  %3864 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %3860, float %3861, float %3863)  ; Dot3(ax,ay,az,bx,by,bz)
  %3865 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %3857, float %3858, float %3859)  ; Dot3(ax,ay,az,bx,by,bz)
  %3866 = fdiv fast float 1.000000e+00, %3865
  %3867 = fmul fast float %3866, %3864
  %3868 = fmul fast float %3857, %3867
  %3869 = fmul fast float %3858, %3867
  %3870 = fadd fast float %3868, %3852
  %3871 = fadd fast float %3869, %3853
  %3872 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %3873 = extractvalue %dx.types.CBufRet.f32 %3872, 0
  %3874 = extractvalue %dx.types.CBufRet.f32 %3872, 1
  %3875 = fsub fast float %3870, %3873
  %3876 = fsub fast float %3871, %3874
  %3877 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %3878 = extractvalue %dx.types.CBufRet.f32 %3877, 2
  %3879 = extractvalue %dx.types.CBufRet.f32 %3877, 3
  %3880 = fmul fast float %3875, %3878
  %3881 = fmul fast float %3876, %3879
  %3882 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %44, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %3883 = extractvalue %dx.types.CBufRet.i32 %3882, 3
  %3884 = icmp eq i32 %3883, 0
  br i1 %3884, label %3890, label %3885

; <label>:3885                                    ; preds = %3845
  %3886 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %39, float %3880, float %3881, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3887 = extractvalue %dx.types.ResRet.f32 %3886, 0
  %3888 = extractvalue %dx.types.ResRet.f32 %3886, 1
  %3889 = extractvalue %dx.types.ResRet.f32 %3886, 2
  br label %3895

; <label>:3890                                    ; preds = %3845
  %3891 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %40, float %3880, float %3881, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3892 = extractvalue %dx.types.ResRet.f32 %3891, 0
  %3893 = extractvalue %dx.types.ResRet.f32 %3891, 1
  %3894 = extractvalue %dx.types.ResRet.f32 %3891, 2
  br label %3895

; <label>:3895                                    ; preds = %3890, %3885
  %3896 = phi float [ %3887, %3885 ], [ %3892, %3890 ]
  %3897 = phi float [ %3888, %3885 ], [ %3893, %3890 ]
  %3898 = phi float [ %3889, %3885 ], [ %3894, %3890 ]
  %3899 = extractvalue %dx.types.CBufRet.f32 %3854, 2
  %3900 = fmul fast float %3899, %3896
  %3901 = extractvalue %dx.types.CBufRet.f32 %3854, 0
  %3902 = fsub fast float %3867, %3901
  %3903 = fsub fast float %3902, %3900
  %3904 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3903)  ; FMax(a,b)
  %3905 = fmul fast float %3904, %3897
  %3906 = call float @dx.op.binary.f32(i32 36, float %3898, float %3905)  ; FMin(a,b)
  %3907 = fmul fast float %3906, 0xBFF7154760000000
  %3908 = call float @dx.op.unary.f32(i32 21, float %3907)  ; Exp(value)
  %3909 = fmul fast float %3847, %3908
  br label %3910

; <label>:3910                                    ; preds = %3895, %3740
  %3911 = phi float [ %3909, %3895 ], [ %3741, %3740 ]
  %3912 = call float @dx.op.binary.f32(i32 36, float %3911, float %3911)  ; FMin(a,b)
  %3913 = call float @dx.op.binary.f32(i32 36, float %3911, float %3912)  ; FMin(a,b)
  %3914 = fcmp fast ogt float %3913, 0.000000e+00
  br i1 %3914, label %3915, label %4038, !dx.controlflow.hints !145

; <label>:3915                                    ; preds = %3910
  %3916 = fmul fast float %3911, %2633
  %3917 = fmul fast float %3911, %2634
  %3918 = fmul fast float %3911, %2635
  %3919 = fsub fast float %2622, %502
  %3920 = fsub fast float %2623, %503
  %3921 = fsub fast float %2624, %504
  %3922 = call float @dx.op.dot3.f32(i32 55, float %3919, float %3920, float %3921, float %3919, float %3920, float %3921)  ; Dot3(ax,ay,az,bx,by,bz)
  %3923 = call float @dx.op.unary.f32(i32 25, float %3922)  ; Rsqrt(value)
  %3924 = fmul fast float %3923, %3919
  %3925 = fmul fast float %3923, %3920
  %3926 = fmul fast float %3923, %3921
  %3927 = call float @dx.op.dot3.f32(i32 55, float %2622, float %2623, float %2624, float %289, float %290, float %291)  ; Dot3(ax,ay,az,bx,by,bz)
  %3928 = call float @dx.op.dot3.f32(i32 55, float %505, float %506, float %507, float %3924, float %3925, float %3926)  ; Dot3(ax,ay,az,bx,by,bz)
  %3929 = call float @dx.op.unary.f32(i32 7, float %3927)  ; Saturate(value)
  %3930 = fmul fast float %3929, %3929
  %3931 = fmul fast float %3930, 0x47DE623840000000
  %3932 = call float @dx.op.unary.f32(i32 7, float %3931)  ; Saturate(value)
  %3933 = fmul fast float %3932, %3929
  %3934 = call float @dx.op.dot3.f32(i32 55, float %289, float %290, float %291, float %3924, float %3925, float %3926)  ; Dot3(ax,ay,az,bx,by,bz)
  %3935 = fmul fast float %3934, %3934
  %3936 = call float @dx.op.unary.f32(i32 6, float %3927)  ; FAbs(value)
  %3937 = fsub fast float 1.000000e+00, %528
  %3938 = fmul fast float %510, %510
  %3939 = fmul fast float %3938, %3937
  %3940 = fadd fast float %3939, %528
  %3941 = bitcast float %3940 to i32
  %3942 = ashr i32 %3941, 1
  %3943 = add nsw i32 %3942, 532487669
  %3944 = bitcast i32 %3943 to float
  %3945 = fadd fast float %3944, %510
  %3946 = fmul fast float %528, %3935
  %3947 = fsub fast float 1.000000e+00, %3935
  %3948 = fadd fast float %3947, %3946
  %3949 = fmul fast float %3936, %3936
  %3950 = fmul fast float %3949, %3937
  %3951 = fadd fast float %3950, %528
  %3952 = bitcast float %3951 to i32
  %3953 = ashr i32 %3952, 1
  %3954 = add nsw i32 %3953, 532487669
  %3955 = bitcast i32 %3954 to float
  %3956 = fadd fast float %3955, %3936
  %3957 = fmul fast float %3948, %3948
  %3958 = fmul fast float %3957, %3945
  %3959 = fmul fast float %3958, %3956
  %3960 = fdiv fast float 0x3FF0A00000000000, %3959
  %3961 = fmul fast float %3960, %528
  %3962 = call float @dx.op.unary.f32(i32 6, float %3928)  ; FAbs(value)
  %3963 = fsub fast float 1.000000e+00, %3962
  %3964 = bitcast float %3963 to i32
  %3965 = sitofp i32 %3964 to float
  %3966 = fmul fast float %3965, 5.000000e+00
  %3967 = fadd fast float %3966, 0xC1EFBF8940000000
  %3968 = fptosi float %3967 to i32
  %3969 = bitcast i32 %3968 to float
  %3970 = fsub fast float 1.000000e+00, %490
  %3971 = fsub fast float 1.000000e+00, %491
  %3972 = fsub fast float 1.000000e+00, %508
  %3973 = fmul fast float %3969, %3970
  %3974 = fmul fast float %3969, %3971
  %3975 = fmul fast float %3969, %3972
  %3976 = fadd fast float %3973, %490
  %3977 = fadd fast float %3974, %491
  %3978 = fadd fast float %3975, %508
  %3979 = fmul fast float %3927, 9.843750e-01
  %3980 = fadd fast float %3979, 7.812500e-03
  %3981 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %40, float %3980, float %2102, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3982 = extractvalue %dx.types.ResRet.f32 %3981, 2
  %3983 = extractvalue %dx.types.ResRet.f32 %3981, 3
  %3984 = fmul fast float %3982, %490
  %3985 = fmul fast float %3982, %491
  %3986 = fmul fast float %3982, %508
  %3987 = fadd fast float %3984, %3983
  %3988 = fadd fast float %3985, %3983
  %3989 = fadd fast float %3986, %3983
  %3990 = call float @dx.op.binary.f32(i32 35, float %3988, float %3989)  ; FMax(a,b)
  %3991 = call float @dx.op.binary.f32(i32 35, float %3987, float %3990)  ; FMax(a,b)
  %3992 = fsub fast float 1.000000e+00, %3991
  %3993 = fsub fast float -0.000000e+00, %289
  %3994 = fsub fast float -0.000000e+00, %290
  %3995 = fsub fast float -0.000000e+00, %291
  %3996 = call float @dx.op.dot3.f32(i32 55, float %2622, float %2623, float %2624, float %3993, float %3994, float %3995)  ; Dot3(ax,ay,az,bx,by,bz)
  %3997 = call float @dx.op.unary.f32(i32 7, float %3996)  ; Saturate(value)
  %3998 = fmul fast float %3997, 9.843750e-01
  %3999 = fadd fast float %3998, 7.812500e-03
  %4000 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %40, float %3999, float %2102, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4001 = extractvalue %dx.types.ResRet.f32 %4000, 2
  %4002 = extractvalue %dx.types.ResRet.f32 %4000, 3
  %4003 = fmul fast float %4001, %490
  %4004 = fmul fast float %4001, %491
  %4005 = fmul fast float %4001, %508
  %4006 = fadd fast float %4003, %4002
  %4007 = fadd fast float %4004, %4002
  %4008 = fadd fast float %4005, %4002
  %4009 = call float @dx.op.binary.f32(i32 35, float %4007, float %4008)  ; FMax(a,b)
  %4010 = call float @dx.op.binary.f32(i32 35, float %4006, float %4009)  ; FMax(a,b)
  %4011 = fsub fast float 1.000000e+00, %4010
  %4012 = fmul fast float %4011, %3997
  %4013 = fmul fast float %4012, %308
  %4014 = fmul fast float %4012, %309
  %4015 = fmul fast float %4012, %310
  %4016 = fmul fast float %3992, %3933
  %4017 = fadd fast float %4013, %4016
  %4018 = fadd fast float %4014, %4016
  %4019 = fadd fast float %4015, %4016
  %4020 = fmul fast float %4017, %3916
  %4021 = fmul fast float %4018, %3917
  %4022 = fmul fast float %4019, %3918
  %4023 = fadd fast float %4020, %2613
  %4024 = fadd fast float %4021, %2615
  %4025 = fadd fast float %4022, %2617
  %4026 = fmul fast float %3933, %3916
  %4027 = fmul fast float %4026, %3961
  %4028 = fmul fast float %4027, %3976
  %4029 = fmul fast float %3933, %3917
  %4030 = fmul fast float %4029, %3961
  %4031 = fmul fast float %4030, %3977
  %4032 = fmul fast float %3933, %3918
  %4033 = fmul fast float %4032, %3961
  %4034 = fmul fast float %4033, %3978
  %4035 = fadd fast float %4028, %2606
  %4036 = fadd fast float %4031, %2607
  %4037 = fadd fast float %4034, %2608
  br label %4038

; <label>:4038                                    ; preds = %3915, %3910, %2602
  %4039 = phi float [ %2606, %2602 ], [ %2606, %3910 ], [ %4035, %3915 ]
  %4040 = phi float [ %2607, %2602 ], [ %2607, %3910 ], [ %4036, %3915 ]
  %4041 = phi float [ %2608, %2602 ], [ %2608, %3910 ], [ %4037, %3915 ]
  %4042 = phi float [ %2613, %2602 ], [ %2613, %3910 ], [ %4023, %3915 ]
  %4043 = phi float [ %2615, %2602 ], [ %2615, %3910 ], [ %4024, %3915 ]
  %4044 = phi float [ %2617, %2602 ], [ %2617, %3910 ], [ %4025, %3915 ]
  %4045 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %44, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %4046 = extractvalue %dx.types.CBufRet.i32 %4045, 0
  %4047 = icmp eq i32 %4046, 0
  br i1 %4047, label %4588, label %4048

; <label>:4048                                    ; preds = %4038
  %4049 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %4050 = extractvalue %dx.types.CBufRet.f32 %4049, 2
  %4051 = extractvalue %dx.types.CBufRet.f32 %4049, 3
  %4052 = fmul fast float %4050, %92
  %4053 = fmul fast float %4051, %93
  %4054 = fptoui float %4052 to i32
  %4055 = fptoui float %4053 to i32
  %4056 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %4057 = extractvalue %dx.types.CBufRet.f32 %4056, 0
  %4058 = extractvalue %dx.types.CBufRet.f32 %4056, 2
  %4059 = extractvalue %dx.types.CBufRet.f32 %4056, 3
  %4060 = fadd fast float %333, -4.000000e+00
  %4061 = call float @dx.op.binary.f32(i32 35, float %4060, float 0.000000e+00)  ; FMax(a,b)
  %4062 = fadd fast float %4061, %4057
  %4063 = fmul fast float %4062, %4058
  %4064 = call float @dx.op.unary.f32(i32 23, float %4063)  ; Log(value)
  %4065 = fmul fast float %4064, %4059
  %4066 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %4067 = extractvalue %dx.types.CBufRet.f32 %4066, 2
  %4068 = fmul fast float %4065, %4067
  %4069 = call float @dx.op.unary.f32(i32 7, float %4068)  ; Saturate(value)
  %4070 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %44, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %4071 = extractvalue %dx.types.CBufRet.i32 %4070, 1
  %4072 = add i32 %4071, -1
  %4073 = uitofp i32 %4071 to float
  %4074 = fmul fast float %4073, %4069
  %4075 = fptoui float %4074 to i32
  %4076 = call i32 @dx.op.binary.i32(i32 40, i32 %4075, i32 %4072)  ; UMin(a,b)
  %4077 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %44, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %4078 = extractvalue %dx.types.CBufRet.i32 %4077, 2
  %4079 = extractvalue %dx.types.CBufRet.i32 %4077, 3
  %4080 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4055, i32 %4078, i32 %4054)  ; UMad(a,b,c)
  %4081 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4076, i32 %4079, i32 %4080)  ; UMad(a,b,c)
  %4082 = add nsw i32 %4046, -1
  %4083 = call i32 @dx.op.binary.i32(i32 37, i32 %4082, i32 0)  ; IMax(a,b)
  %4084 = call float @dx.op.binary.f32(i32 35, float %333, float 0.000000e+00)  ; FMax(a,b)
  %4085 = fptoui float %4084 to i32
  %4086 = lshr i32 %4085, 5
  %4087 = call i32 @dx.op.binary.i32(i32 40, i32 %4086, i32 8191)  ; UMin(a,b)
  %4088 = shl i32 %4087, 2
  %4089 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %4088, i32 undef)  ; BufferLoad(srv,index,wot)
  %4090 = extractvalue %dx.types.ResRet.i32 %4089, 0
  %4091 = lshr i32 %4090, 16
  %4092 = and i32 %4090, 65535
  %4093 = lshr i32 %4090, 21
  %4094 = lshr i32 %4092, 5
  %4095 = call i32 @dx.op.binary.i32(i32 40, i32 %4094, i32 %4083)  ; UMin(a,b)
  %4096 = icmp ugt i32 %4093, %4095
  br i1 %4096, label %4588, label %4097

; <label>:4097                                    ; preds = %4048
  br label %4098

; <label>:4098                                    ; preds = %4578, %4097
  %4099 = phi i32 [ %4585, %4578 ], [ %4093, %4097 ]
  %4100 = phi float [ %4579, %4578 ], [ %4039, %4097 ]
  %4101 = phi float [ %4580, %4578 ], [ %4040, %4097 ]
  %4102 = phi float [ %4581, %4578 ], [ %4041, %4097 ]
  %4103 = phi float [ %4582, %4578 ], [ %4042, %4097 ]
  %4104 = phi float [ %4583, %4578 ], [ %4043, %4097 ]
  %4105 = phi float [ %4584, %4578 ], [ %4044, %4097 ]
  %4106 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %44, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %4107 = extractvalue %dx.types.CBufRet.i32 %4106, 0
  %4108 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4081, i32 %4107, i32 %4099)  ; UMad(a,b,c)
  %4109 = shl i32 %4108, 2
  %4110 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %4109, i32 undef)  ; BufferLoad(srv,index,wot)
  %4111 = extractvalue %dx.types.ResRet.i32 %4110, 0
  %4112 = shl i32 %4099, 5
  %4113 = sub nsw i32 %4091, %4112
  %4114 = call i32 @dx.op.binary.i32(i32 37, i32 %4113, i32 0)  ; IMax(a,b)
  %4115 = call i32 @dx.op.binary.i32(i32 38, i32 %4114, i32 31)  ; IMin(a,b)
  %4116 = sub nsw i32 1, %4091
  %4117 = add nsw i32 %4116, %4092
  %4118 = call i32 @dx.op.binary.i32(i32 37, i32 %4117, i32 0)  ; IMax(a,b)
  %4119 = call i32 @dx.op.binary.i32(i32 38, i32 %4118, i32 32)  ; IMin(a,b)
  %4120 = and i32 %4119, 31
  %4121 = shl i32 -1, %4120
  %4122 = xor i32 %4121, -1
  %4123 = and i32 %4115, 31
  %4124 = shl i32 %4122, %4123
  %4125 = icmp eq i32 %4119, 32
  %4126 = select i1 %4125, i32 -1, i32 %4124
  %4127 = and i32 %4126, %4111
  %4128 = icmp eq i32 %4127, 0
  br i1 %4128, label %4578, label %4129

; <label>:4129                                    ; preds = %4098
  br label %4130

; <label>:4130                                    ; preds = %4264, %4129
  %4131 = phi i32 [ %4142, %4264 ], [ %4127, %4129 ]
  %4132 = phi float [ %4265, %4264 ], [ %4100, %4129 ]
  %4133 = phi float [ %4266, %4264 ], [ %4101, %4129 ]
  %4134 = phi float [ %4267, %4264 ], [ %4102, %4129 ]
  %4135 = phi float [ %4268, %4264 ], [ %4103, %4129 ]
  %4136 = phi float [ %4269, %4264 ], [ %4104, %4129 ]
  %4137 = phi float [ %4270, %4264 ], [ %4105, %4129 ]
  %4138 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4131)  ; FirstbitLo(value)
  %4139 = add i32 %4138, %4112
  %4140 = and i32 %4138, 31
  %4141 = shl i32 1, %4140
  %4142 = xor i32 %4141, %4131
  %4143 = mul i32 %4139, 112
  %4144 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %4143, i32 undef)  ; BufferLoad(srv,index,wot)
  %4145 = extractvalue %dx.types.ResRet.f32 %4144, 0
  %4146 = extractvalue %dx.types.ResRet.f32 %4144, 1
  %4147 = extractvalue %dx.types.ResRet.f32 %4144, 2
  %4148 = or i32 %4143, 12
  %4149 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %4148, i32 undef)  ; BufferLoad(srv,index,wot)
  %4150 = extractvalue %dx.types.ResRet.f32 %4149, 0
  %4151 = add i32 %4143, 16
  %4152 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %4151, i32 undef)  ; BufferLoad(srv,index,wot)
  %4153 = extractvalue %dx.types.ResRet.f32 %4152, 0
  %4154 = extractvalue %dx.types.ResRet.f32 %4152, 1
  %4155 = extractvalue %dx.types.ResRet.f32 %4152, 2
  %4156 = add i32 %4143, 28
  %4157 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %4156, i32 undef)  ; BufferLoad(srv,index,wot)
  %4158 = extractvalue %dx.types.ResRet.i32 %4157, 0
  %4159 = add i32 %4143, 44
  %4160 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %4159, i32 undef)  ; BufferLoad(srv,index,wot)
  %4161 = extractvalue %dx.types.ResRet.f32 %4160, 0
  %4162 = add i32 %4143, 48
  %4163 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %4162, i32 undef)  ; BufferLoad(srv,index,wot)
  %4164 = extractvalue %dx.types.ResRet.f32 %4163, 0
  %4165 = extractvalue %dx.types.ResRet.f32 %4163, 1
  %4166 = extractvalue %dx.types.ResRet.f32 %4163, 2
  %4167 = extractvalue %dx.types.ResRet.f32 %4163, 3
  %4168 = add i32 %4143, 64
  %4169 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %4168, i32 undef)  ; BufferLoad(srv,index,wot)
  %4170 = extractvalue %dx.types.ResRet.f32 %4169, 0
  %4171 = extractvalue %dx.types.ResRet.f32 %4169, 1
  %4172 = extractvalue %dx.types.ResRet.f32 %4169, 2
  %4173 = extractvalue %dx.types.ResRet.f32 %4169, 3
  %4174 = add i32 %4143, 80
  %4175 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %4174, i32 undef)  ; BufferLoad(srv,index,wot)
  %4176 = extractvalue %dx.types.ResRet.f32 %4175, 1
  %4177 = extractvalue %dx.types.ResRet.f32 %4175, 2
  %4178 = add i32 %4143, 92
  %4179 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %4178, i32 undef)  ; BufferLoad(srv,index,wot)
  %4180 = extractvalue %dx.types.ResRet.i32 %4179, 0
  %4181 = call float @dx.op.dot3.f32(i32 55, float %4145, float %4146, float %4147, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4182 = select i1 %129, float %4176, float %4145
  %4183 = select i1 %129, float %4181, float %4146
  %4184 = select i1 %129, float %4177, float %4147
  %4185 = and i32 %4180, 65535
  %4186 = uitofp i32 %4185 to float
  %4187 = lshr i32 %4180, 16
  %4188 = uitofp i32 %4187 to float
  %4189 = and i32 %4158, 65535
  %4190 = and i32 %4158, 50331648
  %4191 = icmp eq i32 %4190, 33554432
  %4192 = fsub fast float %4164, %367
  %4193 = fsub fast float %4165, %368
  %4194 = fsub fast float %4166, %369
  %4195 = call float @dx.op.dot3.f32(i32 55, float %4192, float %4193, float %4194, float %4192, float %4193, float %4194)  ; Dot3(ax,ay,az,bx,by,bz)
  %4196 = call float @dx.op.unary.f32(i32 24, float %4195)  ; Sqrt(value)
  %4197 = fdiv fast float 1.000000e+00, %4196
  %4198 = fmul fast float %4197, %4192
  %4199 = fmul fast float %4197, %4193
  %4200 = fmul fast float %4197, %4194
  %4201 = fadd fast float %4196, %4150
  %4202 = fdiv fast float 1.000000e+00, %4201
  %4203 = fmul float %4161, %4202
  %4204 = fmul float %4203, %4203
  %4205 = call float @dx.op.unary.f32(i32 7, float %4204)  ; Saturate(value)
  br i1 %4191, label %4206, label %4227

; <label>:4206                                    ; preds = %4130
  %4207 = fmul fast float %4172, %4153
  %4208 = fmul fast float %4172, %4154
  %4209 = fmul fast float %4172, %4155
  %4210 = fadd fast float %4192, %4207
  %4211 = fadd fast float %4193, %4208
  %4212 = fadd fast float %4194, %4209
  %4213 = call float @dx.op.dot3.f32(i32 55, float %4210, float %4211, float %4212, float %4210, float %4211, float %4212)  ; Dot3(ax,ay,az,bx,by,bz)
  %4214 = call float @dx.op.unary.f32(i32 25, float %4213)  ; Rsqrt(value)
  %4215 = fmul fast float %4214, %4210
  %4216 = fmul fast float %4214, %4211
  %4217 = fmul fast float %4214, %4212
  %4218 = fsub fast float %367, %4164
  %4219 = fsub fast float %368, %4165
  %4220 = fsub fast float %369, %4166
  %4221 = fsub fast float -0.000000e+00, %4218
  %4222 = fsub fast float -0.000000e+00, %4219
  %4223 = fsub fast float -0.000000e+00, %4220
  %4224 = call float @dx.op.dot3.f32(i32 55, float %4221, float %4222, float %4223, float %4153, float %4154, float %4155)  ; Dot3(ax,ay,az,bx,by,bz)
  %4225 = fcmp fast ogt float %4224, 0.000000e+00
  %4226 = uitofp i1 %4225 to float
  br label %4227

; <label>:4227                                    ; preds = %4206, %4130
  %4228 = phi float [ %4226, %4206 ], [ 1.000000e+00, %4130 ]
  %4229 = phi float [ %4215, %4206 ], [ %4198, %4130 ]
  %4230 = phi float [ %4216, %4206 ], [ %4199, %4130 ]
  %4231 = phi float [ %4217, %4206 ], [ %4200, %4130 ]
  %4232 = call float @dx.op.dot3.f32(i32 55, float %4153, float %4154, float %4155, float %4229, float %4230, float %4231)  ; Dot3(ax,ay,az,bx,by,bz)
  %4233 = fmul fast float %4232, %4232
  %4234 = call float @dx.op.unary.f32(i32 7, float %4233)  ; Saturate(value)
  %4235 = fsub fast float 1.000000e+00, %4234
  %4236 = fmul fast float %4235, 5.000000e-01
  %4237 = fcmp fast ogt float %4232, 0.000000e+00
  %4238 = fsub fast float 1.000000e+00, %4236
  %4239 = select i1 %4237, float %4236, float %4238
  %4240 = fmul fast float %4239, %4188
  %4241 = fadd fast float %4240, %4186
  %4242 = fmul fast float %4241, 0x3EF0001000000000
  %4243 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %40, float %4242, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4244 = extractvalue %dx.types.ResRet.f32 %4243, 0
  %4245 = fmul fast float %4232, %4170
  %4246 = fadd fast float %4245, %4171
  %4247 = call float @dx.op.unary.f32(i32 7, float %4246)  ; Saturate(value)
  %4248 = select i1 %4191, float 1.000000e+00, float %4247
  %4249 = select i1 %4191, float %4247, float 1.000000e+00
  %4250 = fmul fast float %4196, %4167
  %4251 = fsub fast float 1.000000e+00, %4250
  %4252 = fmul fast float %4251, %4173
  %4253 = call float @dx.op.unary.f32(i32 7, float %4252)  ; Saturate(value)
  %4254 = fmul fast float %4253, %4249
  %4255 = fmul fast float %4254, 2.000000e+00
  %4256 = fsub fast float 3.000000e+00, %4255
  %4257 = fmul fast float %4244, %4228
  %4258 = fmul fast float %4254, %4254
  %4259 = fmul fast float %4258, %4257
  %4260 = fmul fast float %4259, %4256
  %4261 = call float @dx.op.binary.f32(i32 36, float %4260, float %4260)  ; FMin(a,b)
  %4262 = call float @dx.op.binary.f32(i32 36, float %4260, float %4261)  ; FMin(a,b)
  %4263 = fcmp fast ogt float %4262, 0.000000e+00
  br i1 %4263, label %4272, label %4264, !dx.controlflow.hints !146

; <label>:4264                                    ; preds = %4423, %4418, %4227
  %4265 = phi float [ %4132, %4418 ], [ %4132, %4227 ], [ %4574, %4423 ]
  %4266 = phi float [ %4133, %4418 ], [ %4133, %4227 ], [ %4575, %4423 ]
  %4267 = phi float [ %4134, %4418 ], [ %4134, %4227 ], [ %4576, %4423 ]
  %4268 = phi float [ %4135, %4418 ], [ %4135, %4227 ], [ %4562, %4423 ]
  %4269 = phi float [ %4136, %4418 ], [ %4136, %4227 ], [ %4563, %4423 ]
  %4270 = phi float [ %4137, %4418 ], [ %4137, %4227 ], [ %4564, %4423 ]
  %4271 = icmp eq i32 %4131, %4141
  br i1 %4271, label %4577, label %4130

; <label>:4272                                    ; preds = %4227
  %4273 = icmp eq i32 %4189, 255
  br i1 %4273, label %4418, label %4274, !dx.controlflow.hints !147

; <label>:4274                                    ; preds = %4272
  %4275 = mul nuw nsw i32 %4189, 176
  %4276 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4275, i32 undef)  ; BufferLoad(srv,index,wot)
  %4277 = extractvalue %dx.types.ResRet.f32 %4276, 0
  %4278 = extractvalue %dx.types.ResRet.f32 %4276, 1
  %4279 = extractvalue %dx.types.ResRet.f32 %4276, 2
  %4280 = extractvalue %dx.types.ResRet.f32 %4276, 3
  %4281 = add nuw nsw i32 %4275, 16
  %4282 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4281, i32 undef)  ; BufferLoad(srv,index,wot)
  %4283 = extractvalue %dx.types.ResRet.f32 %4282, 0
  %4284 = extractvalue %dx.types.ResRet.f32 %4282, 1
  %4285 = add nuw nsw i32 %4275, 32
  %4286 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4285, i32 undef)  ; BufferLoad(srv,index,wot)
  %4287 = extractvalue %dx.types.ResRet.f32 %4286, 0
  %4288 = extractvalue %dx.types.ResRet.f32 %4286, 1
  %4289 = extractvalue %dx.types.ResRet.f32 %4286, 2
  %4290 = add nuw nsw i32 %4275, 48
  %4291 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4290, i32 undef)  ; BufferLoad(srv,index,wot)
  %4292 = extractvalue %dx.types.ResRet.f32 %4291, 0
  %4293 = extractvalue %dx.types.ResRet.f32 %4291, 1
  %4294 = extractvalue %dx.types.ResRet.f32 %4291, 2
  %4295 = extractvalue %dx.types.ResRet.f32 %4291, 3
  %4296 = add nuw nsw i32 %4275, 64
  %4297 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4296, i32 undef)  ; BufferLoad(srv,index,wot)
  %4298 = extractvalue %dx.types.ResRet.f32 %4297, 0
  %4299 = extractvalue %dx.types.ResRet.f32 %4297, 1
  %4300 = extractvalue %dx.types.ResRet.f32 %4297, 2
  %4301 = extractvalue %dx.types.ResRet.f32 %4297, 3
  %4302 = add nuw nsw i32 %4275, 80
  %4303 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4302, i32 undef)  ; BufferLoad(srv,index,wot)
  %4304 = extractvalue %dx.types.ResRet.f32 %4303, 0
  %4305 = extractvalue %dx.types.ResRet.f32 %4303, 1
  %4306 = extractvalue %dx.types.ResRet.f32 %4303, 2
  %4307 = extractvalue %dx.types.ResRet.f32 %4303, 3
  %4308 = add nuw nsw i32 %4275, 96
  %4309 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4308, i32 undef)  ; BufferLoad(srv,index,wot)
  %4310 = extractvalue %dx.types.ResRet.f32 %4309, 0
  %4311 = extractvalue %dx.types.ResRet.f32 %4309, 1
  %4312 = extractvalue %dx.types.ResRet.f32 %4309, 2
  %4313 = extractvalue %dx.types.ResRet.f32 %4309, 3
  %4314 = bitcast float %4284 to i32
  %4315 = fmul fast float %4289, %289
  %4316 = fmul fast float %4289, %290
  %4317 = fmul fast float %4289, %291
  %4318 = fadd fast float %4315, %367
  %4319 = fadd fast float %4316, %368
  %4320 = fadd fast float %4317, %369
  %4321 = fmul fast float %4318, %4292
  %4322 = call float @dx.op.tertiary.f32(i32 46, float %4319, float %4298, float %4321)  ; FMad(a,b,c)
  %4323 = call float @dx.op.tertiary.f32(i32 46, float %4320, float %4304, float %4322)  ; FMad(a,b,c)
  %4324 = fadd fast float %4323, %4310
  %4325 = fmul fast float %4318, %4293
  %4326 = call float @dx.op.tertiary.f32(i32 46, float %4319, float %4299, float %4325)  ; FMad(a,b,c)
  %4327 = call float @dx.op.tertiary.f32(i32 46, float %4320, float %4305, float %4326)  ; FMad(a,b,c)
  %4328 = fadd fast float %4327, %4311
  %4329 = fmul fast float %4318, %4294
  %4330 = call float @dx.op.tertiary.f32(i32 46, float %4319, float %4300, float %4329)  ; FMad(a,b,c)
  %4331 = call float @dx.op.tertiary.f32(i32 46, float %4320, float %4306, float %4330)  ; FMad(a,b,c)
  %4332 = fadd fast float %4331, %4312
  %4333 = fmul fast float %4318, %4295
  %4334 = call float @dx.op.tertiary.f32(i32 46, float %4319, float %4301, float %4333)  ; FMad(a,b,c)
  %4335 = call float @dx.op.tertiary.f32(i32 46, float %4320, float %4307, float %4334)  ; FMad(a,b,c)
  %4336 = fadd fast float %4335, %4313
  %4337 = fdiv fast float %4324, %4336
  %4338 = fdiv fast float %4328, %4336
  %4339 = fdiv fast float %4332, %4336
  %4340 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %4339)  ; FMax(a,b)
  %4341 = fmul fast float %278, 0x401921FB60000000
  %4342 = call float @dx.op.unary.f32(i32 13, float %4341)  ; Sin(value)
  %4343 = call float @dx.op.unary.f32(i32 12, float %4341)  ; Cos(value)
  %4344 = fmul fast float %4343, %4288
  %4345 = call float @dx.op.tertiary.f32(i32 46, float %4342, float %4288, float 0.000000e+00)  ; FMad(a,b,c)
  %4346 = fmul fast float %4288, %4342
  %4347 = fsub fast float -0.000000e+00, %4346
  %4348 = call float @dx.op.tertiary.f32(i32 46, float %4343, float %4288, float 0.000000e+00)  ; FMad(a,b,c)
  br label %4349

; <label>:4349                                    ; preds = %4349, %4274
  %4350 = phi float [ 0.000000e+00, %4274 ], [ %4382, %4349 ]
  %4351 = phi float [ 0.000000e+00, %4274 ], [ %4384, %4349 ]
  %4352 = phi i32 [ 0, %4274 ], [ %4385, %4349 ]
  %4353 = mul i32 %4352, 2
  %4354 = add i32 0, %4353
  %4355 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %4354
  %4356 = load float, float* %4355, align 4
  %4357 = mul i32 %4352, 2
  %4358 = add i32 1, %4357
  %4359 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %4358
  %4360 = load float, float* %4359, align 4
  %4361 = fmul fast float %4344, %4356
  %4362 = call float @dx.op.tertiary.f32(i32 46, float %4360, float %4347, float %4361)  ; FMad(a,b,c)
  %4363 = fmul fast float %4356, %4345
  %4364 = call float @dx.op.tertiary.f32(i32 46, float %4360, float %4348, float %4363)  ; FMad(a,b,c)
  %4365 = fadd fast float %4362, %4337
  %4366 = fadd fast float %4364, %4338
  %4367 = fmul fast float %4365, %4283
  %4368 = fmul fast float %4366, %4283
  %4369 = call float @dx.op.binary.f32(i32 35, float %4367, float %4279)  ; FMax(a,b)
  %4370 = call float @dx.op.binary.f32(i32 35, float %4368, float %4279)  ; FMax(a,b)
  %4371 = call float @dx.op.binary.f32(i32 36, float %4369, float %4280)  ; FMin(a,b)
  %4372 = call float @dx.op.binary.f32(i32 36, float %4370, float %4280)  ; FMin(a,b)
  %4373 = fadd fast float %4371, %4277
  %4374 = fadd fast float %4372, %4278
  %4375 = uitofp i32 %4314 to float
  %4376 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %41, float %4373, float %4374, float %4375, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4377 = extractvalue %dx.types.ResRet.f32 %4376, 0
  %4378 = fsub fast float %4377, %4340
  %4379 = fsub fast float %4378, %4287
  %4380 = fcmp fast ogt float %4379, 0.000000e+00
  %4381 = select i1 %4380, float 1.000000e+00, float 0.000000e+00
  %4382 = fadd fast float %4381, %4350
  %4383 = select i1 %4380, float %4379, float 0.000000e+00
  %4384 = fadd fast float %4383, %4351
  %4385 = add nuw nsw i32 %4352, 1
  %4386 = icmp eq i32 %4385, 8
  br i1 %4386, label %4387, label %4349

; <label>:4387                                    ; preds = %4349
  %4388 = fdiv fast float 1.000000e+00, %4382
  %4389 = fmul fast float %4388, %4384
  %4390 = fdiv fast float 1.000000e+00, %4340
  %4391 = fmul fast float %4389, %4390
  %4392 = call float @dx.op.unary.f32(i32 7, float %4391)  ; Saturate(value)
  %4393 = call float @dx.op.binary.f32(i32 35, float %4392, float 0.000000e+00)  ; FMax(a,b)
  %4394 = fmul fast float %4382, 1.250000e-01
  %4395 = call float @dx.op.unary.f32(i32 7, float %4394)  ; Saturate(value)
  %4396 = fmul fast float %4395, 2.000000e+00
  %4397 = fadd fast float %4396, -1.000000e+00
  %4398 = fcmp fast ogt float %4397, 0.000000e+00
  %4399 = fcmp fast olt float %4397, 0.000000e+00
  %4400 = zext i1 %4398 to i32
  %4401 = zext i1 %4399 to i32
  %4402 = sub nsw i32 %4400, %4401
  %4403 = sitofp i32 %4402 to float
  %4404 = fmul fast float %4403, %4397
  %4405 = fsub fast float 1.000000e+00, %4404
  %4406 = fmul fast float %4405, %4405
  %4407 = fmul fast float %4406, %4405
  %4408 = fsub fast float %4405, %4407
  %4409 = fmul fast float %4408, %4393
  %4410 = fsub fast float 1.000000e+00, %4407
  %4411 = fsub fast float %4410, %4409
  %4412 = fmul fast float %4403, 5.000000e-01
  %4413 = fmul fast float %4412, %4411
  %4414 = fsub fast float -5.000000e-01, %4413
  %4415 = fmul fast float %4414, %4248
  %4416 = fadd fast float %4415, 1.000000e+00
  %4417 = fmul fast float %4416, %4260
  br label %4418

; <label>:4418                                    ; preds = %4387, %4272
  %4419 = phi float [ %4417, %4387 ], [ %4260, %4272 ]
  %4420 = call float @dx.op.binary.f32(i32 36, float %4419, float %4419)  ; FMin(a,b)
  %4421 = call float @dx.op.binary.f32(i32 36, float %4419, float %4420)  ; FMin(a,b)
  %4422 = fcmp fast ogt float %4421, 0.000000e+00
  br i1 %4422, label %4423, label %4264, !dx.controlflow.hints !148

; <label>:4423                                    ; preds = %4418
  %4424 = fmul fast float %4419, %4182
  %4425 = fmul fast float %4419, %4183
  %4426 = fmul fast float %4419, %4184
  %4427 = fsub fast float %4198, %502
  %4428 = fsub fast float %4199, %503
  %4429 = fsub fast float %4200, %504
  %4430 = call float @dx.op.dot3.f32(i32 55, float %4427, float %4428, float %4429, float %4427, float %4428, float %4429)  ; Dot3(ax,ay,az,bx,by,bz)
  %4431 = call float @dx.op.unary.f32(i32 25, float %4430)  ; Rsqrt(value)
  %4432 = fmul fast float %4431, %4427
  %4433 = fmul fast float %4431, %4428
  %4434 = fmul fast float %4431, %4429
  %4435 = call float @dx.op.dot3.f32(i32 55, float %4198, float %4199, float %4200, float %289, float %290, float %291)  ; Dot3(ax,ay,az,bx,by,bz)
  %4436 = call float @dx.op.dot3.f32(i32 55, float %505, float %506, float %507, float %4432, float %4433, float %4434)  ; Dot3(ax,ay,az,bx,by,bz)
  %4437 = call float @dx.op.unary.f32(i32 7, float %4435)  ; Saturate(value)
  %4438 = fmul fast float %4437, %4205
  %4439 = fmul fast float %4437, %4437
  %4440 = fmul fast float %4439, 0x47DE623840000000
  %4441 = call float @dx.op.unary.f32(i32 7, float %4440)  ; Saturate(value)
  %4442 = fmul fast float %4438, %4441
  %4443 = bitcast float %4195 to i32
  %4444 = ashr i32 %4443, 1
  %4445 = sub nsw i32 1597463007, %4444
  %4446 = bitcast i32 %4445 to float
  %4447 = fmul fast float %4446, %4192
  %4448 = fmul fast float %4446, %4193
  %4449 = fmul fast float %4446, %4194
  %4450 = fsub fast float %4447, %502
  %4451 = fsub fast float %4448, %503
  %4452 = fsub fast float %4449, %504
  %4453 = call float @dx.op.dot3.f32(i32 55, float %4450, float %4451, float %4452, float %4450, float %4451, float %4452)  ; Dot3(ax,ay,az,bx,by,bz)
  %4454 = call float @dx.op.unary.f32(i32 25, float %4453)  ; Rsqrt(value)
  %4455 = fmul fast float %4450, %4454
  %4456 = fmul fast float %4451, %4454
  %4457 = fmul fast float %4452, %4454
  %4458 = call float @dx.op.dot3.f32(i32 55, float %289, float %290, float %291, float %4455, float %4456, float %4457)  ; Dot3(ax,ay,az,bx,by,bz)
  %4459 = fmul fast float %4458, %4458
  %4460 = call float @dx.op.unary.f32(i32 6, float %4435)  ; FAbs(value)
  %4461 = fsub fast float 1.000000e+00, %528
  %4462 = fmul fast float %510, %510
  %4463 = fmul fast float %4462, %4461
  %4464 = fadd fast float %4463, %528
  %4465 = bitcast float %4464 to i32
  %4466 = ashr i32 %4465, 1
  %4467 = add nsw i32 %4466, 532487669
  %4468 = bitcast i32 %4467 to float
  %4469 = fadd fast float %4468, %510
  %4470 = fmul fast float %528, %4459
  %4471 = fsub fast float 1.000000e+00, %4459
  %4472 = fadd fast float %4471, %4470
  %4473 = fmul fast float %4460, %4460
  %4474 = fmul fast float %4473, %4461
  %4475 = fadd fast float %4474, %528
  %4476 = bitcast float %4475 to i32
  %4477 = ashr i32 %4476, 1
  %4478 = add nsw i32 %4477, 532487669
  %4479 = bitcast i32 %4478 to float
  %4480 = fadd fast float %4479, %4460
  %4481 = fmul fast float %4472, %4472
  %4482 = fmul fast float %4481, %4469
  %4483 = fmul fast float %4482, %4480
  %4484 = fdiv fast float 1.000000e+00, %4483
  %4485 = bitcast float %528 to i32
  %4486 = sitofp i32 %4485 to float
  %4487 = fmul fast float %4486, 0x3FE7F73180000000
  %4488 = fadd fast float %4487, 0x41AFE27C40000000
  %4489 = fptosi float %4488 to i32
  %4490 = bitcast i32 %4489 to float
  %4491 = fmul fast float %4161, 0x3FD80E9D60000000
  %4492 = fmul fast float %4491, %4446
  %4493 = fadd fast float %4490, %4492
  %4494 = bitcast float %4493 to i32
  %4495 = sub nsw i32 2129859010, %4494
  %4496 = bitcast i32 %4495 to float
  %4497 = fmul fast float %528, %4484
  %4498 = fmul fast float %4497, %4490
  %4499 = fmul fast float %4498, %4496
  %4500 = call float @dx.op.unary.f32(i32 6, float %4436)  ; FAbs(value)
  %4501 = fsub fast float 1.000000e+00, %4500
  %4502 = bitcast float %4501 to i32
  %4503 = sitofp i32 %4502 to float
  %4504 = fmul fast float %4503, 5.000000e+00
  %4505 = fadd fast float %4504, 0xC1EFBF8940000000
  %4506 = fptosi float %4505 to i32
  %4507 = bitcast i32 %4506 to float
  %4508 = fsub fast float 1.000000e+00, %490
  %4509 = fsub fast float 1.000000e+00, %491
  %4510 = fsub fast float 1.000000e+00, %508
  %4511 = fmul fast float %4507, %4508
  %4512 = fmul fast float %4507, %4509
  %4513 = fmul fast float %4507, %4510
  %4514 = fadd fast float %4511, %490
  %4515 = fadd fast float %4512, %491
  %4516 = fadd fast float %4513, %508
  %4517 = fmul fast float %4435, 9.843750e-01
  %4518 = fadd fast float %4517, 7.812500e-03
  %4519 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %40, float %4518, float %2102, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4520 = extractvalue %dx.types.ResRet.f32 %4519, 2
  %4521 = extractvalue %dx.types.ResRet.f32 %4519, 3
  %4522 = fmul fast float %4520, %490
  %4523 = fmul fast float %4520, %491
  %4524 = fmul fast float %4520, %508
  %4525 = fadd fast float %4522, %4521
  %4526 = fadd fast float %4523, %4521
  %4527 = fadd fast float %4524, %4521
  %4528 = call float @dx.op.binary.f32(i32 35, float %4526, float %4527)  ; FMax(a,b)
  %4529 = call float @dx.op.binary.f32(i32 35, float %4525, float %4528)  ; FMax(a,b)
  %4530 = fsub fast float 1.000000e+00, %4529
  %4531 = fsub fast float -0.000000e+00, %289
  %4532 = fsub fast float -0.000000e+00, %290
  %4533 = fsub fast float -0.000000e+00, %291
  %4534 = call float @dx.op.dot3.f32(i32 55, float %4198, float %4199, float %4200, float %4531, float %4532, float %4533)  ; Dot3(ax,ay,az,bx,by,bz)
  %4535 = call float @dx.op.unary.f32(i32 7, float %4534)  ; Saturate(value)
  %4536 = fmul fast float %4535, %4205
  %4537 = fmul fast float %4535, 9.843750e-01
  %4538 = fadd fast float %4537, 7.812500e-03
  %4539 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %40, float %4538, float %2102, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4540 = extractvalue %dx.types.ResRet.f32 %4539, 2
  %4541 = extractvalue %dx.types.ResRet.f32 %4539, 3
  %4542 = fmul fast float %4540, %490
  %4543 = fmul fast float %4540, %491
  %4544 = fmul fast float %4540, %508
  %4545 = fadd fast float %4542, %4541
  %4546 = fadd fast float %4543, %4541
  %4547 = fadd fast float %4544, %4541
  %4548 = call float @dx.op.binary.f32(i32 35, float %4546, float %4547)  ; FMax(a,b)
  %4549 = call float @dx.op.binary.f32(i32 35, float %4545, float %4548)  ; FMax(a,b)
  %4550 = fsub fast float 1.000000e+00, %4549
  %4551 = fmul fast float %4536, %4550
  %4552 = fmul fast float %4551, %308
  %4553 = fmul fast float %4551, %309
  %4554 = fmul fast float %4551, %310
  %4555 = fmul fast float %4530, %4442
  %4556 = fadd fast float %4552, %4555
  %4557 = fadd fast float %4553, %4555
  %4558 = fadd fast float %4554, %4555
  %4559 = fmul fast float %4556, %4424
  %4560 = fmul fast float %4557, %4425
  %4561 = fmul fast float %4558, %4426
  %4562 = fadd fast float %4559, %4135
  %4563 = fadd fast float %4560, %4136
  %4564 = fadd fast float %4561, %4137
  %4565 = fmul fast float %4442, %4424
  %4566 = fmul fast float %4565, %4514
  %4567 = fmul fast float %4566, %4499
  %4568 = fmul fast float %4442, %4425
  %4569 = fmul fast float %4568, %4515
  %4570 = fmul fast float %4569, %4499
  %4571 = fmul fast float %4442, %4426
  %4572 = fmul fast float %4571, %4516
  %4573 = fmul fast float %4572, %4499
  %4574 = fadd fast float %4567, %4132
  %4575 = fadd fast float %4570, %4133
  %4576 = fadd fast float %4573, %4134
  br label %4264

; <label>:4577                                    ; preds = %4264
  br label %4578

; <label>:4578                                    ; preds = %4577, %4098
  %4579 = phi float [ %4100, %4098 ], [ %4265, %4577 ]
  %4580 = phi float [ %4101, %4098 ], [ %4266, %4577 ]
  %4581 = phi float [ %4102, %4098 ], [ %4267, %4577 ]
  %4582 = phi float [ %4103, %4098 ], [ %4268, %4577 ]
  %4583 = phi float [ %4104, %4098 ], [ %4269, %4577 ]
  %4584 = phi float [ %4105, %4098 ], [ %4270, %4577 ]
  %4585 = add i32 %4099, 1
  %4586 = icmp ugt i32 %4585, %4095
  br i1 %4586, label %4587, label %4098

; <label>:4587                                    ; preds = %4578
  br label %4588

; <label>:4588                                    ; preds = %4587, %4048, %4038
  %4589 = phi float [ %4039, %4038 ], [ %4039, %4048 ], [ %4579, %4587 ]
  %4590 = phi float [ %4040, %4038 ], [ %4040, %4048 ], [ %4580, %4587 ]
  %4591 = phi float [ %4041, %4038 ], [ %4041, %4048 ], [ %4581, %4587 ]
  %4592 = phi float [ %4042, %4038 ], [ %4042, %4048 ], [ %4582, %4587 ]
  %4593 = phi float [ %4043, %4038 ], [ %4043, %4048 ], [ %4583, %4587 ]
  %4594 = phi float [ %4044, %4038 ], [ %4044, %4048 ], [ %4584, %4587 ]
  %4595 = call float @dx.op.unary.f32(i32 24, float %481)  ; Sqrt(value)
  %4596 = call float @dx.op.unary.f32(i32 24, float %482)  ; Sqrt(value)
  %4597 = call float @dx.op.unary.f32(i32 24, float %483)  ; Sqrt(value)
  %4598 = fmul fast float %4595, %4592
  %4599 = fmul fast float %4596, %4593
  %4600 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %4601 = extractvalue %dx.types.CBufRet.f32 %4600, 0
  br i1 %129, label %4602, label %4626

; <label>:4602                                    ; preds = %4588
  %4603 = fadd fast float %4594, %498
  %4604 = fmul fast float %4603, %496
  %4605 = fsub fast float 1.000000e+00, %496
  %4606 = call float @dx.op.unary.f32(i32 7, float %4605)  ; Saturate(value)
  %4607 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4608 = extractvalue %dx.types.CBufRet.f32 %4607, 3
  %4609 = fmul fast float %4608, %4606
  %4610 = fsub fast float 1.000000e+00, %510
  %4611 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4612 = extractvalue %dx.types.CBufRet.f32 %4611, 0
  %4613 = fmul fast float %4612, %4610
  %4614 = fsub fast float 1.000000e+00, %311
  %4615 = extractvalue %dx.types.CBufRet.f32 %4611, 2
  %4616 = fmul fast float %4615, %4614
  %4617 = fadd fast float %4599, %4598
  %4618 = extractvalue %dx.types.CBufRet.f32 %4607, 1
  %4619 = fadd fast float %4609, %4604
  %4620 = fsub fast float %4619, %4613
  %4621 = fsub fast float %4620, %4616
  %4622 = fsub fast float %4621, %4618
  %4623 = extractvalue %dx.types.CBufRet.f32 %4607, 2
  %4624 = fmul fast float %4622, %4623
  %4625 = call float @dx.op.unary.f32(i32 7, float %4624)  ; Saturate(value)
  br label %4630

; <label>:4626                                    ; preds = %4588
  %4627 = fmul fast float %4597, %4594
  %4628 = fmul fast float %4601, %4599
  %4629 = fmul fast float %4627, %4601
  br label %4630

; <label>:4630                                    ; preds = %4626, %4602
  %4631 = phi float [ %4617, %4602 ], [ %4598, %4626 ]
  %4632 = phi float [ %4625, %4602 ], [ %4628, %4626 ]
  %4633 = phi float [ 1.000000e+00, %4602 ], [ %4629, %4626 ]
  %4634 = fmul float %4601, %4631
  %4635 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %4636 = extractvalue %dx.types.CBufRet.f32 %4635, 0
  %4637 = fmul fast float %4636, %4590
  %4638 = fmul fast float %4636, %4591
  %4639 = fadd fast float %4590, %4589
  %4640 = select i1 %129, float %4639, float %4589
  %4641 = fmul float %4640, %4636
  %4642 = select i1 %129, float 0.000000e+00, float %4637
  %4643 = select i1 %129, float 0.000000e+00, float %4638
  %4644 = fmul fast float %4634, %4595
  %4645 = fmul fast float %4632, %4596
  %4646 = fmul fast float %4633, %4597
  %4647 = fadd fast float %4641, %4644
  %4648 = fadd fast float %4642, %4645
  %4649 = fadd fast float %4643, %4646
  %4650 = select i1 %129, float %4632, float %4648
  %4651 = select i1 %129, float %4633, float %4649
  %4652 = call float @dx.op.binary.f32(i32 36, float %4647, float 3.225500e+04)  ; FMin(a,b)
  %4653 = call float @dx.op.binary.f32(i32 36, float %4650, float 3.225500e+04)  ; FMin(a,b)
  %4654 = call float @dx.op.binary.f32(i32 36, float %4651, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %4652)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %4653)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %4654)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.Dimensions @dx.op.getDimensions(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #2

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
!dx.viewIdState = !{!56}
!dx.entryPoints = !{!57}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !46, !49}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !39, !40, !41, !42, !43, !44, !45}
!6 = !{i32 0, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 3, i32 0, i32 -1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 37, i32 1, i32 11, i32 0, null}
!9 = !{i32 2, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 61, i32 1, i32 11, i32 0, null}
!10 = !{i32 3, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 62, i32 1, i32 11, i32 0, null}
!11 = !{i32 4, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 63, i32 1, i32 11, i32 0, null}
!12 = !{i32 5, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 21, i32 1, i32 4, i32 0, !7}
!13 = !{i32 6, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 22, i32 1, i32 4, i32 0, !7}
!14 = !{i32 7, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 33, i32 1, i32 2, i32 0, !7}
!15 = !{i32 8, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 16, i32 1, i32 7, i32 0, !7}
!16 = !{i32 9, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 15, i32 1, i32 4, i32 0, !7}
!17 = !{i32 10, %"class.Texture2D<float>"* undef, !"", i32 2, i32 14, i32 1, i32 2, i32 0, !7}
!18 = !{i32 11, %"class.Texture2D<vector<float, 2> >"* undef, !"", i32 2, i32 13, i32 1, i32 2, i32 0, !7}
!19 = !{i32 12, %"class.Texture2D<unsigned int>"* undef, !"", i32 2, i32 17, i32 1, i32 2, i32 0, !20}
!20 = !{i32 0, i32 5}
!21 = !{i32 13, %"class.Texture3D<vector<float, 3> >"* undef, !"", i32 2, i32 18, i32 1, i32 4, i32 0, !7}
!22 = !{i32 14, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 3, i32 1, i32 11, i32 0, null}
!23 = !{i32 15, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 4, i32 1, i32 11, i32 0, null}
!24 = !{i32 16, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 5, i32 1, i32 11, i32 0, null}
!25 = !{i32 17, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 6, i32 1, i32 11, i32 0, null}
!26 = !{i32 18, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 69, i32 1, i32 2, i32 0, !7}
!27 = !{i32 19, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 37, i32 1, i32 2, i32 0, !7}
!28 = !{i32 20, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 35, i32 1, i32 7, i32 0, !7}
!29 = !{i32 21, %"class.Texture3D<float>"* undef, !"", i32 2, i32 31, i32 1, i32 4, i32 0, !7}
!30 = !{i32 22, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 10, i32 1, i32 11, i32 0, null}
!31 = !{i32 23, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 1, i32 1, i32 11, i32 0, null}
!32 = !{i32 24, %"class.Texture1D<float>"* undef, !"", i32 2, i32 32, i32 1, i32 1, i32 0, !7}
!33 = !{i32 25, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 8, i32 1, i32 7, i32 0, !7}
!34 = !{i32 26, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 2, i32 1, i32 2, i32 0, !7}
!35 = !{i32 27, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 3, i32 1, i32 2, i32 0, !7}
!36 = !{i32 28, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 4, i32 1, i32 2, i32 0, !7}
!37 = !{i32 29, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 80, i32 1, i32 7, i32 0, !38}
!38 = !{i32 0, i32 14}
!39 = !{i32 30, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 67, i32 1, i32 11, i32 0, null}
!40 = !{i32 31, %"class.Texture2D<float>"* undef, !"", i32 2, i32 7, i32 1, i32 2, i32 0, !7}
!41 = !{i32 32, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 6, i32 1, i32 2, i32 0, !7}
!42 = !{i32 33, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 5, i32 1, i32 2, i32 0, !7}
!43 = !{i32 34, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 38, i32 1, i32 2, i32 0, !7}
!44 = !{i32 35, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 12, i32 1, i32 11, i32 0, null}
!45 = !{i32 36, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 13, i32 1, i32 11, i32 0, null}
!46 = !{!47, !48}
!47 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!48 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 256, null}
!49 = !{!50, !51, !52, !53, !54, !55}
!50 = !{i32 0, %struct.SamplerComparisonState* undef, !"", i32 0, i32 0, i32 1, i32 1, null}
!51 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!52 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!53 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!54 = !{i32 4, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!55 = !{i32 5, %struct.SamplerState* undef, !"", i32 0, i32 5, i32 1, i32 0, null}
!56 = !{[63 x i32] [i32 61, i32 4, i32 7, i32 7, i32 0, i32 7, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 0, i32 0, i32 7, i32 7, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 0, i32 0, i32 7, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 7, i32 0, i32 0, i32 0, i32 7]}
!57 = !{void ()* @ps_main, !"ps_main", !58, !4, !90}
!58 = !{!59, !88, null}
!59 = !{!60, !63, !64, !66, !68, !69, !71, !74, !76, !78, !80, !81, !82, !83, !84, !85, !86, !87}
!60 = !{i32 0, !"SV_Position", i8 9, i8 3, !61, i8 4, i32 1, i8 4, i32 0, i8 0, !62}
!61 = !{i32 0}
!62 = !{i32 3, i32 11}
!63 = !{i32 1, !"COLOR", i8 9, i8 0, !61, i8 2, i32 1, i8 4, i32 1, i8 0, null}
!64 = !{i32 2, !"TEXCOORDS", i8 9, i8 0, !61, i8 2, i32 1, i8 4, i32 2, i8 0, !65}
!65 = !{i32 3, i32 8}
!66 = !{i32 3, !"NORMAL", i8 9, i8 0, !61, i8 2, i32 1, i8 3, i32 3, i8 0, !67}
!67 = !{i32 3, i32 7}
!68 = !{i32 4, !"TANGENT", i8 9, i8 0, !61, i8 2, i32 1, i8 4, i32 4, i8 0, null}
!69 = !{i32 5, !"CARD_DEPTH_OFFSET", i8 9, i8 0, !61, i8 2, i32 1, i8 1, i32 3, i8 3, !70}
!70 = !{i32 3, i32 1}
!71 = !{i32 6, !"CARD_BARY_AND_TILE", i8 9, i8 0, !72, i8 1, i32 1, i8 4, i32 5, i8 0, !73}
!72 = !{i32 1}
!73 = !{i32 3, i32 3}
!74 = !{i32 7, !"CARD_TILE2_AND_TILE", i8 9, i8 0, !75, i8 1, i32 1, i8 4, i32 6, i8 0, null}
!75 = !{i32 3}
!76 = !{i32 8, !"CARD_TEXCOORDS_AND_RAY", i8 9, i8 0, !72, i8 4, i32 1, i8 4, i32 7, i8 0, !77}
!77 = !{i32 3, i32 15}
!78 = !{i32 9, !"CARD_TEXCOORDS_AND_RAY", i8 9, i8 0, !79, i8 4, i32 1, i8 4, i32 8, i8 0, !77}
!79 = !{i32 2}
!80 = !{i32 10, !"CARD_TEXCOORDS_AND_RAY", i8 9, i8 0, !75, i8 4, i32 1, i8 4, i32 9, i8 0, !77}
!81 = !{i32 11, !"CARD_DEPTH_AND_SCALE", i8 9, i8 0, !61, i8 4, i32 1, i8 4, i32 10, i8 0, !67}
!82 = !{i32 12, !"LGV_POSITION_INDEX", i8 9, i8 0, !61, i8 2, i32 1, i8 4, i32 11, i8 0, !65}
!83 = !{i32 13, !"SECONDARY_TEXCOORDS", i8 9, i8 0, !61, i8 2, i32 1, i8 2, i32 12, i8 0, null}
!84 = !{i32 14, !"SCEONDARY_NORMAL", i8 9, i8 0, !61, i8 2, i32 1, i8 4, i32 13, i8 0, null}
!85 = !{i32 15, !"PACKED_TRI_DATA", i8 5, i8 0, !61, i8 1, i32 1, i8 4, i32 14, i8 0, !70}
!86 = !{i32 16, !"SV_IsFrontFace", i8 5, i8 13, !61, i8 1, i32 1, i8 1, i32 15, i8 0, !70}
!87 = !{i32 17, !"SV_SampleIndex", i8 5, i8 12, !61, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!88 = !{!89}
!89 = !{i32 0, !"SV_Target", i8 9, i8 16, !61, i8 0, i32 1, i8 4, i32 0, i8 0, !77}
!90 = !{i32 0, i64 24}
!91 = !{!92, !94, !95, !96, !97, !99, !100, !101}
!92 = distinct !{!92, !93, !"\01?getCardTexcoordsNormalAlpha@@YAXAIAV?$vector@M$01@@AIAV?$vector@M$02@@AIAIAIAMUPixelInput@@MV?$matrix@M$02$02@@V1@M@Z: %outTexCoords"}
!93 = distinct !{!93, !"\01?getCardTexcoordsNormalAlpha@@YAXAIAV?$vector@M$01@@AIAV?$vector@M$02@@AIAIAIAMUPixelInput@@MV?$matrix@M$02$02@@V1@M@Z"}
!94 = distinct !{!94, !93, !"\01?getCardTexcoordsNormalAlpha@@YAXAIAV?$vector@M$01@@AIAV?$vector@M$02@@AIAIAIAMUPixelInput@@MV?$matrix@M$02$02@@V1@M@Z: %outNormal"}
!95 = distinct !{!95, !93, !"\01?getCardTexcoordsNormalAlpha@@YAXAIAV?$vector@M$01@@AIAV?$vector@M$02@@AIAIAIAMUPixelInput@@MV?$matrix@M$02$02@@V1@M@Z: %outCoverage"}
!96 = distinct !{!96, !93, !"\01?getCardTexcoordsNormalAlpha@@YAXAIAV?$vector@M$01@@AIAV?$vector@M$02@@AIAIAIAMUPixelInput@@MV?$matrix@M$02$02@@V1@M@Z: %outMipLevel"}
!97 = distinct !{!97, !98, !"\01?getCardTexcoordsNormal@@YAXAIAV?$vector@M$01@@AIAV?$vector@M$02@@AIAMAIAIUPixelInput@@M@Z: %outTexCoords"}
!98 = distinct !{!98, !"\01?getCardTexcoordsNormal@@YAXAIAV?$vector@M$01@@AIAV?$vector@M$02@@AIAMAIAIUPixelInput@@M@Z"}
!99 = distinct !{!99, !98, !"\01?getCardTexcoordsNormal@@YAXAIAV?$vector@M$01@@AIAV?$vector@M$02@@AIAMAIAIUPixelInput@@M@Z: %outNormal"}
!100 = distinct !{!100, !98, !"\01?getCardTexcoordsNormal@@YAXAIAV?$vector@M$01@@AIAV?$vector@M$02@@AIAMAIAIUPixelInput@@M@Z: %outMipLevel"}
!101 = distinct !{!101, !98, !"\01?getCardTexcoordsNormal@@YAXAIAV?$vector@M$01@@AIAV?$vector@M$02@@AIAMAIAIUPixelInput@@M@Z: %outCoverage"}
!102 = !{!103, !103, i64 0}
!103 = !{!"float", !104, i64 0}
!104 = !{!"omnipotent char", !105, i64 0}
!105 = !{!"Simple C/C++ TBAA"}
!106 = !{!107, !109}
!107 = distinct !{!107, !108, !"\01?GetLightGridVolumeTransformParamsStatic@@YA?AULightGridVolumeTransformParams@@II@Z: %agg.result"}
!108 = distinct !{!108, !"\01?GetLightGridVolumeTransformParamsStatic@@YA?AULightGridVolumeTransformParams@@II@Z"}
!109 = distinct !{!109, !110, !"\01?GetLightGridVolumeTransformParams@@YA?AULightGridVolumeTransformParams@@II@Z: %agg.result"}
!110 = distinct !{!110, !"\01?GetLightGridVolumeTransformParams@@YA?AULightGridVolumeTransformParams@@II@Z"}
!111 = distinct !{!111, !"dx.controlflow.hints", i32 1}
!112 = distinct !{!112, !"dx.controlflow.hints", i32 1}
!113 = distinct !{!113, !"dx.controlflow.hints", i32 1}
!114 = distinct !{!114, !"dx.controlflow.hints", i32 1}
!115 = distinct !{!115, !"dx.controlflow.hints", i32 1}
!116 = distinct !{!116, !"dx.controlflow.hints", i32 1}
!117 = distinct !{!117, !"dx.controlflow.hints", i32 1}
!118 = distinct !{!118, !"dx.controlflow.hints", i32 1}
!119 = distinct !{!119, !120}
!120 = !{!"llvm.loop.unroll.disable"}
!121 = distinct !{!121, !"dx.controlflow.hints", i32 1}
!122 = distinct !{!122, !"dx.controlflow.hints", i32 1}
!123 = distinct !{!123, !"dx.controlflow.hints", i32 1}
!124 = distinct !{!124, !"dx.controlflow.hints", i32 1}
!125 = distinct !{!125, !"dx.controlflow.hints", i32 1}
!126 = !{!127, !127, i64 0}
!127 = !{!"int", !104, i64 0}
!128 = !{!129, !131, !133, !135}
!129 = distinct !{!129, !130, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!130 = distinct !{!130, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!131 = distinct !{!131, !132, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!132 = distinct !{!132, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!133 = distinct !{!133, !134, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z: %agg.result"}
!134 = distinct !{!134, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z"}
!135 = distinct !{!135, !136, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z: %agg.result"}
!136 = distinct !{!136, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z"}
!137 = distinct !{!137, !"dx.controlflow.hints", i32 1}
!138 = distinct !{!138, !120}
!139 = distinct !{!139, !120}
!140 = distinct !{!140, !"dx.controlflow.hints", i32 1}
!141 = distinct !{!141, !"dx.controlflow.hints", i32 1}
!142 = distinct !{!142, !"dx.controlflow.hints", i32 1}
!143 = distinct !{!143, !"dx.controlflow.hints", i32 1}
!144 = distinct !{!144, !"dx.controlflow.hints", i32 1}
!145 = distinct !{!145, !"dx.controlflow.hints", i32 1}
!146 = distinct !{!146, !"dx.controlflow.hints", i32 1}
!147 = distinct !{!147, !"dx.controlflow.hints", i32 1}
!148 = distinct !{!148, !"dx.controlflow.hints", i32 1}

