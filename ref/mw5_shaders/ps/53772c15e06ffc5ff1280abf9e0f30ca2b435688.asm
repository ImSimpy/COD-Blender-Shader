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
; LGV_IS_STATIC            0   x           7     NONE   float   x   
; WGV_TEXCOORD             0    yzw        7     NONE   float       
; WGV_NORMAL               0   xyzw        8     NONE   float       
; SECONDARY_TEXCOORDS      0   xy          9     NONE   float       
; SCEONDARY_NORMAL         0   xyzw       10     NONE   float       
; OBJECT_POSITION          0   xyzw       11     NONE   float       
; DECAL_VOLUME_GRID_INDEX     0   x          12     NONE    uint       
; SV_IsFrontFace           0    y         12    FFACE    uint    y  
; PACKED_TRI_DATA          0   xyzw       13     NONE    uint   x   
; SV_SampleIndex           0    N/A  special   SAMPLE    uint     NO
;
;
; Output signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Target                0   xyzw        0   TARGET   float   xyzw
;
; shader hash: b87daeb0096489cfe92d59a66f7b9261
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
;                                   sampler      NA          NA      S1             s1     1
;                                   sampler      NA          NA      S2             s2     1
;                                   sampler      NA          NA      S3             s3     1
;                                   sampler      NA          NA      S4             s4     1
;                                   sampler      NA          NA      S5             s5     1
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
;                                   texture    byte         r/o     T17      t3,space1     1
;                                   texture    byte         r/o     T18      t4,space1     1
;                                   texture    byte         r/o     T19      t5,space1     1
;                                   texture    byte         r/o     T20      t6,space1     1
;                                   texture     f32          2d     T21     t69,space2     1
;                                   texture     f32          2d     T22     t37,space2     1
;                                   texture     f32     2darray     T23     t35,space2     1
;                                   texture     f32          3d     T24     t31,space2     1
;                                   texture    byte         r/o     T25     t10,space1     1
;                                   texture    byte         r/o     T26      t1,space1     1
;                                   texture     f32          1d     T27     t32,space2     1
;                                   texture     f32     2darray     T28      t8,space2     1
;                                   texture     f32          2d     T29      t1,space2     1
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
;
;
; ViewId state:
;
; Number of inputs: 56, outputs: 4
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 3, 8, 9, 11, 12, 13, 14, 15, 27, 28, 49, 52 }
;   output 1 depends on inputs: { 0, 1, 3, 8, 9, 11, 12, 13, 14, 15, 27, 28, 49, 52 }
;   output 2 depends on inputs: { 0, 1, 3, 8, 9, 11, 12, 13, 14, 15, 27, 28, 49, 52 }
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
%hostlayout.stable = type { [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float> }
%struct.SamplerComparisonState = type { i32 }
%struct.SamplerState = type { i32 }

@PCF_OFFSETS_8.v.1dim = internal constant [16 x float] [float 0xBFE6A09020000000, float 0x3FE6A09020000000, float 0.000000e+00, float -8.750000e-01, float 0x3FE0F837C0000000, float 0x3FE0F837C0000000, float -6.250000e-01, float 0.000000e+00, float 0x3FD6A161E0000000, float 0xBFD6A161E0000000, float 0.000000e+00, float 3.750000e-01, float 0xBFC6A161E0000000, float 0xBFC6A161E0000000, float 1.250000e-01, float 0.000000e+00], align 4

define void @ps_main() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 40, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 39, i32 12, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 38, i32 38, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 37, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 36, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 35, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 34, i32 67, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 33, i32 80, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 32, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 31, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 30, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 29, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 28, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 27, i32 32, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 26, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 25, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 24, i32 31, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 23, i32 35, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 22, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 21, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 20, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 19, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 18, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 18, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %27 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %28 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 14, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %29 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 15, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %30 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %31 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 33, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %32 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 20, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %33 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 19, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %34 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 60, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %35 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 59, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %36 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 22, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %37 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 21, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %38 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 63, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %39 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 62, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %40 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %41 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 5, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %42 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 4, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %43 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %44 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %45 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %46 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %47 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %48 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %49 = alloca [4 x i32], align 4
  %50 = call i32 @dx.op.loadInput.i32(i32 4, i32 16, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %51 = icmp ne i32 %50, 0
  %52 = call i32 @dx.op.loadInput.i32(i32 4, i32 15, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %53 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %54 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %55 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %56 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %57 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %58 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %59 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %60 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %61 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %62 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %63 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %64 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %65 = alloca [12 x float], align 4
  %66 = alloca [12 x float], align 4
  %67 = alloca [4 x float], align 4
  %68 = alloca [4 x float], align 4
  %69 = alloca [4 x float], align 4
  %70 = alloca [4 x float], align 4
  %71 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 16)  ; CBufferLoadLegacy(handle,regIndex)
  %72 = extractvalue %dx.types.CBufRet.f32 %71, 0
  %73 = fmul fast float %72, %62
  %74 = fmul fast float %72, %63
  %75 = select i1 %51, float 1.000000e+00, float -1.000000e+00
  %76 = call float @dx.op.dot3.f32(i32 55, float %56, float %57, float %58, float %56, float %57, float %58)  ; Dot3(ax,ay,az,bx,by,bz)
  %77 = bitcast float %76 to i32
  %78 = ashr i32 %77, 1
  %79 = sub nsw i32 1597250115, %78
  %80 = bitcast i32 %79 to float
  %81 = fmul fast float %56, %75
  %82 = fmul fast float %81, %80
  %83 = fmul fast float %57, %75
  %84 = fmul fast float %83, %80
  %85 = fmul fast float %58, %75
  %86 = fmul fast float %85, %80
  %87 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %88 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %89 = extractvalue %dx.types.CBufRet.i32 %88, 3
  %90 = and i32 %89, 3
  %91 = icmp ne i32 %90, 0
  %92 = and i32 %89, 4
  %93 = icmp ne i32 %92, 0
  %94 = and i1 %91, %93
  br i1 %94, label %95, label %106

; <label>:95                                      ; preds = %0
  %96 = extractvalue %dx.types.CBufRet.f32 %87, 3
  %97 = fmul fast float %96, %74
  %98 = extractvalue %dx.types.CBufRet.f32 %87, 2
  %99 = fmul fast float %98, %73
  %100 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %44, float %99, float %97, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %101 = extractvalue %dx.types.ResRet.f32 %100, 0
  %102 = fsub fast float 1.000000e+00, %101
  %103 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %104 = extractvalue %dx.types.CBufRet.f32 %103, 0
  %105 = fcmp fast olt float %102, %104
  br label %109

; <label>:106                                     ; preds = %0
  %107 = icmp eq i32 %92, 0
  %108 = and i1 %91, %107
  br label %109

; <label>:109                                     ; preds = %106, %95
  %110 = phi i1 [ %105, %95 ], [ %108, %106 ]
  %111 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %112 = extractvalue %dx.types.CBufRet.f32 %111, 2
  %113 = fmul fast float %112, 0x3FE3C6EF40000000
  %114 = frem fast float %73, 2.560000e+02
  %115 = frem fast float %74, 2.560000e+02
  %116 = fptoui float %114 to i32
  %117 = fptoui float %115 to i32
  %118 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %19, i32 0, i32 %116, i32 %117, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %119 = extractvalue %dx.types.ResRet.f32 %118, 0
  %120 = fadd fast float %119, %113
  %121 = call float @dx.op.unary.f32(i32 22, float %120)  ; Frc(value)
  %122 = add i32 %52, 60
  %123 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %122, i32 undef)  ; BufferLoad(srv,index,wot)
  %124 = extractvalue %dx.types.ResRet.i32 %123, 0
  %125 = add i32 %124, 0
  %126 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %125, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %127 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %126, i32 0)  ; GetDimensions(handle,mipLevel)
  %128 = extractvalue %dx.types.Dimensions %127, 0
  %129 = sitofp i32 %128 to float
  %130 = extractvalue %dx.types.Dimensions %127, 1
  %131 = sitofp i32 %130 to float
  %132 = fmul fast float %129, %59
  %133 = call float @dx.op.unary.f32(i32 83, float %132)  ; DerivCoarseX(value)
  %134 = call float @dx.op.unary.f32(i32 84, float %132)  ; DerivCoarseY(value)
  %135 = fmul fast float %131, %60
  %136 = call float @dx.op.unary.f32(i32 83, float %135)  ; DerivCoarseX(value)
  %137 = call float @dx.op.unary.f32(i32 84, float %135)  ; DerivCoarseY(value)
  %138 = fmul fast float %136, %136
  %139 = fmul fast float %137, %137
  %140 = fadd fast float %139, %138
  %141 = fmul fast float %136, %133
  %142 = fmul fast float %137, %134
  %143 = fadd fast float %142, %141
  %144 = fmul fast float %133, %133
  %145 = fmul fast float %134, %134
  %146 = fadd fast float %145, %144
  %147 = fmul fast float %140, %146
  %148 = fmul fast float %143, %143
  %149 = fsub fast float %147, %148
  %150 = bitcast float %149 to i32
  %151 = fadd fast float %140, %146
  %152 = bitcast float %151 to i32
  %153 = sub i32 8388608, %152
  %154 = add i32 %153, %150
  %155 = ashr i32 %154, 24
  %156 = sitofp i32 %155 to float
  %157 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %122, i32 undef)  ; BufferLoad(srv,index,wot)
  %158 = extractvalue %dx.types.ResRet.i32 %157, 0
  %159 = add i32 %158, 0
  %160 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %159, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %161 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %160, %dx.types.Handle %44, float %59, float %60, float undef, float undef, i32 0, i32 0, i32 undef, float %156)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %162 = extractvalue %dx.types.ResRet.f32 %161, 0
  %163 = extractvalue %dx.types.ResRet.f32 %161, 1
  %164 = extractvalue %dx.types.ResRet.f32 %161, 2
  %165 = fmul fast float %162, 2.000000e+00
  %166 = fmul fast float %163, 2.000000e+00
  %167 = fmul fast float %164, 2.000000e+00
  %168 = fadd fast float %165, -1.000000e+00
  %169 = fadd fast float %166, -1.000000e+00
  %170 = fadd fast float %167, -1.000000e+00
  br i1 %51, label %180, label %171

; <label>:171                                     ; preds = %109
  %172 = call float @dx.op.dot3.f32(i32 55, float %82, float %84, float %86, float %168, float %169, float %170)  ; Dot3(ax,ay,az,bx,by,bz)
  %173 = fmul fast float %172, 2.000000e+00
  %174 = fmul fast float %173, %82
  %175 = fmul fast float %173, %84
  %176 = fmul fast float %173, %86
  %177 = fsub fast float %168, %174
  %178 = fsub fast float %169, %175
  %179 = fsub fast float %170, %176
  br label %180

; <label>:180                                     ; preds = %171, %109
  %181 = phi float [ %177, %171 ], [ %168, %109 ]
  %182 = phi float [ %178, %171 ], [ %169, %109 ]
  %183 = phi float [ %179, %171 ], [ %170, %109 ]
  %184 = add i32 %52, 56
  %185 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %184, i32 undef)  ; BufferLoad(srv,index,wot)
  %186 = extractvalue %dx.types.ResRet.i32 %185, 0
  %187 = add i32 %186, 0
  %188 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %187, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %189 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %188, %dx.types.Handle %44, float %59, float %60, float undef, float undef, i32 0, i32 0, i32 undef, float %156)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %190 = extractvalue %dx.types.ResRet.f32 %189, 0
  %191 = extractvalue %dx.types.ResRet.f32 %189, 1
  %192 = extractvalue %dx.types.ResRet.f32 %189, 2
  %193 = extractvalue %dx.types.ResRet.f32 %189, 3
  %194 = add i32 %52, 64
  %195 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %194, i32 undef)  ; BufferLoad(srv,index,wot)
  %196 = extractvalue %dx.types.ResRet.i32 %195, 0
  %197 = add i32 %196, 0
  %198 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %197, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %199 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %198, %dx.types.Handle %44, float %59, float %60, float undef, float undef, i32 0, i32 0, i32 undef, float %156)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %200 = extractvalue %dx.types.ResRet.f32 %199, 0
  %201 = extractvalue %dx.types.ResRet.f32 %199, 1
  %202 = extractvalue %dx.types.ResRet.f32 %199, 2
  %203 = extractvalue %dx.types.ResRet.f32 %199, 3
  %204 = add i32 %52, 68
  %205 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %204, i32 undef)  ; BufferLoad(srv,index,wot)
  %206 = extractvalue %dx.types.ResRet.i32 %205, 0
  %207 = add i32 %206, 0
  %208 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %207, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %209 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %208, %dx.types.Handle %44, float %59, float %60, float undef, float undef, i32 0, i32 0, i32 undef, float %156)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %210 = extractvalue %dx.types.ResRet.f32 %209, 0
  %211 = add i32 %52, 72
  %212 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %211, i32 undef)  ; BufferLoad(srv,index,wot)
  %213 = extractvalue %dx.types.ResRet.i32 %212, 0
  %214 = add i32 %213, 0
  %215 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %214, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %216 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %215, %dx.types.Handle %44, float %59, float %60, float undef, float undef, i32 0, i32 0, i32 undef, float %156)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %217 = extractvalue %dx.types.ResRet.f32 %216, 0
  %218 = fadd fast float %55, 1.000000e+00
  %219 = add i32 %52, 24
  %220 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %219, i32 undef)  ; BufferLoad(srv,index,wot)
  %221 = extractvalue %dx.types.ResRet.i32 %220, 2
  %222 = bitcast i32 %221 to float
  %223 = fmul fast float %217, 2.000000e+00
  %224 = fsub fast float %218, %223
  %225 = fmul fast float %222, %224
  %226 = fadd fast float %225, %64
  %227 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %228 = extractvalue %dx.types.CBufRet.f32 %227, 2
  %229 = extractvalue %dx.types.CBufRet.f32 %227, 3
  %230 = fmul fast float %73, 2.000000e+00
  %231 = fmul fast float %230, %228
  %232 = fmul fast float %74, 2.000000e+00
  %233 = fmul fast float %232, %229
  %234 = fsub fast float 1.000000e+00, %231
  %235 = fsub fast float 1.000000e+00, %233
  %236 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %237 = extractvalue %dx.types.CBufRet.f32 %236, 0
  %238 = extractvalue %dx.types.CBufRet.f32 %236, 1
  %239 = extractvalue %dx.types.CBufRet.f32 %236, 2
  %240 = fmul fast float %234, %237
  %241 = fmul fast float %234, %238
  %242 = fmul fast float %234, %239
  %243 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %244 = extractvalue %dx.types.CBufRet.f32 %243, 0
  %245 = extractvalue %dx.types.CBufRet.f32 %243, 1
  %246 = extractvalue %dx.types.CBufRet.f32 %243, 2
  %247 = fmul fast float %235, %244
  %248 = fmul fast float %235, %245
  %249 = fmul fast float %235, %246
  %250 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %251 = extractvalue %dx.types.CBufRet.f32 %250, 0
  %252 = extractvalue %dx.types.CBufRet.f32 %250, 1
  %253 = extractvalue %dx.types.CBufRet.f32 %250, 2
  %254 = fadd fast float %247, %251
  %255 = fadd fast float %254, %240
  %256 = fadd fast float %248, %252
  %257 = fadd fast float %256, %241
  %258 = fadd fast float %249, %253
  %259 = fadd fast float %258, %242
  %260 = fmul fast float %255, %226
  %261 = fmul fast float %257, %226
  %262 = fmul fast float %259, %226
  %263 = call float @dx.op.unary.f32(i32 26, float %54)  ; Round_ne(value)
  %264 = fptoui float %263 to i32
  %265 = shl i32 %264, 6
  %266 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %267 = extractvalue %dx.types.CBufRet.f32 %266, 0
  %268 = extractvalue %dx.types.CBufRet.f32 %266, 1
  %269 = extractvalue %dx.types.CBufRet.f32 %266, 2
  %270 = fadd fast float %260, %267
  %271 = fadd fast float %261, %268
  %272 = fadd fast float %262, %269
  %273 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %265, i32 undef)  ; BufferLoad(srv,index,wot)
  %274 = extractvalue %dx.types.ResRet.f32 %273, 0
  %275 = extractvalue %dx.types.ResRet.f32 %273, 1
  %276 = extractvalue %dx.types.ResRet.f32 %273, 2
  %277 = extractvalue %dx.types.ResRet.f32 %273, 3
  %278 = call float @dx.op.dot4.f32(i32 56, float %274, float %275, float %276, float %277, float %270, float %271, float %272, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %279 = or i32 %265, 16
  %280 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %279, i32 undef)  ; BufferLoad(srv,index,wot)
  %281 = extractvalue %dx.types.ResRet.f32 %280, 0
  %282 = extractvalue %dx.types.ResRet.f32 %280, 1
  %283 = extractvalue %dx.types.ResRet.f32 %280, 2
  %284 = extractvalue %dx.types.ResRet.f32 %280, 3
  %285 = call float @dx.op.dot4.f32(i32 56, float %281, float %282, float %283, float %284, float %270, float %271, float %272, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %286 = or i32 %265, 32
  %287 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %286, i32 undef)  ; BufferLoad(srv,index,wot)
  %288 = extractvalue %dx.types.ResRet.f32 %287, 0
  %289 = extractvalue %dx.types.ResRet.f32 %287, 1
  %290 = extractvalue %dx.types.ResRet.f32 %287, 2
  %291 = extractvalue %dx.types.ResRet.f32 %287, 3
  %292 = call float @dx.op.dot4.f32(i32 56, float %288, float %289, float %290, float %291, float %270, float %271, float %272, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %293 = fadd fast float %210, 0xBFB99999A0000000
  %294 = call float @dx.op.unary.f32(i32 7, float %293)  ; Saturate(value)
  %295 = fmul fast float %294, 0x3FF1C71C80000000
  %296 = call float @dx.op.binary.f32(i32 36, float %210, float 0x3FB99999A0000000)  ; FMin(a,b)
  %297 = fsub fast float 1.000000e+00, %295
  %298 = call float @dx.op.unary.f32(i32 7, float %297)  ; Saturate(value)
  %299 = fmul fast float %298, %190
  %300 = fmul fast float %298, %191
  %301 = fmul fast float %298, %192
  %302 = call float @dx.op.unary.f32(i32 7, float %299)  ; Saturate(value)
  %303 = call float @dx.op.unary.f32(i32 7, float %300)  ; Saturate(value)
  %304 = call float @dx.op.unary.f32(i32 7, float %301)  ; Saturate(value)
  %305 = fmul fast float %295, %190
  %306 = fmul fast float %295, %191
  %307 = fmul fast float %295, %192
  %308 = fadd fast float %305, %296
  %309 = fadd fast float %306, %296
  %310 = fadd fast float %307, %296
  %311 = call float @dx.op.unary.f32(i32 7, float %308)  ; Saturate(value)
  %312 = call float @dx.op.unary.f32(i32 7, float %309)  ; Saturate(value)
  %313 = call float @dx.op.unary.f32(i32 7, float %310)  ; Saturate(value)
  %314 = call float @dx.op.dot3.f32(i32 55, float %302, float %303, float %304, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %315 = fmul fast float %314, 1.875000e-01
  %316 = fadd fast float %315, 0x3FE647AE20000000
  %317 = call float @dx.op.unary.f32(i32 7, float %316)  ; Saturate(value)
  %318 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %319 = extractvalue %dx.types.CBufRet.f32 %318, 0
  %320 = fsub fast float -0.000000e+00, %262
  %321 = call float @dx.op.dot3.f32(i32 55, float %260, float %261, float %262, float %260, float %261, float %262)  ; Dot3(ax,ay,az,bx,by,bz)
  %322 = call float @dx.op.unary.f32(i32 25, float %321)  ; Rsqrt(value)
  %323 = fmul fast float %322, %260
  %324 = fmul fast float %322, %261
  %325 = fmul fast float %322, %262
  %326 = fsub fast float -0.000000e+00, %323
  %327 = fsub fast float -0.000000e+00, %324
  %328 = fsub fast float -0.000000e+00, %325
  %329 = select i1 %110, float 0.000000e+00, float %313
  %330 = call float @dx.op.dot3.f32(i32 55, float %181, float %182, float %183, float %326, float %327, float %328)  ; Dot3(ax,ay,az,bx,by,bz)
  %331 = call float @dx.op.unary.f32(i32 7, float %330)  ; Saturate(value)
  %332 = call float @dx.op.dot3.f32(i32 55, float %323, float %324, float %325, float %181, float %182, float %183)  ; Dot3(ax,ay,az,bx,by,bz)
  %333 = fmul fast float %332, 2.000000e+00
  %334 = fmul fast float %333, %181
  %335 = fmul fast float %333, %182
  %336 = fmul fast float %333, %183
  %337 = fsub fast float %323, %334
  %338 = fsub fast float %324, %335
  %339 = fsub fast float %325, %336
  %340 = call float @dx.op.binary.f32(i32 36, float 1.000000e+00, float %203)  ; FMin(a,b)
  %341 = fsub fast float 1.000000e+00, %340
  %342 = bitcast float %341 to i32
  %343 = ashr i32 %342, 1
  %344 = add nsw i32 %343, 532487669
  %345 = bitcast i32 %344 to float
  %346 = fsub fast float 1.000000e+00, %193
  %347 = call float @dx.op.binary.f32(i32 35, float %346, float 0x3F847AE140000000)  ; FMax(a,b)
  %348 = fmul fast float %347, %347
  %349 = fmul fast float %348, %348
  %350 = call float @dx.op.unary.f32(i32 7, float %331)  ; Saturate(value)
  %351 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %44, float %345, float %349, float %350, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %352 = extractvalue %dx.types.ResRet.f32 %351, 0
  %353 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %354 = extractvalue %dx.types.CBufRet.f32 %353, 0
  %355 = extractvalue %dx.types.CBufRet.f32 %353, 1
  %356 = fadd fast float %354, %260
  %357 = fadd fast float %355, %261
  %358 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 260)  ; CBufferLoadLegacy(handle,regIndex)
  %359 = extractvalue %dx.types.CBufRet.i32 %358, 0
  %360 = icmp eq i32 %359, 1
  br i1 %360, label %361, label %396

; <label>:361                                     ; preds = %180
  %362 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %363 = extractvalue %dx.types.CBufRet.f32 %362, 0
  %364 = extractvalue %dx.types.CBufRet.f32 %362, 1
  %365 = fsub fast float %356, %363
  %366 = fsub fast float %357, %364
  %367 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %368 = extractvalue %dx.types.CBufRet.f32 %367, 0
  %369 = extractvalue %dx.types.CBufRet.f32 %367, 1
  %370 = fmul fast float %365, %368
  %371 = fmul fast float %366, %369
  %372 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %28, %dx.types.Handle %44, float %370, float %371, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %373 = extractvalue %dx.types.ResRet.f32 %372, 0
  %374 = fcmp fast ogt float %373, 0.000000e+00
  %375 = extractvalue %dx.types.CBufRet.i32 %358, 3
  %376 = icmp ne i32 %375, 0
  %377 = and i1 %374, %376
  br i1 %377, label %378, label %396, !dx.controlflow.hints !92

; <label>:378                                     ; preds = %361
  %379 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %380 = extractvalue %dx.types.CBufRet.f32 %379, 0
  %381 = extractvalue %dx.types.CBufRet.f32 %379, 1
  %382 = fsub fast float %356, %380
  %383 = fsub fast float %357, %381
  %384 = fmul fast float %382, %382
  %385 = fmul fast float %383, %383
  %386 = fadd fast float %384, %385
  %387 = uitofp i32 %375 to float
  %388 = fmul fast float %387, %387
  %389 = fcmp fast ogt float %386, %388
  br i1 %389, label %396, label %390

; <label>:390                                     ; preds = %378
  %391 = call float @dx.op.unary.f32(i32 24, float %386)  ; Sqrt(value)
  %392 = fsub fast float %387, %391
  %393 = fmul fast float %392, 0x3F75555560000000
  %394 = call float @dx.op.unary.f32(i32 7, float %393)  ; Saturate(value)
  %395 = call float @dx.op.binary.f32(i32 36, float %394, float %373)  ; FMin(a,b)
  br label %396

; <label>:396                                     ; preds = %390, %378, %361, %180
  %397 = phi float [ 1.000000e+00, %180 ], [ %395, %390 ], [ %373, %361 ], [ 0.000000e+00, %378 ]
  %398 = fcmp fast ogt float %397, 0.000000e+00
  br i1 %398, label %399, label %934, !dx.controlflow.hints !93

; <label>:399                                     ; preds = %396
  %400 = fadd fast float %54, 5.000000e-01
  %401 = fptoui float %400 to i32
  %402 = fcmp fast une float %53, 0.000000e+00
  br i1 %402, label %403, label %455

; <label>:403                                     ; preds = %399
  %404 = fadd fast float %61, 5.000000e-01
  %405 = fptoui float %404 to i32
  %406 = shl i32 %405, 3
  %407 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %406, i32 undef)  ; BufferLoad(srv,index,wot)
  %408 = extractvalue %dx.types.ResRet.i32 %407, 0
  %409 = or i32 %406, 4
  %410 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %409, i32 undef)  ; BufferLoad(srv,index,wot)
  %411 = extractvalue %dx.types.ResRet.i32 %410, 0
  %412 = and i32 %411, 16777215
  %413 = add i32 %412, %401
  %414 = shl i32 %413, 5
  %415 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %414, i32 undef)  ; BufferLoad(srv,index,wot)
  %416 = extractvalue %dx.types.ResRet.f32 %415, 0
  %417 = extractvalue %dx.types.ResRet.f32 %415, 1
  %418 = extractvalue %dx.types.ResRet.f32 %415, 2
  %419 = or i32 %414, 16
  %420 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %419, i32 undef)  ; BufferLoad(srv,index,wot)
  %421 = extractvalue %dx.types.ResRet.f32 %420, 0
  %422 = extractvalue %dx.types.ResRet.f32 %420, 1
  %423 = extractvalue %dx.types.ResRet.f32 %420, 2
  %424 = lshr i32 %411, 24
  %425 = and i32 %424, 3
  %426 = add nuw nsw i32 %425, 3
  %427 = shl i32 1, %426
  %428 = lshr i32 %411, 29
  %429 = lshr i32 %411, 23
  %430 = and i32 %429, 56
  %431 = shl nuw nsw i32 %428, 3
  %432 = lshr i32 %408, 16
  %433 = and i32 %408, 65535
  %434 = uitofp i32 %427 to float
  %435 = fmul fast float %434, 1.562500e-02
  %436 = uitofp i32 %432 to float
  %437 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 302)  ; CBufferLoadLegacy(handle,regIndex)
  %438 = extractvalue %dx.types.CBufRet.f32 %437, 3
  %439 = fmul fast float %438, %436
  %440 = uitofp i32 %430 to float
  %441 = fmul fast float %440, 1.562500e-02
  %442 = uitofp i32 %431 to float
  %443 = fmul fast float %442, 1.562500e-02
  %444 = uitofp i32 %433 to float
  %445 = fmul fast float %438, %444
  %446 = fmul fast float %435, %416
  %447 = fmul fast float %435, %417
  %448 = fmul fast float %439, %418
  %449 = fmul fast float %435, %421
  %450 = fmul fast float %435, %422
  %451 = fmul fast float %439, %423
  %452 = fadd fast float %449, %441
  %453 = fadd fast float %450, %443
  %454 = fadd fast float %451, %445
  br label %466

; <label>:455                                     ; preds = %399
  %456 = shl i32 %401, 5
  %457 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %456, i32 undef)  ; BufferLoad(srv,index,wot)
  %458 = extractvalue %dx.types.ResRet.f32 %457, 0
  %459 = extractvalue %dx.types.ResRet.f32 %457, 1
  %460 = extractvalue %dx.types.ResRet.f32 %457, 2
  %461 = or i32 %456, 16
  %462 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %461, i32 undef)  ; BufferLoad(srv,index,wot)
  %463 = extractvalue %dx.types.ResRet.f32 %462, 0
  %464 = extractvalue %dx.types.ResRet.f32 %462, 1
  %465 = extractvalue %dx.types.ResRet.f32 %462, 2
  br label %466

; <label>:466                                     ; preds = %455, %403
  %467 = phi float [ %452, %403 ], [ %463, %455 ]
  %468 = phi float [ %453, %403 ], [ %464, %455 ]
  %469 = phi float [ %454, %403 ], [ %465, %455 ]
  %470 = phi float [ %446, %403 ], [ %458, %455 ]
  %471 = phi float [ %447, %403 ], [ %459, %455 ]
  %472 = phi float [ %448, %403 ], [ %460, %455 ]
  %473 = call float @dx.op.unary.f32(i32 7, float %278)  ; Saturate(value)
  %474 = call float @dx.op.unary.f32(i32 7, float %285)  ; Saturate(value)
  %475 = call float @dx.op.unary.f32(i32 7, float %292)  ; Saturate(value)
  %476 = fmul fast float %473, %470
  %477 = fmul fast float %474, %471
  %478 = fmul fast float %475, %472
  %479 = fadd fast float %476, %467
  %480 = fadd fast float %477, %468
  %481 = fadd fast float %478, %469
  %482 = fmul fast float %479, 5.000000e-01
  %483 = fmul fast float %480, 0x3FD5555560000000
  %484 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %485 = extractvalue %dx.types.CBufRet.f32 %484, 3
  %486 = fadd fast float %482, 5.000000e-01
  %487 = fadd fast float %483, 0x3FD5555560000000
  %488 = fadd fast float %483, 0x3FE5555560000000
  br i1 %402, label %489, label %599

; <label>:489                                     ; preds = %466
  %490 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %37, %dx.types.Handle %42, float %479, float %480, float %481, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %491 = extractvalue %dx.types.ResRet.f32 %490, 0
  %492 = extractvalue %dx.types.ResRet.f32 %490, 1
  %493 = extractvalue %dx.types.ResRet.f32 %490, 2
  %494 = fmul fast float %485, %491
  %495 = fmul fast float %485, %492
  %496 = fmul fast float %485, %493
  %497 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %36, %dx.types.Handle %42, float %482, float %483, float %481, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %498 = extractvalue %dx.types.ResRet.f32 %497, 0
  %499 = extractvalue %dx.types.ResRet.f32 %497, 1
  %500 = extractvalue %dx.types.ResRet.f32 %497, 2
  %501 = extractvalue %dx.types.ResRet.f32 %497, 3
  %502 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %36, %dx.types.Handle %42, float %486, float %483, float %481, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %503 = extractvalue %dx.types.ResRet.f32 %502, 0
  %504 = extractvalue %dx.types.ResRet.f32 %502, 1
  %505 = extractvalue %dx.types.ResRet.f32 %502, 2
  %506 = extractvalue %dx.types.ResRet.f32 %502, 3
  %507 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %36, %dx.types.Handle %42, float %482, float %487, float %481, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %508 = extractvalue %dx.types.ResRet.f32 %507, 0
  %509 = extractvalue %dx.types.ResRet.f32 %507, 1
  %510 = extractvalue %dx.types.ResRet.f32 %507, 2
  %511 = extractvalue %dx.types.ResRet.f32 %507, 3
  %512 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %36, %dx.types.Handle %42, float %486, float %487, float %481, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %513 = extractvalue %dx.types.ResRet.f32 %512, 0
  %514 = extractvalue %dx.types.ResRet.f32 %512, 1
  %515 = extractvalue %dx.types.ResRet.f32 %512, 2
  %516 = extractvalue %dx.types.ResRet.f32 %512, 3
  %517 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %36, %dx.types.Handle %42, float %482, float %488, float %481, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %518 = extractvalue %dx.types.ResRet.f32 %517, 0
  %519 = extractvalue %dx.types.ResRet.f32 %517, 1
  %520 = extractvalue %dx.types.ResRet.f32 %517, 2
  %521 = extractvalue %dx.types.ResRet.f32 %517, 3
  %522 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %36, %dx.types.Handle %42, float %486, float %488, float %481, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %523 = extractvalue %dx.types.ResRet.f32 %522, 0
  %524 = extractvalue %dx.types.ResRet.f32 %522, 1
  %525 = extractvalue %dx.types.ResRet.f32 %522, 2
  %526 = extractvalue %dx.types.ResRet.f32 %522, 3
  %527 = fmul fast float %498, 0x400BB67AE0000000
  %528 = fadd fast float %527, 0xBFFBB67AE0000000
  %529 = fmul fast float %528, %494
  %530 = fmul fast float %499, 0x400BB67AE0000000
  %531 = fadd fast float %530, 0xBFFBB67AE0000000
  %532 = fmul fast float %531, %495
  %533 = fmul fast float %500, 0x400BB67AE0000000
  %534 = fadd fast float %533, 0xBFFBB67AE0000000
  %535 = fmul fast float %534, %496
  %536 = fmul fast float %501, 0x4011E377A0000000
  %537 = fadd fast float %536, 0xC001E377A0000000
  %538 = fmul fast float %537, %494
  %539 = fmul fast float %503, 0x4011E377A0000000
  %540 = fadd fast float %539, 0xC001E377A0000000
  %541 = fmul fast float %540, %495
  %542 = fmul fast float %504, 0x4011E377A0000000
  %543 = fadd fast float %542, 0xC001E377A0000000
  %544 = fmul fast float %543, %496
  %545 = fmul fast float %505, 0x400BB67AE0000000
  %546 = fadd fast float %545, 0xBFFBB67AE0000000
  %547 = fmul fast float %546, %494
  %548 = fmul fast float %506, 0x400BB67AE0000000
  %549 = fadd fast float %548, 0xBFFBB67AE0000000
  %550 = fmul fast float %549, %495
  %551 = fmul fast float %508, 0x400BB67AE0000000
  %552 = fadd fast float %551, 0xBFFBB67AE0000000
  %553 = fmul fast float %552, %496
  %554 = fmul fast float %509, 0x400BB67AE0000000
  %555 = fadd fast float %554, 0xBFFBB67AE0000000
  %556 = fmul fast float %555, %494
  %557 = fmul fast float %510, 0x400BB67AE0000000
  %558 = fadd fast float %557, 0xBFFBB67AE0000000
  %559 = fmul fast float %558, %495
  %560 = fmul fast float %511, 0x400BB67AE0000000
  %561 = fadd fast float %560, 0xBFFBB67AE0000000
  %562 = fmul fast float %561, %496
  %563 = fmul fast float %513, 0x400EFBDEC0000000
  %564 = fadd fast float %563, 0xBFFEFBDEC0000000
  %565 = fmul fast float %564, %494
  %566 = fmul fast float %514, 0x400EFBDEC0000000
  %567 = fadd fast float %566, 0xBFFEFBDEC0000000
  %568 = fmul fast float %567, %495
  %569 = fmul fast float %515, 0x400EFBDEC0000000
  %570 = fadd fast float %569, 0xBFFEFBDEC0000000
  %571 = fmul fast float %570, %496
  %572 = fmul fast float %516, 0x400EFBDEC0000000
  %573 = fadd fast float %572, 0xBFFEFBDEC0000000
  %574 = fmul fast float %573, %494
  %575 = fmul fast float %518, 0x400EFBDEC0000000
  %576 = fadd fast float %575, 0xBFFEFBDEC0000000
  %577 = fmul fast float %576, %495
  %578 = fmul fast float %519, 0x400EFBDEC0000000
  %579 = fadd fast float %578, 0xBFFEFBDEC0000000
  %580 = fmul fast float %579, %496
  %581 = fmul fast float %520, 0x400EFBDEC0000000
  %582 = fadd fast float %581, 0xBFFEFBDEC0000000
  %583 = fmul fast float %582, %494
  %584 = fmul fast float %521, 0x400EFBDEC0000000
  %585 = fadd fast float %584, 0xBFFEFBDEC0000000
  %586 = fmul fast float %585, %495
  %587 = fmul fast float %523, 0x400EFBDEC0000000
  %588 = fadd fast float %587, 0xBFFEFBDEC0000000
  %589 = fmul fast float %588, %496
  %590 = fmul fast float %524, 0x400EFBDEC0000000
  %591 = fadd fast float %590, 0xBFFEFBDEC0000000
  %592 = fmul fast float %591, %494
  %593 = fmul fast float %525, 0x400EFBDEC0000000
  %594 = fadd fast float %593, 0xBFFEFBDEC0000000
  %595 = fmul fast float %594, %495
  %596 = fmul fast float %526, 0x400EFBDEC0000000
  %597 = fadd fast float %596, 0xBFFEFBDEC0000000
  %598 = fmul fast float %597, %496
  br label %709

; <label>:599                                     ; preds = %466
  %600 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %42, float %479, float %480, float %481, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %601 = extractvalue %dx.types.ResRet.f32 %600, 0
  %602 = extractvalue %dx.types.ResRet.f32 %600, 1
  %603 = extractvalue %dx.types.ResRet.f32 %600, 2
  %604 = fmul fast float %485, %601
  %605 = fmul fast float %485, %602
  %606 = fmul fast float %485, %603
  %607 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %42, float %482, float %483, float %481, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %608 = extractvalue %dx.types.ResRet.f32 %607, 0
  %609 = extractvalue %dx.types.ResRet.f32 %607, 1
  %610 = extractvalue %dx.types.ResRet.f32 %607, 2
  %611 = extractvalue %dx.types.ResRet.f32 %607, 3
  %612 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %42, float %486, float %483, float %481, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %613 = extractvalue %dx.types.ResRet.f32 %612, 0
  %614 = extractvalue %dx.types.ResRet.f32 %612, 1
  %615 = extractvalue %dx.types.ResRet.f32 %612, 2
  %616 = extractvalue %dx.types.ResRet.f32 %612, 3
  %617 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %42, float %482, float %487, float %481, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %618 = extractvalue %dx.types.ResRet.f32 %617, 0
  %619 = extractvalue %dx.types.ResRet.f32 %617, 1
  %620 = extractvalue %dx.types.ResRet.f32 %617, 2
  %621 = extractvalue %dx.types.ResRet.f32 %617, 3
  %622 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %42, float %486, float %487, float %481, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %623 = extractvalue %dx.types.ResRet.f32 %622, 0
  %624 = extractvalue %dx.types.ResRet.f32 %622, 1
  %625 = extractvalue %dx.types.ResRet.f32 %622, 2
  %626 = extractvalue %dx.types.ResRet.f32 %622, 3
  %627 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %42, float %482, float %488, float %481, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %628 = extractvalue %dx.types.ResRet.f32 %627, 0
  %629 = extractvalue %dx.types.ResRet.f32 %627, 1
  %630 = extractvalue %dx.types.ResRet.f32 %627, 2
  %631 = extractvalue %dx.types.ResRet.f32 %627, 3
  %632 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %42, float %486, float %488, float %481, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %633 = extractvalue %dx.types.ResRet.f32 %632, 0
  %634 = extractvalue %dx.types.ResRet.f32 %632, 1
  %635 = extractvalue %dx.types.ResRet.f32 %632, 2
  %636 = extractvalue %dx.types.ResRet.f32 %632, 3
  %637 = fmul fast float %608, 0x400BB67AE0000000
  %638 = fadd fast float %637, 0xBFFBB67AE0000000
  %639 = fmul fast float %638, %604
  %640 = fmul fast float %609, 0x400BB67AE0000000
  %641 = fadd fast float %640, 0xBFFBB67AE0000000
  %642 = fmul fast float %641, %605
  %643 = fmul fast float %610, 0x400BB67AE0000000
  %644 = fadd fast float %643, 0xBFFBB67AE0000000
  %645 = fmul fast float %644, %606
  %646 = fmul fast float %611, 0x4011E377A0000000
  %647 = fadd fast float %646, 0xC001E377A0000000
  %648 = fmul fast float %647, %604
  %649 = fmul fast float %613, 0x4011E377A0000000
  %650 = fadd fast float %649, 0xC001E377A0000000
  %651 = fmul fast float %650, %605
  %652 = fmul fast float %614, 0x4011E377A0000000
  %653 = fadd fast float %652, 0xC001E377A0000000
  %654 = fmul fast float %653, %606
  %655 = fmul fast float %615, 0x400BB67AE0000000
  %656 = fadd fast float %655, 0xBFFBB67AE0000000
  %657 = fmul fast float %656, %604
  %658 = fmul fast float %616, 0x400BB67AE0000000
  %659 = fadd fast float %658, 0xBFFBB67AE0000000
  %660 = fmul fast float %659, %605
  %661 = fmul fast float %618, 0x400BB67AE0000000
  %662 = fadd fast float %661, 0xBFFBB67AE0000000
  %663 = fmul fast float %662, %606
  %664 = fmul fast float %619, 0x400BB67AE0000000
  %665 = fadd fast float %664, 0xBFFBB67AE0000000
  %666 = fmul fast float %665, %604
  %667 = fmul fast float %620, 0x400BB67AE0000000
  %668 = fadd fast float %667, 0xBFFBB67AE0000000
  %669 = fmul fast float %668, %605
  %670 = fmul fast float %621, 0x400BB67AE0000000
  %671 = fadd fast float %670, 0xBFFBB67AE0000000
  %672 = fmul fast float %671, %606
  %673 = fmul fast float %623, 0x400EFBDEC0000000
  %674 = fadd fast float %673, 0xBFFEFBDEC0000000
  %675 = fmul fast float %674, %604
  %676 = fmul fast float %624, 0x400EFBDEC0000000
  %677 = fadd fast float %676, 0xBFFEFBDEC0000000
  %678 = fmul fast float %677, %605
  %679 = fmul fast float %625, 0x400EFBDEC0000000
  %680 = fadd fast float %679, 0xBFFEFBDEC0000000
  %681 = fmul fast float %680, %606
  %682 = fmul fast float %626, 0x400EFBDEC0000000
  %683 = fadd fast float %682, 0xBFFEFBDEC0000000
  %684 = fmul fast float %683, %604
  %685 = fmul fast float %628, 0x400EFBDEC0000000
  %686 = fadd fast float %685, 0xBFFEFBDEC0000000
  %687 = fmul fast float %686, %605
  %688 = fmul fast float %629, 0x400EFBDEC0000000
  %689 = fadd fast float %688, 0xBFFEFBDEC0000000
  %690 = fmul fast float %689, %606
  %691 = fmul fast float %630, 0x400EFBDEC0000000
  %692 = fadd fast float %691, 0xBFFEFBDEC0000000
  %693 = fmul fast float %692, %604
  %694 = fmul fast float %631, 0x400EFBDEC0000000
  %695 = fadd fast float %694, 0xBFFEFBDEC0000000
  %696 = fmul fast float %695, %605
  %697 = fmul fast float %633, 0x400EFBDEC0000000
  %698 = fadd fast float %697, 0xBFFEFBDEC0000000
  %699 = fmul fast float %698, %606
  %700 = fmul fast float %634, 0x400EFBDEC0000000
  %701 = fadd fast float %700, 0xBFFEFBDEC0000000
  %702 = fmul fast float %701, %604
  %703 = fmul fast float %635, 0x400EFBDEC0000000
  %704 = fadd fast float %703, 0xBFFEFBDEC0000000
  %705 = fmul fast float %704, %605
  %706 = fmul fast float %636, 0x400EFBDEC0000000
  %707 = fadd fast float %706, 0xBFFEFBDEC0000000
  %708 = fmul fast float %707, %606
  br label %709

; <label>:709                                     ; preds = %599, %489
  %710 = phi float [ %699, %599 ], [ %589, %489 ]
  %711 = phi float [ %681, %599 ], [ %571, %489 ]
  %712 = phi float [ %654, %599 ], [ %544, %489 ]
  %713 = phi float [ %690, %599 ], [ %580, %489 ]
  %714 = phi float [ %708, %599 ], [ %598, %489 ]
  %715 = phi float [ %672, %599 ], [ %562, %489 ]
  %716 = phi float [ %645, %599 ], [ %535, %489 ]
  %717 = phi float [ %663, %599 ], [ %553, %489 ]
  %718 = phi float [ %606, %599 ], [ %496, %489 ]
  %719 = phi float [ %696, %599 ], [ %586, %489 ]
  %720 = phi float [ %678, %599 ], [ %568, %489 ]
  %721 = phi float [ %651, %599 ], [ %541, %489 ]
  %722 = phi float [ %687, %599 ], [ %577, %489 ]
  %723 = phi float [ %705, %599 ], [ %595, %489 ]
  %724 = phi float [ %669, %599 ], [ %559, %489 ]
  %725 = phi float [ %642, %599 ], [ %532, %489 ]
  %726 = phi float [ %660, %599 ], [ %550, %489 ]
  %727 = phi float [ %605, %599 ], [ %495, %489 ]
  %728 = phi float [ %693, %599 ], [ %583, %489 ]
  %729 = phi float [ %675, %599 ], [ %565, %489 ]
  %730 = phi float [ %648, %599 ], [ %538, %489 ]
  %731 = phi float [ %684, %599 ], [ %574, %489 ]
  %732 = phi float [ %702, %599 ], [ %592, %489 ]
  %733 = phi float [ %666, %599 ], [ %556, %489 ]
  %734 = phi float [ %639, %599 ], [ %529, %489 ]
  %735 = phi float [ %657, %599 ], [ %547, %489 ]
  %736 = phi float [ %604, %599 ], [ %494, %489 ]
  %737 = call float @dx.op.dot3.f32(i32 55, float %736, float %727, float %718, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %738 = fmul fast float %737, 0x3FD20DD760000000
  %739 = fmul fast float %736, 0x3FD20DD760000000
  %740 = fmul fast float %183, 0x3FD4D8D7C0000000
  %741 = fmul fast float %740, %734
  %742 = fmul fast float %183, %183
  %743 = fmul fast float %742, 0x3FEE471020000000
  %744 = fadd fast float %743, 0xBFD42F6020000000
  %745 = fmul fast float %730, %744
  %746 = fmul fast float %181, 0x3FD4D8D7C0000000
  %747 = fmul fast float %746, %733
  %748 = fmul fast float %182, 0x3FD4D8D7C0000000
  %749 = fmul fast float %748, %735
  %750 = fmul fast float %183, 0xBFF17B1420000000
  %751 = fmul fast float %729, %181
  %752 = fmul fast float %731, %182
  %753 = fmul fast float %181, %181
  %754 = fmul fast float %182, %182
  %755 = fsub fast float %753, %754
  %756 = fmul fast float %755, 0x3FC17B1420000000
  %757 = fmul fast float %756, %728
  %758 = fmul fast float %181, 0x3FD17B1420000000
  %759 = fmul fast float %758, %182
  %760 = fmul fast float %759, %732
  %761 = fadd fast float %752, %751
  %762 = fmul fast float %750, %761
  %763 = fadd fast float %762, %745
  %764 = fmul fast float %763, 2.500000e-01
  %765 = fadd fast float %760, %757
  %766 = fsub fast float %765, %747
  %767 = fadd fast float %766, %764
  %768 = fadd fast float %767, %741
  %769 = fadd fast float %768, %739
  %770 = fsub fast float %769, %749
  %771 = fmul fast float %727, 0x3FD20DD760000000
  %772 = fmul fast float %740, %725
  %773 = fmul fast float %721, %744
  %774 = fmul fast float %746, %724
  %775 = fmul fast float %748, %726
  %776 = fmul fast float %720, %181
  %777 = fmul fast float %722, %182
  %778 = fmul fast float %756, %719
  %779 = fmul fast float %759, %723
  %780 = fadd fast float %777, %776
  %781 = fmul fast float %750, %780
  %782 = fadd fast float %781, %773
  %783 = fmul fast float %782, 2.500000e-01
  %784 = fadd fast float %779, %778
  %785 = fsub fast float %784, %774
  %786 = fadd fast float %785, %783
  %787 = fadd fast float %786, %772
  %788 = fadd fast float %787, %771
  %789 = fsub fast float %788, %775
  %790 = fmul fast float %718, 0x3FD20DD760000000
  %791 = fmul fast float %740, %716
  %792 = fmul fast float %712, %744
  %793 = fmul fast float %746, %715
  %794 = fmul fast float %748, %717
  %795 = fmul fast float %711, %181
  %796 = fmul fast float %713, %182
  %797 = fmul fast float %756, %710
  %798 = fmul fast float %759, %714
  %799 = fadd fast float %796, %795
  %800 = fmul fast float %750, %799
  %801 = fadd fast float %800, %792
  %802 = fmul fast float %801, 2.500000e-01
  %803 = fadd fast float %798, %797
  %804 = fsub fast float %803, %793
  %805 = fadd fast float %804, %802
  %806 = fadd fast float %805, %791
  %807 = fadd fast float %806, %790
  %808 = fsub fast float %807, %794
  %809 = call float @dx.op.binary.f32(i32 35, float %770, float 0.000000e+00)  ; FMax(a,b)
  %810 = call float @dx.op.binary.f32(i32 35, float %789, float 0.000000e+00)  ; FMax(a,b)
  %811 = call float @dx.op.binary.f32(i32 35, float %808, float 0.000000e+00)  ; FMax(a,b)
  %812 = fsub fast float -0.000000e+00, %181
  %813 = fsub fast float -0.000000e+00, %182
  %814 = fmul fast float %183, 0xBFD4D8D7C0000000
  %815 = fmul fast float %814, %734
  %816 = fmul fast float %733, %181
  %817 = fmul fast float %735, %182
  %818 = fmul fast float %183, 0x3FF17B1420000000
  %819 = fmul fast float %729, %812
  %820 = fmul fast float %731, %813
  %821 = fadd fast float %820, %819
  %822 = fmul fast float %818, %821
  %823 = fadd fast float %822, %745
  %824 = fmul fast float %823, 2.500000e-01
  %825 = fadd fast float %817, %816
  %826 = fmul fast float %825, 0x3FD4D8D7C0000000
  %827 = fadd fast float %765, %815
  %828 = fadd fast float %827, %739
  %829 = fadd fast float %828, %824
  %830 = fadd fast float %829, %826
  %831 = fmul fast float %814, %725
  %832 = fmul fast float %724, %181
  %833 = fmul fast float %726, %182
  %834 = fmul fast float %720, %812
  %835 = fmul fast float %722, %813
  %836 = fadd fast float %835, %834
  %837 = fmul fast float %818, %836
  %838 = fadd fast float %837, %773
  %839 = fmul fast float %838, 2.500000e-01
  %840 = fadd fast float %833, %832
  %841 = fmul fast float %840, 0x3FD4D8D7C0000000
  %842 = fadd fast float %784, %831
  %843 = fadd fast float %842, %771
  %844 = fadd fast float %843, %839
  %845 = fadd fast float %844, %841
  %846 = fmul fast float %814, %716
  %847 = fmul fast float %715, %181
  %848 = fmul fast float %717, %182
  %849 = fmul fast float %711, %812
  %850 = fmul fast float %713, %813
  %851 = fadd fast float %850, %849
  %852 = fmul fast float %818, %851
  %853 = fadd fast float %852, %792
  %854 = fmul fast float %853, 2.500000e-01
  %855 = fadd fast float %848, %847
  %856 = fmul fast float %855, 0x3FD4D8D7C0000000
  %857 = fadd fast float %803, %846
  %858 = fadd fast float %857, %790
  %859 = fadd fast float %858, %854
  %860 = fadd fast float %859, %856
  %861 = call float @dx.op.binary.f32(i32 35, float %830, float 0.000000e+00)  ; FMax(a,b)
  %862 = call float @dx.op.binary.f32(i32 35, float %845, float 0.000000e+00)  ; FMax(a,b)
  %863 = call float @dx.op.binary.f32(i32 35, float %860, float 0.000000e+00)  ; FMax(a,b)
  %864 = fmul fast float %339, 0x3FD4D8D7C0000000
  %865 = fmul fast float %864, %734
  %866 = fmul fast float %339, %339
  %867 = fmul fast float %866, 0x3FEE471020000000
  %868 = fadd fast float %867, 0xBFD42F6020000000
  %869 = fmul fast float %730, %868
  %870 = fmul fast float %337, 0x3FD4D8D7C0000000
  %871 = fmul fast float %870, %733
  %872 = fmul fast float %338, 0x3FD4D8D7C0000000
  %873 = fmul fast float %872, %735
  %874 = fmul fast float %339, 0xBFF17B1420000000
  %875 = fmul fast float %729, %337
  %876 = fmul fast float %731, %338
  %877 = fmul fast float %337, %337
  %878 = fmul fast float %338, %338
  %879 = fsub fast float %877, %878
  %880 = fmul fast float %879, 0x3FC17B1420000000
  %881 = fmul fast float %880, %728
  %882 = fmul fast float %338, 0x3FD17B1420000000
  %883 = fmul fast float %882, %337
  %884 = fmul fast float %883, %732
  %885 = fadd fast float %876, %875
  %886 = fmul fast float %874, %885
  %887 = fadd fast float %886, %869
  %888 = fmul fast float %887, 2.500000e-01
  %889 = fadd fast float %884, %881
  %890 = fsub fast float %889, %871
  %891 = fadd fast float %890, %888
  %892 = fadd fast float %891, %865
  %893 = fadd fast float %892, %739
  %894 = fsub fast float %893, %873
  %895 = fmul fast float %864, %725
  %896 = fmul fast float %721, %868
  %897 = fmul fast float %870, %724
  %898 = fmul fast float %872, %726
  %899 = fmul fast float %720, %337
  %900 = fmul fast float %722, %338
  %901 = fmul fast float %880, %719
  %902 = fmul fast float %883, %723
  %903 = fadd fast float %900, %899
  %904 = fmul fast float %874, %903
  %905 = fadd fast float %904, %896
  %906 = fmul fast float %905, 2.500000e-01
  %907 = fadd fast float %902, %901
  %908 = fsub fast float %907, %897
  %909 = fadd fast float %908, %906
  %910 = fadd fast float %909, %895
  %911 = fadd fast float %910, %771
  %912 = fsub fast float %911, %898
  %913 = fmul fast float %864, %716
  %914 = fmul fast float %712, %868
  %915 = fmul fast float %870, %715
  %916 = fmul fast float %872, %717
  %917 = fmul fast float %711, %337
  %918 = fmul fast float %713, %338
  %919 = fmul fast float %880, %710
  %920 = fmul fast float %883, %714
  %921 = fadd fast float %918, %917
  %922 = fmul fast float %874, %921
  %923 = fadd fast float %922, %914
  %924 = fmul fast float %923, 2.500000e-01
  %925 = fadd fast float %920, %919
  %926 = fsub fast float %925, %915
  %927 = fadd fast float %926, %924
  %928 = fadd fast float %927, %913
  %929 = fadd fast float %928, %790
  %930 = fsub fast float %929, %916
  %931 = call float @dx.op.binary.f32(i32 35, float %894, float 0.000000e+00)  ; FMax(a,b)
  %932 = call float @dx.op.binary.f32(i32 35, float %912, float 0.000000e+00)  ; FMax(a,b)
  %933 = call float @dx.op.binary.f32(i32 35, float %930, float 0.000000e+00)  ; FMax(a,b)
  br label %934

; <label>:934                                     ; preds = %709, %396
  %935 = phi float [ %931, %709 ], [ 0.000000e+00, %396 ]
  %936 = phi float [ %932, %709 ], [ 0.000000e+00, %396 ]
  %937 = phi float [ %933, %709 ], [ 0.000000e+00, %396 ]
  %938 = phi float [ %861, %709 ], [ 0.000000e+00, %396 ]
  %939 = phi float [ %862, %709 ], [ 0.000000e+00, %396 ]
  %940 = phi float [ %863, %709 ], [ 0.000000e+00, %396 ]
  %941 = phi float [ %809, %709 ], [ 0.000000e+00, %396 ]
  %942 = phi float [ %810, %709 ], [ 0.000000e+00, %396 ]
  %943 = phi float [ %811, %709 ], [ 0.000000e+00, %396 ]
  %944 = phi float [ %738, %709 ], [ 0.000000e+00, %396 ]
  %945 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 271)  ; CBufferLoadLegacy(handle,regIndex)
  %946 = extractvalue %dx.types.CBufRet.f32 %945, 0
  %947 = fcmp fast ogt float %946, 0.000000e+00
  %948 = and i1 %398, %947
  br i1 %948, label %949, label %1156, !dx.controlflow.hints !94

; <label>:949                                     ; preds = %934
  %950 = extractvalue %dx.types.CBufRet.f32 %353, 2
  %951 = fadd fast float %950, %262
  %952 = fmul fast float %181, 3.200000e+01
  %953 = fmul fast float %182, 3.200000e+01
  %954 = fadd fast float %356, %952
  %955 = fadd fast float %357, %953
  %956 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %957 = extractvalue %dx.types.CBufRet.f32 %956, 0
  %958 = extractvalue %dx.types.CBufRet.f32 %956, 1
  %959 = fsub fast float %954, %957
  %960 = fsub fast float %955, %958
  %961 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %962 = extractvalue %dx.types.CBufRet.f32 %961, 0
  %963 = extractvalue %dx.types.CBufRet.f32 %961, 1
  %964 = fmul fast float %959, %962
  %965 = fmul fast float %960, %963
  %966 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %967 = extractvalue %dx.types.CBufRet.f32 %966, 0
  %968 = extractvalue %dx.types.CBufRet.f32 %966, 1
  %969 = fsub fast float %356, %967
  %970 = fsub fast float %357, %968
  %971 = fmul fast float %969, %969
  %972 = fmul fast float %970, %970
  %973 = fadd fast float %971, %972
  %974 = call float @dx.op.unary.f32(i32 24, float %973)  ; Sqrt(value)
  %975 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %976 = extractvalue %dx.types.CBufRet.f32 %975, 0
  %977 = extractvalue %dx.types.CBufRet.f32 %975, 1
  %978 = fsub fast float %974, %976
  %979 = fdiv fast float %978, %977
  %980 = call float @dx.op.unary.f32(i32 7, float %979)  ; Saturate(value)
  %981 = fmul fast float %980, 2.000000e+00
  %982 = fsub fast float 3.000000e+00, %981
  %983 = fmul fast float %980, %980
  %984 = fmul fast float %983, %982
  %985 = fcmp fast oge float %964, 0.000000e+00
  %986 = fcmp fast ole float %964, 1.000000e+00
  %987 = and i1 %986, %985
  %988 = fcmp fast oge float %965, 0.000000e+00
  %989 = and i1 %988, %987
  %990 = fcmp fast ole float %965, 1.000000e+00
  %991 = and i1 %990, %989
  %992 = fcmp fast ogt float %984, 0.000000e+00
  %993 = and i1 %992, %991
  br i1 %993, label %994, label %1117, !dx.controlflow.hints !95

; <label>:994                                     ; preds = %949
  %995 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %996 = extractvalue %dx.types.CBufRet.f32 %995, 2
  %997 = extractvalue %dx.types.CBufRet.f32 %995, 3
  %998 = fmul fast float %996, %964
  %999 = fmul fast float %997, %965
  %1000 = call float @dx.op.unary.f32(i32 27, float %998)  ; Round_ni(value)
  %1001 = call float @dx.op.unary.f32(i32 27, float %999)  ; Round_ni(value)
  %1002 = fptosi float %1000 to i32
  %1003 = fptosi float %1001 to i32
  %1004 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %26, i32 0, i32 %1002, i32 %1003, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1005 = extractvalue %dx.types.ResRet.i32 %1004, 0
  %1006 = lshr i32 %1005, 16
  %1007 = icmp eq i32 %1006, 65535
  br i1 %1007, label %1117, label %1008

; <label>:1008                                    ; preds = %994
  %1009 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %1010 = extractvalue %dx.types.CBufRet.f32 %1009, 0
  %1011 = fmul fast float %1010, %964
  %1012 = extractvalue %dx.types.CBufRet.f32 %1009, 1
  %1013 = fadd fast float %1011, %1012
  %1014 = extractvalue %dx.types.CBufRet.f32 %1009, 2
  %1015 = fmul fast float %1014, %965
  %1016 = extractvalue %dx.types.CBufRet.f32 %1009, 3
  %1017 = fadd fast float %1015, %1016
  %1018 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %27, %dx.types.Handle %44, float %1013, float %1017, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1019 = extractvalue %dx.types.ResRet.f32 %1018, 0
  %1020 = extractvalue %dx.types.ResRet.f32 %1018, 1
  %1021 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %1022 = extractvalue %dx.types.CBufRet.f32 %1021, 1
  %1023 = extractvalue %dx.types.CBufRet.f32 %1021, 0
  %1024 = fsub fast float %1022, %1023
  %1025 = fmul fast float %1024, %1019
  %1026 = fadd fast float %1025, %1023
  %1027 = extractvalue %dx.types.CBufRet.f32 %1021, 3
  %1028 = extractvalue %dx.types.CBufRet.f32 %1021, 2
  %1029 = fsub fast float %1027, %1028
  %1030 = fmul fast float %1029, %1020
  %1031 = fadd fast float %1030, %1028
  %1032 = fsub fast float %951, %1026
  %1033 = fsub fast float %1031, %1026
  %1034 = fdiv fast float %1032, %1033
  %1035 = call float @dx.op.unary.f32(i32 7, float %1034)  ; Saturate(value)
  %1036 = extractvalue %dx.types.CBufRet.f32 %945, 1
  %1037 = extractvalue %dx.types.CBufRet.f32 %995, 0
  %1038 = extractvalue %dx.types.CBufRet.f32 %995, 1
  %1039 = fmul fast float %1037, %964
  %1040 = fmul fast float %1038, %965
  %1041 = fmul fast float %1039, 1.250000e-01
  %1042 = fmul fast float %1040, 1.250000e-01
  %1043 = call float @dx.op.unary.f32(i32 27, float %1041)  ; Round_ni(value)
  %1044 = call float @dx.op.unary.f32(i32 27, float %1042)  ; Round_ni(value)
  %1045 = fmul fast float %1043, 8.000000e+00
  %1046 = fmul fast float %1044, 8.000000e+00
  %1047 = fsub fast float %1039, %1045
  %1048 = fsub fast float %1040, %1046
  %1049 = fadd fast float %1047, 5.000000e-01
  %1050 = fadd fast float %1048, 5.000000e-01
  %1051 = and i32 %1006, 255
  %1052 = lshr i32 %1005, 24
  %1053 = mul nuw nsw i32 %1051, 9
  %1054 = uitofp i32 %1053 to float
  %1055 = mul nuw nsw i32 %1052, 9
  %1056 = uitofp i32 %1055 to float
  %1057 = fadd fast float %1049, %1054
  %1058 = fadd fast float %1050, %1056
  %1059 = fdiv fast float %1057, %946
  %1060 = fdiv fast float %1058, %1036
  %1061 = fmul fast float %1035, 4.375000e-01
  %1062 = fadd fast float %1061, 3.125000e-02
  %1063 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %44, float %1059, float %1060, float %1062, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1064 = extractvalue %dx.types.ResRet.f32 %1063, 0
  %1065 = extractvalue %dx.types.ResRet.f32 %1063, 1
  %1066 = extractvalue %dx.types.ResRet.f32 %1063, 2
  %1067 = fadd fast float %1061, 5.312500e-01
  %1068 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %44, float %1059, float %1060, float %1067, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1069 = extractvalue %dx.types.ResRet.f32 %1068, 0
  %1070 = extractvalue %dx.types.ResRet.f32 %1068, 1
  %1071 = extractvalue %dx.types.ResRet.f32 %1068, 2
  %1072 = fmul fast float %1069, 2.000000e+00
  %1073 = fmul fast float %1070, 2.000000e+00
  %1074 = fmul fast float %1071, 2.000000e+00
  %1075 = fadd fast float %1072, -1.000000e+00
  %1076 = fadd fast float %1073, -1.000000e+00
  %1077 = fadd fast float %1074, -1.000000e+00
  %1078 = fmul fast float %1075, %1075
  %1079 = fmul fast float %1076, %1076
  %1080 = fadd fast float %1078, %1079
  %1081 = fmul fast float %1077, %1077
  %1082 = fadd fast float %1080, %1081
  %1083 = call float @dx.op.unary.f32(i32 24, float %1082)  ; Sqrt(value)
  %1084 = fcmp fast ogt float %1083, 0.000000e+00
  br i1 %1084, label %1085, label %1089

; <label>:1085                                    ; preds = %1008
  %1086 = fdiv fast float %1075, %1083
  %1087 = fdiv fast float %1076, %1083
  %1088 = fdiv fast float %1077, %1083
  br label %1089

; <label>:1089                                    ; preds = %1085, %1008
  %1090 = phi float [ %1086, %1085 ], [ 0.000000e+00, %1008 ]
  %1091 = phi float [ %1087, %1085 ], [ 0.000000e+00, %1008 ]
  %1092 = phi float [ %1088, %1085 ], [ 0.000000e+00, %1008 ]
  %1093 = call float @dx.op.dot3.f32(i32 55, float %1090, float %1091, float %1092, float %181, float %182, float %183)  ; Dot3(ax,ay,az,bx,by,bz)
  %1094 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1093)  ; FMax(a,b)
  %1095 = fmul fast float %1094, 0x400C5BF8A0000000
  %1096 = fmul fast float %1064, %984
  %1097 = fmul fast float %1096, %1095
  %1098 = fmul fast float %1065, %984
  %1099 = fmul fast float %1098, %1095
  %1100 = fmul fast float %1066, %984
  %1101 = fmul fast float %1100, %1095
  %1102 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1103 = extractvalue %dx.types.CBufRet.f32 %1102, 3
  %1104 = fmul fast float %1097, %1103
  %1105 = fmul fast float %1099, %1103
  %1106 = fmul fast float %1101, %1103
  %1107 = fcmp fast ogt float %951, %1031
  br i1 %1107, label %1108, label %1117

; <label>:1108                                    ; preds = %1089
  %1109 = fmul fast float %1033, 0x3FC24924A0000000
  %1110 = fsub fast float %951, %1031
  %1111 = fdiv fast float %1110, %1109
  %1112 = call float @dx.op.unary.f32(i32 7, float %1111)  ; Saturate(value)
  %1113 = fsub fast float 1.000000e+00, %1112
  %1114 = fmul fast float %1113, %1104
  %1115 = fmul fast float %1113, %1105
  %1116 = fmul fast float %1113, %1106
  br label %1117

; <label>:1117                                    ; preds = %1108, %1089, %994, %949
  %1118 = phi float [ %1116, %1108 ], [ %1106, %1089 ], [ 0.000000e+00, %994 ], [ 0.000000e+00, %949 ]
  %1119 = phi float [ %1115, %1108 ], [ %1105, %1089 ], [ 0.000000e+00, %994 ], [ 0.000000e+00, %949 ]
  %1120 = phi float [ %1114, %1108 ], [ %1104, %1089 ], [ 0.000000e+00, %994 ], [ 0.000000e+00, %949 ]
  %1121 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1120)  ; FMax(a,b)
  %1122 = fmul fast float %1121, 0x3FD20DD760000000
  %1123 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float %337, float %338, float %339)  ; Dot3(ax,ay,az,bx,by,bz)
  %1124 = fmul fast float %1123, 0x3FDF454380000000
  %1125 = fmul fast float %1123, %1123
  %1126 = fmul fast float %1125, 0x3FEE471020000000
  %1127 = fadd fast float %1126, 0xBFD42F6020000000
  %1128 = call float @dx.op.dot3.f32(i32 55, float %1121, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %1124, float %1127)  ; Dot3(ax,ay,az,bx,by,bz)
  %1129 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1119)  ; FMax(a,b)
  %1130 = fmul fast float %1129, 0x3FD20DD760000000
  %1131 = call float @dx.op.dot3.f32(i32 55, float %1129, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %1124, float %1127)  ; Dot3(ax,ay,az,bx,by,bz)
  %1132 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1118)  ; FMax(a,b)
  %1133 = fmul fast float %1132, 0x3FD20DD760000000
  %1134 = call float @dx.op.dot3.f32(i32 55, float %1132, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %1124, float %1127)  ; Dot3(ax,ay,az,bx,by,bz)
  %1135 = call float @dx.op.binary.f32(i32 35, float %1122, float 0.000000e+00)  ; FMax(a,b)
  %1136 = call float @dx.op.binary.f32(i32 35, float %1130, float 0.000000e+00)  ; FMax(a,b)
  %1137 = call float @dx.op.binary.f32(i32 35, float %1133, float 0.000000e+00)  ; FMax(a,b)
  %1138 = call float @dx.op.binary.f32(i32 35, float %1128, float 0.000000e+00)  ; FMax(a,b)
  %1139 = call float @dx.op.binary.f32(i32 35, float %1131, float 0.000000e+00)  ; FMax(a,b)
  %1140 = call float @dx.op.binary.f32(i32 35, float %1134, float 0.000000e+00)  ; FMax(a,b)
  %1141 = fmul fast float %1135, %397
  %1142 = fmul fast float %1136, %397
  %1143 = fmul fast float %1137, %397
  %1144 = fadd fast float %1141, %941
  %1145 = fadd fast float %1142, %942
  %1146 = fadd fast float %1143, %943
  %1147 = fadd fast float %1141, %938
  %1148 = fadd fast float %1142, %939
  %1149 = fadd fast float %1143, %940
  %1150 = fmul fast float %1138, %397
  %1151 = fmul fast float %1139, %397
  %1152 = fmul fast float %1140, %397
  %1153 = fadd fast float %1150, %935
  %1154 = fadd fast float %1151, %936
  %1155 = fadd fast float %1152, %937
  br label %1156

; <label>:1156                                    ; preds = %1117, %934
  %1157 = phi float [ %1153, %1117 ], [ %935, %934 ]
  %1158 = phi float [ %1154, %1117 ], [ %936, %934 ]
  %1159 = phi float [ %1155, %1117 ], [ %937, %934 ]
  %1160 = phi float [ %1147, %1117 ], [ %938, %934 ]
  %1161 = phi float [ %1148, %1117 ], [ %939, %934 ]
  %1162 = phi float [ %1149, %1117 ], [ %940, %934 ]
  %1163 = phi float [ %1144, %1117 ], [ %941, %934 ]
  %1164 = phi float [ %1145, %1117 ], [ %942, %934 ]
  %1165 = phi float [ %1146, %1117 ], [ %943, %934 ]
  %1166 = fcmp fast olt float %397, 1.000000e+00
  br i1 %1166, label %1167, label %2005, !dx.controlflow.hints !96

; <label>:1167                                    ; preds = %1156
  %1168 = extractvalue %dx.types.CBufRet.f32 %353, 2
  %1169 = fadd fast float %1168, %262
  %1170 = fmul fast float %181, 3.200000e+01
  %1171 = fmul fast float %182, 3.200000e+01
  %1172 = fadd fast float %356, %1170
  %1173 = fadd fast float %357, %1171
  %1174 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %1175 = extractvalue %dx.types.CBufRet.f32 %1174, 0
  %1176 = extractvalue %dx.types.CBufRet.f32 %1174, 1
  %1177 = fsub fast float %1172, %1175
  %1178 = fsub fast float %1173, %1176
  %1179 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %1180 = extractvalue %dx.types.CBufRet.f32 %1179, 0
  %1181 = extractvalue %dx.types.CBufRet.f32 %1179, 1
  %1182 = fmul fast float %1177, %1180
  %1183 = fmul fast float %1178, %1181
  %1184 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %1185 = extractvalue %dx.types.CBufRet.f32 %1184, 0
  %1186 = fmul fast float %1182, %1185
  %1187 = extractvalue %dx.types.CBufRet.f32 %1184, 1
  %1188 = fadd fast float %1186, %1187
  %1189 = extractvalue %dx.types.CBufRet.f32 %1184, 2
  %1190 = fmul fast float %1189, %1183
  %1191 = extractvalue %dx.types.CBufRet.f32 %1184, 3
  %1192 = fadd fast float %1190, %1191
  %1193 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %27, %dx.types.Handle %44, float %1188, float %1192, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1194 = extractvalue %dx.types.ResRet.f32 %1193, 0
  %1195 = extractvalue %dx.types.ResRet.f32 %1193, 1
  %1196 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %1197 = extractvalue %dx.types.CBufRet.f32 %1196, 1
  %1198 = extractvalue %dx.types.CBufRet.f32 %1196, 0
  %1199 = fsub fast float %1197, %1198
  %1200 = fmul fast float %1199, %1194
  %1201 = fadd fast float %1200, %1198
  %1202 = extractvalue %dx.types.CBufRet.f32 %1196, 3
  %1203 = extractvalue %dx.types.CBufRet.f32 %1196, 2
  %1204 = fsub fast float %1202, %1203
  %1205 = fmul fast float %1204, %1195
  %1206 = fadd fast float %1205, %1203
  %1207 = fsub fast float %1169, %1201
  %1208 = fsub fast float %1206, %1201
  %1209 = fdiv fast float %1207, %1208
  %1210 = call float @dx.op.unary.f32(i32 7, float %1209)  ; Saturate(value)
  %1211 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 264)  ; CBufferLoadLegacy(handle,regIndex)
  %1212 = extractvalue %dx.types.CBufRet.f32 %1211, 0
  %1213 = fmul fast float %1212, %1210
  %1214 = extractvalue %dx.types.CBufRet.f32 %1211, 1
  %1215 = fadd fast float %1213, %1214
  %1216 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %44, float %1188, float %1192, float %1215, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1217 = extractvalue %dx.types.ResRet.f32 %1216, 0
  %1218 = extractvalue %dx.types.ResRet.f32 %1216, 1
  %1219 = extractvalue %dx.types.ResRet.f32 %1216, 2
  %1220 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 258)  ; CBufferLoadLegacy(handle,regIndex)
  %1221 = extractvalue %dx.types.CBufRet.f32 %1220, 0
  %1222 = extractvalue %dx.types.CBufRet.f32 %1220, 1
  %1223 = extractvalue %dx.types.CBufRet.f32 %1220, 2
  %1224 = fmul fast float %1221, %1217
  %1225 = fmul fast float %1222, %1218
  %1226 = fmul fast float %1223, %1219
  %1227 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 257)  ; CBufferLoadLegacy(handle,regIndex)
  %1228 = extractvalue %dx.types.CBufRet.f32 %1227, 0
  %1229 = extractvalue %dx.types.CBufRet.f32 %1227, 1
  %1230 = extractvalue %dx.types.CBufRet.f32 %1227, 2
  %1231 = fadd fast float %1224, %1228
  %1232 = fadd fast float %1225, %1229
  %1233 = fadd fast float %1226, %1230
  %1234 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 262)  ; CBufferLoadLegacy(handle,regIndex)
  %1235 = extractvalue %dx.types.CBufRet.f32 %1234, 0
  %1236 = fmul fast float %1235, %1182
  %1237 = extractvalue %dx.types.CBufRet.f32 %1234, 1
  %1238 = fadd fast float %1236, %1237
  %1239 = extractvalue %dx.types.CBufRet.f32 %1234, 2
  %1240 = fmul fast float %1239, %1183
  %1241 = extractvalue %dx.types.CBufRet.f32 %1234, 3
  %1242 = fadd fast float %1240, %1241
  %1243 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 265)  ; CBufferLoadLegacy(handle,regIndex)
  %1244 = extractvalue %dx.types.CBufRet.f32 %1243, 0
  %1245 = extractvalue %dx.types.CBufRet.f32 %1243, 1
  %1246 = extractvalue %dx.types.CBufRet.f32 %1243, 2
  %1247 = extractvalue %dx.types.CBufRet.f32 %1243, 3
  %1248 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 266)  ; CBufferLoadLegacy(handle,regIndex)
  %1249 = extractvalue %dx.types.CBufRet.f32 %1248, 0
  %1250 = extractvalue %dx.types.CBufRet.f32 %1248, 1
  %1251 = extractvalue %dx.types.CBufRet.f32 %1248, 2
  %1252 = extractvalue %dx.types.CBufRet.f32 %1248, 3
  %1253 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %44, float %1238, float %1242, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1254 = extractvalue %dx.types.ResRet.f32 %1253, 0
  %1255 = extractvalue %dx.types.ResRet.f32 %1253, 1
  %1256 = extractvalue %dx.types.ResRet.f32 %1253, 2
  %1257 = extractvalue %dx.types.ResRet.f32 %1253, 3
  %1258 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %44, float %1238, float %1242, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1259 = extractvalue %dx.types.ResRet.f32 %1258, 0
  %1260 = extractvalue %dx.types.ResRet.f32 %1258, 1
  %1261 = extractvalue %dx.types.ResRet.f32 %1258, 2
  %1262 = extractvalue %dx.types.ResRet.f32 %1258, 3
  %1263 = fmul fast float %1254, %1231
  %1264 = fmul fast float %1259, %1231
  %1265 = fmul fast float %1261, %1231
  %1266 = fmul fast float %1257, %1231
  %1267 = fadd fast float %1263, %1244
  %1268 = fadd fast float %1264, %1245
  %1269 = fadd fast float %1265, %1246
  %1270 = fadd fast float %1266, %1247
  %1271 = fmul fast float %1255, %1231
  %1272 = fmul fast float %1260, %1231
  %1273 = fadd fast float %1271, %1249
  %1274 = fadd fast float %1272, %1250
  %1275 = fmul fast float %1256, %1231
  %1276 = fmul fast float %1262, %1231
  %1277 = fadd fast float %1275, %1251
  %1278 = fadd fast float %1276, %1252
  %1279 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %44, float %1238, float %1242, float 2.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1280 = extractvalue %dx.types.ResRet.f32 %1279, 0
  %1281 = extractvalue %dx.types.ResRet.f32 %1279, 1
  %1282 = extractvalue %dx.types.ResRet.f32 %1279, 2
  %1283 = extractvalue %dx.types.ResRet.f32 %1279, 3
  %1284 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %44, float %1238, float %1242, float 3.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1285 = extractvalue %dx.types.ResRet.f32 %1284, 0
  %1286 = extractvalue %dx.types.ResRet.f32 %1284, 1
  %1287 = extractvalue %dx.types.ResRet.f32 %1284, 2
  %1288 = extractvalue %dx.types.ResRet.f32 %1284, 3
  %1289 = fmul fast float %1280, %1232
  %1290 = fmul fast float %1285, %1232
  %1291 = fmul fast float %1287, %1232
  %1292 = fmul fast float %1283, %1232
  %1293 = fadd fast float %1267, %1289
  %1294 = fadd fast float %1268, %1290
  %1295 = fadd fast float %1269, %1291
  %1296 = fadd fast float %1270, %1292
  %1297 = fmul fast float %1281, %1232
  %1298 = fmul fast float %1286, %1232
  %1299 = fadd fast float %1273, %1297
  %1300 = fadd fast float %1274, %1298
  %1301 = fmul fast float %1282, %1232
  %1302 = fmul fast float %1288, %1232
  %1303 = fadd fast float %1277, %1301
  %1304 = fadd fast float %1278, %1302
  %1305 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %44, float %1238, float %1242, float 4.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1306 = extractvalue %dx.types.ResRet.f32 %1305, 0
  %1307 = extractvalue %dx.types.ResRet.f32 %1305, 1
  %1308 = extractvalue %dx.types.ResRet.f32 %1305, 2
  %1309 = extractvalue %dx.types.ResRet.f32 %1305, 3
  %1310 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %44, float %1238, float %1242, float 5.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1311 = extractvalue %dx.types.ResRet.f32 %1310, 0
  %1312 = extractvalue %dx.types.ResRet.f32 %1310, 1
  %1313 = extractvalue %dx.types.ResRet.f32 %1310, 2
  %1314 = extractvalue %dx.types.ResRet.f32 %1310, 3
  %1315 = fmul fast float %1306, %1233
  %1316 = fmul fast float %1311, %1233
  %1317 = fmul fast float %1313, %1233
  %1318 = fmul fast float %1309, %1233
  %1319 = fadd fast float %1293, %1315
  %1320 = fadd fast float %1294, %1316
  %1321 = fadd fast float %1295, %1317
  %1322 = fadd fast float %1296, %1318
  %1323 = fmul fast float %1307, %1233
  %1324 = fmul fast float %1312, %1233
  %1325 = fadd fast float %1299, %1323
  %1326 = fadd fast float %1300, %1324
  %1327 = fmul fast float %1308, %1233
  %1328 = fmul fast float %1314, %1233
  %1329 = fadd fast float %1303, %1327
  %1330 = fadd fast float %1304, %1328
  %1331 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 255)  ; CBufferLoadLegacy(handle,regIndex)
  %1332 = extractvalue %dx.types.CBufRet.f32 %1331, 0
  %1333 = fsub fast float %356, %1332
  %1334 = fsub fast float %1175, %356
  %1335 = call float @dx.op.binary.f32(i32 35, float %1334, float %1333)  ; FMax(a,b)
  %1336 = extractvalue %dx.types.CBufRet.f32 %1331, 1
  %1337 = fsub fast float %357, %1336
  %1338 = fsub fast float %1176, %357
  %1339 = call float @dx.op.binary.f32(i32 35, float %1338, float %1337)  ; FMax(a,b)
  %1340 = call float @dx.op.binary.f32(i32 35, float %1335, float %1339)  ; FMax(a,b)
  %1341 = extractvalue %dx.types.CBufRet.f32 %1179, 3
  %1342 = fmul fast float %1341, %1340
  %1343 = call float @dx.op.unary.f32(i32 7, float %1342)  ; Saturate(value)
  %1344 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 272)  ; CBufferLoadLegacy(handle,regIndex)
  %1345 = extractvalue %dx.types.CBufRet.f32 %1344, 0
  %1346 = extractvalue %dx.types.CBufRet.f32 %1344, 1
  %1347 = extractvalue %dx.types.CBufRet.f32 %1344, 2
  %1348 = extractvalue %dx.types.CBufRet.f32 %1344, 3
  %1349 = fsub fast float %1345, %1319
  %1350 = fsub fast float %1346, %1320
  %1351 = fsub fast float %1347, %1321
  %1352 = fsub fast float %1348, %1322
  %1353 = fmul fast float %1349, %1343
  %1354 = fmul fast float %1350, %1343
  %1355 = fmul fast float %1351, %1343
  %1356 = fmul fast float %1352, %1343
  %1357 = fadd fast float %1353, %1319
  %1358 = fadd fast float %1354, %1320
  %1359 = fadd fast float %1355, %1321
  %1360 = fadd fast float %1356, %1322
  %1361 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 273)  ; CBufferLoadLegacy(handle,regIndex)
  %1362 = extractvalue %dx.types.CBufRet.f32 %1361, 0
  %1363 = extractvalue %dx.types.CBufRet.f32 %1361, 1
  %1364 = fsub fast float %1362, %1325
  %1365 = fsub fast float %1363, %1326
  %1366 = fmul fast float %1364, %1343
  %1367 = fmul fast float %1365, %1343
  %1368 = fadd fast float %1366, %1325
  %1369 = fadd fast float %1367, %1326
  %1370 = extractvalue %dx.types.CBufRet.f32 %1361, 2
  %1371 = extractvalue %dx.types.CBufRet.f32 %1361, 3
  %1372 = fsub fast float %1370, %1329
  %1373 = fsub fast float %1371, %1330
  %1374 = fmul fast float %1372, %1343
  %1375 = fmul fast float %1373, %1343
  %1376 = fadd fast float %1374, %1329
  %1377 = fadd fast float %1375, %1330
  %1378 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 267)  ; CBufferLoadLegacy(handle,regIndex)
  %1379 = extractvalue %dx.types.CBufRet.f32 %1378, 0
  %1380 = fmul fast float %1379, %1357
  %1381 = fmul fast float %1379, %1358
  %1382 = fmul fast float %1379, %1359
  %1383 = fmul fast float %1379, %1360
  %1384 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 268)  ; CBufferLoadLegacy(handle,regIndex)
  %1385 = extractvalue %dx.types.CBufRet.f32 %1384, 0
  %1386 = fmul fast float %1385, %1368
  %1387 = fmul fast float %1385, %1369
  %1388 = fadd fast float %1386, %1380
  %1389 = fadd fast float %1387, %1382
  %1390 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 269)  ; CBufferLoadLegacy(handle,regIndex)
  %1391 = extractvalue %dx.types.CBufRet.f32 %1390, 0
  %1392 = fmul fast float %1391, %1376
  %1393 = fmul fast float %1391, %1377
  %1394 = fadd fast float %1388, %1392
  %1395 = fadd fast float %1389, %1393
  %1396 = extractvalue %dx.types.CBufRet.f32 %1378, 1
  %1397 = fmul fast float %1396, %1357
  %1398 = fmul fast float %1396, %1358
  %1399 = fmul fast float %1396, %1359
  %1400 = fmul fast float %1396, %1360
  %1401 = extractvalue %dx.types.CBufRet.f32 %1384, 1
  %1402 = fmul fast float %1401, %1368
  %1403 = fmul fast float %1401, %1369
  %1404 = fadd fast float %1402, %1397
  %1405 = fadd fast float %1403, %1399
  %1406 = extractvalue %dx.types.CBufRet.f32 %1390, 1
  %1407 = fmul fast float %1406, %1376
  %1408 = fmul fast float %1406, %1377
  %1409 = fadd fast float %1404, %1407
  %1410 = fadd fast float %1405, %1408
  %1411 = extractvalue %dx.types.CBufRet.f32 %1378, 2
  %1412 = fmul fast float %1411, %1357
  %1413 = fmul fast float %1411, %1358
  %1414 = fmul fast float %1411, %1359
  %1415 = fmul fast float %1411, %1360
  %1416 = extractvalue %dx.types.CBufRet.f32 %1384, 2
  %1417 = fmul fast float %1416, %1368
  %1418 = fmul fast float %1416, %1369
  %1419 = fadd fast float %1417, %1412
  %1420 = fadd fast float %1418, %1414
  %1421 = extractvalue %dx.types.CBufRet.f32 %1390, 2
  %1422 = fmul fast float %1421, %1376
  %1423 = fmul fast float %1421, %1377
  %1424 = fadd fast float %1419, %1422
  %1425 = fadd fast float %1420, %1423
  %1426 = fmul fast float %1413, %1413
  %1427 = fmul fast float %1425, %1425
  %1428 = fmul fast float %1415, %1415
  %1429 = fadd fast float %1428, %1426
  %1430 = fadd fast float %1429, %1427
  %1431 = call float @dx.op.unary.f32(i32 24, float %1430)  ; Sqrt(value)
  %1432 = fcmp fast ugt float %1431, 0.000000e+00
  br i1 %1432, label %1433, label %1448

; <label>:1433                                    ; preds = %1167
  %1434 = fsub fast float -0.000000e+00, %1415
  %1435 = fdiv fast float %1434, %1431
  %1436 = fsub fast float -0.000000e+00, %1413
  %1437 = fdiv fast float %1436, %1431
  %1438 = fdiv fast float %1425, %1431
  %1439 = fmul fast float %1424, 0x3FE279A760000000
  %1440 = fmul fast float %1437, %1413
  %1441 = fmul fast float %1438, %1425
  %1442 = fmul fast float %1435, %1415
  %1443 = fadd fast float %1440, %1442
  %1444 = fsub fast float %1443, %1441
  %1445 = call float @dx.op.unary.f32(i32 6, float %1444)  ; FAbs(value)
  %1446 = fadd fast float %1445, 0x3DDB7CDFE0000000
  %1447 = fdiv fast float %1439, %1446
  br label %1448

; <label>:1448                                    ; preds = %1433, %1167
  %1449 = phi float [ %1447, %1433 ], [ 1.000000e+00, %1167 ]
  %1450 = fmul fast float %1398, %1398
  %1451 = fmul fast float %1410, %1410
  %1452 = fmul fast float %1400, %1400
  %1453 = fadd fast float %1452, %1450
  %1454 = fadd fast float %1453, %1451
  %1455 = call float @dx.op.unary.f32(i32 24, float %1454)  ; Sqrt(value)
  %1456 = fcmp fast ugt float %1455, 0.000000e+00
  br i1 %1456, label %1457, label %1472

; <label>:1457                                    ; preds = %1448
  %1458 = fsub fast float -0.000000e+00, %1400
  %1459 = fdiv fast float %1458, %1455
  %1460 = fsub fast float -0.000000e+00, %1398
  %1461 = fdiv fast float %1460, %1455
  %1462 = fdiv fast float %1410, %1455
  %1463 = fmul fast float %1409, 0x3FE279A760000000
  %1464 = fmul fast float %1461, %1398
  %1465 = fmul fast float %1462, %1410
  %1466 = fmul fast float %1459, %1400
  %1467 = fadd fast float %1464, %1466
  %1468 = fsub fast float %1467, %1465
  %1469 = call float @dx.op.unary.f32(i32 6, float %1468)  ; FAbs(value)
  %1470 = fadd fast float %1469, 0x3DDB7CDFE0000000
  %1471 = fdiv fast float %1463, %1470
  br label %1472

; <label>:1472                                    ; preds = %1457, %1448
  %1473 = phi float [ %1471, %1457 ], [ 1.000000e+00, %1448 ]
  %1474 = call float @dx.op.binary.f32(i32 36, float %1473, float %1449)  ; FMin(a,b)
  %1475 = fmul fast float %1381, %1381
  %1476 = fmul fast float %1395, %1395
  %1477 = fmul fast float %1383, %1383
  %1478 = fadd fast float %1477, %1475
  %1479 = fadd fast float %1478, %1476
  %1480 = call float @dx.op.unary.f32(i32 24, float %1479)  ; Sqrt(value)
  %1481 = fcmp fast ugt float %1480, 0.000000e+00
  br i1 %1481, label %1482, label %1497

; <label>:1482                                    ; preds = %1472
  %1483 = fsub fast float -0.000000e+00, %1383
  %1484 = fdiv fast float %1483, %1480
  %1485 = fsub fast float -0.000000e+00, %1381
  %1486 = fdiv fast float %1485, %1480
  %1487 = fdiv fast float %1395, %1480
  %1488 = fmul fast float %1394, 0x3FE279A760000000
  %1489 = fmul fast float %1486, %1381
  %1490 = fmul fast float %1487, %1395
  %1491 = fmul fast float %1484, %1383
  %1492 = fadd fast float %1489, %1491
  %1493 = fsub fast float %1492, %1490
  %1494 = call float @dx.op.unary.f32(i32 6, float %1493)  ; FAbs(value)
  %1495 = fadd fast float %1494, 0x3DDB7CDFE0000000
  %1496 = fdiv fast float %1488, %1495
  br label %1497

; <label>:1497                                    ; preds = %1482, %1472
  %1498 = phi float [ %1496, %1482 ], [ 1.000000e+00, %1472 ]
  %1499 = call float @dx.op.binary.f32(i32 36, float %1498, float %1474)  ; FMin(a,b)
  %1500 = call float @dx.op.unary.f32(i32 7, float %1499)  ; Saturate(value)
  %1501 = fcmp fast olt float %1500, 1.000000e+00
  br i1 %1501, label %1502, label %1512

; <label>:1502                                    ; preds = %1497
  %1503 = fmul fast float %1500, %1381
  %1504 = fmul fast float %1500, %1395
  %1505 = fmul fast float %1500, %1383
  %1506 = fmul fast float %1500, %1398
  %1507 = fmul fast float %1500, %1410
  %1508 = fmul fast float %1500, %1400
  %1509 = fmul fast float %1500, %1413
  %1510 = fmul fast float %1500, %1425
  %1511 = fmul fast float %1500, %1415
  br label %1512

; <label>:1512                                    ; preds = %1502, %1497
  %1513 = phi float [ %1509, %1502 ], [ %1413, %1497 ]
  %1514 = phi float [ %1510, %1502 ], [ %1425, %1497 ]
  %1515 = phi float [ %1511, %1502 ], [ %1415, %1497 ]
  %1516 = phi float [ %1506, %1502 ], [ %1398, %1497 ]
  %1517 = phi float [ %1507, %1502 ], [ %1410, %1497 ]
  %1518 = phi float [ %1508, %1502 ], [ %1400, %1497 ]
  %1519 = phi float [ %1503, %1502 ], [ %1381, %1497 ]
  %1520 = phi float [ %1504, %1502 ], [ %1395, %1497 ]
  %1521 = phi float [ %1505, %1502 ], [ %1383, %1497 ]
  %1522 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1394)  ; FMax(a,b)
  %1523 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1409)  ; FMax(a,b)
  %1524 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1424)  ; FMax(a,b)
  %1525 = fcmp fast oge float %1182, 0.000000e+00
  %1526 = and i1 %1525, %947
  %1527 = fcmp fast ole float %1182, 1.000000e+00
  %1528 = and i1 %1527, %1526
  %1529 = fcmp fast oge float %1183, 0.000000e+00
  %1530 = and i1 %1529, %1528
  %1531 = fcmp fast ole float %1183, 1.000000e+00
  %1532 = and i1 %1531, %1530
  br i1 %1532, label %1533, label %1678, !dx.controlflow.hints !97

; <label>:1533                                    ; preds = %1512
  %1534 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %1535 = extractvalue %dx.types.CBufRet.f32 %1534, 2
  %1536 = extractvalue %dx.types.CBufRet.f32 %1534, 3
  %1537 = fmul fast float %1535, %1182
  %1538 = fmul fast float %1536, %1183
  %1539 = call float @dx.op.unary.f32(i32 27, float %1537)  ; Round_ni(value)
  %1540 = call float @dx.op.unary.f32(i32 27, float %1538)  ; Round_ni(value)
  %1541 = fptosi float %1539 to i32
  %1542 = fptosi float %1540 to i32
  %1543 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %26, i32 0, i32 %1541, i32 %1542, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1544 = extractvalue %dx.types.ResRet.i32 %1543, 0
  %1545 = and i32 %1544, 65535
  %1546 = lshr i32 %1544, 16
  %1547 = icmp eq i32 %1545, 65535
  br i1 %1547, label %1584, label %1548

; <label>:1548                                    ; preds = %1533
  %1549 = extractvalue %dx.types.CBufRet.f32 %945, 1
  %1550 = extractvalue %dx.types.CBufRet.f32 %1534, 0
  %1551 = extractvalue %dx.types.CBufRet.f32 %1534, 1
  %1552 = fmul fast float %1550, %1182
  %1553 = fmul fast float %1551, %1183
  %1554 = fmul fast float %1552, 1.250000e-01
  %1555 = fmul fast float %1553, 1.250000e-01
  %1556 = call float @dx.op.unary.f32(i32 27, float %1554)  ; Round_ni(value)
  %1557 = call float @dx.op.unary.f32(i32 27, float %1555)  ; Round_ni(value)
  %1558 = fmul fast float %1556, 8.000000e+00
  %1559 = fmul fast float %1557, 8.000000e+00
  %1560 = and i32 %1544, 255
  %1561 = lshr i32 %1544, 8
  %1562 = and i32 %1561, 255
  %1563 = mul nuw nsw i32 %1560, 9
  %1564 = uitofp i32 %1563 to float
  %1565 = mul nuw nsw i32 %1562, 9
  %1566 = uitofp i32 %1565 to float
  %1567 = fadd fast float %1564, 5.000000e-01
  %1568 = fadd fast float %1567, %1552
  %1569 = fsub fast float %1568, %1558
  %1570 = fadd fast float %1566, 5.000000e-01
  %1571 = fadd fast float %1570, %1553
  %1572 = fsub fast float %1571, %1559
  %1573 = fdiv fast float %1569, %946
  %1574 = fdiv fast float %1572, %1549
  %1575 = fmul fast float %1210, 4.375000e-01
  %1576 = fadd fast float %1575, 3.125000e-02
  %1577 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %44, float %1573, float %1574, float %1576, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1578 = extractvalue %dx.types.ResRet.f32 %1577, 0
  %1579 = extractvalue %dx.types.ResRet.f32 %1577, 1
  %1580 = extractvalue %dx.types.ResRet.f32 %1577, 2
  %1581 = fadd fast float %1578, %1522
  %1582 = fadd fast float %1579, %1523
  %1583 = fadd fast float %1580, %1524
  br label %1584

; <label>:1584                                    ; preds = %1548, %1533
  %1585 = phi float [ %1583, %1548 ], [ %1524, %1533 ]
  %1586 = phi float [ %1582, %1548 ], [ %1523, %1533 ]
  %1587 = phi float [ %1581, %1548 ], [ %1522, %1533 ]
  %1588 = icmp eq i32 %1546, 65535
  br i1 %1588, label %1678, label %1589

; <label>:1589                                    ; preds = %1584
  %1590 = extractvalue %dx.types.CBufRet.f32 %945, 1
  %1591 = extractvalue %dx.types.CBufRet.f32 %1534, 0
  %1592 = extractvalue %dx.types.CBufRet.f32 %1534, 1
  %1593 = fmul fast float %1591, %1182
  %1594 = fmul fast float %1592, %1183
  %1595 = fmul fast float %1593, 1.250000e-01
  %1596 = fmul fast float %1594, 1.250000e-01
  %1597 = call float @dx.op.unary.f32(i32 27, float %1595)  ; Round_ni(value)
  %1598 = call float @dx.op.unary.f32(i32 27, float %1596)  ; Round_ni(value)
  %1599 = fmul fast float %1597, 8.000000e+00
  %1600 = fmul fast float %1598, 8.000000e+00
  %1601 = fsub fast float %1593, %1599
  %1602 = fsub fast float %1594, %1600
  %1603 = fadd fast float %1601, 5.000000e-01
  %1604 = fadd fast float %1602, 5.000000e-01
  %1605 = and i32 %1546, 255
  %1606 = lshr i32 %1544, 24
  %1607 = mul nuw nsw i32 %1605, 9
  %1608 = uitofp i32 %1607 to float
  %1609 = mul nuw nsw i32 %1606, 9
  %1610 = uitofp i32 %1609 to float
  %1611 = fadd fast float %1603, %1608
  %1612 = fadd fast float %1604, %1610
  %1613 = fdiv fast float %1611, %946
  %1614 = fdiv fast float %1612, %1590
  %1615 = fmul fast float %1210, 4.375000e-01
  %1616 = fadd fast float %1615, 3.125000e-02
  %1617 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %44, float %1613, float %1614, float %1616, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1618 = extractvalue %dx.types.ResRet.f32 %1617, 0
  %1619 = extractvalue %dx.types.ResRet.f32 %1617, 1
  %1620 = extractvalue %dx.types.ResRet.f32 %1617, 2
  %1621 = fadd fast float %1615, 5.312500e-01
  %1622 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %44, float %1613, float %1614, float %1621, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1623 = extractvalue %dx.types.ResRet.f32 %1622, 0
  %1624 = extractvalue %dx.types.ResRet.f32 %1622, 1
  %1625 = extractvalue %dx.types.ResRet.f32 %1622, 2
  %1626 = fmul fast float %1623, 2.000000e+00
  %1627 = fmul fast float %1624, 2.000000e+00
  %1628 = fmul fast float %1625, 2.000000e+00
  %1629 = fadd fast float %1626, -1.000000e+00
  %1630 = fadd fast float %1627, -1.000000e+00
  %1631 = fadd fast float %1628, -1.000000e+00
  %1632 = fmul fast float %1629, %1629
  %1633 = fmul fast float %1630, %1630
  %1634 = fadd fast float %1632, %1633
  %1635 = fmul fast float %1631, %1631
  %1636 = fadd fast float %1634, %1635
  %1637 = call float @dx.op.unary.f32(i32 24, float %1636)  ; Sqrt(value)
  %1638 = fcmp fast ogt float %1637, 0.000000e+00
  br i1 %1638, label %1639, label %1643

; <label>:1639                                    ; preds = %1589
  %1640 = fdiv fast float %1629, %1637
  %1641 = fdiv fast float %1630, %1637
  %1642 = fdiv fast float %1631, %1637
  br label %1643

; <label>:1643                                    ; preds = %1639, %1589
  %1644 = phi float [ %1640, %1639 ], [ 0.000000e+00, %1589 ]
  %1645 = phi float [ %1641, %1639 ], [ 0.000000e+00, %1589 ]
  %1646 = phi float [ %1642, %1639 ], [ 0.000000e+00, %1589 ]
  %1647 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1648 = extractvalue %dx.types.CBufRet.f32 %1647, 0
  %1649 = extractvalue %dx.types.CBufRet.f32 %1647, 1
  %1650 = fsub fast float %356, %1648
  %1651 = fsub fast float %357, %1649
  %1652 = fmul fast float %1650, %1650
  %1653 = fmul fast float %1651, %1651
  %1654 = fadd fast float %1652, %1653
  %1655 = call float @dx.op.unary.f32(i32 24, float %1654)  ; Sqrt(value)
  %1656 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %1657 = extractvalue %dx.types.CBufRet.f32 %1656, 0
  %1658 = extractvalue %dx.types.CBufRet.f32 %1656, 1
  %1659 = fsub fast float %1655, %1657
  %1660 = fdiv fast float %1659, %1658
  %1661 = call float @dx.op.unary.f32(i32 7, float %1660)  ; Saturate(value)
  %1662 = fmul fast float %1661, 2.000000e+00
  %1663 = fsub fast float 3.000000e+00, %1662
  %1664 = fmul fast float %1661, %1661
  %1665 = fmul fast float %1664, %1663
  %1666 = call float @dx.op.dot3.f32(i32 55, float %1644, float %1645, float %1646, float %181, float %182, float %183)  ; Dot3(ax,ay,az,bx,by,bz)
  %1667 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1666)  ; FMax(a,b)
  %1668 = fmul fast float %1667, 0x400C5BF8A0000000
  %1669 = fmul fast float %1665, %1618
  %1670 = fmul fast float %1669, %1668
  %1671 = fadd fast float %1670, %1587
  %1672 = fmul fast float %1665, %1619
  %1673 = fmul fast float %1672, %1668
  %1674 = fadd fast float %1673, %1586
  %1675 = fmul fast float %1665, %1620
  %1676 = fmul fast float %1675, %1668
  %1677 = fadd fast float %1676, %1585
  br label %1678

; <label>:1678                                    ; preds = %1643, %1584, %1512
  %1679 = phi float [ %1677, %1643 ], [ %1585, %1584 ], [ %1524, %1512 ]
  %1680 = phi float [ %1674, %1643 ], [ %1586, %1584 ], [ %1523, %1512 ]
  %1681 = phi float [ %1671, %1643 ], [ %1587, %1584 ], [ %1522, %1512 ]
  %1682 = fcmp fast ogt float %1169, %1206
  %1683 = and i1 %1525, %1682
  %1684 = and i1 %1527, %1683
  %1685 = and i1 %1529, %1684
  %1686 = and i1 %1531, %1685
  br i1 %1686, label %1687, label %1744, !dx.controlflow.hints !98

; <label>:1687                                    ; preds = %1678
  %1688 = fmul fast float %1208, 0x3FC24924A0000000
  %1689 = fsub fast float %1169, %1206
  %1690 = fdiv fast float %1689, %1688
  %1691 = call float @dx.op.unary.f32(i32 7, float %1690)  ; Saturate(value)
  %1692 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 275)  ; CBufferLoadLegacy(handle,regIndex)
  %1693 = extractvalue %dx.types.CBufRet.f32 %1692, 0
  %1694 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 276)  ; CBufferLoadLegacy(handle,regIndex)
  %1695 = extractvalue %dx.types.CBufRet.f32 %1694, 0
  %1696 = extractvalue %dx.types.CBufRet.f32 %1694, 1
  %1697 = extractvalue %dx.types.CBufRet.f32 %1694, 2
  %1698 = fsub fast float %1693, %1681
  %1699 = fsub fast float %1695, %1519
  %1700 = fsub fast float %1696, %1520
  %1701 = fsub fast float %1697, %1521
  %1702 = fmul fast float %1698, %1691
  %1703 = fmul fast float %1699, %1691
  %1704 = fmul fast float %1700, %1691
  %1705 = fmul fast float %1701, %1691
  %1706 = fadd fast float %1702, %1681
  %1707 = fadd fast float %1703, %1519
  %1708 = fadd fast float %1704, %1520
  %1709 = fadd fast float %1705, %1521
  %1710 = extractvalue %dx.types.CBufRet.f32 %1692, 1
  %1711 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 278)  ; CBufferLoadLegacy(handle,regIndex)
  %1712 = extractvalue %dx.types.CBufRet.f32 %1711, 0
  %1713 = extractvalue %dx.types.CBufRet.f32 %1711, 1
  %1714 = extractvalue %dx.types.CBufRet.f32 %1711, 2
  %1715 = fsub fast float %1710, %1680
  %1716 = fsub fast float %1712, %1516
  %1717 = fsub fast float %1713, %1517
  %1718 = fsub fast float %1714, %1518
  %1719 = fmul fast float %1715, %1691
  %1720 = fmul fast float %1716, %1691
  %1721 = fmul fast float %1717, %1691
  %1722 = fmul fast float %1718, %1691
  %1723 = fadd fast float %1719, %1680
  %1724 = fadd fast float %1720, %1516
  %1725 = fadd fast float %1721, %1517
  %1726 = fadd fast float %1722, %1518
  %1727 = extractvalue %dx.types.CBufRet.f32 %1692, 2
  %1728 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 280)  ; CBufferLoadLegacy(handle,regIndex)
  %1729 = extractvalue %dx.types.CBufRet.f32 %1728, 0
  %1730 = extractvalue %dx.types.CBufRet.f32 %1728, 1
  %1731 = extractvalue %dx.types.CBufRet.f32 %1728, 2
  %1732 = fsub fast float %1727, %1679
  %1733 = fsub fast float %1729, %1513
  %1734 = fsub fast float %1730, %1514
  %1735 = fsub fast float %1731, %1515
  %1736 = fmul fast float %1732, %1691
  %1737 = fmul fast float %1733, %1691
  %1738 = fmul fast float %1734, %1691
  %1739 = fmul fast float %1735, %1691
  %1740 = fadd fast float %1736, %1679
  %1741 = fadd fast float %1737, %1513
  %1742 = fadd fast float %1738, %1514
  %1743 = fadd fast float %1739, %1515
  br label %1744

; <label>:1744                                    ; preds = %1687, %1678
  %1745 = phi float [ %1740, %1687 ], [ %1679, %1678 ]
  %1746 = phi float [ %1741, %1687 ], [ %1513, %1678 ]
  %1747 = phi float [ %1742, %1687 ], [ %1514, %1678 ]
  %1748 = phi float [ %1743, %1687 ], [ %1515, %1678 ]
  %1749 = phi float [ %1723, %1687 ], [ %1680, %1678 ]
  %1750 = phi float [ %1724, %1687 ], [ %1516, %1678 ]
  %1751 = phi float [ %1725, %1687 ], [ %1517, %1678 ]
  %1752 = phi float [ %1726, %1687 ], [ %1518, %1678 ]
  %1753 = phi float [ %1706, %1687 ], [ %1681, %1678 ]
  %1754 = phi float [ %1707, %1687 ], [ %1519, %1678 ]
  %1755 = phi float [ %1708, %1687 ], [ %1520, %1678 ]
  %1756 = phi float [ %1709, %1687 ], [ %1521, %1678 ]
  %1757 = extractvalue %dx.types.CBufRet.f32 %1331, 3
  %1758 = fmul fast float %1757, %1753
  %1759 = fmul fast float %1757, %1749
  %1760 = fmul fast float %1757, %1745
  %1761 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1762 = extractvalue %dx.types.CBufRet.f32 %1761, 3
  %1763 = fmul fast float %1758, %1762
  %1764 = fmul fast float %1759, %1762
  %1765 = fmul fast float %1760, %1762
  %1766 = call float @dx.op.dot3.f32(i32 55, float %1763, float %1764, float %1765, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1767 = fmul fast float %1766, 0x3FD20DD760000000
  %1768 = fmul fast float %1754, 1.500000e+00
  %1769 = fmul fast float %1768, %1757
  %1770 = fmul fast float %1769, %1762
  %1771 = fmul fast float %1755, 1.500000e+00
  %1772 = fmul fast float %1771, %1757
  %1773 = fmul fast float %1772, %1762
  %1774 = fmul fast float %1756, 1.500000e+00
  %1775 = fmul fast float %1774, %1757
  %1776 = fmul fast float %1775, %1762
  %1777 = fmul fast float %1750, 1.500000e+00
  %1778 = fmul fast float %1777, %1757
  %1779 = fmul fast float %1778, %1762
  %1780 = fmul fast float %1751, 1.500000e+00
  %1781 = fmul fast float %1780, %1757
  %1782 = fmul fast float %1781, %1762
  %1783 = fmul fast float %1752, 1.500000e+00
  %1784 = fmul fast float %1783, %1757
  %1785 = fmul fast float %1784, %1762
  %1786 = fmul fast float %1746, 1.500000e+00
  %1787 = fmul fast float %1786, %1757
  %1788 = fmul fast float %1787, %1762
  %1789 = fmul fast float %1747, 1.500000e+00
  %1790 = fmul fast float %1789, %1757
  %1791 = fmul fast float %1790, %1762
  %1792 = fmul fast float %1748, 1.500000e+00
  %1793 = fmul fast float %1792, %1757
  %1794 = fmul fast float %1793, %1762
  %1795 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1763)  ; FMax(a,b)
  %1796 = call float @dx.op.dot3.f32(i32 55, float %1770, float %1773, float %1776, float %1770, float %1773, float %1776)  ; Dot3(ax,ay,az,bx,by,bz)
  %1797 = fcmp fast oeq float %1796, 0.000000e+00
  %1798 = fcmp fast oeq float %1795, 0.000000e+00
  %1799 = or i1 %1798, %1797
  br i1 %1799, label %1829, label %1800

; <label>:1800                                    ; preds = %1744
  %1801 = fsub fast float -0.000000e+00, %1776
  %1802 = fsub fast float -0.000000e+00, %1770
  %1803 = call float @dx.op.unary.f32(i32 24, float %1796)  ; Sqrt(value)
  %1804 = fdiv fast float %1803, %1795
  %1805 = fcmp fast ogt float %1804, 0x3FFB6F8900000000
  %1806 = select i1 %1805, float 0x3FFB6F8900000000, float %1804
  %1807 = fmul fast float %1806, 0x3FE8A23460000000
  %1808 = call float @dx.op.unary.f32(i32 7, float %1807)  ; Saturate(value)
  %1809 = call float @dx.op.binary.f32(i32 35, float %1806, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %1810 = fmul fast float %1808, %1795
  %1811 = fmul fast float %1809, 0x3FF279A740000000
  %1812 = fadd fast float %1811, -1.000000e+00
  %1813 = call float @dx.op.dot3.f32(i32 55, float %1801, float %1802, float %1773, float %1801, float %1802, float %1773)  ; Dot3(ax,ay,az,bx,by,bz)
  %1814 = call float @dx.op.unary.f32(i32 25, float %1813)  ; Rsqrt(value)
  %1815 = fmul fast float %1814, %1801
  %1816 = fmul fast float %1814, %1802
  %1817 = fmul fast float %1814, %1773
  %1818 = fmul fast float %1812, %1812
  %1819 = fsub fast float 1.000000e+00, %1818
  %1820 = fmul fast float %1809, 0x40005F8BE0000000
  %1821 = fsub fast float 0x400C5BF8A0000000, %1820
  %1822 = fdiv fast float %1810, %1821
  %1823 = fmul fast float %1822, 0x3FEE31C3C0000000
  %1824 = fmul fast float %1823, %1819
  %1825 = fmul fast float %1809, 0x3FDACB7480000000
  %1826 = fadd fast float %1825, 0xBFD7347680000000
  %1827 = fmul fast float %1826, %1822
  %1828 = fmul fast float %1827, %1819
  br label %1829

; <label>:1829                                    ; preds = %1800, %1744
  %1830 = phi float [ %1815, %1800 ], [ 0.000000e+00, %1744 ]
  %1831 = phi float [ %1816, %1800 ], [ 0.000000e+00, %1744 ]
  %1832 = phi float [ %1817, %1800 ], [ 0.000000e+00, %1744 ]
  %1833 = phi float [ %1824, %1800 ], [ 0.000000e+00, %1744 ]
  %1834 = phi float [ %1828, %1800 ], [ 0.000000e+00, %1744 ]
  %1835 = call float @dx.op.dot3.f32(i32 55, float %1830, float %1831, float %1832, float %181, float %182, float %183)  ; Dot3(ax,ay,az,bx,by,bz)
  %1836 = fmul fast float %1835, 0x3FDF454380000000
  %1837 = fmul fast float %1835, %1835
  %1838 = fmul fast float %1837, 0x3FEE471020000000
  %1839 = fadd fast float %1838, 0xBFD42F6020000000
  %1840 = fmul fast float %1795, 0x3FD20DD760000000
  %1841 = fmul fast float %1839, %1834
  %1842 = fadd fast float %1841, %1840
  %1843 = fmul fast float %1836, %1833
  %1844 = fadd fast float %1842, %1843
  %1845 = fsub fast float %1842, %1843
  %1846 = call float @dx.op.dot3.f32(i32 55, float %1830, float %1831, float %1832, float %337, float %338, float %339)  ; Dot3(ax,ay,az,bx,by,bz)
  %1847 = fmul fast float %1846, 0x3FDF454380000000
  %1848 = fmul fast float %1846, %1846
  %1849 = fmul fast float %1848, 0x3FEE471020000000
  %1850 = fadd fast float %1849, 0xBFD42F6020000000
  %1851 = call float @dx.op.dot3.f32(i32 55, float %1795, float %1833, float %1834, float 0x3FD20DD760000000, float %1847, float %1850)  ; Dot3(ax,ay,az,bx,by,bz)
  %1852 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1764)  ; FMax(a,b)
  %1853 = call float @dx.op.dot3.f32(i32 55, float %1779, float %1782, float %1785, float %1779, float %1782, float %1785)  ; Dot3(ax,ay,az,bx,by,bz)
  %1854 = fcmp fast oeq float %1853, 0.000000e+00
  %1855 = fcmp fast oeq float %1852, 0.000000e+00
  %1856 = or i1 %1855, %1854
  br i1 %1856, label %1886, label %1857

; <label>:1857                                    ; preds = %1829
  %1858 = fsub fast float -0.000000e+00, %1785
  %1859 = fsub fast float -0.000000e+00, %1779
  %1860 = call float @dx.op.unary.f32(i32 24, float %1853)  ; Sqrt(value)
  %1861 = fdiv fast float %1860, %1852
  %1862 = fcmp fast ogt float %1861, 0x3FFB6F8900000000
  %1863 = select i1 %1862, float 0x3FFB6F8900000000, float %1861
  %1864 = fmul fast float %1863, 0x3FE8A23460000000
  %1865 = call float @dx.op.unary.f32(i32 7, float %1864)  ; Saturate(value)
  %1866 = call float @dx.op.binary.f32(i32 35, float %1863, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %1867 = fmul fast float %1865, %1852
  %1868 = fmul fast float %1866, 0x3FF279A740000000
  %1869 = fadd fast float %1868, -1.000000e+00
  %1870 = call float @dx.op.dot3.f32(i32 55, float %1858, float %1859, float %1782, float %1858, float %1859, float %1782)  ; Dot3(ax,ay,az,bx,by,bz)
  %1871 = call float @dx.op.unary.f32(i32 25, float %1870)  ; Rsqrt(value)
  %1872 = fmul fast float %1871, %1858
  %1873 = fmul fast float %1871, %1859
  %1874 = fmul fast float %1871, %1782
  %1875 = fmul fast float %1869, %1869
  %1876 = fsub fast float 1.000000e+00, %1875
  %1877 = fmul fast float %1866, 0x40005F8BE0000000
  %1878 = fsub fast float 0x400C5BF8A0000000, %1877
  %1879 = fdiv fast float %1867, %1878
  %1880 = fmul fast float %1879, 0x3FEE31C3C0000000
  %1881 = fmul fast float %1880, %1876
  %1882 = fmul fast float %1866, 0x3FDACB7480000000
  %1883 = fadd fast float %1882, 0xBFD7347680000000
  %1884 = fmul fast float %1883, %1879
  %1885 = fmul fast float %1884, %1876
  br label %1886

; <label>:1886                                    ; preds = %1857, %1829
  %1887 = phi float [ %1872, %1857 ], [ 0.000000e+00, %1829 ]
  %1888 = phi float [ %1873, %1857 ], [ 0.000000e+00, %1829 ]
  %1889 = phi float [ %1874, %1857 ], [ 0.000000e+00, %1829 ]
  %1890 = phi float [ %1881, %1857 ], [ 0.000000e+00, %1829 ]
  %1891 = phi float [ %1885, %1857 ], [ 0.000000e+00, %1829 ]
  %1892 = call float @dx.op.dot3.f32(i32 55, float %1887, float %1888, float %1889, float %181, float %182, float %183)  ; Dot3(ax,ay,az,bx,by,bz)
  %1893 = fmul fast float %1892, 0x3FDF454380000000
  %1894 = fmul fast float %1892, %1892
  %1895 = fmul fast float %1894, 0x3FEE471020000000
  %1896 = fadd fast float %1895, 0xBFD42F6020000000
  %1897 = fmul fast float %1852, 0x3FD20DD760000000
  %1898 = fmul fast float %1896, %1891
  %1899 = fadd fast float %1898, %1897
  %1900 = fmul fast float %1893, %1890
  %1901 = fadd fast float %1899, %1900
  %1902 = fsub fast float %1899, %1900
  %1903 = call float @dx.op.dot3.f32(i32 55, float %1887, float %1888, float %1889, float %337, float %338, float %339)  ; Dot3(ax,ay,az,bx,by,bz)
  %1904 = fmul fast float %1903, 0x3FDF454380000000
  %1905 = fmul fast float %1903, %1903
  %1906 = fmul fast float %1905, 0x3FEE471020000000
  %1907 = fadd fast float %1906, 0xBFD42F6020000000
  %1908 = call float @dx.op.dot3.f32(i32 55, float %1852, float %1890, float %1891, float 0x3FD20DD760000000, float %1904, float %1907)  ; Dot3(ax,ay,az,bx,by,bz)
  %1909 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1765)  ; FMax(a,b)
  %1910 = call float @dx.op.dot3.f32(i32 55, float %1788, float %1791, float %1794, float %1788, float %1791, float %1794)  ; Dot3(ax,ay,az,bx,by,bz)
  %1911 = fcmp fast oeq float %1910, 0.000000e+00
  %1912 = fcmp fast oeq float %1909, 0.000000e+00
  %1913 = or i1 %1912, %1911
  br i1 %1913, label %1943, label %1914

; <label>:1914                                    ; preds = %1886
  %1915 = fsub fast float -0.000000e+00, %1794
  %1916 = fsub fast float -0.000000e+00, %1788
  %1917 = call float @dx.op.unary.f32(i32 24, float %1910)  ; Sqrt(value)
  %1918 = fdiv fast float %1917, %1909
  %1919 = fcmp fast ogt float %1918, 0x3FFB6F8900000000
  %1920 = select i1 %1919, float 0x3FFB6F8900000000, float %1918
  %1921 = fmul fast float %1920, 0x3FE8A23460000000
  %1922 = call float @dx.op.unary.f32(i32 7, float %1921)  ; Saturate(value)
  %1923 = call float @dx.op.binary.f32(i32 35, float %1920, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %1924 = fmul fast float %1922, %1909
  %1925 = fmul fast float %1923, 0x3FF279A740000000
  %1926 = fadd fast float %1925, -1.000000e+00
  %1927 = call float @dx.op.dot3.f32(i32 55, float %1915, float %1916, float %1791, float %1915, float %1916, float %1791)  ; Dot3(ax,ay,az,bx,by,bz)
  %1928 = call float @dx.op.unary.f32(i32 25, float %1927)  ; Rsqrt(value)
  %1929 = fmul fast float %1928, %1915
  %1930 = fmul fast float %1928, %1916
  %1931 = fmul fast float %1928, %1791
  %1932 = fmul fast float %1926, %1926
  %1933 = fsub fast float 1.000000e+00, %1932
  %1934 = fmul fast float %1923, 0x40005F8BE0000000
  %1935 = fsub fast float 0x400C5BF8A0000000, %1934
  %1936 = fdiv fast float %1924, %1935
  %1937 = fmul fast float %1936, 0x3FEE31C3C0000000
  %1938 = fmul fast float %1937, %1933
  %1939 = fmul fast float %1923, 0x3FDACB7480000000
  %1940 = fadd fast float %1939, 0xBFD7347680000000
  %1941 = fmul fast float %1940, %1936
  %1942 = fmul fast float %1941, %1933
  br label %1943

; <label>:1943                                    ; preds = %1914, %1886
  %1944 = phi float [ %1929, %1914 ], [ 0.000000e+00, %1886 ]
  %1945 = phi float [ %1930, %1914 ], [ 0.000000e+00, %1886 ]
  %1946 = phi float [ %1931, %1914 ], [ 0.000000e+00, %1886 ]
  %1947 = phi float [ %1938, %1914 ], [ 0.000000e+00, %1886 ]
  %1948 = phi float [ %1942, %1914 ], [ 0.000000e+00, %1886 ]
  %1949 = call float @dx.op.dot3.f32(i32 55, float %1944, float %1945, float %1946, float %181, float %182, float %183)  ; Dot3(ax,ay,az,bx,by,bz)
  %1950 = fmul fast float %1949, 0x3FDF454380000000
  %1951 = fmul fast float %1949, %1949
  %1952 = fmul fast float %1951, 0x3FEE471020000000
  %1953 = fadd fast float %1952, 0xBFD42F6020000000
  %1954 = fmul fast float %1909, 0x3FD20DD760000000
  %1955 = fmul fast float %1953, %1948
  %1956 = fadd fast float %1955, %1954
  %1957 = fmul fast float %1950, %1947
  %1958 = fadd fast float %1956, %1957
  %1959 = fsub fast float %1956, %1957
  %1960 = call float @dx.op.dot3.f32(i32 55, float %1944, float %1945, float %1946, float %337, float %338, float %339)  ; Dot3(ax,ay,az,bx,by,bz)
  %1961 = fmul fast float %1960, 0x3FDF454380000000
  %1962 = fmul fast float %1960, %1960
  %1963 = fmul fast float %1962, 0x3FEE471020000000
  %1964 = fadd fast float %1963, 0xBFD42F6020000000
  %1965 = call float @dx.op.dot3.f32(i32 55, float %1909, float %1947, float %1948, float 0x3FD20DD760000000, float %1961, float %1964)  ; Dot3(ax,ay,az,bx,by,bz)
  %1966 = call float @dx.op.binary.f32(i32 35, float %1844, float 0.000000e+00)  ; FMax(a,b)
  %1967 = call float @dx.op.binary.f32(i32 35, float %1901, float 0.000000e+00)  ; FMax(a,b)
  %1968 = call float @dx.op.binary.f32(i32 35, float %1958, float 0.000000e+00)  ; FMax(a,b)
  %1969 = call float @dx.op.binary.f32(i32 35, float %1845, float 0.000000e+00)  ; FMax(a,b)
  %1970 = call float @dx.op.binary.f32(i32 35, float %1902, float 0.000000e+00)  ; FMax(a,b)
  %1971 = call float @dx.op.binary.f32(i32 35, float %1959, float 0.000000e+00)  ; FMax(a,b)
  %1972 = call float @dx.op.binary.f32(i32 35, float %1851, float 0.000000e+00)  ; FMax(a,b)
  %1973 = call float @dx.op.binary.f32(i32 35, float %1908, float 0.000000e+00)  ; FMax(a,b)
  %1974 = call float @dx.op.binary.f32(i32 35, float %1965, float 0.000000e+00)  ; FMax(a,b)
  %1975 = fsub fast float %1163, %1966
  %1976 = fsub fast float %1164, %1967
  %1977 = fsub fast float %1165, %1968
  %1978 = fmul fast float %1975, %397
  %1979 = fmul fast float %1976, %397
  %1980 = fmul fast float %1977, %397
  %1981 = fadd fast float %1978, %1966
  %1982 = fadd fast float %1979, %1967
  %1983 = fadd fast float %1980, %1968
  %1984 = fsub fast float %1160, %1969
  %1985 = fsub fast float %1161, %1970
  %1986 = fsub fast float %1162, %1971
  %1987 = fmul fast float %1984, %397
  %1988 = fmul fast float %1985, %397
  %1989 = fmul fast float %1986, %397
  %1990 = fadd fast float %1987, %1969
  %1991 = fadd fast float %1988, %1970
  %1992 = fadd fast float %1989, %1971
  %1993 = fsub fast float %1157, %1972
  %1994 = fsub fast float %1158, %1973
  %1995 = fsub fast float %1159, %1974
  %1996 = fmul fast float %1993, %397
  %1997 = fmul fast float %1994, %397
  %1998 = fmul fast float %1995, %397
  %1999 = fadd fast float %1996, %1972
  %2000 = fadd fast float %1997, %1973
  %2001 = fadd fast float %1998, %1974
  %2002 = fsub fast float %944, %1767
  %2003 = fmul fast float %2002, %397
  %2004 = fadd fast float %2003, %1767
  br label %2005

; <label>:2005                                    ; preds = %1943, %1156
  %2006 = phi float [ %1999, %1943 ], [ %1157, %1156 ]
  %2007 = phi float [ %2000, %1943 ], [ %1158, %1156 ]
  %2008 = phi float [ %2001, %1943 ], [ %1159, %1156 ]
  %2009 = phi float [ %1990, %1943 ], [ %1160, %1156 ]
  %2010 = phi float [ %1991, %1943 ], [ %1161, %1156 ]
  %2011 = phi float [ %1992, %1943 ], [ %1162, %1156 ]
  %2012 = phi float [ %1981, %1943 ], [ %1163, %1156 ]
  %2013 = phi float [ %1982, %1943 ], [ %1164, %1156 ]
  %2014 = phi float [ %1983, %1943 ], [ %1165, %1156 ]
  %2015 = phi float [ %2004, %1943 ], [ %944, %1156 ]
  %2016 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %2017 = extractvalue %dx.types.CBufRet.f32 %2016, 0
  %2018 = call float @dx.op.binary.f32(i32 36, float %302, float %2017)  ; FMin(a,b)
  %2019 = fmul fast float %2018, %341
  %2020 = fsub fast float 1.000000e+00, %2019
  %2021 = bitcast float %2020 to i32
  %2022 = sub nsw i32 2129859010, %2021
  %2023 = bitcast i32 %2022 to float
  %2024 = call float @dx.op.binary.f32(i32 36, float %303, float %2017)  ; FMin(a,b)
  %2025 = fmul fast float %2024, %341
  %2026 = fsub fast float 1.000000e+00, %2025
  %2027 = bitcast float %2026 to i32
  %2028 = sub nsw i32 2129859010, %2027
  %2029 = bitcast i32 %2028 to float
  %2030 = call float @dx.op.binary.f32(i32 36, float %304, float %2017)  ; FMin(a,b)
  %2031 = fmul fast float %2030, %341
  %2032 = fsub fast float 1.000000e+00, %2031
  %2033 = bitcast float %2032 to i32
  %2034 = sub nsw i32 2129859010, %2033
  %2035 = bitcast i32 %2034 to float
  %2036 = fmul fast float %2012, %340
  %2037 = fmul fast float %2036, %2023
  %2038 = fmul fast float %2013, %340
  %2039 = fmul fast float %2038, %2029
  %2040 = fmul fast float %2014, %340
  %2041 = fmul fast float %2040, %2035
  %2042 = call float @dx.op.binary.f32(i32 36, float %311, float %2017)  ; FMin(a,b)
  %2043 = fmul fast float %2042, %341
  %2044 = fsub fast float 1.000000e+00, %2043
  %2045 = bitcast float %2044 to i32
  %2046 = sub nsw i32 2129859010, %2045
  %2047 = bitcast i32 %2046 to float
  %2048 = call float @dx.op.binary.f32(i32 36, float %312, float %2017)  ; FMin(a,b)
  %2049 = fmul fast float %2048, %341
  %2050 = fsub fast float 1.000000e+00, %2049
  %2051 = bitcast float %2050 to i32
  %2052 = sub nsw i32 2129859010, %2051
  %2053 = bitcast i32 %2052 to float
  %2054 = call float @dx.op.binary.f32(i32 36, float %329, float %2017)  ; FMin(a,b)
  %2055 = fmul fast float %2054, %341
  %2056 = fsub fast float 1.000000e+00, %2055
  %2057 = bitcast float %2056 to i32
  %2058 = sub nsw i32 2129859010, %2057
  %2059 = bitcast i32 %2058 to float
  %2060 = fmul fast float %2006, %340
  %2061 = fmul fast float %2060, %2047
  %2062 = fmul fast float %2007, %340
  %2063 = fmul fast float %2062, %2053
  %2064 = fmul fast float %2008, %340
  %2065 = fmul fast float %2064, %2059
  %2066 = call float @dx.op.dot3.f32(i32 55, float %2037, float %2039, float %2041, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2067 = select i1 %110, float 0.000000e+00, float %2037
  %2068 = select i1 %110, float %2066, float %2039
  %2069 = select i1 %110, float 0.000000e+00, float %2041
  %2070 = call float @dx.op.dot3.f32(i32 55, float %2009, float %2010, float %2011, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2071 = select i1 %110, float 0.000000e+00, float %2009
  %2072 = select i1 %110, float %2070, float %2010
  %2073 = select i1 %110, float 0.000000e+00, float %2011
  %2074 = call float @dx.op.dot3.f32(i32 55, float %2061, float %2063, float %2065, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2075 = select i1 %110, float 0.000000e+00, float %2061
  %2076 = select i1 %110, float %2074, float %2063
  %2077 = select i1 %110, float 0.000000e+00, float %2065
  %2078 = fmul fast float %331, 9.843750e-01
  %2079 = fmul fast float %193, 9.843750e-01
  %2080 = fadd fast float %2078, 7.812500e-03
  %2081 = fadd fast float %2079, 7.812500e-03
  %2082 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %44, float %2080, float %2081, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2083 = extractvalue %dx.types.ResRet.f32 %2082, 2
  %2084 = extractvalue %dx.types.ResRet.f32 %2082, 3
  %2085 = fmul fast float %2083, %311
  %2086 = fmul fast float %2083, %312
  %2087 = fmul fast float %2083, %329
  %2088 = fadd fast float %2085, %2084
  %2089 = fadd fast float %2086, %2084
  %2090 = fadd fast float %2087, %2084
  %2091 = call float @dx.op.binary.f32(i32 35, float %2089, float %2090)  ; FMax(a,b)
  %2092 = call float @dx.op.binary.f32(i32 35, float %2088, float %2091)  ; FMax(a,b)
  %2093 = fsub fast float 1.000000e+00, %2092
  %2094 = fmul fast float %2092, %193
  %2095 = fadd fast float %2094, %193
  %2096 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 252)  ; CBufferLoadLegacy(handle,regIndex)
  %2097 = extractvalue %dx.types.CBufRet.f32 %2096, 2
  %2098 = extractvalue %dx.types.CBufRet.f32 %2096, 3
  %2099 = fmul fast float %2095, %2097
  %2100 = fadd fast float %2099, %2098
  %2101 = call float @dx.op.unary.f32(i32 7, float %2100)  ; Saturate(value)
  %2102 = fsub fast float 1.000000e+00, %352
  %2103 = fadd fast float %2102, %2101
  %2104 = call float @dx.op.unary.f32(i32 7, float %2103)  ; Saturate(value)
  %2105 = fcmp fast olt float %2104, 1.000000e+00
  br i1 %2105, label %2106, label %2581

; <label>:2106                                    ; preds = %2005
  %2107 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %2108 = extractvalue %dx.types.CBufRet.f32 %2107, 2
  %2109 = extractvalue %dx.types.CBufRet.f32 %2107, 3
  %2110 = fmul fast float %2108, %73
  %2111 = fmul fast float %2109, %74
  %2112 = fptoui float %2110 to i32
  %2113 = fptoui float %2111 to i32
  %2114 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %2115 = extractvalue %dx.types.CBufRet.f32 %2114, 0
  %2116 = extractvalue %dx.types.CBufRet.f32 %2114, 2
  %2117 = extractvalue %dx.types.CBufRet.f32 %2114, 3
  %2118 = fadd fast float %226, -4.000000e+00
  %2119 = call float @dx.op.binary.f32(i32 35, float %2118, float 0.000000e+00)  ; FMax(a,b)
  %2120 = fadd fast float %2119, %2115
  %2121 = fmul fast float %2120, %2116
  %2122 = call float @dx.op.unary.f32(i32 23, float %2121)  ; Log(value)
  %2123 = fmul fast float %2122, %2117
  %2124 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %2125 = extractvalue %dx.types.CBufRet.f32 %2124, 2
  %2126 = fmul fast float %2123, %2125
  %2127 = call float @dx.op.unary.f32(i32 7, float %2126)  ; Saturate(value)
  %2128 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %2129 = extractvalue %dx.types.CBufRet.i32 %2128, 1
  %2130 = add i32 %2129, -1
  %2131 = uitofp i32 %2129 to float
  %2132 = fmul fast float %2131, %2127
  %2133 = fptoui float %2132 to i32
  %2134 = call i32 @dx.op.binary.i32(i32 40, i32 %2133, i32 %2130)  ; UMin(a,b)
  %2135 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %2136 = extractvalue %dx.types.CBufRet.i32 %2135, 2
  %2137 = extractvalue %dx.types.CBufRet.i32 %2135, 3
  %2138 = call i32 @dx.op.tertiary.i32(i32 49, i32 %2113, i32 %2136, i32 %2112)  ; UMad(a,b,c)
  %2139 = call i32 @dx.op.tertiary.i32(i32 49, i32 %2134, i32 %2137, i32 %2138)  ; UMad(a,b,c)
  %2140 = call float @dx.op.binary.f32(i32 35, float %226, float 0.000000e+00)  ; FMax(a,b)
  %2141 = fptoui float %2140 to i32
  %2142 = lshr i32 %2141, 5
  %2143 = call i32 @dx.op.binary.i32(i32 40, i32 %2142, i32 8191)  ; UMin(a,b)
  %2144 = call float @dx.op.unary.f32(i32 7, float %320)  ; Saturate(value)
  %2145 = fcmp fast ogt float %2144, 0.000000e+00
  %2146 = fcmp fast ogt float %339, 0.000000e+00
  %2147 = and i1 %2146, %2145
  br i1 %2147, label %2148, label %2177

; <label>:2148                                    ; preds = %2106
  %2149 = call float @dx.op.dot3.f32(i32 55, float %337, float %338, float %339, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %2150 = call float @dx.op.binary.f32(i32 35, float %2149, float -1.000000e+00)  ; FMax(a,b)
  %2151 = call float @dx.op.binary.f32(i32 36, float %2150, float 1.000000e+00)  ; FMin(a,b)
  %2152 = fmul fast float %2151, %2151
  %2153 = fsub fast float 1.000000e+00, %2152
  %2154 = fmul fast float %2153, 0x3FFC6E2300000000
  %2155 = fsub fast float 1.000000e+00, %2154
  %2156 = fcmp fast ogt float %2155, 0.000000e+00
  %2157 = call float @dx.op.unary.f32(i32 24, float %2155)  ; Sqrt(value)
  %2158 = fsub fast float 1.000000e+00, %2157
  %2159 = call float @dx.op.unary.f32(i32 23, float %2158)  ; Log(value)
  %2160 = fmul fast float %2159, 5.000000e+00
  %2161 = call float @dx.op.unary.f32(i32 21, float %2160)  ; Exp(value)
  %2162 = fmul fast float %2161, 0x3FEF591A60000000
  %2163 = fadd fast float %2162, 0x3F94DCB540000000
  %2164 = select i1 %2156, float %2163, float 1.000000e+00
  %2165 = fcmp fast oge float %2164, 1.000000e+00
  %2166 = fmul fast float %2149, 2.000000e+00
  %2167 = fadd fast float %2166, %339
  %2168 = select i1 %2165, float %2167, float %339
  %2169 = fsub fast float %2168, %339
  %2170 = fmul fast float %2169, %2144
  %2171 = fadd fast float %2170, %339
  %2172 = call float @dx.op.dot3.f32(i32 55, float %337, float %338, float %2171, float %337, float %338, float %2171)  ; Dot3(ax,ay,az,bx,by,bz)
  %2173 = call float @dx.op.unary.f32(i32 25, float %2172)  ; Rsqrt(value)
  %2174 = fmul fast float %2173, %337
  %2175 = fmul fast float %2173, %338
  %2176 = fmul fast float %2171, %2173
  br label %2177

; <label>:2177                                    ; preds = %2148, %2106
  %2178 = phi float [ %2174, %2148 ], [ %337, %2106 ]
  %2179 = phi float [ %2175, %2148 ], [ %338, %2106 ]
  %2180 = phi float [ %2176, %2148 ], [ %339, %2106 ]
  %2181 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %2182 = extractvalue %dx.types.CBufRet.i32 %2181, 2
  %2183 = add nsw i32 %2182, -1
  %2184 = call i32 @dx.op.binary.i32(i32 37, i32 %2183, i32 0)  ; IMax(a,b)
  %2185 = shl i32 %2143, 2
  %2186 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %2185, i32 undef)  ; BufferLoad(srv,index,wot)
  %2187 = extractvalue %dx.types.ResRet.i32 %2186, 0
  %2188 = lshr i32 %2187, 16
  %2189 = and i32 %2187, 65535
  %2190 = lshr i32 %2187, 21
  %2191 = lshr i32 %2189, 5
  %2192 = call i32 @dx.op.binary.i32(i32 40, i32 %2191, i32 %2184)  ; UMin(a,b)
  %2193 = icmp ugt i32 %2190, %2192
  br i1 %2193, label %2557, label %2194

; <label>:2194                                    ; preds = %2177
  br label %2195

; <label>:2195                                    ; preds = %2549, %2194
  %2196 = phi float [ %2550, %2549 ], [ 0.000000e+00, %2194 ]
  %2197 = phi float [ %2551, %2549 ], [ 0.000000e+00, %2194 ]
  %2198 = phi float [ %2552, %2549 ], [ 0.000000e+00, %2194 ]
  %2199 = phi float [ %2553, %2549 ], [ 1.000000e+00, %2194 ]
  %2200 = phi i32 [ %2554, %2549 ], [ %2190, %2194 ]
  %2201 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %2202 = extractvalue %dx.types.CBufRet.i32 %2201, 2
  %2203 = call i32 @dx.op.tertiary.i32(i32 49, i32 %2139, i32 %2202, i32 %2200)  ; UMad(a,b,c)
  %2204 = shl i32 %2203, 2
  %2205 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2204, i32 undef)  ; BufferLoad(srv,index,wot)
  %2206 = extractvalue %dx.types.ResRet.i32 %2205, 0
  %2207 = shl i32 %2200, 5
  %2208 = sub nsw i32 %2188, %2207
  %2209 = call i32 @dx.op.binary.i32(i32 37, i32 %2208, i32 0)  ; IMax(a,b)
  %2210 = call i32 @dx.op.binary.i32(i32 38, i32 %2209, i32 31)  ; IMin(a,b)
  %2211 = sub nsw i32 1, %2188
  %2212 = add nsw i32 %2211, %2189
  %2213 = call i32 @dx.op.binary.i32(i32 37, i32 %2212, i32 0)  ; IMax(a,b)
  %2214 = call i32 @dx.op.binary.i32(i32 38, i32 %2213, i32 32)  ; IMin(a,b)
  %2215 = and i32 %2214, 31
  %2216 = shl i32 -1, %2215
  %2217 = xor i32 %2216, -1
  %2218 = and i32 %2210, 31
  %2219 = shl i32 %2217, %2218
  %2220 = icmp eq i32 %2214, 32
  %2221 = select i1 %2220, i32 -1, i32 %2219
  %2222 = and i32 %2221, %2206
  %2223 = icmp eq i32 %2222, 0
  br i1 %2223, label %2549, label %2224

; <label>:2224                                    ; preds = %2195
  br label %2225

; <label>:2225                                    ; preds = %2332, %2224
  %2226 = phi float [ %2333, %2332 ], [ %2196, %2224 ]
  %2227 = phi float [ %2334, %2332 ], [ %2197, %2224 ]
  %2228 = phi float [ %2335, %2332 ], [ %2198, %2224 ]
  %2229 = phi float [ %2336, %2332 ], [ %2199, %2224 ]
  %2230 = phi i32 [ %2235, %2332 ], [ %2222, %2224 ]
  %2231 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %2230)  ; FirstbitLo(value)
  %2232 = add i32 %2231, %2207
  %2233 = and i32 %2231, 31
  %2234 = shl i32 1, %2233
  %2235 = xor i32 %2234, %2230
  %2236 = mul i32 %2232, 72
  %2237 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %2236, i32 undef)  ; BufferLoad(srv,index,wot)
  %2238 = extractvalue %dx.types.ResRet.f32 %2237, 0
  %2239 = extractvalue %dx.types.ResRet.f32 %2237, 1
  %2240 = extractvalue %dx.types.ResRet.f32 %2237, 2
  %2241 = add i32 %2236, 12
  %2242 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %2241, i32 undef)  ; BufferLoad(srv,index,wot)
  %2243 = extractvalue %dx.types.ResRet.i32 %2242, 0
  %2244 = add i32 %2236, 16
  %2245 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %2244, i32 undef)  ; BufferLoad(srv,index,wot)
  %2246 = extractvalue %dx.types.ResRet.f32 %2245, 0
  %2247 = extractvalue %dx.types.ResRet.f32 %2245, 1
  %2248 = extractvalue %dx.types.ResRet.f32 %2245, 2
  %2249 = add i32 %2236, 28
  %2250 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %2249, i32 undef)  ; BufferLoad(srv,index,wot)
  %2251 = extractvalue %dx.types.ResRet.f32 %2250, 0
  %2252 = add i32 %2236, 32
  %2253 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %2252, i32 undef)  ; BufferLoad(srv,index,wot)
  %2254 = extractvalue %dx.types.ResRet.f32 %2253, 0
  %2255 = extractvalue %dx.types.ResRet.f32 %2253, 1
  %2256 = extractvalue %dx.types.ResRet.f32 %2253, 2
  %2257 = extractvalue %dx.types.ResRet.f32 %2253, 3
  %2258 = add i32 %2236, 48
  %2259 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %2258, i32 undef)  ; BufferLoad(srv,index,wot)
  %2260 = extractvalue %dx.types.ResRet.f32 %2259, 0
  %2261 = extractvalue %dx.types.ResRet.f32 %2259, 1
  %2262 = add i32 %2236, 56
  %2263 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %2262, i32 undef)  ; BufferLoad(srv,index,wot)
  %2264 = extractvalue %dx.types.ResRet.f32 %2263, 0
  %2265 = extractvalue %dx.types.ResRet.f32 %2263, 1
  %2266 = add i32 %2236, 64
  %2267 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %2266, i32 undef)  ; BufferLoad(srv,index,wot)
  %2268 = extractvalue %dx.types.ResRet.f32 %2267, 0
  %2269 = extractvalue %dx.types.ResRet.f32 %2267, 1
  %2270 = mul i32 %2232, 60
  %2271 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %2270, i32 undef)  ; BufferLoad(srv,index,wot)
  %2272 = extractvalue %dx.types.ResRet.f32 %2271, 0
  %2273 = extractvalue %dx.types.ResRet.f32 %2271, 1
  %2274 = extractvalue %dx.types.ResRet.f32 %2271, 2
  %2275 = add i32 %2270, 12
  %2276 = add i32 %2270, 48
  %2277 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %2276, i32 undef)  ; BufferLoad(srv,index,wot)
  %2278 = extractvalue %dx.types.ResRet.f32 %2277, 0
  %2279 = extractvalue %dx.types.ResRet.f32 %2277, 1
  %2280 = extractvalue %dx.types.ResRet.f32 %2277, 2
  %2281 = and i32 %2243, 32767
  %2282 = bitcast float %2238 to i32
  %2283 = icmp eq i32 %2282, -1
  %2284 = bitcast float %2239 to i32
  %2285 = and i32 %2243, 32768
  %2286 = icmp ne i32 %2285, 0
  %2287 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %2288 = extractvalue %dx.types.CBufRet.f32 %2287, 0
  %2289 = extractvalue %dx.types.CBufRet.f32 %2287, 1
  %2290 = extractvalue %dx.types.CBufRet.f32 %2287, 2
  %2291 = fsub fast float %2272, %2288
  %2292 = fsub fast float %2273, %2289
  %2293 = fsub fast float %2274, %2290
  %2294 = fsub fast float %260, %2291
  %2295 = fsub fast float %261, %2292
  %2296 = fsub fast float %262, %2293
  %2297 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %2275, i32 undef)  ; BufferLoad(srv,index,wot)
  %2298 = extractvalue %dx.types.ResRet.f32 %2297, 0
  %2299 = extractvalue %dx.types.ResRet.f32 %2297, 1
  %2300 = extractvalue %dx.types.ResRet.f32 %2297, 2
  %2301 = call float @dx.op.dot3.f32(i32 55, float %2294, float %2295, float %2296, float %2298, float %2299, float %2300)  ; Dot3(ax,ay,az,bx,by,bz)
  %2302 = add i32 %2270, 24
  %2303 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %2302, i32 undef)  ; BufferLoad(srv,index,wot)
  %2304 = extractvalue %dx.types.ResRet.f32 %2303, 0
  %2305 = extractvalue %dx.types.ResRet.f32 %2303, 1
  %2306 = extractvalue %dx.types.ResRet.f32 %2303, 2
  %2307 = call float @dx.op.dot3.f32(i32 55, float %2294, float %2295, float %2296, float %2304, float %2305, float %2306)  ; Dot3(ax,ay,az,bx,by,bz)
  %2308 = add i32 %2270, 36
  %2309 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %2308, i32 undef)  ; BufferLoad(srv,index,wot)
  %2310 = extractvalue %dx.types.ResRet.f32 %2309, 0
  %2311 = extractvalue %dx.types.ResRet.f32 %2309, 1
  %2312 = extractvalue %dx.types.ResRet.f32 %2309, 2
  %2313 = call float @dx.op.dot3.f32(i32 55, float %2294, float %2295, float %2296, float %2310, float %2311, float %2312)  ; Dot3(ax,ay,az,bx,by,bz)
  %2314 = call float @dx.op.unary.f32(i32 6, float %2301)  ; FAbs(value)
  %2315 = call float @dx.op.unary.f32(i32 6, float %2307)  ; FAbs(value)
  %2316 = call float @dx.op.unary.f32(i32 6, float %2313)  ; FAbs(value)
  %2317 = fsub fast float %2278, %2314
  %2318 = fsub fast float %2279, %2315
  %2319 = fsub fast float %2280, %2316
  %2320 = fmul fast float %2317, %2246
  %2321 = fmul fast float %2318, %2247
  %2322 = fmul fast float %2319, %2248
  %2323 = call float @dx.op.binary.f32(i32 36, float %2321, float %2322)  ; FMin(a,b)
  %2324 = call float @dx.op.binary.f32(i32 36, float %2320, float %2323)  ; FMin(a,b)
  %2325 = call float @dx.op.unary.f32(i32 7, float %2324)  ; Saturate(value)
  %2326 = call float @dx.op.binary.f32(i32 36, float %2229, float %2325)  ; FMin(a,b)
  %2327 = uitofp i1 %2286 to float
  %2328 = fadd fast float %2144, 1.000000e+00
  %2329 = fsub fast float %2328, %2327
  %2330 = fmul fast float %2326, %2329
  %2331 = fcmp fast ogt float %2330, 0.000000e+00
  br i1 %2331, label %2338, label %2332

; <label>:2332                                    ; preds = %2480, %2225
  %2333 = phi float [ %2544, %2480 ], [ %2226, %2225 ]
  %2334 = phi float [ %2545, %2480 ], [ %2227, %2225 ]
  %2335 = phi float [ %2546, %2480 ], [ %2228, %2225 ]
  %2336 = phi float [ %2547, %2480 ], [ %2229, %2225 ]
  %2337 = icmp eq i32 %2230, %2234
  br i1 %2337, label %2548, label %2225

; <label>:2338                                    ; preds = %2225
  br i1 %2283, label %2396, label %2339

; <label>:2339                                    ; preds = %2338
  %2340 = fsub fast float -0.000000e+00, %2298
  %2341 = fsub fast float -0.000000e+00, %2299
  %2342 = fsub fast float -0.000000e+00, %2300
  %2343 = call float @dx.op.dot3.f32(i32 55, float %2178, float %2179, float %2180, float %2340, float %2341, float %2342)  ; Dot3(ax,ay,az,bx,by,bz)
  %2344 = fsub fast float -0.000000e+00, %2343
  %2345 = call float @dx.op.dot3.f32(i32 55, float %2294, float %2295, float %2296, float %2340, float %2341, float %2342)  ; Dot3(ax,ay,az,bx,by,bz)
  %2346 = fadd fast float %2345, %2261
  %2347 = fadd fast float %2260, %2345
  %2348 = fsub fast float -0.000000e+00, %2347
  %2349 = fcmp ogt float %2343, -0.000000e+00
  %2350 = select i1 %2349, float %2348, float %2346
  %2351 = call float @dx.op.unary.f32(i32 6, float %2344)  ; FAbs(value)
  %2352 = fdiv fast float 1.000000e+00, %2351
  %2353 = fmul fast float %2350, %2352
  %2354 = call float @dx.op.binary.f32(i32 35, float %2353, float 0.000000e+00)  ; FMax(a,b)
  %2355 = fsub fast float -0.000000e+00, %2304
  %2356 = fsub fast float -0.000000e+00, %2305
  %2357 = fsub fast float -0.000000e+00, %2306
  %2358 = call float @dx.op.dot3.f32(i32 55, float %2178, float %2179, float %2180, float %2355, float %2356, float %2357)  ; Dot3(ax,ay,az,bx,by,bz)
  %2359 = fsub fast float -0.000000e+00, %2358
  %2360 = call float @dx.op.dot3.f32(i32 55, float %2294, float %2295, float %2296, float %2355, float %2356, float %2357)  ; Dot3(ax,ay,az,bx,by,bz)
  %2361 = fadd fast float %2360, %2265
  %2362 = fadd fast float %2264, %2360
  %2363 = fsub fast float -0.000000e+00, %2362
  %2364 = fcmp ogt float %2358, -0.000000e+00
  %2365 = select i1 %2364, float %2363, float %2361
  %2366 = call float @dx.op.unary.f32(i32 6, float %2359)  ; FAbs(value)
  %2367 = fdiv fast float 1.000000e+00, %2366
  %2368 = fmul fast float %2365, %2367
  %2369 = call float @dx.op.binary.f32(i32 35, float %2368, float 0.000000e+00)  ; FMax(a,b)
  %2370 = fsub fast float -0.000000e+00, %2310
  %2371 = fsub fast float -0.000000e+00, %2311
  %2372 = fsub fast float -0.000000e+00, %2312
  %2373 = call float @dx.op.dot3.f32(i32 55, float %2178, float %2179, float %2180, float %2370, float %2371, float %2372)  ; Dot3(ax,ay,az,bx,by,bz)
  %2374 = fsub fast float -0.000000e+00, %2373
  %2375 = call float @dx.op.dot3.f32(i32 55, float %2294, float %2295, float %2296, float %2370, float %2371, float %2372)  ; Dot3(ax,ay,az,bx,by,bz)
  %2376 = fadd fast float %2375, %2269
  %2377 = fadd fast float %2268, %2375
  %2378 = fsub fast float -0.000000e+00, %2377
  %2379 = fcmp ogt float %2373, -0.000000e+00
  %2380 = select i1 %2379, float %2378, float %2376
  %2381 = call float @dx.op.unary.f32(i32 6, float %2374)  ; FAbs(value)
  %2382 = fdiv fast float 1.000000e+00, %2381
  %2383 = fmul fast float %2380, %2382
  %2384 = call float @dx.op.binary.f32(i32 35, float %2383, float 0.000000e+00)  ; FMax(a,b)
  %2385 = call float @dx.op.binary.f32(i32 36, float %2369, float %2384)  ; FMin(a,b)
  %2386 = call float @dx.op.binary.f32(i32 36, float %2354, float %2385)  ; FMin(a,b)
  %2387 = fmul fast float %2386, %2178
  %2388 = fmul fast float %2386, %2179
  %2389 = fmul fast float %2386, %2180
  %2390 = fadd fast float %2387, %260
  %2391 = fadd fast float %2388, %261
  %2392 = fadd fast float %2389, %262
  %2393 = fsub fast float %2390, %2238
  %2394 = fsub fast float %2391, %2239
  %2395 = fsub fast float %2392, %2240
  br label %2403

; <label>:2396                                    ; preds = %2338
  %2397 = fmul fast float %2178, 8.096000e+03
  %2398 = fmul fast float %2179, 8.096000e+03
  %2399 = fmul fast float %2180, 8.096000e+03
  %2400 = fadd fast float %2397, %260
  %2401 = fadd fast float %2398, %261
  %2402 = fadd fast float %2399, %262
  br label %2403

; <label>:2403                                    ; preds = %2396, %2339
  %2404 = phi float [ %2178, %2396 ], [ %2393, %2339 ]
  %2405 = phi float [ %2179, %2396 ], [ %2394, %2339 ]
  %2406 = phi float [ %2180, %2396 ], [ %2395, %2339 ]
  %2407 = phi float [ %2400, %2396 ], [ %2390, %2339 ]
  %2408 = phi float [ %2401, %2396 ], [ %2391, %2339 ]
  %2409 = phi float [ %2402, %2396 ], [ %2392, %2339 ]
  %2410 = fcmp fast olt float %2257, 1.000000e+00
  br i1 %2410, label %2411, label %2442, !dx.controlflow.hints !99

; <label>:2411                                    ; preds = %2403
  %2412 = fmul fast float %2406, %2255
  %2413 = fmul fast float %2405, %2256
  %2414 = fsub fast float %2412, %2413
  %2415 = fmul fast float %2404, %2256
  %2416 = fmul fast float %2406, %2254
  %2417 = fsub fast float %2415, %2416
  %2418 = fmul fast float %2405, %2254
  %2419 = fmul fast float %2404, %2255
  %2420 = fsub fast float %2418, %2419
  %2421 = fmul fast float %2414, 2.000000e+00
  %2422 = fmul fast float %2417, 2.000000e+00
  %2423 = fmul fast float %2420, 2.000000e+00
  %2424 = fmul fast float %2421, %2257
  %2425 = fmul fast float %2422, %2257
  %2426 = fmul fast float %2423, %2257
  %2427 = fmul fast float %2423, %2255
  %2428 = fmul fast float %2422, %2256
  %2429 = fmul fast float %2421, %2256
  %2430 = fmul fast float %2423, %2254
  %2431 = fmul fast float %2422, %2254
  %2432 = fmul fast float %2421, %2255
  %2433 = fadd fast float %2427, %2404
  %2434 = fadd fast float %2433, %2424
  %2435 = fsub fast float %2434, %2428
  %2436 = fsub fast float %2405, %2430
  %2437 = fadd fast float %2436, %2425
  %2438 = fadd fast float %2437, %2429
  %2439 = fadd fast float %2426, %2406
  %2440 = fsub fast float %2439, %2432
  %2441 = fadd fast float %2440, %2431
  br label %2442

; <label>:2442                                    ; preds = %2411, %2403
  %2443 = phi float [ %2435, %2411 ], [ %2404, %2403 ]
  %2444 = phi float [ %2438, %2411 ], [ %2405, %2403 ]
  %2445 = phi float [ %2441, %2411 ], [ %2406, %2403 ]
  br i1 %2283, label %2477, label %2446

; <label>:2446                                    ; preds = %2442
  %2447 = fmul fast float %193, 0x400187C840000000
  %2448 = fadd fast float %2447, 0xC00EFC2120000000
  %2449 = fmul fast float %2448, %193
  %2450 = fadd fast float %2449, 0x3FE5D16340000000
  %2451 = fmul fast float %2450, %193
  %2452 = fadd fast float %2451, 1.000000e+00
  %2453 = call float @dx.op.unary.f32(i32 7, float %2452)  ; Saturate(value)
  %2454 = fsub fast float %2407, %260
  %2455 = fsub fast float %2408, %261
  %2456 = fsub fast float %2409, %262
  %2457 = fsub fast float %2407, %2238
  %2458 = fsub fast float %2408, %2239
  %2459 = fsub fast float %2409, %2240
  %2460 = call float @dx.op.dot3.f32(i32 55, float %2454, float %2455, float %2456, float %2454, float %2455, float %2456)  ; Dot3(ax,ay,az,bx,by,bz)
  %2461 = call float @dx.op.dot3.f32(i32 55, float %2457, float %2458, float %2459, float %2457, float %2458, float %2459)  ; Dot3(ax,ay,az,bx,by,bz)
  %2462 = fadd fast float %2461, 0x3EE4F8B580000000
  %2463 = fdiv fast float %2460, %2462
  %2464 = bitcast float %2463 to i32
  %2465 = ashr i32 %2464, 1
  %2466 = add nsw i32 %2465, 532487669
  %2467 = bitcast i32 %2466 to float
  %2468 = fmul fast float %2467, %2453
  %2469 = call float @dx.op.unary.f32(i32 7, float %2468)  ; Saturate(value)
  %2470 = fmul fast float %2469, 0x4009981AE0000000
  %2471 = fsub fast float 0x40111BBD80000000, %2470
  %2472 = fmul fast float %2471, %2469
  %2473 = fadd fast float %2472, 0xC0009F6020000000
  %2474 = fmul fast float %2473, %2469
  %2475 = fadd fast float %2474, 1.000000e+00
  %2476 = call float @dx.op.unary.f32(i32 7, float %2475)  ; Saturate(value)
  br label %2480

; <label>:2477                                    ; preds = %2442
  %2478 = icmp ne i32 %2284, -1
  %2479 = zext i1 %2478 to i32
  br label %2480

; <label>:2480                                    ; preds = %2477, %2446
  %2481 = phi float [ %193, %2477 ], [ %2476, %2446 ]
  %2482 = phi i32 [ %2479, %2477 ], [ 0, %2446 ]
  %2483 = fmul float %2481, 5.000000e+00
  %2484 = fsub float 5.000000e+00, %2483
  %2485 = icmp ne i32 %2482, 0
  %2486 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %2487 = extractvalue %dx.types.CBufRet.f32 %2486, 3
  %2488 = fadd fast float %2487, %2484
  %2489 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2488)  ; FMax(a,b)
  %2490 = call float @dx.op.unary.f32(i32 6, float %2443)  ; FAbs(value)
  %2491 = call float @dx.op.unary.f32(i32 6, float %2444)  ; FAbs(value)
  %2492 = fadd fast float %2491, %2490
  %2493 = call float @dx.op.unary.f32(i32 6, float %2445)  ; FAbs(value)
  %2494 = fadd fast float %2492, %2493
  %2495 = fcmp fast oeq float %2494, 0.000000e+00
  %2496 = fdiv fast float 1.000000e+00, %2494
  %2497 = select i1 %2495, float 1.000000e+00, float %2496
  %2498 = fmul fast float %2497, %2443
  %2499 = fmul fast float %2497, %2444
  %2500 = call float @dx.op.unary.f32(i32 6, float %2499)  ; FAbs(value)
  %2501 = call float @dx.op.unary.f32(i32 6, float %2498)  ; FAbs(value)
  %2502 = fsub fast float 1.000000e+00, %2500
  %2503 = fsub fast float 1.000000e+00, %2501
  %2504 = fcmp fast oge float %2498, 0.000000e+00
  %2505 = fcmp fast oge float %2499, 0.000000e+00
  %2506 = select i1 %2504, float 1.000000e+00, float -1.000000e+00
  %2507 = select i1 %2505, float 1.000000e+00, float -1.000000e+00
  %2508 = fcmp fast ole float %2445, 0.000000e+00
  %2509 = fmul fast float %2506, %2502
  %2510 = fmul fast float %2507, %2503
  %2511 = select i1 %2508, float %2509, float %2498
  %2512 = select i1 %2508, float %2510, float %2499
  %2513 = fmul fast float %2511, 5.000000e-01
  %2514 = fmul fast float %2512, 5.000000e-01
  %2515 = fadd fast float %2513, 5.000000e-01
  %2516 = fadd fast float %2514, 5.000000e-01
  %2517 = uitofp i32 %2281 to float
  %2518 = call float @dx.op.binary.f32(i32 36, float %2489, float 3.000000e+00)  ; FMin(a,b)
  %2519 = fadd fast float %2518, 2.000000e+00
  %2520 = call float @dx.op.unary.f32(i32 21, float %2519)  ; Exp(value)
  %2521 = extractvalue %dx.types.CBufRet.f32 %2486, 1
  %2522 = fmul fast float %2521, %2520
  %2523 = fmul fast float %2522, 2.000000e+00
  %2524 = fsub fast float 1.000000e+00, %2523
  %2525 = fmul fast float %2515, %2524
  %2526 = fmul fast float %2516, %2524
  %2527 = fadd fast float %2525, %2522
  %2528 = fadd fast float %2526, %2522
  %2529 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %42, float %2527, float %2528, float %2517, float undef, i32 0, i32 0, i32 undef, float %2489)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2530 = extractvalue %dx.types.ResRet.f32 %2529, 0
  %2531 = extractvalue %dx.types.ResRet.f32 %2529, 1
  %2532 = extractvalue %dx.types.ResRet.f32 %2529, 2
  %2533 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2534 = extractvalue %dx.types.CBufRet.f32 %2533, 3
  %2535 = fmul fast float %2534, %2251
  %2536 = call float @dx.op.binary.f32(i32 36, float %2015, float %2535)  ; FMin(a,b)
  %2537 = select i1 %2485, float %2536, float %2535
  %2538 = fmul fast float %2530, %2330
  %2539 = fmul fast float %2538, %2537
  %2540 = fmul fast float %2531, %2330
  %2541 = fmul fast float %2540, %2537
  %2542 = fmul fast float %2532, %2330
  %2543 = fmul fast float %2542, %2537
  %2544 = fadd fast float %2539, %2226
  %2545 = fadd fast float %2541, %2227
  %2546 = fadd fast float %2543, %2228
  %2547 = fsub fast float %2229, %2330
  br label %2332

; <label>:2548                                    ; preds = %2332
  br label %2549

; <label>:2549                                    ; preds = %2548, %2195
  %2550 = phi float [ %2196, %2195 ], [ %2333, %2548 ]
  %2551 = phi float [ %2197, %2195 ], [ %2334, %2548 ]
  %2552 = phi float [ %2198, %2195 ], [ %2335, %2548 ]
  %2553 = phi float [ %2199, %2195 ], [ %2336, %2548 ]
  %2554 = add i32 %2200, 1
  %2555 = icmp ugt i32 %2554, %2192
  br i1 %2555, label %2556, label %2195, !llvm.loop !100

; <label>:2556                                    ; preds = %2549
  br label %2557

; <label>:2557                                    ; preds = %2556, %2177
  %2558 = phi float [ 0.000000e+00, %2177 ], [ %2550, %2556 ]
  %2559 = phi float [ 0.000000e+00, %2177 ], [ %2551, %2556 ]
  %2560 = phi float [ 0.000000e+00, %2177 ], [ %2552, %2556 ]
  %2561 = call float @dx.op.dot3.f32(i32 55, float %2558, float %2559, float %2560, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2562 = select i1 %110, float 0.000000e+00, float %2558
  %2563 = select i1 %110, float %2561, float %2559
  %2564 = select i1 %110, float 0.000000e+00, float %2560
  %2565 = fcmp fast olt float %2104, 0.000000e+00
  %2566 = call float @dx.op.unary.f32(i32 6, float %2104)  ; FAbs(value)
  %2567 = fmul fast float %2566, %2075
  %2568 = fmul fast float %2566, %2076
  %2569 = fmul fast float %2566, %2077
  %2570 = select i1 %2565, float %2075, float %2567
  %2571 = select i1 %2565, float %2076, float %2568
  %2572 = select i1 %2565, float %2077, float %2569
  %2573 = fsub fast float 1.000000e+00, %2566
  %2574 = call float @dx.op.unary.f32(i32 7, float %2573)  ; Saturate(value)
  %2575 = fmul fast float %2574, %2562
  %2576 = fmul fast float %2574, %2563
  %2577 = fmul fast float %2574, %2564
  %2578 = fadd fast float %2570, %2575
  %2579 = fadd fast float %2571, %2576
  %2580 = fadd fast float %2572, %2577
  br label %2581

; <label>:2581                                    ; preds = %2557, %2005
  %2582 = phi float [ %2075, %2005 ], [ %2578, %2557 ]
  %2583 = phi float [ %2076, %2005 ], [ %2579, %2557 ]
  %2584 = phi float [ %2077, %2005 ], [ %2580, %2557 ]
  %2585 = fmul fast float %2582, %2088
  %2586 = fmul fast float %2583, %2089
  %2587 = fmul fast float %2584, %2090
  %2588 = fmul fast float %2071, %200
  %2589 = fmul fast float %2072, %201
  %2590 = fmul fast float %2073, %202
  %2591 = fadd fast float %2588, %2067
  %2592 = fmul fast float %2591, %2093
  %2593 = fadd fast float %2589, %2068
  %2594 = fmul fast float %2593, %2093
  %2595 = fadd fast float %2590, %2069
  %2596 = fmul fast float %2595, %2093
  %2597 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %2598 = extractvalue %dx.types.CBufRet.f32 %2597, 3
  %2599 = fcmp fast oeq float %2598, 0.000000e+00
  br i1 %2599, label %4179, label %2600

; <label>:2600                                    ; preds = %2581
  %2601 = extractvalue %dx.types.CBufRet.f32 %2597, 0
  %2602 = extractvalue %dx.types.CBufRet.f32 %2597, 1
  %2603 = extractvalue %dx.types.CBufRet.f32 %2597, 2
  %2604 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %2605 = extractvalue %dx.types.CBufRet.f32 %2604, 0
  %2606 = extractvalue %dx.types.CBufRet.f32 %2604, 1
  %2607 = extractvalue %dx.types.CBufRet.f32 %2604, 2
  %2608 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %2609 = extractvalue %dx.types.CBufRet.f32 %2608, 0
  %2610 = extractvalue %dx.types.CBufRet.f32 %2608, 1
  %2611 = call float @dx.op.dot3.f32(i32 55, float %2605, float %2606, float %2607, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2612 = select i1 %110, float %2609, float %2605
  %2613 = select i1 %110, float %2611, float %2606
  %2614 = select i1 %110, float %2610, float %2607
  %2615 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %2616 = extractvalue %dx.types.CBufRet.f32 %2615, 2
  %2617 = fmul fast float %2616, %181
  %2618 = fmul fast float %2616, %182
  %2619 = fmul fast float %2616, %183
  %2620 = fadd fast float %2617, %260
  %2621 = fadd fast float %2618, %261
  %2622 = fadd fast float %2619, %262
  %2623 = fcmp fast olt float %2598, 0.000000e+00
  br i1 %2623, label %3881, label %2624

; <label>:2624                                    ; preds = %2600
  %2625 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %2626 = extractvalue %dx.types.CBufRet.f32 %2625, 0
  %2627 = extractvalue %dx.types.CBufRet.f32 %2625, 1
  %2628 = extractvalue %dx.types.CBufRet.f32 %2625, 2
  %2629 = extractvalue %dx.types.CBufRet.f32 %2625, 3
  %2630 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %2631 = extractvalue %dx.types.CBufRet.f32 %2630, 0
  %2632 = extractvalue %dx.types.CBufRet.f32 %2630, 1
  %2633 = extractvalue %dx.types.CBufRet.f32 %2630, 2
  %2634 = extractvalue %dx.types.CBufRet.f32 %2630, 3
  %2635 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %2636 = extractvalue %dx.types.CBufRet.f32 %2635, 0
  %2637 = extractvalue %dx.types.CBufRet.f32 %2635, 1
  %2638 = extractvalue %dx.types.CBufRet.f32 %2635, 2
  %2639 = extractvalue %dx.types.CBufRet.f32 %2635, 3
  %2640 = fmul fast float %2626, %2620
  %2641 = call float @dx.op.tertiary.f32(i32 46, float %2621, float %2627, float %2640)  ; FMad(a,b,c)
  %2642 = call float @dx.op.tertiary.f32(i32 46, float %2622, float %2628, float %2641)  ; FMad(a,b,c)
  %2643 = fadd fast float %2642, %2629
  %2644 = fmul fast float %2631, %2620
  %2645 = call float @dx.op.tertiary.f32(i32 46, float %2621, float %2632, float %2644)  ; FMad(a,b,c)
  %2646 = call float @dx.op.tertiary.f32(i32 46, float %2622, float %2633, float %2645)  ; FMad(a,b,c)
  %2647 = fadd fast float %2646, %2634
  %2648 = fmul fast float %2636, %2620
  %2649 = call float @dx.op.tertiary.f32(i32 46, float %2621, float %2637, float %2648)  ; FMad(a,b,c)
  %2650 = call float @dx.op.tertiary.f32(i32 46, float %2622, float %2638, float %2649)  ; FMad(a,b,c)
  %2651 = fadd fast float %2650, %2639
  %2652 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %2653 = extractvalue %dx.types.CBufRet.f32 %2652, 0
  %2654 = fcmp fast une float %2653, 0.000000e+00
  %2655 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %2656 = extractvalue %dx.types.CBufRet.f32 %2655, 0
  %2657 = extractvalue %dx.types.CBufRet.f32 %2655, 1
  %2658 = extractvalue %dx.types.CBufRet.f32 %2655, 3
  %2659 = fmul fast float %2658, %2643
  %2660 = fmul fast float %2658, %2647
  %2661 = fadd fast float %2659, %2656
  %2662 = fadd fast float %2660, %2657
  %2663 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %2664 = extractvalue %dx.types.CBufRet.f32 %2663, 0
  %2665 = extractvalue %dx.types.CBufRet.f32 %2663, 1
  %2666 = extractvalue %dx.types.CBufRet.f32 %2663, 3
  %2667 = fmul fast float %2666, %2643
  %2668 = fmul fast float %2666, %2647
  %2669 = fadd fast float %2667, %2664
  %2670 = fadd fast float %2668, %2665
  %2671 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %2672 = extractvalue %dx.types.CBufRet.f32 %2671, 1
  %2673 = fsub fast float %2672, %2651
  %2674 = extractvalue %dx.types.CBufRet.f32 %2671, 2
  %2675 = fmul fast float %2673, %2674
  %2676 = fsub fast float 1.000000e+00, %2675
  %2677 = call float @dx.op.unary.f32(i32 7, float %2676)  ; Saturate(value)
  br i1 %2654, label %2738, label %2678

; <label>:2678                                    ; preds = %2624
  %2679 = extractvalue %dx.types.CBufRet.f32 %2663, 2
  %2680 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %2681 = extractvalue %dx.types.CBufRet.f32 %2680, 2
  %2682 = fadd fast float %2681, %2679
  %2683 = fcmp fast ogt float %2682, 0.000000e+00
  br i1 %2683, label %2684, label %2708

; <label>:2684                                    ; preds = %2678
  %2685 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %2686 = extractvalue %dx.types.CBufRet.f32 %2685, 0
  %2687 = extractvalue %dx.types.CBufRet.f32 %2685, 1
  %2688 = fsub fast float %2669, %2686
  %2689 = fsub fast float %2670, %2687
  %2690 = fcmp fast olt float %2688, 0.000000e+00
  %2691 = fcmp fast olt float %2689, 0.000000e+00
  %2692 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %2693 = extractvalue %dx.types.CBufRet.f32 %2692, 0
  %2694 = extractvalue %dx.types.CBufRet.f32 %2692, 1
  %2695 = extractvalue %dx.types.CBufRet.f32 %2692, 2
  %2696 = extractvalue %dx.types.CBufRet.f32 %2692, 3
  %2697 = select i1 %2690, float %2693, float %2695
  %2698 = select i1 %2691, float %2694, float %2696
  %2699 = fmul fast float %2697, %2688
  %2700 = fmul fast float %2698, %2689
  %2701 = call float @dx.op.unary.f32(i32 6, float %2699)  ; FAbs(value)
  %2702 = call float @dx.op.unary.f32(i32 6, float %2700)  ; FAbs(value)
  %2703 = extractvalue %dx.types.CBufRet.f32 %2615, 0
  %2704 = call float @dx.op.binary.f32(i32 35, float %2701, float %2702)  ; FMax(a,b)
  %2705 = fsub fast float %2703, %2704
  %2706 = call float @dx.op.unary.f32(i32 7, float %2705)  ; Saturate(value)
  %2707 = fmul fast float %2706, %2677
  br label %2708

; <label>:2708                                    ; preds = %2684, %2678
  %2709 = phi float [ %2707, %2684 ], [ 0.000000e+00, %2678 ]
  %2710 = extractvalue %dx.types.CBufRet.f32 %2655, 2
  %2711 = extractvalue %dx.types.CBufRet.f32 %2680, 1
  %2712 = fadd fast float %2711, %2710
  %2713 = fcmp fast ogt float %2712, 0.000000e+00
  br i1 %2713, label %2714, label %2738

; <label>:2714                                    ; preds = %2708
  %2715 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %2716 = extractvalue %dx.types.CBufRet.f32 %2715, 0
  %2717 = extractvalue %dx.types.CBufRet.f32 %2715, 1
  %2718 = fsub fast float %2661, %2716
  %2719 = fsub fast float %2662, %2717
  %2720 = fcmp fast olt float %2718, 0.000000e+00
  %2721 = fcmp fast olt float %2719, 0.000000e+00
  %2722 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %2723 = extractvalue %dx.types.CBufRet.f32 %2722, 0
  %2724 = extractvalue %dx.types.CBufRet.f32 %2722, 1
  %2725 = extractvalue %dx.types.CBufRet.f32 %2722, 2
  %2726 = extractvalue %dx.types.CBufRet.f32 %2722, 3
  %2727 = select i1 %2720, float %2723, float %2725
  %2728 = select i1 %2721, float %2724, float %2726
  %2729 = fmul fast float %2727, %2718
  %2730 = fmul fast float %2728, %2719
  %2731 = call float @dx.op.unary.f32(i32 6, float %2729)  ; FAbs(value)
  %2732 = call float @dx.op.unary.f32(i32 6, float %2730)  ; FAbs(value)
  %2733 = extractvalue %dx.types.CBufRet.f32 %2615, 0
  %2734 = call float @dx.op.binary.f32(i32 35, float %2731, float %2732)  ; FMax(a,b)
  %2735 = fsub fast float %2733, %2734
  %2736 = call float @dx.op.unary.f32(i32 7, float %2735)  ; Saturate(value)
  %2737 = fmul fast float %2736, %2677
  br label %2738

; <label>:2738                                    ; preds = %2714, %2708, %2624
  %2739 = phi float [ 0.000000e+00, %2624 ], [ %2737, %2714 ], [ 0.000000e+00, %2708 ]
  %2740 = phi float [ 0.000000e+00, %2624 ], [ %2709, %2714 ], [ %2709, %2708 ]
  %2741 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %2742 = extractvalue %dx.types.CBufRet.f32 %2741, 1
  %2743 = call float @dx.op.unary.f32(i32 7, float %2742)  ; Saturate(value)
  %2744 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %2745 = extractvalue %dx.types.CBufRet.f32 %2744, 0
  %2746 = extractvalue %dx.types.CBufRet.f32 %2744, 1
  %2747 = fsub fast float %2643, %2745
  %2748 = fsub fast float %2647, %2746
  %2749 = fcmp fast olt float %2747, 0.000000e+00
  %2750 = fcmp fast olt float %2748, 0.000000e+00
  %2751 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %2752 = extractvalue %dx.types.CBufRet.f32 %2751, 0
  %2753 = extractvalue %dx.types.CBufRet.f32 %2751, 1
  %2754 = extractvalue %dx.types.CBufRet.f32 %2751, 2
  %2755 = extractvalue %dx.types.CBufRet.f32 %2751, 3
  %2756 = select i1 %2749, float %2752, float %2754
  %2757 = select i1 %2750, float %2753, float %2755
  %2758 = fmul fast float %2756, %2747
  %2759 = fmul fast float %2757, %2748
  %2760 = call float @dx.op.unary.f32(i32 6, float %2758)  ; FAbs(value)
  %2761 = call float @dx.op.unary.f32(i32 6, float %2759)  ; FAbs(value)
  %2762 = extractvalue %dx.types.CBufRet.f32 %2615, 0
  %2763 = call float @dx.op.binary.f32(i32 35, float %2760, float %2761)  ; FMax(a,b)
  %2764 = fsub fast float %2762, %2763
  %2765 = call float @dx.op.unary.f32(i32 7, float %2764)  ; Saturate(value)
  %2766 = call float @dx.op.binary.f32(i32 36, float %2765, float %2743)  ; FMin(a,b)
  %2767 = fmul fast float %2766, %2677
  %2768 = fsub fast float %2739, %2767
  %2769 = fsub fast float %2740, %2739
  %2770 = fsub fast float %2769, %2767
  %2771 = call float @dx.op.binary.f32(i32 35, float %2739, float %2740)  ; FMax(a,b)
  %2772 = call float @dx.op.binary.f32(i32 35, float %2767, float %2771)  ; FMax(a,b)
  %2773 = fcmp fast olt float %2772, 1.000000e+00
  br i1 %2773, label %2774, label %3172, !dx.controlflow.hints !102

; <label>:2774                                    ; preds = %2738
  %2775 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %2776 = extractvalue %dx.types.CBufRet.f32 %2775, 0
  %2777 = fcmp fast une float %2776, 0.000000e+00
  br i1 %2777, label %2778, label %3172, !dx.controlflow.hints !103

; <label>:2778                                    ; preds = %2774
  %2779 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %2780 = extractvalue %dx.types.CBufRet.f32 %2779, 0
  %2781 = extractvalue %dx.types.CBufRet.f32 %2779, 1
  %2782 = extractvalue %dx.types.CBufRet.f32 %2779, 2
  %2783 = extractvalue %dx.types.CBufRet.f32 %2779, 3
  %2784 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %2785 = extractvalue %dx.types.CBufRet.f32 %2784, 0
  %2786 = extractvalue %dx.types.CBufRet.f32 %2784, 1
  %2787 = extractvalue %dx.types.CBufRet.f32 %2784, 2
  %2788 = extractvalue %dx.types.CBufRet.f32 %2784, 3
  %2789 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %2790 = extractvalue %dx.types.CBufRet.f32 %2789, 0
  %2791 = extractvalue %dx.types.CBufRet.f32 %2789, 1
  %2792 = extractvalue %dx.types.CBufRet.f32 %2789, 2
  %2793 = extractvalue %dx.types.CBufRet.f32 %2789, 3
  %2794 = fmul fast float %2780, %2620
  %2795 = call float @dx.op.tertiary.f32(i32 46, float %2621, float %2781, float %2794)  ; FMad(a,b,c)
  %2796 = call float @dx.op.tertiary.f32(i32 46, float %2622, float %2782, float %2795)  ; FMad(a,b,c)
  %2797 = fadd fast float %2796, %2783
  %2798 = fmul fast float %2785, %2620
  %2799 = call float @dx.op.tertiary.f32(i32 46, float %2621, float %2786, float %2798)  ; FMad(a,b,c)
  %2800 = call float @dx.op.tertiary.f32(i32 46, float %2622, float %2787, float %2799)  ; FMad(a,b,c)
  %2801 = fadd fast float %2800, %2788
  %2802 = fmul fast float %2790, %2620
  %2803 = call float @dx.op.tertiary.f32(i32 46, float %2621, float %2791, float %2802)  ; FMad(a,b,c)
  %2804 = call float @dx.op.tertiary.f32(i32 46, float %2622, float %2792, float %2803)  ; FMad(a,b,c)
  %2805 = fadd fast float %2804, %2793
  %2806 = fcmp fast oge float %2797, 1.000000e+00
  %2807 = fcmp fast oge float %2801, 1.000000e+00
  %2808 = or i1 %2806, %2807
  %2809 = fcmp fast olt float %2797, 0.000000e+00
  %2810 = fcmp fast olt float %2801, 0.000000e+00
  %2811 = or i1 %2809, %2810
  %2812 = or i1 %2808, %2811
  br i1 %2812, label %3172, label %2813, !dx.controlflow.hints !104

; <label>:2813                                    ; preds = %2778
  %2814 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %2815 = extractvalue %dx.types.CBufRet.f32 %2814, 0
  %2816 = extractvalue %dx.types.CBufRet.f32 %2814, 1
  %2817 = extractvalue %dx.types.CBufRet.f32 %2814, 2
  %2818 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %2819 = extractvalue %dx.types.CBufRet.i32 %2818, 2
  %2820 = uitofp i32 %2819 to float
  %2821 = extractvalue %dx.types.CBufRet.i32 %2818, 3
  %2822 = uitofp i32 %2821 to float
  %2823 = extractvalue %dx.types.CBufRet.f32 %2814, 3
  %2824 = fmul fast float %2823, 2.000000e+00
  %2825 = fsub fast float %2797, %2815
  %2826 = fsub fast float %2801, %2816
  %2827 = fmul fast float %2824, %2825
  %2828 = fmul fast float %2824, %2826
  %2829 = fdiv fast float 1.000000e+00, %2603
  %2830 = fmul fast float %2828, %2829
  %2831 = call float @dx.op.unary.f32(i32 6, float %2830)  ; FAbs(value)
  %2832 = fmul fast float %2817, %2622
  %2833 = fmul fast float %2832, %2824
  %2834 = call float @dx.op.unary.f32(i32 6, float %2833)  ; FAbs(value)
  %2835 = call float @dx.op.unary.f32(i32 6, float %2827)  ; FAbs(value)
  %2836 = call float @dx.op.binary.f32(i32 35, float %2834, float %2831)  ; FMax(a,b)
  %2837 = call float @dx.op.binary.f32(i32 35, float %2835, float %2836)  ; FMax(a,b)
  %2838 = fmul fast float %2837, 2.000000e+00
  %2839 = call float @dx.op.unary.f32(i32 23, float %2838)  ; Log(value)
  %2840 = call float @dx.op.binary.f32(i32 35, float %2839, float %2820)  ; FMax(a,b)
  %2841 = call float @dx.op.unary.f32(i32 22, float %2840)  ; Frc(value)
  %2842 = fadd fast float %2841, 0xBFEA666660000000
  %2843 = fmul fast float %2842, 8.000000e+00
  %2844 = call float @dx.op.unary.f32(i32 7, float %2843)  ; Saturate(value)
  %2845 = call float @dx.op.unary.f32(i32 27, float %2840)  ; Round_ni(value)
  %2846 = fadd fast float %2845, %2844
  %2847 = call float @dx.op.binary.f32(i32 36, float %2846, float %2822)  ; FMin(a,b)
  %2848 = call float @dx.op.unary.f32(i32 27, float %2847)  ; Round_ni(value)
  %2849 = fsub fast float -0.000000e+00, %2848
  %2850 = call float @dx.op.unary.f32(i32 21, float %2849)  ; Exp(value)
  %2851 = fmul fast float %2850, %2824
  %2852 = fmul fast float %2851, %2797
  %2853 = fmul fast float %2851, %2801
  %2854 = fmul fast float %2852, 2.500000e-01
  %2855 = fmul fast float %2853, 2.500000e-01
  %2856 = fadd fast float %2854, 5.000000e-01
  %2857 = fadd fast float %2855, 5.000000e-01
  %2858 = fsub fast float %2822, %2820
  %2859 = fptoui float %2858 to i32
  %2860 = add i32 %2859, 320
  %2861 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 %2860)  ; CBufferLoadLegacy(handle,regIndex)
  %2862 = extractvalue %dx.types.CBufRet.f32 %2861, 0
  %2863 = extractvalue %dx.types.CBufRet.f32 %2861, 1
  %2864 = fcmp fast une float %2847, %2822
  %2865 = fsub fast float %2797, %2862
  %2866 = fsub fast float %2801, %2863
  %2867 = call float @dx.op.unary.f32(i32 6, float %2865)  ; FAbs(value)
  %2868 = call float @dx.op.unary.f32(i32 6, float %2866)  ; FAbs(value)
  %2869 = fmul fast float %2867, %2851
  %2870 = fmul fast float %2868, %2851
  %2871 = fcmp fast olt float %2869, 1.000000e+00
  %2872 = fcmp fast olt float %2870, 1.000000e+00
  %2873 = and i1 %2871, %2872
  %2874 = or i1 %2864, %2873
  br i1 %2874, label %2875, label %3172, !dx.controlflow.hints !105

; <label>:2875                                    ; preds = %2813
  %2876 = fmul fast float %2853, 5.000000e-01
  %2877 = fmul fast float %2852, 5.000000e-01
  %2878 = fadd fast float %2876, 5.000000e-01
  %2879 = fadd fast float %2877, 5.000000e-01
  %2880 = sitofp i32 %2819 to float
  %2881 = fsub fast float %2847, %2880
  %2882 = call float @dx.op.unary.f32(i32 27, float %2881)  ; Round_ni(value)
  %2883 = call float @dx.op.unary.f32(i32 22, float %2847)  ; Frc(value)
  %2884 = call float @dx.op.unary.f32(i32 22, float %2879)  ; Frc(value)
  %2885 = call float @dx.op.unary.f32(i32 22, float %2878)  ; Frc(value)
  %2886 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %43, float %2884, float %2885, float %2882, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2887 = extractvalue %dx.types.ResRet.f32 %2886, 0
  %2888 = extractvalue %dx.types.ResRet.f32 %2886, 1
  %2889 = extractvalue %dx.types.ResRet.f32 %2886, 2
  %2890 = extractvalue %dx.types.ResRet.f32 %2886, 3
  %2891 = fcmp fast ogt float %2883, 0.000000e+00
  br i1 %2891, label %2892, label %2913, !dx.controlflow.hints !106

; <label>:2892                                    ; preds = %2875
  %2893 = fadd fast float %2882, 1.000000e+00
  %2894 = call float @dx.op.unary.f32(i32 22, float %2856)  ; Frc(value)
  %2895 = call float @dx.op.unary.f32(i32 22, float %2857)  ; Frc(value)
  %2896 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %43, float %2894, float %2895, float %2893, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2897 = extractvalue %dx.types.ResRet.f32 %2896, 0
  %2898 = extractvalue %dx.types.ResRet.f32 %2896, 1
  %2899 = extractvalue %dx.types.ResRet.f32 %2896, 2
  %2900 = extractvalue %dx.types.ResRet.f32 %2896, 3
  %2901 = fsub fast float %2897, %2887
  %2902 = fsub fast float %2898, %2888
  %2903 = fsub fast float %2899, %2889
  %2904 = fsub fast float %2900, %2890
  %2905 = fmul fast float %2901, %2883
  %2906 = fmul fast float %2902, %2883
  %2907 = fmul fast float %2903, %2883
  %2908 = fmul fast float %2904, %2883
  %2909 = fadd fast float %2905, %2887
  %2910 = fadd fast float %2906, %2888
  %2911 = fadd fast float %2907, %2889
  %2912 = fadd fast float %2908, %2890
  br label %2913

; <label>:2913                                    ; preds = %2892, %2875
  %2914 = phi float [ %2909, %2892 ], [ %2887, %2875 ]
  %2915 = phi float [ %2910, %2892 ], [ %2888, %2875 ]
  %2916 = phi float [ %2911, %2892 ], [ %2889, %2875 ]
  %2917 = phi float [ %2912, %2892 ], [ %2890, %2875 ]
  %2918 = fadd fast float %2914, -5.000000e-01
  %2919 = fadd fast float %2916, -5.000000e-01
  %2920 = fmul fast float %2918, 0xBFD5555560000000
  %2921 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %2919, float %2920)  ; FMad(a,b,c)
  %2922 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %2915, float 0.000000e+00)  ; FMad(a,b,c)
  %2923 = fadd fast float %2922, %2917
  %2924 = fmul fast float %2918, -7.500000e-01
  %2925 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %2919, float %2924)  ; FMad(a,b,c)
  %2926 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %2915, float 0.000000e+00)  ; FMad(a,b,c)
  %2927 = fadd fast float %2926, %2917
  %2928 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %2929 = extractvalue %dx.types.CBufRet.f32 %2928, 0
  %2930 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %2931 = extractvalue %dx.types.CBufRet.f32 %2930, 0
  %2932 = extractvalue %dx.types.CBufRet.f32 %2930, 1
  %2933 = extractvalue %dx.types.CBufRet.f32 %2930, 2
  %2934 = extractvalue %dx.types.CBufRet.f32 %2930, 3
  %2935 = fsub fast float %2931, %2921
  %2936 = fsub fast float %2932, %2923
  %2937 = fsub fast float %2933, %2925
  %2938 = fsub fast float %2934, %2927
  %2939 = fmul fast float %2935, %2929
  %2940 = fmul fast float %2936, %2929
  %2941 = fmul fast float %2937, %2929
  %2942 = fmul fast float %2938, %2929
  %2943 = fadd fast float %2939, %2921
  %2944 = fadd fast float %2940, %2923
  %2945 = fadd fast float %2941, %2925
  %2946 = fadd fast float %2942, %2927
  %2947 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %2948 = extractvalue %dx.types.ResRet.i32 %2947, 0
  %2949 = and i32 %2948, 536870911
  %2950 = uitofp i32 %2949 to float
  %2951 = fmul fast float %2950, %2797
  %2952 = fmul fast float %2950, %2801
  %2953 = fptoui float %2951 to i32
  %2954 = fptoui float %2952 to i32
  %2955 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %2956 = extractvalue %dx.types.ResRet.i32 %2955, 0
  %2957 = and i32 %2956, 31
  %2958 = lshr i32 %2953, %2957
  %2959 = lshr i32 %2954, %2957
  %2960 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %2961 = extractvalue %dx.types.ResRet.i32 %2960, 0
  %2962 = and i32 %2961, 31
  %2963 = shl i32 1, %2962
  %2964 = call i32 @dx.op.binary.i32(i32 40, i32 %2963, i32 4)  ; UMin(a,b)
  %2965 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %2966 = extractvalue %dx.types.ResRet.i32 %2965, 0
  %2967 = extractvalue %dx.types.ResRet.i32 %2965, 1
  %2968 = icmp eq i32 %2964, 0
  br i1 %2968, label %3010, label %2969

; <label>:2969                                    ; preds = %2913
  br label %2970

; <label>:2970                                    ; preds = %2998, %2969
  %2971 = phi i32 [ %3001, %2998 ], [ 0, %2969 ]
  %2972 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %2973 = extractvalue %dx.types.ResRet.i32 %2972, 0
  %2974 = lshr i32 %2973, 16
  %2975 = and i32 %2974, 31
  %2976 = shl i32 %2959, %2975
  %2977 = add i32 %2976, %2958
  %2978 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %2979 = extractvalue %dx.types.ResRet.i32 %2978, 0
  %2980 = and i32 %2979, 31
  %2981 = shl i32 %2977, %2980
  %2982 = add i32 %2981, %2971
  %2983 = shl i32 %2982, 2
  %2984 = add i32 %2983, 32
  %2985 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %2984, i32 undef)  ; BufferLoad(srv,index,wot)
  %2986 = extractvalue %dx.types.ResRet.i32 %2985, 0
  %2987 = icmp slt i32 %2986, 0
  %2988 = getelementptr [12 x float], [12 x float]* %65, i32 0, i32 %2971
  %2989 = getelementptr [12 x float], [12 x float]* %66, i32 0, i32 %2971
  %2990 = bitcast float* %2988 to i32*
  %2991 = bitcast float* %2989 to i32*
  br i1 %2987, label %2992, label %2998

; <label>:2992                                    ; preds = %2970
  %2993 = and i32 %2986, 1073741823
  %2994 = add nuw nsw i32 %2993, 20
  %2995 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %2994, i32 undef)  ; BufferLoad(srv,index,wot)
  %2996 = extractvalue %dx.types.ResRet.i32 %2995, 0
  %2997 = extractvalue %dx.types.ResRet.i32 %2995, 1
  br label %2998

; <label>:2998                                    ; preds = %2992, %2970
  %2999 = phi i32 [ %2996, %2992 ], [ %2966, %2970 ]
  %3000 = phi i32 [ %2997, %2992 ], [ %2967, %2970 ]
  store i32 %2999, i32* %2990, align 4
  store i32 %3000, i32* %2991, align 4
  %3001 = add nuw i32 %2971, 1
  %3002 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %3003 = extractvalue %dx.types.CBufRet.i32 %3002, 2
  %3004 = icmp eq i32 %3003, 0
  %3005 = icmp ugt i32 %2986, -1073741825
  %3006 = and i1 %3005, %3004
  %3007 = icmp ult i32 %3001, %2964
  %3008 = and i1 %3006, %3007
  br i1 %3008, label %2970, label %3009

; <label>:3009                                    ; preds = %2998
  br label %3010

; <label>:3010                                    ; preds = %3009, %2913
  %3011 = phi i32 [ 0, %2913 ], [ %3001, %3009 ]
  %3012 = extractvalue %dx.types.CBufRet.f32 %2775, 2
  %3013 = fptoui float %3012 to i32
  %3014 = icmp eq i32 %3013, 0
  br i1 %3014, label %3066, label %3015

; <label>:3015                                    ; preds = %3010
  br label %3016

; <label>:3016                                    ; preds = %3061, %3015
  %3017 = phi i32 [ %3062, %3061 ], [ %3011, %3015 ]
  %3018 = phi i32 [ %3063, %3061 ], [ 0, %3015 ]
  %3019 = lshr i32 %3018, 2
  %3020 = and i32 %3018, 3
  %3021 = add nuw nsw i32 %3019, 83
  %3022 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 %3021)  ; CBufferLoadLegacy(handle,regIndex)
  %3023 = extractvalue %dx.types.CBufRet.i32 %3022, 0
  %3024 = extractvalue %dx.types.CBufRet.i32 %3022, 1
  %3025 = extractvalue %dx.types.CBufRet.i32 %3022, 2
  %3026 = extractvalue %dx.types.CBufRet.i32 %3022, 3
  %3027 = getelementptr inbounds [4 x i32], [4 x i32]* %49, i32 0, i32 0
  store i32 %3023, i32* %3027, align 4
  %3028 = getelementptr inbounds [4 x i32], [4 x i32]* %49, i32 0, i32 1
  store i32 %3024, i32* %3028, align 4
  %3029 = getelementptr inbounds [4 x i32], [4 x i32]* %49, i32 0, i32 2
  store i32 %3025, i32* %3029, align 4
  %3030 = getelementptr inbounds [4 x i32], [4 x i32]* %49, i32 0, i32 3
  store i32 %3026, i32* %3030, align 4
  %3031 = getelementptr inbounds [4 x i32], [4 x i32]* %49, i32 0, i32 %3020
  %3032 = load i32, i32* %3031, align 4, !tbaa !107, !noalias !111
  %3033 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %3034 = extractvalue %dx.types.ResRet.i32 %3033, 0
  %3035 = lshr i32 %3034, 16
  %3036 = and i32 %3035, 31
  %3037 = shl i32 %2959, %3036
  %3038 = add i32 %3037, %2958
  %3039 = shl i32 %3038, 2
  %3040 = add i32 %3039, %3032
  %3041 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %3040, i32 undef)  ; BufferLoad(srv,index,wot)
  %3042 = extractvalue %dx.types.ResRet.i32 %3041, 0
  %3043 = icmp eq i32 %3042, 0
  br i1 %3043, label %3061, label %3044

; <label>:3044                                    ; preds = %3016
  %3045 = icmp slt i32 %3042, 0
  %3046 = getelementptr [12 x float], [12 x float]* %65, i32 0, i32 %3017
  %3047 = getelementptr [12 x float], [12 x float]* %66, i32 0, i32 %3017
  %3048 = bitcast float* %3046 to i32*
  %3049 = bitcast float* %3047 to i32*
  br i1 %3045, label %3050, label %3057

; <label>:3050                                    ; preds = %3044
  %3051 = and i32 %3042, 1073741823
  %3052 = add i32 %3032, 20
  %3053 = add i32 %3052, %3051
  %3054 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %3053, i32 undef)  ; BufferLoad(srv,index,wot)
  %3055 = extractvalue %dx.types.ResRet.i32 %3054, 0
  %3056 = extractvalue %dx.types.ResRet.i32 %3054, 1
  br label %3057

; <label>:3057                                    ; preds = %3050, %3044
  %3058 = phi i32 [ %3055, %3050 ], [ %2966, %3044 ]
  %3059 = phi i32 [ %3056, %3050 ], [ %2967, %3044 ]
  store i32 %3058, i32* %3048, align 4
  store i32 %3059, i32* %3049, align 4
  %3060 = add i32 %3017, 1
  br label %3061

; <label>:3061                                    ; preds = %3057, %3016
  %3062 = phi i32 [ %3017, %3016 ], [ %3060, %3057 ]
  %3063 = add nuw i32 %3018, 1
  %3064 = icmp eq i32 %3063, %3013
  br i1 %3064, label %3065, label %3016

; <label>:3065                                    ; preds = %3061
  br label %3066

; <label>:3066                                    ; preds = %3065, %3010
  %3067 = phi i32 [ %3011, %3010 ], [ %3062, %3065 ]
  %3068 = icmp eq i32 %3067, 1
  %3069 = getelementptr [12 x float], [12 x float]* %65, i32 0, i32 0
  %3070 = getelementptr [12 x float], [12 x float]* %66, i32 0, i32 0
  br i1 %3068, label %3071, label %3074

; <label>:3071                                    ; preds = %3066
  %3072 = load float, float* %3069, align 4
  %3073 = load float, float* %3070, align 4
  br label %3101

; <label>:3074                                    ; preds = %3066
  %3075 = load float, float* %3069, align 4
  %3076 = load float, float* %3070, align 4
  %3077 = fdiv fast float 1.000000e+00, %3076
  %3078 = fsub fast float %3075, %3077
  %3079 = icmp ugt i32 %3067, 1
  br i1 %3079, label %3080, label %3096

; <label>:3080                                    ; preds = %3074
  br label %3081

; <label>:3081                                    ; preds = %3081, %3080
  %3082 = phi float [ %3091, %3081 ], [ %3078, %3080 ]
  %3083 = phi float [ %3092, %3081 ], [ %3075, %3080 ]
  %3084 = phi i32 [ %3093, %3081 ], [ 1, %3080 ]
  %3085 = getelementptr [12 x float], [12 x float]* %65, i32 0, i32 %3084
  %3086 = load float, float* %3085, align 4
  %3087 = getelementptr [12 x float], [12 x float]* %66, i32 0, i32 %3084
  %3088 = load float, float* %3087, align 4
  %3089 = fdiv fast float 1.000000e+00, %3088
  %3090 = fsub fast float %3086, %3089
  %3091 = call float @dx.op.binary.f32(i32 36, float %3082, float %3090)  ; FMin(a,b)
  %3092 = call float @dx.op.binary.f32(i32 35, float %3083, float %3086)  ; FMax(a,b)
  %3093 = add nuw i32 %3084, 1
  %3094 = icmp eq i32 %3093, %3067
  br i1 %3094, label %3095, label %3081

; <label>:3095                                    ; preds = %3081
  br label %3096

; <label>:3096                                    ; preds = %3095, %3074
  %3097 = phi float [ %3078, %3074 ], [ %3091, %3095 ]
  %3098 = phi float [ %3075, %3074 ], [ %3092, %3095 ]
  %3099 = fsub fast float %3098, %3097
  %3100 = fdiv fast float 1.000000e+00, %3099
  br label %3101

; <label>:3101                                    ; preds = %3096, %3071
  %3102 = phi float [ %3072, %3071 ], [ %3098, %3096 ]
  %3103 = phi float [ %3073, %3071 ], [ %3100, %3096 ]
  %3104 = fadd fast float %2805, %3102
  %3105 = fmul fast float %3104, %3103
  %3106 = call float @dx.op.unary.f32(i32 7, float %3105)  ; Saturate(value)
  %3107 = fmul fast float %3106, 2.000000e+00
  %3108 = fsub fast float 1.000000e+00, %3107
  %3109 = fmul fast float %2943, %2943
  %3110 = fsub fast float %2944, %3109
  %3111 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %3110)  ; FMax(a,b)
  %3112 = fdiv fast float 1.000000e+00, %3111
  %3113 = fmul fast float %2944, %2943
  %3114 = fsub fast float %2945, %3113
  %3115 = fsub fast float %3108, %2943
  %3116 = fmul fast float %3108, %3108
  %3117 = fsub fast float %3116, %2944
  %3118 = fmul fast float %3112, %3114
  %3119 = fmul fast float %3118, %3115
  %3120 = fsub fast float %3117, %3119
  %3121 = fmul fast float %2944, %2944
  %3122 = fsub fast float %2946, %3121
  %3123 = fmul fast float %3114, %3114
  %3124 = fmul fast float %3123, %3112
  %3125 = fsub fast float %3122, %3124
  %3126 = fdiv fast float %3120, %3125
  %3127 = fmul fast float %3126, %3114
  %3128 = fsub fast float %3115, %3127
  %3129 = fmul fast float %3128, %3112
  %3130 = fmul fast float %3129, %2943
  %3131 = fsub fast float 1.000000e+00, %3130
  %3132 = fmul fast float %3126, %2944
  %3133 = fsub fast float %3131, %3132
  %3134 = fmul fast float %3129, %3129
  %3135 = fmul fast float %3126, 4.000000e+00
  %3136 = fmul fast float %3135, %3133
  %3137 = fsub fast float %3134, %3136
  %3138 = call float @dx.op.unary.f32(i32 24, float %3137)  ; Sqrt(value)
  %3139 = fcmp fast oge float %3129, 0.000000e+00
  %3140 = fsub fast float -0.000000e+00, %3138
  %3141 = select i1 %3139, float %3140, float %3138
  %3142 = fsub fast float %3141, %3129
  %3143 = fdiv fast float %3142, %3126
  %3144 = fdiv fast float %3133, %3142
  %3145 = fmul fast float %3143, 5.000000e-01
  %3146 = fmul fast float %3144, 2.000000e+00
  %3147 = select i1 %3139, float %3145, float %3146
  %3148 = select i1 %3139, float %3146, float %3145
  %3149 = call float @dx.op.binary.f32(i32 35, float %3147, float %3148)  ; FMax(a,b)
  %3150 = call float @dx.op.binary.f32(i32 36, float %3147, float %3148)  ; FMin(a,b)
  %3151 = fcmp fast ogt float %3108, %3149
  %3152 = fsub fast float %3108, %3150
  %3153 = fsub fast float %3108, %3149
  %3154 = fsub fast float %3149, %3150
  %3155 = select i1 %3151, float %3153, float %3154
  %3156 = fmul float %3152, %3155
  %3157 = select i1 %3151, float %3150, float %3108
  %3158 = fcmp fast ogt float %3108, %3150
  %3159 = fmul fast float %3157, %3149
  %3160 = fadd fast float %3157, %3149
  %3161 = fmul fast float %3160, %2943
  %3162 = fadd fast float %3159, %2944
  %3163 = fsub fast float %3162, %3161
  %3164 = fdiv fast float %3163, %3156
  %3165 = select i1 %3158, float %3164, float 0.000000e+00
  %3166 = fsub fast float 1.000000e+00, %3165
  %3167 = select i1 %3151, float %3166, float %3165
  %3168 = call float @dx.op.unary.f32(i32 7, float %3167)  ; Saturate(value)
  %3169 = extractvalue %dx.types.CBufRet.f32 %2928, 3
  %3170 = fmul fast float %3169, %3168
  %3171 = fsub fast float 1.000000e+00, %3170
  br label %3172

; <label>:3172                                    ; preds = %3101, %2813, %2778, %2774, %2738
  %3173 = phi float [ 1.000000e+00, %2738 ], [ %3171, %3101 ], [ 1.000000e+00, %2778 ], [ 1.000000e+00, %2813 ], [ 1.000000e+00, %2774 ]
  %3174 = fcmp fast ogt float %2770, 0.000000e+00
  br i1 %3174, label %3175, label %3339, !dx.controlflow.hints !120

; <label>:3175                                    ; preds = %3172
  %3176 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %3177 = extractvalue %dx.types.CBufRet.f32 %3176, 2
  %3178 = fadd fast float %3177, %2651
  %3179 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %3180 = extractvalue %dx.types.CBufRet.f32 %3179, 2
  %3181 = extractvalue %dx.types.CBufRet.f32 %3179, 3
  %3182 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %3183 = extractvalue %dx.types.CBufRet.f32 %3182, 2
  %3184 = call float @dx.op.binary.f32(i32 35, float %3178, float 0.000000e+00)  ; FMax(a,b)
  %3185 = fadd fast float %3184, 0x3F10000000000000
  %3186 = fcmp fast oeq float %3183, 0.000000e+00
  br i1 %3186, label %3187, label %3254

; <label>:3187                                    ; preds = %3175
  %3188 = extractvalue %dx.types.CBufRet.f32 %3179, 1
  %3189 = extractvalue %dx.types.CBufRet.f32 %3179, 0
  %3190 = fmul fast float %3189, %2669
  %3191 = fmul fast float %3188, %2670
  %3192 = fadd fast float %3190, 5.000000e-01
  %3193 = call float @dx.op.unary.f32(i32 27, float %3192)  ; Round_ni(value)
  %3194 = fadd fast float %3191, 5.000000e-01
  %3195 = call float @dx.op.unary.f32(i32 27, float %3194)  ; Round_ni(value)
  %3196 = fsub fast float %3192, %3193
  %3197 = fsub fast float %3194, %3195
  %3198 = fadd fast float %3193, -5.000000e-01
  %3199 = fadd fast float %3195, -5.000000e-01
  %3200 = fmul fast float %3196, 2.000000e+00
  %3201 = fsub fast float 3.000000e+00, %3200
  %3202 = fadd fast float %3200, 1.000000e+00
  %3203 = fsub fast float 2.000000e+00, %3196
  %3204 = bitcast float %3201 to i32
  %3205 = sub nsw i32 2129859010, %3204
  %3206 = bitcast i32 %3205 to float
  %3207 = fmul fast float %3206, %3203
  %3208 = fadd fast float %3207, -1.000000e+00
  %3209 = bitcast float %3202 to i32
  %3210 = sub nsw i32 2129859010, %3209
  %3211 = bitcast i32 %3210 to float
  %3212 = fmul fast float %3211, %3196
  %3213 = fadd fast float %3212, 1.000000e+00
  %3214 = fmul fast float %3197, 2.000000e+00
  %3215 = fsub fast float 3.000000e+00, %3214
  %3216 = fadd fast float %3214, 1.000000e+00
  %3217 = fsub fast float 2.000000e+00, %3197
  %3218 = bitcast float %3215 to i32
  %3219 = sub nsw i32 2129859010, %3218
  %3220 = bitcast i32 %3219 to float
  %3221 = fmul fast float %3220, %3217
  %3222 = fadd fast float %3221, -1.000000e+00
  %3223 = bitcast float %3216 to i32
  %3224 = sub nsw i32 2129859010, %3223
  %3225 = bitcast i32 %3224 to float
  %3226 = fmul fast float %3225, %3197
  %3227 = fadd fast float %3226, 1.000000e+00
  %3228 = fadd fast float %3208, %3198
  %3229 = fmul fast float %3228, %3180
  %3230 = fadd fast float %3222, %3199
  %3231 = fmul fast float %3230, %3181
  %3232 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %9, %dx.types.Handle %46, float %3229, float %3231, float undef, float undef, i32 0, i32 0, i32 undef, float %3185)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3233 = extractvalue %dx.types.ResRet.f32 %3232, 0
  %3234 = fmul fast float %3233, %3201
  %3235 = fadd fast float %3213, %3198
  %3236 = fmul fast float %3235, %3180
  %3237 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %9, %dx.types.Handle %46, float %3236, float %3231, float undef, float undef, i32 0, i32 0, i32 undef, float %3185)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3238 = extractvalue %dx.types.ResRet.f32 %3237, 0
  %3239 = fmul fast float %3238, %3202
  %3240 = fadd fast float %3227, %3199
  %3241 = fmul fast float %3240, %3181
  %3242 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %9, %dx.types.Handle %46, float %3229, float %3241, float undef, float undef, i32 0, i32 0, i32 undef, float %3185)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3243 = extractvalue %dx.types.ResRet.f32 %3242, 0
  %3244 = fmul fast float %3243, %3201
  %3245 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %9, %dx.types.Handle %46, float %3236, float %3241, float undef, float undef, i32 0, i32 0, i32 undef, float %3185)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3246 = extractvalue %dx.types.ResRet.f32 %3245, 0
  %3247 = fmul fast float %3246, %3202
  %3248 = fadd fast float %3247, %3244
  %3249 = fmul fast float %3248, %3216
  %3250 = fadd fast float %3239, %3234
  %3251 = fmul fast float %3250, %3215
  %3252 = fadd fast float %3251, %3249
  %3253 = fmul fast float %3252, 6.250000e-02
  br label %3339

; <label>:3254                                    ; preds = %3175
  %3255 = fmul fast float %121, 0x401921FB60000000
  %3256 = call float @dx.op.unary.f32(i32 13, float %3255)  ; Sin(value)
  %3257 = call float @dx.op.unary.f32(i32 12, float %3255)  ; Cos(value)
  %3258 = fsub fast float -0.000000e+00, %3256
  br label %3259

; <label>:3259                                    ; preds = %3308, %3254
  %3260 = phi float [ 0.000000e+00, %3254 ], [ %3303, %3308 ]
  %3261 = phi float [ 0.000000e+00, %3254 ], [ %3305, %3308 ]
  %3262 = phi i32 [ 0, %3254 ], [ %3309, %3308 ]
  %3263 = mul i32 %3262, 2
  %3264 = add i32 0, %3263
  %3265 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %3264
  %3266 = load float, float* %3265, align 4
  %3267 = mul i32 %3262, 2
  %3268 = add i32 1, %3267
  %3269 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %3268
  %3270 = load float, float* %3269, align 4
  %3271 = fmul fast float %3266, %3257
  %3272 = call float @dx.op.tertiary.f32(i32 46, float %3270, float %3258, float %3271)  ; FMad(a,b,c)
  %3273 = fmul fast float %3266, %3256
  %3274 = call float @dx.op.tertiary.f32(i32 46, float %3270, float %3257, float %3273)  ; FMad(a,b,c)
  %3275 = fmul fast float %3272, %3183
  %3276 = fmul fast float %3274, %3183
  %3277 = fadd fast float %3275, %2669
  %3278 = fadd fast float %3276, %2670
  %3279 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %9, %dx.types.Handle %45, float %3277, float %3278, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %3280 = extractvalue %dx.types.ResRet.f32 %3279, 0
  %3281 = extractvalue %dx.types.ResRet.f32 %3279, 1
  %3282 = extractvalue %dx.types.ResRet.f32 %3279, 2
  %3283 = extractvalue %dx.types.ResRet.f32 %3279, 3
  %3284 = getelementptr inbounds [4 x float], [4 x float]* %70, i32 0, i32 0
  store float %3280, float* %3284, align 4
  %3285 = getelementptr inbounds [4 x float], [4 x float]* %70, i32 0, i32 1
  store float %3281, float* %3285, align 4
  %3286 = getelementptr inbounds [4 x float], [4 x float]* %70, i32 0, i32 2
  store float %3282, float* %3286, align 4
  %3287 = getelementptr inbounds [4 x float], [4 x float]* %70, i32 0, i32 3
  store float %3283, float* %3287, align 4
  %3288 = fsub fast float %3280, %3185
  %3289 = fcmp fast olt float %3288, 0.000000e+00
  %3290 = select i1 %3289, float 0.000000e+00, float 1.000000e+00
  %3291 = fadd fast float %3290, %3260
  %3292 = fmul fast float %3290, %3288
  %3293 = fadd fast float %3292, %3261
  br label %3294

; <label>:3294                                    ; preds = %3294, %3259
  %3295 = phi i32 [ 1, %3259 ], [ %3306, %3294 ]
  %3296 = phi float [ %3293, %3259 ], [ %3305, %3294 ]
  %3297 = phi float [ %3291, %3259 ], [ %3303, %3294 ]
  %3298 = getelementptr [4 x float], [4 x float]* %70, i32 0, i32 %3295
  %3299 = load float, float* %3298, align 4, !tbaa !121, !noalias !111
  %3300 = fsub fast float %3299, %3185
  %3301 = fcmp fast olt float %3300, 0.000000e+00
  %3302 = select i1 %3301, float 0.000000e+00, float 1.000000e+00
  %3303 = fadd fast float %3302, %3297
  %3304 = fmul fast float %3302, %3300
  %3305 = fadd fast float %3304, %3296
  %3306 = add nuw nsw i32 %3295, 1
  %3307 = icmp eq i32 %3306, 4
  br i1 %3307, label %3308, label %3294, !llvm.loop !123

; <label>:3308                                    ; preds = %3294
  %3309 = add nuw nsw i32 %3262, 1
  %3310 = icmp eq i32 %3309, 8
  br i1 %3310, label %3311, label %3259, !llvm.loop !124

; <label>:3311                                    ; preds = %3308
  %3312 = fdiv fast float 1.000000e+00, %3303
  %3313 = fmul fast float %3312, %3305
  %3314 = fdiv fast float 1.000000e+00, %3185
  %3315 = fmul fast float %3313, %3314
  %3316 = call float @dx.op.unary.f32(i32 7, float %3315)  ; Saturate(value)
  %3317 = call float @dx.op.binary.f32(i32 35, float %3316, float 0.000000e+00)  ; FMax(a,b)
  %3318 = fmul fast float %3303, 3.125000e-02
  %3319 = call float @dx.op.unary.f32(i32 7, float %3318)  ; Saturate(value)
  %3320 = fmul fast float %3319, 2.000000e+00
  %3321 = fadd fast float %3320, -1.000000e+00
  %3322 = fcmp fast ogt float %3321, 0.000000e+00
  %3323 = fcmp fast olt float %3321, 0.000000e+00
  %3324 = zext i1 %3322 to i32
  %3325 = zext i1 %3323 to i32
  %3326 = sub nsw i32 %3324, %3325
  %3327 = sitofp i32 %3326 to float
  %3328 = fmul fast float %3327, %3321
  %3329 = fsub fast float 1.000000e+00, %3328
  %3330 = fmul fast float %3329, %3329
  %3331 = fmul fast float %3330, %3329
  %3332 = fsub fast float %3329, %3331
  %3333 = fmul fast float %3332, %3317
  %3334 = fsub fast float 1.000000e+00, %3331
  %3335 = fsub fast float %3334, %3333
  %3336 = fmul fast float %3327, 5.000000e-01
  %3337 = fmul fast float %3336, %3335
  %3338 = fsub fast float 5.000000e-01, %3337
  br label %3339

; <label>:3339                                    ; preds = %3311, %3187, %3172
  %3340 = phi float [ 1.000000e+00, %3172 ], [ %3253, %3187 ], [ %3338, %3311 ]
  %3341 = fcmp fast ogt float %2768, 0.000000e+00
  br i1 %3341, label %3342, label %3506, !dx.controlflow.hints !125

; <label>:3342                                    ; preds = %3339
  %3343 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %3344 = extractvalue %dx.types.CBufRet.f32 %3343, 1
  %3345 = fadd fast float %3344, %2651
  %3346 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %3347 = extractvalue %dx.types.CBufRet.f32 %3346, 2
  %3348 = extractvalue %dx.types.CBufRet.f32 %3346, 3
  %3349 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %3350 = extractvalue %dx.types.CBufRet.f32 %3349, 1
  %3351 = call float @dx.op.binary.f32(i32 35, float %3345, float 0.000000e+00)  ; FMax(a,b)
  %3352 = fadd fast float %3351, 0x3F10000000000000
  %3353 = fcmp fast oeq float %3350, 0.000000e+00
  br i1 %3353, label %3354, label %3421

; <label>:3354                                    ; preds = %3342
  %3355 = extractvalue %dx.types.CBufRet.f32 %3346, 1
  %3356 = extractvalue %dx.types.CBufRet.f32 %3346, 0
  %3357 = fmul fast float %3356, %2661
  %3358 = fmul fast float %3355, %2662
  %3359 = fadd fast float %3357, 5.000000e-01
  %3360 = call float @dx.op.unary.f32(i32 27, float %3359)  ; Round_ni(value)
  %3361 = fadd fast float %3358, 5.000000e-01
  %3362 = call float @dx.op.unary.f32(i32 27, float %3361)  ; Round_ni(value)
  %3363 = fsub fast float %3359, %3360
  %3364 = fsub fast float %3361, %3362
  %3365 = fadd fast float %3360, -5.000000e-01
  %3366 = fadd fast float %3362, -5.000000e-01
  %3367 = fmul fast float %3363, 2.000000e+00
  %3368 = fsub fast float 3.000000e+00, %3367
  %3369 = fadd fast float %3367, 1.000000e+00
  %3370 = fsub fast float 2.000000e+00, %3363
  %3371 = bitcast float %3368 to i32
  %3372 = sub nsw i32 2129859010, %3371
  %3373 = bitcast i32 %3372 to float
  %3374 = fmul fast float %3373, %3370
  %3375 = fadd fast float %3374, -1.000000e+00
  %3376 = bitcast float %3369 to i32
  %3377 = sub nsw i32 2129859010, %3376
  %3378 = bitcast i32 %3377 to float
  %3379 = fmul fast float %3378, %3363
  %3380 = fadd fast float %3379, 1.000000e+00
  %3381 = fmul fast float %3364, 2.000000e+00
  %3382 = fsub fast float 3.000000e+00, %3381
  %3383 = fadd fast float %3381, 1.000000e+00
  %3384 = fsub fast float 2.000000e+00, %3364
  %3385 = bitcast float %3382 to i32
  %3386 = sub nsw i32 2129859010, %3385
  %3387 = bitcast i32 %3386 to float
  %3388 = fmul fast float %3387, %3384
  %3389 = fadd fast float %3388, -1.000000e+00
  %3390 = bitcast float %3383 to i32
  %3391 = sub nsw i32 2129859010, %3390
  %3392 = bitcast i32 %3391 to float
  %3393 = fmul fast float %3392, %3364
  %3394 = fadd fast float %3393, 1.000000e+00
  %3395 = fadd fast float %3375, %3365
  %3396 = fmul fast float %3395, %3347
  %3397 = fadd fast float %3389, %3366
  %3398 = fmul fast float %3397, %3348
  %3399 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %10, %dx.types.Handle %46, float %3396, float %3398, float undef, float undef, i32 0, i32 0, i32 undef, float %3352)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3400 = extractvalue %dx.types.ResRet.f32 %3399, 0
  %3401 = fmul fast float %3400, %3368
  %3402 = fadd fast float %3380, %3365
  %3403 = fmul fast float %3402, %3347
  %3404 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %10, %dx.types.Handle %46, float %3403, float %3398, float undef, float undef, i32 0, i32 0, i32 undef, float %3352)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3405 = extractvalue %dx.types.ResRet.f32 %3404, 0
  %3406 = fmul fast float %3405, %3369
  %3407 = fadd fast float %3394, %3366
  %3408 = fmul fast float %3407, %3348
  %3409 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %10, %dx.types.Handle %46, float %3396, float %3408, float undef, float undef, i32 0, i32 0, i32 undef, float %3352)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3410 = extractvalue %dx.types.ResRet.f32 %3409, 0
  %3411 = fmul fast float %3410, %3368
  %3412 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %10, %dx.types.Handle %46, float %3403, float %3408, float undef, float undef, i32 0, i32 0, i32 undef, float %3352)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3413 = extractvalue %dx.types.ResRet.f32 %3412, 0
  %3414 = fmul fast float %3413, %3369
  %3415 = fadd fast float %3414, %3411
  %3416 = fmul fast float %3415, %3383
  %3417 = fadd fast float %3406, %3401
  %3418 = fmul fast float %3417, %3382
  %3419 = fadd fast float %3418, %3416
  %3420 = fmul fast float %3419, 6.250000e-02
  br label %3506

; <label>:3421                                    ; preds = %3342
  %3422 = fmul fast float %121, 0x401921FB60000000
  %3423 = call float @dx.op.unary.f32(i32 13, float %3422)  ; Sin(value)
  %3424 = call float @dx.op.unary.f32(i32 12, float %3422)  ; Cos(value)
  %3425 = fsub fast float -0.000000e+00, %3423
  br label %3426

; <label>:3426                                    ; preds = %3475, %3421
  %3427 = phi float [ 0.000000e+00, %3421 ], [ %3470, %3475 ]
  %3428 = phi float [ 0.000000e+00, %3421 ], [ %3472, %3475 ]
  %3429 = phi i32 [ 0, %3421 ], [ %3476, %3475 ]
  %3430 = mul i32 %3429, 2
  %3431 = add i32 0, %3430
  %3432 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %3431
  %3433 = load float, float* %3432, align 4
  %3434 = mul i32 %3429, 2
  %3435 = add i32 1, %3434
  %3436 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %3435
  %3437 = load float, float* %3436, align 4
  %3438 = fmul fast float %3433, %3424
  %3439 = call float @dx.op.tertiary.f32(i32 46, float %3437, float %3425, float %3438)  ; FMad(a,b,c)
  %3440 = fmul fast float %3433, %3423
  %3441 = call float @dx.op.tertiary.f32(i32 46, float %3437, float %3424, float %3440)  ; FMad(a,b,c)
  %3442 = fmul fast float %3439, %3350
  %3443 = fmul fast float %3441, %3350
  %3444 = fadd fast float %3442, %2661
  %3445 = fadd fast float %3443, %2662
  %3446 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %10, %dx.types.Handle %45, float %3444, float %3445, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %3447 = extractvalue %dx.types.ResRet.f32 %3446, 0
  %3448 = extractvalue %dx.types.ResRet.f32 %3446, 1
  %3449 = extractvalue %dx.types.ResRet.f32 %3446, 2
  %3450 = extractvalue %dx.types.ResRet.f32 %3446, 3
  %3451 = getelementptr inbounds [4 x float], [4 x float]* %69, i32 0, i32 0
  store float %3447, float* %3451, align 4
  %3452 = getelementptr inbounds [4 x float], [4 x float]* %69, i32 0, i32 1
  store float %3448, float* %3452, align 4
  %3453 = getelementptr inbounds [4 x float], [4 x float]* %69, i32 0, i32 2
  store float %3449, float* %3453, align 4
  %3454 = getelementptr inbounds [4 x float], [4 x float]* %69, i32 0, i32 3
  store float %3450, float* %3454, align 4
  %3455 = fsub fast float %3447, %3352
  %3456 = fcmp fast olt float %3455, 0.000000e+00
  %3457 = select i1 %3456, float 0.000000e+00, float 1.000000e+00
  %3458 = fadd fast float %3457, %3427
  %3459 = fmul fast float %3457, %3455
  %3460 = fadd fast float %3459, %3428
  br label %3461

; <label>:3461                                    ; preds = %3461, %3426
  %3462 = phi i32 [ 1, %3426 ], [ %3473, %3461 ]
  %3463 = phi float [ %3460, %3426 ], [ %3472, %3461 ]
  %3464 = phi float [ %3458, %3426 ], [ %3470, %3461 ]
  %3465 = getelementptr [4 x float], [4 x float]* %69, i32 0, i32 %3462
  %3466 = load float, float* %3465, align 4, !tbaa !121, !noalias !111
  %3467 = fsub fast float %3466, %3352
  %3468 = fcmp fast olt float %3467, 0.000000e+00
  %3469 = select i1 %3468, float 0.000000e+00, float 1.000000e+00
  %3470 = fadd fast float %3469, %3464
  %3471 = fmul fast float %3469, %3467
  %3472 = fadd fast float %3471, %3463
  %3473 = add nuw nsw i32 %3462, 1
  %3474 = icmp eq i32 %3473, 4
  br i1 %3474, label %3475, label %3461, !llvm.loop !123

; <label>:3475                                    ; preds = %3461
  %3476 = add nuw nsw i32 %3429, 1
  %3477 = icmp eq i32 %3476, 8
  br i1 %3477, label %3478, label %3426, !llvm.loop !124

; <label>:3478                                    ; preds = %3475
  %3479 = fdiv fast float 1.000000e+00, %3470
  %3480 = fmul fast float %3479, %3472
  %3481 = fdiv fast float 1.000000e+00, %3352
  %3482 = fmul fast float %3480, %3481
  %3483 = call float @dx.op.unary.f32(i32 7, float %3482)  ; Saturate(value)
  %3484 = call float @dx.op.binary.f32(i32 35, float %3483, float 0.000000e+00)  ; FMax(a,b)
  %3485 = fmul fast float %3470, 3.125000e-02
  %3486 = call float @dx.op.unary.f32(i32 7, float %3485)  ; Saturate(value)
  %3487 = fmul fast float %3486, 2.000000e+00
  %3488 = fadd fast float %3487, -1.000000e+00
  %3489 = fcmp fast ogt float %3488, 0.000000e+00
  %3490 = fcmp fast olt float %3488, 0.000000e+00
  %3491 = zext i1 %3489 to i32
  %3492 = zext i1 %3490 to i32
  %3493 = sub nsw i32 %3491, %3492
  %3494 = sitofp i32 %3493 to float
  %3495 = fmul fast float %3494, %3488
  %3496 = fsub fast float 1.000000e+00, %3495
  %3497 = fmul fast float %3496, %3496
  %3498 = fmul fast float %3497, %3496
  %3499 = fsub fast float %3496, %3498
  %3500 = fmul fast float %3499, %3484
  %3501 = fsub fast float 1.000000e+00, %3498
  %3502 = fsub fast float %3501, %3500
  %3503 = fmul fast float %3494, 5.000000e-01
  %3504 = fmul fast float %3503, %3502
  %3505 = fsub fast float 5.000000e-01, %3504
  br label %3506

; <label>:3506                                    ; preds = %3478, %3354, %3339
  %3507 = phi float [ 1.000000e+00, %3339 ], [ %3420, %3354 ], [ %3505, %3478 ]
  %3508 = fcmp fast ogt float %2767, 0.000000e+00
  br i1 %3508, label %3509, label %3827, !dx.controlflow.hints !126

; <label>:3509                                    ; preds = %3506
  %3510 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %3511 = extractvalue %dx.types.CBufRet.f32 %3510, 0
  %3512 = fadd fast float %3511, %2651
  %3513 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %3514 = extractvalue %dx.types.CBufRet.f32 %3513, 2
  %3515 = extractvalue %dx.types.CBufRet.f32 %3513, 3
  %3516 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %3517 = extractvalue %dx.types.CBufRet.f32 %3516, 0
  %3518 = call float @dx.op.binary.f32(i32 35, float %3512, float 0.000000e+00)  ; FMax(a,b)
  %3519 = fadd fast float %3518, 0x3F10000000000000
  %3520 = fcmp fast oeq float %3517, 0.000000e+00
  br i1 %2654, label %3521, label %3674, !dx.controlflow.hints !127

; <label>:3521                                    ; preds = %3509
  br i1 %3520, label %3522, label %3589

; <label>:3522                                    ; preds = %3521
  %3523 = extractvalue %dx.types.CBufRet.f32 %3513, 1
  %3524 = extractvalue %dx.types.CBufRet.f32 %3513, 0
  %3525 = fmul fast float %3524, %2643
  %3526 = fmul fast float %3523, %2647
  %3527 = fadd fast float %3525, 5.000000e-01
  %3528 = call float @dx.op.unary.f32(i32 27, float %3527)  ; Round_ni(value)
  %3529 = fadd fast float %3526, 5.000000e-01
  %3530 = call float @dx.op.unary.f32(i32 27, float %3529)  ; Round_ni(value)
  %3531 = fsub fast float %3527, %3528
  %3532 = fsub fast float %3529, %3530
  %3533 = fadd fast float %3528, -5.000000e-01
  %3534 = fadd fast float %3530, -5.000000e-01
  %3535 = fmul fast float %3531, 2.000000e+00
  %3536 = fsub fast float 3.000000e+00, %3535
  %3537 = fadd fast float %3535, 1.000000e+00
  %3538 = fsub fast float 2.000000e+00, %3531
  %3539 = bitcast float %3536 to i32
  %3540 = sub nsw i32 2129859010, %3539
  %3541 = bitcast i32 %3540 to float
  %3542 = fmul fast float %3541, %3538
  %3543 = fadd fast float %3542, -1.000000e+00
  %3544 = bitcast float %3537 to i32
  %3545 = sub nsw i32 2129859010, %3544
  %3546 = bitcast i32 %3545 to float
  %3547 = fmul fast float %3546, %3531
  %3548 = fadd fast float %3547, 1.000000e+00
  %3549 = fmul fast float %3532, 2.000000e+00
  %3550 = fsub fast float 3.000000e+00, %3549
  %3551 = fadd fast float %3549, 1.000000e+00
  %3552 = fsub fast float 2.000000e+00, %3532
  %3553 = bitcast float %3550 to i32
  %3554 = sub nsw i32 2129859010, %3553
  %3555 = bitcast i32 %3554 to float
  %3556 = fmul fast float %3555, %3552
  %3557 = fadd fast float %3556, -1.000000e+00
  %3558 = bitcast float %3551 to i32
  %3559 = sub nsw i32 2129859010, %3558
  %3560 = bitcast i32 %3559 to float
  %3561 = fmul fast float %3560, %3532
  %3562 = fadd fast float %3561, 1.000000e+00
  %3563 = fadd fast float %3543, %3533
  %3564 = fmul fast float %3563, %3514
  %3565 = fadd fast float %3557, %3534
  %3566 = fmul fast float %3565, %3515
  %3567 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %12, %dx.types.Handle %46, float %3564, float %3566, float undef, float undef, i32 0, i32 0, i32 undef, float %3519)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3568 = extractvalue %dx.types.ResRet.f32 %3567, 0
  %3569 = fmul fast float %3568, %3536
  %3570 = fadd fast float %3548, %3533
  %3571 = fmul fast float %3570, %3514
  %3572 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %12, %dx.types.Handle %46, float %3571, float %3566, float undef, float undef, i32 0, i32 0, i32 undef, float %3519)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3573 = extractvalue %dx.types.ResRet.f32 %3572, 0
  %3574 = fmul fast float %3573, %3537
  %3575 = fadd fast float %3562, %3534
  %3576 = fmul fast float %3575, %3515
  %3577 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %12, %dx.types.Handle %46, float %3564, float %3576, float undef, float undef, i32 0, i32 0, i32 undef, float %3519)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3578 = extractvalue %dx.types.ResRet.f32 %3577, 0
  %3579 = fmul fast float %3578, %3536
  %3580 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %12, %dx.types.Handle %46, float %3571, float %3576, float undef, float undef, i32 0, i32 0, i32 undef, float %3519)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3581 = extractvalue %dx.types.ResRet.f32 %3580, 0
  %3582 = fmul fast float %3581, %3537
  %3583 = fadd fast float %3582, %3579
  %3584 = fmul fast float %3583, %3551
  %3585 = fadd fast float %3574, %3569
  %3586 = fmul fast float %3585, %3550
  %3587 = fadd fast float %3586, %3584
  %3588 = fmul fast float %3587, 6.250000e-02
  br label %3827

; <label>:3589                                    ; preds = %3521
  %3590 = fmul fast float %121, 0x401921FB60000000
  %3591 = call float @dx.op.unary.f32(i32 13, float %3590)  ; Sin(value)
  %3592 = call float @dx.op.unary.f32(i32 12, float %3590)  ; Cos(value)
  %3593 = fsub fast float -0.000000e+00, %3591
  br label %3594

; <label>:3594                                    ; preds = %3643, %3589
  %3595 = phi float [ 0.000000e+00, %3589 ], [ %3638, %3643 ]
  %3596 = phi float [ 0.000000e+00, %3589 ], [ %3640, %3643 ]
  %3597 = phi i32 [ 0, %3589 ], [ %3644, %3643 ]
  %3598 = mul i32 %3597, 2
  %3599 = add i32 0, %3598
  %3600 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %3599
  %3601 = load float, float* %3600, align 4
  %3602 = mul i32 %3597, 2
  %3603 = add i32 1, %3602
  %3604 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %3603
  %3605 = load float, float* %3604, align 4
  %3606 = fmul fast float %3601, %3592
  %3607 = call float @dx.op.tertiary.f32(i32 46, float %3605, float %3593, float %3606)  ; FMad(a,b,c)
  %3608 = fmul fast float %3601, %3591
  %3609 = call float @dx.op.tertiary.f32(i32 46, float %3605, float %3592, float %3608)  ; FMad(a,b,c)
  %3610 = fmul fast float %3607, %3517
  %3611 = fmul fast float %3609, %3517
  %3612 = fadd fast float %3610, %2643
  %3613 = fadd fast float %3611, %2647
  %3614 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %12, %dx.types.Handle %45, float %3612, float %3613, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %3615 = extractvalue %dx.types.ResRet.f32 %3614, 0
  %3616 = extractvalue %dx.types.ResRet.f32 %3614, 1
  %3617 = extractvalue %dx.types.ResRet.f32 %3614, 2
  %3618 = extractvalue %dx.types.ResRet.f32 %3614, 3
  %3619 = getelementptr inbounds [4 x float], [4 x float]* %68, i32 0, i32 0
  store float %3615, float* %3619, align 4
  %3620 = getelementptr inbounds [4 x float], [4 x float]* %68, i32 0, i32 1
  store float %3616, float* %3620, align 4
  %3621 = getelementptr inbounds [4 x float], [4 x float]* %68, i32 0, i32 2
  store float %3617, float* %3621, align 4
  %3622 = getelementptr inbounds [4 x float], [4 x float]* %68, i32 0, i32 3
  store float %3618, float* %3622, align 4
  %3623 = fsub fast float %3615, %3519
  %3624 = fcmp fast olt float %3623, 0.000000e+00
  %3625 = select i1 %3624, float 0.000000e+00, float 1.000000e+00
  %3626 = fadd fast float %3625, %3595
  %3627 = fmul fast float %3625, %3623
  %3628 = fadd fast float %3627, %3596
  br label %3629

; <label>:3629                                    ; preds = %3629, %3594
  %3630 = phi i32 [ 1, %3594 ], [ %3641, %3629 ]
  %3631 = phi float [ %3628, %3594 ], [ %3640, %3629 ]
  %3632 = phi float [ %3626, %3594 ], [ %3638, %3629 ]
  %3633 = getelementptr [4 x float], [4 x float]* %68, i32 0, i32 %3630
  %3634 = load float, float* %3633, align 4, !tbaa !121, !noalias !111
  %3635 = fsub fast float %3634, %3519
  %3636 = fcmp fast olt float %3635, 0.000000e+00
  %3637 = select i1 %3636, float 0.000000e+00, float 1.000000e+00
  %3638 = fadd fast float %3637, %3632
  %3639 = fmul fast float %3637, %3635
  %3640 = fadd fast float %3639, %3631
  %3641 = add nuw nsw i32 %3630, 1
  %3642 = icmp eq i32 %3641, 4
  br i1 %3642, label %3643, label %3629, !llvm.loop !123

; <label>:3643                                    ; preds = %3629
  %3644 = add nuw nsw i32 %3597, 1
  %3645 = icmp eq i32 %3644, 8
  br i1 %3645, label %3646, label %3594, !llvm.loop !124

; <label>:3646                                    ; preds = %3643
  %3647 = fdiv fast float 1.000000e+00, %3638
  %3648 = fmul fast float %3647, %3640
  %3649 = fdiv fast float 1.000000e+00, %3519
  %3650 = fmul fast float %3648, %3649
  %3651 = call float @dx.op.unary.f32(i32 7, float %3650)  ; Saturate(value)
  %3652 = call float @dx.op.binary.f32(i32 35, float %3651, float 0.000000e+00)  ; FMax(a,b)
  %3653 = fmul fast float %3638, 3.125000e-02
  %3654 = call float @dx.op.unary.f32(i32 7, float %3653)  ; Saturate(value)
  %3655 = fmul fast float %3654, 2.000000e+00
  %3656 = fadd fast float %3655, -1.000000e+00
  %3657 = fcmp fast ogt float %3656, 0.000000e+00
  %3658 = fcmp fast olt float %3656, 0.000000e+00
  %3659 = zext i1 %3657 to i32
  %3660 = zext i1 %3658 to i32
  %3661 = sub nsw i32 %3659, %3660
  %3662 = sitofp i32 %3661 to float
  %3663 = fmul fast float %3662, %3656
  %3664 = fsub fast float 1.000000e+00, %3663
  %3665 = fmul fast float %3664, %3664
  %3666 = fmul fast float %3665, %3664
  %3667 = fsub fast float %3664, %3666
  %3668 = fmul fast float %3667, %3652
  %3669 = fsub fast float 1.000000e+00, %3666
  %3670 = fsub fast float %3669, %3668
  %3671 = fmul fast float %3662, 5.000000e-01
  %3672 = fmul fast float %3671, %3670
  %3673 = fsub fast float 5.000000e-01, %3672
  br label %3827

; <label>:3674                                    ; preds = %3509
  br i1 %3520, label %3675, label %3742

; <label>:3675                                    ; preds = %3674
  %3676 = extractvalue %dx.types.CBufRet.f32 %3513, 1
  %3677 = extractvalue %dx.types.CBufRet.f32 %3513, 0
  %3678 = fmul fast float %3677, %2643
  %3679 = fmul fast float %3676, %2647
  %3680 = fadd fast float %3678, 5.000000e-01
  %3681 = call float @dx.op.unary.f32(i32 27, float %3680)  ; Round_ni(value)
  %3682 = fadd fast float %3679, 5.000000e-01
  %3683 = call float @dx.op.unary.f32(i32 27, float %3682)  ; Round_ni(value)
  %3684 = fsub fast float %3680, %3681
  %3685 = fsub fast float %3682, %3683
  %3686 = fadd fast float %3681, -5.000000e-01
  %3687 = fadd fast float %3683, -5.000000e-01
  %3688 = fmul fast float %3684, 2.000000e+00
  %3689 = fsub fast float 3.000000e+00, %3688
  %3690 = fadd fast float %3688, 1.000000e+00
  %3691 = fsub fast float 2.000000e+00, %3684
  %3692 = bitcast float %3689 to i32
  %3693 = sub nsw i32 2129859010, %3692
  %3694 = bitcast i32 %3693 to float
  %3695 = fmul fast float %3694, %3691
  %3696 = fadd fast float %3695, -1.000000e+00
  %3697 = bitcast float %3690 to i32
  %3698 = sub nsw i32 2129859010, %3697
  %3699 = bitcast i32 %3698 to float
  %3700 = fmul fast float %3699, %3684
  %3701 = fadd fast float %3700, 1.000000e+00
  %3702 = fmul fast float %3685, 2.000000e+00
  %3703 = fsub fast float 3.000000e+00, %3702
  %3704 = fadd fast float %3702, 1.000000e+00
  %3705 = fsub fast float 2.000000e+00, %3685
  %3706 = bitcast float %3703 to i32
  %3707 = sub nsw i32 2129859010, %3706
  %3708 = bitcast i32 %3707 to float
  %3709 = fmul fast float %3708, %3705
  %3710 = fadd fast float %3709, -1.000000e+00
  %3711 = bitcast float %3704 to i32
  %3712 = sub nsw i32 2129859010, %3711
  %3713 = bitcast i32 %3712 to float
  %3714 = fmul fast float %3713, %3685
  %3715 = fadd fast float %3714, 1.000000e+00
  %3716 = fadd fast float %3696, %3686
  %3717 = fmul fast float %3716, %3514
  %3718 = fadd fast float %3710, %3687
  %3719 = fmul fast float %3718, %3515
  %3720 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %11, %dx.types.Handle %46, float %3717, float %3719, float undef, float undef, i32 0, i32 0, i32 undef, float %3519)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3721 = extractvalue %dx.types.ResRet.f32 %3720, 0
  %3722 = fmul fast float %3721, %3689
  %3723 = fadd fast float %3701, %3686
  %3724 = fmul fast float %3723, %3514
  %3725 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %11, %dx.types.Handle %46, float %3724, float %3719, float undef, float undef, i32 0, i32 0, i32 undef, float %3519)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3726 = extractvalue %dx.types.ResRet.f32 %3725, 0
  %3727 = fmul fast float %3726, %3690
  %3728 = fadd fast float %3715, %3687
  %3729 = fmul fast float %3728, %3515
  %3730 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %11, %dx.types.Handle %46, float %3717, float %3729, float undef, float undef, i32 0, i32 0, i32 undef, float %3519)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3731 = extractvalue %dx.types.ResRet.f32 %3730, 0
  %3732 = fmul fast float %3731, %3689
  %3733 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %11, %dx.types.Handle %46, float %3724, float %3729, float undef, float undef, i32 0, i32 0, i32 undef, float %3519)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3734 = extractvalue %dx.types.ResRet.f32 %3733, 0
  %3735 = fmul fast float %3734, %3690
  %3736 = fadd fast float %3735, %3732
  %3737 = fmul fast float %3736, %3704
  %3738 = fadd fast float %3727, %3722
  %3739 = fmul fast float %3738, %3703
  %3740 = fadd fast float %3739, %3737
  %3741 = fmul fast float %3740, 6.250000e-02
  br label %3827

; <label>:3742                                    ; preds = %3674
  %3743 = fmul fast float %121, 0x401921FB60000000
  %3744 = call float @dx.op.unary.f32(i32 13, float %3743)  ; Sin(value)
  %3745 = call float @dx.op.unary.f32(i32 12, float %3743)  ; Cos(value)
  %3746 = fsub fast float -0.000000e+00, %3744
  br label %3747

; <label>:3747                                    ; preds = %3796, %3742
  %3748 = phi float [ 0.000000e+00, %3742 ], [ %3791, %3796 ]
  %3749 = phi float [ 0.000000e+00, %3742 ], [ %3793, %3796 ]
  %3750 = phi i32 [ 0, %3742 ], [ %3797, %3796 ]
  %3751 = mul i32 %3750, 2
  %3752 = add i32 0, %3751
  %3753 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %3752
  %3754 = load float, float* %3753, align 4
  %3755 = mul i32 %3750, 2
  %3756 = add i32 1, %3755
  %3757 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %3756
  %3758 = load float, float* %3757, align 4
  %3759 = fmul fast float %3754, %3745
  %3760 = call float @dx.op.tertiary.f32(i32 46, float %3758, float %3746, float %3759)  ; FMad(a,b,c)
  %3761 = fmul fast float %3754, %3744
  %3762 = call float @dx.op.tertiary.f32(i32 46, float %3758, float %3745, float %3761)  ; FMad(a,b,c)
  %3763 = fmul fast float %3760, %3517
  %3764 = fmul fast float %3762, %3517
  %3765 = fadd fast float %3763, %2643
  %3766 = fadd fast float %3764, %2647
  %3767 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %11, %dx.types.Handle %45, float %3765, float %3766, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %3768 = extractvalue %dx.types.ResRet.f32 %3767, 0
  %3769 = extractvalue %dx.types.ResRet.f32 %3767, 1
  %3770 = extractvalue %dx.types.ResRet.f32 %3767, 2
  %3771 = extractvalue %dx.types.ResRet.f32 %3767, 3
  %3772 = getelementptr inbounds [4 x float], [4 x float]* %67, i32 0, i32 0
  store float %3768, float* %3772, align 4
  %3773 = getelementptr inbounds [4 x float], [4 x float]* %67, i32 0, i32 1
  store float %3769, float* %3773, align 4
  %3774 = getelementptr inbounds [4 x float], [4 x float]* %67, i32 0, i32 2
  store float %3770, float* %3774, align 4
  %3775 = getelementptr inbounds [4 x float], [4 x float]* %67, i32 0, i32 3
  store float %3771, float* %3775, align 4
  %3776 = fsub fast float %3768, %3519
  %3777 = fcmp fast olt float %3776, 0.000000e+00
  %3778 = select i1 %3777, float 0.000000e+00, float 1.000000e+00
  %3779 = fadd fast float %3778, %3748
  %3780 = fmul fast float %3778, %3776
  %3781 = fadd fast float %3780, %3749
  br label %3782

; <label>:3782                                    ; preds = %3782, %3747
  %3783 = phi i32 [ 1, %3747 ], [ %3794, %3782 ]
  %3784 = phi float [ %3781, %3747 ], [ %3793, %3782 ]
  %3785 = phi float [ %3779, %3747 ], [ %3791, %3782 ]
  %3786 = getelementptr [4 x float], [4 x float]* %67, i32 0, i32 %3783
  %3787 = load float, float* %3786, align 4, !tbaa !121, !noalias !111
  %3788 = fsub fast float %3787, %3519
  %3789 = fcmp fast olt float %3788, 0.000000e+00
  %3790 = select i1 %3789, float 0.000000e+00, float 1.000000e+00
  %3791 = fadd fast float %3790, %3785
  %3792 = fmul fast float %3790, %3788
  %3793 = fadd fast float %3792, %3784
  %3794 = add nuw nsw i32 %3783, 1
  %3795 = icmp eq i32 %3794, 4
  br i1 %3795, label %3796, label %3782, !llvm.loop !123

; <label>:3796                                    ; preds = %3782
  %3797 = add nuw nsw i32 %3750, 1
  %3798 = icmp eq i32 %3797, 8
  br i1 %3798, label %3799, label %3747, !llvm.loop !124

; <label>:3799                                    ; preds = %3796
  %3800 = fdiv fast float 1.000000e+00, %3791
  %3801 = fmul fast float %3800, %3793
  %3802 = fdiv fast float 1.000000e+00, %3519
  %3803 = fmul fast float %3801, %3802
  %3804 = call float @dx.op.unary.f32(i32 7, float %3803)  ; Saturate(value)
  %3805 = call float @dx.op.binary.f32(i32 35, float %3804, float 0.000000e+00)  ; FMax(a,b)
  %3806 = fmul fast float %3791, 3.125000e-02
  %3807 = call float @dx.op.unary.f32(i32 7, float %3806)  ; Saturate(value)
  %3808 = fmul fast float %3807, 2.000000e+00
  %3809 = fadd fast float %3808, -1.000000e+00
  %3810 = fcmp fast ogt float %3809, 0.000000e+00
  %3811 = fcmp fast olt float %3809, 0.000000e+00
  %3812 = zext i1 %3810 to i32
  %3813 = zext i1 %3811 to i32
  %3814 = sub nsw i32 %3812, %3813
  %3815 = sitofp i32 %3814 to float
  %3816 = fmul fast float %3815, %3809
  %3817 = fsub fast float 1.000000e+00, %3816
  %3818 = fmul fast float %3817, %3817
  %3819 = fmul fast float %3818, %3817
  %3820 = fsub fast float %3817, %3819
  %3821 = fmul fast float %3820, %3805
  %3822 = fsub fast float 1.000000e+00, %3819
  %3823 = fsub fast float %3822, %3821
  %3824 = fmul fast float %3815, 5.000000e-01
  %3825 = fmul fast float %3824, %3823
  %3826 = fsub fast float 5.000000e-01, %3825
  br label %3827

; <label>:3827                                    ; preds = %3799, %3675, %3646, %3522, %3506
  %3828 = phi float [ 1.000000e+00, %3506 ], [ %3588, %3522 ], [ %3673, %3646 ], [ %3741, %3675 ], [ %3826, %3799 ]
  %3829 = fsub fast float %3340, %3173
  %3830 = fmul fast float %3829, %2740
  %3831 = fadd fast float %3830, %3173
  %3832 = fsub fast float %3507, %3831
  %3833 = fmul fast float %3832, %2739
  %3834 = fadd fast float %3833, %3831
  %3835 = fsub fast float %3828, %3834
  %3836 = fmul fast float %3835, %2767
  %3837 = fadd fast float %3836, %3834
  %3838 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %3839 = extractvalue %dx.types.CBufRet.f32 %3838, 2
  %3840 = fcmp fast ogt float %3839, 0.000000e+00
  br i1 %3840, label %3841, label %3881, !dx.controlflow.hints !128

; <label>:3841                                    ; preds = %3827
  %3842 = fcmp fast ugt float %3839, 0.000000e+00
  br i1 %3842, label %3843, label %3878

; <label>:3843                                    ; preds = %3841
  %3844 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %3845 = extractvalue %dx.types.CBufRet.f32 %3844, 0
  %3846 = extractvalue %dx.types.CBufRet.f32 %3844, 1
  %3847 = extractvalue %dx.types.CBufRet.f32 %3844, 2
  %3848 = extractvalue %dx.types.CBufRet.f32 %3844, 3
  %3849 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %3850 = extractvalue %dx.types.CBufRet.f32 %3849, 0
  %3851 = extractvalue %dx.types.CBufRet.f32 %3849, 1
  %3852 = extractvalue %dx.types.CBufRet.f32 %3849, 2
  %3853 = extractvalue %dx.types.CBufRet.f32 %3849, 3
  %3854 = extractvalue %dx.types.CBufRet.f32 %3838, 0
  %3855 = extractvalue %dx.types.CBufRet.f32 %3838, 1
  %3856 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %3857 = extractvalue %dx.types.CBufRet.f32 %3856, 0
  %3858 = extractvalue %dx.types.CBufRet.f32 %3856, 1
  %3859 = extractvalue %dx.types.CBufRet.f32 %3856, 2
  %3860 = fadd fast float %3857, %2620
  %3861 = fadd fast float %3858, %2621
  %3862 = fadd fast float %3859, %2622
  %3863 = fmul fast float %3860, %3845
  %3864 = call float @dx.op.tertiary.f32(i32 46, float %3846, float %3861, float %3863)  ; FMad(a,b,c)
  %3865 = call float @dx.op.tertiary.f32(i32 46, float %3847, float %3862, float %3864)  ; FMad(a,b,c)
  %3866 = fadd fast float %3865, %3848
  %3867 = fmul fast float %3860, %3850
  %3868 = call float @dx.op.tertiary.f32(i32 46, float %3851, float %3861, float %3867)  ; FMad(a,b,c)
  %3869 = call float @dx.op.tertiary.f32(i32 46, float %3852, float %3862, float %3868)  ; FMad(a,b,c)
  %3870 = fadd fast float %3869, %3853
  %3871 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %6, %dx.types.Handle %41, float %3866, float %3870, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3872 = extractvalue %dx.types.ResRet.f32 %3871, 0
  %3873 = fmul fast float %3872, %3855
  %3874 = fadd fast float %3873, %3854
  %3875 = call float @dx.op.unary.f32(i32 7, float %3874)  ; Saturate(value)
  %3876 = fmul fast float %3875, %3839
  %3877 = fsub fast float 1.000000e+00, %3876
  br label %3878

; <label>:3878                                    ; preds = %3843, %3841
  %3879 = phi float [ %3877, %3843 ], [ 1.000000e+00, %3841 ]
  %3880 = fmul fast float %3879, %3837
  br label %3881

; <label>:3881                                    ; preds = %3878, %3827, %2600
  %3882 = phi float [ 1.000000e+00, %2600 ], [ %3880, %3878 ], [ %3837, %3827 ]
  %3883 = call float @dx.op.binary.f32(i32 36, float %3882, float %3882)  ; FMin(a,b)
  %3884 = call float @dx.op.binary.f32(i32 36, float %3882, float %3883)  ; FMin(a,b)
  %3885 = fcmp fast ogt float %3884, 0.000000e+00
  br i1 %3885, label %3886, label %4051, !dx.controlflow.hints !129

; <label>:3886                                    ; preds = %3881
  %3887 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %3888 = extractvalue %dx.types.CBufRet.f32 %3887, 0
  %3889 = extractvalue %dx.types.CBufRet.f32 %3887, 1
  %3890 = extractvalue %dx.types.CBufRet.f32 %3887, 2
  %3891 = extractvalue %dx.types.CBufRet.f32 %3887, 3
  %3892 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %3893 = extractvalue %dx.types.CBufRet.f32 %3892, 0
  %3894 = extractvalue %dx.types.CBufRet.f32 %3892, 1
  %3895 = extractvalue %dx.types.CBufRet.f32 %3892, 2
  %3896 = extractvalue %dx.types.CBufRet.f32 %3892, 3
  %3897 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %3898 = extractvalue %dx.types.CBufRet.f32 %3897, 0
  %3899 = extractvalue %dx.types.CBufRet.f32 %3897, 1
  %3900 = extractvalue %dx.types.CBufRet.f32 %3897, 2
  %3901 = extractvalue %dx.types.CBufRet.f32 %3897, 3
  %3902 = fmul fast float %3888, %2620
  %3903 = call float @dx.op.tertiary.f32(i32 46, float %2621, float %3889, float %3902)  ; FMad(a,b,c)
  %3904 = call float @dx.op.tertiary.f32(i32 46, float %2622, float %3890, float %3903)  ; FMad(a,b,c)
  %3905 = fadd fast float %3904, %3891
  %3906 = fmul fast float %3893, %2620
  %3907 = call float @dx.op.tertiary.f32(i32 46, float %2621, float %3894, float %3906)  ; FMad(a,b,c)
  %3908 = call float @dx.op.tertiary.f32(i32 46, float %2622, float %3895, float %3907)  ; FMad(a,b,c)
  %3909 = fadd fast float %3908, %3896
  %3910 = fmul fast float %3898, %2620
  %3911 = call float @dx.op.tertiary.f32(i32 46, float %2621, float %3899, float %3910)  ; FMad(a,b,c)
  %3912 = call float @dx.op.tertiary.f32(i32 46, float %2622, float %3900, float %3911)  ; FMad(a,b,c)
  %3913 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %3914 = extractvalue %dx.types.CBufRet.f32 %3913, 0
  %3915 = extractvalue %dx.types.CBufRet.f32 %3913, 1
  %3916 = extractvalue %dx.types.CBufRet.f32 %3913, 3
  %3917 = fmul fast float %3916, %3905
  %3918 = fmul fast float %3916, %3909
  %3919 = fadd fast float %3917, %3914
  %3920 = fadd fast float %3918, %3915
  %3921 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %3922 = extractvalue %dx.types.CBufRet.f32 %3921, 0
  %3923 = extractvalue %dx.types.CBufRet.f32 %3921, 1
  %3924 = fsub fast float %3919, %3922
  %3925 = fsub fast float %3920, %3923
  %3926 = fcmp fast olt float %3924, 0.000000e+00
  %3927 = fcmp fast olt float %3925, 0.000000e+00
  %3928 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %3929 = extractvalue %dx.types.CBufRet.f32 %3928, 0
  %3930 = extractvalue %dx.types.CBufRet.f32 %3928, 1
  %3931 = extractvalue %dx.types.CBufRet.f32 %3928, 2
  %3932 = extractvalue %dx.types.CBufRet.f32 %3928, 3
  %3933 = select i1 %3926, float %3929, float %3931
  %3934 = select i1 %3927, float %3930, float %3932
  %3935 = fmul fast float %3933, %3924
  %3936 = fmul fast float %3934, %3925
  %3937 = call float @dx.op.unary.f32(i32 6, float %3935)  ; FAbs(value)
  %3938 = call float @dx.op.unary.f32(i32 6, float %3936)  ; FAbs(value)
  %3939 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %3940 = extractvalue %dx.types.CBufRet.f32 %3939, 0
  %3941 = call float @dx.op.binary.f32(i32 35, float %3937, float %3938)  ; FMax(a,b)
  %3942 = fsub fast float %3940, %3941
  %3943 = call float @dx.op.unary.f32(i32 7, float %3942)  ; Saturate(value)
  %3944 = fcmp fast ogt float %3943, 0.000000e+00
  br i1 %3944, label %3945, label %3986, !dx.controlflow.hints !130

; <label>:3945                                    ; preds = %3886
  %3946 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %44, float %3919, float %3920, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3947 = extractvalue %dx.types.ResRet.f32 %3946, 1
  %3948 = fcmp fast ogt float %3947, 0.000000e+00
  br i1 %3948, label %3949, label %3982

; <label>:3949                                    ; preds = %3945
  %3950 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %44, float %3919, float %3920, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3951 = extractvalue %dx.types.ResRet.f32 %3950, 0
  %3952 = extractvalue %dx.types.ResRet.f32 %3950, 1
  %3953 = extractvalue %dx.types.ResRet.f32 %3950, 2
  %3954 = extractvalue %dx.types.ResRet.f32 %3950, 3
  %3955 = fsub fast float 1.000000e+00, %3901
  %3956 = fsub fast float %3955, %3912
  %3957 = fmul fast float %3956, 0x400921FB60000000
  %3958 = fadd fast float %3957, 0x3FF921FB60000000
  %3959 = call float @dx.op.unary.f32(i32 13, float %3958)  ; Sin(value)
  %3960 = fadd fast float %3959, -1.000000e+00
  %3961 = fmul fast float %3960, 0x3FD45F3060000000
  %3962 = fmul fast float %3956, 0x401921FB60000000
  %3963 = fadd fast float %3962, 0x400921FB60000000
  %3964 = call float @dx.op.unary.f32(i32 13, float %3963)  ; Sin(value)
  %3965 = fadd fast float %3964, 0x3E7777A5C0000000
  %3966 = fmul fast float %3965, 0x3FC45F3060000000
  %3967 = fmul fast float %3956, 0x4022D97C80000000
  %3968 = fadd fast float %3967, 0x4012D97C80000000
  %3969 = call float @dx.op.unary.f32(i32 13, float %3968)  ; Sin(value)
  %3970 = fadd fast float %3969, 1.000000e+00
  %3971 = fmul fast float %3970, 0x3FBB2995E0000000
  %3972 = fmul fast float %3956, 0x402921FB60000000
  %3973 = fadd fast float %3972, 0x401921FB60000000
  %3974 = call float @dx.op.unary.f32(i32 13, float %3973)  ; Sin(value)
  %3975 = fadd fast float %3974, 0xBE8777A5C0000000
  %3976 = fmul fast float %3975, 0x3FB45F3060000000
  %3977 = call float @dx.op.dot4.f32(i32 56, float %3951, float %3952, float %3953, float %3954, float %3961, float %3966, float %3971, float %3976)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3978 = fmul fast float %3977, 0xBFF7154760000000
  %3979 = call float @dx.op.unary.f32(i32 21, float %3978)  ; Exp(value)
  %3980 = call float @dx.op.unary.f32(i32 7, float %3979)  ; Saturate(value)
  %3981 = fadd float %3980, -1.000000e+00
  br label %3982

; <label>:3982                                    ; preds = %3949, %3945
  %3983 = phi float [ %3981, %3949 ], [ 0.000000e+00, %3945 ]
  %3984 = fmul fast float %3983, %3943
  %3985 = fadd fast float %3984, 1.000000e+00
  br label %3986

; <label>:3986                                    ; preds = %3982, %3886
  %3987 = phi float [ %3985, %3982 ], [ 1.000000e+00, %3886 ]
  %3988 = fmul fast float %3987, %3882
  %3989 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %3990 = extractvalue %dx.types.CBufRet.f32 %3989, 0
  %3991 = extractvalue %dx.types.CBufRet.f32 %3989, 1
  %3992 = extractvalue %dx.types.CBufRet.f32 %3989, 2
  %3993 = fadd fast float %3990, %260
  %3994 = fadd fast float %3991, %261
  %3995 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %3996 = extractvalue %dx.types.CBufRet.f32 %3995, 1
  %3997 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %3998 = extractvalue %dx.types.CBufRet.f32 %3997, 0
  %3999 = extractvalue %dx.types.CBufRet.f32 %3997, 1
  %4000 = extractvalue %dx.types.CBufRet.f32 %3997, 2
  %4001 = fsub fast float -0.000000e+00, %3993
  %4002 = fsub fast float -0.000000e+00, %3994
  %4003 = fsub fast float %320, %3992
  %4004 = fadd fast float %4003, %3996
  %4005 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %4001, float %4002, float %4004)  ; Dot3(ax,ay,az,bx,by,bz)
  %4006 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %3998, float %3999, float %4000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4007 = fdiv fast float 1.000000e+00, %4006
  %4008 = fmul fast float %4007, %4005
  %4009 = fmul fast float %3998, %4008
  %4010 = fmul fast float %3999, %4008
  %4011 = fadd fast float %4009, %3993
  %4012 = fadd fast float %4010, %3994
  %4013 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %4014 = extractvalue %dx.types.CBufRet.f32 %4013, 0
  %4015 = extractvalue %dx.types.CBufRet.f32 %4013, 1
  %4016 = fsub fast float %4011, %4014
  %4017 = fsub fast float %4012, %4015
  %4018 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %4019 = extractvalue %dx.types.CBufRet.f32 %4018, 2
  %4020 = extractvalue %dx.types.CBufRet.f32 %4018, 3
  %4021 = fmul fast float %4016, %4019
  %4022 = fmul fast float %4017, %4020
  %4023 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %4024 = extractvalue %dx.types.CBufRet.i32 %4023, 3
  %4025 = icmp eq i32 %4024, 0
  br i1 %4025, label %4031, label %4026

; <label>:4026                                    ; preds = %3986
  %4027 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %43, float %4021, float %4022, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4028 = extractvalue %dx.types.ResRet.f32 %4027, 0
  %4029 = extractvalue %dx.types.ResRet.f32 %4027, 1
  %4030 = extractvalue %dx.types.ResRet.f32 %4027, 2
  br label %4036

; <label>:4031                                    ; preds = %3986
  %4032 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %44, float %4021, float %4022, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4033 = extractvalue %dx.types.ResRet.f32 %4032, 0
  %4034 = extractvalue %dx.types.ResRet.f32 %4032, 1
  %4035 = extractvalue %dx.types.ResRet.f32 %4032, 2
  br label %4036

; <label>:4036                                    ; preds = %4031, %4026
  %4037 = phi float [ %4028, %4026 ], [ %4033, %4031 ]
  %4038 = phi float [ %4029, %4026 ], [ %4034, %4031 ]
  %4039 = phi float [ %4030, %4026 ], [ %4035, %4031 ]
  %4040 = extractvalue %dx.types.CBufRet.f32 %3995, 2
  %4041 = fmul fast float %4040, %4037
  %4042 = extractvalue %dx.types.CBufRet.f32 %3995, 0
  %4043 = fsub fast float %4008, %4042
  %4044 = fsub fast float %4043, %4041
  %4045 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4044)  ; FMax(a,b)
  %4046 = fmul fast float %4045, %4038
  %4047 = call float @dx.op.binary.f32(i32 36, float %4039, float %4046)  ; FMin(a,b)
  %4048 = fmul fast float %4047, 0xBFF7154760000000
  %4049 = call float @dx.op.unary.f32(i32 21, float %4048)  ; Exp(value)
  %4050 = fmul fast float %3988, %4049
  br label %4051

; <label>:4051                                    ; preds = %4036, %3881
  %4052 = phi float [ %4050, %4036 ], [ %3882, %3881 ]
  %4053 = call float @dx.op.binary.f32(i32 36, float %4052, float %4052)  ; FMin(a,b)
  %4054 = call float @dx.op.binary.f32(i32 36, float %4052, float %4053)  ; FMin(a,b)
  %4055 = fcmp fast ogt float %4054, 0.000000e+00
  br i1 %4055, label %4056, label %4179, !dx.controlflow.hints !131

; <label>:4056                                    ; preds = %4051
  %4057 = fmul fast float %4052, %2612
  %4058 = fmul fast float %4052, %2613
  %4059 = fmul fast float %4052, %2614
  %4060 = fsub fast float %2601, %323
  %4061 = fsub fast float %2602, %324
  %4062 = fsub fast float %2603, %325
  %4063 = call float @dx.op.dot3.f32(i32 55, float %4060, float %4061, float %4062, float %4060, float %4061, float %4062)  ; Dot3(ax,ay,az,bx,by,bz)
  %4064 = call float @dx.op.unary.f32(i32 25, float %4063)  ; Rsqrt(value)
  %4065 = fmul fast float %4064, %4060
  %4066 = fmul fast float %4064, %4061
  %4067 = fmul fast float %4064, %4062
  %4068 = call float @dx.op.dot3.f32(i32 55, float %2601, float %2602, float %2603, float %181, float %182, float %183)  ; Dot3(ax,ay,az,bx,by,bz)
  %4069 = call float @dx.op.dot3.f32(i32 55, float %326, float %327, float %328, float %4065, float %4066, float %4067)  ; Dot3(ax,ay,az,bx,by,bz)
  %4070 = call float @dx.op.unary.f32(i32 7, float %4068)  ; Saturate(value)
  %4071 = fmul fast float %4070, %4070
  %4072 = fmul fast float %4071, 0x47DE623840000000
  %4073 = call float @dx.op.unary.f32(i32 7, float %4072)  ; Saturate(value)
  %4074 = fmul fast float %4073, %4070
  %4075 = call float @dx.op.dot3.f32(i32 55, float %181, float %182, float %183, float %4065, float %4066, float %4067)  ; Dot3(ax,ay,az,bx,by,bz)
  %4076 = fmul fast float %4075, %4075
  %4077 = call float @dx.op.unary.f32(i32 6, float %4068)  ; FAbs(value)
  %4078 = fsub fast float 1.000000e+00, %349
  %4079 = fmul fast float %331, %331
  %4080 = fmul fast float %4079, %4078
  %4081 = fadd fast float %4080, %349
  %4082 = bitcast float %4081 to i32
  %4083 = ashr i32 %4082, 1
  %4084 = add nsw i32 %4083, 532487669
  %4085 = bitcast i32 %4084 to float
  %4086 = fadd fast float %4085, %331
  %4087 = fmul fast float %349, %4076
  %4088 = fsub fast float 1.000000e+00, %4076
  %4089 = fadd fast float %4088, %4087
  %4090 = fmul fast float %4077, %4077
  %4091 = fmul fast float %4090, %4078
  %4092 = fadd fast float %4091, %349
  %4093 = bitcast float %4092 to i32
  %4094 = ashr i32 %4093, 1
  %4095 = add nsw i32 %4094, 532487669
  %4096 = bitcast i32 %4095 to float
  %4097 = fadd fast float %4096, %4077
  %4098 = fmul fast float %4089, %4089
  %4099 = fmul fast float %4098, %4086
  %4100 = fmul fast float %4099, %4097
  %4101 = fdiv fast float 0x3FF0A00000000000, %4100
  %4102 = fmul fast float %4101, %349
  %4103 = call float @dx.op.unary.f32(i32 6, float %4069)  ; FAbs(value)
  %4104 = fsub fast float 1.000000e+00, %4103
  %4105 = bitcast float %4104 to i32
  %4106 = sitofp i32 %4105 to float
  %4107 = fmul fast float %4106, 5.000000e+00
  %4108 = fadd fast float %4107, 0xC1EFBF8940000000
  %4109 = fptosi float %4108 to i32
  %4110 = bitcast i32 %4109 to float
  %4111 = fsub fast float 1.000000e+00, %311
  %4112 = fsub fast float 1.000000e+00, %312
  %4113 = fsub fast float 1.000000e+00, %329
  %4114 = fmul fast float %4110, %4111
  %4115 = fmul fast float %4110, %4112
  %4116 = fmul fast float %4110, %4113
  %4117 = fadd fast float %4114, %311
  %4118 = fadd fast float %4115, %312
  %4119 = fadd fast float %4116, %329
  %4120 = fmul fast float %4068, 9.843750e-01
  %4121 = fadd fast float %4120, 7.812500e-03
  %4122 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %44, float %4121, float %2081, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4123 = extractvalue %dx.types.ResRet.f32 %4122, 2
  %4124 = extractvalue %dx.types.ResRet.f32 %4122, 3
  %4125 = fmul fast float %4123, %311
  %4126 = fmul fast float %4123, %312
  %4127 = fmul fast float %4123, %329
  %4128 = fadd fast float %4125, %4124
  %4129 = fadd fast float %4126, %4124
  %4130 = fadd fast float %4127, %4124
  %4131 = call float @dx.op.binary.f32(i32 35, float %4129, float %4130)  ; FMax(a,b)
  %4132 = call float @dx.op.binary.f32(i32 35, float %4128, float %4131)  ; FMax(a,b)
  %4133 = fsub fast float 1.000000e+00, %4132
  %4134 = fsub fast float -0.000000e+00, %181
  %4135 = fsub fast float -0.000000e+00, %182
  %4136 = fsub fast float -0.000000e+00, %183
  %4137 = call float @dx.op.dot3.f32(i32 55, float %2601, float %2602, float %2603, float %4134, float %4135, float %4136)  ; Dot3(ax,ay,az,bx,by,bz)
  %4138 = call float @dx.op.unary.f32(i32 7, float %4137)  ; Saturate(value)
  %4139 = fmul fast float %4138, 9.843750e-01
  %4140 = fadd fast float %4139, 7.812500e-03
  %4141 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %44, float %4140, float %2081, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4142 = extractvalue %dx.types.ResRet.f32 %4141, 2
  %4143 = extractvalue %dx.types.ResRet.f32 %4141, 3
  %4144 = fmul fast float %4142, %311
  %4145 = fmul fast float %4142, %312
  %4146 = fmul fast float %4142, %329
  %4147 = fadd fast float %4144, %4143
  %4148 = fadd fast float %4145, %4143
  %4149 = fadd fast float %4146, %4143
  %4150 = call float @dx.op.binary.f32(i32 35, float %4148, float %4149)  ; FMax(a,b)
  %4151 = call float @dx.op.binary.f32(i32 35, float %4147, float %4150)  ; FMax(a,b)
  %4152 = fsub fast float 1.000000e+00, %4151
  %4153 = fmul fast float %4152, %4138
  %4154 = fmul fast float %4153, %200
  %4155 = fmul fast float %4153, %201
  %4156 = fmul fast float %4153, %202
  %4157 = fmul fast float %4133, %4074
  %4158 = fadd fast float %4154, %4157
  %4159 = fadd fast float %4155, %4157
  %4160 = fadd fast float %4156, %4157
  %4161 = fmul fast float %4158, %4057
  %4162 = fmul fast float %4159, %4058
  %4163 = fmul fast float %4160, %4059
  %4164 = fadd fast float %4161, %2592
  %4165 = fadd fast float %4162, %2594
  %4166 = fadd fast float %4163, %2596
  %4167 = fmul fast float %4074, %4057
  %4168 = fmul fast float %4167, %4102
  %4169 = fmul fast float %4168, %4117
  %4170 = fmul fast float %4074, %4058
  %4171 = fmul fast float %4170, %4102
  %4172 = fmul fast float %4171, %4118
  %4173 = fmul fast float %4074, %4059
  %4174 = fmul fast float %4173, %4102
  %4175 = fmul fast float %4174, %4119
  %4176 = fadd fast float %4169, %2585
  %4177 = fadd fast float %4172, %2586
  %4178 = fadd fast float %4175, %2587
  br label %4179

; <label>:4179                                    ; preds = %4056, %4051, %2581
  %4180 = phi float [ %2585, %2581 ], [ %2585, %4051 ], [ %4176, %4056 ]
  %4181 = phi float [ %2586, %2581 ], [ %2586, %4051 ], [ %4177, %4056 ]
  %4182 = phi float [ %2587, %2581 ], [ %2587, %4051 ], [ %4178, %4056 ]
  %4183 = phi float [ %2592, %2581 ], [ %2592, %4051 ], [ %4164, %4056 ]
  %4184 = phi float [ %2594, %2581 ], [ %2594, %4051 ], [ %4165, %4056 ]
  %4185 = phi float [ %2596, %2581 ], [ %2596, %4051 ], [ %4166, %4056 ]
  %4186 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %4187 = extractvalue %dx.types.CBufRet.i32 %4186, 0
  %4188 = icmp eq i32 %4187, 0
  br i1 %4188, label %4729, label %4189

; <label>:4189                                    ; preds = %4179
  %4190 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %4191 = extractvalue %dx.types.CBufRet.f32 %4190, 2
  %4192 = extractvalue %dx.types.CBufRet.f32 %4190, 3
  %4193 = fmul fast float %4191, %73
  %4194 = fmul fast float %4192, %74
  %4195 = fptoui float %4193 to i32
  %4196 = fptoui float %4194 to i32
  %4197 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %4198 = extractvalue %dx.types.CBufRet.f32 %4197, 0
  %4199 = extractvalue %dx.types.CBufRet.f32 %4197, 2
  %4200 = extractvalue %dx.types.CBufRet.f32 %4197, 3
  %4201 = fadd fast float %226, -4.000000e+00
  %4202 = call float @dx.op.binary.f32(i32 35, float %4201, float 0.000000e+00)  ; FMax(a,b)
  %4203 = fadd fast float %4202, %4198
  %4204 = fmul fast float %4203, %4199
  %4205 = call float @dx.op.unary.f32(i32 23, float %4204)  ; Log(value)
  %4206 = fmul fast float %4205, %4200
  %4207 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %4208 = extractvalue %dx.types.CBufRet.f32 %4207, 2
  %4209 = fmul fast float %4206, %4208
  %4210 = call float @dx.op.unary.f32(i32 7, float %4209)  ; Saturate(value)
  %4211 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %4212 = extractvalue %dx.types.CBufRet.i32 %4211, 1
  %4213 = add i32 %4212, -1
  %4214 = uitofp i32 %4212 to float
  %4215 = fmul fast float %4214, %4210
  %4216 = fptoui float %4215 to i32
  %4217 = call i32 @dx.op.binary.i32(i32 40, i32 %4216, i32 %4213)  ; UMin(a,b)
  %4218 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %4219 = extractvalue %dx.types.CBufRet.i32 %4218, 2
  %4220 = extractvalue %dx.types.CBufRet.i32 %4218, 3
  %4221 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4196, i32 %4219, i32 %4195)  ; UMad(a,b,c)
  %4222 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4217, i32 %4220, i32 %4221)  ; UMad(a,b,c)
  %4223 = add nsw i32 %4187, -1
  %4224 = call i32 @dx.op.binary.i32(i32 37, i32 %4223, i32 0)  ; IMax(a,b)
  %4225 = call float @dx.op.binary.f32(i32 35, float %226, float 0.000000e+00)  ; FMax(a,b)
  %4226 = fptoui float %4225 to i32
  %4227 = lshr i32 %4226, 5
  %4228 = call i32 @dx.op.binary.i32(i32 40, i32 %4227, i32 8191)  ; UMin(a,b)
  %4229 = shl i32 %4228, 2
  %4230 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %4229, i32 undef)  ; BufferLoad(srv,index,wot)
  %4231 = extractvalue %dx.types.ResRet.i32 %4230, 0
  %4232 = lshr i32 %4231, 16
  %4233 = and i32 %4231, 65535
  %4234 = lshr i32 %4231, 21
  %4235 = lshr i32 %4233, 5
  %4236 = call i32 @dx.op.binary.i32(i32 40, i32 %4235, i32 %4224)  ; UMin(a,b)
  %4237 = icmp ugt i32 %4234, %4236
  br i1 %4237, label %4729, label %4238

; <label>:4238                                    ; preds = %4189
  br label %4239

; <label>:4239                                    ; preds = %4719, %4238
  %4240 = phi i32 [ %4726, %4719 ], [ %4234, %4238 ]
  %4241 = phi float [ %4720, %4719 ], [ %4180, %4238 ]
  %4242 = phi float [ %4721, %4719 ], [ %4181, %4238 ]
  %4243 = phi float [ %4722, %4719 ], [ %4182, %4238 ]
  %4244 = phi float [ %4723, %4719 ], [ %4183, %4238 ]
  %4245 = phi float [ %4724, %4719 ], [ %4184, %4238 ]
  %4246 = phi float [ %4725, %4719 ], [ %4185, %4238 ]
  %4247 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %4248 = extractvalue %dx.types.CBufRet.i32 %4247, 0
  %4249 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4222, i32 %4248, i32 %4240)  ; UMad(a,b,c)
  %4250 = shl i32 %4249, 2
  %4251 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %4250, i32 undef)  ; BufferLoad(srv,index,wot)
  %4252 = extractvalue %dx.types.ResRet.i32 %4251, 0
  %4253 = shl i32 %4240, 5
  %4254 = sub nsw i32 %4232, %4253
  %4255 = call i32 @dx.op.binary.i32(i32 37, i32 %4254, i32 0)  ; IMax(a,b)
  %4256 = call i32 @dx.op.binary.i32(i32 38, i32 %4255, i32 31)  ; IMin(a,b)
  %4257 = sub nsw i32 1, %4232
  %4258 = add nsw i32 %4257, %4233
  %4259 = call i32 @dx.op.binary.i32(i32 37, i32 %4258, i32 0)  ; IMax(a,b)
  %4260 = call i32 @dx.op.binary.i32(i32 38, i32 %4259, i32 32)  ; IMin(a,b)
  %4261 = and i32 %4260, 31
  %4262 = shl i32 -1, %4261
  %4263 = xor i32 %4262, -1
  %4264 = and i32 %4256, 31
  %4265 = shl i32 %4263, %4264
  %4266 = icmp eq i32 %4260, 32
  %4267 = select i1 %4266, i32 -1, i32 %4265
  %4268 = and i32 %4267, %4252
  %4269 = icmp eq i32 %4268, 0
  br i1 %4269, label %4719, label %4270

; <label>:4270                                    ; preds = %4239
  br label %4271

; <label>:4271                                    ; preds = %4405, %4270
  %4272 = phi i32 [ %4283, %4405 ], [ %4268, %4270 ]
  %4273 = phi float [ %4406, %4405 ], [ %4241, %4270 ]
  %4274 = phi float [ %4407, %4405 ], [ %4242, %4270 ]
  %4275 = phi float [ %4408, %4405 ], [ %4243, %4270 ]
  %4276 = phi float [ %4409, %4405 ], [ %4244, %4270 ]
  %4277 = phi float [ %4410, %4405 ], [ %4245, %4270 ]
  %4278 = phi float [ %4411, %4405 ], [ %4246, %4270 ]
  %4279 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4272)  ; FirstbitLo(value)
  %4280 = add i32 %4279, %4253
  %4281 = and i32 %4279, 31
  %4282 = shl i32 1, %4281
  %4283 = xor i32 %4282, %4272
  %4284 = mul i32 %4280, 112
  %4285 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %16, i32 %4284, i32 undef)  ; BufferLoad(srv,index,wot)
  %4286 = extractvalue %dx.types.ResRet.f32 %4285, 0
  %4287 = extractvalue %dx.types.ResRet.f32 %4285, 1
  %4288 = extractvalue %dx.types.ResRet.f32 %4285, 2
  %4289 = or i32 %4284, 12
  %4290 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %16, i32 %4289, i32 undef)  ; BufferLoad(srv,index,wot)
  %4291 = extractvalue %dx.types.ResRet.f32 %4290, 0
  %4292 = add i32 %4284, 16
  %4293 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %16, i32 %4292, i32 undef)  ; BufferLoad(srv,index,wot)
  %4294 = extractvalue %dx.types.ResRet.f32 %4293, 0
  %4295 = extractvalue %dx.types.ResRet.f32 %4293, 1
  %4296 = extractvalue %dx.types.ResRet.f32 %4293, 2
  %4297 = add i32 %4284, 28
  %4298 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %4297, i32 undef)  ; BufferLoad(srv,index,wot)
  %4299 = extractvalue %dx.types.ResRet.i32 %4298, 0
  %4300 = add i32 %4284, 44
  %4301 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %16, i32 %4300, i32 undef)  ; BufferLoad(srv,index,wot)
  %4302 = extractvalue %dx.types.ResRet.f32 %4301, 0
  %4303 = add i32 %4284, 48
  %4304 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %16, i32 %4303, i32 undef)  ; BufferLoad(srv,index,wot)
  %4305 = extractvalue %dx.types.ResRet.f32 %4304, 0
  %4306 = extractvalue %dx.types.ResRet.f32 %4304, 1
  %4307 = extractvalue %dx.types.ResRet.f32 %4304, 2
  %4308 = extractvalue %dx.types.ResRet.f32 %4304, 3
  %4309 = add i32 %4284, 64
  %4310 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %16, i32 %4309, i32 undef)  ; BufferLoad(srv,index,wot)
  %4311 = extractvalue %dx.types.ResRet.f32 %4310, 0
  %4312 = extractvalue %dx.types.ResRet.f32 %4310, 1
  %4313 = extractvalue %dx.types.ResRet.f32 %4310, 2
  %4314 = extractvalue %dx.types.ResRet.f32 %4310, 3
  %4315 = add i32 %4284, 80
  %4316 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %16, i32 %4315, i32 undef)  ; BufferLoad(srv,index,wot)
  %4317 = extractvalue %dx.types.ResRet.f32 %4316, 1
  %4318 = extractvalue %dx.types.ResRet.f32 %4316, 2
  %4319 = add i32 %4284, 92
  %4320 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %4319, i32 undef)  ; BufferLoad(srv,index,wot)
  %4321 = extractvalue %dx.types.ResRet.i32 %4320, 0
  %4322 = call float @dx.op.dot3.f32(i32 55, float %4286, float %4287, float %4288, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4323 = select i1 %110, float %4317, float %4286
  %4324 = select i1 %110, float %4322, float %4287
  %4325 = select i1 %110, float %4318, float %4288
  %4326 = and i32 %4321, 65535
  %4327 = uitofp i32 %4326 to float
  %4328 = lshr i32 %4321, 16
  %4329 = uitofp i32 %4328 to float
  %4330 = and i32 %4299, 65535
  %4331 = and i32 %4299, 50331648
  %4332 = icmp eq i32 %4331, 33554432
  %4333 = fsub fast float %4305, %260
  %4334 = fsub fast float %4306, %261
  %4335 = fsub fast float %4307, %262
  %4336 = call float @dx.op.dot3.f32(i32 55, float %4333, float %4334, float %4335, float %4333, float %4334, float %4335)  ; Dot3(ax,ay,az,bx,by,bz)
  %4337 = call float @dx.op.unary.f32(i32 24, float %4336)  ; Sqrt(value)
  %4338 = fdiv fast float 1.000000e+00, %4337
  %4339 = fmul fast float %4338, %4333
  %4340 = fmul fast float %4338, %4334
  %4341 = fmul fast float %4338, %4335
  %4342 = fadd fast float %4337, %4291
  %4343 = fdiv fast float 1.000000e+00, %4342
  %4344 = fmul float %4302, %4343
  %4345 = fmul float %4344, %4344
  %4346 = call float @dx.op.unary.f32(i32 7, float %4345)  ; Saturate(value)
  br i1 %4332, label %4347, label %4368

; <label>:4347                                    ; preds = %4271
  %4348 = fmul fast float %4313, %4294
  %4349 = fmul fast float %4313, %4295
  %4350 = fmul fast float %4313, %4296
  %4351 = fadd fast float %4333, %4348
  %4352 = fadd fast float %4334, %4349
  %4353 = fadd fast float %4335, %4350
  %4354 = call float @dx.op.dot3.f32(i32 55, float %4351, float %4352, float %4353, float %4351, float %4352, float %4353)  ; Dot3(ax,ay,az,bx,by,bz)
  %4355 = call float @dx.op.unary.f32(i32 25, float %4354)  ; Rsqrt(value)
  %4356 = fmul fast float %4355, %4351
  %4357 = fmul fast float %4355, %4352
  %4358 = fmul fast float %4355, %4353
  %4359 = fsub fast float %260, %4305
  %4360 = fsub fast float %261, %4306
  %4361 = fsub fast float %262, %4307
  %4362 = fsub fast float -0.000000e+00, %4359
  %4363 = fsub fast float -0.000000e+00, %4360
  %4364 = fsub fast float -0.000000e+00, %4361
  %4365 = call float @dx.op.dot3.f32(i32 55, float %4362, float %4363, float %4364, float %4294, float %4295, float %4296)  ; Dot3(ax,ay,az,bx,by,bz)
  %4366 = fcmp fast ogt float %4365, 0.000000e+00
  %4367 = uitofp i1 %4366 to float
  br label %4368

; <label>:4368                                    ; preds = %4347, %4271
  %4369 = phi float [ %4367, %4347 ], [ 1.000000e+00, %4271 ]
  %4370 = phi float [ %4356, %4347 ], [ %4339, %4271 ]
  %4371 = phi float [ %4357, %4347 ], [ %4340, %4271 ]
  %4372 = phi float [ %4358, %4347 ], [ %4341, %4271 ]
  %4373 = call float @dx.op.dot3.f32(i32 55, float %4294, float %4295, float %4296, float %4370, float %4371, float %4372)  ; Dot3(ax,ay,az,bx,by,bz)
  %4374 = fmul fast float %4373, %4373
  %4375 = call float @dx.op.unary.f32(i32 7, float %4374)  ; Saturate(value)
  %4376 = fsub fast float 1.000000e+00, %4375
  %4377 = fmul fast float %4376, 5.000000e-01
  %4378 = fcmp fast ogt float %4373, 0.000000e+00
  %4379 = fsub fast float 1.000000e+00, %4377
  %4380 = select i1 %4378, float %4377, float %4379
  %4381 = fmul fast float %4380, %4329
  %4382 = fadd fast float %4381, %4327
  %4383 = fmul fast float %4382, 0x3EF0001000000000
  %4384 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %44, float %4383, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4385 = extractvalue %dx.types.ResRet.f32 %4384, 0
  %4386 = fmul fast float %4373, %4311
  %4387 = fadd fast float %4386, %4312
  %4388 = call float @dx.op.unary.f32(i32 7, float %4387)  ; Saturate(value)
  %4389 = select i1 %4332, float 1.000000e+00, float %4388
  %4390 = select i1 %4332, float %4388, float 1.000000e+00
  %4391 = fmul fast float %4337, %4308
  %4392 = fsub fast float 1.000000e+00, %4391
  %4393 = fmul fast float %4392, %4314
  %4394 = call float @dx.op.unary.f32(i32 7, float %4393)  ; Saturate(value)
  %4395 = fmul fast float %4394, %4390
  %4396 = fmul fast float %4395, 2.000000e+00
  %4397 = fsub fast float 3.000000e+00, %4396
  %4398 = fmul fast float %4385, %4369
  %4399 = fmul fast float %4395, %4395
  %4400 = fmul fast float %4399, %4398
  %4401 = fmul fast float %4400, %4397
  %4402 = call float @dx.op.binary.f32(i32 36, float %4401, float %4401)  ; FMin(a,b)
  %4403 = call float @dx.op.binary.f32(i32 36, float %4401, float %4402)  ; FMin(a,b)
  %4404 = fcmp fast ogt float %4403, 0.000000e+00
  br i1 %4404, label %4413, label %4405, !dx.controlflow.hints !132

; <label>:4405                                    ; preds = %4564, %4559, %4368
  %4406 = phi float [ %4273, %4559 ], [ %4273, %4368 ], [ %4715, %4564 ]
  %4407 = phi float [ %4274, %4559 ], [ %4274, %4368 ], [ %4716, %4564 ]
  %4408 = phi float [ %4275, %4559 ], [ %4275, %4368 ], [ %4717, %4564 ]
  %4409 = phi float [ %4276, %4559 ], [ %4276, %4368 ], [ %4703, %4564 ]
  %4410 = phi float [ %4277, %4559 ], [ %4277, %4368 ], [ %4704, %4564 ]
  %4411 = phi float [ %4278, %4559 ], [ %4278, %4368 ], [ %4705, %4564 ]
  %4412 = icmp eq i32 %4272, %4282
  br i1 %4412, label %4718, label %4271

; <label>:4413                                    ; preds = %4368
  %4414 = icmp eq i32 %4330, 255
  br i1 %4414, label %4559, label %4415, !dx.controlflow.hints !133

; <label>:4415                                    ; preds = %4413
  %4416 = mul nuw nsw i32 %4330, 176
  %4417 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %4416, i32 undef)  ; BufferLoad(srv,index,wot)
  %4418 = extractvalue %dx.types.ResRet.f32 %4417, 0
  %4419 = extractvalue %dx.types.ResRet.f32 %4417, 1
  %4420 = extractvalue %dx.types.ResRet.f32 %4417, 2
  %4421 = extractvalue %dx.types.ResRet.f32 %4417, 3
  %4422 = add nuw nsw i32 %4416, 16
  %4423 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %4422, i32 undef)  ; BufferLoad(srv,index,wot)
  %4424 = extractvalue %dx.types.ResRet.f32 %4423, 0
  %4425 = extractvalue %dx.types.ResRet.f32 %4423, 1
  %4426 = add nuw nsw i32 %4416, 32
  %4427 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %4426, i32 undef)  ; BufferLoad(srv,index,wot)
  %4428 = extractvalue %dx.types.ResRet.f32 %4427, 0
  %4429 = extractvalue %dx.types.ResRet.f32 %4427, 1
  %4430 = extractvalue %dx.types.ResRet.f32 %4427, 2
  %4431 = add nuw nsw i32 %4416, 48
  %4432 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %4431, i32 undef)  ; BufferLoad(srv,index,wot)
  %4433 = extractvalue %dx.types.ResRet.f32 %4432, 0
  %4434 = extractvalue %dx.types.ResRet.f32 %4432, 1
  %4435 = extractvalue %dx.types.ResRet.f32 %4432, 2
  %4436 = extractvalue %dx.types.ResRet.f32 %4432, 3
  %4437 = add nuw nsw i32 %4416, 64
  %4438 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %4437, i32 undef)  ; BufferLoad(srv,index,wot)
  %4439 = extractvalue %dx.types.ResRet.f32 %4438, 0
  %4440 = extractvalue %dx.types.ResRet.f32 %4438, 1
  %4441 = extractvalue %dx.types.ResRet.f32 %4438, 2
  %4442 = extractvalue %dx.types.ResRet.f32 %4438, 3
  %4443 = add nuw nsw i32 %4416, 80
  %4444 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %4443, i32 undef)  ; BufferLoad(srv,index,wot)
  %4445 = extractvalue %dx.types.ResRet.f32 %4444, 0
  %4446 = extractvalue %dx.types.ResRet.f32 %4444, 1
  %4447 = extractvalue %dx.types.ResRet.f32 %4444, 2
  %4448 = extractvalue %dx.types.ResRet.f32 %4444, 3
  %4449 = add nuw nsw i32 %4416, 96
  %4450 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %4449, i32 undef)  ; BufferLoad(srv,index,wot)
  %4451 = extractvalue %dx.types.ResRet.f32 %4450, 0
  %4452 = extractvalue %dx.types.ResRet.f32 %4450, 1
  %4453 = extractvalue %dx.types.ResRet.f32 %4450, 2
  %4454 = extractvalue %dx.types.ResRet.f32 %4450, 3
  %4455 = bitcast float %4425 to i32
  %4456 = fmul fast float %4430, %181
  %4457 = fmul fast float %4430, %182
  %4458 = fmul fast float %4430, %183
  %4459 = fadd fast float %4456, %260
  %4460 = fadd fast float %4457, %261
  %4461 = fadd fast float %4458, %262
  %4462 = fmul fast float %4459, %4433
  %4463 = call float @dx.op.tertiary.f32(i32 46, float %4460, float %4439, float %4462)  ; FMad(a,b,c)
  %4464 = call float @dx.op.tertiary.f32(i32 46, float %4461, float %4445, float %4463)  ; FMad(a,b,c)
  %4465 = fadd fast float %4464, %4451
  %4466 = fmul fast float %4459, %4434
  %4467 = call float @dx.op.tertiary.f32(i32 46, float %4460, float %4440, float %4466)  ; FMad(a,b,c)
  %4468 = call float @dx.op.tertiary.f32(i32 46, float %4461, float %4446, float %4467)  ; FMad(a,b,c)
  %4469 = fadd fast float %4468, %4452
  %4470 = fmul fast float %4459, %4435
  %4471 = call float @dx.op.tertiary.f32(i32 46, float %4460, float %4441, float %4470)  ; FMad(a,b,c)
  %4472 = call float @dx.op.tertiary.f32(i32 46, float %4461, float %4447, float %4471)  ; FMad(a,b,c)
  %4473 = fadd fast float %4472, %4453
  %4474 = fmul fast float %4459, %4436
  %4475 = call float @dx.op.tertiary.f32(i32 46, float %4460, float %4442, float %4474)  ; FMad(a,b,c)
  %4476 = call float @dx.op.tertiary.f32(i32 46, float %4461, float %4448, float %4475)  ; FMad(a,b,c)
  %4477 = fadd fast float %4476, %4454
  %4478 = fdiv fast float %4465, %4477
  %4479 = fdiv fast float %4469, %4477
  %4480 = fdiv fast float %4473, %4477
  %4481 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %4480)  ; FMax(a,b)
  %4482 = fmul fast float %121, 0x401921FB60000000
  %4483 = call float @dx.op.unary.f32(i32 13, float %4482)  ; Sin(value)
  %4484 = call float @dx.op.unary.f32(i32 12, float %4482)  ; Cos(value)
  %4485 = fmul fast float %4484, %4429
  %4486 = call float @dx.op.tertiary.f32(i32 46, float %4483, float %4429, float 0.000000e+00)  ; FMad(a,b,c)
  %4487 = fmul fast float %4429, %4483
  %4488 = fsub fast float -0.000000e+00, %4487
  %4489 = call float @dx.op.tertiary.f32(i32 46, float %4484, float %4429, float 0.000000e+00)  ; FMad(a,b,c)
  br label %4490

; <label>:4490                                    ; preds = %4490, %4415
  %4491 = phi float [ 0.000000e+00, %4415 ], [ %4523, %4490 ]
  %4492 = phi float [ 0.000000e+00, %4415 ], [ %4525, %4490 ]
  %4493 = phi i32 [ 0, %4415 ], [ %4526, %4490 ]
  %4494 = mul i32 %4493, 2
  %4495 = add i32 0, %4494
  %4496 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %4495
  %4497 = load float, float* %4496, align 4
  %4498 = mul i32 %4493, 2
  %4499 = add i32 1, %4498
  %4500 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %4499
  %4501 = load float, float* %4500, align 4
  %4502 = fmul fast float %4485, %4497
  %4503 = call float @dx.op.tertiary.f32(i32 46, float %4501, float %4488, float %4502)  ; FMad(a,b,c)
  %4504 = fmul fast float %4497, %4486
  %4505 = call float @dx.op.tertiary.f32(i32 46, float %4501, float %4489, float %4504)  ; FMad(a,b,c)
  %4506 = fadd fast float %4503, %4478
  %4507 = fadd fast float %4505, %4479
  %4508 = fmul fast float %4506, %4424
  %4509 = fmul fast float %4507, %4424
  %4510 = call float @dx.op.binary.f32(i32 35, float %4508, float %4420)  ; FMax(a,b)
  %4511 = call float @dx.op.binary.f32(i32 35, float %4509, float %4420)  ; FMax(a,b)
  %4512 = call float @dx.op.binary.f32(i32 36, float %4510, float %4421)  ; FMin(a,b)
  %4513 = call float @dx.op.binary.f32(i32 36, float %4511, float %4421)  ; FMin(a,b)
  %4514 = fadd fast float %4512, %4418
  %4515 = fadd fast float %4513, %4419
  %4516 = uitofp i32 %4455 to float
  %4517 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %45, float %4514, float %4515, float %4516, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4518 = extractvalue %dx.types.ResRet.f32 %4517, 0
  %4519 = fsub fast float %4518, %4481
  %4520 = fsub fast float %4519, %4428
  %4521 = fcmp fast ogt float %4520, 0.000000e+00
  %4522 = select i1 %4521, float 1.000000e+00, float 0.000000e+00
  %4523 = fadd fast float %4522, %4491
  %4524 = select i1 %4521, float %4520, float 0.000000e+00
  %4525 = fadd fast float %4524, %4492
  %4526 = add nuw nsw i32 %4493, 1
  %4527 = icmp eq i32 %4526, 8
  br i1 %4527, label %4528, label %4490

; <label>:4528                                    ; preds = %4490
  %4529 = fdiv fast float 1.000000e+00, %4523
  %4530 = fmul fast float %4529, %4525
  %4531 = fdiv fast float 1.000000e+00, %4481
  %4532 = fmul fast float %4530, %4531
  %4533 = call float @dx.op.unary.f32(i32 7, float %4532)  ; Saturate(value)
  %4534 = call float @dx.op.binary.f32(i32 35, float %4533, float 0.000000e+00)  ; FMax(a,b)
  %4535 = fmul fast float %4523, 1.250000e-01
  %4536 = call float @dx.op.unary.f32(i32 7, float %4535)  ; Saturate(value)
  %4537 = fmul fast float %4536, 2.000000e+00
  %4538 = fadd fast float %4537, -1.000000e+00
  %4539 = fcmp fast ogt float %4538, 0.000000e+00
  %4540 = fcmp fast olt float %4538, 0.000000e+00
  %4541 = zext i1 %4539 to i32
  %4542 = zext i1 %4540 to i32
  %4543 = sub nsw i32 %4541, %4542
  %4544 = sitofp i32 %4543 to float
  %4545 = fmul fast float %4544, %4538
  %4546 = fsub fast float 1.000000e+00, %4545
  %4547 = fmul fast float %4546, %4546
  %4548 = fmul fast float %4547, %4546
  %4549 = fsub fast float %4546, %4548
  %4550 = fmul fast float %4549, %4534
  %4551 = fsub fast float 1.000000e+00, %4548
  %4552 = fsub fast float %4551, %4550
  %4553 = fmul fast float %4544, 5.000000e-01
  %4554 = fmul fast float %4553, %4552
  %4555 = fsub fast float -5.000000e-01, %4554
  %4556 = fmul fast float %4555, %4389
  %4557 = fadd fast float %4556, 1.000000e+00
  %4558 = fmul fast float %4557, %4401
  br label %4559

; <label>:4559                                    ; preds = %4528, %4413
  %4560 = phi float [ %4558, %4528 ], [ %4401, %4413 ]
  %4561 = call float @dx.op.binary.f32(i32 36, float %4560, float %4560)  ; FMin(a,b)
  %4562 = call float @dx.op.binary.f32(i32 36, float %4560, float %4561)  ; FMin(a,b)
  %4563 = fcmp fast ogt float %4562, 0.000000e+00
  br i1 %4563, label %4564, label %4405, !dx.controlflow.hints !134

; <label>:4564                                    ; preds = %4559
  %4565 = fmul fast float %4560, %4323
  %4566 = fmul fast float %4560, %4324
  %4567 = fmul fast float %4560, %4325
  %4568 = fsub fast float %4339, %323
  %4569 = fsub fast float %4340, %324
  %4570 = fsub fast float %4341, %325
  %4571 = call float @dx.op.dot3.f32(i32 55, float %4568, float %4569, float %4570, float %4568, float %4569, float %4570)  ; Dot3(ax,ay,az,bx,by,bz)
  %4572 = call float @dx.op.unary.f32(i32 25, float %4571)  ; Rsqrt(value)
  %4573 = fmul fast float %4572, %4568
  %4574 = fmul fast float %4572, %4569
  %4575 = fmul fast float %4572, %4570
  %4576 = call float @dx.op.dot3.f32(i32 55, float %4339, float %4340, float %4341, float %181, float %182, float %183)  ; Dot3(ax,ay,az,bx,by,bz)
  %4577 = call float @dx.op.dot3.f32(i32 55, float %326, float %327, float %328, float %4573, float %4574, float %4575)  ; Dot3(ax,ay,az,bx,by,bz)
  %4578 = call float @dx.op.unary.f32(i32 7, float %4576)  ; Saturate(value)
  %4579 = fmul fast float %4578, %4346
  %4580 = fmul fast float %4578, %4578
  %4581 = fmul fast float %4580, 0x47DE623840000000
  %4582 = call float @dx.op.unary.f32(i32 7, float %4581)  ; Saturate(value)
  %4583 = fmul fast float %4579, %4582
  %4584 = bitcast float %4336 to i32
  %4585 = ashr i32 %4584, 1
  %4586 = sub nsw i32 1597463007, %4585
  %4587 = bitcast i32 %4586 to float
  %4588 = fmul fast float %4587, %4333
  %4589 = fmul fast float %4587, %4334
  %4590 = fmul fast float %4587, %4335
  %4591 = fsub fast float %4588, %323
  %4592 = fsub fast float %4589, %324
  %4593 = fsub fast float %4590, %325
  %4594 = call float @dx.op.dot3.f32(i32 55, float %4591, float %4592, float %4593, float %4591, float %4592, float %4593)  ; Dot3(ax,ay,az,bx,by,bz)
  %4595 = call float @dx.op.unary.f32(i32 25, float %4594)  ; Rsqrt(value)
  %4596 = fmul fast float %4591, %4595
  %4597 = fmul fast float %4592, %4595
  %4598 = fmul fast float %4593, %4595
  %4599 = call float @dx.op.dot3.f32(i32 55, float %181, float %182, float %183, float %4596, float %4597, float %4598)  ; Dot3(ax,ay,az,bx,by,bz)
  %4600 = fmul fast float %4599, %4599
  %4601 = call float @dx.op.unary.f32(i32 6, float %4576)  ; FAbs(value)
  %4602 = fsub fast float 1.000000e+00, %349
  %4603 = fmul fast float %331, %331
  %4604 = fmul fast float %4603, %4602
  %4605 = fadd fast float %4604, %349
  %4606 = bitcast float %4605 to i32
  %4607 = ashr i32 %4606, 1
  %4608 = add nsw i32 %4607, 532487669
  %4609 = bitcast i32 %4608 to float
  %4610 = fadd fast float %4609, %331
  %4611 = fmul fast float %349, %4600
  %4612 = fsub fast float 1.000000e+00, %4600
  %4613 = fadd fast float %4612, %4611
  %4614 = fmul fast float %4601, %4601
  %4615 = fmul fast float %4614, %4602
  %4616 = fadd fast float %4615, %349
  %4617 = bitcast float %4616 to i32
  %4618 = ashr i32 %4617, 1
  %4619 = add nsw i32 %4618, 532487669
  %4620 = bitcast i32 %4619 to float
  %4621 = fadd fast float %4620, %4601
  %4622 = fmul fast float %4613, %4613
  %4623 = fmul fast float %4622, %4610
  %4624 = fmul fast float %4623, %4621
  %4625 = fdiv fast float 1.000000e+00, %4624
  %4626 = bitcast float %349 to i32
  %4627 = sitofp i32 %4626 to float
  %4628 = fmul fast float %4627, 0x3FE7F73180000000
  %4629 = fadd fast float %4628, 0x41AFE27C40000000
  %4630 = fptosi float %4629 to i32
  %4631 = bitcast i32 %4630 to float
  %4632 = fmul fast float %4302, 0x3FD80E9D60000000
  %4633 = fmul fast float %4632, %4587
  %4634 = fadd fast float %4631, %4633
  %4635 = bitcast float %4634 to i32
  %4636 = sub nsw i32 2129859010, %4635
  %4637 = bitcast i32 %4636 to float
  %4638 = fmul fast float %349, %4625
  %4639 = fmul fast float %4638, %4631
  %4640 = fmul fast float %4639, %4637
  %4641 = call float @dx.op.unary.f32(i32 6, float %4577)  ; FAbs(value)
  %4642 = fsub fast float 1.000000e+00, %4641
  %4643 = bitcast float %4642 to i32
  %4644 = sitofp i32 %4643 to float
  %4645 = fmul fast float %4644, 5.000000e+00
  %4646 = fadd fast float %4645, 0xC1EFBF8940000000
  %4647 = fptosi float %4646 to i32
  %4648 = bitcast i32 %4647 to float
  %4649 = fsub fast float 1.000000e+00, %311
  %4650 = fsub fast float 1.000000e+00, %312
  %4651 = fsub fast float 1.000000e+00, %329
  %4652 = fmul fast float %4648, %4649
  %4653 = fmul fast float %4648, %4650
  %4654 = fmul fast float %4648, %4651
  %4655 = fadd fast float %4652, %311
  %4656 = fadd fast float %4653, %312
  %4657 = fadd fast float %4654, %329
  %4658 = fmul fast float %4576, 9.843750e-01
  %4659 = fadd fast float %4658, 7.812500e-03
  %4660 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %44, float %4659, float %2081, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4661 = extractvalue %dx.types.ResRet.f32 %4660, 2
  %4662 = extractvalue %dx.types.ResRet.f32 %4660, 3
  %4663 = fmul fast float %4661, %311
  %4664 = fmul fast float %4661, %312
  %4665 = fmul fast float %4661, %329
  %4666 = fadd fast float %4663, %4662
  %4667 = fadd fast float %4664, %4662
  %4668 = fadd fast float %4665, %4662
  %4669 = call float @dx.op.binary.f32(i32 35, float %4667, float %4668)  ; FMax(a,b)
  %4670 = call float @dx.op.binary.f32(i32 35, float %4666, float %4669)  ; FMax(a,b)
  %4671 = fsub fast float 1.000000e+00, %4670
  %4672 = fsub fast float -0.000000e+00, %181
  %4673 = fsub fast float -0.000000e+00, %182
  %4674 = fsub fast float -0.000000e+00, %183
  %4675 = call float @dx.op.dot3.f32(i32 55, float %4339, float %4340, float %4341, float %4672, float %4673, float %4674)  ; Dot3(ax,ay,az,bx,by,bz)
  %4676 = call float @dx.op.unary.f32(i32 7, float %4675)  ; Saturate(value)
  %4677 = fmul fast float %4676, %4346
  %4678 = fmul fast float %4676, 9.843750e-01
  %4679 = fadd fast float %4678, 7.812500e-03
  %4680 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %44, float %4679, float %2081, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4681 = extractvalue %dx.types.ResRet.f32 %4680, 2
  %4682 = extractvalue %dx.types.ResRet.f32 %4680, 3
  %4683 = fmul fast float %4681, %311
  %4684 = fmul fast float %4681, %312
  %4685 = fmul fast float %4681, %329
  %4686 = fadd fast float %4683, %4682
  %4687 = fadd fast float %4684, %4682
  %4688 = fadd fast float %4685, %4682
  %4689 = call float @dx.op.binary.f32(i32 35, float %4687, float %4688)  ; FMax(a,b)
  %4690 = call float @dx.op.binary.f32(i32 35, float %4686, float %4689)  ; FMax(a,b)
  %4691 = fsub fast float 1.000000e+00, %4690
  %4692 = fmul fast float %4677, %4691
  %4693 = fmul fast float %4692, %200
  %4694 = fmul fast float %4692, %201
  %4695 = fmul fast float %4692, %202
  %4696 = fmul fast float %4671, %4583
  %4697 = fadd fast float %4693, %4696
  %4698 = fadd fast float %4694, %4696
  %4699 = fadd fast float %4695, %4696
  %4700 = fmul fast float %4697, %4565
  %4701 = fmul fast float %4698, %4566
  %4702 = fmul fast float %4699, %4567
  %4703 = fadd fast float %4700, %4276
  %4704 = fadd fast float %4701, %4277
  %4705 = fadd fast float %4702, %4278
  %4706 = fmul fast float %4583, %4565
  %4707 = fmul fast float %4706, %4655
  %4708 = fmul fast float %4707, %4640
  %4709 = fmul fast float %4583, %4566
  %4710 = fmul fast float %4709, %4656
  %4711 = fmul fast float %4710, %4640
  %4712 = fmul fast float %4583, %4567
  %4713 = fmul fast float %4712, %4657
  %4714 = fmul fast float %4713, %4640
  %4715 = fadd fast float %4708, %4273
  %4716 = fadd fast float %4711, %4274
  %4717 = fadd fast float %4714, %4275
  br label %4405

; <label>:4718                                    ; preds = %4405
  br label %4719

; <label>:4719                                    ; preds = %4718, %4239
  %4720 = phi float [ %4241, %4239 ], [ %4406, %4718 ]
  %4721 = phi float [ %4242, %4239 ], [ %4407, %4718 ]
  %4722 = phi float [ %4243, %4239 ], [ %4408, %4718 ]
  %4723 = phi float [ %4244, %4239 ], [ %4409, %4718 ]
  %4724 = phi float [ %4245, %4239 ], [ %4410, %4718 ]
  %4725 = phi float [ %4246, %4239 ], [ %4411, %4718 ]
  %4726 = add i32 %4240, 1
  %4727 = icmp ugt i32 %4726, %4236
  br i1 %4727, label %4728, label %4239

; <label>:4728                                    ; preds = %4719
  br label %4729

; <label>:4729                                    ; preds = %4728, %4189, %4179
  %4730 = phi float [ %4180, %4179 ], [ %4180, %4189 ], [ %4720, %4728 ]
  %4731 = phi float [ %4181, %4179 ], [ %4181, %4189 ], [ %4721, %4728 ]
  %4732 = phi float [ %4182, %4179 ], [ %4182, %4189 ], [ %4722, %4728 ]
  %4733 = phi float [ %4183, %4179 ], [ %4183, %4189 ], [ %4723, %4728 ]
  %4734 = phi float [ %4184, %4179 ], [ %4184, %4189 ], [ %4724, %4728 ]
  %4735 = phi float [ %4185, %4179 ], [ %4185, %4189 ], [ %4725, %4728 ]
  %4736 = call float @dx.op.unary.f32(i32 24, float %302)  ; Sqrt(value)
  %4737 = call float @dx.op.unary.f32(i32 24, float %303)  ; Sqrt(value)
  %4738 = call float @dx.op.unary.f32(i32 24, float %304)  ; Sqrt(value)
  %4739 = fmul fast float %4736, %4733
  %4740 = fmul fast float %4737, %4734
  %4741 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %4742 = extractvalue %dx.types.CBufRet.f32 %4741, 0
  br i1 %110, label %4743, label %4767

; <label>:4743                                    ; preds = %4729
  %4744 = fadd fast float %4735, %319
  %4745 = fmul fast float %4744, %317
  %4746 = fsub fast float 1.000000e+00, %317
  %4747 = call float @dx.op.unary.f32(i32 7, float %4746)  ; Saturate(value)
  %4748 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4749 = extractvalue %dx.types.CBufRet.f32 %4748, 3
  %4750 = fmul fast float %4749, %4747
  %4751 = fsub fast float 1.000000e+00, %331
  %4752 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4753 = extractvalue %dx.types.CBufRet.f32 %4752, 0
  %4754 = fmul fast float %4753, %4751
  %4755 = fsub fast float 1.000000e+00, %203
  %4756 = extractvalue %dx.types.CBufRet.f32 %4752, 2
  %4757 = fmul fast float %4756, %4755
  %4758 = fadd fast float %4740, %4739
  %4759 = extractvalue %dx.types.CBufRet.f32 %4748, 1
  %4760 = fadd fast float %4750, %4745
  %4761 = fsub fast float %4760, %4754
  %4762 = fsub fast float %4761, %4757
  %4763 = fsub fast float %4762, %4759
  %4764 = extractvalue %dx.types.CBufRet.f32 %4748, 2
  %4765 = fmul fast float %4763, %4764
  %4766 = call float @dx.op.unary.f32(i32 7, float %4765)  ; Saturate(value)
  br label %4771

; <label>:4767                                    ; preds = %4729
  %4768 = fmul fast float %4738, %4735
  %4769 = fmul fast float %4742, %4740
  %4770 = fmul fast float %4768, %4742
  br label %4771

; <label>:4771                                    ; preds = %4767, %4743
  %4772 = phi float [ %4758, %4743 ], [ %4739, %4767 ]
  %4773 = phi float [ %4766, %4743 ], [ %4769, %4767 ]
  %4774 = phi float [ 1.000000e+00, %4743 ], [ %4770, %4767 ]
  %4775 = fmul float %4742, %4772
  %4776 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %4777 = extractvalue %dx.types.CBufRet.f32 %4776, 0
  %4778 = fmul fast float %4777, %4731
  %4779 = fmul fast float %4777, %4732
  %4780 = fadd fast float %4731, %4730
  %4781 = select i1 %110, float %4780, float %4730
  %4782 = fmul float %4781, %4777
  %4783 = select i1 %110, float 0.000000e+00, float %4778
  %4784 = select i1 %110, float 0.000000e+00, float %4779
  %4785 = fmul fast float %4775, %4736
  %4786 = fmul fast float %4773, %4737
  %4787 = fmul fast float %4774, %4738
  %4788 = fadd fast float %4782, %4785
  %4789 = fadd fast float %4783, %4786
  %4790 = fadd fast float %4784, %4787
  %4791 = select i1 %110, float %4773, float %4789
  %4792 = select i1 %110, float %4774, float %4790
  %4793 = call float @dx.op.binary.f32(i32 36, float %4788, float 3.225500e+04)  ; FMin(a,b)
  %4794 = call float @dx.op.binary.f32(i32 36, float %4791, float 3.225500e+04)  ; FMin(a,b)
  %4795 = call float @dx.op.binary.f32(i32 36, float %4792, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %4793)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %4794)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %4795)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!dx.viewIdState = !{!60}
!dx.entryPoints = !{!61}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !50, !53}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !43, !44, !45, !46, !47, !48, !49}
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
!25 = !{i32 17, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 3, i32 1, i32 11, i32 0, null}
!26 = !{i32 18, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 4, i32 1, i32 11, i32 0, null}
!27 = !{i32 19, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 5, i32 1, i32 11, i32 0, null}
!28 = !{i32 20, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 6, i32 1, i32 11, i32 0, null}
!29 = !{i32 21, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 69, i32 1, i32 2, i32 0, !7}
!30 = !{i32 22, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 37, i32 1, i32 2, i32 0, !7}
!31 = !{i32 23, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 35, i32 1, i32 7, i32 0, !7}
!32 = !{i32 24, %"class.Texture3D<float>"* undef, !"", i32 2, i32 31, i32 1, i32 4, i32 0, !7}
!33 = !{i32 25, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 10, i32 1, i32 11, i32 0, null}
!34 = !{i32 26, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 1, i32 1, i32 11, i32 0, null}
!35 = !{i32 27, %"class.Texture1D<float>"* undef, !"", i32 2, i32 32, i32 1, i32 1, i32 0, !7}
!36 = !{i32 28, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 8, i32 1, i32 7, i32 0, !7}
!37 = !{i32 29, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 1, i32 1, i32 2, i32 0, !7}
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
!50 = !{!51, !52}
!51 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!52 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 272, null}
!53 = !{!54, !55, !56, !57, !58, !59}
!54 = !{i32 0, %struct.SamplerComparisonState* undef, !"", i32 0, i32 0, i32 1, i32 1, null}
!55 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!56 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!57 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!58 = !{i32 4, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!59 = !{i32 5, %struct.SamplerState* undef, !"", i32 0, i32 5, i32 1, i32 0, null}
!60 = !{[58 x i32] [i32 56, i32 4, i32 7, i32 7, i32 0, i32 7, i32 0, i32 0, i32 0, i32 0, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 7, i32 7, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 7, i32 0, i32 0, i32 7, i32 0, i32 0, i32 0]}
!61 = !{void ()* @ps_main, !"ps_main", !62, !4, !91}
!62 = !{!63, !88, null}
!63 = !{!64, !67, !68, !69, !71, !72, !74, !76, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87}
!64 = !{i32 0, !"SV_Position", i8 9, i8 3, !65, i8 4, i32 1, i8 4, i32 0, i8 0, !66}
!65 = !{i32 0}
!66 = !{i32 3, i32 11}
!67 = !{i32 1, !"COLOR", i8 9, i8 0, !65, i8 2, i32 1, i8 4, i32 1, i8 0, null}
!68 = !{i32 2, !"TEXCOORDS", i8 9, i8 0, !65, i8 2, i32 1, i8 4, i32 2, i8 0, !66}
!69 = !{i32 3, !"NORMAL", i8 9, i8 0, !65, i8 2, i32 1, i8 3, i32 3, i8 0, !70}
!70 = !{i32 3, i32 7}
!71 = !{i32 4, !"TANGENT", i8 9, i8 0, !65, i8 2, i32 1, i8 4, i32 4, i8 0, null}
!72 = !{i32 5, !"CARD_DEPTH_OFFSET", i8 9, i8 0, !65, i8 2, i32 1, i8 1, i32 3, i8 3, !73}
!73 = !{i32 3, i32 1}
!74 = !{i32 6, !"CARD_BARY_AND_TILE", i8 9, i8 0, !75, i8 1, i32 1, i8 4, i32 5, i8 0, null}
!75 = !{i32 1}
!76 = !{i32 7, !"LGV_POSITION_INDEX", i8 9, i8 0, !65, i8 2, i32 1, i8 4, i32 6, i8 0, !77}
!77 = !{i32 3, i32 8}
!78 = !{i32 8, !"LGV_IS_STATIC", i8 9, i8 0, !65, i8 2, i32 1, i8 1, i32 7, i8 0, !73}
!79 = !{i32 9, !"WGV_TEXCOORD", i8 9, i8 0, !65, i8 2, i32 1, i8 3, i32 7, i8 1, null}
!80 = !{i32 10, !"WGV_NORMAL", i8 9, i8 0, !65, i8 2, i32 1, i8 4, i32 8, i8 0, null}
!81 = !{i32 11, !"SECONDARY_TEXCOORDS", i8 9, i8 0, !65, i8 2, i32 1, i8 2, i32 9, i8 0, null}
!82 = !{i32 12, !"SCEONDARY_NORMAL", i8 9, i8 0, !65, i8 2, i32 1, i8 4, i32 10, i8 0, null}
!83 = !{i32 13, !"OBJECT_POSITION", i8 9, i8 0, !65, i8 2, i32 1, i8 4, i32 11, i8 0, null}
!84 = !{i32 14, !"DECAL_VOLUME_GRID_INDEX", i8 5, i8 0, !65, i8 1, i32 1, i8 1, i32 12, i8 0, null}
!85 = !{i32 15, !"PACKED_TRI_DATA", i8 5, i8 0, !65, i8 1, i32 1, i8 4, i32 13, i8 0, !73}
!86 = !{i32 16, !"SV_IsFrontFace", i8 5, i8 13, !65, i8 1, i32 1, i8 1, i32 12, i8 1, !73}
!87 = !{i32 17, !"SV_SampleIndex", i8 5, i8 12, !65, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!88 = !{!89}
!89 = !{i32 0, !"SV_Target", i8 9, i8 16, !65, i8 0, i32 1, i8 4, i32 0, i8 0, !90}
!90 = !{i32 3, i32 15}
!91 = !{i32 0, i64 24}
!92 = distinct !{!92, !"dx.controlflow.hints", i32 1}
!93 = distinct !{!93, !"dx.controlflow.hints", i32 1}
!94 = distinct !{!94, !"dx.controlflow.hints", i32 1}
!95 = distinct !{!95, !"dx.controlflow.hints", i32 1}
!96 = distinct !{!96, !"dx.controlflow.hints", i32 1}
!97 = distinct !{!97, !"dx.controlflow.hints", i32 1}
!98 = distinct !{!98, !"dx.controlflow.hints", i32 1}
!99 = distinct !{!99, !"dx.controlflow.hints", i32 1}
!100 = distinct !{!100, !101}
!101 = !{!"llvm.loop.unroll.disable"}
!102 = distinct !{!102, !"dx.controlflow.hints", i32 1}
!103 = distinct !{!103, !"dx.controlflow.hints", i32 1}
!104 = distinct !{!104, !"dx.controlflow.hints", i32 1}
!105 = distinct !{!105, !"dx.controlflow.hints", i32 1}
!106 = distinct !{!106, !"dx.controlflow.hints", i32 1}
!107 = !{!108, !108, i64 0}
!108 = !{!"int", !109, i64 0}
!109 = !{!"omnipotent char", !110, i64 0}
!110 = !{!"Simple C/C++ TBAA"}
!111 = !{!112, !114, !116, !118}
!112 = distinct !{!112, !113, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!113 = distinct !{!113, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!114 = distinct !{!114, !115, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!115 = distinct !{!115, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!116 = distinct !{!116, !117, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z: %agg.result"}
!117 = distinct !{!117, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z"}
!118 = distinct !{!118, !119, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z: %agg.result"}
!119 = distinct !{!119, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z"}
!120 = distinct !{!120, !"dx.controlflow.hints", i32 1}
!121 = !{!122, !122, i64 0}
!122 = !{!"float", !109, i64 0}
!123 = distinct !{!123, !101}
!124 = distinct !{!124, !101}
!125 = distinct !{!125, !"dx.controlflow.hints", i32 1}
!126 = distinct !{!126, !"dx.controlflow.hints", i32 1}
!127 = distinct !{!127, !"dx.controlflow.hints", i32 1}
!128 = distinct !{!128, !"dx.controlflow.hints", i32 1}
!129 = distinct !{!129, !"dx.controlflow.hints", i32 1}
!130 = distinct !{!130, !"dx.controlflow.hints", i32 1}
!131 = distinct !{!131, !"dx.controlflow.hints", i32 1}
!132 = distinct !{!132, !"dx.controlflow.hints", i32 1}
!133 = distinct !{!133, !"dx.controlflow.hints", i32 1}
!134 = distinct !{!134, !"dx.controlflow.hints", i32 1}

