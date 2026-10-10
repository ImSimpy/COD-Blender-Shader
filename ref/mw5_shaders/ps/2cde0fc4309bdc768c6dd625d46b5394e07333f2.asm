;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float   xy w
; COLOR                    0   xyzw        1     NONE   float       
; TEXCOORDS                0   xyzw        2     NONE   float   xy w
; NORMAL                   0   xyz         3     NONE   float   xyz 
; CARD_DEPTH_OFFSET        0      w        3     NONE   float      w
; TANGENT                  0   xyzw        4     NONE   float       
; CARD_BARY_AND_TILE       1   xyzw        5     NONE   float       
; LGV_POSITION_INDEX       0   xyzw        6     NONE   float      w
; SECONDARY_TEXCOORDS      0   xy          7     NONE   float       
; SCEONDARY_NORMAL         0   xyzw        8     NONE   float       
; PACKED_TRI_DATA          0   xyzw        9     NONE    uint   x  w
; SV_IsFrontFace           0   x          10    FFACE    uint   x   
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
; shader hash: ca48e7f2864f239c914c02dead1ae0fc
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
; Number of inputs: 41, outputs: 8
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 3, 8, 9, 11, 12, 13, 14, 15, 27, 36, 39, 40 }
;   output 1 depends on inputs: { 0, 1, 3, 8, 9, 11, 12, 13, 14, 15, 27, 36, 39, 40 }
;   output 2 depends on inputs: { 0, 1, 3, 8, 9, 11, 12, 13, 14, 15, 27, 36, 39, 40 }
;   output 4 depends on inputs: { 0, 1, 3, 8, 9, 11, 12, 13, 14, 15, 27, 36, 39, 40 }
;   output 5 depends on inputs: { 0, 1, 3, 8, 9, 11, 12, 13, 14, 15, 27, 36, 39, 40 }
;   output 6 depends on inputs: { 0, 1, 3, 8, 9, 11, 12, 13, 14, 15, 27, 36, 39, 40 }
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
  %51 = call i32 @dx.op.loadInput.i32(i32 4, i32 11, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %52 = icmp ne i32 %51, 0
  %53 = call i32 @dx.op.loadInput.i32(i32 4, i32 10, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %54 = call i32 @dx.op.loadInput.i32(i32 4, i32 10, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %55 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %56 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %57 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %58 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %59 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %60 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %61 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %62 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %63 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %64 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %65 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %66 = alloca [3 x float], align 4
  %67 = alloca [3 x float], align 4
  %68 = alloca [3 x float], align 4
  %69 = alloca [3 x float], align 4
  %70 = alloca [12 x float], align 4
  %71 = alloca [12 x float], align 4
  %72 = alloca [4 x float], align 4
  %73 = alloca [4 x float], align 4
  %74 = alloca [4 x float], align 4
  %75 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %76 = extractvalue %dx.types.CBufRet.f32 %75, 0
  %77 = fmul fast float %76, %63
  %78 = fmul fast float %76, %64
  %79 = select i1 %52, float 1.000000e+00, float -1.000000e+00
  %80 = call float @dx.op.dot3.f32(i32 55, float %57, float %58, float %59, float %57, float %58, float %59)  ; Dot3(ax,ay,az,bx,by,bz)
  %81 = bitcast float %80 to i32
  %82 = ashr i32 %81, 1
  %83 = sub nsw i32 1597250115, %82
  %84 = bitcast i32 %83 to float
  %85 = fmul fast float %57, %79
  %86 = fmul fast float %85, %84
  %87 = fmul fast float %58, %79
  %88 = fmul fast float %87, %84
  %89 = fmul fast float %59, %79
  %90 = fmul fast float %89, %84
  %91 = lshr i32 %54, 8
  %92 = mul nuw nsw i32 %91, 24
  %93 = add nuw nsw i32 %92, 12
  %94 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %93, i32 undef)  ; BufferLoad(srv,index,wot)
  %95 = extractvalue %dx.types.ResRet.i32 %94, 0
  %96 = extractvalue %dx.types.ResRet.i32 %94, 1
  %97 = and i32 %95, 65535
  %98 = uitofp i32 %97 to float
  %99 = lshr i32 %95, 16
  %100 = uitofp i32 %99 to float
  %101 = and i32 %96, 65535
  %102 = uitofp i32 %101 to float
  %103 = lshr i32 %96, 16
  %104 = uitofp i32 %103 to float
  %105 = fmul fast float %98, 0x3F00001000000000
  %106 = fmul fast float %100, 0x3F00001000000000
  %107 = fmul fast float %102, 0x3F00001000000000
  %108 = fmul fast float %104, 0x3F00001000000000
  %109 = fadd fast float %105, -1.000000e+00
  %110 = fadd fast float %106, -1.000000e+00
  %111 = fadd fast float %107, -1.000000e+00
  %112 = fadd fast float %108, -1.000000e+00
  %113 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %114 = extractvalue %dx.types.CBufRet.f32 %113, 2
  %115 = extractvalue %dx.types.CBufRet.f32 %113, 3
  %116 = fmul fast float %114, %77
  %117 = fmul fast float %115, %78
  %118 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %119 = extractvalue %dx.types.ResRet.i32 %118, 0
  %120 = and i32 %119, 114688
  %121 = icmp ne i32 %120, 0
  %122 = select i1 %121, float %116, float 0.000000e+00
  %123 = select i1 %121, float %117, float 0.000000e+00
  %124 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %46, float %122, float %123, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %125 = extractvalue %dx.types.ResRet.f32 %124, 0
  %126 = fmul fast float %125, 2.550000e+02
  %127 = fptoui float %126 to i32
  %128 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %129 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %130 = extractvalue %dx.types.CBufRet.i32 %129, 3
  %131 = and i32 %130, 3
  %132 = icmp ne i32 %131, 0
  %133 = and i32 %130, 4
  %134 = icmp ne i32 %133, 0
  %135 = and i1 %132, %134
  br i1 %135, label %136, label %147

; <label>:136                                     ; preds = %0
  %137 = extractvalue %dx.types.CBufRet.f32 %128, 3
  %138 = fmul fast float %137, %78
  %139 = extractvalue %dx.types.CBufRet.f32 %128, 2
  %140 = fmul fast float %139, %77
  %141 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %45, float %140, float %138, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %142 = extractvalue %dx.types.ResRet.f32 %141, 0
  %143 = fsub fast float 1.000000e+00, %142
  %144 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %145 = extractvalue %dx.types.CBufRet.f32 %144, 0
  %146 = fcmp fast olt float %143, %145
  br label %150

; <label>:147                                     ; preds = %0
  %148 = icmp eq i32 %133, 0
  %149 = and i1 %132, %148
  br label %150

; <label>:150                                     ; preds = %147, %136
  %151 = phi i1 [ %146, %136 ], [ %149, %147 ]
  %152 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %153 = extractvalue %dx.types.CBufRet.f32 %152, 2
  %154 = fmul fast float %153, 0x3FE3C6EF40000000
  %155 = frem fast float %77, 2.560000e+02
  %156 = frem fast float %78, 2.560000e+02
  %157 = fptoui float %155 to i32
  %158 = fptoui float %156 to i32
  %159 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %22, i32 0, i32 %157, i32 %158, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %160 = extractvalue %dx.types.ResRet.f32 %159, 0
  %161 = fadd fast float %160, %154
  %162 = call float @dx.op.unary.f32(i32 22, float %161)  ; Frc(value)
  %163 = add i32 %53, 60
  %164 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %163, i32 undef)  ; BufferLoad(srv,index,wot)
  %165 = extractvalue %dx.types.ResRet.i32 %164, 0
  %166 = add i32 %165, 0
  %167 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %166, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %168 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %167, i32 0)  ; GetDimensions(handle,mipLevel)
  %169 = extractvalue %dx.types.Dimensions %168, 0
  %170 = sitofp i32 %169 to float
  %171 = extractvalue %dx.types.Dimensions %168, 1
  %172 = sitofp i32 %171 to float
  %173 = fmul fast float %100, 0x3F10001000000000
  %174 = fadd fast float %173, -2.000000e+00
  %175 = fmul fast float %174, %110
  %176 = fsub fast float 1.000000e+00, %175
  %177 = fmul fast float %102, 0x3F10001000000000
  %178 = fadd fast float %177, -2.000000e+00
  %179 = fmul fast float %178, %111
  %180 = fsub fast float %176, %179
  %181 = fmul fast float %98, 0x3F10001000000000
  %182 = fadd fast float %181, -2.000000e+00
  %183 = fmul fast float %182, %110
  %184 = fmul fast float %178, %112
  %185 = fsub fast float %183, %184
  %186 = fmul fast float %182, %111
  %187 = fmul fast float %174, %112
  %188 = fadd fast float %186, %187
  %189 = fadd fast float %183, %184
  %190 = fmul fast float %182, %109
  %191 = fsub fast float 1.000000e+00, %190
  %192 = fsub fast float %191, %179
  %193 = fmul fast float %174, %111
  %194 = fmul fast float %182, %112
  %195 = fsub fast float %193, %194
  %196 = fsub fast float %186, %187
  %197 = fadd fast float %193, %194
  %198 = fsub fast float %191, %175
  %199 = fmul fast float %170, %60
  %200 = call float @dx.op.unary.f32(i32 83, float %199)  ; DerivCoarseX(value)
  %201 = call float @dx.op.unary.f32(i32 84, float %199)  ; DerivCoarseY(value)
  %202 = fmul fast float %172, %61
  %203 = call float @dx.op.unary.f32(i32 83, float %202)  ; DerivCoarseX(value)
  %204 = call float @dx.op.unary.f32(i32 84, float %202)  ; DerivCoarseY(value)
  %205 = fmul fast float %203, %203
  %206 = fmul fast float %204, %204
  %207 = fadd fast float %206, %205
  %208 = fmul fast float %203, %200
  %209 = fmul fast float %204, %201
  %210 = fadd fast float %209, %208
  %211 = fmul fast float %200, %200
  %212 = fmul fast float %201, %201
  %213 = fadd fast float %212, %211
  %214 = fmul fast float %207, %213
  %215 = fmul fast float %210, %210
  %216 = fsub fast float %214, %215
  %217 = bitcast float %216 to i32
  %218 = fadd fast float %207, %213
  %219 = bitcast float %218 to i32
  %220 = sub i32 8388608, %219
  %221 = add i32 %220, %217
  %222 = ashr i32 %221, 24
  %223 = sitofp i32 %222 to float
  %224 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %163, i32 undef)  ; BufferLoad(srv,index,wot)
  %225 = extractvalue %dx.types.ResRet.i32 %224, 0
  %226 = add i32 %225, 0
  %227 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %226, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %228 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %227, %dx.types.Handle %45, float %60, float %61, float undef, float undef, i32 0, i32 0, i32 undef, float %223)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %229 = extractvalue %dx.types.ResRet.f32 %228, 0
  %230 = extractvalue %dx.types.ResRet.f32 %228, 1
  %231 = extractvalue %dx.types.ResRet.f32 %228, 2
  %232 = fmul fast float %229, 2.000000e+00
  %233 = fmul fast float %230, 2.000000e+00
  %234 = fmul fast float %231, 2.000000e+00
  %235 = fadd fast float %232, -1.000000e+00
  %236 = fadd fast float %233, -1.000000e+00
  %237 = fadd fast float %234, -1.000000e+00
  %238 = fmul fast float %235, %180
  %239 = call float @dx.op.tertiary.f32(i32 46, float %236, float %185, float %238)  ; FMad(a,b,c)
  %240 = call float @dx.op.tertiary.f32(i32 46, float %237, float %188, float %239)  ; FMad(a,b,c)
  %241 = fmul fast float %235, %189
  %242 = call float @dx.op.tertiary.f32(i32 46, float %236, float %192, float %241)  ; FMad(a,b,c)
  %243 = call float @dx.op.tertiary.f32(i32 46, float %237, float %195, float %242)  ; FMad(a,b,c)
  %244 = fmul fast float %235, %196
  %245 = call float @dx.op.tertiary.f32(i32 46, float %236, float %197, float %244)  ; FMad(a,b,c)
  %246 = call float @dx.op.tertiary.f32(i32 46, float %237, float %198, float %245)  ; FMad(a,b,c)
  br i1 %52, label %256, label %247

; <label>:247                                     ; preds = %150
  %248 = call float @dx.op.dot3.f32(i32 55, float %86, float %88, float %90, float %240, float %243, float %246)  ; Dot3(ax,ay,az,bx,by,bz)
  %249 = fmul fast float %248, 2.000000e+00
  %250 = fmul fast float %249, %86
  %251 = fmul fast float %249, %88
  %252 = fmul fast float %249, %90
  %253 = fsub fast float %240, %250
  %254 = fsub fast float %243, %251
  %255 = fsub fast float %246, %252
  br label %256

; <label>:256                                     ; preds = %247, %150
  %257 = phi float [ %253, %247 ], [ %240, %150 ]
  %258 = phi float [ %254, %247 ], [ %243, %150 ]
  %259 = phi float [ %255, %247 ], [ %246, %150 ]
  %260 = add i32 %53, 56
  %261 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %260, i32 undef)  ; BufferLoad(srv,index,wot)
  %262 = extractvalue %dx.types.ResRet.i32 %261, 0
  %263 = add i32 %262, 0
  %264 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %263, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %265 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %264, %dx.types.Handle %45, float %60, float %61, float undef, float undef, i32 0, i32 0, i32 undef, float %223)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %266 = extractvalue %dx.types.ResRet.f32 %265, 0
  %267 = extractvalue %dx.types.ResRet.f32 %265, 1
  %268 = extractvalue %dx.types.ResRet.f32 %265, 2
  %269 = extractvalue %dx.types.ResRet.f32 %265, 3
  %270 = add i32 %53, 64
  %271 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %270, i32 undef)  ; BufferLoad(srv,index,wot)
  %272 = extractvalue %dx.types.ResRet.i32 %271, 0
  %273 = add i32 %272, 0
  %274 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %273, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %275 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %274, %dx.types.Handle %45, float %60, float %61, float undef, float undef, i32 0, i32 0, i32 undef, float %223)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %276 = extractvalue %dx.types.ResRet.f32 %275, 0
  %277 = add i32 %53, 68
  %278 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %277, i32 undef)  ; BufferLoad(srv,index,wot)
  %279 = extractvalue %dx.types.ResRet.i32 %278, 0
  %280 = add i32 %279, 0
  %281 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %280, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %282 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %281, %dx.types.Handle %45, float %60, float %61, float undef, float undef, i32 0, i32 0, i32 undef, float %223)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %283 = extractvalue %dx.types.ResRet.f32 %282, 0
  %284 = fadd fast float %56, 1.000000e+00
  %285 = add i32 %53, 24
  %286 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %285, i32 undef)  ; BufferLoad(srv,index,wot)
  %287 = extractvalue %dx.types.ResRet.i32 %286, 2
  %288 = bitcast i32 %287 to float
  %289 = fmul fast float %283, 2.000000e+00
  %290 = fsub fast float %284, %289
  %291 = fmul fast float %288, %290
  %292 = fadd fast float %291, %65
  %293 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %294 = extractvalue %dx.types.CBufRet.f32 %293, 2
  %295 = extractvalue %dx.types.CBufRet.f32 %293, 3
  %296 = fmul fast float %77, 2.000000e+00
  %297 = fmul fast float %296, %294
  %298 = fmul fast float %78, 2.000000e+00
  %299 = fmul fast float %298, %295
  %300 = fsub fast float 1.000000e+00, %297
  %301 = fsub fast float 1.000000e+00, %299
  %302 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %303 = extractvalue %dx.types.CBufRet.f32 %302, 0
  %304 = extractvalue %dx.types.CBufRet.f32 %302, 1
  %305 = extractvalue %dx.types.CBufRet.f32 %302, 2
  %306 = fmul fast float %300, %303
  %307 = fmul fast float %300, %304
  %308 = fmul fast float %300, %305
  %309 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %310 = extractvalue %dx.types.CBufRet.f32 %309, 0
  %311 = extractvalue %dx.types.CBufRet.f32 %309, 1
  %312 = extractvalue %dx.types.CBufRet.f32 %309, 2
  %313 = fmul fast float %301, %310
  %314 = fmul fast float %301, %311
  %315 = fmul fast float %301, %312
  %316 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %317 = extractvalue %dx.types.CBufRet.f32 %316, 0
  %318 = extractvalue %dx.types.CBufRet.f32 %316, 1
  %319 = extractvalue %dx.types.CBufRet.f32 %316, 2
  %320 = fadd fast float %313, %317
  %321 = fadd fast float %320, %306
  %322 = fadd fast float %314, %318
  %323 = fadd fast float %322, %307
  %324 = fadd fast float %315, %319
  %325 = fadd fast float %324, %308
  %326 = fmul fast float %321, %292
  %327 = fmul fast float %323, %292
  %328 = fmul fast float %325, %292
  %329 = call float @dx.op.unary.f32(i32 26, float %55)  ; Round_ne(value)
  %330 = fptoui float %329 to i32
  %331 = call float @dx.op.unary.f32(i32 26, float %62)  ; Round_ne(value)
  %332 = fptoui float %331 to i32
  %333 = shl i32 %332, 3
  %334 = or i32 %333, 4
  %335 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %334, i32 undef)  ; BufferLoad(srv,index,wot)
  %336 = extractvalue %dx.types.ResRet.i32 %335, 0
  %337 = and i32 %336, 16777215
  %338 = add i32 %337, %330
  %339 = shl i32 %338, 6
  %340 = getelementptr [3 x float], [3 x float]* %66, i32 0, i32 0
  %341 = getelementptr [3 x float], [3 x float]* %67, i32 0, i32 0
  %342 = getelementptr [3 x float], [3 x float]* %68, i32 0, i32 0
  %343 = getelementptr [3 x float], [3 x float]* %69, i32 0, i32 0
  %344 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %339, i32 undef)  ; BufferLoad(srv,index,wot)
  %345 = extractvalue %dx.types.ResRet.f32 %344, 0
  %346 = extractvalue %dx.types.ResRet.f32 %344, 1
  %347 = extractvalue %dx.types.ResRet.f32 %344, 2
  %348 = extractvalue %dx.types.ResRet.f32 %344, 3
  store float %345, float* %340, align 4
  store float %346, float* %341, align 4
  store float %347, float* %342, align 4
  store float %348, float* %343, align 4
  %349 = getelementptr [3 x float], [3 x float]* %66, i32 0, i32 1
  %350 = getelementptr [3 x float], [3 x float]* %67, i32 0, i32 1
  %351 = getelementptr [3 x float], [3 x float]* %68, i32 0, i32 1
  %352 = getelementptr [3 x float], [3 x float]* %69, i32 0, i32 1
  %353 = or i32 %339, 16
  %354 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %353, i32 undef)  ; BufferLoad(srv,index,wot)
  %355 = extractvalue %dx.types.ResRet.f32 %354, 0
  %356 = extractvalue %dx.types.ResRet.f32 %354, 1
  %357 = extractvalue %dx.types.ResRet.f32 %354, 2
  %358 = extractvalue %dx.types.ResRet.f32 %354, 3
  store float %355, float* %349, align 4
  store float %356, float* %350, align 4
  store float %357, float* %351, align 4
  store float %358, float* %352, align 4
  %359 = getelementptr [3 x float], [3 x float]* %66, i32 0, i32 2
  %360 = getelementptr [3 x float], [3 x float]* %67, i32 0, i32 2
  %361 = getelementptr [3 x float], [3 x float]* %68, i32 0, i32 2
  %362 = getelementptr [3 x float], [3 x float]* %69, i32 0, i32 2
  %363 = or i32 %339, 32
  %364 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %363, i32 undef)  ; BufferLoad(srv,index,wot)
  %365 = extractvalue %dx.types.ResRet.f32 %364, 0
  %366 = extractvalue %dx.types.ResRet.f32 %364, 1
  %367 = extractvalue %dx.types.ResRet.f32 %364, 2
  %368 = extractvalue %dx.types.ResRet.f32 %364, 3
  store float %365, float* %359, align 4
  store float %366, float* %360, align 4
  store float %367, float* %361, align 4
  store float %368, float* %362, align 4
  %369 = or i32 %339, 48
  %370 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %369, i32 undef)  ; BufferLoad(srv,index,wot)
  %371 = extractvalue %dx.types.ResRet.i32 %370, 0
  %372 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %373 = extractvalue %dx.types.CBufRet.i32 %372, 1
  %374 = icmp eq i32 %373, 0
  %375 = and i32 %371, 4
  %376 = icmp ne i32 %375, 0
  %377 = and i1 %374, %376
  br i1 %377, label %378, label %417

; <label>:378                                     ; preds = %256
  %379 = and i32 %371, 3
  %380 = getelementptr [3 x float], [3 x float]* %66, i32 0, i32 %379
  %381 = getelementptr [3 x float], [3 x float]* %67, i32 0, i32 %379
  %382 = getelementptr [3 x float], [3 x float]* %68, i32 0, i32 %379
  %383 = getelementptr [3 x float], [3 x float]* %69, i32 0, i32 %379
  %384 = load float, float* %380, align 4
  %385 = load float, float* %381, align 4
  %386 = load float, float* %382, align 4
  %387 = load float, float* %383, align 4
  %388 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %389 = extractvalue %dx.types.CBufRet.f32 %388, 0
  %390 = extractvalue %dx.types.CBufRet.f32 %388, 1
  %391 = extractvalue %dx.types.CBufRet.f32 %388, 2
  %392 = call float @dx.op.dot3.f32(i32 55, float %384, float %385, float %386, float %389, float %390, float %391)  ; Dot3(ax,ay,az,bx,by,bz)
  %393 = fadd fast float %392, %387
  %394 = fcmp fast ogt float %393, 1.000000e+00
  br i1 %394, label %395, label %400

; <label>:395                                     ; preds = %378
  %396 = fadd fast float %393, -1.000000e+00
  %397 = fmul fast float %396, 4.000000e+00
  %398 = call float @dx.op.unary.f32(i32 7, float %397)  ; Saturate(value)
  %399 = fmul fast float %398, 4.000000e+00
  br label %406

; <label>:400                                     ; preds = %378
  %401 = fcmp fast olt float %393, 0.000000e+00
  br i1 %401, label %402, label %406

; <label>:402                                     ; preds = %400
  %403 = fmul fast float %393, -4.000000e+00
  %404 = call float @dx.op.unary.f32(i32 7, float %403)  ; Saturate(value)
  %405 = fmul fast float %404, -4.000000e+00
  br label %406

; <label>:406                                     ; preds = %402, %400, %395
  %407 = phi float [ %399, %395 ], [ %405, %402 ], [ 0.000000e+00, %400 ]
  %408 = icmp eq i32 %379, 0
  %409 = select i1 %408, float %407, float 0.000000e+00
  %410 = fadd fast float %348, %409
  store float %410, float* %343, align 4, !noalias !91
  %411 = icmp eq i32 %379, 1
  %412 = select i1 %411, float %407, float 0.000000e+00
  %413 = fadd fast float %358, %412
  store float %413, float* %352, align 4, !noalias !91
  %414 = icmp eq i32 %379, 2
  %415 = select i1 %414, float %407, float 0.000000e+00
  %416 = fadd fast float %368, %415
  store float %416, float* %362, align 4, !noalias !91
  br label %417

; <label>:417                                     ; preds = %406, %256
  %418 = phi float [ %368, %256 ], [ %416, %406 ]
  %419 = phi float [ %358, %256 ], [ %413, %406 ]
  %420 = phi float [ %348, %256 ], [ %410, %406 ]
  %421 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %422 = extractvalue %dx.types.CBufRet.f32 %421, 0
  %423 = extractvalue %dx.types.CBufRet.f32 %421, 1
  %424 = extractvalue %dx.types.CBufRet.f32 %421, 2
  %425 = fadd fast float %422, %326
  %426 = fadd fast float %423, %327
  %427 = fadd fast float %424, %328
  %428 = call float @dx.op.dot4.f32(i32 56, float %345, float %346, float %347, float %420, float %425, float %426, float %427, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %429 = call float @dx.op.dot4.f32(i32 56, float %355, float %356, float %357, float %419, float %425, float %426, float %427, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %430 = call float @dx.op.dot4.f32(i32 56, float %365, float %366, float %367, float %418, float %425, float %426, float %427, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %431 = fadd fast float %276, 0xBFB99999A0000000
  %432 = call float @dx.op.unary.f32(i32 7, float %431)  ; Saturate(value)
  %433 = fmul fast float %432, 0x3FF1C71C80000000
  %434 = call float @dx.op.binary.f32(i32 36, float %276, float 0x3FB99999A0000000)  ; FMin(a,b)
  %435 = fsub fast float 1.000000e+00, %433
  %436 = call float @dx.op.unary.f32(i32 7, float %435)  ; Saturate(value)
  %437 = fmul fast float %436, %266
  %438 = fmul fast float %436, %267
  %439 = fmul fast float %436, %268
  %440 = call float @dx.op.unary.f32(i32 7, float %437)  ; Saturate(value)
  %441 = call float @dx.op.unary.f32(i32 7, float %438)  ; Saturate(value)
  %442 = call float @dx.op.unary.f32(i32 7, float %439)  ; Saturate(value)
  %443 = fmul fast float %433, %266
  %444 = fmul fast float %433, %267
  %445 = fmul fast float %433, %268
  %446 = fadd fast float %443, %434
  %447 = fadd fast float %444, %434
  %448 = fadd fast float %445, %434
  %449 = call float @dx.op.unary.f32(i32 7, float %446)  ; Saturate(value)
  %450 = call float @dx.op.unary.f32(i32 7, float %447)  ; Saturate(value)
  %451 = call float @dx.op.unary.f32(i32 7, float %448)  ; Saturate(value)
  %452 = call float @dx.op.dot3.f32(i32 55, float %440, float %441, float %442, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %453 = fmul fast float %452, 1.875000e-01
  %454 = fadd fast float %453, 0x3FE647AE20000000
  %455 = call float @dx.op.unary.f32(i32 7, float %454)  ; Saturate(value)
  %456 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %457 = extractvalue %dx.types.CBufRet.f32 %456, 0
  %458 = fptoui float %77 to i32
  %459 = fptoui float %78 to i32
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %458, i32 %459, i32 undef, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %460 = fsub fast float -0.000000e+00, %328
  %461 = call float @dx.op.dot3.f32(i32 55, float %326, float %327, float %328, float %326, float %327, float %328)  ; Dot3(ax,ay,az,bx,by,bz)
  %462 = call float @dx.op.unary.f32(i32 25, float %461)  ; Rsqrt(value)
  %463 = fmul fast float %462, %326
  %464 = fmul fast float %462, %327
  %465 = fmul fast float %462, %328
  %466 = fsub fast float -0.000000e+00, %463
  %467 = fsub fast float -0.000000e+00, %464
  %468 = fsub fast float -0.000000e+00, %465
  %469 = select i1 %151, float 0.000000e+00, float %451
  %470 = call float @dx.op.dot3.f32(i32 55, float %257, float %258, float %259, float %466, float %467, float %468)  ; Dot3(ax,ay,az,bx,by,bz)
  %471 = call float @dx.op.unary.f32(i32 7, float %470)  ; Saturate(value)
  %472 = call float @dx.op.dot3.f32(i32 55, float %463, float %464, float %465, float %257, float %258, float %259)  ; Dot3(ax,ay,az,bx,by,bz)
  %473 = fmul fast float %472, 2.000000e+00
  %474 = fmul fast float %473, %257
  %475 = fmul fast float %473, %258
  %476 = fmul fast float %473, %259
  %477 = fsub fast float %463, %474
  %478 = fsub fast float %464, %475
  %479 = fsub fast float %465, %476
  %480 = fsub fast float 1.000000e+00, %269
  %481 = call float @dx.op.binary.f32(i32 35, float %480, float 0x3F847AE140000000)  ; FMax(a,b)
  %482 = fmul fast float %481, %481
  %483 = fmul fast float %482, %482
  %484 = call float @dx.op.unary.f32(i32 7, float %471)  ; Saturate(value)
  %485 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %45, float 0x3BF7A3BEA0000000, float %483, float %484, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %486 = extractvalue %dx.types.ResRet.f32 %485, 0
  %487 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %488 = extractvalue %dx.types.CBufRet.f32 %487, 0
  %489 = extractvalue %dx.types.CBufRet.f32 %487, 1
  %490 = fadd fast float %488, %326
  %491 = fadd fast float %489, %327
  %492 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 260)  ; CBufferLoadLegacy(handle,regIndex)
  %493 = extractvalue %dx.types.CBufRet.i32 %492, 0
  %494 = icmp eq i32 %493, 1
  br i1 %494, label %495, label %530

; <label>:495                                     ; preds = %417
  %496 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %497 = extractvalue %dx.types.CBufRet.f32 %496, 0
  %498 = extractvalue %dx.types.CBufRet.f32 %496, 1
  %499 = fsub fast float %490, %497
  %500 = fsub fast float %491, %498
  %501 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %502 = extractvalue %dx.types.CBufRet.f32 %501, 0
  %503 = extractvalue %dx.types.CBufRet.f32 %501, 1
  %504 = fmul fast float %499, %502
  %505 = fmul fast float %500, %503
  %506 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %45, float %504, float %505, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %507 = extractvalue %dx.types.ResRet.f32 %506, 0
  %508 = fcmp fast ogt float %507, 0.000000e+00
  %509 = extractvalue %dx.types.CBufRet.i32 %492, 3
  %510 = icmp ne i32 %509, 0
  %511 = and i1 %508, %510
  br i1 %511, label %512, label %530, !dx.controlflow.hints !96

; <label>:512                                     ; preds = %495
  %513 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %514 = extractvalue %dx.types.CBufRet.f32 %513, 0
  %515 = extractvalue %dx.types.CBufRet.f32 %513, 1
  %516 = fsub fast float %490, %514
  %517 = fsub fast float %491, %515
  %518 = fmul fast float %516, %516
  %519 = fmul fast float %517, %517
  %520 = fadd fast float %518, %519
  %521 = uitofp i32 %509 to float
  %522 = fmul fast float %521, %521
  %523 = fcmp fast ogt float %520, %522
  br i1 %523, label %530, label %524

; <label>:524                                     ; preds = %512
  %525 = call float @dx.op.unary.f32(i32 24, float %520)  ; Sqrt(value)
  %526 = fsub fast float %521, %525
  %527 = fmul fast float %526, 0x3F75555560000000
  %528 = call float @dx.op.unary.f32(i32 7, float %527)  ; Saturate(value)
  %529 = call float @dx.op.binary.f32(i32 36, float %528, float %507)  ; FMin(a,b)
  br label %530

; <label>:530                                     ; preds = %524, %512, %495, %417
  %531 = phi float [ 1.000000e+00, %417 ], [ %529, %524 ], [ %507, %495 ], [ 0.000000e+00, %512 ]
  %532 = fcmp fast ogt float %531, 0.000000e+00
  br i1 %532, label %533, label %854, !dx.controlflow.hints !97

; <label>:533                                     ; preds = %530
  %534 = fadd fast float %55, 5.000000e-01
  %535 = fptoui float %534 to i32
  %536 = fadd fast float %62, 5.000000e-01
  %537 = fptoui float %536 to i32
  %538 = shl i32 %537, 3
  %539 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %538, i32 undef)  ; BufferLoad(srv,index,wot)
  %540 = extractvalue %dx.types.ResRet.i32 %539, 0
  %541 = or i32 %538, 4
  %542 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %541, i32 undef)  ; BufferLoad(srv,index,wot)
  %543 = extractvalue %dx.types.ResRet.i32 %542, 0
  %544 = and i32 %543, 16777215
  %545 = add i32 %544, %535
  %546 = shl i32 %545, 5
  %547 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %546, i32 undef)  ; BufferLoad(srv,index,wot)
  %548 = extractvalue %dx.types.ResRet.f32 %547, 0
  %549 = extractvalue %dx.types.ResRet.f32 %547, 1
  %550 = extractvalue %dx.types.ResRet.f32 %547, 2
  %551 = or i32 %546, 16
  %552 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %551, i32 undef)  ; BufferLoad(srv,index,wot)
  %553 = extractvalue %dx.types.ResRet.f32 %552, 0
  %554 = extractvalue %dx.types.ResRet.f32 %552, 1
  %555 = extractvalue %dx.types.ResRet.f32 %552, 2
  %556 = lshr i32 %543, 24
  %557 = and i32 %556, 3
  %558 = add nuw nsw i32 %557, 3
  %559 = shl i32 1, %558
  %560 = lshr i32 %543, 29
  %561 = lshr i32 %543, 23
  %562 = and i32 %561, 56
  %563 = shl nuw nsw i32 %560, 3
  %564 = lshr i32 %540, 16
  %565 = and i32 %540, 65535
  %566 = uitofp i32 %559 to float
  %567 = fmul fast float %566, 1.562500e-02
  %568 = uitofp i32 %564 to float
  %569 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 302)  ; CBufferLoadLegacy(handle,regIndex)
  %570 = extractvalue %dx.types.CBufRet.f32 %569, 3
  %571 = fmul fast float %570, %568
  %572 = uitofp i32 %562 to float
  %573 = fmul fast float %572, 1.562500e-02
  %574 = uitofp i32 %563 to float
  %575 = fmul fast float %574, 1.562500e-02
  %576 = uitofp i32 %565 to float
  %577 = fmul fast float %570, %576
  %578 = call float @dx.op.unary.f32(i32 7, float %428)  ; Saturate(value)
  %579 = call float @dx.op.unary.f32(i32 7, float %429)  ; Saturate(value)
  %580 = call float @dx.op.unary.f32(i32 7, float %430)  ; Saturate(value)
  %581 = fmul fast float %578, %548
  %582 = fmul fast float %579, %549
  %583 = fmul fast float %580, %550
  %584 = fadd fast float %581, %553
  %585 = fmul fast float %567, %584
  %586 = fadd fast float %585, %573
  %587 = fadd fast float %582, %554
  %588 = fmul fast float %567, %587
  %589 = fadd fast float %588, %575
  %590 = fadd fast float %583, %555
  %591 = fmul fast float %571, %590
  %592 = fadd fast float %591, %577
  %593 = fmul fast float %586, 5.000000e-01
  %594 = fmul fast float %589, 0x3FD5555560000000
  %595 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %36, %dx.types.Handle %43, float %586, float %589, float %592, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %596 = extractvalue %dx.types.ResRet.f32 %595, 0
  %597 = extractvalue %dx.types.ResRet.f32 %595, 1
  %598 = extractvalue %dx.types.ResRet.f32 %595, 2
  %599 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %600 = extractvalue %dx.types.CBufRet.f32 %599, 3
  %601 = fmul fast float %600, %596
  %602 = fmul fast float %600, %597
  %603 = fmul fast float %600, %598
  %604 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %43, float %593, float %594, float %592, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %605 = extractvalue %dx.types.ResRet.f32 %604, 0
  %606 = extractvalue %dx.types.ResRet.f32 %604, 1
  %607 = extractvalue %dx.types.ResRet.f32 %604, 2
  %608 = extractvalue %dx.types.ResRet.f32 %604, 3
  %609 = fadd fast float %593, 5.000000e-01
  %610 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %43, float %609, float %594, float %592, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %611 = extractvalue %dx.types.ResRet.f32 %610, 0
  %612 = extractvalue %dx.types.ResRet.f32 %610, 1
  %613 = extractvalue %dx.types.ResRet.f32 %610, 2
  %614 = extractvalue %dx.types.ResRet.f32 %610, 3
  %615 = fadd fast float %594, 0x3FD5555560000000
  %616 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %43, float %593, float %615, float %592, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %617 = extractvalue %dx.types.ResRet.f32 %616, 0
  %618 = extractvalue %dx.types.ResRet.f32 %616, 1
  %619 = extractvalue %dx.types.ResRet.f32 %616, 2
  %620 = extractvalue %dx.types.ResRet.f32 %616, 3
  %621 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %43, float %609, float %615, float %592, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %622 = extractvalue %dx.types.ResRet.f32 %621, 0
  %623 = extractvalue %dx.types.ResRet.f32 %621, 1
  %624 = extractvalue %dx.types.ResRet.f32 %621, 2
  %625 = extractvalue %dx.types.ResRet.f32 %621, 3
  %626 = fadd fast float %594, 0x3FE5555560000000
  %627 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %43, float %593, float %626, float %592, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %628 = extractvalue %dx.types.ResRet.f32 %627, 0
  %629 = extractvalue %dx.types.ResRet.f32 %627, 1
  %630 = extractvalue %dx.types.ResRet.f32 %627, 2
  %631 = extractvalue %dx.types.ResRet.f32 %627, 3
  %632 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %43, float %609, float %626, float %592, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %633 = extractvalue %dx.types.ResRet.f32 %632, 0
  %634 = extractvalue %dx.types.ResRet.f32 %632, 1
  %635 = extractvalue %dx.types.ResRet.f32 %632, 2
  %636 = extractvalue %dx.types.ResRet.f32 %632, 3
  %637 = fmul fast float %605, 0x400BB67AE0000000
  %638 = fadd fast float %637, 0xBFFBB67AE0000000
  %639 = fmul fast float %638, %601
  %640 = fmul fast float %606, 0x400BB67AE0000000
  %641 = fadd fast float %640, 0xBFFBB67AE0000000
  %642 = fmul fast float %641, %602
  %643 = fmul fast float %607, 0x400BB67AE0000000
  %644 = fadd fast float %643, 0xBFFBB67AE0000000
  %645 = fmul fast float %644, %603
  %646 = fmul fast float %608, 0x4011E377A0000000
  %647 = fadd fast float %646, 0xC001E377A0000000
  %648 = fmul fast float %647, %601
  %649 = fmul fast float %611, 0x4011E377A0000000
  %650 = fadd fast float %649, 0xC001E377A0000000
  %651 = fmul fast float %650, %602
  %652 = fmul fast float %612, 0x4011E377A0000000
  %653 = fadd fast float %652, 0xC001E377A0000000
  %654 = fmul fast float %653, %603
  %655 = fmul fast float %613, 0x400BB67AE0000000
  %656 = fadd fast float %655, 0xBFFBB67AE0000000
  %657 = fmul fast float %656, %601
  %658 = fmul fast float %614, 0x400BB67AE0000000
  %659 = fadd fast float %658, 0xBFFBB67AE0000000
  %660 = fmul fast float %659, %602
  %661 = fmul fast float %617, 0x400BB67AE0000000
  %662 = fadd fast float %661, 0xBFFBB67AE0000000
  %663 = fmul fast float %662, %603
  %664 = fmul fast float %618, 0x400BB67AE0000000
  %665 = fadd fast float %664, 0xBFFBB67AE0000000
  %666 = fmul fast float %665, %601
  %667 = fmul fast float %619, 0x400BB67AE0000000
  %668 = fadd fast float %667, 0xBFFBB67AE0000000
  %669 = fmul fast float %668, %602
  %670 = fmul fast float %620, 0x400BB67AE0000000
  %671 = fadd fast float %670, 0xBFFBB67AE0000000
  %672 = fmul fast float %671, %603
  %673 = fmul fast float %622, 0x400EFBDEC0000000
  %674 = fadd fast float %673, 0xBFFEFBDEC0000000
  %675 = fmul fast float %674, %601
  %676 = fmul fast float %623, 0x400EFBDEC0000000
  %677 = fadd fast float %676, 0xBFFEFBDEC0000000
  %678 = fmul fast float %677, %602
  %679 = fmul fast float %624, 0x400EFBDEC0000000
  %680 = fadd fast float %679, 0xBFFEFBDEC0000000
  %681 = fmul fast float %680, %603
  %682 = fmul fast float %625, 0x400EFBDEC0000000
  %683 = fadd fast float %682, 0xBFFEFBDEC0000000
  %684 = fmul fast float %683, %601
  %685 = fmul fast float %628, 0x400EFBDEC0000000
  %686 = fadd fast float %685, 0xBFFEFBDEC0000000
  %687 = fmul fast float %686, %602
  %688 = fmul fast float %629, 0x400EFBDEC0000000
  %689 = fadd fast float %688, 0xBFFEFBDEC0000000
  %690 = fmul fast float %689, %603
  %691 = fmul fast float %630, 0x400EFBDEC0000000
  %692 = fadd fast float %691, 0xBFFEFBDEC0000000
  %693 = fmul fast float %692, %601
  %694 = fmul fast float %631, 0x400EFBDEC0000000
  %695 = fadd fast float %694, 0xBFFEFBDEC0000000
  %696 = fmul fast float %695, %602
  %697 = fmul fast float %633, 0x400EFBDEC0000000
  %698 = fadd fast float %697, 0xBFFEFBDEC0000000
  %699 = fmul fast float %698, %603
  %700 = fmul fast float %634, 0x400EFBDEC0000000
  %701 = fadd fast float %700, 0xBFFEFBDEC0000000
  %702 = fmul fast float %701, %601
  %703 = fmul fast float %635, 0x400EFBDEC0000000
  %704 = fadd fast float %703, 0xBFFEFBDEC0000000
  %705 = fmul fast float %704, %602
  %706 = fmul fast float %636, 0x400EFBDEC0000000
  %707 = fadd fast float %706, 0xBFFEFBDEC0000000
  %708 = fmul fast float %707, %603
  %709 = call float @dx.op.dot3.f32(i32 55, float %601, float %602, float %603, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %710 = fmul fast float %709, 0x3FD20DD760000000
  %711 = fmul fast float %601, 0x3FD20DD760000000
  %712 = fmul fast float %259, 0x3FD4D8D7C0000000
  %713 = fmul fast float %712, %639
  %714 = fmul fast float %259, %259
  %715 = fmul fast float %714, 0x3FEE471020000000
  %716 = fadd fast float %715, 0xBFD42F6020000000
  %717 = fmul fast float %648, %716
  %718 = fmul fast float %257, 0x3FD4D8D7C0000000
  %719 = fmul fast float %718, %666
  %720 = fmul fast float %258, 0x3FD4D8D7C0000000
  %721 = fmul fast float %720, %657
  %722 = fmul fast float %259, 0xBFF17B1420000000
  %723 = fmul fast float %675, %257
  %724 = fmul fast float %684, %258
  %725 = fmul fast float %257, %257
  %726 = fmul fast float %258, %258
  %727 = fsub fast float %725, %726
  %728 = fmul fast float %727, 0x3FC17B1420000000
  %729 = fmul fast float %728, %693
  %730 = fmul fast float %257, 0x3FD17B1420000000
  %731 = fmul fast float %730, %258
  %732 = fmul fast float %731, %702
  %733 = fadd fast float %724, %723
  %734 = fmul fast float %722, %733
  %735 = fadd fast float %734, %717
  %736 = fmul fast float %735, 2.500000e-01
  %737 = fadd fast float %713, %711
  %738 = fsub fast float %737, %721
  %739 = fsub fast float %738, %719
  %740 = fadd fast float %739, %736
  %741 = fadd fast float %740, %729
  %742 = fadd fast float %741, %732
  %743 = fmul fast float %602, 0x3FD20DD760000000
  %744 = fmul fast float %712, %642
  %745 = fmul fast float %651, %716
  %746 = fmul fast float %718, %669
  %747 = fmul fast float %720, %660
  %748 = fmul fast float %678, %257
  %749 = fmul fast float %687, %258
  %750 = fmul fast float %728, %696
  %751 = fmul fast float %731, %705
  %752 = fadd fast float %749, %748
  %753 = fmul fast float %722, %752
  %754 = fadd fast float %753, %745
  %755 = fmul fast float %754, 2.500000e-01
  %756 = fadd fast float %744, %743
  %757 = fsub fast float %756, %747
  %758 = fsub fast float %757, %746
  %759 = fadd fast float %758, %750
  %760 = fadd fast float %759, %755
  %761 = fadd fast float %760, %751
  %762 = fmul fast float %603, 0x3FD20DD760000000
  %763 = fmul fast float %712, %645
  %764 = fmul fast float %654, %716
  %765 = fmul fast float %718, %672
  %766 = fmul fast float %720, %663
  %767 = fmul fast float %681, %257
  %768 = fmul fast float %690, %258
  %769 = fmul fast float %728, %699
  %770 = fmul fast float %731, %708
  %771 = fadd fast float %768, %767
  %772 = fmul fast float %722, %771
  %773 = fadd fast float %772, %764
  %774 = fmul fast float %773, 2.500000e-01
  %775 = fadd fast float %763, %762
  %776 = fsub fast float %775, %765
  %777 = fsub fast float %776, %766
  %778 = fadd fast float %777, %774
  %779 = fadd fast float %778, %769
  %780 = fadd fast float %779, %770
  %781 = call float @dx.op.binary.f32(i32 35, float %742, float 0.000000e+00)  ; FMax(a,b)
  %782 = call float @dx.op.binary.f32(i32 35, float %761, float 0.000000e+00)  ; FMax(a,b)
  %783 = call float @dx.op.binary.f32(i32 35, float %780, float 0.000000e+00)  ; FMax(a,b)
  %784 = fmul fast float %479, 0x3FD4D8D7C0000000
  %785 = fmul fast float %784, %639
  %786 = fmul fast float %479, %479
  %787 = fmul fast float %786, 0x3FEE471020000000
  %788 = fadd fast float %787, 0xBFD42F6020000000
  %789 = fmul fast float %648, %788
  %790 = fmul fast float %477, 0x3FD4D8D7C0000000
  %791 = fmul fast float %790, %666
  %792 = fmul fast float %478, 0x3FD4D8D7C0000000
  %793 = fmul fast float %792, %657
  %794 = fmul fast float %479, 0xBFF17B1420000000
  %795 = fmul fast float %675, %477
  %796 = fmul fast float %684, %478
  %797 = fmul fast float %477, %477
  %798 = fmul fast float %478, %478
  %799 = fsub fast float %797, %798
  %800 = fmul fast float %799, 0x3FC17B1420000000
  %801 = fmul fast float %800, %693
  %802 = fmul fast float %478, 0x3FD17B1420000000
  %803 = fmul fast float %802, %477
  %804 = fmul fast float %803, %702
  %805 = fadd fast float %796, %795
  %806 = fmul fast float %794, %805
  %807 = fadd fast float %806, %789
  %808 = fmul fast float %807, 2.500000e-01
  %809 = fadd fast float %785, %711
  %810 = fsub fast float %809, %793
  %811 = fsub fast float %810, %791
  %812 = fadd fast float %811, %808
  %813 = fadd fast float %812, %801
  %814 = fadd fast float %813, %804
  %815 = fmul fast float %784, %642
  %816 = fmul fast float %651, %788
  %817 = fmul fast float %790, %669
  %818 = fmul fast float %792, %660
  %819 = fmul fast float %678, %477
  %820 = fmul fast float %687, %478
  %821 = fmul fast float %800, %696
  %822 = fmul fast float %803, %705
  %823 = fadd fast float %820, %819
  %824 = fmul fast float %794, %823
  %825 = fadd fast float %824, %816
  %826 = fmul fast float %825, 2.500000e-01
  %827 = fadd fast float %815, %743
  %828 = fsub fast float %827, %818
  %829 = fsub fast float %828, %817
  %830 = fadd fast float %829, %821
  %831 = fadd fast float %830, %826
  %832 = fadd fast float %831, %822
  %833 = fmul fast float %784, %645
  %834 = fmul fast float %654, %788
  %835 = fmul fast float %790, %672
  %836 = fmul fast float %792, %663
  %837 = fmul fast float %681, %477
  %838 = fmul fast float %690, %478
  %839 = fmul fast float %800, %699
  %840 = fmul fast float %803, %708
  %841 = fadd fast float %838, %837
  %842 = fmul fast float %794, %841
  %843 = fadd fast float %842, %834
  %844 = fmul fast float %843, 2.500000e-01
  %845 = fadd fast float %833, %762
  %846 = fsub fast float %845, %835
  %847 = fsub fast float %846, %836
  %848 = fadd fast float %847, %844
  %849 = fadd fast float %848, %839
  %850 = fadd fast float %849, %840
  %851 = call float @dx.op.binary.f32(i32 35, float %814, float 0.000000e+00)  ; FMax(a,b)
  %852 = call float @dx.op.binary.f32(i32 35, float %832, float 0.000000e+00)  ; FMax(a,b)
  %853 = call float @dx.op.binary.f32(i32 35, float %850, float 0.000000e+00)  ; FMax(a,b)
  br label %854

; <label>:854                                     ; preds = %533, %530
  %855 = phi float [ %851, %533 ], [ 0.000000e+00, %530 ]
  %856 = phi float [ %852, %533 ], [ 0.000000e+00, %530 ]
  %857 = phi float [ %853, %533 ], [ 0.000000e+00, %530 ]
  %858 = phi float [ %781, %533 ], [ 0.000000e+00, %530 ]
  %859 = phi float [ %782, %533 ], [ 0.000000e+00, %530 ]
  %860 = phi float [ %783, %533 ], [ 0.000000e+00, %530 ]
  %861 = phi float [ %710, %533 ], [ 0.000000e+00, %530 ]
  %862 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 271)  ; CBufferLoadLegacy(handle,regIndex)
  %863 = extractvalue %dx.types.CBufRet.f32 %862, 0
  %864 = fcmp fast ogt float %863, 0.000000e+00
  %865 = and i1 %532, %864
  br i1 %865, label %866, label %1070, !dx.controlflow.hints !98

; <label>:866                                     ; preds = %854
  %867 = extractvalue %dx.types.CBufRet.f32 %487, 2
  %868 = fadd fast float %867, %328
  %869 = fmul fast float %257, 3.200000e+01
  %870 = fmul fast float %258, 3.200000e+01
  %871 = fadd fast float %490, %869
  %872 = fadd fast float %491, %870
  %873 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %874 = extractvalue %dx.types.CBufRet.f32 %873, 0
  %875 = extractvalue %dx.types.CBufRet.f32 %873, 1
  %876 = fsub fast float %871, %874
  %877 = fsub fast float %872, %875
  %878 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %879 = extractvalue %dx.types.CBufRet.f32 %878, 0
  %880 = extractvalue %dx.types.CBufRet.f32 %878, 1
  %881 = fmul fast float %876, %879
  %882 = fmul fast float %877, %880
  %883 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %884 = extractvalue %dx.types.CBufRet.f32 %883, 0
  %885 = extractvalue %dx.types.CBufRet.f32 %883, 1
  %886 = fsub fast float %490, %884
  %887 = fsub fast float %491, %885
  %888 = fmul fast float %886, %886
  %889 = fmul fast float %887, %887
  %890 = fadd fast float %888, %889
  %891 = call float @dx.op.unary.f32(i32 24, float %890)  ; Sqrt(value)
  %892 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %893 = extractvalue %dx.types.CBufRet.f32 %892, 0
  %894 = extractvalue %dx.types.CBufRet.f32 %892, 1
  %895 = fsub fast float %891, %893
  %896 = fdiv fast float %895, %894
  %897 = call float @dx.op.unary.f32(i32 7, float %896)  ; Saturate(value)
  %898 = fmul fast float %897, 2.000000e+00
  %899 = fsub fast float 3.000000e+00, %898
  %900 = fmul fast float %897, %897
  %901 = fmul fast float %900, %899
  %902 = fcmp fast oge float %881, 0.000000e+00
  %903 = fcmp fast ole float %881, 1.000000e+00
  %904 = and i1 %903, %902
  %905 = fcmp fast oge float %882, 0.000000e+00
  %906 = and i1 %905, %904
  %907 = fcmp fast ole float %882, 1.000000e+00
  %908 = and i1 %907, %906
  %909 = fcmp fast ogt float %901, 0.000000e+00
  %910 = and i1 %909, %908
  br i1 %910, label %911, label %1034, !dx.controlflow.hints !99

; <label>:911                                     ; preds = %866
  %912 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %913 = extractvalue %dx.types.CBufRet.f32 %912, 2
  %914 = extractvalue %dx.types.CBufRet.f32 %912, 3
  %915 = fmul fast float %913, %881
  %916 = fmul fast float %914, %882
  %917 = call float @dx.op.unary.f32(i32 27, float %915)  ; Round_ni(value)
  %918 = call float @dx.op.unary.f32(i32 27, float %916)  ; Round_ni(value)
  %919 = fptosi float %917 to i32
  %920 = fptosi float %918 to i32
  %921 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %29, i32 0, i32 %919, i32 %920, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %922 = extractvalue %dx.types.ResRet.i32 %921, 0
  %923 = lshr i32 %922, 16
  %924 = icmp eq i32 %923, 65535
  br i1 %924, label %1034, label %925

; <label>:925                                     ; preds = %911
  %926 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %927 = extractvalue %dx.types.CBufRet.f32 %926, 0
  %928 = fmul fast float %927, %881
  %929 = extractvalue %dx.types.CBufRet.f32 %926, 1
  %930 = fadd fast float %928, %929
  %931 = extractvalue %dx.types.CBufRet.f32 %926, 2
  %932 = fmul fast float %931, %882
  %933 = extractvalue %dx.types.CBufRet.f32 %926, 3
  %934 = fadd fast float %932, %933
  %935 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %45, float %930, float %934, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %936 = extractvalue %dx.types.ResRet.f32 %935, 0
  %937 = extractvalue %dx.types.ResRet.f32 %935, 1
  %938 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %939 = extractvalue %dx.types.CBufRet.f32 %938, 1
  %940 = extractvalue %dx.types.CBufRet.f32 %938, 0
  %941 = fsub fast float %939, %940
  %942 = fmul fast float %941, %936
  %943 = fadd fast float %942, %940
  %944 = extractvalue %dx.types.CBufRet.f32 %938, 3
  %945 = extractvalue %dx.types.CBufRet.f32 %938, 2
  %946 = fsub fast float %944, %945
  %947 = fmul fast float %946, %937
  %948 = fadd fast float %947, %945
  %949 = fsub fast float %868, %943
  %950 = fsub fast float %948, %943
  %951 = fdiv fast float %949, %950
  %952 = call float @dx.op.unary.f32(i32 7, float %951)  ; Saturate(value)
  %953 = extractvalue %dx.types.CBufRet.f32 %862, 1
  %954 = extractvalue %dx.types.CBufRet.f32 %912, 0
  %955 = extractvalue %dx.types.CBufRet.f32 %912, 1
  %956 = fmul fast float %954, %881
  %957 = fmul fast float %955, %882
  %958 = fmul fast float %956, 1.250000e-01
  %959 = fmul fast float %957, 1.250000e-01
  %960 = call float @dx.op.unary.f32(i32 27, float %958)  ; Round_ni(value)
  %961 = call float @dx.op.unary.f32(i32 27, float %959)  ; Round_ni(value)
  %962 = fmul fast float %960, 8.000000e+00
  %963 = fmul fast float %961, 8.000000e+00
  %964 = fsub fast float %956, %962
  %965 = fsub fast float %957, %963
  %966 = fadd fast float %964, 5.000000e-01
  %967 = fadd fast float %965, 5.000000e-01
  %968 = and i32 %923, 255
  %969 = lshr i32 %922, 24
  %970 = mul nuw nsw i32 %968, 9
  %971 = uitofp i32 %970 to float
  %972 = mul nuw nsw i32 %969, 9
  %973 = uitofp i32 %972 to float
  %974 = fadd fast float %966, %971
  %975 = fadd fast float %967, %973
  %976 = fdiv fast float %974, %863
  %977 = fdiv fast float %975, %953
  %978 = fmul fast float %952, 4.375000e-01
  %979 = fadd fast float %978, 3.125000e-02
  %980 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %28, %dx.types.Handle %45, float %976, float %977, float %979, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %981 = extractvalue %dx.types.ResRet.f32 %980, 0
  %982 = extractvalue %dx.types.ResRet.f32 %980, 1
  %983 = extractvalue %dx.types.ResRet.f32 %980, 2
  %984 = fadd fast float %978, 5.312500e-01
  %985 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %28, %dx.types.Handle %45, float %976, float %977, float %984, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %986 = extractvalue %dx.types.ResRet.f32 %985, 0
  %987 = extractvalue %dx.types.ResRet.f32 %985, 1
  %988 = extractvalue %dx.types.ResRet.f32 %985, 2
  %989 = fmul fast float %986, 2.000000e+00
  %990 = fmul fast float %987, 2.000000e+00
  %991 = fmul fast float %988, 2.000000e+00
  %992 = fadd fast float %989, -1.000000e+00
  %993 = fadd fast float %990, -1.000000e+00
  %994 = fadd fast float %991, -1.000000e+00
  %995 = fmul fast float %992, %992
  %996 = fmul fast float %993, %993
  %997 = fadd fast float %995, %996
  %998 = fmul fast float %994, %994
  %999 = fadd fast float %997, %998
  %1000 = call float @dx.op.unary.f32(i32 24, float %999)  ; Sqrt(value)
  %1001 = fcmp fast ogt float %1000, 0.000000e+00
  br i1 %1001, label %1002, label %1006

; <label>:1002                                    ; preds = %925
  %1003 = fdiv fast float %992, %1000
  %1004 = fdiv fast float %993, %1000
  %1005 = fdiv fast float %994, %1000
  br label %1006

; <label>:1006                                    ; preds = %1002, %925
  %1007 = phi float [ %1003, %1002 ], [ 0.000000e+00, %925 ]
  %1008 = phi float [ %1004, %1002 ], [ 0.000000e+00, %925 ]
  %1009 = phi float [ %1005, %1002 ], [ 0.000000e+00, %925 ]
  %1010 = call float @dx.op.dot3.f32(i32 55, float %1007, float %1008, float %1009, float %257, float %258, float %259)  ; Dot3(ax,ay,az,bx,by,bz)
  %1011 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1010)  ; FMax(a,b)
  %1012 = fmul fast float %1011, 0x400C5BF8A0000000
  %1013 = fmul fast float %981, %901
  %1014 = fmul fast float %1013, %1012
  %1015 = fmul fast float %982, %901
  %1016 = fmul fast float %1015, %1012
  %1017 = fmul fast float %983, %901
  %1018 = fmul fast float %1017, %1012
  %1019 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1020 = extractvalue %dx.types.CBufRet.f32 %1019, 3
  %1021 = fmul fast float %1014, %1020
  %1022 = fmul fast float %1016, %1020
  %1023 = fmul fast float %1018, %1020
  %1024 = fcmp fast ogt float %868, %948
  br i1 %1024, label %1025, label %1034

; <label>:1025                                    ; preds = %1006
  %1026 = fmul fast float %950, 0x3FC24924A0000000
  %1027 = fsub fast float %868, %948
  %1028 = fdiv fast float %1027, %1026
  %1029 = call float @dx.op.unary.f32(i32 7, float %1028)  ; Saturate(value)
  %1030 = fsub fast float 1.000000e+00, %1029
  %1031 = fmul fast float %1030, %1021
  %1032 = fmul fast float %1030, %1022
  %1033 = fmul fast float %1030, %1023
  br label %1034

; <label>:1034                                    ; preds = %1025, %1006, %911, %866
  %1035 = phi float [ %1033, %1025 ], [ %1023, %1006 ], [ 0.000000e+00, %911 ], [ 0.000000e+00, %866 ]
  %1036 = phi float [ %1032, %1025 ], [ %1022, %1006 ], [ 0.000000e+00, %911 ], [ 0.000000e+00, %866 ]
  %1037 = phi float [ %1031, %1025 ], [ %1021, %1006 ], [ 0.000000e+00, %911 ], [ 0.000000e+00, %866 ]
  %1038 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1037)  ; FMax(a,b)
  %1039 = fmul fast float %1038, 0x3FD20DD760000000
  %1040 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float %477, float %478, float %479)  ; Dot3(ax,ay,az,bx,by,bz)
  %1041 = fmul fast float %1040, 0x3FDF454380000000
  %1042 = fmul fast float %1040, %1040
  %1043 = fmul fast float %1042, 0x3FEE471020000000
  %1044 = fadd fast float %1043, 0xBFD42F6020000000
  %1045 = call float @dx.op.dot3.f32(i32 55, float %1038, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %1041, float %1044)  ; Dot3(ax,ay,az,bx,by,bz)
  %1046 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1036)  ; FMax(a,b)
  %1047 = fmul fast float %1046, 0x3FD20DD760000000
  %1048 = call float @dx.op.dot3.f32(i32 55, float %1046, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %1041, float %1044)  ; Dot3(ax,ay,az,bx,by,bz)
  %1049 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1035)  ; FMax(a,b)
  %1050 = fmul fast float %1049, 0x3FD20DD760000000
  %1051 = call float @dx.op.dot3.f32(i32 55, float %1049, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %1041, float %1044)  ; Dot3(ax,ay,az,bx,by,bz)
  %1052 = call float @dx.op.binary.f32(i32 35, float %1039, float 0.000000e+00)  ; FMax(a,b)
  %1053 = call float @dx.op.binary.f32(i32 35, float %1047, float 0.000000e+00)  ; FMax(a,b)
  %1054 = call float @dx.op.binary.f32(i32 35, float %1050, float 0.000000e+00)  ; FMax(a,b)
  %1055 = call float @dx.op.binary.f32(i32 35, float %1045, float 0.000000e+00)  ; FMax(a,b)
  %1056 = call float @dx.op.binary.f32(i32 35, float %1048, float 0.000000e+00)  ; FMax(a,b)
  %1057 = call float @dx.op.binary.f32(i32 35, float %1051, float 0.000000e+00)  ; FMax(a,b)
  %1058 = fmul fast float %1052, %531
  %1059 = fmul fast float %1053, %531
  %1060 = fmul fast float %1054, %531
  %1061 = fadd fast float %1058, %858
  %1062 = fadd fast float %1059, %859
  %1063 = fadd fast float %1060, %860
  %1064 = fmul fast float %1055, %531
  %1065 = fmul fast float %1056, %531
  %1066 = fmul fast float %1057, %531
  %1067 = fadd fast float %1064, %855
  %1068 = fadd fast float %1065, %856
  %1069 = fadd fast float %1066, %857
  br label %1070

; <label>:1070                                    ; preds = %1034, %854
  %1071 = phi float [ %1067, %1034 ], [ %855, %854 ]
  %1072 = phi float [ %1068, %1034 ], [ %856, %854 ]
  %1073 = phi float [ %1069, %1034 ], [ %857, %854 ]
  %1074 = phi float [ %1061, %1034 ], [ %858, %854 ]
  %1075 = phi float [ %1062, %1034 ], [ %859, %854 ]
  %1076 = phi float [ %1063, %1034 ], [ %860, %854 ]
  %1077 = fcmp fast olt float %531, 1.000000e+00
  br i1 %1077, label %1078, label %1901, !dx.controlflow.hints !100

; <label>:1078                                    ; preds = %1070
  %1079 = extractvalue %dx.types.CBufRet.f32 %487, 2
  %1080 = fadd fast float %1079, %328
  %1081 = fmul fast float %257, 3.200000e+01
  %1082 = fmul fast float %258, 3.200000e+01
  %1083 = fadd fast float %490, %1081
  %1084 = fadd fast float %491, %1082
  %1085 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %1086 = extractvalue %dx.types.CBufRet.f32 %1085, 0
  %1087 = extractvalue %dx.types.CBufRet.f32 %1085, 1
  %1088 = fsub fast float %1083, %1086
  %1089 = fsub fast float %1084, %1087
  %1090 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %1091 = extractvalue %dx.types.CBufRet.f32 %1090, 0
  %1092 = extractvalue %dx.types.CBufRet.f32 %1090, 1
  %1093 = fmul fast float %1088, %1091
  %1094 = fmul fast float %1089, %1092
  %1095 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %1096 = extractvalue %dx.types.CBufRet.f32 %1095, 0
  %1097 = fmul fast float %1093, %1096
  %1098 = extractvalue %dx.types.CBufRet.f32 %1095, 1
  %1099 = fadd fast float %1097, %1098
  %1100 = extractvalue %dx.types.CBufRet.f32 %1095, 2
  %1101 = fmul fast float %1100, %1094
  %1102 = extractvalue %dx.types.CBufRet.f32 %1095, 3
  %1103 = fadd fast float %1101, %1102
  %1104 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %45, float %1099, float %1103, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1105 = extractvalue %dx.types.ResRet.f32 %1104, 0
  %1106 = extractvalue %dx.types.ResRet.f32 %1104, 1
  %1107 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %1108 = extractvalue %dx.types.CBufRet.f32 %1107, 1
  %1109 = extractvalue %dx.types.CBufRet.f32 %1107, 0
  %1110 = fsub fast float %1108, %1109
  %1111 = fmul fast float %1110, %1105
  %1112 = fadd fast float %1111, %1109
  %1113 = extractvalue %dx.types.CBufRet.f32 %1107, 3
  %1114 = extractvalue %dx.types.CBufRet.f32 %1107, 2
  %1115 = fsub fast float %1113, %1114
  %1116 = fmul fast float %1115, %1106
  %1117 = fadd fast float %1116, %1114
  %1118 = fsub fast float %1080, %1112
  %1119 = fsub fast float %1117, %1112
  %1120 = fdiv fast float %1118, %1119
  %1121 = call float @dx.op.unary.f32(i32 7, float %1120)  ; Saturate(value)
  %1122 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 264)  ; CBufferLoadLegacy(handle,regIndex)
  %1123 = extractvalue %dx.types.CBufRet.f32 %1122, 0
  %1124 = fmul fast float %1123, %1121
  %1125 = extractvalue %dx.types.CBufRet.f32 %1122, 1
  %1126 = fadd fast float %1124, %1125
  %1127 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %45, float %1099, float %1103, float %1126, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1128 = extractvalue %dx.types.ResRet.f32 %1127, 0
  %1129 = extractvalue %dx.types.ResRet.f32 %1127, 1
  %1130 = extractvalue %dx.types.ResRet.f32 %1127, 2
  %1131 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 258)  ; CBufferLoadLegacy(handle,regIndex)
  %1132 = extractvalue %dx.types.CBufRet.f32 %1131, 0
  %1133 = extractvalue %dx.types.CBufRet.f32 %1131, 1
  %1134 = extractvalue %dx.types.CBufRet.f32 %1131, 2
  %1135 = fmul fast float %1132, %1128
  %1136 = fmul fast float %1133, %1129
  %1137 = fmul fast float %1134, %1130
  %1138 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 257)  ; CBufferLoadLegacy(handle,regIndex)
  %1139 = extractvalue %dx.types.CBufRet.f32 %1138, 0
  %1140 = extractvalue %dx.types.CBufRet.f32 %1138, 1
  %1141 = extractvalue %dx.types.CBufRet.f32 %1138, 2
  %1142 = fadd fast float %1135, %1139
  %1143 = fadd fast float %1136, %1140
  %1144 = fadd fast float %1137, %1141
  %1145 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 262)  ; CBufferLoadLegacy(handle,regIndex)
  %1146 = extractvalue %dx.types.CBufRet.f32 %1145, 0
  %1147 = fmul fast float %1146, %1093
  %1148 = extractvalue %dx.types.CBufRet.f32 %1145, 1
  %1149 = fadd fast float %1147, %1148
  %1150 = extractvalue %dx.types.CBufRet.f32 %1145, 2
  %1151 = fmul fast float %1150, %1094
  %1152 = extractvalue %dx.types.CBufRet.f32 %1145, 3
  %1153 = fadd fast float %1151, %1152
  %1154 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 265)  ; CBufferLoadLegacy(handle,regIndex)
  %1155 = extractvalue %dx.types.CBufRet.f32 %1154, 0
  %1156 = extractvalue %dx.types.CBufRet.f32 %1154, 1
  %1157 = extractvalue %dx.types.CBufRet.f32 %1154, 2
  %1158 = extractvalue %dx.types.CBufRet.f32 %1154, 3
  %1159 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 266)  ; CBufferLoadLegacy(handle,regIndex)
  %1160 = extractvalue %dx.types.CBufRet.f32 %1159, 0
  %1161 = extractvalue %dx.types.CBufRet.f32 %1159, 1
  %1162 = extractvalue %dx.types.CBufRet.f32 %1159, 2
  %1163 = extractvalue %dx.types.CBufRet.f32 %1159, 3
  %1164 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %45, float %1149, float %1153, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1165 = extractvalue %dx.types.ResRet.f32 %1164, 0
  %1166 = extractvalue %dx.types.ResRet.f32 %1164, 1
  %1167 = extractvalue %dx.types.ResRet.f32 %1164, 2
  %1168 = extractvalue %dx.types.ResRet.f32 %1164, 3
  %1169 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %45, float %1149, float %1153, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1170 = extractvalue %dx.types.ResRet.f32 %1169, 0
  %1171 = extractvalue %dx.types.ResRet.f32 %1169, 1
  %1172 = extractvalue %dx.types.ResRet.f32 %1169, 2
  %1173 = extractvalue %dx.types.ResRet.f32 %1169, 3
  %1174 = fmul fast float %1165, %1142
  %1175 = fmul fast float %1170, %1142
  %1176 = fmul fast float %1172, %1142
  %1177 = fmul fast float %1168, %1142
  %1178 = fadd fast float %1174, %1155
  %1179 = fadd fast float %1175, %1156
  %1180 = fadd fast float %1176, %1157
  %1181 = fadd fast float %1177, %1158
  %1182 = fmul fast float %1166, %1142
  %1183 = fmul fast float %1171, %1142
  %1184 = fadd fast float %1182, %1160
  %1185 = fadd fast float %1183, %1161
  %1186 = fmul fast float %1167, %1142
  %1187 = fmul fast float %1173, %1142
  %1188 = fadd fast float %1186, %1162
  %1189 = fadd fast float %1187, %1163
  %1190 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %45, float %1149, float %1153, float 2.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1191 = extractvalue %dx.types.ResRet.f32 %1190, 0
  %1192 = extractvalue %dx.types.ResRet.f32 %1190, 1
  %1193 = extractvalue %dx.types.ResRet.f32 %1190, 2
  %1194 = extractvalue %dx.types.ResRet.f32 %1190, 3
  %1195 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %45, float %1149, float %1153, float 3.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1196 = extractvalue %dx.types.ResRet.f32 %1195, 0
  %1197 = extractvalue %dx.types.ResRet.f32 %1195, 1
  %1198 = extractvalue %dx.types.ResRet.f32 %1195, 2
  %1199 = extractvalue %dx.types.ResRet.f32 %1195, 3
  %1200 = fmul fast float %1191, %1143
  %1201 = fmul fast float %1196, %1143
  %1202 = fmul fast float %1198, %1143
  %1203 = fmul fast float %1194, %1143
  %1204 = fadd fast float %1178, %1200
  %1205 = fadd fast float %1179, %1201
  %1206 = fadd fast float %1180, %1202
  %1207 = fadd fast float %1181, %1203
  %1208 = fmul fast float %1192, %1143
  %1209 = fmul fast float %1197, %1143
  %1210 = fadd fast float %1184, %1208
  %1211 = fadd fast float %1185, %1209
  %1212 = fmul fast float %1193, %1143
  %1213 = fmul fast float %1199, %1143
  %1214 = fadd fast float %1188, %1212
  %1215 = fadd fast float %1189, %1213
  %1216 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %45, float %1149, float %1153, float 4.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1217 = extractvalue %dx.types.ResRet.f32 %1216, 0
  %1218 = extractvalue %dx.types.ResRet.f32 %1216, 1
  %1219 = extractvalue %dx.types.ResRet.f32 %1216, 2
  %1220 = extractvalue %dx.types.ResRet.f32 %1216, 3
  %1221 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %45, float %1149, float %1153, float 5.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1222 = extractvalue %dx.types.ResRet.f32 %1221, 0
  %1223 = extractvalue %dx.types.ResRet.f32 %1221, 1
  %1224 = extractvalue %dx.types.ResRet.f32 %1221, 2
  %1225 = extractvalue %dx.types.ResRet.f32 %1221, 3
  %1226 = fmul fast float %1217, %1144
  %1227 = fmul fast float %1222, %1144
  %1228 = fmul fast float %1224, %1144
  %1229 = fmul fast float %1220, %1144
  %1230 = fadd fast float %1204, %1226
  %1231 = fadd fast float %1205, %1227
  %1232 = fadd fast float %1206, %1228
  %1233 = fadd fast float %1207, %1229
  %1234 = fmul fast float %1218, %1144
  %1235 = fmul fast float %1223, %1144
  %1236 = fadd fast float %1210, %1234
  %1237 = fadd fast float %1211, %1235
  %1238 = fmul fast float %1219, %1144
  %1239 = fmul fast float %1225, %1144
  %1240 = fadd fast float %1214, %1238
  %1241 = fadd fast float %1215, %1239
  %1242 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 255)  ; CBufferLoadLegacy(handle,regIndex)
  %1243 = extractvalue %dx.types.CBufRet.f32 %1242, 0
  %1244 = fsub fast float %490, %1243
  %1245 = fsub fast float %1086, %490
  %1246 = call float @dx.op.binary.f32(i32 35, float %1245, float %1244)  ; FMax(a,b)
  %1247 = extractvalue %dx.types.CBufRet.f32 %1242, 1
  %1248 = fsub fast float %491, %1247
  %1249 = fsub fast float %1087, %491
  %1250 = call float @dx.op.binary.f32(i32 35, float %1249, float %1248)  ; FMax(a,b)
  %1251 = call float @dx.op.binary.f32(i32 35, float %1246, float %1250)  ; FMax(a,b)
  %1252 = extractvalue %dx.types.CBufRet.f32 %1090, 3
  %1253 = fmul fast float %1252, %1251
  %1254 = call float @dx.op.unary.f32(i32 7, float %1253)  ; Saturate(value)
  %1255 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 272)  ; CBufferLoadLegacy(handle,regIndex)
  %1256 = extractvalue %dx.types.CBufRet.f32 %1255, 0
  %1257 = extractvalue %dx.types.CBufRet.f32 %1255, 1
  %1258 = extractvalue %dx.types.CBufRet.f32 %1255, 2
  %1259 = extractvalue %dx.types.CBufRet.f32 %1255, 3
  %1260 = fsub fast float %1256, %1230
  %1261 = fsub fast float %1257, %1231
  %1262 = fsub fast float %1258, %1232
  %1263 = fsub fast float %1259, %1233
  %1264 = fmul fast float %1260, %1254
  %1265 = fmul fast float %1261, %1254
  %1266 = fmul fast float %1262, %1254
  %1267 = fmul fast float %1263, %1254
  %1268 = fadd fast float %1264, %1230
  %1269 = fadd fast float %1265, %1231
  %1270 = fadd fast float %1266, %1232
  %1271 = fadd fast float %1267, %1233
  %1272 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 273)  ; CBufferLoadLegacy(handle,regIndex)
  %1273 = extractvalue %dx.types.CBufRet.f32 %1272, 0
  %1274 = extractvalue %dx.types.CBufRet.f32 %1272, 1
  %1275 = fsub fast float %1273, %1236
  %1276 = fsub fast float %1274, %1237
  %1277 = fmul fast float %1275, %1254
  %1278 = fmul fast float %1276, %1254
  %1279 = fadd fast float %1277, %1236
  %1280 = fadd fast float %1278, %1237
  %1281 = extractvalue %dx.types.CBufRet.f32 %1272, 2
  %1282 = extractvalue %dx.types.CBufRet.f32 %1272, 3
  %1283 = fsub fast float %1281, %1240
  %1284 = fsub fast float %1282, %1241
  %1285 = fmul fast float %1283, %1254
  %1286 = fmul fast float %1284, %1254
  %1287 = fadd fast float %1285, %1240
  %1288 = fadd fast float %1286, %1241
  %1289 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 267)  ; CBufferLoadLegacy(handle,regIndex)
  %1290 = extractvalue %dx.types.CBufRet.f32 %1289, 0
  %1291 = fmul fast float %1290, %1268
  %1292 = fmul fast float %1290, %1269
  %1293 = fmul fast float %1290, %1270
  %1294 = fmul fast float %1290, %1271
  %1295 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 268)  ; CBufferLoadLegacy(handle,regIndex)
  %1296 = extractvalue %dx.types.CBufRet.f32 %1295, 0
  %1297 = fmul fast float %1296, %1279
  %1298 = fmul fast float %1296, %1280
  %1299 = fadd fast float %1297, %1291
  %1300 = fadd fast float %1298, %1293
  %1301 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 269)  ; CBufferLoadLegacy(handle,regIndex)
  %1302 = extractvalue %dx.types.CBufRet.f32 %1301, 0
  %1303 = fmul fast float %1302, %1287
  %1304 = fmul fast float %1302, %1288
  %1305 = fadd fast float %1299, %1303
  %1306 = fadd fast float %1300, %1304
  %1307 = extractvalue %dx.types.CBufRet.f32 %1289, 1
  %1308 = fmul fast float %1307, %1268
  %1309 = fmul fast float %1307, %1269
  %1310 = fmul fast float %1307, %1270
  %1311 = fmul fast float %1307, %1271
  %1312 = extractvalue %dx.types.CBufRet.f32 %1295, 1
  %1313 = fmul fast float %1312, %1279
  %1314 = fmul fast float %1312, %1280
  %1315 = fadd fast float %1313, %1308
  %1316 = fadd fast float %1314, %1310
  %1317 = extractvalue %dx.types.CBufRet.f32 %1301, 1
  %1318 = fmul fast float %1317, %1287
  %1319 = fmul fast float %1317, %1288
  %1320 = fadd fast float %1315, %1318
  %1321 = fadd fast float %1316, %1319
  %1322 = extractvalue %dx.types.CBufRet.f32 %1289, 2
  %1323 = fmul fast float %1322, %1268
  %1324 = fmul fast float %1322, %1269
  %1325 = fmul fast float %1322, %1270
  %1326 = fmul fast float %1322, %1271
  %1327 = extractvalue %dx.types.CBufRet.f32 %1295, 2
  %1328 = fmul fast float %1327, %1279
  %1329 = fmul fast float %1327, %1280
  %1330 = fadd fast float %1328, %1323
  %1331 = fadd fast float %1329, %1325
  %1332 = extractvalue %dx.types.CBufRet.f32 %1301, 2
  %1333 = fmul fast float %1332, %1287
  %1334 = fmul fast float %1332, %1288
  %1335 = fadd fast float %1330, %1333
  %1336 = fadd fast float %1331, %1334
  %1337 = fmul fast float %1324, %1324
  %1338 = fmul fast float %1336, %1336
  %1339 = fmul fast float %1326, %1326
  %1340 = fadd fast float %1339, %1337
  %1341 = fadd fast float %1340, %1338
  %1342 = call float @dx.op.unary.f32(i32 24, float %1341)  ; Sqrt(value)
  %1343 = fcmp fast ugt float %1342, 0.000000e+00
  br i1 %1343, label %1344, label %1359

; <label>:1344                                    ; preds = %1078
  %1345 = fsub fast float -0.000000e+00, %1326
  %1346 = fdiv fast float %1345, %1342
  %1347 = fsub fast float -0.000000e+00, %1324
  %1348 = fdiv fast float %1347, %1342
  %1349 = fdiv fast float %1336, %1342
  %1350 = fmul fast float %1335, 0x3FE279A760000000
  %1351 = fmul fast float %1348, %1324
  %1352 = fmul fast float %1349, %1336
  %1353 = fmul fast float %1346, %1326
  %1354 = fadd fast float %1351, %1353
  %1355 = fsub fast float %1354, %1352
  %1356 = call float @dx.op.unary.f32(i32 6, float %1355)  ; FAbs(value)
  %1357 = fadd fast float %1356, 0x3DDB7CDFE0000000
  %1358 = fdiv fast float %1350, %1357
  br label %1359

; <label>:1359                                    ; preds = %1344, %1078
  %1360 = phi float [ %1358, %1344 ], [ 1.000000e+00, %1078 ]
  %1361 = fmul fast float %1309, %1309
  %1362 = fmul fast float %1321, %1321
  %1363 = fmul fast float %1311, %1311
  %1364 = fadd fast float %1363, %1361
  %1365 = fadd fast float %1364, %1362
  %1366 = call float @dx.op.unary.f32(i32 24, float %1365)  ; Sqrt(value)
  %1367 = fcmp fast ugt float %1366, 0.000000e+00
  br i1 %1367, label %1368, label %1383

; <label>:1368                                    ; preds = %1359
  %1369 = fsub fast float -0.000000e+00, %1311
  %1370 = fdiv fast float %1369, %1366
  %1371 = fsub fast float -0.000000e+00, %1309
  %1372 = fdiv fast float %1371, %1366
  %1373 = fdiv fast float %1321, %1366
  %1374 = fmul fast float %1320, 0x3FE279A760000000
  %1375 = fmul fast float %1372, %1309
  %1376 = fmul fast float %1373, %1321
  %1377 = fmul fast float %1370, %1311
  %1378 = fadd fast float %1375, %1377
  %1379 = fsub fast float %1378, %1376
  %1380 = call float @dx.op.unary.f32(i32 6, float %1379)  ; FAbs(value)
  %1381 = fadd fast float %1380, 0x3DDB7CDFE0000000
  %1382 = fdiv fast float %1374, %1381
  br label %1383

; <label>:1383                                    ; preds = %1368, %1359
  %1384 = phi float [ %1382, %1368 ], [ 1.000000e+00, %1359 ]
  %1385 = call float @dx.op.binary.f32(i32 36, float %1384, float %1360)  ; FMin(a,b)
  %1386 = fmul fast float %1292, %1292
  %1387 = fmul fast float %1306, %1306
  %1388 = fmul fast float %1294, %1294
  %1389 = fadd fast float %1388, %1386
  %1390 = fadd fast float %1389, %1387
  %1391 = call float @dx.op.unary.f32(i32 24, float %1390)  ; Sqrt(value)
  %1392 = fcmp fast ugt float %1391, 0.000000e+00
  br i1 %1392, label %1393, label %1408

; <label>:1393                                    ; preds = %1383
  %1394 = fsub fast float -0.000000e+00, %1294
  %1395 = fdiv fast float %1394, %1391
  %1396 = fsub fast float -0.000000e+00, %1292
  %1397 = fdiv fast float %1396, %1391
  %1398 = fdiv fast float %1306, %1391
  %1399 = fmul fast float %1305, 0x3FE279A760000000
  %1400 = fmul fast float %1397, %1292
  %1401 = fmul fast float %1398, %1306
  %1402 = fmul fast float %1395, %1294
  %1403 = fadd fast float %1400, %1402
  %1404 = fsub fast float %1403, %1401
  %1405 = call float @dx.op.unary.f32(i32 6, float %1404)  ; FAbs(value)
  %1406 = fadd fast float %1405, 0x3DDB7CDFE0000000
  %1407 = fdiv fast float %1399, %1406
  br label %1408

; <label>:1408                                    ; preds = %1393, %1383
  %1409 = phi float [ %1407, %1393 ], [ 1.000000e+00, %1383 ]
  %1410 = call float @dx.op.binary.f32(i32 36, float %1409, float %1385)  ; FMin(a,b)
  %1411 = call float @dx.op.unary.f32(i32 7, float %1410)  ; Saturate(value)
  %1412 = fcmp fast olt float %1411, 1.000000e+00
  br i1 %1412, label %1413, label %1423

; <label>:1413                                    ; preds = %1408
  %1414 = fmul fast float %1411, %1292
  %1415 = fmul fast float %1411, %1306
  %1416 = fmul fast float %1411, %1294
  %1417 = fmul fast float %1411, %1309
  %1418 = fmul fast float %1411, %1321
  %1419 = fmul fast float %1411, %1311
  %1420 = fmul fast float %1411, %1324
  %1421 = fmul fast float %1411, %1336
  %1422 = fmul fast float %1411, %1326
  br label %1423

; <label>:1423                                    ; preds = %1413, %1408
  %1424 = phi float [ %1420, %1413 ], [ %1324, %1408 ]
  %1425 = phi float [ %1421, %1413 ], [ %1336, %1408 ]
  %1426 = phi float [ %1422, %1413 ], [ %1326, %1408 ]
  %1427 = phi float [ %1417, %1413 ], [ %1309, %1408 ]
  %1428 = phi float [ %1418, %1413 ], [ %1321, %1408 ]
  %1429 = phi float [ %1419, %1413 ], [ %1311, %1408 ]
  %1430 = phi float [ %1414, %1413 ], [ %1292, %1408 ]
  %1431 = phi float [ %1415, %1413 ], [ %1306, %1408 ]
  %1432 = phi float [ %1416, %1413 ], [ %1294, %1408 ]
  %1433 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1305)  ; FMax(a,b)
  %1434 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1320)  ; FMax(a,b)
  %1435 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1335)  ; FMax(a,b)
  %1436 = fcmp fast oge float %1093, 0.000000e+00
  %1437 = and i1 %1436, %864
  %1438 = fcmp fast ole float %1093, 1.000000e+00
  %1439 = and i1 %1438, %1437
  %1440 = fcmp fast oge float %1094, 0.000000e+00
  %1441 = and i1 %1440, %1439
  %1442 = fcmp fast ole float %1094, 1.000000e+00
  %1443 = and i1 %1442, %1441
  br i1 %1443, label %1444, label %1589, !dx.controlflow.hints !101

; <label>:1444                                    ; preds = %1423
  %1445 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %1446 = extractvalue %dx.types.CBufRet.f32 %1445, 2
  %1447 = extractvalue %dx.types.CBufRet.f32 %1445, 3
  %1448 = fmul fast float %1446, %1093
  %1449 = fmul fast float %1447, %1094
  %1450 = call float @dx.op.unary.f32(i32 27, float %1448)  ; Round_ni(value)
  %1451 = call float @dx.op.unary.f32(i32 27, float %1449)  ; Round_ni(value)
  %1452 = fptosi float %1450 to i32
  %1453 = fptosi float %1451 to i32
  %1454 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %29, i32 0, i32 %1452, i32 %1453, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1455 = extractvalue %dx.types.ResRet.i32 %1454, 0
  %1456 = and i32 %1455, 65535
  %1457 = lshr i32 %1455, 16
  %1458 = icmp eq i32 %1456, 65535
  br i1 %1458, label %1495, label %1459

; <label>:1459                                    ; preds = %1444
  %1460 = extractvalue %dx.types.CBufRet.f32 %862, 1
  %1461 = extractvalue %dx.types.CBufRet.f32 %1445, 0
  %1462 = extractvalue %dx.types.CBufRet.f32 %1445, 1
  %1463 = fmul fast float %1461, %1093
  %1464 = fmul fast float %1462, %1094
  %1465 = fmul fast float %1463, 1.250000e-01
  %1466 = fmul fast float %1464, 1.250000e-01
  %1467 = call float @dx.op.unary.f32(i32 27, float %1465)  ; Round_ni(value)
  %1468 = call float @dx.op.unary.f32(i32 27, float %1466)  ; Round_ni(value)
  %1469 = fmul fast float %1467, 8.000000e+00
  %1470 = fmul fast float %1468, 8.000000e+00
  %1471 = and i32 %1455, 255
  %1472 = lshr i32 %1455, 8
  %1473 = and i32 %1472, 255
  %1474 = mul nuw nsw i32 %1471, 9
  %1475 = uitofp i32 %1474 to float
  %1476 = mul nuw nsw i32 %1473, 9
  %1477 = uitofp i32 %1476 to float
  %1478 = fadd fast float %1475, 5.000000e-01
  %1479 = fadd fast float %1478, %1463
  %1480 = fsub fast float %1479, %1469
  %1481 = fadd fast float %1477, 5.000000e-01
  %1482 = fadd fast float %1481, %1464
  %1483 = fsub fast float %1482, %1470
  %1484 = fdiv fast float %1480, %863
  %1485 = fdiv fast float %1483, %1460
  %1486 = fmul fast float %1121, 4.375000e-01
  %1487 = fadd fast float %1486, 3.125000e-02
  %1488 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %28, %dx.types.Handle %45, float %1484, float %1485, float %1487, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1489 = extractvalue %dx.types.ResRet.f32 %1488, 0
  %1490 = extractvalue %dx.types.ResRet.f32 %1488, 1
  %1491 = extractvalue %dx.types.ResRet.f32 %1488, 2
  %1492 = fadd fast float %1489, %1433
  %1493 = fadd fast float %1490, %1434
  %1494 = fadd fast float %1491, %1435
  br label %1495

; <label>:1495                                    ; preds = %1459, %1444
  %1496 = phi float [ %1494, %1459 ], [ %1435, %1444 ]
  %1497 = phi float [ %1493, %1459 ], [ %1434, %1444 ]
  %1498 = phi float [ %1492, %1459 ], [ %1433, %1444 ]
  %1499 = icmp eq i32 %1457, 65535
  br i1 %1499, label %1589, label %1500

; <label>:1500                                    ; preds = %1495
  %1501 = extractvalue %dx.types.CBufRet.f32 %862, 1
  %1502 = extractvalue %dx.types.CBufRet.f32 %1445, 0
  %1503 = extractvalue %dx.types.CBufRet.f32 %1445, 1
  %1504 = fmul fast float %1502, %1093
  %1505 = fmul fast float %1503, %1094
  %1506 = fmul fast float %1504, 1.250000e-01
  %1507 = fmul fast float %1505, 1.250000e-01
  %1508 = call float @dx.op.unary.f32(i32 27, float %1506)  ; Round_ni(value)
  %1509 = call float @dx.op.unary.f32(i32 27, float %1507)  ; Round_ni(value)
  %1510 = fmul fast float %1508, 8.000000e+00
  %1511 = fmul fast float %1509, 8.000000e+00
  %1512 = fsub fast float %1504, %1510
  %1513 = fsub fast float %1505, %1511
  %1514 = fadd fast float %1512, 5.000000e-01
  %1515 = fadd fast float %1513, 5.000000e-01
  %1516 = and i32 %1457, 255
  %1517 = lshr i32 %1455, 24
  %1518 = mul nuw nsw i32 %1516, 9
  %1519 = uitofp i32 %1518 to float
  %1520 = mul nuw nsw i32 %1517, 9
  %1521 = uitofp i32 %1520 to float
  %1522 = fadd fast float %1514, %1519
  %1523 = fadd fast float %1515, %1521
  %1524 = fdiv fast float %1522, %863
  %1525 = fdiv fast float %1523, %1501
  %1526 = fmul fast float %1121, 4.375000e-01
  %1527 = fadd fast float %1526, 3.125000e-02
  %1528 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %28, %dx.types.Handle %45, float %1524, float %1525, float %1527, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1529 = extractvalue %dx.types.ResRet.f32 %1528, 0
  %1530 = extractvalue %dx.types.ResRet.f32 %1528, 1
  %1531 = extractvalue %dx.types.ResRet.f32 %1528, 2
  %1532 = fadd fast float %1526, 5.312500e-01
  %1533 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %28, %dx.types.Handle %45, float %1524, float %1525, float %1532, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1534 = extractvalue %dx.types.ResRet.f32 %1533, 0
  %1535 = extractvalue %dx.types.ResRet.f32 %1533, 1
  %1536 = extractvalue %dx.types.ResRet.f32 %1533, 2
  %1537 = fmul fast float %1534, 2.000000e+00
  %1538 = fmul fast float %1535, 2.000000e+00
  %1539 = fmul fast float %1536, 2.000000e+00
  %1540 = fadd fast float %1537, -1.000000e+00
  %1541 = fadd fast float %1538, -1.000000e+00
  %1542 = fadd fast float %1539, -1.000000e+00
  %1543 = fmul fast float %1540, %1540
  %1544 = fmul fast float %1541, %1541
  %1545 = fadd fast float %1543, %1544
  %1546 = fmul fast float %1542, %1542
  %1547 = fadd fast float %1545, %1546
  %1548 = call float @dx.op.unary.f32(i32 24, float %1547)  ; Sqrt(value)
  %1549 = fcmp fast ogt float %1548, 0.000000e+00
  br i1 %1549, label %1550, label %1554

; <label>:1550                                    ; preds = %1500
  %1551 = fdiv fast float %1540, %1548
  %1552 = fdiv fast float %1541, %1548
  %1553 = fdiv fast float %1542, %1548
  br label %1554

; <label>:1554                                    ; preds = %1550, %1500
  %1555 = phi float [ %1551, %1550 ], [ 0.000000e+00, %1500 ]
  %1556 = phi float [ %1552, %1550 ], [ 0.000000e+00, %1500 ]
  %1557 = phi float [ %1553, %1550 ], [ 0.000000e+00, %1500 ]
  %1558 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1559 = extractvalue %dx.types.CBufRet.f32 %1558, 0
  %1560 = extractvalue %dx.types.CBufRet.f32 %1558, 1
  %1561 = fsub fast float %490, %1559
  %1562 = fsub fast float %491, %1560
  %1563 = fmul fast float %1561, %1561
  %1564 = fmul fast float %1562, %1562
  %1565 = fadd fast float %1563, %1564
  %1566 = call float @dx.op.unary.f32(i32 24, float %1565)  ; Sqrt(value)
  %1567 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %1568 = extractvalue %dx.types.CBufRet.f32 %1567, 0
  %1569 = extractvalue %dx.types.CBufRet.f32 %1567, 1
  %1570 = fsub fast float %1566, %1568
  %1571 = fdiv fast float %1570, %1569
  %1572 = call float @dx.op.unary.f32(i32 7, float %1571)  ; Saturate(value)
  %1573 = fmul fast float %1572, 2.000000e+00
  %1574 = fsub fast float 3.000000e+00, %1573
  %1575 = fmul fast float %1572, %1572
  %1576 = fmul fast float %1575, %1574
  %1577 = call float @dx.op.dot3.f32(i32 55, float %1555, float %1556, float %1557, float %257, float %258, float %259)  ; Dot3(ax,ay,az,bx,by,bz)
  %1578 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1577)  ; FMax(a,b)
  %1579 = fmul fast float %1578, 0x400C5BF8A0000000
  %1580 = fmul fast float %1576, %1529
  %1581 = fmul fast float %1580, %1579
  %1582 = fadd fast float %1581, %1498
  %1583 = fmul fast float %1576, %1530
  %1584 = fmul fast float %1583, %1579
  %1585 = fadd fast float %1584, %1497
  %1586 = fmul fast float %1576, %1531
  %1587 = fmul fast float %1586, %1579
  %1588 = fadd fast float %1587, %1496
  br label %1589

; <label>:1589                                    ; preds = %1554, %1495, %1423
  %1590 = phi float [ %1588, %1554 ], [ %1496, %1495 ], [ %1435, %1423 ]
  %1591 = phi float [ %1585, %1554 ], [ %1497, %1495 ], [ %1434, %1423 ]
  %1592 = phi float [ %1582, %1554 ], [ %1498, %1495 ], [ %1433, %1423 ]
  %1593 = fcmp fast ogt float %1080, %1117
  %1594 = and i1 %1436, %1593
  %1595 = and i1 %1438, %1594
  %1596 = and i1 %1440, %1595
  %1597 = and i1 %1442, %1596
  br i1 %1597, label %1598, label %1655, !dx.controlflow.hints !102

; <label>:1598                                    ; preds = %1589
  %1599 = fmul fast float %1119, 0x3FC24924A0000000
  %1600 = fsub fast float %1080, %1117
  %1601 = fdiv fast float %1600, %1599
  %1602 = call float @dx.op.unary.f32(i32 7, float %1601)  ; Saturate(value)
  %1603 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 275)  ; CBufferLoadLegacy(handle,regIndex)
  %1604 = extractvalue %dx.types.CBufRet.f32 %1603, 0
  %1605 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 276)  ; CBufferLoadLegacy(handle,regIndex)
  %1606 = extractvalue %dx.types.CBufRet.f32 %1605, 0
  %1607 = extractvalue %dx.types.CBufRet.f32 %1605, 1
  %1608 = extractvalue %dx.types.CBufRet.f32 %1605, 2
  %1609 = fsub fast float %1604, %1592
  %1610 = fsub fast float %1606, %1430
  %1611 = fsub fast float %1607, %1431
  %1612 = fsub fast float %1608, %1432
  %1613 = fmul fast float %1609, %1602
  %1614 = fmul fast float %1610, %1602
  %1615 = fmul fast float %1611, %1602
  %1616 = fmul fast float %1612, %1602
  %1617 = fadd fast float %1613, %1592
  %1618 = fadd fast float %1614, %1430
  %1619 = fadd fast float %1615, %1431
  %1620 = fadd fast float %1616, %1432
  %1621 = extractvalue %dx.types.CBufRet.f32 %1603, 1
  %1622 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 278)  ; CBufferLoadLegacy(handle,regIndex)
  %1623 = extractvalue %dx.types.CBufRet.f32 %1622, 0
  %1624 = extractvalue %dx.types.CBufRet.f32 %1622, 1
  %1625 = extractvalue %dx.types.CBufRet.f32 %1622, 2
  %1626 = fsub fast float %1621, %1591
  %1627 = fsub fast float %1623, %1427
  %1628 = fsub fast float %1624, %1428
  %1629 = fsub fast float %1625, %1429
  %1630 = fmul fast float %1626, %1602
  %1631 = fmul fast float %1627, %1602
  %1632 = fmul fast float %1628, %1602
  %1633 = fmul fast float %1629, %1602
  %1634 = fadd fast float %1630, %1591
  %1635 = fadd fast float %1631, %1427
  %1636 = fadd fast float %1632, %1428
  %1637 = fadd fast float %1633, %1429
  %1638 = extractvalue %dx.types.CBufRet.f32 %1603, 2
  %1639 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 280)  ; CBufferLoadLegacy(handle,regIndex)
  %1640 = extractvalue %dx.types.CBufRet.f32 %1639, 0
  %1641 = extractvalue %dx.types.CBufRet.f32 %1639, 1
  %1642 = extractvalue %dx.types.CBufRet.f32 %1639, 2
  %1643 = fsub fast float %1638, %1590
  %1644 = fsub fast float %1640, %1424
  %1645 = fsub fast float %1641, %1425
  %1646 = fsub fast float %1642, %1426
  %1647 = fmul fast float %1643, %1602
  %1648 = fmul fast float %1644, %1602
  %1649 = fmul fast float %1645, %1602
  %1650 = fmul fast float %1646, %1602
  %1651 = fadd fast float %1647, %1590
  %1652 = fadd fast float %1648, %1424
  %1653 = fadd fast float %1649, %1425
  %1654 = fadd fast float %1650, %1426
  br label %1655

; <label>:1655                                    ; preds = %1598, %1589
  %1656 = phi float [ %1651, %1598 ], [ %1590, %1589 ]
  %1657 = phi float [ %1652, %1598 ], [ %1424, %1589 ]
  %1658 = phi float [ %1653, %1598 ], [ %1425, %1589 ]
  %1659 = phi float [ %1654, %1598 ], [ %1426, %1589 ]
  %1660 = phi float [ %1634, %1598 ], [ %1591, %1589 ]
  %1661 = phi float [ %1635, %1598 ], [ %1427, %1589 ]
  %1662 = phi float [ %1636, %1598 ], [ %1428, %1589 ]
  %1663 = phi float [ %1637, %1598 ], [ %1429, %1589 ]
  %1664 = phi float [ %1617, %1598 ], [ %1592, %1589 ]
  %1665 = phi float [ %1618, %1598 ], [ %1430, %1589 ]
  %1666 = phi float [ %1619, %1598 ], [ %1431, %1589 ]
  %1667 = phi float [ %1620, %1598 ], [ %1432, %1589 ]
  %1668 = extractvalue %dx.types.CBufRet.f32 %1242, 3
  %1669 = fmul fast float %1668, %1664
  %1670 = fmul fast float %1668, %1660
  %1671 = fmul fast float %1668, %1656
  %1672 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1673 = extractvalue %dx.types.CBufRet.f32 %1672, 3
  %1674 = fmul fast float %1669, %1673
  %1675 = fmul fast float %1670, %1673
  %1676 = fmul fast float %1671, %1673
  %1677 = call float @dx.op.dot3.f32(i32 55, float %1674, float %1675, float %1676, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1678 = fmul fast float %1677, 0x3FD20DD760000000
  %1679 = fmul fast float %1665, 1.500000e+00
  %1680 = fmul fast float %1679, %1668
  %1681 = fmul fast float %1680, %1673
  %1682 = fmul fast float %1666, 1.500000e+00
  %1683 = fmul fast float %1682, %1668
  %1684 = fmul fast float %1683, %1673
  %1685 = fmul fast float %1667, 1.500000e+00
  %1686 = fmul fast float %1685, %1668
  %1687 = fmul fast float %1686, %1673
  %1688 = fmul fast float %1661, 1.500000e+00
  %1689 = fmul fast float %1688, %1668
  %1690 = fmul fast float %1689, %1673
  %1691 = fmul fast float %1662, 1.500000e+00
  %1692 = fmul fast float %1691, %1668
  %1693 = fmul fast float %1692, %1673
  %1694 = fmul fast float %1663, 1.500000e+00
  %1695 = fmul fast float %1694, %1668
  %1696 = fmul fast float %1695, %1673
  %1697 = fmul fast float %1657, 1.500000e+00
  %1698 = fmul fast float %1697, %1668
  %1699 = fmul fast float %1698, %1673
  %1700 = fmul fast float %1658, 1.500000e+00
  %1701 = fmul fast float %1700, %1668
  %1702 = fmul fast float %1701, %1673
  %1703 = fmul fast float %1659, 1.500000e+00
  %1704 = fmul fast float %1703, %1668
  %1705 = fmul fast float %1704, %1673
  %1706 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1674)  ; FMax(a,b)
  %1707 = call float @dx.op.dot3.f32(i32 55, float %1681, float %1684, float %1687, float %1681, float %1684, float %1687)  ; Dot3(ax,ay,az,bx,by,bz)
  %1708 = fcmp fast oeq float %1707, 0.000000e+00
  %1709 = fcmp fast oeq float %1706, 0.000000e+00
  %1710 = or i1 %1709, %1708
  br i1 %1710, label %1740, label %1711

; <label>:1711                                    ; preds = %1655
  %1712 = fsub fast float -0.000000e+00, %1687
  %1713 = fsub fast float -0.000000e+00, %1681
  %1714 = call float @dx.op.unary.f32(i32 24, float %1707)  ; Sqrt(value)
  %1715 = fdiv fast float %1714, %1706
  %1716 = fcmp fast ogt float %1715, 0x3FFB6F8900000000
  %1717 = select i1 %1716, float 0x3FFB6F8900000000, float %1715
  %1718 = fmul fast float %1717, 0x3FE8A23460000000
  %1719 = call float @dx.op.unary.f32(i32 7, float %1718)  ; Saturate(value)
  %1720 = call float @dx.op.binary.f32(i32 35, float %1717, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %1721 = fmul fast float %1719, %1706
  %1722 = fmul fast float %1720, 0x3FF279A740000000
  %1723 = fadd fast float %1722, -1.000000e+00
  %1724 = call float @dx.op.dot3.f32(i32 55, float %1712, float %1713, float %1684, float %1712, float %1713, float %1684)  ; Dot3(ax,ay,az,bx,by,bz)
  %1725 = call float @dx.op.unary.f32(i32 25, float %1724)  ; Rsqrt(value)
  %1726 = fmul fast float %1725, %1712
  %1727 = fmul fast float %1725, %1713
  %1728 = fmul fast float %1725, %1684
  %1729 = fmul fast float %1723, %1723
  %1730 = fsub fast float 1.000000e+00, %1729
  %1731 = fmul fast float %1720, 0x40005F8BE0000000
  %1732 = fsub fast float 0x400C5BF8A0000000, %1731
  %1733 = fdiv fast float %1721, %1732
  %1734 = fmul fast float %1733, 0x3FEE31C3C0000000
  %1735 = fmul fast float %1734, %1730
  %1736 = fmul fast float %1720, 0x3FDACB7480000000
  %1737 = fadd fast float %1736, 0xBFD7347680000000
  %1738 = fmul fast float %1737, %1733
  %1739 = fmul fast float %1738, %1730
  br label %1740

; <label>:1740                                    ; preds = %1711, %1655
  %1741 = phi float [ %1726, %1711 ], [ 0.000000e+00, %1655 ]
  %1742 = phi float [ %1727, %1711 ], [ 0.000000e+00, %1655 ]
  %1743 = phi float [ %1728, %1711 ], [ 0.000000e+00, %1655 ]
  %1744 = phi float [ %1735, %1711 ], [ 0.000000e+00, %1655 ]
  %1745 = phi float [ %1739, %1711 ], [ 0.000000e+00, %1655 ]
  %1746 = call float @dx.op.dot3.f32(i32 55, float %1741, float %1742, float %1743, float %257, float %258, float %259)  ; Dot3(ax,ay,az,bx,by,bz)
  %1747 = fmul fast float %1746, %1746
  %1748 = fmul fast float %1747, 0x3FEE471020000000
  %1749 = fadd fast float %1748, 0xBFD42F6020000000
  %1750 = fmul fast float %1706, 0x3FD20DD760000000
  %1751 = fmul fast float %1749, %1745
  %1752 = fmul fast float %1744, 0x3FDF454380000000
  %1753 = fmul fast float %1752, %1746
  %1754 = fadd fast float %1753, %1750
  %1755 = fadd fast float %1754, %1751
  %1756 = call float @dx.op.dot3.f32(i32 55, float %1741, float %1742, float %1743, float %477, float %478, float %479)  ; Dot3(ax,ay,az,bx,by,bz)
  %1757 = fmul fast float %1756, 0x3FDF454380000000
  %1758 = fmul fast float %1756, %1756
  %1759 = fmul fast float %1758, 0x3FEE471020000000
  %1760 = fadd fast float %1759, 0xBFD42F6020000000
  %1761 = call float @dx.op.dot3.f32(i32 55, float %1706, float %1744, float %1745, float 0x3FD20DD760000000, float %1757, float %1760)  ; Dot3(ax,ay,az,bx,by,bz)
  %1762 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1675)  ; FMax(a,b)
  %1763 = call float @dx.op.dot3.f32(i32 55, float %1690, float %1693, float %1696, float %1690, float %1693, float %1696)  ; Dot3(ax,ay,az,bx,by,bz)
  %1764 = fcmp fast oeq float %1763, 0.000000e+00
  %1765 = fcmp fast oeq float %1762, 0.000000e+00
  %1766 = or i1 %1765, %1764
  br i1 %1766, label %1796, label %1767

; <label>:1767                                    ; preds = %1740
  %1768 = fsub fast float -0.000000e+00, %1696
  %1769 = fsub fast float -0.000000e+00, %1690
  %1770 = call float @dx.op.unary.f32(i32 24, float %1763)  ; Sqrt(value)
  %1771 = fdiv fast float %1770, %1762
  %1772 = fcmp fast ogt float %1771, 0x3FFB6F8900000000
  %1773 = select i1 %1772, float 0x3FFB6F8900000000, float %1771
  %1774 = fmul fast float %1773, 0x3FE8A23460000000
  %1775 = call float @dx.op.unary.f32(i32 7, float %1774)  ; Saturate(value)
  %1776 = call float @dx.op.binary.f32(i32 35, float %1773, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %1777 = fmul fast float %1775, %1762
  %1778 = fmul fast float %1776, 0x3FF279A740000000
  %1779 = fadd fast float %1778, -1.000000e+00
  %1780 = call float @dx.op.dot3.f32(i32 55, float %1768, float %1769, float %1693, float %1768, float %1769, float %1693)  ; Dot3(ax,ay,az,bx,by,bz)
  %1781 = call float @dx.op.unary.f32(i32 25, float %1780)  ; Rsqrt(value)
  %1782 = fmul fast float %1781, %1768
  %1783 = fmul fast float %1781, %1769
  %1784 = fmul fast float %1781, %1693
  %1785 = fmul fast float %1779, %1779
  %1786 = fsub fast float 1.000000e+00, %1785
  %1787 = fmul fast float %1776, 0x40005F8BE0000000
  %1788 = fsub fast float 0x400C5BF8A0000000, %1787
  %1789 = fdiv fast float %1777, %1788
  %1790 = fmul fast float %1789, 0x3FEE31C3C0000000
  %1791 = fmul fast float %1790, %1786
  %1792 = fmul fast float %1776, 0x3FDACB7480000000
  %1793 = fadd fast float %1792, 0xBFD7347680000000
  %1794 = fmul fast float %1793, %1789
  %1795 = fmul fast float %1794, %1786
  br label %1796

; <label>:1796                                    ; preds = %1767, %1740
  %1797 = phi float [ %1782, %1767 ], [ 0.000000e+00, %1740 ]
  %1798 = phi float [ %1783, %1767 ], [ 0.000000e+00, %1740 ]
  %1799 = phi float [ %1784, %1767 ], [ 0.000000e+00, %1740 ]
  %1800 = phi float [ %1791, %1767 ], [ 0.000000e+00, %1740 ]
  %1801 = phi float [ %1795, %1767 ], [ 0.000000e+00, %1740 ]
  %1802 = call float @dx.op.dot3.f32(i32 55, float %1797, float %1798, float %1799, float %257, float %258, float %259)  ; Dot3(ax,ay,az,bx,by,bz)
  %1803 = fmul fast float %1802, %1802
  %1804 = fmul fast float %1803, 0x3FEE471020000000
  %1805 = fadd fast float %1804, 0xBFD42F6020000000
  %1806 = fmul fast float %1762, 0x3FD20DD760000000
  %1807 = fmul fast float %1805, %1801
  %1808 = fmul fast float %1800, 0x3FDF454380000000
  %1809 = fmul fast float %1808, %1802
  %1810 = fadd fast float %1809, %1806
  %1811 = fadd fast float %1810, %1807
  %1812 = call float @dx.op.dot3.f32(i32 55, float %1797, float %1798, float %1799, float %477, float %478, float %479)  ; Dot3(ax,ay,az,bx,by,bz)
  %1813 = fmul fast float %1812, 0x3FDF454380000000
  %1814 = fmul fast float %1812, %1812
  %1815 = fmul fast float %1814, 0x3FEE471020000000
  %1816 = fadd fast float %1815, 0xBFD42F6020000000
  %1817 = call float @dx.op.dot3.f32(i32 55, float %1762, float %1800, float %1801, float 0x3FD20DD760000000, float %1813, float %1816)  ; Dot3(ax,ay,az,bx,by,bz)
  %1818 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1676)  ; FMax(a,b)
  %1819 = call float @dx.op.dot3.f32(i32 55, float %1699, float %1702, float %1705, float %1699, float %1702, float %1705)  ; Dot3(ax,ay,az,bx,by,bz)
  %1820 = fcmp fast oeq float %1819, 0.000000e+00
  %1821 = fcmp fast oeq float %1818, 0.000000e+00
  %1822 = or i1 %1821, %1820
  br i1 %1822, label %1852, label %1823

; <label>:1823                                    ; preds = %1796
  %1824 = fsub fast float -0.000000e+00, %1705
  %1825 = fsub fast float -0.000000e+00, %1699
  %1826 = call float @dx.op.unary.f32(i32 24, float %1819)  ; Sqrt(value)
  %1827 = fdiv fast float %1826, %1818
  %1828 = fcmp fast ogt float %1827, 0x3FFB6F8900000000
  %1829 = select i1 %1828, float 0x3FFB6F8900000000, float %1827
  %1830 = fmul fast float %1829, 0x3FE8A23460000000
  %1831 = call float @dx.op.unary.f32(i32 7, float %1830)  ; Saturate(value)
  %1832 = call float @dx.op.binary.f32(i32 35, float %1829, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %1833 = fmul fast float %1831, %1818
  %1834 = fmul fast float %1832, 0x3FF279A740000000
  %1835 = fadd fast float %1834, -1.000000e+00
  %1836 = call float @dx.op.dot3.f32(i32 55, float %1824, float %1825, float %1702, float %1824, float %1825, float %1702)  ; Dot3(ax,ay,az,bx,by,bz)
  %1837 = call float @dx.op.unary.f32(i32 25, float %1836)  ; Rsqrt(value)
  %1838 = fmul fast float %1837, %1824
  %1839 = fmul fast float %1837, %1825
  %1840 = fmul fast float %1837, %1702
  %1841 = fmul fast float %1835, %1835
  %1842 = fsub fast float 1.000000e+00, %1841
  %1843 = fmul fast float %1832, 0x40005F8BE0000000
  %1844 = fsub fast float 0x400C5BF8A0000000, %1843
  %1845 = fdiv fast float %1833, %1844
  %1846 = fmul fast float %1845, 0x3FEE31C3C0000000
  %1847 = fmul fast float %1846, %1842
  %1848 = fmul fast float %1832, 0x3FDACB7480000000
  %1849 = fadd fast float %1848, 0xBFD7347680000000
  %1850 = fmul fast float %1849, %1845
  %1851 = fmul fast float %1850, %1842
  br label %1852

; <label>:1852                                    ; preds = %1823, %1796
  %1853 = phi float [ %1838, %1823 ], [ 0.000000e+00, %1796 ]
  %1854 = phi float [ %1839, %1823 ], [ 0.000000e+00, %1796 ]
  %1855 = phi float [ %1840, %1823 ], [ 0.000000e+00, %1796 ]
  %1856 = phi float [ %1847, %1823 ], [ 0.000000e+00, %1796 ]
  %1857 = phi float [ %1851, %1823 ], [ 0.000000e+00, %1796 ]
  %1858 = call float @dx.op.dot3.f32(i32 55, float %1853, float %1854, float %1855, float %257, float %258, float %259)  ; Dot3(ax,ay,az,bx,by,bz)
  %1859 = fmul fast float %1858, %1858
  %1860 = fmul fast float %1859, 0x3FEE471020000000
  %1861 = fadd fast float %1860, 0xBFD42F6020000000
  %1862 = fmul fast float %1818, 0x3FD20DD760000000
  %1863 = fmul fast float %1861, %1857
  %1864 = fmul fast float %1856, 0x3FDF454380000000
  %1865 = fmul fast float %1864, %1858
  %1866 = fadd fast float %1865, %1862
  %1867 = fadd fast float %1866, %1863
  %1868 = call float @dx.op.dot3.f32(i32 55, float %1853, float %1854, float %1855, float %477, float %478, float %479)  ; Dot3(ax,ay,az,bx,by,bz)
  %1869 = fmul fast float %1868, 0x3FDF454380000000
  %1870 = fmul fast float %1868, %1868
  %1871 = fmul fast float %1870, 0x3FEE471020000000
  %1872 = fadd fast float %1871, 0xBFD42F6020000000
  %1873 = call float @dx.op.dot3.f32(i32 55, float %1818, float %1856, float %1857, float 0x3FD20DD760000000, float %1869, float %1872)  ; Dot3(ax,ay,az,bx,by,bz)
  %1874 = call float @dx.op.binary.f32(i32 35, float %1755, float 0.000000e+00)  ; FMax(a,b)
  %1875 = call float @dx.op.binary.f32(i32 35, float %1811, float 0.000000e+00)  ; FMax(a,b)
  %1876 = call float @dx.op.binary.f32(i32 35, float %1867, float 0.000000e+00)  ; FMax(a,b)
  %1877 = call float @dx.op.binary.f32(i32 35, float %1761, float 0.000000e+00)  ; FMax(a,b)
  %1878 = call float @dx.op.binary.f32(i32 35, float %1817, float 0.000000e+00)  ; FMax(a,b)
  %1879 = call float @dx.op.binary.f32(i32 35, float %1873, float 0.000000e+00)  ; FMax(a,b)
  %1880 = fsub fast float %1074, %1874
  %1881 = fsub fast float %1075, %1875
  %1882 = fsub fast float %1076, %1876
  %1883 = fmul fast float %1880, %531
  %1884 = fmul fast float %1881, %531
  %1885 = fmul fast float %1882, %531
  %1886 = fadd fast float %1883, %1874
  %1887 = fadd fast float %1884, %1875
  %1888 = fadd fast float %1885, %1876
  %1889 = fsub fast float %1071, %1877
  %1890 = fsub fast float %1072, %1878
  %1891 = fsub fast float %1073, %1879
  %1892 = fmul fast float %1889, %531
  %1893 = fmul fast float %1890, %531
  %1894 = fmul fast float %1891, %531
  %1895 = fadd fast float %1892, %1877
  %1896 = fadd fast float %1893, %1878
  %1897 = fadd fast float %1894, %1879
  %1898 = fsub fast float %861, %1678
  %1899 = fmul fast float %1898, %531
  %1900 = fadd fast float %1899, %1678
  br label %1901

; <label>:1901                                    ; preds = %1852, %1070
  %1902 = phi float [ %1895, %1852 ], [ %1071, %1070 ]
  %1903 = phi float [ %1896, %1852 ], [ %1072, %1070 ]
  %1904 = phi float [ %1897, %1852 ], [ %1073, %1070 ]
  %1905 = phi float [ %1886, %1852 ], [ %1074, %1070 ]
  %1906 = phi float [ %1887, %1852 ], [ %1075, %1070 ]
  %1907 = phi float [ %1888, %1852 ], [ %1076, %1070 ]
  %1908 = phi float [ %1900, %1852 ], [ %861, %1070 ]
  %1909 = fmul fast float %1905, 0x3FEE623840000000
  %1910 = fmul fast float %1906, 0x3FEE623840000000
  %1911 = fmul fast float %1907, 0x3FEE623840000000
  %1912 = fmul fast float %1902, 0x3FEE623840000000
  %1913 = fmul fast float %1903, 0x3FEE623840000000
  %1914 = fmul fast float %1904, 0x3FEE623840000000
  %1915 = call float @dx.op.dot3.f32(i32 55, float %1909, float %1910, float %1911, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1916 = select i1 %151, float 0.000000e+00, float %1909
  %1917 = select i1 %151, float %1915, float %1910
  %1918 = select i1 %151, float 0.000000e+00, float %1911
  %1919 = call float @dx.op.dot3.f32(i32 55, float %1912, float %1913, float %1914, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1920 = select i1 %151, float 0.000000e+00, float %1912
  %1921 = select i1 %151, float %1919, float %1913
  %1922 = select i1 %151, float 0.000000e+00, float %1914
  %1923 = fmul fast float %471, 9.843750e-01
  %1924 = fmul fast float %269, 9.843750e-01
  %1925 = fadd fast float %1923, 7.812500e-03
  %1926 = fadd fast float %1924, 7.812500e-03
  %1927 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %45, float %1925, float %1926, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1928 = extractvalue %dx.types.ResRet.f32 %1927, 2
  %1929 = extractvalue %dx.types.ResRet.f32 %1927, 3
  %1930 = fmul fast float %1928, %449
  %1931 = fmul fast float %1928, %450
  %1932 = fmul fast float %1928, %469
  %1933 = fadd fast float %1930, %1929
  %1934 = fadd fast float %1931, %1929
  %1935 = fadd fast float %1932, %1929
  %1936 = call float @dx.op.binary.f32(i32 35, float %1934, float %1935)  ; FMax(a,b)
  %1937 = call float @dx.op.binary.f32(i32 35, float %1933, float %1936)  ; FMax(a,b)
  %1938 = fsub fast float 1.000000e+00, %1937
  %1939 = fmul fast float %1937, %269
  %1940 = fadd fast float %1939, %269
  %1941 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 252)  ; CBufferLoadLegacy(handle,regIndex)
  %1942 = extractvalue %dx.types.CBufRet.f32 %1941, 2
  %1943 = extractvalue %dx.types.CBufRet.f32 %1941, 3
  %1944 = fmul fast float %1940, %1942
  %1945 = fadd fast float %1944, %1943
  %1946 = call float @dx.op.unary.f32(i32 7, float %1945)  ; Saturate(value)
  %1947 = fsub fast float 1.000000e+00, %486
  %1948 = fadd fast float %1947, %1946
  %1949 = call float @dx.op.unary.f32(i32 7, float %1948)  ; Saturate(value)
  %1950 = fcmp fast olt float %1949, 1.000000e+00
  br i1 %1950, label %1951, label %2426

; <label>:1951                                    ; preds = %1901
  %1952 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %1953 = extractvalue %dx.types.CBufRet.f32 %1952, 2
  %1954 = extractvalue %dx.types.CBufRet.f32 %1952, 3
  %1955 = fmul fast float %1953, %77
  %1956 = fmul fast float %1954, %78
  %1957 = fptoui float %1955 to i32
  %1958 = fptoui float %1956 to i32
  %1959 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %1960 = extractvalue %dx.types.CBufRet.f32 %1959, 0
  %1961 = extractvalue %dx.types.CBufRet.f32 %1959, 2
  %1962 = extractvalue %dx.types.CBufRet.f32 %1959, 3
  %1963 = fadd fast float %292, -4.000000e+00
  %1964 = call float @dx.op.binary.f32(i32 35, float %1963, float 0.000000e+00)  ; FMax(a,b)
  %1965 = fadd fast float %1964, %1960
  %1966 = fmul fast float %1965, %1961
  %1967 = call float @dx.op.unary.f32(i32 23, float %1966)  ; Log(value)
  %1968 = fmul fast float %1967, %1962
  %1969 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %1970 = extractvalue %dx.types.CBufRet.f32 %1969, 2
  %1971 = fmul fast float %1968, %1970
  %1972 = call float @dx.op.unary.f32(i32 7, float %1971)  ; Saturate(value)
  %1973 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %1974 = extractvalue %dx.types.CBufRet.i32 %1973, 1
  %1975 = add i32 %1974, -1
  %1976 = uitofp i32 %1974 to float
  %1977 = fmul fast float %1976, %1972
  %1978 = fptoui float %1977 to i32
  %1979 = call i32 @dx.op.binary.i32(i32 40, i32 %1978, i32 %1975)  ; UMin(a,b)
  %1980 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %1981 = extractvalue %dx.types.CBufRet.i32 %1980, 2
  %1982 = extractvalue %dx.types.CBufRet.i32 %1980, 3
  %1983 = call i32 @dx.op.tertiary.i32(i32 49, i32 %1958, i32 %1981, i32 %1957)  ; UMad(a,b,c)
  %1984 = call i32 @dx.op.tertiary.i32(i32 49, i32 %1979, i32 %1982, i32 %1983)  ; UMad(a,b,c)
  %1985 = call float @dx.op.binary.f32(i32 35, float %292, float 0.000000e+00)  ; FMax(a,b)
  %1986 = fptoui float %1985 to i32
  %1987 = lshr i32 %1986, 5
  %1988 = call i32 @dx.op.binary.i32(i32 40, i32 %1987, i32 8191)  ; UMin(a,b)
  %1989 = call float @dx.op.unary.f32(i32 7, float %460)  ; Saturate(value)
  %1990 = fcmp fast ogt float %1989, 0.000000e+00
  %1991 = fcmp fast ogt float %479, 0.000000e+00
  %1992 = and i1 %1991, %1990
  br i1 %1992, label %1993, label %2022

; <label>:1993                                    ; preds = %1951
  %1994 = call float @dx.op.dot3.f32(i32 55, float %477, float %478, float %479, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %1995 = call float @dx.op.binary.f32(i32 35, float %1994, float -1.000000e+00)  ; FMax(a,b)
  %1996 = call float @dx.op.binary.f32(i32 36, float %1995, float 1.000000e+00)  ; FMin(a,b)
  %1997 = fmul fast float %1996, %1996
  %1998 = fsub fast float 1.000000e+00, %1997
  %1999 = fmul fast float %1998, 0x3FFC6E2300000000
  %2000 = fsub fast float 1.000000e+00, %1999
  %2001 = fcmp fast ogt float %2000, 0.000000e+00
  %2002 = call float @dx.op.unary.f32(i32 24, float %2000)  ; Sqrt(value)
  %2003 = fsub fast float 1.000000e+00, %2002
  %2004 = call float @dx.op.unary.f32(i32 23, float %2003)  ; Log(value)
  %2005 = fmul fast float %2004, 5.000000e+00
  %2006 = call float @dx.op.unary.f32(i32 21, float %2005)  ; Exp(value)
  %2007 = fmul fast float %2006, 0x3FEF591A60000000
  %2008 = fadd fast float %2007, 0x3F94DCB540000000
  %2009 = select i1 %2001, float %2008, float 1.000000e+00
  %2010 = fcmp fast oge float %2009, 1.000000e+00
  %2011 = fmul fast float %1994, 2.000000e+00
  %2012 = fadd fast float %2011, %479
  %2013 = select i1 %2010, float %2012, float %479
  %2014 = fsub fast float %2013, %479
  %2015 = fmul fast float %2014, %1989
  %2016 = fadd fast float %2015, %479
  %2017 = call float @dx.op.dot3.f32(i32 55, float %477, float %478, float %2016, float %477, float %478, float %2016)  ; Dot3(ax,ay,az,bx,by,bz)
  %2018 = call float @dx.op.unary.f32(i32 25, float %2017)  ; Rsqrt(value)
  %2019 = fmul fast float %2018, %477
  %2020 = fmul fast float %2018, %478
  %2021 = fmul fast float %2016, %2018
  br label %2022

; <label>:2022                                    ; preds = %1993, %1951
  %2023 = phi float [ %2019, %1993 ], [ %477, %1951 ]
  %2024 = phi float [ %2020, %1993 ], [ %478, %1951 ]
  %2025 = phi float [ %2021, %1993 ], [ %479, %1951 ]
  %2026 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %2027 = extractvalue %dx.types.CBufRet.i32 %2026, 2
  %2028 = add nsw i32 %2027, -1
  %2029 = call i32 @dx.op.binary.i32(i32 37, i32 %2028, i32 0)  ; IMax(a,b)
  %2030 = shl i32 %1988, 2
  %2031 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %2030, i32 undef)  ; BufferLoad(srv,index,wot)
  %2032 = extractvalue %dx.types.ResRet.i32 %2031, 0
  %2033 = lshr i32 %2032, 16
  %2034 = and i32 %2032, 65535
  %2035 = lshr i32 %2032, 21
  %2036 = lshr i32 %2034, 5
  %2037 = call i32 @dx.op.binary.i32(i32 40, i32 %2036, i32 %2029)  ; UMin(a,b)
  %2038 = icmp ugt i32 %2035, %2037
  br i1 %2038, label %2402, label %2039

; <label>:2039                                    ; preds = %2022
  br label %2040

; <label>:2040                                    ; preds = %2394, %2039
  %2041 = phi float [ %2395, %2394 ], [ 0.000000e+00, %2039 ]
  %2042 = phi float [ %2396, %2394 ], [ 0.000000e+00, %2039 ]
  %2043 = phi float [ %2397, %2394 ], [ 0.000000e+00, %2039 ]
  %2044 = phi float [ %2398, %2394 ], [ 1.000000e+00, %2039 ]
  %2045 = phi i32 [ %2399, %2394 ], [ %2035, %2039 ]
  %2046 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %2047 = extractvalue %dx.types.CBufRet.i32 %2046, 2
  %2048 = call i32 @dx.op.tertiary.i32(i32 49, i32 %1984, i32 %2047, i32 %2045)  ; UMad(a,b,c)
  %2049 = shl i32 %2048, 2
  %2050 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2049, i32 undef)  ; BufferLoad(srv,index,wot)
  %2051 = extractvalue %dx.types.ResRet.i32 %2050, 0
  %2052 = shl i32 %2045, 5
  %2053 = sub nsw i32 %2033, %2052
  %2054 = call i32 @dx.op.binary.i32(i32 37, i32 %2053, i32 0)  ; IMax(a,b)
  %2055 = call i32 @dx.op.binary.i32(i32 38, i32 %2054, i32 31)  ; IMin(a,b)
  %2056 = sub nsw i32 1, %2033
  %2057 = add nsw i32 %2056, %2034
  %2058 = call i32 @dx.op.binary.i32(i32 37, i32 %2057, i32 0)  ; IMax(a,b)
  %2059 = call i32 @dx.op.binary.i32(i32 38, i32 %2058, i32 32)  ; IMin(a,b)
  %2060 = and i32 %2059, 31
  %2061 = shl i32 -1, %2060
  %2062 = xor i32 %2061, -1
  %2063 = and i32 %2055, 31
  %2064 = shl i32 %2062, %2063
  %2065 = icmp eq i32 %2059, 32
  %2066 = select i1 %2065, i32 -1, i32 %2064
  %2067 = and i32 %2066, %2051
  %2068 = icmp eq i32 %2067, 0
  br i1 %2068, label %2394, label %2069

; <label>:2069                                    ; preds = %2040
  br label %2070

; <label>:2070                                    ; preds = %2177, %2069
  %2071 = phi float [ %2178, %2177 ], [ %2041, %2069 ]
  %2072 = phi float [ %2179, %2177 ], [ %2042, %2069 ]
  %2073 = phi float [ %2180, %2177 ], [ %2043, %2069 ]
  %2074 = phi float [ %2181, %2177 ], [ %2044, %2069 ]
  %2075 = phi i32 [ %2080, %2177 ], [ %2067, %2069 ]
  %2076 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %2075)  ; FirstbitLo(value)
  %2077 = add i32 %2076, %2052
  %2078 = and i32 %2076, 31
  %2079 = shl i32 1, %2078
  %2080 = xor i32 %2079, %2075
  %2081 = mul i32 %2077, 72
  %2082 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %2081, i32 undef)  ; BufferLoad(srv,index,wot)
  %2083 = extractvalue %dx.types.ResRet.f32 %2082, 0
  %2084 = extractvalue %dx.types.ResRet.f32 %2082, 1
  %2085 = extractvalue %dx.types.ResRet.f32 %2082, 2
  %2086 = add i32 %2081, 12
  %2087 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2086, i32 undef)  ; BufferLoad(srv,index,wot)
  %2088 = extractvalue %dx.types.ResRet.i32 %2087, 0
  %2089 = add i32 %2081, 16
  %2090 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %2089, i32 undef)  ; BufferLoad(srv,index,wot)
  %2091 = extractvalue %dx.types.ResRet.f32 %2090, 0
  %2092 = extractvalue %dx.types.ResRet.f32 %2090, 1
  %2093 = extractvalue %dx.types.ResRet.f32 %2090, 2
  %2094 = add i32 %2081, 28
  %2095 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %2094, i32 undef)  ; BufferLoad(srv,index,wot)
  %2096 = extractvalue %dx.types.ResRet.f32 %2095, 0
  %2097 = add i32 %2081, 32
  %2098 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %2097, i32 undef)  ; BufferLoad(srv,index,wot)
  %2099 = extractvalue %dx.types.ResRet.f32 %2098, 0
  %2100 = extractvalue %dx.types.ResRet.f32 %2098, 1
  %2101 = extractvalue %dx.types.ResRet.f32 %2098, 2
  %2102 = extractvalue %dx.types.ResRet.f32 %2098, 3
  %2103 = add i32 %2081, 48
  %2104 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %2103, i32 undef)  ; BufferLoad(srv,index,wot)
  %2105 = extractvalue %dx.types.ResRet.f32 %2104, 0
  %2106 = extractvalue %dx.types.ResRet.f32 %2104, 1
  %2107 = add i32 %2081, 56
  %2108 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %2107, i32 undef)  ; BufferLoad(srv,index,wot)
  %2109 = extractvalue %dx.types.ResRet.f32 %2108, 0
  %2110 = extractvalue %dx.types.ResRet.f32 %2108, 1
  %2111 = add i32 %2081, 64
  %2112 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %2111, i32 undef)  ; BufferLoad(srv,index,wot)
  %2113 = extractvalue %dx.types.ResRet.f32 %2112, 0
  %2114 = extractvalue %dx.types.ResRet.f32 %2112, 1
  %2115 = mul i32 %2077, 60
  %2116 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %26, i32 %2115, i32 undef)  ; BufferLoad(srv,index,wot)
  %2117 = extractvalue %dx.types.ResRet.f32 %2116, 0
  %2118 = extractvalue %dx.types.ResRet.f32 %2116, 1
  %2119 = extractvalue %dx.types.ResRet.f32 %2116, 2
  %2120 = add i32 %2115, 12
  %2121 = add i32 %2115, 48
  %2122 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %26, i32 %2121, i32 undef)  ; BufferLoad(srv,index,wot)
  %2123 = extractvalue %dx.types.ResRet.f32 %2122, 0
  %2124 = extractvalue %dx.types.ResRet.f32 %2122, 1
  %2125 = extractvalue %dx.types.ResRet.f32 %2122, 2
  %2126 = and i32 %2088, 32767
  %2127 = bitcast float %2083 to i32
  %2128 = icmp eq i32 %2127, -1
  %2129 = bitcast float %2084 to i32
  %2130 = and i32 %2088, 32768
  %2131 = icmp ne i32 %2130, 0
  %2132 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %2133 = extractvalue %dx.types.CBufRet.f32 %2132, 0
  %2134 = extractvalue %dx.types.CBufRet.f32 %2132, 1
  %2135 = extractvalue %dx.types.CBufRet.f32 %2132, 2
  %2136 = fsub fast float %2117, %2133
  %2137 = fsub fast float %2118, %2134
  %2138 = fsub fast float %2119, %2135
  %2139 = fsub fast float %326, %2136
  %2140 = fsub fast float %327, %2137
  %2141 = fsub fast float %328, %2138
  %2142 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %26, i32 %2120, i32 undef)  ; BufferLoad(srv,index,wot)
  %2143 = extractvalue %dx.types.ResRet.f32 %2142, 0
  %2144 = extractvalue %dx.types.ResRet.f32 %2142, 1
  %2145 = extractvalue %dx.types.ResRet.f32 %2142, 2
  %2146 = call float @dx.op.dot3.f32(i32 55, float %2139, float %2140, float %2141, float %2143, float %2144, float %2145)  ; Dot3(ax,ay,az,bx,by,bz)
  %2147 = add i32 %2115, 24
  %2148 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %26, i32 %2147, i32 undef)  ; BufferLoad(srv,index,wot)
  %2149 = extractvalue %dx.types.ResRet.f32 %2148, 0
  %2150 = extractvalue %dx.types.ResRet.f32 %2148, 1
  %2151 = extractvalue %dx.types.ResRet.f32 %2148, 2
  %2152 = call float @dx.op.dot3.f32(i32 55, float %2139, float %2140, float %2141, float %2149, float %2150, float %2151)  ; Dot3(ax,ay,az,bx,by,bz)
  %2153 = add i32 %2115, 36
  %2154 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %26, i32 %2153, i32 undef)  ; BufferLoad(srv,index,wot)
  %2155 = extractvalue %dx.types.ResRet.f32 %2154, 0
  %2156 = extractvalue %dx.types.ResRet.f32 %2154, 1
  %2157 = extractvalue %dx.types.ResRet.f32 %2154, 2
  %2158 = call float @dx.op.dot3.f32(i32 55, float %2139, float %2140, float %2141, float %2155, float %2156, float %2157)  ; Dot3(ax,ay,az,bx,by,bz)
  %2159 = call float @dx.op.unary.f32(i32 6, float %2146)  ; FAbs(value)
  %2160 = call float @dx.op.unary.f32(i32 6, float %2152)  ; FAbs(value)
  %2161 = call float @dx.op.unary.f32(i32 6, float %2158)  ; FAbs(value)
  %2162 = fsub fast float %2123, %2159
  %2163 = fsub fast float %2124, %2160
  %2164 = fsub fast float %2125, %2161
  %2165 = fmul fast float %2162, %2091
  %2166 = fmul fast float %2163, %2092
  %2167 = fmul fast float %2164, %2093
  %2168 = call float @dx.op.binary.f32(i32 36, float %2166, float %2167)  ; FMin(a,b)
  %2169 = call float @dx.op.binary.f32(i32 36, float %2165, float %2168)  ; FMin(a,b)
  %2170 = call float @dx.op.unary.f32(i32 7, float %2169)  ; Saturate(value)
  %2171 = call float @dx.op.binary.f32(i32 36, float %2074, float %2170)  ; FMin(a,b)
  %2172 = uitofp i1 %2131 to float
  %2173 = fadd fast float %1989, 1.000000e+00
  %2174 = fsub fast float %2173, %2172
  %2175 = fmul fast float %2171, %2174
  %2176 = fcmp fast ogt float %2175, 0.000000e+00
  br i1 %2176, label %2183, label %2177

; <label>:2177                                    ; preds = %2325, %2070
  %2178 = phi float [ %2389, %2325 ], [ %2071, %2070 ]
  %2179 = phi float [ %2390, %2325 ], [ %2072, %2070 ]
  %2180 = phi float [ %2391, %2325 ], [ %2073, %2070 ]
  %2181 = phi float [ %2392, %2325 ], [ %2074, %2070 ]
  %2182 = icmp eq i32 %2075, %2079
  br i1 %2182, label %2393, label %2070

; <label>:2183                                    ; preds = %2070
  br i1 %2128, label %2241, label %2184

; <label>:2184                                    ; preds = %2183
  %2185 = fsub fast float -0.000000e+00, %2143
  %2186 = fsub fast float -0.000000e+00, %2144
  %2187 = fsub fast float -0.000000e+00, %2145
  %2188 = call float @dx.op.dot3.f32(i32 55, float %2023, float %2024, float %2025, float %2185, float %2186, float %2187)  ; Dot3(ax,ay,az,bx,by,bz)
  %2189 = fsub fast float -0.000000e+00, %2188
  %2190 = call float @dx.op.dot3.f32(i32 55, float %2139, float %2140, float %2141, float %2185, float %2186, float %2187)  ; Dot3(ax,ay,az,bx,by,bz)
  %2191 = fadd fast float %2190, %2106
  %2192 = fadd fast float %2105, %2190
  %2193 = fsub fast float -0.000000e+00, %2192
  %2194 = fcmp ogt float %2188, -0.000000e+00
  %2195 = select i1 %2194, float %2193, float %2191
  %2196 = call float @dx.op.unary.f32(i32 6, float %2189)  ; FAbs(value)
  %2197 = fdiv fast float 1.000000e+00, %2196
  %2198 = fmul fast float %2195, %2197
  %2199 = call float @dx.op.binary.f32(i32 35, float %2198, float 0.000000e+00)  ; FMax(a,b)
  %2200 = fsub fast float -0.000000e+00, %2149
  %2201 = fsub fast float -0.000000e+00, %2150
  %2202 = fsub fast float -0.000000e+00, %2151
  %2203 = call float @dx.op.dot3.f32(i32 55, float %2023, float %2024, float %2025, float %2200, float %2201, float %2202)  ; Dot3(ax,ay,az,bx,by,bz)
  %2204 = fsub fast float -0.000000e+00, %2203
  %2205 = call float @dx.op.dot3.f32(i32 55, float %2139, float %2140, float %2141, float %2200, float %2201, float %2202)  ; Dot3(ax,ay,az,bx,by,bz)
  %2206 = fadd fast float %2205, %2110
  %2207 = fadd fast float %2109, %2205
  %2208 = fsub fast float -0.000000e+00, %2207
  %2209 = fcmp ogt float %2203, -0.000000e+00
  %2210 = select i1 %2209, float %2208, float %2206
  %2211 = call float @dx.op.unary.f32(i32 6, float %2204)  ; FAbs(value)
  %2212 = fdiv fast float 1.000000e+00, %2211
  %2213 = fmul fast float %2210, %2212
  %2214 = call float @dx.op.binary.f32(i32 35, float %2213, float 0.000000e+00)  ; FMax(a,b)
  %2215 = fsub fast float -0.000000e+00, %2155
  %2216 = fsub fast float -0.000000e+00, %2156
  %2217 = fsub fast float -0.000000e+00, %2157
  %2218 = call float @dx.op.dot3.f32(i32 55, float %2023, float %2024, float %2025, float %2215, float %2216, float %2217)  ; Dot3(ax,ay,az,bx,by,bz)
  %2219 = fsub fast float -0.000000e+00, %2218
  %2220 = call float @dx.op.dot3.f32(i32 55, float %2139, float %2140, float %2141, float %2215, float %2216, float %2217)  ; Dot3(ax,ay,az,bx,by,bz)
  %2221 = fadd fast float %2220, %2114
  %2222 = fadd fast float %2113, %2220
  %2223 = fsub fast float -0.000000e+00, %2222
  %2224 = fcmp ogt float %2218, -0.000000e+00
  %2225 = select i1 %2224, float %2223, float %2221
  %2226 = call float @dx.op.unary.f32(i32 6, float %2219)  ; FAbs(value)
  %2227 = fdiv fast float 1.000000e+00, %2226
  %2228 = fmul fast float %2225, %2227
  %2229 = call float @dx.op.binary.f32(i32 35, float %2228, float 0.000000e+00)  ; FMax(a,b)
  %2230 = call float @dx.op.binary.f32(i32 36, float %2214, float %2229)  ; FMin(a,b)
  %2231 = call float @dx.op.binary.f32(i32 36, float %2199, float %2230)  ; FMin(a,b)
  %2232 = fmul fast float %2231, %2023
  %2233 = fmul fast float %2231, %2024
  %2234 = fmul fast float %2231, %2025
  %2235 = fadd fast float %2232, %326
  %2236 = fadd fast float %2233, %327
  %2237 = fadd fast float %2234, %328
  %2238 = fsub fast float %2235, %2083
  %2239 = fsub fast float %2236, %2084
  %2240 = fsub fast float %2237, %2085
  br label %2248

; <label>:2241                                    ; preds = %2183
  %2242 = fmul fast float %2023, 8.096000e+03
  %2243 = fmul fast float %2024, 8.096000e+03
  %2244 = fmul fast float %2025, 8.096000e+03
  %2245 = fadd fast float %2242, %326
  %2246 = fadd fast float %2243, %327
  %2247 = fadd fast float %2244, %328
  br label %2248

; <label>:2248                                    ; preds = %2241, %2184
  %2249 = phi float [ %2023, %2241 ], [ %2238, %2184 ]
  %2250 = phi float [ %2024, %2241 ], [ %2239, %2184 ]
  %2251 = phi float [ %2025, %2241 ], [ %2240, %2184 ]
  %2252 = phi float [ %2245, %2241 ], [ %2235, %2184 ]
  %2253 = phi float [ %2246, %2241 ], [ %2236, %2184 ]
  %2254 = phi float [ %2247, %2241 ], [ %2237, %2184 ]
  %2255 = fcmp fast olt float %2102, 1.000000e+00
  br i1 %2255, label %2256, label %2287, !dx.controlflow.hints !103

; <label>:2256                                    ; preds = %2248
  %2257 = fmul fast float %2251, %2100
  %2258 = fmul fast float %2250, %2101
  %2259 = fsub fast float %2257, %2258
  %2260 = fmul fast float %2249, %2101
  %2261 = fmul fast float %2251, %2099
  %2262 = fsub fast float %2260, %2261
  %2263 = fmul fast float %2250, %2099
  %2264 = fmul fast float %2249, %2100
  %2265 = fsub fast float %2263, %2264
  %2266 = fmul fast float %2259, 2.000000e+00
  %2267 = fmul fast float %2262, 2.000000e+00
  %2268 = fmul fast float %2265, 2.000000e+00
  %2269 = fmul fast float %2266, %2102
  %2270 = fmul fast float %2267, %2102
  %2271 = fmul fast float %2268, %2102
  %2272 = fmul fast float %2268, %2100
  %2273 = fmul fast float %2267, %2101
  %2274 = fmul fast float %2266, %2101
  %2275 = fmul fast float %2268, %2099
  %2276 = fmul fast float %2267, %2099
  %2277 = fmul fast float %2266, %2100
  %2278 = fadd fast float %2272, %2249
  %2279 = fadd fast float %2278, %2269
  %2280 = fsub fast float %2279, %2273
  %2281 = fsub fast float %2250, %2275
  %2282 = fadd fast float %2281, %2270
  %2283 = fadd fast float %2282, %2274
  %2284 = fadd fast float %2271, %2251
  %2285 = fsub fast float %2284, %2277
  %2286 = fadd fast float %2285, %2276
  br label %2287

; <label>:2287                                    ; preds = %2256, %2248
  %2288 = phi float [ %2280, %2256 ], [ %2249, %2248 ]
  %2289 = phi float [ %2283, %2256 ], [ %2250, %2248 ]
  %2290 = phi float [ %2286, %2256 ], [ %2251, %2248 ]
  br i1 %2128, label %2322, label %2291

; <label>:2291                                    ; preds = %2287
  %2292 = fmul fast float %269, 0x400187C840000000
  %2293 = fadd fast float %2292, 0xC00EFC2120000000
  %2294 = fmul fast float %2293, %269
  %2295 = fadd fast float %2294, 0x3FE5D16340000000
  %2296 = fmul fast float %2295, %269
  %2297 = fadd fast float %2296, 1.000000e+00
  %2298 = call float @dx.op.unary.f32(i32 7, float %2297)  ; Saturate(value)
  %2299 = fsub fast float %2252, %326
  %2300 = fsub fast float %2253, %327
  %2301 = fsub fast float %2254, %328
  %2302 = fsub fast float %2252, %2083
  %2303 = fsub fast float %2253, %2084
  %2304 = fsub fast float %2254, %2085
  %2305 = call float @dx.op.dot3.f32(i32 55, float %2299, float %2300, float %2301, float %2299, float %2300, float %2301)  ; Dot3(ax,ay,az,bx,by,bz)
  %2306 = call float @dx.op.dot3.f32(i32 55, float %2302, float %2303, float %2304, float %2302, float %2303, float %2304)  ; Dot3(ax,ay,az,bx,by,bz)
  %2307 = fadd fast float %2306, 0x3EE4F8B580000000
  %2308 = fdiv fast float %2305, %2307
  %2309 = bitcast float %2308 to i32
  %2310 = ashr i32 %2309, 1
  %2311 = add nsw i32 %2310, 532487669
  %2312 = bitcast i32 %2311 to float
  %2313 = fmul fast float %2312, %2298
  %2314 = call float @dx.op.unary.f32(i32 7, float %2313)  ; Saturate(value)
  %2315 = fmul fast float %2314, 0x4009981AE0000000
  %2316 = fsub fast float 0x40111BBD80000000, %2315
  %2317 = fmul fast float %2316, %2314
  %2318 = fadd fast float %2317, 0xC0009F6020000000
  %2319 = fmul fast float %2318, %2314
  %2320 = fadd fast float %2319, 1.000000e+00
  %2321 = call float @dx.op.unary.f32(i32 7, float %2320)  ; Saturate(value)
  br label %2325

; <label>:2322                                    ; preds = %2287
  %2323 = icmp ne i32 %2129, -1
  %2324 = zext i1 %2323 to i32
  br label %2325

; <label>:2325                                    ; preds = %2322, %2291
  %2326 = phi float [ %269, %2322 ], [ %2321, %2291 ]
  %2327 = phi i32 [ %2324, %2322 ], [ 0, %2291 ]
  %2328 = fmul float %2326, 5.000000e+00
  %2329 = fsub float 5.000000e+00, %2328
  %2330 = icmp ne i32 %2327, 0
  %2331 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %2332 = extractvalue %dx.types.CBufRet.f32 %2331, 3
  %2333 = fadd fast float %2332, %2329
  %2334 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2333)  ; FMax(a,b)
  %2335 = call float @dx.op.unary.f32(i32 6, float %2288)  ; FAbs(value)
  %2336 = call float @dx.op.unary.f32(i32 6, float %2289)  ; FAbs(value)
  %2337 = fadd fast float %2336, %2335
  %2338 = call float @dx.op.unary.f32(i32 6, float %2290)  ; FAbs(value)
  %2339 = fadd fast float %2337, %2338
  %2340 = fcmp fast oeq float %2339, 0.000000e+00
  %2341 = fdiv fast float 1.000000e+00, %2339
  %2342 = select i1 %2340, float 1.000000e+00, float %2341
  %2343 = fmul fast float %2342, %2288
  %2344 = fmul fast float %2342, %2289
  %2345 = call float @dx.op.unary.f32(i32 6, float %2344)  ; FAbs(value)
  %2346 = call float @dx.op.unary.f32(i32 6, float %2343)  ; FAbs(value)
  %2347 = fsub fast float 1.000000e+00, %2345
  %2348 = fsub fast float 1.000000e+00, %2346
  %2349 = fcmp fast oge float %2343, 0.000000e+00
  %2350 = fcmp fast oge float %2344, 0.000000e+00
  %2351 = select i1 %2349, float 1.000000e+00, float -1.000000e+00
  %2352 = select i1 %2350, float 1.000000e+00, float -1.000000e+00
  %2353 = fcmp fast ole float %2290, 0.000000e+00
  %2354 = fmul fast float %2351, %2347
  %2355 = fmul fast float %2352, %2348
  %2356 = select i1 %2353, float %2354, float %2343
  %2357 = select i1 %2353, float %2355, float %2344
  %2358 = fmul fast float %2356, 5.000000e-01
  %2359 = fmul fast float %2357, 5.000000e-01
  %2360 = fadd fast float %2358, 5.000000e-01
  %2361 = fadd fast float %2359, 5.000000e-01
  %2362 = uitofp i32 %2126 to float
  %2363 = call float @dx.op.binary.f32(i32 36, float %2334, float 3.000000e+00)  ; FMin(a,b)
  %2364 = fadd fast float %2363, 2.000000e+00
  %2365 = call float @dx.op.unary.f32(i32 21, float %2364)  ; Exp(value)
  %2366 = extractvalue %dx.types.CBufRet.f32 %2331, 1
  %2367 = fmul fast float %2366, %2365
  %2368 = fmul fast float %2367, 2.000000e+00
  %2369 = fsub fast float 1.000000e+00, %2368
  %2370 = fmul fast float %2360, %2369
  %2371 = fmul fast float %2361, %2369
  %2372 = fadd fast float %2370, %2367
  %2373 = fadd fast float %2371, %2367
  %2374 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %43, float %2372, float %2373, float %2362, float undef, i32 0, i32 0, i32 undef, float %2334)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2375 = extractvalue %dx.types.ResRet.f32 %2374, 0
  %2376 = extractvalue %dx.types.ResRet.f32 %2374, 1
  %2377 = extractvalue %dx.types.ResRet.f32 %2374, 2
  %2378 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2379 = extractvalue %dx.types.CBufRet.f32 %2378, 3
  %2380 = fmul fast float %2379, %2096
  %2381 = call float @dx.op.binary.f32(i32 36, float %1908, float %2380)  ; FMin(a,b)
  %2382 = select i1 %2330, float %2381, float %2380
  %2383 = fmul fast float %2375, %2175
  %2384 = fmul fast float %2383, %2382
  %2385 = fmul fast float %2376, %2175
  %2386 = fmul fast float %2385, %2382
  %2387 = fmul fast float %2377, %2175
  %2388 = fmul fast float %2387, %2382
  %2389 = fadd fast float %2384, %2071
  %2390 = fadd fast float %2386, %2072
  %2391 = fadd fast float %2388, %2073
  %2392 = fsub fast float %2074, %2175
  br label %2177

; <label>:2393                                    ; preds = %2177
  br label %2394

; <label>:2394                                    ; preds = %2393, %2040
  %2395 = phi float [ %2041, %2040 ], [ %2178, %2393 ]
  %2396 = phi float [ %2042, %2040 ], [ %2179, %2393 ]
  %2397 = phi float [ %2043, %2040 ], [ %2180, %2393 ]
  %2398 = phi float [ %2044, %2040 ], [ %2181, %2393 ]
  %2399 = add i32 %2045, 1
  %2400 = icmp ugt i32 %2399, %2037
  br i1 %2400, label %2401, label %2040, !llvm.loop !104

; <label>:2401                                    ; preds = %2394
  br label %2402

; <label>:2402                                    ; preds = %2401, %2022
  %2403 = phi float [ 0.000000e+00, %2022 ], [ %2395, %2401 ]
  %2404 = phi float [ 0.000000e+00, %2022 ], [ %2396, %2401 ]
  %2405 = phi float [ 0.000000e+00, %2022 ], [ %2397, %2401 ]
  %2406 = call float @dx.op.dot3.f32(i32 55, float %2403, float %2404, float %2405, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2407 = select i1 %151, float 0.000000e+00, float %2403
  %2408 = select i1 %151, float %2406, float %2404
  %2409 = select i1 %151, float 0.000000e+00, float %2405
  %2410 = fcmp fast olt float %1949, 0.000000e+00
  %2411 = call float @dx.op.unary.f32(i32 6, float %1949)  ; FAbs(value)
  %2412 = fmul fast float %2411, %1920
  %2413 = fmul fast float %2411, %1921
  %2414 = fmul fast float %2411, %1922
  %2415 = select i1 %2410, float %1920, float %2412
  %2416 = select i1 %2410, float %1921, float %2413
  %2417 = select i1 %2410, float %1922, float %2414
  %2418 = fsub fast float 1.000000e+00, %2411
  %2419 = call float @dx.op.unary.f32(i32 7, float %2418)  ; Saturate(value)
  %2420 = fmul fast float %2419, %2407
  %2421 = fmul fast float %2419, %2408
  %2422 = fmul fast float %2419, %2409
  %2423 = fadd fast float %2415, %2420
  %2424 = fadd fast float %2416, %2421
  %2425 = fadd fast float %2417, %2422
  br label %2426

; <label>:2426                                    ; preds = %2402, %1901
  %2427 = phi float [ %1920, %1901 ], [ %2423, %2402 ]
  %2428 = phi float [ %1921, %1901 ], [ %2424, %2402 ]
  %2429 = phi float [ %1922, %1901 ], [ %2425, %2402 ]
  %2430 = fmul fast float %1938, %1916
  %2431 = fmul fast float %1938, %1917
  %2432 = fmul fast float %1938, %1918
  %2433 = fmul fast float %2427, %1933
  %2434 = fmul fast float %2428, %1934
  %2435 = fmul fast float %2429, %1935
  %2436 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %2437 = extractvalue %dx.types.CBufRet.f32 %2436, 3
  %2438 = fcmp fast oeq float %2437, 0.000000e+00
  br i1 %2438, label %4211, label %2439

; <label>:2439                                    ; preds = %2426
  %2440 = extractvalue %dx.types.CBufRet.f32 %2436, 0
  %2441 = extractvalue %dx.types.CBufRet.f32 %2436, 1
  %2442 = extractvalue %dx.types.CBufRet.f32 %2436, 2
  %2443 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %2444 = extractvalue %dx.types.CBufRet.f32 %2443, 0
  %2445 = extractvalue %dx.types.CBufRet.f32 %2443, 1
  %2446 = extractvalue %dx.types.CBufRet.f32 %2443, 2
  %2447 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %2448 = extractvalue %dx.types.CBufRet.f32 %2447, 0
  %2449 = extractvalue %dx.types.CBufRet.f32 %2447, 1
  %2450 = call float @dx.op.dot3.f32(i32 55, float %2444, float %2445, float %2446, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2451 = select i1 %151, float %2448, float %2444
  %2452 = select i1 %151, float %2450, float %2445
  %2453 = select i1 %151, float %2449, float %2446
  %2454 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %2455 = extractvalue %dx.types.CBufRet.f32 %2454, 2
  %2456 = fmul fast float %2455, %257
  %2457 = fmul fast float %2455, %258
  %2458 = fmul fast float %2455, %259
  %2459 = fadd fast float %2456, %326
  %2460 = fadd fast float %2457, %327
  %2461 = fadd fast float %2458, %328
  %2462 = fcmp fast olt float %2437, 0.000000e+00
  br i1 %2462, label %3558, label %2463

; <label>:2463                                    ; preds = %2439
  %2464 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %2465 = extractvalue %dx.types.CBufRet.f32 %2464, 0
  %2466 = extractvalue %dx.types.CBufRet.f32 %2464, 1
  %2467 = extractvalue %dx.types.CBufRet.f32 %2464, 2
  %2468 = extractvalue %dx.types.CBufRet.f32 %2464, 3
  %2469 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %2470 = extractvalue %dx.types.CBufRet.f32 %2469, 0
  %2471 = extractvalue %dx.types.CBufRet.f32 %2469, 1
  %2472 = extractvalue %dx.types.CBufRet.f32 %2469, 2
  %2473 = extractvalue %dx.types.CBufRet.f32 %2469, 3
  %2474 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %2475 = extractvalue %dx.types.CBufRet.f32 %2474, 0
  %2476 = extractvalue %dx.types.CBufRet.f32 %2474, 1
  %2477 = extractvalue %dx.types.CBufRet.f32 %2474, 2
  %2478 = extractvalue %dx.types.CBufRet.f32 %2474, 3
  %2479 = fmul fast float %2465, %2459
  %2480 = call float @dx.op.tertiary.f32(i32 46, float %2460, float %2466, float %2479)  ; FMad(a,b,c)
  %2481 = call float @dx.op.tertiary.f32(i32 46, float %2461, float %2467, float %2480)  ; FMad(a,b,c)
  %2482 = fadd fast float %2481, %2468
  %2483 = fmul fast float %2470, %2459
  %2484 = call float @dx.op.tertiary.f32(i32 46, float %2460, float %2471, float %2483)  ; FMad(a,b,c)
  %2485 = call float @dx.op.tertiary.f32(i32 46, float %2461, float %2472, float %2484)  ; FMad(a,b,c)
  %2486 = fadd fast float %2485, %2473
  %2487 = fmul fast float %2475, %2459
  %2488 = call float @dx.op.tertiary.f32(i32 46, float %2460, float %2476, float %2487)  ; FMad(a,b,c)
  %2489 = call float @dx.op.tertiary.f32(i32 46, float %2461, float %2477, float %2488)  ; FMad(a,b,c)
  %2490 = fadd fast float %2489, %2478
  %2491 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %2492 = extractvalue %dx.types.CBufRet.f32 %2491, 0
  %2493 = extractvalue %dx.types.CBufRet.f32 %2491, 1
  %2494 = extractvalue %dx.types.CBufRet.f32 %2491, 3
  %2495 = fmul fast float %2494, %2482
  %2496 = fmul fast float %2494, %2486
  %2497 = fadd fast float %2495, %2492
  %2498 = fadd fast float %2496, %2493
  %2499 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %2500 = extractvalue %dx.types.CBufRet.f32 %2499, 0
  %2501 = extractvalue %dx.types.CBufRet.f32 %2499, 1
  %2502 = extractvalue %dx.types.CBufRet.f32 %2499, 3
  %2503 = fmul fast float %2502, %2482
  %2504 = fmul fast float %2502, %2486
  %2505 = fadd fast float %2503, %2500
  %2506 = fadd fast float %2504, %2501
  %2507 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %2508 = extractvalue %dx.types.CBufRet.f32 %2507, 1
  %2509 = fsub fast float %2508, %2490
  %2510 = extractvalue %dx.types.CBufRet.f32 %2507, 2
  %2511 = fmul fast float %2509, %2510
  %2512 = fsub fast float 1.000000e+00, %2511
  %2513 = call float @dx.op.unary.f32(i32 7, float %2512)  ; Saturate(value)
  %2514 = extractvalue %dx.types.CBufRet.f32 %2499, 2
  %2515 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %2516 = extractvalue %dx.types.CBufRet.f32 %2515, 2
  %2517 = fadd fast float %2516, %2514
  %2518 = fcmp fast ogt float %2517, 0.000000e+00
  br i1 %2518, label %2519, label %2543

; <label>:2519                                    ; preds = %2463
  %2520 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %2521 = extractvalue %dx.types.CBufRet.f32 %2520, 0
  %2522 = extractvalue %dx.types.CBufRet.f32 %2520, 1
  %2523 = fsub fast float %2505, %2521
  %2524 = fsub fast float %2506, %2522
  %2525 = fcmp fast olt float %2523, 0.000000e+00
  %2526 = fcmp fast olt float %2524, 0.000000e+00
  %2527 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %2528 = extractvalue %dx.types.CBufRet.f32 %2527, 0
  %2529 = extractvalue %dx.types.CBufRet.f32 %2527, 1
  %2530 = extractvalue %dx.types.CBufRet.f32 %2527, 2
  %2531 = extractvalue %dx.types.CBufRet.f32 %2527, 3
  %2532 = select i1 %2525, float %2528, float %2530
  %2533 = select i1 %2526, float %2529, float %2531
  %2534 = fmul fast float %2532, %2523
  %2535 = fmul fast float %2533, %2524
  %2536 = call float @dx.op.unary.f32(i32 6, float %2534)  ; FAbs(value)
  %2537 = call float @dx.op.unary.f32(i32 6, float %2535)  ; FAbs(value)
  %2538 = extractvalue %dx.types.CBufRet.f32 %2454, 0
  %2539 = call float @dx.op.binary.f32(i32 35, float %2536, float %2537)  ; FMax(a,b)
  %2540 = fsub fast float %2538, %2539
  %2541 = call float @dx.op.unary.f32(i32 7, float %2540)  ; Saturate(value)
  %2542 = fmul fast float %2541, %2513
  br label %2543

; <label>:2543                                    ; preds = %2519, %2463
  %2544 = phi float [ %2542, %2519 ], [ 0.000000e+00, %2463 ]
  %2545 = extractvalue %dx.types.CBufRet.f32 %2491, 2
  %2546 = extractvalue %dx.types.CBufRet.f32 %2515, 1
  %2547 = fadd fast float %2546, %2545
  %2548 = fcmp fast ogt float %2547, 0.000000e+00
  %2549 = extractvalue %dx.types.CBufRet.f32 %2454, 0
  br i1 %2548, label %2550, label %2573

; <label>:2550                                    ; preds = %2543
  %2551 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %2552 = extractvalue %dx.types.CBufRet.f32 %2551, 0
  %2553 = extractvalue %dx.types.CBufRet.f32 %2551, 1
  %2554 = fsub fast float %2497, %2552
  %2555 = fsub fast float %2498, %2553
  %2556 = fcmp fast olt float %2554, 0.000000e+00
  %2557 = fcmp fast olt float %2555, 0.000000e+00
  %2558 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %2559 = extractvalue %dx.types.CBufRet.f32 %2558, 0
  %2560 = extractvalue %dx.types.CBufRet.f32 %2558, 1
  %2561 = extractvalue %dx.types.CBufRet.f32 %2558, 2
  %2562 = extractvalue %dx.types.CBufRet.f32 %2558, 3
  %2563 = select i1 %2556, float %2559, float %2561
  %2564 = select i1 %2557, float %2560, float %2562
  %2565 = fmul fast float %2563, %2554
  %2566 = fmul fast float %2564, %2555
  %2567 = call float @dx.op.unary.f32(i32 6, float %2565)  ; FAbs(value)
  %2568 = call float @dx.op.unary.f32(i32 6, float %2566)  ; FAbs(value)
  %2569 = call float @dx.op.binary.f32(i32 35, float %2567, float %2568)  ; FMax(a,b)
  %2570 = fsub fast float %2549, %2569
  %2571 = call float @dx.op.unary.f32(i32 7, float %2570)  ; Saturate(value)
  %2572 = fmul fast float %2571, %2513
  br label %2573

; <label>:2573                                    ; preds = %2550, %2543
  %2574 = phi float [ %2572, %2550 ], [ 0.000000e+00, %2543 ]
  %2575 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %2576 = extractvalue %dx.types.CBufRet.f32 %2575, 1
  %2577 = call float @dx.op.unary.f32(i32 7, float %2576)  ; Saturate(value)
  %2578 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %2579 = extractvalue %dx.types.CBufRet.f32 %2578, 0
  %2580 = extractvalue %dx.types.CBufRet.f32 %2578, 1
  %2581 = fsub fast float %2482, %2579
  %2582 = fsub fast float %2486, %2580
  %2583 = fcmp fast olt float %2581, 0.000000e+00
  %2584 = fcmp fast olt float %2582, 0.000000e+00
  %2585 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %2586 = extractvalue %dx.types.CBufRet.f32 %2585, 0
  %2587 = extractvalue %dx.types.CBufRet.f32 %2585, 1
  %2588 = extractvalue %dx.types.CBufRet.f32 %2585, 2
  %2589 = extractvalue %dx.types.CBufRet.f32 %2585, 3
  %2590 = select i1 %2583, float %2586, float %2588
  %2591 = select i1 %2584, float %2587, float %2589
  %2592 = fmul fast float %2590, %2581
  %2593 = fmul fast float %2591, %2582
  %2594 = call float @dx.op.unary.f32(i32 6, float %2592)  ; FAbs(value)
  %2595 = call float @dx.op.unary.f32(i32 6, float %2593)  ; FAbs(value)
  %2596 = call float @dx.op.binary.f32(i32 35, float %2594, float %2595)  ; FMax(a,b)
  %2597 = fsub fast float %2549, %2596
  %2598 = call float @dx.op.unary.f32(i32 7, float %2597)  ; Saturate(value)
  %2599 = call float @dx.op.binary.f32(i32 36, float %2598, float %2577)  ; FMin(a,b)
  %2600 = fmul fast float %2599, %2513
  %2601 = fsub fast float %2574, %2600
  %2602 = fsub fast float %2544, %2574
  %2603 = fsub fast float %2602, %2600
  %2604 = call float @dx.op.binary.f32(i32 35, float %2574, float %2544)  ; FMax(a,b)
  %2605 = call float @dx.op.binary.f32(i32 35, float %2600, float %2604)  ; FMax(a,b)
  %2606 = fcmp fast olt float %2605, 1.000000e+00
  br i1 %2606, label %2607, label %3005, !dx.controlflow.hints !106

; <label>:2607                                    ; preds = %2573
  %2608 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %2609 = extractvalue %dx.types.CBufRet.f32 %2608, 0
  %2610 = fcmp fast une float %2609, 0.000000e+00
  br i1 %2610, label %2611, label %3005, !dx.controlflow.hints !107

; <label>:2611                                    ; preds = %2607
  %2612 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %2613 = extractvalue %dx.types.CBufRet.f32 %2612, 0
  %2614 = extractvalue %dx.types.CBufRet.f32 %2612, 1
  %2615 = extractvalue %dx.types.CBufRet.f32 %2612, 2
  %2616 = extractvalue %dx.types.CBufRet.f32 %2612, 3
  %2617 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %2618 = extractvalue %dx.types.CBufRet.f32 %2617, 0
  %2619 = extractvalue %dx.types.CBufRet.f32 %2617, 1
  %2620 = extractvalue %dx.types.CBufRet.f32 %2617, 2
  %2621 = extractvalue %dx.types.CBufRet.f32 %2617, 3
  %2622 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %2623 = extractvalue %dx.types.CBufRet.f32 %2622, 0
  %2624 = extractvalue %dx.types.CBufRet.f32 %2622, 1
  %2625 = extractvalue %dx.types.CBufRet.f32 %2622, 2
  %2626 = extractvalue %dx.types.CBufRet.f32 %2622, 3
  %2627 = fmul fast float %2613, %2459
  %2628 = call float @dx.op.tertiary.f32(i32 46, float %2460, float %2614, float %2627)  ; FMad(a,b,c)
  %2629 = call float @dx.op.tertiary.f32(i32 46, float %2461, float %2615, float %2628)  ; FMad(a,b,c)
  %2630 = fadd fast float %2629, %2616
  %2631 = fmul fast float %2618, %2459
  %2632 = call float @dx.op.tertiary.f32(i32 46, float %2460, float %2619, float %2631)  ; FMad(a,b,c)
  %2633 = call float @dx.op.tertiary.f32(i32 46, float %2461, float %2620, float %2632)  ; FMad(a,b,c)
  %2634 = fadd fast float %2633, %2621
  %2635 = fmul fast float %2623, %2459
  %2636 = call float @dx.op.tertiary.f32(i32 46, float %2460, float %2624, float %2635)  ; FMad(a,b,c)
  %2637 = call float @dx.op.tertiary.f32(i32 46, float %2461, float %2625, float %2636)  ; FMad(a,b,c)
  %2638 = fadd fast float %2637, %2626
  %2639 = fcmp fast oge float %2630, 1.000000e+00
  %2640 = fcmp fast oge float %2634, 1.000000e+00
  %2641 = or i1 %2639, %2640
  %2642 = fcmp fast olt float %2630, 0.000000e+00
  %2643 = fcmp fast olt float %2634, 0.000000e+00
  %2644 = or i1 %2642, %2643
  %2645 = or i1 %2641, %2644
  br i1 %2645, label %3005, label %2646, !dx.controlflow.hints !108

; <label>:2646                                    ; preds = %2611
  %2647 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %2648 = extractvalue %dx.types.CBufRet.f32 %2647, 0
  %2649 = extractvalue %dx.types.CBufRet.f32 %2647, 1
  %2650 = extractvalue %dx.types.CBufRet.f32 %2647, 2
  %2651 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %2652 = extractvalue %dx.types.CBufRet.i32 %2651, 2
  %2653 = uitofp i32 %2652 to float
  %2654 = extractvalue %dx.types.CBufRet.i32 %2651, 3
  %2655 = uitofp i32 %2654 to float
  %2656 = extractvalue %dx.types.CBufRet.f32 %2647, 3
  %2657 = fmul fast float %2656, 2.000000e+00
  %2658 = fsub fast float %2630, %2648
  %2659 = fsub fast float %2634, %2649
  %2660 = fmul fast float %2657, %2658
  %2661 = fmul fast float %2657, %2659
  %2662 = fdiv fast float 1.000000e+00, %2442
  %2663 = fmul fast float %2661, %2662
  %2664 = call float @dx.op.unary.f32(i32 6, float %2663)  ; FAbs(value)
  %2665 = fmul fast float %2650, %2461
  %2666 = fmul fast float %2665, %2657
  %2667 = call float @dx.op.unary.f32(i32 6, float %2666)  ; FAbs(value)
  %2668 = call float @dx.op.unary.f32(i32 6, float %2660)  ; FAbs(value)
  %2669 = call float @dx.op.binary.f32(i32 35, float %2667, float %2664)  ; FMax(a,b)
  %2670 = call float @dx.op.binary.f32(i32 35, float %2668, float %2669)  ; FMax(a,b)
  %2671 = fmul fast float %2670, 2.000000e+00
  %2672 = call float @dx.op.unary.f32(i32 23, float %2671)  ; Log(value)
  %2673 = call float @dx.op.binary.f32(i32 35, float %2672, float %2653)  ; FMax(a,b)
  %2674 = call float @dx.op.unary.f32(i32 22, float %2673)  ; Frc(value)
  %2675 = fadd fast float %2674, 0xBFEA666660000000
  %2676 = fmul fast float %2675, 8.000000e+00
  %2677 = call float @dx.op.unary.f32(i32 7, float %2676)  ; Saturate(value)
  %2678 = call float @dx.op.unary.f32(i32 27, float %2673)  ; Round_ni(value)
  %2679 = fadd fast float %2678, %2677
  %2680 = call float @dx.op.binary.f32(i32 36, float %2679, float %2655)  ; FMin(a,b)
  %2681 = call float @dx.op.unary.f32(i32 27, float %2680)  ; Round_ni(value)
  %2682 = fsub fast float -0.000000e+00, %2681
  %2683 = call float @dx.op.unary.f32(i32 21, float %2682)  ; Exp(value)
  %2684 = fmul fast float %2683, %2657
  %2685 = fmul fast float %2684, %2630
  %2686 = fmul fast float %2684, %2634
  %2687 = fmul fast float %2685, 2.500000e-01
  %2688 = fmul fast float %2686, 2.500000e-01
  %2689 = fadd fast float %2687, 5.000000e-01
  %2690 = fadd fast float %2688, 5.000000e-01
  %2691 = fsub fast float %2655, %2653
  %2692 = fptoui float %2691 to i32
  %2693 = add i32 %2692, 320
  %2694 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 %2693)  ; CBufferLoadLegacy(handle,regIndex)
  %2695 = extractvalue %dx.types.CBufRet.f32 %2694, 0
  %2696 = extractvalue %dx.types.CBufRet.f32 %2694, 1
  %2697 = fcmp fast une float %2680, %2655
  %2698 = fsub fast float %2630, %2695
  %2699 = fsub fast float %2634, %2696
  %2700 = call float @dx.op.unary.f32(i32 6, float %2698)  ; FAbs(value)
  %2701 = call float @dx.op.unary.f32(i32 6, float %2699)  ; FAbs(value)
  %2702 = fmul fast float %2700, %2684
  %2703 = fmul fast float %2701, %2684
  %2704 = fcmp fast olt float %2702, 1.000000e+00
  %2705 = fcmp fast olt float %2703, 1.000000e+00
  %2706 = and i1 %2704, %2705
  %2707 = or i1 %2697, %2706
  br i1 %2707, label %2708, label %3005, !dx.controlflow.hints !109

; <label>:2708                                    ; preds = %2646
  %2709 = fmul fast float %2686, 5.000000e-01
  %2710 = fmul fast float %2685, 5.000000e-01
  %2711 = fadd fast float %2709, 5.000000e-01
  %2712 = fadd fast float %2710, 5.000000e-01
  %2713 = sitofp i32 %2652 to float
  %2714 = fsub fast float %2680, %2713
  %2715 = call float @dx.op.unary.f32(i32 27, float %2714)  ; Round_ni(value)
  %2716 = call float @dx.op.unary.f32(i32 22, float %2680)  ; Frc(value)
  %2717 = call float @dx.op.unary.f32(i32 22, float %2712)  ; Frc(value)
  %2718 = call float @dx.op.unary.f32(i32 22, float %2711)  ; Frc(value)
  %2719 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %44, float %2717, float %2718, float %2715, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2720 = extractvalue %dx.types.ResRet.f32 %2719, 0
  %2721 = extractvalue %dx.types.ResRet.f32 %2719, 1
  %2722 = extractvalue %dx.types.ResRet.f32 %2719, 2
  %2723 = extractvalue %dx.types.ResRet.f32 %2719, 3
  %2724 = fcmp fast ogt float %2716, 0.000000e+00
  br i1 %2724, label %2725, label %2746, !dx.controlflow.hints !110

; <label>:2725                                    ; preds = %2708
  %2726 = fadd fast float %2715, 1.000000e+00
  %2727 = call float @dx.op.unary.f32(i32 22, float %2689)  ; Frc(value)
  %2728 = call float @dx.op.unary.f32(i32 22, float %2690)  ; Frc(value)
  %2729 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %44, float %2727, float %2728, float %2726, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2730 = extractvalue %dx.types.ResRet.f32 %2729, 0
  %2731 = extractvalue %dx.types.ResRet.f32 %2729, 1
  %2732 = extractvalue %dx.types.ResRet.f32 %2729, 2
  %2733 = extractvalue %dx.types.ResRet.f32 %2729, 3
  %2734 = fsub fast float %2730, %2720
  %2735 = fsub fast float %2731, %2721
  %2736 = fsub fast float %2732, %2722
  %2737 = fsub fast float %2733, %2723
  %2738 = fmul fast float %2734, %2716
  %2739 = fmul fast float %2735, %2716
  %2740 = fmul fast float %2736, %2716
  %2741 = fmul fast float %2737, %2716
  %2742 = fadd fast float %2738, %2720
  %2743 = fadd fast float %2739, %2721
  %2744 = fadd fast float %2740, %2722
  %2745 = fadd fast float %2741, %2723
  br label %2746

; <label>:2746                                    ; preds = %2725, %2708
  %2747 = phi float [ %2742, %2725 ], [ %2720, %2708 ]
  %2748 = phi float [ %2743, %2725 ], [ %2721, %2708 ]
  %2749 = phi float [ %2744, %2725 ], [ %2722, %2708 ]
  %2750 = phi float [ %2745, %2725 ], [ %2723, %2708 ]
  %2751 = fadd fast float %2747, -5.000000e-01
  %2752 = fadd fast float %2749, -5.000000e-01
  %2753 = fmul fast float %2751, 0xBFD5555560000000
  %2754 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %2752, float %2753)  ; FMad(a,b,c)
  %2755 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %2748, float 0.000000e+00)  ; FMad(a,b,c)
  %2756 = fadd fast float %2755, %2750
  %2757 = fmul fast float %2751, -7.500000e-01
  %2758 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %2752, float %2757)  ; FMad(a,b,c)
  %2759 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %2748, float 0.000000e+00)  ; FMad(a,b,c)
  %2760 = fadd fast float %2759, %2750
  %2761 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %2762 = extractvalue %dx.types.CBufRet.f32 %2761, 0
  %2763 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %2764 = extractvalue %dx.types.CBufRet.f32 %2763, 0
  %2765 = extractvalue %dx.types.CBufRet.f32 %2763, 1
  %2766 = extractvalue %dx.types.CBufRet.f32 %2763, 2
  %2767 = extractvalue %dx.types.CBufRet.f32 %2763, 3
  %2768 = fsub fast float %2764, %2754
  %2769 = fsub fast float %2765, %2756
  %2770 = fsub fast float %2766, %2758
  %2771 = fsub fast float %2767, %2760
  %2772 = fmul fast float %2768, %2762
  %2773 = fmul fast float %2769, %2762
  %2774 = fmul fast float %2770, %2762
  %2775 = fmul fast float %2771, %2762
  %2776 = fadd fast float %2772, %2754
  %2777 = fadd fast float %2773, %2756
  %2778 = fadd fast float %2774, %2758
  %2779 = fadd fast float %2775, %2760
  %2780 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %2781 = extractvalue %dx.types.ResRet.i32 %2780, 0
  %2782 = and i32 %2781, 536870911
  %2783 = uitofp i32 %2782 to float
  %2784 = fmul fast float %2783, %2630
  %2785 = fmul fast float %2783, %2634
  %2786 = fptoui float %2784 to i32
  %2787 = fptoui float %2785 to i32
  %2788 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %2789 = extractvalue %dx.types.ResRet.i32 %2788, 0
  %2790 = and i32 %2789, 31
  %2791 = lshr i32 %2786, %2790
  %2792 = lshr i32 %2787, %2790
  %2793 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %2794 = extractvalue %dx.types.ResRet.i32 %2793, 0
  %2795 = and i32 %2794, 31
  %2796 = shl i32 1, %2795
  %2797 = call i32 @dx.op.binary.i32(i32 40, i32 %2796, i32 4)  ; UMin(a,b)
  %2798 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %2799 = extractvalue %dx.types.ResRet.i32 %2798, 0
  %2800 = extractvalue %dx.types.ResRet.i32 %2798, 1
  %2801 = icmp eq i32 %2797, 0
  br i1 %2801, label %2843, label %2802

; <label>:2802                                    ; preds = %2746
  br label %2803

; <label>:2803                                    ; preds = %2831, %2802
  %2804 = phi i32 [ %2834, %2831 ], [ 0, %2802 ]
  %2805 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %2806 = extractvalue %dx.types.ResRet.i32 %2805, 0
  %2807 = lshr i32 %2806, 16
  %2808 = and i32 %2807, 31
  %2809 = shl i32 %2792, %2808
  %2810 = add i32 %2809, %2791
  %2811 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %2812 = extractvalue %dx.types.ResRet.i32 %2811, 0
  %2813 = and i32 %2812, 31
  %2814 = shl i32 %2810, %2813
  %2815 = add i32 %2814, %2804
  %2816 = shl i32 %2815, 2
  %2817 = add i32 %2816, 32
  %2818 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %2817, i32 undef)  ; BufferLoad(srv,index,wot)
  %2819 = extractvalue %dx.types.ResRet.i32 %2818, 0
  %2820 = icmp slt i32 %2819, 0
  %2821 = getelementptr [12 x float], [12 x float]* %70, i32 0, i32 %2804
  %2822 = getelementptr [12 x float], [12 x float]* %71, i32 0, i32 %2804
  %2823 = bitcast float* %2821 to i32*
  %2824 = bitcast float* %2822 to i32*
  br i1 %2820, label %2825, label %2831

; <label>:2825                                    ; preds = %2803
  %2826 = and i32 %2819, 1073741823
  %2827 = add nuw nsw i32 %2826, 20
  %2828 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %2827, i32 undef)  ; BufferLoad(srv,index,wot)
  %2829 = extractvalue %dx.types.ResRet.i32 %2828, 0
  %2830 = extractvalue %dx.types.ResRet.i32 %2828, 1
  br label %2831

; <label>:2831                                    ; preds = %2825, %2803
  %2832 = phi i32 [ %2829, %2825 ], [ %2799, %2803 ]
  %2833 = phi i32 [ %2830, %2825 ], [ %2800, %2803 ]
  store i32 %2832, i32* %2823, align 4
  store i32 %2833, i32* %2824, align 4
  %2834 = add nuw i32 %2804, 1
  %2835 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %2836 = extractvalue %dx.types.CBufRet.i32 %2835, 2
  %2837 = icmp eq i32 %2836, 0
  %2838 = icmp ugt i32 %2819, -1073741825
  %2839 = and i1 %2838, %2837
  %2840 = icmp ult i32 %2834, %2797
  %2841 = and i1 %2839, %2840
  br i1 %2841, label %2803, label %2842

; <label>:2842                                    ; preds = %2831
  br label %2843

; <label>:2843                                    ; preds = %2842, %2746
  %2844 = phi i32 [ 0, %2746 ], [ %2834, %2842 ]
  %2845 = extractvalue %dx.types.CBufRet.f32 %2608, 2
  %2846 = fptoui float %2845 to i32
  %2847 = icmp eq i32 %2846, 0
  br i1 %2847, label %2899, label %2848

; <label>:2848                                    ; preds = %2843
  br label %2849

; <label>:2849                                    ; preds = %2894, %2848
  %2850 = phi i32 [ %2895, %2894 ], [ %2844, %2848 ]
  %2851 = phi i32 [ %2896, %2894 ], [ 0, %2848 ]
  %2852 = lshr i32 %2851, 2
  %2853 = and i32 %2851, 3
  %2854 = add nuw nsw i32 %2852, 83
  %2855 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 %2854)  ; CBufferLoadLegacy(handle,regIndex)
  %2856 = extractvalue %dx.types.CBufRet.i32 %2855, 0
  %2857 = extractvalue %dx.types.CBufRet.i32 %2855, 1
  %2858 = extractvalue %dx.types.CBufRet.i32 %2855, 2
  %2859 = extractvalue %dx.types.CBufRet.i32 %2855, 3
  %2860 = getelementptr inbounds [4 x i32], [4 x i32]* %50, i32 0, i32 0
  store i32 %2856, i32* %2860, align 4
  %2861 = getelementptr inbounds [4 x i32], [4 x i32]* %50, i32 0, i32 1
  store i32 %2857, i32* %2861, align 4
  %2862 = getelementptr inbounds [4 x i32], [4 x i32]* %50, i32 0, i32 2
  store i32 %2858, i32* %2862, align 4
  %2863 = getelementptr inbounds [4 x i32], [4 x i32]* %50, i32 0, i32 3
  store i32 %2859, i32* %2863, align 4
  %2864 = getelementptr inbounds [4 x i32], [4 x i32]* %50, i32 0, i32 %2853
  %2865 = load i32, i32* %2864, align 4, !tbaa !111, !noalias !115
  %2866 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %2867 = extractvalue %dx.types.ResRet.i32 %2866, 0
  %2868 = lshr i32 %2867, 16
  %2869 = and i32 %2868, 31
  %2870 = shl i32 %2792, %2869
  %2871 = add i32 %2870, %2791
  %2872 = shl i32 %2871, 2
  %2873 = add i32 %2872, %2865
  %2874 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %2873, i32 undef)  ; BufferLoad(srv,index,wot)
  %2875 = extractvalue %dx.types.ResRet.i32 %2874, 0
  %2876 = icmp eq i32 %2875, 0
  br i1 %2876, label %2894, label %2877

; <label>:2877                                    ; preds = %2849
  %2878 = icmp slt i32 %2875, 0
  %2879 = getelementptr [12 x float], [12 x float]* %70, i32 0, i32 %2850
  %2880 = getelementptr [12 x float], [12 x float]* %71, i32 0, i32 %2850
  %2881 = bitcast float* %2879 to i32*
  %2882 = bitcast float* %2880 to i32*
  br i1 %2878, label %2883, label %2890

; <label>:2883                                    ; preds = %2877
  %2884 = and i32 %2875, 1073741823
  %2885 = add i32 %2865, 20
  %2886 = add i32 %2885, %2884
  %2887 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %2886, i32 undef)  ; BufferLoad(srv,index,wot)
  %2888 = extractvalue %dx.types.ResRet.i32 %2887, 0
  %2889 = extractvalue %dx.types.ResRet.i32 %2887, 1
  br label %2890

; <label>:2890                                    ; preds = %2883, %2877
  %2891 = phi i32 [ %2888, %2883 ], [ %2799, %2877 ]
  %2892 = phi i32 [ %2889, %2883 ], [ %2800, %2877 ]
  store i32 %2891, i32* %2881, align 4
  store i32 %2892, i32* %2882, align 4
  %2893 = add i32 %2850, 1
  br label %2894

; <label>:2894                                    ; preds = %2890, %2849
  %2895 = phi i32 [ %2850, %2849 ], [ %2893, %2890 ]
  %2896 = add nuw i32 %2851, 1
  %2897 = icmp eq i32 %2896, %2846
  br i1 %2897, label %2898, label %2849

; <label>:2898                                    ; preds = %2894
  br label %2899

; <label>:2899                                    ; preds = %2898, %2843
  %2900 = phi i32 [ %2844, %2843 ], [ %2895, %2898 ]
  %2901 = icmp eq i32 %2900, 1
  %2902 = getelementptr [12 x float], [12 x float]* %70, i32 0, i32 0
  %2903 = getelementptr [12 x float], [12 x float]* %71, i32 0, i32 0
  br i1 %2901, label %2904, label %2907

; <label>:2904                                    ; preds = %2899
  %2905 = load float, float* %2902, align 4
  %2906 = load float, float* %2903, align 4
  br label %2934

; <label>:2907                                    ; preds = %2899
  %2908 = load float, float* %2902, align 4
  %2909 = load float, float* %2903, align 4
  %2910 = fdiv fast float 1.000000e+00, %2909
  %2911 = fsub fast float %2908, %2910
  %2912 = icmp ugt i32 %2900, 1
  br i1 %2912, label %2913, label %2929

; <label>:2913                                    ; preds = %2907
  br label %2914

; <label>:2914                                    ; preds = %2914, %2913
  %2915 = phi float [ %2924, %2914 ], [ %2911, %2913 ]
  %2916 = phi float [ %2925, %2914 ], [ %2908, %2913 ]
  %2917 = phi i32 [ %2926, %2914 ], [ 1, %2913 ]
  %2918 = getelementptr [12 x float], [12 x float]* %70, i32 0, i32 %2917
  %2919 = load float, float* %2918, align 4
  %2920 = getelementptr [12 x float], [12 x float]* %71, i32 0, i32 %2917
  %2921 = load float, float* %2920, align 4
  %2922 = fdiv fast float 1.000000e+00, %2921
  %2923 = fsub fast float %2919, %2922
  %2924 = call float @dx.op.binary.f32(i32 36, float %2915, float %2923)  ; FMin(a,b)
  %2925 = call float @dx.op.binary.f32(i32 35, float %2916, float %2919)  ; FMax(a,b)
  %2926 = add nuw i32 %2917, 1
  %2927 = icmp eq i32 %2926, %2900
  br i1 %2927, label %2928, label %2914

; <label>:2928                                    ; preds = %2914
  br label %2929

; <label>:2929                                    ; preds = %2928, %2907
  %2930 = phi float [ %2911, %2907 ], [ %2924, %2928 ]
  %2931 = phi float [ %2908, %2907 ], [ %2925, %2928 ]
  %2932 = fsub fast float %2931, %2930
  %2933 = fdiv fast float 1.000000e+00, %2932
  br label %2934

; <label>:2934                                    ; preds = %2929, %2904
  %2935 = phi float [ %2905, %2904 ], [ %2931, %2929 ]
  %2936 = phi float [ %2906, %2904 ], [ %2933, %2929 ]
  %2937 = fadd fast float %2638, %2935
  %2938 = fmul fast float %2937, %2936
  %2939 = call float @dx.op.unary.f32(i32 7, float %2938)  ; Saturate(value)
  %2940 = fmul fast float %2939, 2.000000e+00
  %2941 = fsub fast float 1.000000e+00, %2940
  %2942 = fmul fast float %2776, %2776
  %2943 = fsub fast float %2777, %2942
  %2944 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %2943)  ; FMax(a,b)
  %2945 = fdiv fast float 1.000000e+00, %2944
  %2946 = fmul fast float %2777, %2776
  %2947 = fsub fast float %2778, %2946
  %2948 = fsub fast float %2941, %2776
  %2949 = fmul fast float %2941, %2941
  %2950 = fsub fast float %2949, %2777
  %2951 = fmul fast float %2945, %2947
  %2952 = fmul fast float %2951, %2948
  %2953 = fsub fast float %2950, %2952
  %2954 = fmul fast float %2777, %2777
  %2955 = fsub fast float %2779, %2954
  %2956 = fmul fast float %2947, %2947
  %2957 = fmul fast float %2956, %2945
  %2958 = fsub fast float %2955, %2957
  %2959 = fdiv fast float %2953, %2958
  %2960 = fmul fast float %2959, %2947
  %2961 = fsub fast float %2948, %2960
  %2962 = fmul fast float %2961, %2945
  %2963 = fmul fast float %2962, %2776
  %2964 = fsub fast float 1.000000e+00, %2963
  %2965 = fmul fast float %2959, %2777
  %2966 = fsub fast float %2964, %2965
  %2967 = fmul fast float %2962, %2962
  %2968 = fmul fast float %2959, 4.000000e+00
  %2969 = fmul fast float %2968, %2966
  %2970 = fsub fast float %2967, %2969
  %2971 = call float @dx.op.unary.f32(i32 24, float %2970)  ; Sqrt(value)
  %2972 = fcmp fast oge float %2962, 0.000000e+00
  %2973 = fsub fast float -0.000000e+00, %2971
  %2974 = select i1 %2972, float %2973, float %2971
  %2975 = fsub fast float %2974, %2962
  %2976 = fdiv fast float %2975, %2959
  %2977 = fdiv fast float %2966, %2975
  %2978 = fmul fast float %2976, 5.000000e-01
  %2979 = fmul fast float %2977, 2.000000e+00
  %2980 = select i1 %2972, float %2978, float %2979
  %2981 = select i1 %2972, float %2979, float %2978
  %2982 = call float @dx.op.binary.f32(i32 35, float %2980, float %2981)  ; FMax(a,b)
  %2983 = call float @dx.op.binary.f32(i32 36, float %2980, float %2981)  ; FMin(a,b)
  %2984 = fcmp fast ogt float %2941, %2982
  %2985 = fsub fast float %2941, %2983
  %2986 = fsub fast float %2941, %2982
  %2987 = fsub fast float %2982, %2983
  %2988 = select i1 %2984, float %2986, float %2987
  %2989 = fmul float %2985, %2988
  %2990 = select i1 %2984, float %2983, float %2941
  %2991 = fcmp fast ogt float %2941, %2983
  %2992 = fmul fast float %2990, %2982
  %2993 = fadd fast float %2990, %2982
  %2994 = fmul fast float %2993, %2776
  %2995 = fadd fast float %2992, %2777
  %2996 = fsub fast float %2995, %2994
  %2997 = fdiv fast float %2996, %2989
  %2998 = select i1 %2991, float %2997, float 0.000000e+00
  %2999 = fsub fast float 1.000000e+00, %2998
  %3000 = select i1 %2984, float %2999, float %2998
  %3001 = call float @dx.op.unary.f32(i32 7, float %3000)  ; Saturate(value)
  %3002 = extractvalue %dx.types.CBufRet.f32 %2761, 3
  %3003 = fmul fast float %3002, %3001
  %3004 = fsub fast float 1.000000e+00, %3003
  br label %3005

; <label>:3005                                    ; preds = %2934, %2646, %2611, %2607, %2573
  %3006 = phi float [ 1.000000e+00, %2573 ], [ %3004, %2934 ], [ 1.000000e+00, %2611 ], [ 1.000000e+00, %2646 ], [ 1.000000e+00, %2607 ]
  %3007 = fcmp fast ogt float %2603, 0.000000e+00
  br i1 %3007, label %3008, label %3170, !dx.controlflow.hints !124

; <label>:3008                                    ; preds = %3005
  %3009 = fadd fast float %2516, %2490
  %3010 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %3011 = extractvalue %dx.types.CBufRet.f32 %3010, 2
  %3012 = extractvalue %dx.types.CBufRet.f32 %3010, 3
  %3013 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %3014 = extractvalue %dx.types.CBufRet.f32 %3013, 2
  %3015 = call float @dx.op.binary.f32(i32 35, float %3009, float 0.000000e+00)  ; FMax(a,b)
  %3016 = fadd fast float %3015, 0x3F10000000000000
  %3017 = fcmp fast oeq float %3014, 0.000000e+00
  br i1 %3017, label %3018, label %3085

; <label>:3018                                    ; preds = %3008
  %3019 = extractvalue %dx.types.CBufRet.f32 %3010, 1
  %3020 = extractvalue %dx.types.CBufRet.f32 %3010, 0
  %3021 = fmul fast float %3020, %2505
  %3022 = fmul fast float %3019, %2506
  %3023 = fadd fast float %3021, 5.000000e-01
  %3024 = call float @dx.op.unary.f32(i32 27, float %3023)  ; Round_ni(value)
  %3025 = fadd fast float %3022, 5.000000e-01
  %3026 = call float @dx.op.unary.f32(i32 27, float %3025)  ; Round_ni(value)
  %3027 = fsub fast float %3023, %3024
  %3028 = fsub fast float %3025, %3026
  %3029 = fadd fast float %3024, -5.000000e-01
  %3030 = fadd fast float %3026, -5.000000e-01
  %3031 = fmul fast float %3027, 2.000000e+00
  %3032 = fsub fast float 3.000000e+00, %3031
  %3033 = fadd fast float %3031, 1.000000e+00
  %3034 = fsub fast float 2.000000e+00, %3027
  %3035 = bitcast float %3032 to i32
  %3036 = sub nsw i32 2129859010, %3035
  %3037 = bitcast i32 %3036 to float
  %3038 = fmul fast float %3037, %3034
  %3039 = fadd fast float %3038, -1.000000e+00
  %3040 = bitcast float %3033 to i32
  %3041 = sub nsw i32 2129859010, %3040
  %3042 = bitcast i32 %3041 to float
  %3043 = fmul fast float %3042, %3027
  %3044 = fadd fast float %3043, 1.000000e+00
  %3045 = fmul fast float %3028, 2.000000e+00
  %3046 = fsub fast float 3.000000e+00, %3045
  %3047 = fadd fast float %3045, 1.000000e+00
  %3048 = fsub fast float 2.000000e+00, %3028
  %3049 = bitcast float %3046 to i32
  %3050 = sub nsw i32 2129859010, %3049
  %3051 = bitcast i32 %3050 to float
  %3052 = fmul fast float %3051, %3048
  %3053 = fadd fast float %3052, -1.000000e+00
  %3054 = bitcast float %3047 to i32
  %3055 = sub nsw i32 2129859010, %3054
  %3056 = bitcast i32 %3055 to float
  %3057 = fmul fast float %3056, %3028
  %3058 = fadd fast float %3057, 1.000000e+00
  %3059 = fadd fast float %3039, %3029
  %3060 = fmul fast float %3059, %3011
  %3061 = fadd fast float %3053, %3030
  %3062 = fmul fast float %3061, %3012
  %3063 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %10, %dx.types.Handle %47, float %3060, float %3062, float undef, float undef, i32 0, i32 0, i32 undef, float %3016)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3064 = extractvalue %dx.types.ResRet.f32 %3063, 0
  %3065 = fmul fast float %3064, %3032
  %3066 = fadd fast float %3044, %3029
  %3067 = fmul fast float %3066, %3011
  %3068 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %10, %dx.types.Handle %47, float %3067, float %3062, float undef, float undef, i32 0, i32 0, i32 undef, float %3016)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3069 = extractvalue %dx.types.ResRet.f32 %3068, 0
  %3070 = fmul fast float %3069, %3033
  %3071 = fadd fast float %3058, %3030
  %3072 = fmul fast float %3071, %3012
  %3073 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %10, %dx.types.Handle %47, float %3060, float %3072, float undef, float undef, i32 0, i32 0, i32 undef, float %3016)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3074 = extractvalue %dx.types.ResRet.f32 %3073, 0
  %3075 = fmul fast float %3074, %3032
  %3076 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %10, %dx.types.Handle %47, float %3067, float %3072, float undef, float undef, i32 0, i32 0, i32 undef, float %3016)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3077 = extractvalue %dx.types.ResRet.f32 %3076, 0
  %3078 = fmul fast float %3077, %3033
  %3079 = fadd fast float %3078, %3075
  %3080 = fmul fast float %3079, %3047
  %3081 = fadd fast float %3070, %3065
  %3082 = fmul fast float %3081, %3046
  %3083 = fadd fast float %3082, %3080
  %3084 = fmul fast float %3083, 6.250000e-02
  br label %3170

; <label>:3085                                    ; preds = %3008
  %3086 = fmul fast float %162, 0x401921FB60000000
  %3087 = call float @dx.op.unary.f32(i32 13, float %3086)  ; Sin(value)
  %3088 = call float @dx.op.unary.f32(i32 12, float %3086)  ; Cos(value)
  %3089 = fsub fast float -0.000000e+00, %3087
  br label %3090

; <label>:3090                                    ; preds = %3139, %3085
  %3091 = phi float [ 0.000000e+00, %3085 ], [ %3134, %3139 ]
  %3092 = phi float [ 0.000000e+00, %3085 ], [ %3136, %3139 ]
  %3093 = phi i32 [ 0, %3085 ], [ %3140, %3139 ]
  %3094 = mul i32 %3093, 2
  %3095 = add i32 0, %3094
  %3096 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %3095
  %3097 = load float, float* %3096, align 4
  %3098 = mul i32 %3093, 2
  %3099 = add i32 1, %3098
  %3100 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %3099
  %3101 = load float, float* %3100, align 4
  %3102 = fmul fast float %3097, %3088
  %3103 = call float @dx.op.tertiary.f32(i32 46, float %3101, float %3089, float %3102)  ; FMad(a,b,c)
  %3104 = fmul fast float %3097, %3087
  %3105 = call float @dx.op.tertiary.f32(i32 46, float %3101, float %3088, float %3104)  ; FMad(a,b,c)
  %3106 = fmul fast float %3103, %3014
  %3107 = fmul fast float %3105, %3014
  %3108 = fadd fast float %3106, %2505
  %3109 = fadd fast float %3107, %2506
  %3110 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %10, %dx.types.Handle %46, float %3108, float %3109, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %3111 = extractvalue %dx.types.ResRet.f32 %3110, 0
  %3112 = extractvalue %dx.types.ResRet.f32 %3110, 1
  %3113 = extractvalue %dx.types.ResRet.f32 %3110, 2
  %3114 = extractvalue %dx.types.ResRet.f32 %3110, 3
  %3115 = getelementptr inbounds [4 x float], [4 x float]* %74, i32 0, i32 0
  store float %3111, float* %3115, align 4
  %3116 = getelementptr inbounds [4 x float], [4 x float]* %74, i32 0, i32 1
  store float %3112, float* %3116, align 4
  %3117 = getelementptr inbounds [4 x float], [4 x float]* %74, i32 0, i32 2
  store float %3113, float* %3117, align 4
  %3118 = getelementptr inbounds [4 x float], [4 x float]* %74, i32 0, i32 3
  store float %3114, float* %3118, align 4
  %3119 = fsub fast float %3111, %3016
  %3120 = fcmp fast olt float %3119, 0.000000e+00
  %3121 = select i1 %3120, float 0.000000e+00, float 1.000000e+00
  %3122 = fadd fast float %3121, %3091
  %3123 = fmul fast float %3121, %3119
  %3124 = fadd fast float %3123, %3092
  br label %3125

; <label>:3125                                    ; preds = %3125, %3090
  %3126 = phi i32 [ 1, %3090 ], [ %3137, %3125 ]
  %3127 = phi float [ %3124, %3090 ], [ %3136, %3125 ]
  %3128 = phi float [ %3122, %3090 ], [ %3134, %3125 ]
  %3129 = getelementptr [4 x float], [4 x float]* %74, i32 0, i32 %3126
  %3130 = load float, float* %3129, align 4, !tbaa !125, !noalias !115
  %3131 = fsub fast float %3130, %3016
  %3132 = fcmp fast olt float %3131, 0.000000e+00
  %3133 = select i1 %3132, float 0.000000e+00, float 1.000000e+00
  %3134 = fadd fast float %3133, %3128
  %3135 = fmul fast float %3133, %3131
  %3136 = fadd fast float %3135, %3127
  %3137 = add nuw nsw i32 %3126, 1
  %3138 = icmp eq i32 %3137, 4
  br i1 %3138, label %3139, label %3125, !llvm.loop !127

; <label>:3139                                    ; preds = %3125
  %3140 = add nuw nsw i32 %3093, 1
  %3141 = icmp eq i32 %3140, 8
  br i1 %3141, label %3142, label %3090, !llvm.loop !128

; <label>:3142                                    ; preds = %3139
  %3143 = fdiv fast float 1.000000e+00, %3134
  %3144 = fmul fast float %3143, %3136
  %3145 = fdiv fast float 1.000000e+00, %3016
  %3146 = fmul fast float %3144, %3145
  %3147 = call float @dx.op.unary.f32(i32 7, float %3146)  ; Saturate(value)
  %3148 = call float @dx.op.binary.f32(i32 35, float %3147, float 0.000000e+00)  ; FMax(a,b)
  %3149 = fmul fast float %3134, 3.125000e-02
  %3150 = call float @dx.op.unary.f32(i32 7, float %3149)  ; Saturate(value)
  %3151 = fmul fast float %3150, 2.000000e+00
  %3152 = fadd fast float %3151, -1.000000e+00
  %3153 = fcmp fast ogt float %3152, 0.000000e+00
  %3154 = fcmp fast olt float %3152, 0.000000e+00
  %3155 = zext i1 %3153 to i32
  %3156 = zext i1 %3154 to i32
  %3157 = sub nsw i32 %3155, %3156
  %3158 = sitofp i32 %3157 to float
  %3159 = fmul fast float %3158, %3152
  %3160 = fsub fast float 1.000000e+00, %3159
  %3161 = fmul fast float %3160, %3160
  %3162 = fmul fast float %3161, %3160
  %3163 = fsub fast float %3160, %3162
  %3164 = fmul fast float %3163, %3148
  %3165 = fsub fast float 1.000000e+00, %3162
  %3166 = fsub fast float %3165, %3164
  %3167 = fmul fast float %3158, 5.000000e-01
  %3168 = fmul fast float %3167, %3166
  %3169 = fsub fast float 5.000000e-01, %3168
  br label %3170

; <label>:3170                                    ; preds = %3142, %3018, %3005
  %3171 = phi float [ 1.000000e+00, %3005 ], [ %3084, %3018 ], [ %3169, %3142 ]
  %3172 = fcmp fast ogt float %2601, 0.000000e+00
  br i1 %3172, label %3173, label %3337, !dx.controlflow.hints !129

; <label>:3173                                    ; preds = %3170
  %3174 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %3175 = extractvalue %dx.types.CBufRet.f32 %3174, 1
  %3176 = fadd fast float %3175, %2490
  %3177 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %3178 = extractvalue %dx.types.CBufRet.f32 %3177, 2
  %3179 = extractvalue %dx.types.CBufRet.f32 %3177, 3
  %3180 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %3181 = extractvalue %dx.types.CBufRet.f32 %3180, 1
  %3182 = call float @dx.op.binary.f32(i32 35, float %3176, float 0.000000e+00)  ; FMax(a,b)
  %3183 = fadd fast float %3182, 0x3F10000000000000
  %3184 = fcmp fast oeq float %3181, 0.000000e+00
  br i1 %3184, label %3185, label %3252

; <label>:3185                                    ; preds = %3173
  %3186 = extractvalue %dx.types.CBufRet.f32 %3177, 1
  %3187 = extractvalue %dx.types.CBufRet.f32 %3177, 0
  %3188 = fmul fast float %3187, %2497
  %3189 = fmul fast float %3186, %2498
  %3190 = fadd fast float %3188, 5.000000e-01
  %3191 = call float @dx.op.unary.f32(i32 27, float %3190)  ; Round_ni(value)
  %3192 = fadd fast float %3189, 5.000000e-01
  %3193 = call float @dx.op.unary.f32(i32 27, float %3192)  ; Round_ni(value)
  %3194 = fsub fast float %3190, %3191
  %3195 = fsub fast float %3192, %3193
  %3196 = fadd fast float %3191, -5.000000e-01
  %3197 = fadd fast float %3193, -5.000000e-01
  %3198 = fmul fast float %3194, 2.000000e+00
  %3199 = fsub fast float 3.000000e+00, %3198
  %3200 = fadd fast float %3198, 1.000000e+00
  %3201 = fsub fast float 2.000000e+00, %3194
  %3202 = bitcast float %3199 to i32
  %3203 = sub nsw i32 2129859010, %3202
  %3204 = bitcast i32 %3203 to float
  %3205 = fmul fast float %3204, %3201
  %3206 = fadd fast float %3205, -1.000000e+00
  %3207 = bitcast float %3200 to i32
  %3208 = sub nsw i32 2129859010, %3207
  %3209 = bitcast i32 %3208 to float
  %3210 = fmul fast float %3209, %3194
  %3211 = fadd fast float %3210, 1.000000e+00
  %3212 = fmul fast float %3195, 2.000000e+00
  %3213 = fsub fast float 3.000000e+00, %3212
  %3214 = fadd fast float %3212, 1.000000e+00
  %3215 = fsub fast float 2.000000e+00, %3195
  %3216 = bitcast float %3213 to i32
  %3217 = sub nsw i32 2129859010, %3216
  %3218 = bitcast i32 %3217 to float
  %3219 = fmul fast float %3218, %3215
  %3220 = fadd fast float %3219, -1.000000e+00
  %3221 = bitcast float %3214 to i32
  %3222 = sub nsw i32 2129859010, %3221
  %3223 = bitcast i32 %3222 to float
  %3224 = fmul fast float %3223, %3195
  %3225 = fadd fast float %3224, 1.000000e+00
  %3226 = fadd fast float %3206, %3196
  %3227 = fmul fast float %3226, %3178
  %3228 = fadd fast float %3220, %3197
  %3229 = fmul fast float %3228, %3179
  %3230 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %11, %dx.types.Handle %47, float %3227, float %3229, float undef, float undef, i32 0, i32 0, i32 undef, float %3183)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3231 = extractvalue %dx.types.ResRet.f32 %3230, 0
  %3232 = fmul fast float %3231, %3199
  %3233 = fadd fast float %3211, %3196
  %3234 = fmul fast float %3233, %3178
  %3235 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %11, %dx.types.Handle %47, float %3234, float %3229, float undef, float undef, i32 0, i32 0, i32 undef, float %3183)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3236 = extractvalue %dx.types.ResRet.f32 %3235, 0
  %3237 = fmul fast float %3236, %3200
  %3238 = fadd fast float %3225, %3197
  %3239 = fmul fast float %3238, %3179
  %3240 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %11, %dx.types.Handle %47, float %3227, float %3239, float undef, float undef, i32 0, i32 0, i32 undef, float %3183)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3241 = extractvalue %dx.types.ResRet.f32 %3240, 0
  %3242 = fmul fast float %3241, %3199
  %3243 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %11, %dx.types.Handle %47, float %3234, float %3239, float undef, float undef, i32 0, i32 0, i32 undef, float %3183)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3244 = extractvalue %dx.types.ResRet.f32 %3243, 0
  %3245 = fmul fast float %3244, %3200
  %3246 = fadd fast float %3245, %3242
  %3247 = fmul fast float %3246, %3214
  %3248 = fadd fast float %3237, %3232
  %3249 = fmul fast float %3248, %3213
  %3250 = fadd fast float %3249, %3247
  %3251 = fmul fast float %3250, 6.250000e-02
  br label %3337

; <label>:3252                                    ; preds = %3173
  %3253 = fmul fast float %162, 0x401921FB60000000
  %3254 = call float @dx.op.unary.f32(i32 13, float %3253)  ; Sin(value)
  %3255 = call float @dx.op.unary.f32(i32 12, float %3253)  ; Cos(value)
  %3256 = fsub fast float -0.000000e+00, %3254
  br label %3257

; <label>:3257                                    ; preds = %3306, %3252
  %3258 = phi float [ 0.000000e+00, %3252 ], [ %3301, %3306 ]
  %3259 = phi float [ 0.000000e+00, %3252 ], [ %3303, %3306 ]
  %3260 = phi i32 [ 0, %3252 ], [ %3307, %3306 ]
  %3261 = mul i32 %3260, 2
  %3262 = add i32 0, %3261
  %3263 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %3262
  %3264 = load float, float* %3263, align 4
  %3265 = mul i32 %3260, 2
  %3266 = add i32 1, %3265
  %3267 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %3266
  %3268 = load float, float* %3267, align 4
  %3269 = fmul fast float %3264, %3255
  %3270 = call float @dx.op.tertiary.f32(i32 46, float %3268, float %3256, float %3269)  ; FMad(a,b,c)
  %3271 = fmul fast float %3264, %3254
  %3272 = call float @dx.op.tertiary.f32(i32 46, float %3268, float %3255, float %3271)  ; FMad(a,b,c)
  %3273 = fmul fast float %3270, %3181
  %3274 = fmul fast float %3272, %3181
  %3275 = fadd fast float %3273, %2497
  %3276 = fadd fast float %3274, %2498
  %3277 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %11, %dx.types.Handle %46, float %3275, float %3276, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %3278 = extractvalue %dx.types.ResRet.f32 %3277, 0
  %3279 = extractvalue %dx.types.ResRet.f32 %3277, 1
  %3280 = extractvalue %dx.types.ResRet.f32 %3277, 2
  %3281 = extractvalue %dx.types.ResRet.f32 %3277, 3
  %3282 = getelementptr inbounds [4 x float], [4 x float]* %73, i32 0, i32 0
  store float %3278, float* %3282, align 4
  %3283 = getelementptr inbounds [4 x float], [4 x float]* %73, i32 0, i32 1
  store float %3279, float* %3283, align 4
  %3284 = getelementptr inbounds [4 x float], [4 x float]* %73, i32 0, i32 2
  store float %3280, float* %3284, align 4
  %3285 = getelementptr inbounds [4 x float], [4 x float]* %73, i32 0, i32 3
  store float %3281, float* %3285, align 4
  %3286 = fsub fast float %3278, %3183
  %3287 = fcmp fast olt float %3286, 0.000000e+00
  %3288 = select i1 %3287, float 0.000000e+00, float 1.000000e+00
  %3289 = fadd fast float %3288, %3258
  %3290 = fmul fast float %3288, %3286
  %3291 = fadd fast float %3290, %3259
  br label %3292

; <label>:3292                                    ; preds = %3292, %3257
  %3293 = phi i32 [ 1, %3257 ], [ %3304, %3292 ]
  %3294 = phi float [ %3291, %3257 ], [ %3303, %3292 ]
  %3295 = phi float [ %3289, %3257 ], [ %3301, %3292 ]
  %3296 = getelementptr [4 x float], [4 x float]* %73, i32 0, i32 %3293
  %3297 = load float, float* %3296, align 4, !tbaa !125, !noalias !115
  %3298 = fsub fast float %3297, %3183
  %3299 = fcmp fast olt float %3298, 0.000000e+00
  %3300 = select i1 %3299, float 0.000000e+00, float 1.000000e+00
  %3301 = fadd fast float %3300, %3295
  %3302 = fmul fast float %3300, %3298
  %3303 = fadd fast float %3302, %3294
  %3304 = add nuw nsw i32 %3293, 1
  %3305 = icmp eq i32 %3304, 4
  br i1 %3305, label %3306, label %3292, !llvm.loop !127

; <label>:3306                                    ; preds = %3292
  %3307 = add nuw nsw i32 %3260, 1
  %3308 = icmp eq i32 %3307, 8
  br i1 %3308, label %3309, label %3257, !llvm.loop !128

; <label>:3309                                    ; preds = %3306
  %3310 = fdiv fast float 1.000000e+00, %3301
  %3311 = fmul fast float %3310, %3303
  %3312 = fdiv fast float 1.000000e+00, %3183
  %3313 = fmul fast float %3311, %3312
  %3314 = call float @dx.op.unary.f32(i32 7, float %3313)  ; Saturate(value)
  %3315 = call float @dx.op.binary.f32(i32 35, float %3314, float 0.000000e+00)  ; FMax(a,b)
  %3316 = fmul fast float %3301, 3.125000e-02
  %3317 = call float @dx.op.unary.f32(i32 7, float %3316)  ; Saturate(value)
  %3318 = fmul fast float %3317, 2.000000e+00
  %3319 = fadd fast float %3318, -1.000000e+00
  %3320 = fcmp fast ogt float %3319, 0.000000e+00
  %3321 = fcmp fast olt float %3319, 0.000000e+00
  %3322 = zext i1 %3320 to i32
  %3323 = zext i1 %3321 to i32
  %3324 = sub nsw i32 %3322, %3323
  %3325 = sitofp i32 %3324 to float
  %3326 = fmul fast float %3325, %3319
  %3327 = fsub fast float 1.000000e+00, %3326
  %3328 = fmul fast float %3327, %3327
  %3329 = fmul fast float %3328, %3327
  %3330 = fsub fast float %3327, %3329
  %3331 = fmul fast float %3330, %3315
  %3332 = fsub fast float 1.000000e+00, %3329
  %3333 = fsub fast float %3332, %3331
  %3334 = fmul fast float %3325, 5.000000e-01
  %3335 = fmul fast float %3334, %3333
  %3336 = fsub fast float 5.000000e-01, %3335
  br label %3337

; <label>:3337                                    ; preds = %3309, %3185, %3170
  %3338 = phi float [ 1.000000e+00, %3170 ], [ %3251, %3185 ], [ %3336, %3309 ]
  %3339 = fcmp fast ogt float %2600, 0.000000e+00
  br i1 %3339, label %3340, label %3504, !dx.controlflow.hints !130

; <label>:3340                                    ; preds = %3337
  %3341 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %3342 = extractvalue %dx.types.CBufRet.f32 %3341, 0
  %3343 = fadd fast float %3342, %2490
  %3344 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %3345 = extractvalue %dx.types.CBufRet.f32 %3344, 2
  %3346 = extractvalue %dx.types.CBufRet.f32 %3344, 3
  %3347 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %3348 = extractvalue %dx.types.CBufRet.f32 %3347, 0
  %3349 = call float @dx.op.binary.f32(i32 35, float %3343, float 0.000000e+00)  ; FMax(a,b)
  %3350 = fadd fast float %3349, 0x3F10000000000000
  %3351 = fcmp fast oeq float %3348, 0.000000e+00
  br i1 %3351, label %3352, label %3419

; <label>:3352                                    ; preds = %3340
  %3353 = extractvalue %dx.types.CBufRet.f32 %3344, 1
  %3354 = extractvalue %dx.types.CBufRet.f32 %3344, 0
  %3355 = fmul fast float %3354, %2482
  %3356 = fmul fast float %3353, %2486
  %3357 = fadd fast float %3355, 5.000000e-01
  %3358 = call float @dx.op.unary.f32(i32 27, float %3357)  ; Round_ni(value)
  %3359 = fadd fast float %3356, 5.000000e-01
  %3360 = call float @dx.op.unary.f32(i32 27, float %3359)  ; Round_ni(value)
  %3361 = fsub fast float %3357, %3358
  %3362 = fsub fast float %3359, %3360
  %3363 = fadd fast float %3358, -5.000000e-01
  %3364 = fadd fast float %3360, -5.000000e-01
  %3365 = fmul fast float %3361, 2.000000e+00
  %3366 = fsub fast float 3.000000e+00, %3365
  %3367 = fadd fast float %3365, 1.000000e+00
  %3368 = fsub fast float 2.000000e+00, %3361
  %3369 = bitcast float %3366 to i32
  %3370 = sub nsw i32 2129859010, %3369
  %3371 = bitcast i32 %3370 to float
  %3372 = fmul fast float %3371, %3368
  %3373 = fadd fast float %3372, -1.000000e+00
  %3374 = bitcast float %3367 to i32
  %3375 = sub nsw i32 2129859010, %3374
  %3376 = bitcast i32 %3375 to float
  %3377 = fmul fast float %3376, %3361
  %3378 = fadd fast float %3377, 1.000000e+00
  %3379 = fmul fast float %3362, 2.000000e+00
  %3380 = fsub fast float 3.000000e+00, %3379
  %3381 = fadd fast float %3379, 1.000000e+00
  %3382 = fsub fast float 2.000000e+00, %3362
  %3383 = bitcast float %3380 to i32
  %3384 = sub nsw i32 2129859010, %3383
  %3385 = bitcast i32 %3384 to float
  %3386 = fmul fast float %3385, %3382
  %3387 = fadd fast float %3386, -1.000000e+00
  %3388 = bitcast float %3381 to i32
  %3389 = sub nsw i32 2129859010, %3388
  %3390 = bitcast i32 %3389 to float
  %3391 = fmul fast float %3390, %3362
  %3392 = fadd fast float %3391, 1.000000e+00
  %3393 = fadd fast float %3373, %3363
  %3394 = fmul fast float %3393, %3345
  %3395 = fadd fast float %3387, %3364
  %3396 = fmul fast float %3395, %3346
  %3397 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %12, %dx.types.Handle %47, float %3394, float %3396, float undef, float undef, i32 0, i32 0, i32 undef, float %3350)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3398 = extractvalue %dx.types.ResRet.f32 %3397, 0
  %3399 = fmul fast float %3398, %3366
  %3400 = fadd fast float %3378, %3363
  %3401 = fmul fast float %3400, %3345
  %3402 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %12, %dx.types.Handle %47, float %3401, float %3396, float undef, float undef, i32 0, i32 0, i32 undef, float %3350)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3403 = extractvalue %dx.types.ResRet.f32 %3402, 0
  %3404 = fmul fast float %3403, %3367
  %3405 = fadd fast float %3392, %3364
  %3406 = fmul fast float %3405, %3346
  %3407 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %12, %dx.types.Handle %47, float %3394, float %3406, float undef, float undef, i32 0, i32 0, i32 undef, float %3350)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3408 = extractvalue %dx.types.ResRet.f32 %3407, 0
  %3409 = fmul fast float %3408, %3366
  %3410 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %12, %dx.types.Handle %47, float %3401, float %3406, float undef, float undef, i32 0, i32 0, i32 undef, float %3350)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3411 = extractvalue %dx.types.ResRet.f32 %3410, 0
  %3412 = fmul fast float %3411, %3367
  %3413 = fadd fast float %3412, %3409
  %3414 = fmul fast float %3413, %3381
  %3415 = fadd fast float %3404, %3399
  %3416 = fmul fast float %3415, %3380
  %3417 = fadd fast float %3416, %3414
  %3418 = fmul fast float %3417, 6.250000e-02
  br label %3504

; <label>:3419                                    ; preds = %3340
  %3420 = fmul fast float %162, 0x401921FB60000000
  %3421 = call float @dx.op.unary.f32(i32 13, float %3420)  ; Sin(value)
  %3422 = call float @dx.op.unary.f32(i32 12, float %3420)  ; Cos(value)
  %3423 = fsub fast float -0.000000e+00, %3421
  br label %3424

; <label>:3424                                    ; preds = %3473, %3419
  %3425 = phi float [ 0.000000e+00, %3419 ], [ %3468, %3473 ]
  %3426 = phi float [ 0.000000e+00, %3419 ], [ %3470, %3473 ]
  %3427 = phi i32 [ 0, %3419 ], [ %3474, %3473 ]
  %3428 = mul i32 %3427, 2
  %3429 = add i32 0, %3428
  %3430 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %3429
  %3431 = load float, float* %3430, align 4
  %3432 = mul i32 %3427, 2
  %3433 = add i32 1, %3432
  %3434 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %3433
  %3435 = load float, float* %3434, align 4
  %3436 = fmul fast float %3431, %3422
  %3437 = call float @dx.op.tertiary.f32(i32 46, float %3435, float %3423, float %3436)  ; FMad(a,b,c)
  %3438 = fmul fast float %3431, %3421
  %3439 = call float @dx.op.tertiary.f32(i32 46, float %3435, float %3422, float %3438)  ; FMad(a,b,c)
  %3440 = fmul fast float %3437, %3348
  %3441 = fmul fast float %3439, %3348
  %3442 = fadd fast float %3440, %2482
  %3443 = fadd fast float %3441, %2486
  %3444 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %12, %dx.types.Handle %46, float %3442, float %3443, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %3445 = extractvalue %dx.types.ResRet.f32 %3444, 0
  %3446 = extractvalue %dx.types.ResRet.f32 %3444, 1
  %3447 = extractvalue %dx.types.ResRet.f32 %3444, 2
  %3448 = extractvalue %dx.types.ResRet.f32 %3444, 3
  %3449 = getelementptr inbounds [4 x float], [4 x float]* %72, i32 0, i32 0
  store float %3445, float* %3449, align 4
  %3450 = getelementptr inbounds [4 x float], [4 x float]* %72, i32 0, i32 1
  store float %3446, float* %3450, align 4
  %3451 = getelementptr inbounds [4 x float], [4 x float]* %72, i32 0, i32 2
  store float %3447, float* %3451, align 4
  %3452 = getelementptr inbounds [4 x float], [4 x float]* %72, i32 0, i32 3
  store float %3448, float* %3452, align 4
  %3453 = fsub fast float %3445, %3350
  %3454 = fcmp fast olt float %3453, 0.000000e+00
  %3455 = select i1 %3454, float 0.000000e+00, float 1.000000e+00
  %3456 = fadd fast float %3455, %3425
  %3457 = fmul fast float %3455, %3453
  %3458 = fadd fast float %3457, %3426
  br label %3459

; <label>:3459                                    ; preds = %3459, %3424
  %3460 = phi i32 [ 1, %3424 ], [ %3471, %3459 ]
  %3461 = phi float [ %3458, %3424 ], [ %3470, %3459 ]
  %3462 = phi float [ %3456, %3424 ], [ %3468, %3459 ]
  %3463 = getelementptr [4 x float], [4 x float]* %72, i32 0, i32 %3460
  %3464 = load float, float* %3463, align 4, !tbaa !125, !noalias !115
  %3465 = fsub fast float %3464, %3350
  %3466 = fcmp fast olt float %3465, 0.000000e+00
  %3467 = select i1 %3466, float 0.000000e+00, float 1.000000e+00
  %3468 = fadd fast float %3467, %3462
  %3469 = fmul fast float %3467, %3465
  %3470 = fadd fast float %3469, %3461
  %3471 = add nuw nsw i32 %3460, 1
  %3472 = icmp eq i32 %3471, 4
  br i1 %3472, label %3473, label %3459, !llvm.loop !127

; <label>:3473                                    ; preds = %3459
  %3474 = add nuw nsw i32 %3427, 1
  %3475 = icmp eq i32 %3474, 8
  br i1 %3475, label %3476, label %3424, !llvm.loop !128

; <label>:3476                                    ; preds = %3473
  %3477 = fdiv fast float 1.000000e+00, %3468
  %3478 = fmul fast float %3477, %3470
  %3479 = fdiv fast float 1.000000e+00, %3350
  %3480 = fmul fast float %3478, %3479
  %3481 = call float @dx.op.unary.f32(i32 7, float %3480)  ; Saturate(value)
  %3482 = call float @dx.op.binary.f32(i32 35, float %3481, float 0.000000e+00)  ; FMax(a,b)
  %3483 = fmul fast float %3468, 3.125000e-02
  %3484 = call float @dx.op.unary.f32(i32 7, float %3483)  ; Saturate(value)
  %3485 = fmul fast float %3484, 2.000000e+00
  %3486 = fadd fast float %3485, -1.000000e+00
  %3487 = fcmp fast ogt float %3486, 0.000000e+00
  %3488 = fcmp fast olt float %3486, 0.000000e+00
  %3489 = zext i1 %3487 to i32
  %3490 = zext i1 %3488 to i32
  %3491 = sub nsw i32 %3489, %3490
  %3492 = sitofp i32 %3491 to float
  %3493 = fmul fast float %3492, %3486
  %3494 = fsub fast float 1.000000e+00, %3493
  %3495 = fmul fast float %3494, %3494
  %3496 = fmul fast float %3495, %3494
  %3497 = fsub fast float %3494, %3496
  %3498 = fmul fast float %3497, %3482
  %3499 = fsub fast float 1.000000e+00, %3496
  %3500 = fsub fast float %3499, %3498
  %3501 = fmul fast float %3492, 5.000000e-01
  %3502 = fmul fast float %3501, %3500
  %3503 = fsub fast float 5.000000e-01, %3502
  br label %3504

; <label>:3504                                    ; preds = %3476, %3352, %3337
  %3505 = phi float [ 1.000000e+00, %3337 ], [ %3418, %3352 ], [ %3503, %3476 ]
  %3506 = fsub fast float %3171, %3006
  %3507 = fmul fast float %3506, %2544
  %3508 = fadd fast float %3507, %3006
  %3509 = fsub fast float %3338, %3508
  %3510 = fmul fast float %3509, %2574
  %3511 = fadd fast float %3510, %3508
  %3512 = fsub fast float %3505, %3511
  %3513 = fmul fast float %3512, %2600
  %3514 = fadd fast float %3513, %3511
  %3515 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %3516 = extractvalue %dx.types.CBufRet.f32 %3515, 2
  %3517 = fcmp fast ogt float %3516, 0.000000e+00
  br i1 %3517, label %3518, label %3558, !dx.controlflow.hints !131

; <label>:3518                                    ; preds = %3504
  %3519 = fcmp fast ugt float %3516, 0.000000e+00
  br i1 %3519, label %3520, label %3555

; <label>:3520                                    ; preds = %3518
  %3521 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %3522 = extractvalue %dx.types.CBufRet.f32 %3521, 0
  %3523 = extractvalue %dx.types.CBufRet.f32 %3521, 1
  %3524 = extractvalue %dx.types.CBufRet.f32 %3521, 2
  %3525 = extractvalue %dx.types.CBufRet.f32 %3521, 3
  %3526 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %3527 = extractvalue %dx.types.CBufRet.f32 %3526, 0
  %3528 = extractvalue %dx.types.CBufRet.f32 %3526, 1
  %3529 = extractvalue %dx.types.CBufRet.f32 %3526, 2
  %3530 = extractvalue %dx.types.CBufRet.f32 %3526, 3
  %3531 = extractvalue %dx.types.CBufRet.f32 %3515, 0
  %3532 = extractvalue %dx.types.CBufRet.f32 %3515, 1
  %3533 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %3534 = extractvalue %dx.types.CBufRet.f32 %3533, 0
  %3535 = extractvalue %dx.types.CBufRet.f32 %3533, 1
  %3536 = extractvalue %dx.types.CBufRet.f32 %3533, 2
  %3537 = fadd fast float %3534, %2459
  %3538 = fadd fast float %3535, %2460
  %3539 = fadd fast float %3536, %2461
  %3540 = fmul fast float %3537, %3522
  %3541 = call float @dx.op.tertiary.f32(i32 46, float %3523, float %3538, float %3540)  ; FMad(a,b,c)
  %3542 = call float @dx.op.tertiary.f32(i32 46, float %3524, float %3539, float %3541)  ; FMad(a,b,c)
  %3543 = fadd fast float %3542, %3525
  %3544 = fmul fast float %3537, %3527
  %3545 = call float @dx.op.tertiary.f32(i32 46, float %3528, float %3538, float %3544)  ; FMad(a,b,c)
  %3546 = call float @dx.op.tertiary.f32(i32 46, float %3529, float %3539, float %3545)  ; FMad(a,b,c)
  %3547 = fadd fast float %3546, %3530
  %3548 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %7, %dx.types.Handle %42, float %3543, float %3547, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3549 = extractvalue %dx.types.ResRet.f32 %3548, 0
  %3550 = fmul fast float %3549, %3532
  %3551 = fadd fast float %3550, %3531
  %3552 = call float @dx.op.unary.f32(i32 7, float %3551)  ; Saturate(value)
  %3553 = fmul fast float %3552, %3516
  %3554 = fsub fast float 1.000000e+00, %3553
  br label %3555

; <label>:3555                                    ; preds = %3520, %3518
  %3556 = phi float [ %3554, %3520 ], [ 1.000000e+00, %3518 ]
  %3557 = fmul fast float %3556, %3514
  br label %3558

; <label>:3558                                    ; preds = %3555, %3504, %2439
  %3559 = phi float [ 1.000000e+00, %2439 ], [ %3557, %3555 ], [ %3514, %3504 ]
  %3560 = call float @dx.op.binary.f32(i32 36, float %3559, float %3559)  ; FMin(a,b)
  %3561 = call float @dx.op.binary.f32(i32 36, float %3559, float %3560)  ; FMin(a,b)
  %3562 = fcmp fast ogt float %3561, 0.000000e+00
  br i1 %3562, label %3563, label %3728, !dx.controlflow.hints !132

; <label>:3563                                    ; preds = %3558
  %3564 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %3565 = extractvalue %dx.types.CBufRet.f32 %3564, 0
  %3566 = extractvalue %dx.types.CBufRet.f32 %3564, 1
  %3567 = extractvalue %dx.types.CBufRet.f32 %3564, 2
  %3568 = extractvalue %dx.types.CBufRet.f32 %3564, 3
  %3569 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %3570 = extractvalue %dx.types.CBufRet.f32 %3569, 0
  %3571 = extractvalue %dx.types.CBufRet.f32 %3569, 1
  %3572 = extractvalue %dx.types.CBufRet.f32 %3569, 2
  %3573 = extractvalue %dx.types.CBufRet.f32 %3569, 3
  %3574 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %3575 = extractvalue %dx.types.CBufRet.f32 %3574, 0
  %3576 = extractvalue %dx.types.CBufRet.f32 %3574, 1
  %3577 = extractvalue %dx.types.CBufRet.f32 %3574, 2
  %3578 = extractvalue %dx.types.CBufRet.f32 %3574, 3
  %3579 = fmul fast float %3565, %2459
  %3580 = call float @dx.op.tertiary.f32(i32 46, float %2460, float %3566, float %3579)  ; FMad(a,b,c)
  %3581 = call float @dx.op.tertiary.f32(i32 46, float %2461, float %3567, float %3580)  ; FMad(a,b,c)
  %3582 = fadd fast float %3581, %3568
  %3583 = fmul fast float %3570, %2459
  %3584 = call float @dx.op.tertiary.f32(i32 46, float %2460, float %3571, float %3583)  ; FMad(a,b,c)
  %3585 = call float @dx.op.tertiary.f32(i32 46, float %2461, float %3572, float %3584)  ; FMad(a,b,c)
  %3586 = fadd fast float %3585, %3573
  %3587 = fmul fast float %3575, %2459
  %3588 = call float @dx.op.tertiary.f32(i32 46, float %2460, float %3576, float %3587)  ; FMad(a,b,c)
  %3589 = call float @dx.op.tertiary.f32(i32 46, float %2461, float %3577, float %3588)  ; FMad(a,b,c)
  %3590 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %3591 = extractvalue %dx.types.CBufRet.f32 %3590, 0
  %3592 = extractvalue %dx.types.CBufRet.f32 %3590, 1
  %3593 = extractvalue %dx.types.CBufRet.f32 %3590, 3
  %3594 = fmul fast float %3593, %3582
  %3595 = fmul fast float %3593, %3586
  %3596 = fadd fast float %3594, %3591
  %3597 = fadd fast float %3595, %3592
  %3598 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %3599 = extractvalue %dx.types.CBufRet.f32 %3598, 0
  %3600 = extractvalue %dx.types.CBufRet.f32 %3598, 1
  %3601 = fsub fast float %3596, %3599
  %3602 = fsub fast float %3597, %3600
  %3603 = fcmp fast olt float %3601, 0.000000e+00
  %3604 = fcmp fast olt float %3602, 0.000000e+00
  %3605 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %3606 = extractvalue %dx.types.CBufRet.f32 %3605, 0
  %3607 = extractvalue %dx.types.CBufRet.f32 %3605, 1
  %3608 = extractvalue %dx.types.CBufRet.f32 %3605, 2
  %3609 = extractvalue %dx.types.CBufRet.f32 %3605, 3
  %3610 = select i1 %3603, float %3606, float %3608
  %3611 = select i1 %3604, float %3607, float %3609
  %3612 = fmul fast float %3610, %3601
  %3613 = fmul fast float %3611, %3602
  %3614 = call float @dx.op.unary.f32(i32 6, float %3612)  ; FAbs(value)
  %3615 = call float @dx.op.unary.f32(i32 6, float %3613)  ; FAbs(value)
  %3616 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %3617 = extractvalue %dx.types.CBufRet.f32 %3616, 0
  %3618 = call float @dx.op.binary.f32(i32 35, float %3614, float %3615)  ; FMax(a,b)
  %3619 = fsub fast float %3617, %3618
  %3620 = call float @dx.op.unary.f32(i32 7, float %3619)  ; Saturate(value)
  %3621 = fcmp fast ogt float %3620, 0.000000e+00
  br i1 %3621, label %3622, label %3663, !dx.controlflow.hints !133

; <label>:3622                                    ; preds = %3563
  %3623 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %45, float %3596, float %3597, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3624 = extractvalue %dx.types.ResRet.f32 %3623, 1
  %3625 = fcmp fast ogt float %3624, 0.000000e+00
  br i1 %3625, label %3626, label %3659

; <label>:3626                                    ; preds = %3622
  %3627 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %45, float %3596, float %3597, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3628 = extractvalue %dx.types.ResRet.f32 %3627, 0
  %3629 = extractvalue %dx.types.ResRet.f32 %3627, 1
  %3630 = extractvalue %dx.types.ResRet.f32 %3627, 2
  %3631 = extractvalue %dx.types.ResRet.f32 %3627, 3
  %3632 = fsub fast float 1.000000e+00, %3578
  %3633 = fsub fast float %3632, %3589
  %3634 = fmul fast float %3633, 0x400921FB60000000
  %3635 = fadd fast float %3634, 0x3FF921FB60000000
  %3636 = call float @dx.op.unary.f32(i32 13, float %3635)  ; Sin(value)
  %3637 = fadd fast float %3636, -1.000000e+00
  %3638 = fmul fast float %3637, 0x3FD45F3060000000
  %3639 = fmul fast float %3633, 0x401921FB60000000
  %3640 = fadd fast float %3639, 0x400921FB60000000
  %3641 = call float @dx.op.unary.f32(i32 13, float %3640)  ; Sin(value)
  %3642 = fadd fast float %3641, 0x3E7777A5C0000000
  %3643 = fmul fast float %3642, 0x3FC45F3060000000
  %3644 = fmul fast float %3633, 0x4022D97C80000000
  %3645 = fadd fast float %3644, 0x4012D97C80000000
  %3646 = call float @dx.op.unary.f32(i32 13, float %3645)  ; Sin(value)
  %3647 = fadd fast float %3646, 1.000000e+00
  %3648 = fmul fast float %3647, 0x3FBB2995E0000000
  %3649 = fmul fast float %3633, 0x402921FB60000000
  %3650 = fadd fast float %3649, 0x401921FB60000000
  %3651 = call float @dx.op.unary.f32(i32 13, float %3650)  ; Sin(value)
  %3652 = fadd fast float %3651, 0xBE8777A5C0000000
  %3653 = fmul fast float %3652, 0x3FB45F3060000000
  %3654 = call float @dx.op.dot4.f32(i32 56, float %3628, float %3629, float %3630, float %3631, float %3638, float %3643, float %3648, float %3653)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3655 = fmul fast float %3654, 0xBFF7154760000000
  %3656 = call float @dx.op.unary.f32(i32 21, float %3655)  ; Exp(value)
  %3657 = call float @dx.op.unary.f32(i32 7, float %3656)  ; Saturate(value)
  %3658 = fadd float %3657, -1.000000e+00
  br label %3659

; <label>:3659                                    ; preds = %3626, %3622
  %3660 = phi float [ %3658, %3626 ], [ 0.000000e+00, %3622 ]
  %3661 = fmul fast float %3660, %3620
  %3662 = fadd fast float %3661, 1.000000e+00
  br label %3663

; <label>:3663                                    ; preds = %3659, %3563
  %3664 = phi float [ %3662, %3659 ], [ 1.000000e+00, %3563 ]
  %3665 = fmul fast float %3664, %3559
  %3666 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %3667 = extractvalue %dx.types.CBufRet.f32 %3666, 0
  %3668 = extractvalue %dx.types.CBufRet.f32 %3666, 1
  %3669 = extractvalue %dx.types.CBufRet.f32 %3666, 2
  %3670 = fadd fast float %3667, %326
  %3671 = fadd fast float %3668, %327
  %3672 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %3673 = extractvalue %dx.types.CBufRet.f32 %3672, 1
  %3674 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %3675 = extractvalue %dx.types.CBufRet.f32 %3674, 0
  %3676 = extractvalue %dx.types.CBufRet.f32 %3674, 1
  %3677 = extractvalue %dx.types.CBufRet.f32 %3674, 2
  %3678 = fsub fast float -0.000000e+00, %3670
  %3679 = fsub fast float -0.000000e+00, %3671
  %3680 = fsub fast float %460, %3669
  %3681 = fadd fast float %3680, %3673
  %3682 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %3678, float %3679, float %3681)  ; Dot3(ax,ay,az,bx,by,bz)
  %3683 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %3675, float %3676, float %3677)  ; Dot3(ax,ay,az,bx,by,bz)
  %3684 = fdiv fast float 1.000000e+00, %3683
  %3685 = fmul fast float %3684, %3682
  %3686 = fmul fast float %3675, %3685
  %3687 = fmul fast float %3676, %3685
  %3688 = fadd fast float %3686, %3670
  %3689 = fadd fast float %3687, %3671
  %3690 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %3691 = extractvalue %dx.types.CBufRet.f32 %3690, 0
  %3692 = extractvalue %dx.types.CBufRet.f32 %3690, 1
  %3693 = fsub fast float %3688, %3691
  %3694 = fsub fast float %3689, %3692
  %3695 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %3696 = extractvalue %dx.types.CBufRet.f32 %3695, 2
  %3697 = extractvalue %dx.types.CBufRet.f32 %3695, 3
  %3698 = fmul fast float %3693, %3696
  %3699 = fmul fast float %3694, %3697
  %3700 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %3701 = extractvalue %dx.types.CBufRet.i32 %3700, 3
  %3702 = icmp eq i32 %3701, 0
  br i1 %3702, label %3708, label %3703

; <label>:3703                                    ; preds = %3663
  %3704 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %44, float %3698, float %3699, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3705 = extractvalue %dx.types.ResRet.f32 %3704, 0
  %3706 = extractvalue %dx.types.ResRet.f32 %3704, 1
  %3707 = extractvalue %dx.types.ResRet.f32 %3704, 2
  br label %3713

; <label>:3708                                    ; preds = %3663
  %3709 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %45, float %3698, float %3699, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3710 = extractvalue %dx.types.ResRet.f32 %3709, 0
  %3711 = extractvalue %dx.types.ResRet.f32 %3709, 1
  %3712 = extractvalue %dx.types.ResRet.f32 %3709, 2
  br label %3713

; <label>:3713                                    ; preds = %3708, %3703
  %3714 = phi float [ %3705, %3703 ], [ %3710, %3708 ]
  %3715 = phi float [ %3706, %3703 ], [ %3711, %3708 ]
  %3716 = phi float [ %3707, %3703 ], [ %3712, %3708 ]
  %3717 = extractvalue %dx.types.CBufRet.f32 %3672, 2
  %3718 = fmul fast float %3717, %3714
  %3719 = extractvalue %dx.types.CBufRet.f32 %3672, 0
  %3720 = fsub fast float %3685, %3719
  %3721 = fsub fast float %3720, %3718
  %3722 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3721)  ; FMax(a,b)
  %3723 = fmul fast float %3722, %3715
  %3724 = call float @dx.op.binary.f32(i32 36, float %3716, float %3723)  ; FMin(a,b)
  %3725 = fmul fast float %3724, 0xBFF7154760000000
  %3726 = call float @dx.op.unary.f32(i32 21, float %3725)  ; Exp(value)
  %3727 = fmul fast float %3665, %3726
  br label %3728

; <label>:3728                                    ; preds = %3713, %3558
  %3729 = phi float [ %3727, %3713 ], [ %3559, %3558 ]
  %3730 = call float @dx.op.binary.f32(i32 36, float %3729, float %3729)  ; FMin(a,b)
  %3731 = call float @dx.op.binary.f32(i32 36, float %3729, float %3730)  ; FMin(a,b)
  %3732 = fcmp fast ogt float %3731, 0.000000e+00
  br i1 %3732, label %3733, label %4211, !dx.controlflow.hints !134

; <label>:3733                                    ; preds = %3728
  %3734 = fmul fast float %3729, %2451
  %3735 = fmul fast float %3729, %2452
  %3736 = fmul fast float %3729, %2453
  %3737 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3738 = extractvalue %dx.types.CBufRet.i32 %3737, 0
  %3739 = and i32 %3738, 64
  %3740 = icmp ne i32 %3739, 0
  %3741 = fcmp fast ule float %328, 0.000000e+00
  %3742 = fmul fast float %2440, 5.120000e+02
  %3743 = fmul fast float %2441, 5.120000e+02
  %3744 = fmul fast float %2442, 5.120000e+02
  %3745 = fadd fast float %3744, %328
  %3746 = fsub fast float -0.000000e+00, %3745
  %3747 = select i1 %3741, float %3745, float %3746
  %3748 = fsub fast float %3747, %328
  %3749 = call float @dx.op.dot3.f32(i32 55, float %3742, float %3743, float %3748, float %3742, float %3743, float %3748)  ; Dot3(ax,ay,az,bx,by,bz)
  %3750 = call float @dx.op.unary.f32(i32 25, float %3749)  ; Rsqrt(value)
  %3751 = fmul fast float %3750, %3742
  %3752 = fmul fast float %3750, %3743
  %3753 = fmul fast float %3750, %3748
  %3754 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %460)  ; Dot3(ax,ay,az,bx,by,bz)
  %3755 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %3751, float %3752, float %3753)  ; Dot3(ax,ay,az,bx,by,bz)
  %3756 = fdiv fast float 1.000000e+00, %3755
  %3757 = fmul fast float %3756, %3754
  %3758 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %328, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %3759 = fcmp fast ogt float %3758, 0.000000e+00
  %3760 = fcmp fast olt float %3758, 0.000000e+00
  %3761 = zext i1 %3759 to i32
  %3762 = zext i1 %3760 to i32
  %3763 = sub nsw i32 %3761, %3762
  %3764 = sitofp i32 %3763 to float
  %3765 = call float @dx.op.dot3.f32(i32 55, float %3742, float %3743, float %3747, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %3766 = fcmp fast ogt float %3765, 0.000000e+00
  %3767 = fcmp fast olt float %3765, 0.000000e+00
  %3768 = zext i1 %3766 to i32
  %3769 = zext i1 %3767 to i32
  %3770 = sub nsw i32 %3768, %3769
  %3771 = sitofp i32 %3770 to float
  %3772 = fcmp fast une float %3764, %3771
  br i1 %3772, label %3773, label %3783

; <label>:3773                                    ; preds = %3733
  %3774 = fmul fast float %3757, %3753
  %3775 = fmul fast float %3757, %3752
  %3776 = fmul fast float %3757, %3751
  %3777 = fmul fast float %3776, %3776
  %3778 = fmul fast float %3775, %3775
  %3779 = fadd fast float %3777, %3778
  %3780 = fmul fast float %3774, %3774
  %3781 = fadd fast float %3779, %3780
  %3782 = call float @dx.op.unary.f32(i32 24, float %3781)  ; Sqrt(value)
  br label %3793

; <label>:3783                                    ; preds = %3733
  %3784 = icmp slt i32 %3763, 0
  br i1 %3784, label %3785, label %3793

; <label>:3785                                    ; preds = %3783
  %3786 = fsub fast float %328, %3747
  %3787 = fmul fast float %3742, %3742
  %3788 = fmul fast float %3743, %3743
  %3789 = fadd fast float %3787, %3788
  %3790 = fmul fast float %3786, %3786
  %3791 = fadd fast float %3789, %3790
  %3792 = call float @dx.op.unary.f32(i32 24, float %3791)  ; Sqrt(value)
  br label %3793

; <label>:3793                                    ; preds = %3785, %3783, %3773
  %3794 = phi float [ %3782, %3773 ], [ %3792, %3785 ], [ 0.000000e+00, %3783 ]
  %3795 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 348)  ; CBufferLoadLegacy(handle,regIndex)
  %3796 = extractvalue %dx.types.CBufRet.i32 %3795, 1
  %3797 = icmp ne i32 %3796, 0
  %3798 = and i1 %3741, %3797
  %3799 = call float @dx.op.dot3.f32(i32 55, float %3751, float %3752, float %3753, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %3800 = fmul fast float %3799, %3799
  %3801 = fsub fast float 1.000000e+00, %3800
  %3802 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3803 = extractvalue %dx.types.CBufRet.f32 %3802, 0
  %3804 = extractvalue %dx.types.CBufRet.f32 %3802, 1
  %3805 = extractvalue %dx.types.CBufRet.f32 %3802, 2
  %3806 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3807 = extractvalue %dx.types.CBufRet.f32 %3806, 0
  %3808 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3809 = extractvalue %dx.types.CBufRet.f32 %3808, 0
  %3810 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3811 = extractvalue %dx.types.CBufRet.f32 %3810, 0
  %3812 = extractvalue %dx.types.CBufRet.f32 %3806, 1
  %3813 = extractvalue %dx.types.CBufRet.f32 %3808, 1
  %3814 = extractvalue %dx.types.CBufRet.f32 %3810, 1
  %3815 = extractvalue %dx.types.CBufRet.f32 %3806, 3
  %3816 = extractvalue %dx.types.CBufRet.f32 %3808, 3
  %3817 = extractvalue %dx.types.CBufRet.f32 %3810, 3
  %3818 = fadd fast float %3803, %326
  %3819 = fadd fast float %3804, %327
  %3820 = fadd fast float %3805, %328
  %3821 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 346)  ; CBufferLoadLegacy(handle,regIndex)
  %3822 = extractvalue %dx.types.CBufRet.f32 %3821, 0
  %3823 = extractvalue %dx.types.CBufRet.f32 %3821, 1
  %3824 = extractvalue %dx.types.CBufRet.f32 %3821, 2
  %3825 = extractvalue %dx.types.CBufRet.f32 %3821, 3
  br i1 %3798, label %3826, label %4019

; <label>:3826                                    ; preds = %3793
  %3827 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 349)  ; CBufferLoadLegacy(handle,regIndex)
  %3828 = extractvalue %dx.types.CBufRet.f32 %3827, 0
  %3829 = fmul fast float %3828, %3828
  %3830 = fmul fast float %3829, %3801
  %3831 = fsub fast float 1.000000e+00, %3830
  %3832 = fcmp fast oge float %3831, 0.000000e+00
  %3833 = fmul fast float %3828, %3751
  %3834 = fmul fast float %3828, %3752
  %3835 = fmul fast float %3828, %3753
  %3836 = call float @dx.op.unary.f32(i32 24, float %3831)  ; Sqrt(value)
  %3837 = fmul fast float %3828, %3799
  %3838 = fsub fast float -0.000000e+00, %3836
  %3839 = fsub fast float %3838, %3837
  %3840 = fadd fast float %3839, %3835
  %3841 = select i1 %3832, float %3833, float 0.000000e+00
  %3842 = select i1 %3832, float %3834, float 0.000000e+00
  %3843 = select i1 %3832, float %3840, float 0.000000e+00
  %3844 = fmul fast float %3841, %3794
  %3845 = fmul fast float %3842, %3794
  %3846 = fmul fast float %3843, %3794
  %3847 = fadd fast float %3818, %3844
  %3848 = fadd fast float %3847, %3815
  %3849 = fadd fast float %3819, %3845
  %3850 = fadd fast float %3849, %3816
  %3851 = fadd fast float %3820, %3846
  %3852 = fadd fast float %3851, %3817
  %3853 = fmul fast float %3848, %3807
  %3854 = call float @dx.op.tertiary.f32(i32 46, float %3850, float %3809, float %3853)  ; FMad(a,b,c)
  %3855 = call float @dx.op.tertiary.f32(i32 46, float %3852, float %3811, float %3854)  ; FMad(a,b,c)
  %3856 = fmul fast float %3848, %3812
  %3857 = call float @dx.op.tertiary.f32(i32 46, float %3850, float %3813, float %3856)  ; FMad(a,b,c)
  %3858 = call float @dx.op.tertiary.f32(i32 46, float %3852, float %3814, float %3857)  ; FMad(a,b,c)
  %3859 = fsub fast float %3855, %3815
  %3860 = fsub fast float %3859, %3822
  %3861 = fadd fast float %3860, %3824
  %3862 = fsub fast float %3858, %3816
  %3863 = fsub fast float %3862, %3823
  %3864 = fadd fast float %3863, %3824
  %3865 = fmul fast float %3861, %3825
  %3866 = fmul fast float %3864, %3825
  %3867 = call float @dx.op.unary.f32(i32 7, float %3865)  ; Saturate(value)
  %3868 = call float @dx.op.unary.f32(i32 7, float %3866)  ; Saturate(value)
  %3869 = fsub fast float 1.000000e+00, %3867
  %3870 = fsub fast float 1.000000e+00, %3868
  %3871 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %45, float %3869, float %3870, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3872 = extractvalue %dx.types.ResRet.f32 %3871, 0
  %3873 = fmul fast float %3872, 0x3FBC5ABC00000000
  %3874 = extractvalue %dx.types.CBufRet.f32 %3827, 1
  %3875 = fmul fast float %3874, %3874
  %3876 = fmul fast float %3875, %3801
  %3877 = fsub fast float 1.000000e+00, %3876
  %3878 = fcmp fast oge float %3877, 0.000000e+00
  %3879 = fmul fast float %3874, %3751
  %3880 = fmul fast float %3874, %3752
  %3881 = fmul fast float %3874, %3753
  %3882 = call float @dx.op.unary.f32(i32 24, float %3877)  ; Sqrt(value)
  %3883 = fmul fast float %3874, %3799
  %3884 = fsub fast float -0.000000e+00, %3882
  %3885 = fsub fast float %3884, %3883
  %3886 = fadd fast float %3885, %3881
  %3887 = select i1 %3878, float %3879, float 0.000000e+00
  %3888 = select i1 %3878, float %3880, float 0.000000e+00
  %3889 = select i1 %3878, float %3886, float 0.000000e+00
  %3890 = fmul fast float %3887, %3794
  %3891 = fmul fast float %3888, %3794
  %3892 = fmul fast float %3889, %3794
  %3893 = fadd fast float %3818, %3890
  %3894 = fadd fast float %3893, %3815
  %3895 = fadd fast float %3819, %3891
  %3896 = fadd fast float %3895, %3816
  %3897 = fadd fast float %3820, %3892
  %3898 = fadd fast float %3897, %3817
  %3899 = fmul fast float %3894, %3807
  %3900 = call float @dx.op.tertiary.f32(i32 46, float %3896, float %3809, float %3899)  ; FMad(a,b,c)
  %3901 = call float @dx.op.tertiary.f32(i32 46, float %3898, float %3811, float %3900)  ; FMad(a,b,c)
  %3902 = fmul fast float %3894, %3812
  %3903 = call float @dx.op.tertiary.f32(i32 46, float %3896, float %3813, float %3902)  ; FMad(a,b,c)
  %3904 = call float @dx.op.tertiary.f32(i32 46, float %3898, float %3814, float %3903)  ; FMad(a,b,c)
  %3905 = fsub fast float %3901, %3815
  %3906 = fsub fast float %3905, %3822
  %3907 = fadd fast float %3906, %3824
  %3908 = fsub fast float %3904, %3816
  %3909 = fsub fast float %3908, %3823
  %3910 = fadd fast float %3909, %3824
  %3911 = fmul fast float %3907, %3825
  %3912 = fmul fast float %3910, %3825
  %3913 = call float @dx.op.unary.f32(i32 7, float %3911)  ; Saturate(value)
  %3914 = call float @dx.op.unary.f32(i32 7, float %3912)  ; Saturate(value)
  %3915 = fsub fast float 1.000000e+00, %3913
  %3916 = fsub fast float 1.000000e+00, %3914
  %3917 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %45, float %3915, float %3916, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3918 = extractvalue %dx.types.ResRet.f32 %3917, 0
  %3919 = fmul fast float %3918, 0x3F9E4BBD60000000
  %3920 = extractvalue %dx.types.CBufRet.f32 %3827, 2
  %3921 = fmul fast float %3920, %3920
  %3922 = fmul fast float %3921, %3801
  %3923 = fsub fast float 1.000000e+00, %3922
  %3924 = fcmp fast oge float %3923, 0.000000e+00
  %3925 = fmul fast float %3920, %3751
  %3926 = fmul fast float %3920, %3752
  %3927 = fmul fast float %3920, %3753
  %3928 = call float @dx.op.unary.f32(i32 24, float %3923)  ; Sqrt(value)
  %3929 = fmul fast float %3920, %3799
  %3930 = fsub fast float -0.000000e+00, %3928
  %3931 = fsub fast float %3930, %3929
  %3932 = fadd fast float %3931, %3927
  %3933 = select i1 %3924, float %3925, float 0.000000e+00
  %3934 = select i1 %3924, float %3926, float 0.000000e+00
  %3935 = select i1 %3924, float %3932, float 0.000000e+00
  %3936 = fmul fast float %3933, %3794
  %3937 = fmul fast float %3934, %3794
  %3938 = fmul fast float %3935, %3794
  %3939 = fadd fast float %3818, %3936
  %3940 = fadd fast float %3939, %3815
  %3941 = fadd fast float %3819, %3937
  %3942 = fadd fast float %3941, %3816
  %3943 = fadd fast float %3820, %3938
  %3944 = fadd fast float %3943, %3817
  %3945 = fmul fast float %3940, %3807
  %3946 = call float @dx.op.tertiary.f32(i32 46, float %3942, float %3809, float %3945)  ; FMad(a,b,c)
  %3947 = call float @dx.op.tertiary.f32(i32 46, float %3944, float %3811, float %3946)  ; FMad(a,b,c)
  %3948 = fmul fast float %3940, %3812
  %3949 = call float @dx.op.tertiary.f32(i32 46, float %3942, float %3813, float %3948)  ; FMad(a,b,c)
  %3950 = call float @dx.op.tertiary.f32(i32 46, float %3944, float %3814, float %3949)  ; FMad(a,b,c)
  %3951 = fsub fast float %3947, %3815
  %3952 = fsub fast float %3951, %3822
  %3953 = fadd fast float %3952, %3824
  %3954 = fsub fast float %3950, %3816
  %3955 = fsub fast float %3954, %3823
  %3956 = fadd fast float %3955, %3824
  %3957 = fmul fast float %3953, %3825
  %3958 = fmul fast float %3956, %3825
  %3959 = call float @dx.op.unary.f32(i32 7, float %3957)  ; Saturate(value)
  %3960 = call float @dx.op.unary.f32(i32 7, float %3958)  ; Saturate(value)
  %3961 = fsub fast float 1.000000e+00, %3959
  %3962 = fsub fast float 1.000000e+00, %3960
  %3963 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %45, float %3961, float %3962, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3964 = extractvalue %dx.types.ResRet.f32 %3963, 0
  %3965 = fmul fast float %3964, 0x3FDDEACB00000000
  %3966 = fadd fast float %3965, %3919
  %3967 = extractvalue %dx.types.CBufRet.f32 %3827, 3
  %3968 = fmul fast float %3967, %3967
  %3969 = fmul fast float %3968, %3801
  %3970 = fsub fast float 1.000000e+00, %3969
  %3971 = fcmp fast oge float %3970, 0.000000e+00
  %3972 = fmul fast float %3967, %3751
  %3973 = fmul fast float %3967, %3752
  %3974 = fmul fast float %3967, %3753
  %3975 = call float @dx.op.unary.f32(i32 24, float %3970)  ; Sqrt(value)
  %3976 = fmul fast float %3967, %3799
  %3977 = fsub fast float -0.000000e+00, %3975
  %3978 = fsub fast float %3977, %3976
  %3979 = fadd fast float %3978, %3974
  %3980 = select i1 %3971, float %3972, float 0.000000e+00
  %3981 = select i1 %3971, float %3973, float 0.000000e+00
  %3982 = select i1 %3971, float %3979, float 0.000000e+00
  %3983 = fmul fast float %3980, %3794
  %3984 = fmul fast float %3981, %3794
  %3985 = fmul fast float %3982, %3794
  %3986 = fadd fast float %3818, %3983
  %3987 = fadd fast float %3986, %3815
  %3988 = fadd fast float %3819, %3984
  %3989 = fadd fast float %3988, %3816
  %3990 = fadd fast float %3820, %3985
  %3991 = fadd fast float %3990, %3817
  %3992 = fmul fast float %3987, %3807
  %3993 = call float @dx.op.tertiary.f32(i32 46, float %3989, float %3809, float %3992)  ; FMad(a,b,c)
  %3994 = call float @dx.op.tertiary.f32(i32 46, float %3991, float %3811, float %3993)  ; FMad(a,b,c)
  %3995 = fmul fast float %3987, %3812
  %3996 = call float @dx.op.tertiary.f32(i32 46, float %3989, float %3813, float %3995)  ; FMad(a,b,c)
  %3997 = call float @dx.op.tertiary.f32(i32 46, float %3991, float %3814, float %3996)  ; FMad(a,b,c)
  %3998 = fsub fast float %3994, %3815
  %3999 = fsub fast float %3998, %3822
  %4000 = fadd fast float %3999, %3824
  %4001 = fsub fast float %3997, %3816
  %4002 = fsub fast float %4001, %3823
  %4003 = fadd fast float %4002, %3824
  %4004 = fmul fast float %4000, %3825
  %4005 = fmul fast float %4003, %3825
  %4006 = call float @dx.op.unary.f32(i32 7, float %4004)  ; Saturate(value)
  %4007 = call float @dx.op.unary.f32(i32 7, float %4005)  ; Saturate(value)
  %4008 = fsub fast float 1.000000e+00, %4006
  %4009 = fsub fast float 1.000000e+00, %4007
  %4010 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %45, float %4008, float %4009, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4011 = extractvalue %dx.types.ResRet.f32 %4010, 0
  %4012 = fmul fast float %4011, 0x3FE0183CA0000000
  %4013 = fmul fast float %4011, 0x3FB51033E0000000
  %4014 = fadd fast float %3966, %4012
  %4015 = fadd fast float %3964, %3918
  %4016 = fmul fast float %4015, 0x3FD9D2A200000000
  %4017 = fadd fast float %4013, %3873
  %4018 = fadd fast float %4017, %4016
  br label %4065

; <label>:4019                                    ; preds = %3793
  %4020 = fmul fast float %3801, 0x3FE2024E20000000
  %4021 = fsub fast float 1.000000e+00, %4020
  %4022 = fcmp fast oge float %4021, 0.000000e+00
  %4023 = fmul fast float %3751, 0x3FE8018960000000
  %4024 = fmul fast float %3752, 0x3FE8018960000000
  %4025 = fmul fast float %3753, 0x3FE8018960000000
  %4026 = call float @dx.op.unary.f32(i32 24, float %4021)  ; Sqrt(value)
  %4027 = fmul fast float %3799, 0x3FE8018960000000
  %4028 = fsub fast float %4025, %4026
  %4029 = fsub fast float %4028, %4027
  %4030 = select i1 %4022, float %4023, float 0.000000e+00
  %4031 = select i1 %4022, float %4024, float 0.000000e+00
  %4032 = select i1 %4022, float %4029, float 0.000000e+00
  %4033 = select i1 %3741, float %4030, float %3751
  %4034 = select i1 %3741, float %4031, float %3752
  %4035 = select i1 %3741, float %4032, float %3753
  %4036 = fmul fast float %4033, %3794
  %4037 = fmul fast float %4034, %3794
  %4038 = fmul fast float %4035, %3794
  %4039 = fadd fast float %3818, %4036
  %4040 = fadd fast float %4039, %3815
  %4041 = fadd fast float %3819, %4037
  %4042 = fadd fast float %4041, %3816
  %4043 = fadd fast float %3820, %4038
  %4044 = fadd fast float %4043, %3817
  %4045 = fmul fast float %4040, %3807
  %4046 = call float @dx.op.tertiary.f32(i32 46, float %4042, float %3809, float %4045)  ; FMad(a,b,c)
  %4047 = call float @dx.op.tertiary.f32(i32 46, float %4044, float %3811, float %4046)  ; FMad(a,b,c)
  %4048 = fmul fast float %4040, %3812
  %4049 = call float @dx.op.tertiary.f32(i32 46, float %4042, float %3813, float %4048)  ; FMad(a,b,c)
  %4050 = call float @dx.op.tertiary.f32(i32 46, float %4044, float %3814, float %4049)  ; FMad(a,b,c)
  %4051 = fsub fast float %4047, %3815
  %4052 = fsub fast float %4051, %3822
  %4053 = fadd fast float %4052, %3824
  %4054 = fsub fast float %4050, %3816
  %4055 = fsub fast float %4054, %3823
  %4056 = fadd fast float %4055, %3824
  %4057 = fmul fast float %4053, %3825
  %4058 = fmul fast float %4056, %3825
  %4059 = call float @dx.op.unary.f32(i32 7, float %4057)  ; Saturate(value)
  %4060 = call float @dx.op.unary.f32(i32 7, float %4058)  ; Saturate(value)
  %4061 = fsub fast float 1.000000e+00, %4059
  %4062 = fsub fast float 1.000000e+00, %4060
  %4063 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %45, float %4061, float %4062, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4064 = extractvalue %dx.types.ResRet.f32 %4063, 0
  br label %4065

; <label>:4065                                    ; preds = %4019, %3826
  %4066 = phi float [ %4064, %4019 ], [ %4014, %3826 ]
  %4067 = phi float [ %4064, %4019 ], [ %4018, %3826 ]
  %4068 = phi float [ %4064, %4019 ], [ %3872, %3826 ]
  %4069 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4070 = extractvalue %dx.types.CBufRet.f32 %4069, 0
  %4071 = call float @dx.op.unary.f32(i32 6, float %4070)  ; FAbs(value)
  %4072 = fmul fast float %3794, %3794
  %4073 = fadd fast float %4072, 1.000000e+00
  %4074 = fdiv fast float %4071, %4073
  %4075 = call float @dx.op.unary.f32(i32 7, float %4074)  ; Saturate(value)
  %4076 = call float @dx.op.unary.f32(i32 6, float %3799)  ; FAbs(value)
  %4077 = fsub fast float 1.000000e+00, %4076
  %4078 = bitcast float %4077 to i32
  %4079 = sitofp i32 %4078 to float
  %4080 = fptosi float %4079 to i32
  %4081 = bitcast i32 %4080 to float
  %4082 = fmul fast float %4081, 0x3FEF333340000000
  %4083 = fadd fast float %4082, 0x3F999999A0000000
  %4084 = call float @dx.op.unary.f32(i32 7, float %4083)  ; Saturate(value)
  %4085 = fsub fast float 1.000000e+00, %4084
  %4086 = fadd fast float %4066, 1.000000e+00
  %4087 = fadd fast float %4067, 1.000000e+00
  %4088 = fadd fast float %4068, 1.000000e+00
  %4089 = fmul fast float %4085, %4086
  %4090 = fmul fast float %4085, %4087
  %4091 = fmul fast float %4085, %4088
  %4092 = fmul fast float %4075, %4086
  %4093 = fmul fast float %4092, %4084
  %4094 = fmul fast float %4075, %4087
  %4095 = fmul fast float %4094, %4084
  %4096 = fmul fast float %4075, %4088
  %4097 = fmul fast float %4096, %4084
  %4098 = fadd fast float %4093, 1.000000e+00
  %4099 = fadd fast float %4095, 1.000000e+00
  %4100 = fadd fast float %4097, 1.000000e+00
  %4101 = call float @dx.op.unary.f32(i32 6, float %328)  ; FAbs(value)
  %4102 = call float @dx.op.unary.f32(i32 7, float %4101)  ; Saturate(value)
  %4103 = select i1 %3741, float %4089, float %4098
  %4104 = select i1 %3741, float %4090, float %4099
  %4105 = select i1 %3741, float %4091, float %4100
  %4106 = select i1 %3740, float %4102, float 0.000000e+00
  %4107 = fadd fast float %4103, -1.000000e+00
  %4108 = fadd fast float %4104, -1.000000e+00
  %4109 = fadd fast float %4105, -1.000000e+00
  %4110 = fmul fast float %4107, %4106
  %4111 = fmul fast float %4108, %4106
  %4112 = fmul fast float %4109, %4106
  %4113 = fadd fast float %4110, 1.000000e+00
  %4114 = fadd fast float %4111, 1.000000e+00
  %4115 = fadd fast float %4112, 1.000000e+00
  %4116 = fmul fast float %3734, %4113
  %4117 = fmul fast float %3735, %4114
  %4118 = fmul fast float %3736, %4115
  %4119 = fsub fast float %2440, %463
  %4120 = fsub fast float %2441, %464
  %4121 = fsub fast float %2442, %465
  %4122 = call float @dx.op.dot3.f32(i32 55, float %4119, float %4120, float %4121, float %4119, float %4120, float %4121)  ; Dot3(ax,ay,az,bx,by,bz)
  %4123 = call float @dx.op.unary.f32(i32 25, float %4122)  ; Rsqrt(value)
  %4124 = fmul fast float %4123, %4119
  %4125 = fmul fast float %4123, %4120
  %4126 = fmul fast float %4123, %4121
  %4127 = call float @dx.op.dot3.f32(i32 55, float %2440, float %2441, float %2442, float %257, float %258, float %259)  ; Dot3(ax,ay,az,bx,by,bz)
  %4128 = call float @dx.op.dot3.f32(i32 55, float %466, float %467, float %468, float %4124, float %4125, float %4126)  ; Dot3(ax,ay,az,bx,by,bz)
  %4129 = call float @dx.op.unary.f32(i32 7, float %4127)  ; Saturate(value)
  %4130 = fmul fast float %4129, %4129
  %4131 = fmul fast float %4130, 0x47DE623840000000
  %4132 = call float @dx.op.unary.f32(i32 7, float %4131)  ; Saturate(value)
  %4133 = fmul fast float %4132, %4129
  %4134 = call float @dx.op.dot3.f32(i32 55, float %257, float %258, float %259, float %4124, float %4125, float %4126)  ; Dot3(ax,ay,az,bx,by,bz)
  %4135 = fmul fast float %4134, %4134
  %4136 = call float @dx.op.unary.f32(i32 6, float %4127)  ; FAbs(value)
  %4137 = fsub fast float 1.000000e+00, %483
  %4138 = fmul fast float %471, %471
  %4139 = fmul fast float %4138, %4137
  %4140 = fadd fast float %4139, %483
  %4141 = bitcast float %4140 to i32
  %4142 = ashr i32 %4141, 1
  %4143 = add nsw i32 %4142, 532487669
  %4144 = bitcast i32 %4143 to float
  %4145 = fadd fast float %4144, %471
  %4146 = fmul fast float %483, %4135
  %4147 = fsub fast float 1.000000e+00, %4135
  %4148 = fadd fast float %4147, %4146
  %4149 = fmul fast float %4136, %4136
  %4150 = fmul fast float %4149, %4137
  %4151 = fadd fast float %4150, %483
  %4152 = bitcast float %4151 to i32
  %4153 = ashr i32 %4152, 1
  %4154 = add nsw i32 %4153, 532487669
  %4155 = bitcast i32 %4154 to float
  %4156 = fadd fast float %4155, %4136
  %4157 = fmul fast float %4148, %4148
  %4158 = fmul fast float %4157, %4145
  %4159 = fmul fast float %4158, %4156
  %4160 = fdiv fast float 0x3FF0A00000000000, %4159
  %4161 = fmul fast float %4160, %483
  %4162 = call float @dx.op.unary.f32(i32 6, float %4128)  ; FAbs(value)
  %4163 = fsub fast float 1.000000e+00, %4162
  %4164 = bitcast float %4163 to i32
  %4165 = sitofp i32 %4164 to float
  %4166 = fmul fast float %4165, 5.000000e+00
  %4167 = fadd fast float %4166, 0xC1EFBF8940000000
  %4168 = fptosi float %4167 to i32
  %4169 = bitcast i32 %4168 to float
  %4170 = fsub fast float 1.000000e+00, %449
  %4171 = fsub fast float 1.000000e+00, %450
  %4172 = fsub fast float 1.000000e+00, %469
  %4173 = fmul fast float %4169, %4170
  %4174 = fmul fast float %4169, %4171
  %4175 = fmul fast float %4169, %4172
  %4176 = fadd fast float %4173, %449
  %4177 = fadd fast float %4174, %450
  %4178 = fadd fast float %4175, %469
  %4179 = fmul fast float %4127, 9.843750e-01
  %4180 = fadd fast float %4179, 7.812500e-03
  %4181 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %45, float %4180, float %1926, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4182 = extractvalue %dx.types.ResRet.f32 %4181, 2
  %4183 = extractvalue %dx.types.ResRet.f32 %4181, 3
  %4184 = fmul fast float %4182, %449
  %4185 = fmul fast float %4182, %450
  %4186 = fmul fast float %4182, %469
  %4187 = fadd fast float %4184, %4183
  %4188 = fadd fast float %4185, %4183
  %4189 = fadd fast float %4186, %4183
  %4190 = call float @dx.op.binary.f32(i32 35, float %4188, float %4189)  ; FMax(a,b)
  %4191 = call float @dx.op.binary.f32(i32 35, float %4187, float %4190)  ; FMax(a,b)
  %4192 = fsub fast float 1.000000e+00, %4191
  %4193 = fmul fast float %4133, %4116
  %4194 = fmul fast float %4193, %4192
  %4195 = fmul fast float %4133, %4117
  %4196 = fmul fast float %4195, %4192
  %4197 = fmul fast float %4133, %4118
  %4198 = fmul fast float %4197, %4192
  %4199 = fadd fast float %4194, %2430
  %4200 = fadd fast float %4196, %2431
  %4201 = fadd fast float %4198, %2432
  %4202 = fmul fast float %4193, %4161
  %4203 = fmul fast float %4202, %4176
  %4204 = fmul fast float %4195, %4161
  %4205 = fmul fast float %4204, %4177
  %4206 = fmul fast float %4197, %4161
  %4207 = fmul fast float %4206, %4178
  %4208 = fadd fast float %4203, %2433
  %4209 = fadd fast float %4205, %2434
  %4210 = fadd fast float %4207, %2435
  br label %4211

; <label>:4211                                    ; preds = %4065, %3728, %2426
  %4212 = phi float [ %2433, %2426 ], [ %2433, %3728 ], [ %4208, %4065 ]
  %4213 = phi float [ %2434, %2426 ], [ %2434, %3728 ], [ %4209, %4065 ]
  %4214 = phi float [ %2435, %2426 ], [ %2435, %3728 ], [ %4210, %4065 ]
  %4215 = phi float [ %2430, %2426 ], [ %2430, %3728 ], [ %4199, %4065 ]
  %4216 = phi float [ %2431, %2426 ], [ %2431, %3728 ], [ %4200, %4065 ]
  %4217 = phi float [ %2432, %2426 ], [ %2432, %3728 ], [ %4201, %4065 ]
  %4218 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %4219 = extractvalue %dx.types.CBufRet.i32 %4218, 0
  %4220 = icmp eq i32 %4219, 0
  br i1 %4220, label %5243, label %4221

; <label>:4221                                    ; preds = %4211
  %4222 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %4223 = extractvalue %dx.types.CBufRet.f32 %4222, 2
  %4224 = extractvalue %dx.types.CBufRet.f32 %4222, 3
  %4225 = fmul fast float %4223, %77
  %4226 = fmul fast float %4224, %78
  %4227 = fptoui float %4225 to i32
  %4228 = fptoui float %4226 to i32
  %4229 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %4230 = extractvalue %dx.types.CBufRet.f32 %4229, 0
  %4231 = extractvalue %dx.types.CBufRet.f32 %4229, 2
  %4232 = extractvalue %dx.types.CBufRet.f32 %4229, 3
  %4233 = fadd fast float %292, -4.000000e+00
  %4234 = call float @dx.op.binary.f32(i32 35, float %4233, float 0.000000e+00)  ; FMax(a,b)
  %4235 = fadd fast float %4234, %4230
  %4236 = fmul fast float %4235, %4231
  %4237 = call float @dx.op.unary.f32(i32 23, float %4236)  ; Log(value)
  %4238 = fmul fast float %4237, %4232
  %4239 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %4240 = extractvalue %dx.types.CBufRet.f32 %4239, 2
  %4241 = fmul fast float %4238, %4240
  %4242 = call float @dx.op.unary.f32(i32 7, float %4241)  ; Saturate(value)
  %4243 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %4244 = extractvalue %dx.types.CBufRet.i32 %4243, 1
  %4245 = add i32 %4244, -1
  %4246 = uitofp i32 %4244 to float
  %4247 = fmul fast float %4246, %4242
  %4248 = fptoui float %4247 to i32
  %4249 = call i32 @dx.op.binary.i32(i32 40, i32 %4248, i32 %4245)  ; UMin(a,b)
  %4250 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %4251 = extractvalue %dx.types.CBufRet.i32 %4250, 2
  %4252 = extractvalue %dx.types.CBufRet.i32 %4250, 3
  %4253 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4228, i32 %4251, i32 %4227)  ; UMad(a,b,c)
  %4254 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4249, i32 %4252, i32 %4253)  ; UMad(a,b,c)
  %4255 = add nsw i32 %4219, -1
  %4256 = call i32 @dx.op.binary.i32(i32 37, i32 %4255, i32 0)  ; IMax(a,b)
  %4257 = call float @dx.op.binary.f32(i32 35, float %292, float 0.000000e+00)  ; FMax(a,b)
  %4258 = fptoui float %4257 to i32
  %4259 = lshr i32 %4258, 5
  %4260 = call i32 @dx.op.binary.i32(i32 40, i32 %4259, i32 8191)  ; UMin(a,b)
  %4261 = shl i32 %4260, 2
  %4262 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %4261, i32 undef)  ; BufferLoad(srv,index,wot)
  %4263 = extractvalue %dx.types.ResRet.i32 %4262, 0
  %4264 = lshr i32 %4263, 16
  %4265 = and i32 %4263, 65535
  %4266 = lshr i32 %4263, 21
  %4267 = lshr i32 %4265, 5
  %4268 = call i32 @dx.op.binary.i32(i32 40, i32 %4267, i32 %4256)  ; UMin(a,b)
  %4269 = icmp ugt i32 %4266, %4268
  br i1 %4269, label %5243, label %4270

; <label>:4270                                    ; preds = %4221
  br label %4271

; <label>:4271                                    ; preds = %5233, %4270
  %4272 = phi i32 [ %5240, %5233 ], [ %4266, %4270 ]
  %4273 = phi float [ %5234, %5233 ], [ %4212, %4270 ]
  %4274 = phi float [ %5235, %5233 ], [ %4213, %4270 ]
  %4275 = phi float [ %5236, %5233 ], [ %4214, %4270 ]
  %4276 = phi float [ %5237, %5233 ], [ %4215, %4270 ]
  %4277 = phi float [ %5238, %5233 ], [ %4216, %4270 ]
  %4278 = phi float [ %5239, %5233 ], [ %4217, %4270 ]
  %4279 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %4280 = extractvalue %dx.types.CBufRet.i32 %4279, 0
  %4281 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4254, i32 %4280, i32 %4272)  ; UMad(a,b,c)
  %4282 = shl i32 %4281, 2
  %4283 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %4282, i32 undef)  ; BufferLoad(srv,index,wot)
  %4284 = extractvalue %dx.types.ResRet.i32 %4283, 0
  %4285 = shl i32 %4272, 5
  %4286 = sub nsw i32 %4264, %4285
  %4287 = call i32 @dx.op.binary.i32(i32 37, i32 %4286, i32 0)  ; IMax(a,b)
  %4288 = call i32 @dx.op.binary.i32(i32 38, i32 %4287, i32 31)  ; IMin(a,b)
  %4289 = sub nsw i32 1, %4264
  %4290 = add nsw i32 %4289, %4265
  %4291 = call i32 @dx.op.binary.i32(i32 37, i32 %4290, i32 0)  ; IMax(a,b)
  %4292 = call i32 @dx.op.binary.i32(i32 38, i32 %4291, i32 32)  ; IMin(a,b)
  %4293 = and i32 %4292, 31
  %4294 = shl i32 -1, %4293
  %4295 = xor i32 %4294, -1
  %4296 = and i32 %4288, 31
  %4297 = shl i32 %4295, %4296
  %4298 = icmp eq i32 %4292, 32
  %4299 = select i1 %4298, i32 -1, i32 %4297
  %4300 = and i32 %4299, %4284
  %4301 = icmp eq i32 %4300, 0
  br i1 %4301, label %5233, label %4302

; <label>:4302                                    ; preds = %4271
  br label %4303

; <label>:4303                                    ; preds = %4452, %4302
  %4304 = phi i32 [ %4315, %4452 ], [ %4300, %4302 ]
  %4305 = phi float [ %4453, %4452 ], [ %4273, %4302 ]
  %4306 = phi float [ %4454, %4452 ], [ %4274, %4302 ]
  %4307 = phi float [ %4455, %4452 ], [ %4275, %4302 ]
  %4308 = phi float [ %4456, %4452 ], [ %4276, %4302 ]
  %4309 = phi float [ %4457, %4452 ], [ %4277, %4302 ]
  %4310 = phi float [ %4458, %4452 ], [ %4278, %4302 ]
  %4311 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4304)  ; FirstbitLo(value)
  %4312 = add i32 %4311, %4285
  %4313 = and i32 %4311, 31
  %4314 = shl i32 1, %4313
  %4315 = xor i32 %4314, %4304
  %4316 = mul i32 %4312, 112
  %4317 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %16, i32 %4316, i32 undef)  ; BufferLoad(srv,index,wot)
  %4318 = extractvalue %dx.types.ResRet.f32 %4317, 0
  %4319 = extractvalue %dx.types.ResRet.f32 %4317, 1
  %4320 = extractvalue %dx.types.ResRet.f32 %4317, 2
  %4321 = add i32 %4316, 16
  %4322 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %16, i32 %4321, i32 undef)  ; BufferLoad(srv,index,wot)
  %4323 = extractvalue %dx.types.ResRet.f32 %4322, 0
  %4324 = extractvalue %dx.types.ResRet.f32 %4322, 1
  %4325 = extractvalue %dx.types.ResRet.f32 %4322, 2
  %4326 = add i32 %4316, 28
  %4327 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %4326, i32 undef)  ; BufferLoad(srv,index,wot)
  %4328 = extractvalue %dx.types.ResRet.i32 %4327, 0
  %4329 = add i32 %4316, 32
  %4330 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %16, i32 %4329, i32 undef)  ; BufferLoad(srv,index,wot)
  %4331 = extractvalue %dx.types.ResRet.f32 %4330, 0
  %4332 = extractvalue %dx.types.ResRet.f32 %4330, 1
  %4333 = extractvalue %dx.types.ResRet.f32 %4330, 2
  %4334 = add i32 %4316, 44
  %4335 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %16, i32 %4334, i32 undef)  ; BufferLoad(srv,index,wot)
  %4336 = extractvalue %dx.types.ResRet.f32 %4335, 0
  %4337 = add i32 %4316, 48
  %4338 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %16, i32 %4337, i32 undef)  ; BufferLoad(srv,index,wot)
  %4339 = extractvalue %dx.types.ResRet.f32 %4338, 0
  %4340 = extractvalue %dx.types.ResRet.f32 %4338, 1
  %4341 = extractvalue %dx.types.ResRet.f32 %4338, 2
  %4342 = fsub fast float -0.000000e+00, %4341
  %4343 = extractvalue %dx.types.ResRet.f32 %4338, 3
  %4344 = add i32 %4316, 64
  %4345 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %16, i32 %4344, i32 undef)  ; BufferLoad(srv,index,wot)
  %4346 = extractvalue %dx.types.ResRet.f32 %4345, 0
  %4347 = extractvalue %dx.types.ResRet.f32 %4345, 1
  %4348 = extractvalue %dx.types.ResRet.f32 %4345, 2
  %4349 = extractvalue %dx.types.ResRet.f32 %4345, 3
  %4350 = add i32 %4316, 80
  %4351 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %16, i32 %4350, i32 undef)  ; BufferLoad(srv,index,wot)
  %4352 = extractvalue %dx.types.ResRet.f32 %4351, 1
  %4353 = extractvalue %dx.types.ResRet.f32 %4351, 2
  %4354 = add i32 %4316, 92
  %4355 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %4354, i32 undef)  ; BufferLoad(srv,index,wot)
  %4356 = extractvalue %dx.types.ResRet.i32 %4355, 0
  %4357 = call float @dx.op.dot3.f32(i32 55, float %4318, float %4319, float %4320, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4358 = select i1 %151, float %4352, float %4318
  %4359 = select i1 %151, float %4357, float %4319
  %4360 = select i1 %151, float %4353, float %4320
  %4361 = and i32 %4356, 65535
  %4362 = uitofp i32 %4361 to float
  %4363 = lshr i32 %4356, 16
  %4364 = uitofp i32 %4363 to float
  %4365 = and i32 %4328, 65535
  %4366 = and i32 %4328, 50331648
  %4367 = icmp eq i32 %4366, 33554432
  %4368 = call float @dx.op.dot3.f32(i32 55, float %4331, float %4332, float %4333, float %4331, float %4332, float %4333)  ; Dot3(ax,ay,az,bx,by,bz)
  %4369 = fsub fast float %326, %4339
  %4370 = fsub fast float %327, %4340
  %4371 = fsub fast float %328, %4341
  %4372 = call float @dx.op.dot3.f32(i32 55, float %4369, float %4370, float %4371, float %4331, float %4332, float %4333)  ; Dot3(ax,ay,az,bx,by,bz)
  %4373 = fdiv fast float %4372, %4368
  %4374 = call float @dx.op.binary.f32(i32 35, float %4373, float -1.000000e+00)  ; FMax(a,b)
  %4375 = call float @dx.op.binary.f32(i32 36, float %4374, float 1.000000e+00)  ; FMin(a,b)
  %4376 = fmul fast float %4375, %4331
  %4377 = fmul fast float %4375, %4332
  %4378 = fmul fast float %4375, %4333
  %4379 = fadd fast float %4376, %4339
  %4380 = fadd fast float %4377, %4340
  %4381 = fadd fast float %4378, %4341
  %4382 = fsub fast float %4379, %326
  %4383 = fsub fast float %4380, %327
  %4384 = fsub fast float %4381, %328
  %4385 = call float @dx.op.dot3.f32(i32 55, float %4382, float %4383, float %4384, float %4382, float %4383, float %4384)  ; Dot3(ax,ay,az,bx,by,bz)
  %4386 = call float @dx.op.unary.f32(i32 24, float %4385)  ; Sqrt(value)
  %4387 = fdiv fast float 1.000000e+00, %4386
  %4388 = fmul fast float %4382, %4387
  %4389 = fmul fast float %4383, %4387
  %4390 = fmul fast float %4384, %4387
  br i1 %4367, label %4391, label %4415

; <label>:4391                                    ; preds = %4303
  %4392 = fmul fast float %4348, %4323
  %4393 = fmul fast float %4348, %4324
  %4394 = fmul fast float %4348, %4325
  %4395 = fsub fast float %4392, %326
  %4396 = fadd fast float %4395, %4379
  %4397 = fsub fast float %4393, %327
  %4398 = fadd fast float %4397, %4380
  %4399 = fsub fast float %4394, %328
  %4400 = fadd fast float %4399, %4381
  %4401 = call float @dx.op.dot3.f32(i32 55, float %4396, float %4398, float %4400, float %4396, float %4398, float %4400)  ; Dot3(ax,ay,az,bx,by,bz)
  %4402 = call float @dx.op.unary.f32(i32 25, float %4401)  ; Rsqrt(value)
  %4403 = fmul fast float %4402, %4396
  %4404 = fmul fast float %4402, %4398
  %4405 = fmul fast float %4402, %4400
  %4406 = fsub fast float %326, %4379
  %4407 = fsub fast float %327, %4380
  %4408 = fsub fast float %328, %4381
  %4409 = fsub fast float -0.000000e+00, %4406
  %4410 = fsub fast float -0.000000e+00, %4407
  %4411 = fsub fast float -0.000000e+00, %4408
  %4412 = call float @dx.op.dot3.f32(i32 55, float %4409, float %4410, float %4411, float %4323, float %4324, float %4325)  ; Dot3(ax,ay,az,bx,by,bz)
  %4413 = fcmp fast ogt float %4412, 0.000000e+00
  %4414 = uitofp i1 %4413 to float
  br label %4415

; <label>:4415                                    ; preds = %4391, %4303
  %4416 = phi float [ %4414, %4391 ], [ 1.000000e+00, %4303 ]
  %4417 = phi float [ %4403, %4391 ], [ %4388, %4303 ]
  %4418 = phi float [ %4404, %4391 ], [ %4389, %4303 ]
  %4419 = phi float [ %4405, %4391 ], [ %4390, %4303 ]
  %4420 = call float @dx.op.dot3.f32(i32 55, float %4323, float %4324, float %4325, float %4417, float %4418, float %4419)  ; Dot3(ax,ay,az,bx,by,bz)
  %4421 = fmul fast float %4420, %4420
  %4422 = call float @dx.op.unary.f32(i32 7, float %4421)  ; Saturate(value)
  %4423 = fsub fast float 1.000000e+00, %4422
  %4424 = fmul fast float %4423, 5.000000e-01
  %4425 = fcmp fast ogt float %4420, 0.000000e+00
  %4426 = fsub fast float 1.000000e+00, %4424
  %4427 = select i1 %4425, float %4424, float %4426
  %4428 = fmul fast float %4427, %4364
  %4429 = fadd fast float %4428, %4362
  %4430 = fmul fast float %4429, 0x3EF0001000000000
  %4431 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %45, float %4430, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4432 = extractvalue %dx.types.ResRet.f32 %4431, 0
  %4433 = fmul fast float %4420, %4346
  %4434 = fadd fast float %4433, %4347
  %4435 = call float @dx.op.unary.f32(i32 7, float %4434)  ; Saturate(value)
  %4436 = select i1 %4367, float 1.000000e+00, float %4435
  %4437 = select i1 %4367, float %4435, float 1.000000e+00
  %4438 = fmul fast float %4386, %4343
  %4439 = fsub fast float 1.000000e+00, %4438
  %4440 = fmul fast float %4439, %4349
  %4441 = call float @dx.op.unary.f32(i32 7, float %4440)  ; Saturate(value)
  %4442 = fmul fast float %4441, %4437
  %4443 = fmul fast float %4442, 2.000000e+00
  %4444 = fsub fast float 3.000000e+00, %4443
  %4445 = fmul fast float %4432, %4416
  %4446 = fmul fast float %4442, %4442
  %4447 = fmul fast float %4446, %4445
  %4448 = fmul fast float %4447, %4444
  %4449 = call float @dx.op.binary.f32(i32 36, float %4448, float %4448)  ; FMin(a,b)
  %4450 = call float @dx.op.binary.f32(i32 36, float %4448, float %4449)  ; FMin(a,b)
  %4451 = fcmp fast ogt float %4450, 0.000000e+00
  br i1 %4451, label %4460, label %4452, !dx.controlflow.hints !135

; <label>:4452                                    ; preds = %4942, %4606, %4415
  %4453 = phi float [ %4305, %4606 ], [ %4305, %4415 ], [ %5229, %4942 ]
  %4454 = phi float [ %4306, %4606 ], [ %4306, %4415 ], [ %5230, %4942 ]
  %4455 = phi float [ %4307, %4606 ], [ %4307, %4415 ], [ %5231, %4942 ]
  %4456 = phi float [ %4308, %4606 ], [ %4308, %4415 ], [ %5220, %4942 ]
  %4457 = phi float [ %4309, %4606 ], [ %4309, %4415 ], [ %5221, %4942 ]
  %4458 = phi float [ %4310, %4606 ], [ %4310, %4415 ], [ %5222, %4942 ]
  %4459 = icmp eq i32 %4304, %4314
  br i1 %4459, label %5232, label %4303

; <label>:4460                                    ; preds = %4415
  %4461 = icmp eq i32 %4365, 255
  br i1 %4461, label %4606, label %4462, !dx.controlflow.hints !136

; <label>:4462                                    ; preds = %4460
  %4463 = mul nuw nsw i32 %4365, 176
  %4464 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %4463, i32 undef)  ; BufferLoad(srv,index,wot)
  %4465 = extractvalue %dx.types.ResRet.f32 %4464, 0
  %4466 = extractvalue %dx.types.ResRet.f32 %4464, 1
  %4467 = extractvalue %dx.types.ResRet.f32 %4464, 2
  %4468 = extractvalue %dx.types.ResRet.f32 %4464, 3
  %4469 = add nuw nsw i32 %4463, 16
  %4470 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %4469, i32 undef)  ; BufferLoad(srv,index,wot)
  %4471 = extractvalue %dx.types.ResRet.f32 %4470, 0
  %4472 = extractvalue %dx.types.ResRet.f32 %4470, 1
  %4473 = add nuw nsw i32 %4463, 32
  %4474 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %4473, i32 undef)  ; BufferLoad(srv,index,wot)
  %4475 = extractvalue %dx.types.ResRet.f32 %4474, 0
  %4476 = extractvalue %dx.types.ResRet.f32 %4474, 1
  %4477 = extractvalue %dx.types.ResRet.f32 %4474, 2
  %4478 = add nuw nsw i32 %4463, 48
  %4479 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %4478, i32 undef)  ; BufferLoad(srv,index,wot)
  %4480 = extractvalue %dx.types.ResRet.f32 %4479, 0
  %4481 = extractvalue %dx.types.ResRet.f32 %4479, 1
  %4482 = extractvalue %dx.types.ResRet.f32 %4479, 2
  %4483 = extractvalue %dx.types.ResRet.f32 %4479, 3
  %4484 = add nuw nsw i32 %4463, 64
  %4485 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %4484, i32 undef)  ; BufferLoad(srv,index,wot)
  %4486 = extractvalue %dx.types.ResRet.f32 %4485, 0
  %4487 = extractvalue %dx.types.ResRet.f32 %4485, 1
  %4488 = extractvalue %dx.types.ResRet.f32 %4485, 2
  %4489 = extractvalue %dx.types.ResRet.f32 %4485, 3
  %4490 = add nuw nsw i32 %4463, 80
  %4491 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %4490, i32 undef)  ; BufferLoad(srv,index,wot)
  %4492 = extractvalue %dx.types.ResRet.f32 %4491, 0
  %4493 = extractvalue %dx.types.ResRet.f32 %4491, 1
  %4494 = extractvalue %dx.types.ResRet.f32 %4491, 2
  %4495 = extractvalue %dx.types.ResRet.f32 %4491, 3
  %4496 = add nuw nsw i32 %4463, 96
  %4497 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %4496, i32 undef)  ; BufferLoad(srv,index,wot)
  %4498 = extractvalue %dx.types.ResRet.f32 %4497, 0
  %4499 = extractvalue %dx.types.ResRet.f32 %4497, 1
  %4500 = extractvalue %dx.types.ResRet.f32 %4497, 2
  %4501 = extractvalue %dx.types.ResRet.f32 %4497, 3
  %4502 = bitcast float %4472 to i32
  %4503 = fmul fast float %4477, %257
  %4504 = fmul fast float %4477, %258
  %4505 = fmul fast float %4477, %259
  %4506 = fadd fast float %4503, %326
  %4507 = fadd fast float %4504, %327
  %4508 = fadd fast float %4505, %328
  %4509 = fmul fast float %4506, %4480
  %4510 = call float @dx.op.tertiary.f32(i32 46, float %4507, float %4486, float %4509)  ; FMad(a,b,c)
  %4511 = call float @dx.op.tertiary.f32(i32 46, float %4508, float %4492, float %4510)  ; FMad(a,b,c)
  %4512 = fadd fast float %4511, %4498
  %4513 = fmul fast float %4506, %4481
  %4514 = call float @dx.op.tertiary.f32(i32 46, float %4507, float %4487, float %4513)  ; FMad(a,b,c)
  %4515 = call float @dx.op.tertiary.f32(i32 46, float %4508, float %4493, float %4514)  ; FMad(a,b,c)
  %4516 = fadd fast float %4515, %4499
  %4517 = fmul fast float %4506, %4482
  %4518 = call float @dx.op.tertiary.f32(i32 46, float %4507, float %4488, float %4517)  ; FMad(a,b,c)
  %4519 = call float @dx.op.tertiary.f32(i32 46, float %4508, float %4494, float %4518)  ; FMad(a,b,c)
  %4520 = fadd fast float %4519, %4500
  %4521 = fmul fast float %4506, %4483
  %4522 = call float @dx.op.tertiary.f32(i32 46, float %4507, float %4489, float %4521)  ; FMad(a,b,c)
  %4523 = call float @dx.op.tertiary.f32(i32 46, float %4508, float %4495, float %4522)  ; FMad(a,b,c)
  %4524 = fadd fast float %4523, %4501
  %4525 = fdiv fast float %4512, %4524
  %4526 = fdiv fast float %4516, %4524
  %4527 = fdiv fast float %4520, %4524
  %4528 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %4527)  ; FMax(a,b)
  %4529 = fmul fast float %162, 0x401921FB60000000
  %4530 = call float @dx.op.unary.f32(i32 13, float %4529)  ; Sin(value)
  %4531 = call float @dx.op.unary.f32(i32 12, float %4529)  ; Cos(value)
  %4532 = fmul fast float %4531, %4476
  %4533 = call float @dx.op.tertiary.f32(i32 46, float %4530, float %4476, float 0.000000e+00)  ; FMad(a,b,c)
  %4534 = fmul fast float %4476, %4530
  %4535 = fsub fast float -0.000000e+00, %4534
  %4536 = call float @dx.op.tertiary.f32(i32 46, float %4531, float %4476, float 0.000000e+00)  ; FMad(a,b,c)
  br label %4537

; <label>:4537                                    ; preds = %4537, %4462
  %4538 = phi float [ 0.000000e+00, %4462 ], [ %4570, %4537 ]
  %4539 = phi float [ 0.000000e+00, %4462 ], [ %4572, %4537 ]
  %4540 = phi i32 [ 0, %4462 ], [ %4573, %4537 ]
  %4541 = mul i32 %4540, 2
  %4542 = add i32 0, %4541
  %4543 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %4542
  %4544 = load float, float* %4543, align 4
  %4545 = mul i32 %4540, 2
  %4546 = add i32 1, %4545
  %4547 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %4546
  %4548 = load float, float* %4547, align 4
  %4549 = fmul fast float %4532, %4544
  %4550 = call float @dx.op.tertiary.f32(i32 46, float %4548, float %4535, float %4549)  ; FMad(a,b,c)
  %4551 = fmul fast float %4544, %4533
  %4552 = call float @dx.op.tertiary.f32(i32 46, float %4548, float %4536, float %4551)  ; FMad(a,b,c)
  %4553 = fadd fast float %4550, %4525
  %4554 = fadd fast float %4552, %4526
  %4555 = fmul fast float %4553, %4471
  %4556 = fmul fast float %4554, %4471
  %4557 = call float @dx.op.binary.f32(i32 35, float %4555, float %4467)  ; FMax(a,b)
  %4558 = call float @dx.op.binary.f32(i32 35, float %4556, float %4467)  ; FMax(a,b)
  %4559 = call float @dx.op.binary.f32(i32 36, float %4557, float %4468)  ; FMin(a,b)
  %4560 = call float @dx.op.binary.f32(i32 36, float %4558, float %4468)  ; FMin(a,b)
  %4561 = fadd fast float %4559, %4465
  %4562 = fadd fast float %4560, %4466
  %4563 = uitofp i32 %4502 to float
  %4564 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %46, float %4561, float %4562, float %4563, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4565 = extractvalue %dx.types.ResRet.f32 %4564, 0
  %4566 = fsub fast float %4565, %4528
  %4567 = fsub fast float %4566, %4475
  %4568 = fcmp fast ogt float %4567, 0.000000e+00
  %4569 = select i1 %4568, float 1.000000e+00, float 0.000000e+00
  %4570 = fadd fast float %4569, %4538
  %4571 = select i1 %4568, float %4567, float 0.000000e+00
  %4572 = fadd fast float %4571, %4539
  %4573 = add nuw nsw i32 %4540, 1
  %4574 = icmp eq i32 %4573, 8
  br i1 %4574, label %4575, label %4537

; <label>:4575                                    ; preds = %4537
  %4576 = fdiv fast float 1.000000e+00, %4570
  %4577 = fmul fast float %4576, %4572
  %4578 = fdiv fast float 1.000000e+00, %4528
  %4579 = fmul fast float %4577, %4578
  %4580 = call float @dx.op.unary.f32(i32 7, float %4579)  ; Saturate(value)
  %4581 = call float @dx.op.binary.f32(i32 35, float %4580, float 0.000000e+00)  ; FMax(a,b)
  %4582 = fmul fast float %4570, 1.250000e-01
  %4583 = call float @dx.op.unary.f32(i32 7, float %4582)  ; Saturate(value)
  %4584 = fmul fast float %4583, 2.000000e+00
  %4585 = fadd fast float %4584, -1.000000e+00
  %4586 = fcmp fast ogt float %4585, 0.000000e+00
  %4587 = fcmp fast olt float %4585, 0.000000e+00
  %4588 = zext i1 %4586 to i32
  %4589 = zext i1 %4587 to i32
  %4590 = sub nsw i32 %4588, %4589
  %4591 = sitofp i32 %4590 to float
  %4592 = fmul fast float %4591, %4585
  %4593 = fsub fast float 1.000000e+00, %4592
  %4594 = fmul fast float %4593, %4593
  %4595 = fmul fast float %4594, %4593
  %4596 = fsub fast float %4593, %4595
  %4597 = fmul fast float %4596, %4581
  %4598 = fsub fast float 1.000000e+00, %4595
  %4599 = fsub fast float %4598, %4597
  %4600 = fmul fast float %4591, 5.000000e-01
  %4601 = fmul fast float %4600, %4599
  %4602 = fsub fast float -5.000000e-01, %4601
  %4603 = fmul fast float %4602, %4436
  %4604 = fadd fast float %4603, 1.000000e+00
  %4605 = fmul fast float %4604, %4448
  br label %4606

; <label>:4606                                    ; preds = %4575, %4460
  %4607 = phi float [ %4605, %4575 ], [ %4448, %4460 ]
  %4608 = call float @dx.op.binary.f32(i32 36, float %4607, float %4607)  ; FMin(a,b)
  %4609 = call float @dx.op.binary.f32(i32 36, float %4607, float %4608)  ; FMin(a,b)
  %4610 = fcmp fast ogt float %4609, 0.000000e+00
  br i1 %4610, label %4611, label %4452, !dx.controlflow.hints !137

; <label>:4611                                    ; preds = %4606
  %4612 = fmul fast float %4607, %4358
  %4613 = fmul fast float %4607, %4359
  %4614 = fmul fast float %4607, %4360
  %4615 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4616 = extractvalue %dx.types.CBufRet.i32 %4615, 0
  %4617 = and i32 %4616, 64
  %4618 = icmp ne i32 %4617, 0
  %4619 = fcmp fast ogt float %4341, 0.000000e+00
  %4620 = fcmp fast ogt float %328, 0.000000e+00
  %4621 = xor i1 %4620, %4619
  %4622 = select i1 %4621, float %4341, float %4342
  %4623 = fsub fast float %4339, %326
  %4624 = fsub fast float %4340, %327
  %4625 = fsub fast float %4622, %328
  %4626 = call float @dx.op.dot3.f32(i32 55, float %4623, float %4624, float %4625, float %4623, float %4624, float %4625)  ; Dot3(ax,ay,az,bx,by,bz)
  %4627 = call float @dx.op.unary.f32(i32 25, float %4626)  ; Rsqrt(value)
  %4628 = fmul fast float %4627, %4623
  %4629 = fmul fast float %4627, %4624
  %4630 = fmul fast float %4627, %4625
  %4631 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %460)  ; Dot3(ax,ay,az,bx,by,bz)
  %4632 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %4628, float %4629, float %4630)  ; Dot3(ax,ay,az,bx,by,bz)
  %4633 = fdiv fast float 1.000000e+00, %4632
  %4634 = fmul fast float %4633, %4631
  %4635 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %328, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4636 = fcmp fast ogt float %4635, 0.000000e+00
  %4637 = fcmp fast olt float %4635, 0.000000e+00
  %4638 = zext i1 %4636 to i32
  %4639 = zext i1 %4637 to i32
  %4640 = sub nsw i32 %4638, %4639
  %4641 = sitofp i32 %4640 to float
  %4642 = call float @dx.op.dot3.f32(i32 55, float %4623, float %4624, float %4622, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4643 = fcmp fast ogt float %4642, 0.000000e+00
  %4644 = fcmp fast olt float %4642, 0.000000e+00
  %4645 = zext i1 %4643 to i32
  %4646 = zext i1 %4644 to i32
  %4647 = sub nsw i32 %4645, %4646
  %4648 = sitofp i32 %4647 to float
  %4649 = fcmp fast une float %4641, %4648
  br i1 %4649, label %4650, label %4660

; <label>:4650                                    ; preds = %4611
  %4651 = fmul fast float %4634, %4630
  %4652 = fmul fast float %4634, %4629
  %4653 = fmul fast float %4634, %4628
  %4654 = fmul fast float %4653, %4653
  %4655 = fmul fast float %4652, %4652
  %4656 = fadd fast float %4654, %4655
  %4657 = fmul fast float %4651, %4651
  %4658 = fadd fast float %4656, %4657
  %4659 = call float @dx.op.unary.f32(i32 24, float %4658)  ; Sqrt(value)
  br label %4670

; <label>:4660                                    ; preds = %4611
  %4661 = icmp slt i32 %4640, 0
  br i1 %4661, label %4662, label %4670

; <label>:4662                                    ; preds = %4660
  %4663 = fsub fast float %328, %4622
  %4664 = fmul fast float %4369, %4369
  %4665 = fmul fast float %4370, %4370
  %4666 = fadd fast float %4664, %4665
  %4667 = fmul fast float %4663, %4663
  %4668 = fadd fast float %4666, %4667
  %4669 = call float @dx.op.unary.f32(i32 24, float %4668)  ; Sqrt(value)
  br label %4670

; <label>:4670                                    ; preds = %4662, %4660, %4650
  %4671 = phi float [ %4659, %4650 ], [ %4669, %4662 ], [ 0.000000e+00, %4660 ]
  %4672 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 348)  ; CBufferLoadLegacy(handle,regIndex)
  %4673 = extractvalue %dx.types.CBufRet.i32 %4672, 1
  %4674 = icmp ne i32 %4673, 0
  %4675 = and i1 %4621, %4674
  %4676 = call float @dx.op.dot3.f32(i32 55, float %4628, float %4629, float %4630, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4677 = fmul fast float %4676, %4676
  %4678 = fsub fast float 1.000000e+00, %4677
  %4679 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4680 = extractvalue %dx.types.CBufRet.f32 %4679, 0
  %4681 = extractvalue %dx.types.CBufRet.f32 %4679, 1
  %4682 = extractvalue %dx.types.CBufRet.f32 %4679, 2
  %4683 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4684 = extractvalue %dx.types.CBufRet.f32 %4683, 0
  %4685 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4686 = extractvalue %dx.types.CBufRet.f32 %4685, 0
  %4687 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4688 = extractvalue %dx.types.CBufRet.f32 %4687, 0
  %4689 = extractvalue %dx.types.CBufRet.f32 %4683, 1
  %4690 = extractvalue %dx.types.CBufRet.f32 %4685, 1
  %4691 = extractvalue %dx.types.CBufRet.f32 %4687, 1
  %4692 = extractvalue %dx.types.CBufRet.f32 %4683, 3
  %4693 = extractvalue %dx.types.CBufRet.f32 %4685, 3
  %4694 = extractvalue %dx.types.CBufRet.f32 %4687, 3
  %4695 = fadd fast float %4680, %326
  %4696 = fadd fast float %4681, %327
  %4697 = fadd fast float %4682, %328
  %4698 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 346)  ; CBufferLoadLegacy(handle,regIndex)
  %4699 = extractvalue %dx.types.CBufRet.f32 %4698, 0
  %4700 = extractvalue %dx.types.CBufRet.f32 %4698, 1
  %4701 = extractvalue %dx.types.CBufRet.f32 %4698, 2
  %4702 = extractvalue %dx.types.CBufRet.f32 %4698, 3
  br i1 %4675, label %4703, label %4896

; <label>:4703                                    ; preds = %4670
  %4704 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 349)  ; CBufferLoadLegacy(handle,regIndex)
  %4705 = extractvalue %dx.types.CBufRet.f32 %4704, 0
  %4706 = fmul fast float %4705, %4705
  %4707 = fmul fast float %4706, %4678
  %4708 = fsub fast float 1.000000e+00, %4707
  %4709 = fcmp fast oge float %4708, 0.000000e+00
  %4710 = fmul fast float %4705, %4628
  %4711 = fmul fast float %4705, %4629
  %4712 = fmul fast float %4705, %4630
  %4713 = call float @dx.op.unary.f32(i32 24, float %4708)  ; Sqrt(value)
  %4714 = fmul fast float %4705, %4676
  %4715 = fsub fast float -0.000000e+00, %4713
  %4716 = fsub fast float %4715, %4714
  %4717 = fadd fast float %4716, %4712
  %4718 = select i1 %4709, float %4710, float 0.000000e+00
  %4719 = select i1 %4709, float %4711, float 0.000000e+00
  %4720 = select i1 %4709, float %4717, float 0.000000e+00
  %4721 = fmul fast float %4718, %4671
  %4722 = fmul fast float %4719, %4671
  %4723 = fmul fast float %4720, %4671
  %4724 = fadd fast float %4695, %4721
  %4725 = fadd fast float %4724, %4692
  %4726 = fadd fast float %4696, %4722
  %4727 = fadd fast float %4726, %4693
  %4728 = fadd fast float %4697, %4723
  %4729 = fadd fast float %4728, %4694
  %4730 = fmul fast float %4725, %4684
  %4731 = call float @dx.op.tertiary.f32(i32 46, float %4727, float %4686, float %4730)  ; FMad(a,b,c)
  %4732 = call float @dx.op.tertiary.f32(i32 46, float %4729, float %4688, float %4731)  ; FMad(a,b,c)
  %4733 = fmul fast float %4725, %4689
  %4734 = call float @dx.op.tertiary.f32(i32 46, float %4727, float %4690, float %4733)  ; FMad(a,b,c)
  %4735 = call float @dx.op.tertiary.f32(i32 46, float %4729, float %4691, float %4734)  ; FMad(a,b,c)
  %4736 = fsub fast float %4732, %4692
  %4737 = fsub fast float %4736, %4699
  %4738 = fadd fast float %4737, %4701
  %4739 = fsub fast float %4735, %4693
  %4740 = fsub fast float %4739, %4700
  %4741 = fadd fast float %4740, %4701
  %4742 = fmul fast float %4738, %4702
  %4743 = fmul fast float %4741, %4702
  %4744 = call float @dx.op.unary.f32(i32 7, float %4742)  ; Saturate(value)
  %4745 = call float @dx.op.unary.f32(i32 7, float %4743)  ; Saturate(value)
  %4746 = fsub fast float 1.000000e+00, %4744
  %4747 = fsub fast float 1.000000e+00, %4745
  %4748 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %45, float %4746, float %4747, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4749 = extractvalue %dx.types.ResRet.f32 %4748, 0
  %4750 = fmul fast float %4749, 0x3FBC5ABC00000000
  %4751 = extractvalue %dx.types.CBufRet.f32 %4704, 1
  %4752 = fmul fast float %4751, %4751
  %4753 = fmul fast float %4752, %4678
  %4754 = fsub fast float 1.000000e+00, %4753
  %4755 = fcmp fast oge float %4754, 0.000000e+00
  %4756 = fmul fast float %4751, %4628
  %4757 = fmul fast float %4751, %4629
  %4758 = fmul fast float %4751, %4630
  %4759 = call float @dx.op.unary.f32(i32 24, float %4754)  ; Sqrt(value)
  %4760 = fmul fast float %4751, %4676
  %4761 = fsub fast float -0.000000e+00, %4759
  %4762 = fsub fast float %4761, %4760
  %4763 = fadd fast float %4762, %4758
  %4764 = select i1 %4755, float %4756, float 0.000000e+00
  %4765 = select i1 %4755, float %4757, float 0.000000e+00
  %4766 = select i1 %4755, float %4763, float 0.000000e+00
  %4767 = fmul fast float %4764, %4671
  %4768 = fmul fast float %4765, %4671
  %4769 = fmul fast float %4766, %4671
  %4770 = fadd fast float %4695, %4767
  %4771 = fadd fast float %4770, %4692
  %4772 = fadd fast float %4696, %4768
  %4773 = fadd fast float %4772, %4693
  %4774 = fadd fast float %4697, %4769
  %4775 = fadd fast float %4774, %4694
  %4776 = fmul fast float %4771, %4684
  %4777 = call float @dx.op.tertiary.f32(i32 46, float %4773, float %4686, float %4776)  ; FMad(a,b,c)
  %4778 = call float @dx.op.tertiary.f32(i32 46, float %4775, float %4688, float %4777)  ; FMad(a,b,c)
  %4779 = fmul fast float %4771, %4689
  %4780 = call float @dx.op.tertiary.f32(i32 46, float %4773, float %4690, float %4779)  ; FMad(a,b,c)
  %4781 = call float @dx.op.tertiary.f32(i32 46, float %4775, float %4691, float %4780)  ; FMad(a,b,c)
  %4782 = fsub fast float %4778, %4692
  %4783 = fsub fast float %4782, %4699
  %4784 = fadd fast float %4783, %4701
  %4785 = fsub fast float %4781, %4693
  %4786 = fsub fast float %4785, %4700
  %4787 = fadd fast float %4786, %4701
  %4788 = fmul fast float %4784, %4702
  %4789 = fmul fast float %4787, %4702
  %4790 = call float @dx.op.unary.f32(i32 7, float %4788)  ; Saturate(value)
  %4791 = call float @dx.op.unary.f32(i32 7, float %4789)  ; Saturate(value)
  %4792 = fsub fast float 1.000000e+00, %4790
  %4793 = fsub fast float 1.000000e+00, %4791
  %4794 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %45, float %4792, float %4793, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4795 = extractvalue %dx.types.ResRet.f32 %4794, 0
  %4796 = fmul fast float %4795, 0x3F9E4BBD60000000
  %4797 = extractvalue %dx.types.CBufRet.f32 %4704, 2
  %4798 = fmul fast float %4797, %4797
  %4799 = fmul fast float %4798, %4678
  %4800 = fsub fast float 1.000000e+00, %4799
  %4801 = fcmp fast oge float %4800, 0.000000e+00
  %4802 = fmul fast float %4797, %4628
  %4803 = fmul fast float %4797, %4629
  %4804 = fmul fast float %4797, %4630
  %4805 = call float @dx.op.unary.f32(i32 24, float %4800)  ; Sqrt(value)
  %4806 = fmul fast float %4797, %4676
  %4807 = fsub fast float -0.000000e+00, %4805
  %4808 = fsub fast float %4807, %4806
  %4809 = fadd fast float %4808, %4804
  %4810 = select i1 %4801, float %4802, float 0.000000e+00
  %4811 = select i1 %4801, float %4803, float 0.000000e+00
  %4812 = select i1 %4801, float %4809, float 0.000000e+00
  %4813 = fmul fast float %4810, %4671
  %4814 = fmul fast float %4811, %4671
  %4815 = fmul fast float %4812, %4671
  %4816 = fadd fast float %4695, %4813
  %4817 = fadd fast float %4816, %4692
  %4818 = fadd fast float %4696, %4814
  %4819 = fadd fast float %4818, %4693
  %4820 = fadd fast float %4697, %4815
  %4821 = fadd fast float %4820, %4694
  %4822 = fmul fast float %4817, %4684
  %4823 = call float @dx.op.tertiary.f32(i32 46, float %4819, float %4686, float %4822)  ; FMad(a,b,c)
  %4824 = call float @dx.op.tertiary.f32(i32 46, float %4821, float %4688, float %4823)  ; FMad(a,b,c)
  %4825 = fmul fast float %4817, %4689
  %4826 = call float @dx.op.tertiary.f32(i32 46, float %4819, float %4690, float %4825)  ; FMad(a,b,c)
  %4827 = call float @dx.op.tertiary.f32(i32 46, float %4821, float %4691, float %4826)  ; FMad(a,b,c)
  %4828 = fsub fast float %4824, %4692
  %4829 = fsub fast float %4828, %4699
  %4830 = fadd fast float %4829, %4701
  %4831 = fsub fast float %4827, %4693
  %4832 = fsub fast float %4831, %4700
  %4833 = fadd fast float %4832, %4701
  %4834 = fmul fast float %4830, %4702
  %4835 = fmul fast float %4833, %4702
  %4836 = call float @dx.op.unary.f32(i32 7, float %4834)  ; Saturate(value)
  %4837 = call float @dx.op.unary.f32(i32 7, float %4835)  ; Saturate(value)
  %4838 = fsub fast float 1.000000e+00, %4836
  %4839 = fsub fast float 1.000000e+00, %4837
  %4840 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %45, float %4838, float %4839, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4841 = extractvalue %dx.types.ResRet.f32 %4840, 0
  %4842 = fmul fast float %4841, 0x3FDDEACB00000000
  %4843 = fadd fast float %4842, %4796
  %4844 = extractvalue %dx.types.CBufRet.f32 %4704, 3
  %4845 = fmul fast float %4844, %4844
  %4846 = fmul fast float %4845, %4678
  %4847 = fsub fast float 1.000000e+00, %4846
  %4848 = fcmp fast oge float %4847, 0.000000e+00
  %4849 = fmul fast float %4844, %4628
  %4850 = fmul fast float %4844, %4629
  %4851 = fmul fast float %4844, %4630
  %4852 = call float @dx.op.unary.f32(i32 24, float %4847)  ; Sqrt(value)
  %4853 = fmul fast float %4844, %4676
  %4854 = fsub fast float -0.000000e+00, %4852
  %4855 = fsub fast float %4854, %4853
  %4856 = fadd fast float %4855, %4851
  %4857 = select i1 %4848, float %4849, float 0.000000e+00
  %4858 = select i1 %4848, float %4850, float 0.000000e+00
  %4859 = select i1 %4848, float %4856, float 0.000000e+00
  %4860 = fmul fast float %4857, %4671
  %4861 = fmul fast float %4858, %4671
  %4862 = fmul fast float %4859, %4671
  %4863 = fadd fast float %4695, %4860
  %4864 = fadd fast float %4863, %4692
  %4865 = fadd fast float %4696, %4861
  %4866 = fadd fast float %4865, %4693
  %4867 = fadd fast float %4697, %4862
  %4868 = fadd fast float %4867, %4694
  %4869 = fmul fast float %4864, %4684
  %4870 = call float @dx.op.tertiary.f32(i32 46, float %4866, float %4686, float %4869)  ; FMad(a,b,c)
  %4871 = call float @dx.op.tertiary.f32(i32 46, float %4868, float %4688, float %4870)  ; FMad(a,b,c)
  %4872 = fmul fast float %4864, %4689
  %4873 = call float @dx.op.tertiary.f32(i32 46, float %4866, float %4690, float %4872)  ; FMad(a,b,c)
  %4874 = call float @dx.op.tertiary.f32(i32 46, float %4868, float %4691, float %4873)  ; FMad(a,b,c)
  %4875 = fsub fast float %4871, %4692
  %4876 = fsub fast float %4875, %4699
  %4877 = fadd fast float %4876, %4701
  %4878 = fsub fast float %4874, %4693
  %4879 = fsub fast float %4878, %4700
  %4880 = fadd fast float %4879, %4701
  %4881 = fmul fast float %4877, %4702
  %4882 = fmul fast float %4880, %4702
  %4883 = call float @dx.op.unary.f32(i32 7, float %4881)  ; Saturate(value)
  %4884 = call float @dx.op.unary.f32(i32 7, float %4882)  ; Saturate(value)
  %4885 = fsub fast float 1.000000e+00, %4883
  %4886 = fsub fast float 1.000000e+00, %4884
  %4887 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %45, float %4885, float %4886, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4888 = extractvalue %dx.types.ResRet.f32 %4887, 0
  %4889 = fmul fast float %4888, 0x3FE0183CA0000000
  %4890 = fmul fast float %4888, 0x3FB51033E0000000
  %4891 = fadd fast float %4843, %4889
  %4892 = fadd fast float %4841, %4795
  %4893 = fmul fast float %4892, 0x3FD9D2A200000000
  %4894 = fadd fast float %4890, %4750
  %4895 = fadd fast float %4894, %4893
  br label %4942

; <label>:4896                                    ; preds = %4670
  %4897 = fmul fast float %4678, 0x3FE2024E20000000
  %4898 = fsub fast float 1.000000e+00, %4897
  %4899 = fcmp fast oge float %4898, 0.000000e+00
  %4900 = fmul fast float %4628, 0x3FE8018960000000
  %4901 = fmul fast float %4629, 0x3FE8018960000000
  %4902 = fmul fast float %4630, 0x3FE8018960000000
  %4903 = call float @dx.op.unary.f32(i32 24, float %4898)  ; Sqrt(value)
  %4904 = fmul fast float %4676, 0x3FE8018960000000
  %4905 = fsub fast float %4902, %4903
  %4906 = fsub fast float %4905, %4904
  %4907 = select i1 %4899, float %4900, float 0.000000e+00
  %4908 = select i1 %4899, float %4901, float 0.000000e+00
  %4909 = select i1 %4899, float %4906, float 0.000000e+00
  %4910 = select i1 %4621, float %4907, float %4628
  %4911 = select i1 %4621, float %4908, float %4629
  %4912 = select i1 %4621, float %4909, float %4630
  %4913 = fmul fast float %4910, %4671
  %4914 = fmul fast float %4911, %4671
  %4915 = fmul fast float %4912, %4671
  %4916 = fadd fast float %4695, %4913
  %4917 = fadd fast float %4916, %4692
  %4918 = fadd fast float %4696, %4914
  %4919 = fadd fast float %4918, %4693
  %4920 = fadd fast float %4697, %4915
  %4921 = fadd fast float %4920, %4694
  %4922 = fmul fast float %4917, %4684
  %4923 = call float @dx.op.tertiary.f32(i32 46, float %4919, float %4686, float %4922)  ; FMad(a,b,c)
  %4924 = call float @dx.op.tertiary.f32(i32 46, float %4921, float %4688, float %4923)  ; FMad(a,b,c)
  %4925 = fmul fast float %4917, %4689
  %4926 = call float @dx.op.tertiary.f32(i32 46, float %4919, float %4690, float %4925)  ; FMad(a,b,c)
  %4927 = call float @dx.op.tertiary.f32(i32 46, float %4921, float %4691, float %4926)  ; FMad(a,b,c)
  %4928 = fsub fast float %4924, %4692
  %4929 = fsub fast float %4928, %4699
  %4930 = fadd fast float %4929, %4701
  %4931 = fsub fast float %4927, %4693
  %4932 = fsub fast float %4931, %4700
  %4933 = fadd fast float %4932, %4701
  %4934 = fmul fast float %4930, %4702
  %4935 = fmul fast float %4933, %4702
  %4936 = call float @dx.op.unary.f32(i32 7, float %4934)  ; Saturate(value)
  %4937 = call float @dx.op.unary.f32(i32 7, float %4935)  ; Saturate(value)
  %4938 = fsub fast float 1.000000e+00, %4936
  %4939 = fsub fast float 1.000000e+00, %4937
  %4940 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %45, float %4938, float %4939, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4941 = extractvalue %dx.types.ResRet.f32 %4940, 0
  br label %4942

; <label>:4942                                    ; preds = %4896, %4703
  %4943 = phi float [ %4941, %4896 ], [ %4891, %4703 ]
  %4944 = phi float [ %4941, %4896 ], [ %4895, %4703 ]
  %4945 = phi float [ %4941, %4896 ], [ %4749, %4703 ]
  %4946 = fmul fast float %4623, %4623
  %4947 = fmul fast float %4624, %4624
  %4948 = fadd fast float %4946, %4947
  %4949 = fmul fast float %4625, %4625
  %4950 = fadd fast float %4948, %4949
  %4951 = call float @dx.op.unary.f32(i32 24, float %4950)  ; Sqrt(value)
  %4952 = fmul fast float %4369, %4369
  %4953 = fmul fast float %4370, %4370
  %4954 = fadd fast float %4952, %4953
  %4955 = fmul fast float %4371, %4371
  %4956 = fadd fast float %4954, %4955
  %4957 = call float @dx.op.unary.f32(i32 24, float %4956)  ; Sqrt(value)
  %4958 = fsub fast float %4951, %4957
  %4959 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4960 = extractvalue %dx.types.CBufRet.f32 %4959, 0
  %4961 = call float @dx.op.unary.f32(i32 6, float %4960)  ; FAbs(value)
  %4962 = fmul fast float %4957, %4957
  %4963 = fmul fast float %4962, %4961
  %4964 = fmul fast float %4958, %4958
  %4965 = fadd fast float %4964, %4962
  %4966 = fdiv fast float %4963, %4965
  %4967 = call float @dx.op.unary.f32(i32 7, float %4966)  ; Saturate(value)
  %4968 = call float @dx.op.unary.f32(i32 6, float %4676)  ; FAbs(value)
  %4969 = fsub fast float 1.000000e+00, %4968
  %4970 = bitcast float %4969 to i32
  %4971 = sitofp i32 %4970 to float
  %4972 = fptosi float %4971 to i32
  %4973 = bitcast i32 %4972 to float
  %4974 = fmul fast float %4973, 0x3FEF333340000000
  %4975 = fadd fast float %4974, 0x3F999999A0000000
  %4976 = call float @dx.op.unary.f32(i32 7, float %4975)  ; Saturate(value)
  %4977 = fsub fast float 1.000000e+00, %4976
  %4978 = fadd fast float %4943, 1.000000e+00
  %4979 = fadd fast float %4944, 1.000000e+00
  %4980 = fadd fast float %4945, 1.000000e+00
  %4981 = fmul fast float %4977, %4978
  %4982 = fmul fast float %4977, %4979
  %4983 = fmul fast float %4977, %4980
  %4984 = fmul fast float %4967, %4978
  %4985 = fmul fast float %4984, %4976
  %4986 = fmul fast float %4967, %4979
  %4987 = fmul fast float %4986, %4976
  %4988 = fmul fast float %4967, %4980
  %4989 = fmul fast float %4988, %4976
  %4990 = fadd fast float %4985, 1.000000e+00
  %4991 = fadd fast float %4987, 1.000000e+00
  %4992 = fadd fast float %4989, 1.000000e+00
  %4993 = call float @dx.op.unary.f32(i32 6, float %328)  ; FAbs(value)
  %4994 = call float @dx.op.unary.f32(i32 7, float %4993)  ; Saturate(value)
  %4995 = select i1 %4621, float %4981, float %4990
  %4996 = select i1 %4621, float %4982, float %4991
  %4997 = select i1 %4621, float %4983, float %4992
  %4998 = select i1 %4618, float %4994, float 0.000000e+00
  %4999 = fadd fast float %4995, -1.000000e+00
  %5000 = fadd fast float %4996, -1.000000e+00
  %5001 = fadd fast float %4997, -1.000000e+00
  %5002 = fmul fast float %4999, %4998
  %5003 = fmul fast float %5000, %4998
  %5004 = fmul fast float %5001, %4998
  %5005 = fadd fast float %5002, 1.000000e+00
  %5006 = fadd fast float %5003, 1.000000e+00
  %5007 = fadd fast float %5004, 1.000000e+00
  %5008 = fmul fast float %4612, %5005
  %5009 = fmul fast float %4613, %5006
  %5010 = fmul fast float %4614, %5007
  %5011 = fadd fast float %4388, %257
  %5012 = fadd fast float %4389, %258
  %5013 = fadd fast float %4390, %259
  %5014 = call float @dx.op.dot3.f32(i32 55, float %4388, float %4389, float %4390, float %4382, float %4383, float %4384)  ; Dot3(ax,ay,az,bx,by,bz)
  %5015 = call float @dx.op.dot3.f32(i32 55, float %4388, float %4389, float %4390, float %5011, float %5012, float %5013)  ; Dot3(ax,ay,az,bx,by,bz)
  %5016 = fdiv fast float 1.000000e+00, %5015
  %5017 = fmul fast float %5016, %5014
  %5018 = fmul fast float %5017, %5011
  %5019 = fmul fast float %5017, %5012
  %5020 = fmul fast float %5017, %5013
  %5021 = fadd fast float %4369, %5018
  %5022 = fadd fast float %4370, %5019
  %5023 = fadd fast float %4371, %5020
  %5024 = call float @dx.op.dot3.f32(i32 55, float %5021, float %5022, float %5023, float %4331, float %4332, float %4333)  ; Dot3(ax,ay,az,bx,by,bz)
  %5025 = fdiv fast float %5024, %4368
  %5026 = call float @dx.op.binary.f32(i32 35, float %5025, float -1.000000e+00)  ; FMax(a,b)
  %5027 = call float @dx.op.binary.f32(i32 36, float %5026, float 1.000000e+00)  ; FMin(a,b)
  %5028 = fmul fast float %5027, %4331
  %5029 = fmul fast float %5027, %4332
  %5030 = fmul fast float %5027, %4333
  %5031 = fadd fast float %4623, %5028
  %5032 = fadd fast float %4624, %5029
  %5033 = fsub fast float %4341, %328
  %5034 = fadd fast float %5033, %5030
  %5035 = call float @dx.op.dot3.f32(i32 55, float %5031, float %5032, float %5034, float %5031, float %5032, float %5034)  ; Dot3(ax,ay,az,bx,by,bz)
  %5036 = call float @dx.op.unary.f32(i32 25, float %5035)  ; Rsqrt(value)
  %5037 = fmul fast float %5031, %5036
  %5038 = fmul fast float %5032, %5036
  %5039 = fmul fast float %5034, %5036
  %5040 = fsub fast float %5037, %463
  %5041 = fsub fast float %5038, %464
  %5042 = fsub fast float %5039, %465
  %5043 = call float @dx.op.dot3.f32(i32 55, float %5040, float %5041, float %5042, float %5040, float %5041, float %5042)  ; Dot3(ax,ay,az,bx,by,bz)
  %5044 = call float @dx.op.unary.f32(i32 25, float %5043)  ; Rsqrt(value)
  %5045 = fmul fast float %5040, %5044
  %5046 = fmul fast float %5041, %5044
  %5047 = fmul fast float %5042, %5044
  %5048 = call float @dx.op.dot3.f32(i32 55, float %5037, float %5038, float %5039, float %257, float %258, float %259)  ; Dot3(ax,ay,az,bx,by,bz)
  %5049 = call float @dx.op.dot3.f32(i32 55, float %466, float %467, float %468, float %5045, float %5046, float %5047)  ; Dot3(ax,ay,az,bx,by,bz)
  %5050 = fmul fast float %5036, %4336
  %5051 = fmul fast float %5050, %5050
  %5052 = bitcast float %5051 to i32
  %5053 = ashr i32 %5052, 1
  %5054 = sub nsw i32 1597463007, %5053
  %5055 = bitcast i32 %5054 to float
  %5056 = fmul fast float %5055, %5048
  %5057 = fmul fast float %5056, %5056
  %5058 = fsub fast float 1.000000e+00, %5057
  %5059 = fmul fast float %5048, %5051
  %5060 = call float @dx.op.unary.f32(i32 7, float %5059)  ; Saturate(value)
  %5061 = fmul fast float %5056, 5.000000e-01
  %5062 = fadd fast float %5061, 5.000000e-01
  %5063 = fmul fast float %5062, %5051
  %5064 = call float @dx.op.unary.f32(i32 7, float %5063)  ; Saturate(value)
  %5065 = bitcast float %5064 to i32
  %5066 = ashr i32 %5065, 1
  %5067 = add nsw i32 %5066, 532487669
  %5068 = bitcast i32 %5067 to float
  %5069 = fmul fast float %5068, %5064
  %5070 = fcmp fast ogt float %5058, 0.000000e+00
  %5071 = select i1 %5070, float %5069, float %5060
  %5072 = call float @dx.op.unary.f32(i32 7, float %5048)  ; Saturate(value)
  %5073 = fmul fast float %5072, %5072
  %5074 = fmul fast float %5073, 0x47DE623840000000
  %5075 = call float @dx.op.unary.f32(i32 7, float %5074)  ; Saturate(value)
  %5076 = fmul fast float %5071, %5075
  %5077 = call float @dx.op.dot3.f32(i32 55, float %4331, float %4332, float %4333, float %477, float %478, float %479)  ; Dot3(ax,ay,az,bx,by,bz)
  %5078 = call float @dx.op.dot3.f32(i32 55, float %4331, float %4332, float %4333, float %4382, float %4383, float %4384)  ; Dot3(ax,ay,az,bx,by,bz)
  %5079 = call float @dx.op.dot3.f32(i32 55, float %477, float %478, float %479, float %4382, float %4383, float %4384)  ; Dot3(ax,ay,az,bx,by,bz)
  %5080 = fmul fast float %5077, %5077
  %5081 = fsub fast float %4368, %5080
  %5082 = fmul fast float %5079, %5077
  %5083 = fsub fast float %5082, %5078
  %5084 = fdiv fast float %5083, %5081
  %5085 = call float @dx.op.binary.f32(i32 35, float %5084, float -1.500000e+00)  ; FMax(a,b)
  %5086 = call float @dx.op.binary.f32(i32 36, float %5085, float 1.500000e+00)  ; FMin(a,b)
  %5087 = fmul fast float %5086, %5086
  %5088 = fmul fast float %5087, 0x3FC2F68380000000
  %5089 = fmul fast float %5088, %5086
  %5090 = fsub fast float %5086, %5089
  %5091 = fmul fast float %5090, %4331
  %5092 = fmul fast float %5090, %4332
  %5093 = fmul fast float %5090, %4333
  %5094 = fadd fast float %5091, %4379
  %5095 = fadd fast float %5092, %4380
  %5096 = fadd fast float %5093, %4381
  %5097 = fsub fast float %5094, %326
  %5098 = fsub fast float %5095, %327
  %5099 = fsub fast float %5096, %328
  %5100 = call float @dx.op.dot3.f32(i32 55, float %5097, float %5098, float %5099, float %477, float %478, float %479)  ; Dot3(ax,ay,az,bx,by,bz)
  %5101 = fmul fast float %5100, %477
  %5102 = fmul fast float %5100, %478
  %5103 = fmul fast float %5100, %479
  %5104 = fsub fast float %5101, %5097
  %5105 = fsub fast float %5102, %5098
  %5106 = fsub fast float %5103, %5099
  %5107 = call float @dx.op.dot3.f32(i32 55, float %5104, float %5105, float %5106, float %5104, float %5105, float %5106)  ; Dot3(ax,ay,az,bx,by,bz)
  %5108 = bitcast float %5107 to i32
  %5109 = ashr i32 %5108, 1
  %5110 = sub nsw i32 1597463007, %5109
  %5111 = bitcast i32 %5110 to float
  %5112 = fmul fast float %5111, %4336
  %5113 = call float @dx.op.dot3.f32(i32 55, float %5097, float %5098, float %5099, float %5097, float %5098, float %5099)  ; Dot3(ax,ay,az,bx,by,bz)
  %5114 = bitcast float %5113 to i32
  %5115 = ashr i32 %5114, 1
  %5116 = sub nsw i32 1597463007, %5115
  %5117 = bitcast i32 %5116 to float
  %5118 = fmul fast float %5112, %5112
  %5119 = fadd fast float %5118, 1.250000e-01
  %5120 = call float @dx.op.unary.f32(i32 25, float %5119)  ; Rsqrt(value)
  %5121 = fmul fast float %5112, %5120
  %5122 = fmul fast float %5104, %5121
  %5123 = fmul fast float %5105, %5121
  %5124 = fmul fast float %5106, %5121
  %5125 = fadd fast float %5097, %5122
  %5126 = fadd fast float %5098, %5123
  %5127 = fadd fast float %5099, %5124
  %5128 = call float @dx.op.dot3.f32(i32 55, float %5125, float %5126, float %5127, float %5125, float %5126, float %5127)  ; Dot3(ax,ay,az,bx,by,bz)
  %5129 = call float @dx.op.unary.f32(i32 25, float %5128)  ; Rsqrt(value)
  %5130 = fmul fast float %5125, %5129
  %5131 = fmul fast float %5126, %5129
  %5132 = fmul fast float %5127, %5129
  %5133 = fsub fast float %5130, %463
  %5134 = fsub fast float %5131, %464
  %5135 = fsub fast float %5132, %465
  %5136 = call float @dx.op.dot3.f32(i32 55, float %5133, float %5134, float %5135, float %5133, float %5134, float %5135)  ; Dot3(ax,ay,az,bx,by,bz)
  %5137 = call float @dx.op.unary.f32(i32 25, float %5136)  ; Rsqrt(value)
  %5138 = fmul fast float %5133, %5137
  %5139 = fmul fast float %5134, %5137
  %5140 = fmul fast float %5135, %5137
  %5141 = call float @dx.op.dot3.f32(i32 55, float %257, float %258, float %259, float %5138, float %5139, float %5140)  ; Dot3(ax,ay,az,bx,by,bz)
  %5142 = fmul fast float %5141, %5141
  %5143 = call float @dx.op.unary.f32(i32 6, float %5048)  ; FAbs(value)
  %5144 = fsub fast float 1.000000e+00, %483
  %5145 = fmul fast float %471, %471
  %5146 = fmul fast float %5145, %5144
  %5147 = fadd fast float %5146, %483
  %5148 = bitcast float %5147 to i32
  %5149 = ashr i32 %5148, 1
  %5150 = add nsw i32 %5149, 532487669
  %5151 = bitcast i32 %5150 to float
  %5152 = fadd fast float %5151, %471
  %5153 = fmul fast float %483, %5142
  %5154 = fsub fast float 1.000000e+00, %5142
  %5155 = fadd fast float %5154, %5153
  %5156 = fmul fast float %5143, %5143
  %5157 = fmul fast float %5156, %5144
  %5158 = fadd fast float %5157, %483
  %5159 = bitcast float %5158 to i32
  %5160 = ashr i32 %5159, 1
  %5161 = add nsw i32 %5160, 532487669
  %5162 = bitcast i32 %5161 to float
  %5163 = fadd fast float %5162, %5143
  %5164 = fmul fast float %5155, %5155
  %5165 = fmul fast float %5164, %5152
  %5166 = fmul fast float %5165, %5163
  %5167 = fdiv fast float 1.000000e+00, %5166
  %5168 = bitcast float %483 to i32
  %5169 = sitofp i32 %5168 to float
  %5170 = fmul fast float %5169, 0x3FE7F73180000000
  %5171 = fadd fast float %5170, 0x41AFE27C40000000
  %5172 = fptosi float %5171 to i32
  %5173 = bitcast i32 %5172 to float
  %5174 = fmul fast float %4336, 0x3FD80E9D60000000
  %5175 = fmul fast float %5174, %5117
  %5176 = fadd fast float %5173, %5175
  %5177 = bitcast float %5176 to i32
  %5178 = sub nsw i32 2129859010, %5177
  %5179 = bitcast i32 %5178 to float
  %5180 = fmul fast float %483, %5167
  %5181 = fmul fast float %5180, %5173
  %5182 = fmul fast float %5181, %5179
  %5183 = call float @dx.op.unary.f32(i32 6, float %5049)  ; FAbs(value)
  %5184 = fsub fast float 1.000000e+00, %5183
  %5185 = bitcast float %5184 to i32
  %5186 = sitofp i32 %5185 to float
  %5187 = fmul fast float %5186, 5.000000e+00
  %5188 = fadd fast float %5187, 0xC1EFBF8940000000
  %5189 = fptosi float %5188 to i32
  %5190 = bitcast i32 %5189 to float
  %5191 = fsub fast float 1.000000e+00, %449
  %5192 = fsub fast float 1.000000e+00, %450
  %5193 = fsub fast float 1.000000e+00, %469
  %5194 = fmul fast float %5190, %5191
  %5195 = fmul fast float %5190, %5192
  %5196 = fmul fast float %5190, %5193
  %5197 = fadd fast float %5194, %449
  %5198 = fadd fast float %5195, %450
  %5199 = fadd fast float %5196, %469
  %5200 = fmul fast float %5048, 9.843750e-01
  %5201 = fadd fast float %5200, 7.812500e-03
  %5202 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %45, float %5201, float %1926, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5203 = extractvalue %dx.types.ResRet.f32 %5202, 2
  %5204 = extractvalue %dx.types.ResRet.f32 %5202, 3
  %5205 = fmul fast float %5203, %449
  %5206 = fmul fast float %5203, %450
  %5207 = fmul fast float %5203, %469
  %5208 = fadd fast float %5205, %5204
  %5209 = fadd fast float %5206, %5204
  %5210 = fadd fast float %5207, %5204
  %5211 = call float @dx.op.binary.f32(i32 35, float %5209, float %5210)  ; FMax(a,b)
  %5212 = call float @dx.op.binary.f32(i32 35, float %5208, float %5211)  ; FMax(a,b)
  %5213 = fsub fast float 1.000000e+00, %5212
  %5214 = fmul fast float %5076, %5008
  %5215 = fmul fast float %5214, %5213
  %5216 = fmul fast float %5076, %5009
  %5217 = fmul fast float %5216, %5213
  %5218 = fmul fast float %5076, %5010
  %5219 = fmul fast float %5218, %5213
  %5220 = fadd fast float %5215, %4308
  %5221 = fadd fast float %5217, %4309
  %5222 = fadd fast float %5219, %4310
  %5223 = fmul fast float %5214, %5197
  %5224 = fmul fast float %5223, %5182
  %5225 = fmul fast float %5216, %5198
  %5226 = fmul fast float %5225, %5182
  %5227 = fmul fast float %5218, %5199
  %5228 = fmul fast float %5227, %5182
  %5229 = fadd fast float %5224, %4305
  %5230 = fadd fast float %5226, %4306
  %5231 = fadd fast float %5228, %4307
  br label %4452

; <label>:5232                                    ; preds = %4452
  br label %5233

; <label>:5233                                    ; preds = %5232, %4271
  %5234 = phi float [ %4273, %4271 ], [ %4453, %5232 ]
  %5235 = phi float [ %4274, %4271 ], [ %4454, %5232 ]
  %5236 = phi float [ %4275, %4271 ], [ %4455, %5232 ]
  %5237 = phi float [ %4276, %4271 ], [ %4456, %5232 ]
  %5238 = phi float [ %4277, %4271 ], [ %4457, %5232 ]
  %5239 = phi float [ %4278, %4271 ], [ %4458, %5232 ]
  %5240 = add i32 %4272, 1
  %5241 = icmp ugt i32 %5240, %4268
  br i1 %5241, label %5242, label %4271

; <label>:5242                                    ; preds = %5233
  br label %5243

; <label>:5243                                    ; preds = %5242, %4221, %4211
  %5244 = phi float [ %4212, %4211 ], [ %4212, %4221 ], [ %5234, %5242 ]
  %5245 = phi float [ %4213, %4211 ], [ %4213, %4221 ], [ %5235, %5242 ]
  %5246 = phi float [ %4214, %4211 ], [ %4214, %4221 ], [ %5236, %5242 ]
  %5247 = phi float [ %4215, %4211 ], [ %4215, %4221 ], [ %5237, %5242 ]
  %5248 = phi float [ %4216, %4211 ], [ %4216, %4221 ], [ %5238, %5242 ]
  %5249 = phi float [ %4217, %4211 ], [ %4217, %4221 ], [ %5239, %5242 ]
  %5250 = call float @dx.op.unary.f32(i32 24, float %440)  ; Sqrt(value)
  %5251 = call float @dx.op.unary.f32(i32 24, float %441)  ; Sqrt(value)
  %5252 = call float @dx.op.unary.f32(i32 24, float %442)  ; Sqrt(value)
  %5253 = fmul fast float %5250, %5247
  %5254 = fmul fast float %5251, %5248
  %5255 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5256 = extractvalue %dx.types.CBufRet.f32 %5255, 0
  br i1 %151, label %5257, label %5277

; <label>:5257                                    ; preds = %5243
  %5258 = fadd fast float %5249, %457
  %5259 = fmul fast float %5258, %455
  %5260 = fsub fast float 1.000000e+00, %455
  %5261 = call float @dx.op.unary.f32(i32 7, float %5260)  ; Saturate(value)
  %5262 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %5263 = extractvalue %dx.types.CBufRet.f32 %5262, 3
  %5264 = fmul fast float %5263, %5261
  %5265 = fadd fast float %5264, %5259
  %5266 = fsub fast float 1.000000e+00, %471
  %5267 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %5268 = extractvalue %dx.types.CBufRet.f32 %5267, 0
  %5269 = fmul fast float %5268, %5266
  %5270 = fsub fast float %5265, %5269
  %5271 = fadd fast float %5254, %5253
  %5272 = extractvalue %dx.types.CBufRet.f32 %5262, 1
  %5273 = fsub fast float %5270, %5272
  %5274 = extractvalue %dx.types.CBufRet.f32 %5262, 2
  %5275 = fmul fast float %5273, %5274
  %5276 = call float @dx.op.unary.f32(i32 7, float %5275)  ; Saturate(value)
  br label %5281

; <label>:5277                                    ; preds = %5243
  %5278 = fmul fast float %5252, %5249
  %5279 = fmul fast float %5256, %5254
  %5280 = fmul fast float %5278, %5256
  br label %5281

; <label>:5281                                    ; preds = %5277, %5257
  %5282 = phi float [ %5271, %5257 ], [ %5253, %5277 ]
  %5283 = phi float [ %5276, %5257 ], [ %5279, %5277 ]
  %5284 = phi float [ 1.000000e+00, %5257 ], [ %5280, %5277 ]
  %5285 = fmul float %5256, %5282
  %5286 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5287 = extractvalue %dx.types.CBufRet.f32 %5286, 0
  %5288 = fmul fast float %5287, %5245
  %5289 = fmul fast float %5287, %5246
  %5290 = fadd fast float %5245, %5244
  %5291 = select i1 %151, float %5290, float %5244
  %5292 = fmul float %5291, %5287
  %5293 = select i1 %151, float 0.000000e+00, float %5288
  %5294 = select i1 %151, float 0.000000e+00, float %5289
  %5295 = call float @dx.op.binary.f32(i32 36, float %5285, float 3.225500e+04)  ; FMin(a,b)
  %5296 = call float @dx.op.binary.f32(i32 36, float %5283, float 3.225500e+04)  ; FMin(a,b)
  %5297 = call float @dx.op.binary.f32(i32 36, float %5284, float 3.225500e+04)  ; FMin(a,b)
  %5298 = call float @dx.op.binary.f32(i32 36, float %5292, float 3.225500e+04)  ; FMin(a,b)
  %5299 = call float @dx.op.binary.f32(i32 36, float %5293, float 3.225500e+04)  ; FMin(a,b)
  %5300 = call float @dx.op.binary.f32(i32 36, float %5294, float 3.225500e+04)  ; FMin(a,b)
  %5301 = and i32 %127, 4
  %5302 = icmp eq i32 %5301, 0
  %5303 = xor i1 %121, true
  %5304 = or i1 %5302, %5303
  br i1 %5304, label %5305, label %5312

; <label>:5305                                    ; preds = %5281
  %5306 = fmul fast float %5295, %5250
  %5307 = fmul fast float %5296, %5251
  %5308 = fmul fast float %5297, %5252
  %5309 = fadd fast float %5298, %5306
  %5310 = fadd fast float %5299, %5307
  %5311 = fadd fast float %5300, %5308
  br label %5312

; <label>:5312                                    ; preds = %5305, %5281
  %5313 = phi float [ %5309, %5305 ], [ %5298, %5281 ]
  %5314 = phi float [ %5310, %5305 ], [ %5299, %5281 ]
  %5315 = phi float [ %5311, %5305 ], [ %5300, %5281 ]
  %5316 = select i1 %151, float %5296, float %5314
  %5317 = select i1 %151, float %5297, float %5315
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %5313)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %5316)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %5317)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %5295)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %5296)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %5297)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!62 = !{[43 x i32] [i32 41, i32 8, i32 119, i32 119, i32 0, i32 119, i32 0, i32 0, i32 0, i32 0, i32 119, i32 119, i32 0, i32 119, i32 119, i32 119, i32 119, i32 119, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 119, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 119, i32 0, i32 0, i32 119, i32 119]}
!63 = !{void ()* @ps_main, !"ps_main", !64, !4, !90}
!64 = !{!65, !86, null}
!65 = !{!66, !69, !70, !71, !73, !74, !76, !78, !80, !81, !82, !84, !85}
!66 = !{i32 0, !"SV_Position", i8 9, i8 3, !67, i8 4, i32 1, i8 4, i32 0, i8 0, !68}
!67 = !{i32 0}
!68 = !{i32 3, i32 11}
!69 = !{i32 1, !"COLOR", i8 9, i8 0, !67, i8 2, i32 1, i8 4, i32 1, i8 0, null}
!70 = !{i32 2, !"TEXCOORDS", i8 9, i8 0, !67, i8 2, i32 1, i8 4, i32 2, i8 0, !68}
!71 = !{i32 3, !"NORMAL", i8 9, i8 0, !67, i8 2, i32 1, i8 3, i32 3, i8 0, !72}
!72 = !{i32 3, i32 7}
!73 = !{i32 4, !"TANGENT", i8 9, i8 0, !67, i8 2, i32 1, i8 4, i32 4, i8 0, null}
!74 = !{i32 5, !"CARD_DEPTH_OFFSET", i8 9, i8 0, !67, i8 2, i32 1, i8 1, i32 3, i8 3, !75}
!75 = !{i32 3, i32 1}
!76 = !{i32 6, !"CARD_BARY_AND_TILE", i8 9, i8 0, !77, i8 1, i32 1, i8 4, i32 5, i8 0, null}
!77 = !{i32 1}
!78 = !{i32 7, !"LGV_POSITION_INDEX", i8 9, i8 0, !67, i8 2, i32 1, i8 4, i32 6, i8 0, !79}
!79 = !{i32 3, i32 8}
!80 = !{i32 8, !"SECONDARY_TEXCOORDS", i8 9, i8 0, !67, i8 2, i32 1, i8 2, i32 7, i8 0, null}
!81 = !{i32 9, !"SCEONDARY_NORMAL", i8 9, i8 0, !67, i8 2, i32 1, i8 4, i32 8, i8 0, null}
!82 = !{i32 10, !"PACKED_TRI_DATA", i8 5, i8 0, !67, i8 1, i32 1, i8 4, i32 9, i8 0, !83}
!83 = !{i32 3, i32 9}
!84 = !{i32 11, !"SV_IsFrontFace", i8 5, i8 13, !67, i8 1, i32 1, i8 1, i32 10, i8 0, !75}
!85 = !{i32 12, !"SV_SampleIndex", i8 5, i8 12, !67, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!86 = !{!87, !89}
!87 = !{i32 0, !"SV_Target", i8 9, i8 16, !67, i8 0, i32 1, i8 4, i32 0, i8 0, !88}
!88 = !{i32 3, i32 15}
!89 = !{i32 1, !"SV_Target", i8 9, i8 16, !77, i8 0, i32 1, i8 4, i32 1, i8 0, !88}
!90 = !{i32 0, i64 24}
!91 = !{!92, !94}
!92 = distinct !{!92, !93, !"\01?GetLightGridVolumeTransformParamsStatic@@YA?AULightGridVolumeTransformParams@@II@Z: %agg.result"}
!93 = distinct !{!93, !"\01?GetLightGridVolumeTransformParamsStatic@@YA?AULightGridVolumeTransformParams@@II@Z"}
!94 = distinct !{!94, !95, !"\01?GetLightGridVolumeTransformParams@@YA?AULightGridVolumeTransformParams@@II@Z: %agg.result"}
!95 = distinct !{!95, !"\01?GetLightGridVolumeTransformParams@@YA?AULightGridVolumeTransformParams@@II@Z"}
!96 = distinct !{!96, !"dx.controlflow.hints", i32 1}
!97 = distinct !{!97, !"dx.controlflow.hints", i32 1}
!98 = distinct !{!98, !"dx.controlflow.hints", i32 1}
!99 = distinct !{!99, !"dx.controlflow.hints", i32 1}
!100 = distinct !{!100, !"dx.controlflow.hints", i32 1}
!101 = distinct !{!101, !"dx.controlflow.hints", i32 1}
!102 = distinct !{!102, !"dx.controlflow.hints", i32 1}
!103 = distinct !{!103, !"dx.controlflow.hints", i32 1}
!104 = distinct !{!104, !105}
!105 = !{!"llvm.loop.unroll.disable"}
!106 = distinct !{!106, !"dx.controlflow.hints", i32 1}
!107 = distinct !{!107, !"dx.controlflow.hints", i32 1}
!108 = distinct !{!108, !"dx.controlflow.hints", i32 1}
!109 = distinct !{!109, !"dx.controlflow.hints", i32 1}
!110 = distinct !{!110, !"dx.controlflow.hints", i32 1}
!111 = !{!112, !112, i64 0}
!112 = !{!"int", !113, i64 0}
!113 = !{!"omnipotent char", !114, i64 0}
!114 = !{!"Simple C/C++ TBAA"}
!115 = !{!116, !118, !120, !122}
!116 = distinct !{!116, !117, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!117 = distinct !{!117, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!118 = distinct !{!118, !119, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!119 = distinct !{!119, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!120 = distinct !{!120, !121, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z: %agg.result"}
!121 = distinct !{!121, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z"}
!122 = distinct !{!122, !123, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z: %agg.result"}
!123 = distinct !{!123, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z"}
!124 = distinct !{!124, !"dx.controlflow.hints", i32 1}
!125 = !{!126, !126, i64 0}
!126 = !{!"float", !113, i64 0}
!127 = distinct !{!127, !105}
!128 = distinct !{!128, !105}
!129 = distinct !{!129, !"dx.controlflow.hints", i32 1}
!130 = distinct !{!130, !"dx.controlflow.hints", i32 1}
!131 = distinct !{!131, !"dx.controlflow.hints", i32 1}
!132 = distinct !{!132, !"dx.controlflow.hints", i32 1}
!133 = distinct !{!133, !"dx.controlflow.hints", i32 1}
!134 = distinct !{!134, !"dx.controlflow.hints", i32 1}
!135 = distinct !{!135, !"dx.controlflow.hints", i32 1}
!136 = distinct !{!136, !"dx.controlflow.hints", i32 1}
!137 = distinct !{!137, !"dx.controlflow.hints", i32 1}

