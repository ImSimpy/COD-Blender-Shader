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
; shader hash: 5ecbca7adcd97ef84b4892afa5bba1df
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
  %201 = add i32 %52, 68
  %202 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %201, i32 undef)  ; BufferLoad(srv,index,wot)
  %203 = extractvalue %dx.types.ResRet.i32 %202, 0
  %204 = add i32 %203, 0
  %205 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %204, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %206 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %205, %dx.types.Handle %44, float %59, float %60, float undef, float undef, i32 0, i32 0, i32 undef, float %156)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %207 = extractvalue %dx.types.ResRet.f32 %206, 0
  %208 = fadd fast float %55, 1.000000e+00
  %209 = add i32 %52, 24
  %210 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %209, i32 undef)  ; BufferLoad(srv,index,wot)
  %211 = extractvalue %dx.types.ResRet.i32 %210, 2
  %212 = bitcast i32 %211 to float
  %213 = fmul fast float %207, 2.000000e+00
  %214 = fsub fast float %208, %213
  %215 = fmul fast float %212, %214
  %216 = fadd fast float %215, %64
  %217 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %218 = extractvalue %dx.types.CBufRet.f32 %217, 2
  %219 = extractvalue %dx.types.CBufRet.f32 %217, 3
  %220 = fmul fast float %73, 2.000000e+00
  %221 = fmul fast float %220, %218
  %222 = fmul fast float %74, 2.000000e+00
  %223 = fmul fast float %222, %219
  %224 = fsub fast float 1.000000e+00, %221
  %225 = fsub fast float 1.000000e+00, %223
  %226 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %227 = extractvalue %dx.types.CBufRet.f32 %226, 0
  %228 = extractvalue %dx.types.CBufRet.f32 %226, 1
  %229 = extractvalue %dx.types.CBufRet.f32 %226, 2
  %230 = fmul fast float %224, %227
  %231 = fmul fast float %224, %228
  %232 = fmul fast float %224, %229
  %233 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %234 = extractvalue %dx.types.CBufRet.f32 %233, 0
  %235 = extractvalue %dx.types.CBufRet.f32 %233, 1
  %236 = extractvalue %dx.types.CBufRet.f32 %233, 2
  %237 = fmul fast float %225, %234
  %238 = fmul fast float %225, %235
  %239 = fmul fast float %225, %236
  %240 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %241 = extractvalue %dx.types.CBufRet.f32 %240, 0
  %242 = extractvalue %dx.types.CBufRet.f32 %240, 1
  %243 = extractvalue %dx.types.CBufRet.f32 %240, 2
  %244 = fadd fast float %237, %241
  %245 = fadd fast float %244, %230
  %246 = fadd fast float %238, %242
  %247 = fadd fast float %246, %231
  %248 = fadd fast float %239, %243
  %249 = fadd fast float %248, %232
  %250 = fmul fast float %245, %216
  %251 = fmul fast float %247, %216
  %252 = fmul fast float %249, %216
  %253 = call float @dx.op.unary.f32(i32 26, float %54)  ; Round_ne(value)
  %254 = fptoui float %253 to i32
  %255 = shl i32 %254, 6
  %256 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %257 = extractvalue %dx.types.CBufRet.f32 %256, 0
  %258 = extractvalue %dx.types.CBufRet.f32 %256, 1
  %259 = extractvalue %dx.types.CBufRet.f32 %256, 2
  %260 = fadd fast float %250, %257
  %261 = fadd fast float %251, %258
  %262 = fadd fast float %252, %259
  %263 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %255, i32 undef)  ; BufferLoad(srv,index,wot)
  %264 = extractvalue %dx.types.ResRet.f32 %263, 0
  %265 = extractvalue %dx.types.ResRet.f32 %263, 1
  %266 = extractvalue %dx.types.ResRet.f32 %263, 2
  %267 = extractvalue %dx.types.ResRet.f32 %263, 3
  %268 = call float @dx.op.dot4.f32(i32 56, float %264, float %265, float %266, float %267, float %260, float %261, float %262, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %269 = or i32 %255, 16
  %270 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %269, i32 undef)  ; BufferLoad(srv,index,wot)
  %271 = extractvalue %dx.types.ResRet.f32 %270, 0
  %272 = extractvalue %dx.types.ResRet.f32 %270, 1
  %273 = extractvalue %dx.types.ResRet.f32 %270, 2
  %274 = extractvalue %dx.types.ResRet.f32 %270, 3
  %275 = call float @dx.op.dot4.f32(i32 56, float %271, float %272, float %273, float %274, float %260, float %261, float %262, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %276 = or i32 %255, 32
  %277 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %276, i32 undef)  ; BufferLoad(srv,index,wot)
  %278 = extractvalue %dx.types.ResRet.f32 %277, 0
  %279 = extractvalue %dx.types.ResRet.f32 %277, 1
  %280 = extractvalue %dx.types.ResRet.f32 %277, 2
  %281 = extractvalue %dx.types.ResRet.f32 %277, 3
  %282 = call float @dx.op.dot4.f32(i32 56, float %278, float %279, float %280, float %281, float %260, float %261, float %262, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %283 = fadd fast float %200, 0xBFB99999A0000000
  %284 = call float @dx.op.unary.f32(i32 7, float %283)  ; Saturate(value)
  %285 = fmul fast float %284, 0x3FF1C71C80000000
  %286 = call float @dx.op.binary.f32(i32 36, float %200, float 0x3FB99999A0000000)  ; FMin(a,b)
  %287 = fsub fast float 1.000000e+00, %285
  %288 = call float @dx.op.unary.f32(i32 7, float %287)  ; Saturate(value)
  %289 = fmul fast float %288, %190
  %290 = fmul fast float %288, %191
  %291 = fmul fast float %288, %192
  %292 = call float @dx.op.unary.f32(i32 7, float %289)  ; Saturate(value)
  %293 = call float @dx.op.unary.f32(i32 7, float %290)  ; Saturate(value)
  %294 = call float @dx.op.unary.f32(i32 7, float %291)  ; Saturate(value)
  %295 = fmul fast float %285, %190
  %296 = fmul fast float %285, %191
  %297 = fmul fast float %285, %192
  %298 = fadd fast float %295, %286
  %299 = fadd fast float %296, %286
  %300 = fadd fast float %297, %286
  %301 = call float @dx.op.unary.f32(i32 7, float %298)  ; Saturate(value)
  %302 = call float @dx.op.unary.f32(i32 7, float %299)  ; Saturate(value)
  %303 = call float @dx.op.unary.f32(i32 7, float %300)  ; Saturate(value)
  %304 = call float @dx.op.dot3.f32(i32 55, float %292, float %293, float %294, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %305 = fmul fast float %304, 1.875000e-01
  %306 = fadd fast float %305, 0x3FE647AE20000000
  %307 = call float @dx.op.unary.f32(i32 7, float %306)  ; Saturate(value)
  %308 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %309 = extractvalue %dx.types.CBufRet.f32 %308, 0
  %310 = fsub fast float -0.000000e+00, %252
  %311 = call float @dx.op.dot3.f32(i32 55, float %250, float %251, float %252, float %250, float %251, float %252)  ; Dot3(ax,ay,az,bx,by,bz)
  %312 = call float @dx.op.unary.f32(i32 25, float %311)  ; Rsqrt(value)
  %313 = fmul fast float %312, %250
  %314 = fmul fast float %312, %251
  %315 = fmul fast float %312, %252
  %316 = fsub fast float -0.000000e+00, %313
  %317 = fsub fast float -0.000000e+00, %314
  %318 = fsub fast float -0.000000e+00, %315
  %319 = select i1 %110, float 0.000000e+00, float %303
  %320 = call float @dx.op.dot3.f32(i32 55, float %181, float %182, float %183, float %316, float %317, float %318)  ; Dot3(ax,ay,az,bx,by,bz)
  %321 = call float @dx.op.unary.f32(i32 7, float %320)  ; Saturate(value)
  %322 = call float @dx.op.dot3.f32(i32 55, float %313, float %314, float %315, float %181, float %182, float %183)  ; Dot3(ax,ay,az,bx,by,bz)
  %323 = fmul fast float %322, 2.000000e+00
  %324 = fmul fast float %323, %181
  %325 = fmul fast float %323, %182
  %326 = fmul fast float %323, %183
  %327 = fsub fast float %313, %324
  %328 = fsub fast float %314, %325
  %329 = fsub fast float %315, %326
  %330 = fsub fast float 1.000000e+00, %193
  %331 = call float @dx.op.binary.f32(i32 35, float %330, float 0x3F847AE140000000)  ; FMax(a,b)
  %332 = fmul fast float %331, %331
  %333 = fmul fast float %332, %332
  %334 = call float @dx.op.unary.f32(i32 7, float %321)  ; Saturate(value)
  %335 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %44, float 0x3BF7A3BEA0000000, float %333, float %334, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %336 = extractvalue %dx.types.ResRet.f32 %335, 0
  %337 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %338 = extractvalue %dx.types.CBufRet.f32 %337, 0
  %339 = extractvalue %dx.types.CBufRet.f32 %337, 1
  %340 = fadd fast float %338, %250
  %341 = fadd fast float %339, %251
  %342 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 260)  ; CBufferLoadLegacy(handle,regIndex)
  %343 = extractvalue %dx.types.CBufRet.i32 %342, 0
  %344 = icmp eq i32 %343, 1
  br i1 %344, label %345, label %380

; <label>:345                                     ; preds = %180
  %346 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %347 = extractvalue %dx.types.CBufRet.f32 %346, 0
  %348 = extractvalue %dx.types.CBufRet.f32 %346, 1
  %349 = fsub fast float %340, %347
  %350 = fsub fast float %341, %348
  %351 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %352 = extractvalue %dx.types.CBufRet.f32 %351, 0
  %353 = extractvalue %dx.types.CBufRet.f32 %351, 1
  %354 = fmul fast float %349, %352
  %355 = fmul fast float %350, %353
  %356 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %28, %dx.types.Handle %44, float %354, float %355, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %357 = extractvalue %dx.types.ResRet.f32 %356, 0
  %358 = fcmp fast ogt float %357, 0.000000e+00
  %359 = extractvalue %dx.types.CBufRet.i32 %342, 3
  %360 = icmp ne i32 %359, 0
  %361 = and i1 %358, %360
  br i1 %361, label %362, label %380, !dx.controlflow.hints !92

; <label>:362                                     ; preds = %345
  %363 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %364 = extractvalue %dx.types.CBufRet.f32 %363, 0
  %365 = extractvalue %dx.types.CBufRet.f32 %363, 1
  %366 = fsub fast float %340, %364
  %367 = fsub fast float %341, %365
  %368 = fmul fast float %366, %366
  %369 = fmul fast float %367, %367
  %370 = fadd fast float %368, %369
  %371 = uitofp i32 %359 to float
  %372 = fmul fast float %371, %371
  %373 = fcmp fast ogt float %370, %372
  br i1 %373, label %380, label %374

; <label>:374                                     ; preds = %362
  %375 = call float @dx.op.unary.f32(i32 24, float %370)  ; Sqrt(value)
  %376 = fsub fast float %371, %375
  %377 = fmul fast float %376, 0x3F75555560000000
  %378 = call float @dx.op.unary.f32(i32 7, float %377)  ; Saturate(value)
  %379 = call float @dx.op.binary.f32(i32 36, float %378, float %357)  ; FMin(a,b)
  br label %380

; <label>:380                                     ; preds = %374, %362, %345, %180
  %381 = phi float [ 1.000000e+00, %180 ], [ %379, %374 ], [ %357, %345 ], [ 0.000000e+00, %362 ]
  %382 = fcmp fast ogt float %381, 0.000000e+00
  br i1 %382, label %383, label %866, !dx.controlflow.hints !93

; <label>:383                                     ; preds = %380
  %384 = fadd fast float %54, 5.000000e-01
  %385 = fptoui float %384 to i32
  %386 = fcmp fast une float %53, 0.000000e+00
  br i1 %386, label %387, label %439

; <label>:387                                     ; preds = %383
  %388 = fadd fast float %61, 5.000000e-01
  %389 = fptoui float %388 to i32
  %390 = shl i32 %389, 3
  %391 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %390, i32 undef)  ; BufferLoad(srv,index,wot)
  %392 = extractvalue %dx.types.ResRet.i32 %391, 0
  %393 = or i32 %390, 4
  %394 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %393, i32 undef)  ; BufferLoad(srv,index,wot)
  %395 = extractvalue %dx.types.ResRet.i32 %394, 0
  %396 = and i32 %395, 16777215
  %397 = add i32 %396, %385
  %398 = shl i32 %397, 5
  %399 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %398, i32 undef)  ; BufferLoad(srv,index,wot)
  %400 = extractvalue %dx.types.ResRet.f32 %399, 0
  %401 = extractvalue %dx.types.ResRet.f32 %399, 1
  %402 = extractvalue %dx.types.ResRet.f32 %399, 2
  %403 = or i32 %398, 16
  %404 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %403, i32 undef)  ; BufferLoad(srv,index,wot)
  %405 = extractvalue %dx.types.ResRet.f32 %404, 0
  %406 = extractvalue %dx.types.ResRet.f32 %404, 1
  %407 = extractvalue %dx.types.ResRet.f32 %404, 2
  %408 = lshr i32 %395, 24
  %409 = and i32 %408, 3
  %410 = add nuw nsw i32 %409, 3
  %411 = shl i32 1, %410
  %412 = lshr i32 %395, 29
  %413 = lshr i32 %395, 23
  %414 = and i32 %413, 56
  %415 = shl nuw nsw i32 %412, 3
  %416 = lshr i32 %392, 16
  %417 = and i32 %392, 65535
  %418 = uitofp i32 %411 to float
  %419 = fmul fast float %418, 1.562500e-02
  %420 = uitofp i32 %416 to float
  %421 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 302)  ; CBufferLoadLegacy(handle,regIndex)
  %422 = extractvalue %dx.types.CBufRet.f32 %421, 3
  %423 = fmul fast float %422, %420
  %424 = uitofp i32 %414 to float
  %425 = fmul fast float %424, 1.562500e-02
  %426 = uitofp i32 %415 to float
  %427 = fmul fast float %426, 1.562500e-02
  %428 = uitofp i32 %417 to float
  %429 = fmul fast float %422, %428
  %430 = fmul fast float %419, %400
  %431 = fmul fast float %419, %401
  %432 = fmul fast float %423, %402
  %433 = fmul fast float %419, %405
  %434 = fmul fast float %419, %406
  %435 = fmul fast float %423, %407
  %436 = fadd fast float %433, %425
  %437 = fadd fast float %434, %427
  %438 = fadd fast float %435, %429
  br label %450

; <label>:439                                     ; preds = %383
  %440 = shl i32 %385, 5
  %441 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %440, i32 undef)  ; BufferLoad(srv,index,wot)
  %442 = extractvalue %dx.types.ResRet.f32 %441, 0
  %443 = extractvalue %dx.types.ResRet.f32 %441, 1
  %444 = extractvalue %dx.types.ResRet.f32 %441, 2
  %445 = or i32 %440, 16
  %446 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %445, i32 undef)  ; BufferLoad(srv,index,wot)
  %447 = extractvalue %dx.types.ResRet.f32 %446, 0
  %448 = extractvalue %dx.types.ResRet.f32 %446, 1
  %449 = extractvalue %dx.types.ResRet.f32 %446, 2
  br label %450

; <label>:450                                     ; preds = %439, %387
  %451 = phi float [ %436, %387 ], [ %447, %439 ]
  %452 = phi float [ %437, %387 ], [ %448, %439 ]
  %453 = phi float [ %438, %387 ], [ %449, %439 ]
  %454 = phi float [ %430, %387 ], [ %442, %439 ]
  %455 = phi float [ %431, %387 ], [ %443, %439 ]
  %456 = phi float [ %432, %387 ], [ %444, %439 ]
  %457 = call float @dx.op.unary.f32(i32 7, float %268)  ; Saturate(value)
  %458 = call float @dx.op.unary.f32(i32 7, float %275)  ; Saturate(value)
  %459 = call float @dx.op.unary.f32(i32 7, float %282)  ; Saturate(value)
  %460 = fmul fast float %457, %454
  %461 = fmul fast float %458, %455
  %462 = fmul fast float %459, %456
  %463 = fadd fast float %460, %451
  %464 = fadd fast float %461, %452
  %465 = fadd fast float %462, %453
  %466 = fmul fast float %463, 5.000000e-01
  %467 = fmul fast float %464, 0x3FD5555560000000
  %468 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %469 = extractvalue %dx.types.CBufRet.f32 %468, 3
  %470 = fadd fast float %466, 5.000000e-01
  %471 = fadd fast float %467, 0x3FD5555560000000
  %472 = fadd fast float %467, 0x3FE5555560000000
  br i1 %386, label %473, label %583

; <label>:473                                     ; preds = %450
  %474 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %37, %dx.types.Handle %42, float %463, float %464, float %465, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %475 = extractvalue %dx.types.ResRet.f32 %474, 0
  %476 = extractvalue %dx.types.ResRet.f32 %474, 1
  %477 = extractvalue %dx.types.ResRet.f32 %474, 2
  %478 = fmul fast float %469, %475
  %479 = fmul fast float %469, %476
  %480 = fmul fast float %469, %477
  %481 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %36, %dx.types.Handle %42, float %466, float %467, float %465, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %482 = extractvalue %dx.types.ResRet.f32 %481, 0
  %483 = extractvalue %dx.types.ResRet.f32 %481, 1
  %484 = extractvalue %dx.types.ResRet.f32 %481, 2
  %485 = extractvalue %dx.types.ResRet.f32 %481, 3
  %486 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %36, %dx.types.Handle %42, float %470, float %467, float %465, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %487 = extractvalue %dx.types.ResRet.f32 %486, 0
  %488 = extractvalue %dx.types.ResRet.f32 %486, 1
  %489 = extractvalue %dx.types.ResRet.f32 %486, 2
  %490 = extractvalue %dx.types.ResRet.f32 %486, 3
  %491 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %36, %dx.types.Handle %42, float %466, float %471, float %465, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %492 = extractvalue %dx.types.ResRet.f32 %491, 0
  %493 = extractvalue %dx.types.ResRet.f32 %491, 1
  %494 = extractvalue %dx.types.ResRet.f32 %491, 2
  %495 = extractvalue %dx.types.ResRet.f32 %491, 3
  %496 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %36, %dx.types.Handle %42, float %470, float %471, float %465, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %497 = extractvalue %dx.types.ResRet.f32 %496, 0
  %498 = extractvalue %dx.types.ResRet.f32 %496, 1
  %499 = extractvalue %dx.types.ResRet.f32 %496, 2
  %500 = extractvalue %dx.types.ResRet.f32 %496, 3
  %501 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %36, %dx.types.Handle %42, float %466, float %472, float %465, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %502 = extractvalue %dx.types.ResRet.f32 %501, 0
  %503 = extractvalue %dx.types.ResRet.f32 %501, 1
  %504 = extractvalue %dx.types.ResRet.f32 %501, 2
  %505 = extractvalue %dx.types.ResRet.f32 %501, 3
  %506 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %36, %dx.types.Handle %42, float %470, float %472, float %465, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %507 = extractvalue %dx.types.ResRet.f32 %506, 0
  %508 = extractvalue %dx.types.ResRet.f32 %506, 1
  %509 = extractvalue %dx.types.ResRet.f32 %506, 2
  %510 = extractvalue %dx.types.ResRet.f32 %506, 3
  %511 = fmul fast float %482, 0x400BB67AE0000000
  %512 = fadd fast float %511, 0xBFFBB67AE0000000
  %513 = fmul fast float %512, %478
  %514 = fmul fast float %483, 0x400BB67AE0000000
  %515 = fadd fast float %514, 0xBFFBB67AE0000000
  %516 = fmul fast float %515, %479
  %517 = fmul fast float %484, 0x400BB67AE0000000
  %518 = fadd fast float %517, 0xBFFBB67AE0000000
  %519 = fmul fast float %518, %480
  %520 = fmul fast float %485, 0x4011E377A0000000
  %521 = fadd fast float %520, 0xC001E377A0000000
  %522 = fmul fast float %521, %478
  %523 = fmul fast float %487, 0x4011E377A0000000
  %524 = fadd fast float %523, 0xC001E377A0000000
  %525 = fmul fast float %524, %479
  %526 = fmul fast float %488, 0x4011E377A0000000
  %527 = fadd fast float %526, 0xC001E377A0000000
  %528 = fmul fast float %527, %480
  %529 = fmul fast float %489, 0x400BB67AE0000000
  %530 = fadd fast float %529, 0xBFFBB67AE0000000
  %531 = fmul fast float %530, %478
  %532 = fmul fast float %490, 0x400BB67AE0000000
  %533 = fadd fast float %532, 0xBFFBB67AE0000000
  %534 = fmul fast float %533, %479
  %535 = fmul fast float %492, 0x400BB67AE0000000
  %536 = fadd fast float %535, 0xBFFBB67AE0000000
  %537 = fmul fast float %536, %480
  %538 = fmul fast float %493, 0x400BB67AE0000000
  %539 = fadd fast float %538, 0xBFFBB67AE0000000
  %540 = fmul fast float %539, %478
  %541 = fmul fast float %494, 0x400BB67AE0000000
  %542 = fadd fast float %541, 0xBFFBB67AE0000000
  %543 = fmul fast float %542, %479
  %544 = fmul fast float %495, 0x400BB67AE0000000
  %545 = fadd fast float %544, 0xBFFBB67AE0000000
  %546 = fmul fast float %545, %480
  %547 = fmul fast float %497, 0x400EFBDEC0000000
  %548 = fadd fast float %547, 0xBFFEFBDEC0000000
  %549 = fmul fast float %548, %478
  %550 = fmul fast float %498, 0x400EFBDEC0000000
  %551 = fadd fast float %550, 0xBFFEFBDEC0000000
  %552 = fmul fast float %551, %479
  %553 = fmul fast float %499, 0x400EFBDEC0000000
  %554 = fadd fast float %553, 0xBFFEFBDEC0000000
  %555 = fmul fast float %554, %480
  %556 = fmul fast float %500, 0x400EFBDEC0000000
  %557 = fadd fast float %556, 0xBFFEFBDEC0000000
  %558 = fmul fast float %557, %478
  %559 = fmul fast float %502, 0x400EFBDEC0000000
  %560 = fadd fast float %559, 0xBFFEFBDEC0000000
  %561 = fmul fast float %560, %479
  %562 = fmul fast float %503, 0x400EFBDEC0000000
  %563 = fadd fast float %562, 0xBFFEFBDEC0000000
  %564 = fmul fast float %563, %480
  %565 = fmul fast float %504, 0x400EFBDEC0000000
  %566 = fadd fast float %565, 0xBFFEFBDEC0000000
  %567 = fmul fast float %566, %478
  %568 = fmul fast float %505, 0x400EFBDEC0000000
  %569 = fadd fast float %568, 0xBFFEFBDEC0000000
  %570 = fmul fast float %569, %479
  %571 = fmul fast float %507, 0x400EFBDEC0000000
  %572 = fadd fast float %571, 0xBFFEFBDEC0000000
  %573 = fmul fast float %572, %480
  %574 = fmul fast float %508, 0x400EFBDEC0000000
  %575 = fadd fast float %574, 0xBFFEFBDEC0000000
  %576 = fmul fast float %575, %478
  %577 = fmul fast float %509, 0x400EFBDEC0000000
  %578 = fadd fast float %577, 0xBFFEFBDEC0000000
  %579 = fmul fast float %578, %479
  %580 = fmul fast float %510, 0x400EFBDEC0000000
  %581 = fadd fast float %580, 0xBFFEFBDEC0000000
  %582 = fmul fast float %581, %480
  br label %693

; <label>:583                                     ; preds = %450
  %584 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %42, float %463, float %464, float %465, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %585 = extractvalue %dx.types.ResRet.f32 %584, 0
  %586 = extractvalue %dx.types.ResRet.f32 %584, 1
  %587 = extractvalue %dx.types.ResRet.f32 %584, 2
  %588 = fmul fast float %469, %585
  %589 = fmul fast float %469, %586
  %590 = fmul fast float %469, %587
  %591 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %42, float %466, float %467, float %465, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %592 = extractvalue %dx.types.ResRet.f32 %591, 0
  %593 = extractvalue %dx.types.ResRet.f32 %591, 1
  %594 = extractvalue %dx.types.ResRet.f32 %591, 2
  %595 = extractvalue %dx.types.ResRet.f32 %591, 3
  %596 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %42, float %470, float %467, float %465, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %597 = extractvalue %dx.types.ResRet.f32 %596, 0
  %598 = extractvalue %dx.types.ResRet.f32 %596, 1
  %599 = extractvalue %dx.types.ResRet.f32 %596, 2
  %600 = extractvalue %dx.types.ResRet.f32 %596, 3
  %601 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %42, float %466, float %471, float %465, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %602 = extractvalue %dx.types.ResRet.f32 %601, 0
  %603 = extractvalue %dx.types.ResRet.f32 %601, 1
  %604 = extractvalue %dx.types.ResRet.f32 %601, 2
  %605 = extractvalue %dx.types.ResRet.f32 %601, 3
  %606 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %42, float %470, float %471, float %465, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %607 = extractvalue %dx.types.ResRet.f32 %606, 0
  %608 = extractvalue %dx.types.ResRet.f32 %606, 1
  %609 = extractvalue %dx.types.ResRet.f32 %606, 2
  %610 = extractvalue %dx.types.ResRet.f32 %606, 3
  %611 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %42, float %466, float %472, float %465, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %612 = extractvalue %dx.types.ResRet.f32 %611, 0
  %613 = extractvalue %dx.types.ResRet.f32 %611, 1
  %614 = extractvalue %dx.types.ResRet.f32 %611, 2
  %615 = extractvalue %dx.types.ResRet.f32 %611, 3
  %616 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %42, float %470, float %472, float %465, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %617 = extractvalue %dx.types.ResRet.f32 %616, 0
  %618 = extractvalue %dx.types.ResRet.f32 %616, 1
  %619 = extractvalue %dx.types.ResRet.f32 %616, 2
  %620 = extractvalue %dx.types.ResRet.f32 %616, 3
  %621 = fmul fast float %592, 0x400BB67AE0000000
  %622 = fadd fast float %621, 0xBFFBB67AE0000000
  %623 = fmul fast float %622, %588
  %624 = fmul fast float %593, 0x400BB67AE0000000
  %625 = fadd fast float %624, 0xBFFBB67AE0000000
  %626 = fmul fast float %625, %589
  %627 = fmul fast float %594, 0x400BB67AE0000000
  %628 = fadd fast float %627, 0xBFFBB67AE0000000
  %629 = fmul fast float %628, %590
  %630 = fmul fast float %595, 0x4011E377A0000000
  %631 = fadd fast float %630, 0xC001E377A0000000
  %632 = fmul fast float %631, %588
  %633 = fmul fast float %597, 0x4011E377A0000000
  %634 = fadd fast float %633, 0xC001E377A0000000
  %635 = fmul fast float %634, %589
  %636 = fmul fast float %598, 0x4011E377A0000000
  %637 = fadd fast float %636, 0xC001E377A0000000
  %638 = fmul fast float %637, %590
  %639 = fmul fast float %599, 0x400BB67AE0000000
  %640 = fadd fast float %639, 0xBFFBB67AE0000000
  %641 = fmul fast float %640, %588
  %642 = fmul fast float %600, 0x400BB67AE0000000
  %643 = fadd fast float %642, 0xBFFBB67AE0000000
  %644 = fmul fast float %643, %589
  %645 = fmul fast float %602, 0x400BB67AE0000000
  %646 = fadd fast float %645, 0xBFFBB67AE0000000
  %647 = fmul fast float %646, %590
  %648 = fmul fast float %603, 0x400BB67AE0000000
  %649 = fadd fast float %648, 0xBFFBB67AE0000000
  %650 = fmul fast float %649, %588
  %651 = fmul fast float %604, 0x400BB67AE0000000
  %652 = fadd fast float %651, 0xBFFBB67AE0000000
  %653 = fmul fast float %652, %589
  %654 = fmul fast float %605, 0x400BB67AE0000000
  %655 = fadd fast float %654, 0xBFFBB67AE0000000
  %656 = fmul fast float %655, %590
  %657 = fmul fast float %607, 0x400EFBDEC0000000
  %658 = fadd fast float %657, 0xBFFEFBDEC0000000
  %659 = fmul fast float %658, %588
  %660 = fmul fast float %608, 0x400EFBDEC0000000
  %661 = fadd fast float %660, 0xBFFEFBDEC0000000
  %662 = fmul fast float %661, %589
  %663 = fmul fast float %609, 0x400EFBDEC0000000
  %664 = fadd fast float %663, 0xBFFEFBDEC0000000
  %665 = fmul fast float %664, %590
  %666 = fmul fast float %610, 0x400EFBDEC0000000
  %667 = fadd fast float %666, 0xBFFEFBDEC0000000
  %668 = fmul fast float %667, %588
  %669 = fmul fast float %612, 0x400EFBDEC0000000
  %670 = fadd fast float %669, 0xBFFEFBDEC0000000
  %671 = fmul fast float %670, %589
  %672 = fmul fast float %613, 0x400EFBDEC0000000
  %673 = fadd fast float %672, 0xBFFEFBDEC0000000
  %674 = fmul fast float %673, %590
  %675 = fmul fast float %614, 0x400EFBDEC0000000
  %676 = fadd fast float %675, 0xBFFEFBDEC0000000
  %677 = fmul fast float %676, %588
  %678 = fmul fast float %615, 0x400EFBDEC0000000
  %679 = fadd fast float %678, 0xBFFEFBDEC0000000
  %680 = fmul fast float %679, %589
  %681 = fmul fast float %617, 0x400EFBDEC0000000
  %682 = fadd fast float %681, 0xBFFEFBDEC0000000
  %683 = fmul fast float %682, %590
  %684 = fmul fast float %618, 0x400EFBDEC0000000
  %685 = fadd fast float %684, 0xBFFEFBDEC0000000
  %686 = fmul fast float %685, %588
  %687 = fmul fast float %619, 0x400EFBDEC0000000
  %688 = fadd fast float %687, 0xBFFEFBDEC0000000
  %689 = fmul fast float %688, %589
  %690 = fmul fast float %620, 0x400EFBDEC0000000
  %691 = fadd fast float %690, 0xBFFEFBDEC0000000
  %692 = fmul fast float %691, %590
  br label %693

; <label>:693                                     ; preds = %583, %473
  %694 = phi float [ %683, %583 ], [ %573, %473 ]
  %695 = phi float [ %665, %583 ], [ %555, %473 ]
  %696 = phi float [ %638, %583 ], [ %528, %473 ]
  %697 = phi float [ %674, %583 ], [ %564, %473 ]
  %698 = phi float [ %692, %583 ], [ %582, %473 ]
  %699 = phi float [ %656, %583 ], [ %546, %473 ]
  %700 = phi float [ %629, %583 ], [ %519, %473 ]
  %701 = phi float [ %647, %583 ], [ %537, %473 ]
  %702 = phi float [ %590, %583 ], [ %480, %473 ]
  %703 = phi float [ %680, %583 ], [ %570, %473 ]
  %704 = phi float [ %662, %583 ], [ %552, %473 ]
  %705 = phi float [ %635, %583 ], [ %525, %473 ]
  %706 = phi float [ %671, %583 ], [ %561, %473 ]
  %707 = phi float [ %689, %583 ], [ %579, %473 ]
  %708 = phi float [ %653, %583 ], [ %543, %473 ]
  %709 = phi float [ %626, %583 ], [ %516, %473 ]
  %710 = phi float [ %644, %583 ], [ %534, %473 ]
  %711 = phi float [ %589, %583 ], [ %479, %473 ]
  %712 = phi float [ %677, %583 ], [ %567, %473 ]
  %713 = phi float [ %659, %583 ], [ %549, %473 ]
  %714 = phi float [ %632, %583 ], [ %522, %473 ]
  %715 = phi float [ %668, %583 ], [ %558, %473 ]
  %716 = phi float [ %686, %583 ], [ %576, %473 ]
  %717 = phi float [ %650, %583 ], [ %540, %473 ]
  %718 = phi float [ %623, %583 ], [ %513, %473 ]
  %719 = phi float [ %641, %583 ], [ %531, %473 ]
  %720 = phi float [ %588, %583 ], [ %478, %473 ]
  %721 = call float @dx.op.dot3.f32(i32 55, float %720, float %711, float %702, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %722 = fmul fast float %721, 0x3FD20DD760000000
  %723 = fmul fast float %720, 0x3FD20DD760000000
  %724 = fmul fast float %183, 0x3FD4D8D7C0000000
  %725 = fmul fast float %724, %718
  %726 = fmul fast float %183, %183
  %727 = fmul fast float %726, 0x3FEE471020000000
  %728 = fadd fast float %727, 0xBFD42F6020000000
  %729 = fmul fast float %714, %728
  %730 = fmul fast float %181, 0x3FD4D8D7C0000000
  %731 = fmul fast float %730, %717
  %732 = fmul fast float %182, 0x3FD4D8D7C0000000
  %733 = fmul fast float %732, %719
  %734 = fmul fast float %183, 0xBFF17B1420000000
  %735 = fmul fast float %713, %181
  %736 = fmul fast float %715, %182
  %737 = fmul fast float %181, %181
  %738 = fmul fast float %182, %182
  %739 = fsub fast float %737, %738
  %740 = fmul fast float %739, 0x3FC17B1420000000
  %741 = fmul fast float %740, %712
  %742 = fmul fast float %181, 0x3FD17B1420000000
  %743 = fmul fast float %742, %182
  %744 = fmul fast float %743, %716
  %745 = fadd fast float %736, %735
  %746 = fmul fast float %734, %745
  %747 = fadd fast float %746, %729
  %748 = fmul fast float %747, 2.500000e-01
  %749 = fadd fast float %744, %741
  %750 = fsub fast float %749, %731
  %751 = fadd fast float %750, %748
  %752 = fadd fast float %751, %725
  %753 = fadd fast float %752, %723
  %754 = fsub fast float %753, %733
  %755 = fmul fast float %711, 0x3FD20DD760000000
  %756 = fmul fast float %724, %709
  %757 = fmul fast float %705, %728
  %758 = fmul fast float %730, %708
  %759 = fmul fast float %732, %710
  %760 = fmul fast float %704, %181
  %761 = fmul fast float %706, %182
  %762 = fmul fast float %740, %703
  %763 = fmul fast float %743, %707
  %764 = fadd fast float %761, %760
  %765 = fmul fast float %734, %764
  %766 = fadd fast float %765, %757
  %767 = fmul fast float %766, 2.500000e-01
  %768 = fadd fast float %763, %762
  %769 = fsub fast float %768, %758
  %770 = fadd fast float %769, %767
  %771 = fadd fast float %770, %756
  %772 = fadd fast float %771, %755
  %773 = fsub fast float %772, %759
  %774 = fmul fast float %702, 0x3FD20DD760000000
  %775 = fmul fast float %724, %700
  %776 = fmul fast float %696, %728
  %777 = fmul fast float %730, %699
  %778 = fmul fast float %732, %701
  %779 = fmul fast float %695, %181
  %780 = fmul fast float %697, %182
  %781 = fmul fast float %740, %694
  %782 = fmul fast float %743, %698
  %783 = fadd fast float %780, %779
  %784 = fmul fast float %734, %783
  %785 = fadd fast float %784, %776
  %786 = fmul fast float %785, 2.500000e-01
  %787 = fadd fast float %782, %781
  %788 = fsub fast float %787, %777
  %789 = fadd fast float %788, %786
  %790 = fadd fast float %789, %775
  %791 = fadd fast float %790, %774
  %792 = fsub fast float %791, %778
  %793 = call float @dx.op.binary.f32(i32 35, float %754, float 0.000000e+00)  ; FMax(a,b)
  %794 = call float @dx.op.binary.f32(i32 35, float %773, float 0.000000e+00)  ; FMax(a,b)
  %795 = call float @dx.op.binary.f32(i32 35, float %792, float 0.000000e+00)  ; FMax(a,b)
  %796 = fmul fast float %329, 0x3FD4D8D7C0000000
  %797 = fmul fast float %796, %718
  %798 = fmul fast float %329, %329
  %799 = fmul fast float %798, 0x3FEE471020000000
  %800 = fadd fast float %799, 0xBFD42F6020000000
  %801 = fmul fast float %714, %800
  %802 = fmul fast float %327, 0x3FD4D8D7C0000000
  %803 = fmul fast float %802, %717
  %804 = fmul fast float %328, 0x3FD4D8D7C0000000
  %805 = fmul fast float %804, %719
  %806 = fmul fast float %329, 0xBFF17B1420000000
  %807 = fmul fast float %713, %327
  %808 = fmul fast float %715, %328
  %809 = fmul fast float %327, %327
  %810 = fmul fast float %328, %328
  %811 = fsub fast float %809, %810
  %812 = fmul fast float %811, 0x3FC17B1420000000
  %813 = fmul fast float %812, %712
  %814 = fmul fast float %328, 0x3FD17B1420000000
  %815 = fmul fast float %814, %327
  %816 = fmul fast float %815, %716
  %817 = fadd fast float %808, %807
  %818 = fmul fast float %806, %817
  %819 = fadd fast float %818, %801
  %820 = fmul fast float %819, 2.500000e-01
  %821 = fadd fast float %816, %813
  %822 = fsub fast float %821, %803
  %823 = fadd fast float %822, %820
  %824 = fadd fast float %823, %797
  %825 = fadd fast float %824, %723
  %826 = fsub fast float %825, %805
  %827 = fmul fast float %796, %709
  %828 = fmul fast float %705, %800
  %829 = fmul fast float %802, %708
  %830 = fmul fast float %804, %710
  %831 = fmul fast float %704, %327
  %832 = fmul fast float %706, %328
  %833 = fmul fast float %812, %703
  %834 = fmul fast float %815, %707
  %835 = fadd fast float %832, %831
  %836 = fmul fast float %806, %835
  %837 = fadd fast float %836, %828
  %838 = fmul fast float %837, 2.500000e-01
  %839 = fadd fast float %834, %833
  %840 = fsub fast float %839, %829
  %841 = fadd fast float %840, %838
  %842 = fadd fast float %841, %827
  %843 = fadd fast float %842, %755
  %844 = fsub fast float %843, %830
  %845 = fmul fast float %796, %700
  %846 = fmul fast float %696, %800
  %847 = fmul fast float %802, %699
  %848 = fmul fast float %804, %701
  %849 = fmul fast float %695, %327
  %850 = fmul fast float %697, %328
  %851 = fmul fast float %812, %694
  %852 = fmul fast float %815, %698
  %853 = fadd fast float %850, %849
  %854 = fmul fast float %806, %853
  %855 = fadd fast float %854, %846
  %856 = fmul fast float %855, 2.500000e-01
  %857 = fadd fast float %852, %851
  %858 = fsub fast float %857, %847
  %859 = fadd fast float %858, %856
  %860 = fadd fast float %859, %845
  %861 = fadd fast float %860, %774
  %862 = fsub fast float %861, %848
  %863 = call float @dx.op.binary.f32(i32 35, float %826, float 0.000000e+00)  ; FMax(a,b)
  %864 = call float @dx.op.binary.f32(i32 35, float %844, float 0.000000e+00)  ; FMax(a,b)
  %865 = call float @dx.op.binary.f32(i32 35, float %862, float 0.000000e+00)  ; FMax(a,b)
  br label %866

; <label>:866                                     ; preds = %693, %380
  %867 = phi float [ %863, %693 ], [ 0.000000e+00, %380 ]
  %868 = phi float [ %864, %693 ], [ 0.000000e+00, %380 ]
  %869 = phi float [ %865, %693 ], [ 0.000000e+00, %380 ]
  %870 = phi float [ %793, %693 ], [ 0.000000e+00, %380 ]
  %871 = phi float [ %794, %693 ], [ 0.000000e+00, %380 ]
  %872 = phi float [ %795, %693 ], [ 0.000000e+00, %380 ]
  %873 = phi float [ %722, %693 ], [ 0.000000e+00, %380 ]
  %874 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 271)  ; CBufferLoadLegacy(handle,regIndex)
  %875 = extractvalue %dx.types.CBufRet.f32 %874, 0
  %876 = fcmp fast ogt float %875, 0.000000e+00
  %877 = and i1 %382, %876
  br i1 %877, label %878, label %1082, !dx.controlflow.hints !94

; <label>:878                                     ; preds = %866
  %879 = extractvalue %dx.types.CBufRet.f32 %337, 2
  %880 = fadd fast float %879, %252
  %881 = fmul fast float %181, 3.200000e+01
  %882 = fmul fast float %182, 3.200000e+01
  %883 = fadd fast float %340, %881
  %884 = fadd fast float %341, %882
  %885 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %886 = extractvalue %dx.types.CBufRet.f32 %885, 0
  %887 = extractvalue %dx.types.CBufRet.f32 %885, 1
  %888 = fsub fast float %883, %886
  %889 = fsub fast float %884, %887
  %890 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %891 = extractvalue %dx.types.CBufRet.f32 %890, 0
  %892 = extractvalue %dx.types.CBufRet.f32 %890, 1
  %893 = fmul fast float %888, %891
  %894 = fmul fast float %889, %892
  %895 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %896 = extractvalue %dx.types.CBufRet.f32 %895, 0
  %897 = extractvalue %dx.types.CBufRet.f32 %895, 1
  %898 = fsub fast float %340, %896
  %899 = fsub fast float %341, %897
  %900 = fmul fast float %898, %898
  %901 = fmul fast float %899, %899
  %902 = fadd fast float %900, %901
  %903 = call float @dx.op.unary.f32(i32 24, float %902)  ; Sqrt(value)
  %904 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %905 = extractvalue %dx.types.CBufRet.f32 %904, 0
  %906 = extractvalue %dx.types.CBufRet.f32 %904, 1
  %907 = fsub fast float %903, %905
  %908 = fdiv fast float %907, %906
  %909 = call float @dx.op.unary.f32(i32 7, float %908)  ; Saturate(value)
  %910 = fmul fast float %909, 2.000000e+00
  %911 = fsub fast float 3.000000e+00, %910
  %912 = fmul fast float %909, %909
  %913 = fmul fast float %912, %911
  %914 = fcmp fast oge float %893, 0.000000e+00
  %915 = fcmp fast ole float %893, 1.000000e+00
  %916 = and i1 %915, %914
  %917 = fcmp fast oge float %894, 0.000000e+00
  %918 = and i1 %917, %916
  %919 = fcmp fast ole float %894, 1.000000e+00
  %920 = and i1 %919, %918
  %921 = fcmp fast ogt float %913, 0.000000e+00
  %922 = and i1 %921, %920
  br i1 %922, label %923, label %1046, !dx.controlflow.hints !95

; <label>:923                                     ; preds = %878
  %924 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %925 = extractvalue %dx.types.CBufRet.f32 %924, 2
  %926 = extractvalue %dx.types.CBufRet.f32 %924, 3
  %927 = fmul fast float %925, %893
  %928 = fmul fast float %926, %894
  %929 = call float @dx.op.unary.f32(i32 27, float %927)  ; Round_ni(value)
  %930 = call float @dx.op.unary.f32(i32 27, float %928)  ; Round_ni(value)
  %931 = fptosi float %929 to i32
  %932 = fptosi float %930 to i32
  %933 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %26, i32 0, i32 %931, i32 %932, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %934 = extractvalue %dx.types.ResRet.i32 %933, 0
  %935 = lshr i32 %934, 16
  %936 = icmp eq i32 %935, 65535
  br i1 %936, label %1046, label %937

; <label>:937                                     ; preds = %923
  %938 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %939 = extractvalue %dx.types.CBufRet.f32 %938, 0
  %940 = fmul fast float %939, %893
  %941 = extractvalue %dx.types.CBufRet.f32 %938, 1
  %942 = fadd fast float %940, %941
  %943 = extractvalue %dx.types.CBufRet.f32 %938, 2
  %944 = fmul fast float %943, %894
  %945 = extractvalue %dx.types.CBufRet.f32 %938, 3
  %946 = fadd fast float %944, %945
  %947 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %27, %dx.types.Handle %44, float %942, float %946, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %948 = extractvalue %dx.types.ResRet.f32 %947, 0
  %949 = extractvalue %dx.types.ResRet.f32 %947, 1
  %950 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %951 = extractvalue %dx.types.CBufRet.f32 %950, 1
  %952 = extractvalue %dx.types.CBufRet.f32 %950, 0
  %953 = fsub fast float %951, %952
  %954 = fmul fast float %953, %948
  %955 = fadd fast float %954, %952
  %956 = extractvalue %dx.types.CBufRet.f32 %950, 3
  %957 = extractvalue %dx.types.CBufRet.f32 %950, 2
  %958 = fsub fast float %956, %957
  %959 = fmul fast float %958, %949
  %960 = fadd fast float %959, %957
  %961 = fsub fast float %880, %955
  %962 = fsub fast float %960, %955
  %963 = fdiv fast float %961, %962
  %964 = call float @dx.op.unary.f32(i32 7, float %963)  ; Saturate(value)
  %965 = extractvalue %dx.types.CBufRet.f32 %874, 1
  %966 = extractvalue %dx.types.CBufRet.f32 %924, 0
  %967 = extractvalue %dx.types.CBufRet.f32 %924, 1
  %968 = fmul fast float %966, %893
  %969 = fmul fast float %967, %894
  %970 = fmul fast float %968, 1.250000e-01
  %971 = fmul fast float %969, 1.250000e-01
  %972 = call float @dx.op.unary.f32(i32 27, float %970)  ; Round_ni(value)
  %973 = call float @dx.op.unary.f32(i32 27, float %971)  ; Round_ni(value)
  %974 = fmul fast float %972, 8.000000e+00
  %975 = fmul fast float %973, 8.000000e+00
  %976 = fsub fast float %968, %974
  %977 = fsub fast float %969, %975
  %978 = fadd fast float %976, 5.000000e-01
  %979 = fadd fast float %977, 5.000000e-01
  %980 = and i32 %935, 255
  %981 = lshr i32 %934, 24
  %982 = mul nuw nsw i32 %980, 9
  %983 = uitofp i32 %982 to float
  %984 = mul nuw nsw i32 %981, 9
  %985 = uitofp i32 %984 to float
  %986 = fadd fast float %978, %983
  %987 = fadd fast float %979, %985
  %988 = fdiv fast float %986, %875
  %989 = fdiv fast float %987, %965
  %990 = fmul fast float %964, 4.375000e-01
  %991 = fadd fast float %990, 3.125000e-02
  %992 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %44, float %988, float %989, float %991, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %993 = extractvalue %dx.types.ResRet.f32 %992, 0
  %994 = extractvalue %dx.types.ResRet.f32 %992, 1
  %995 = extractvalue %dx.types.ResRet.f32 %992, 2
  %996 = fadd fast float %990, 5.312500e-01
  %997 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %44, float %988, float %989, float %996, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %998 = extractvalue %dx.types.ResRet.f32 %997, 0
  %999 = extractvalue %dx.types.ResRet.f32 %997, 1
  %1000 = extractvalue %dx.types.ResRet.f32 %997, 2
  %1001 = fmul fast float %998, 2.000000e+00
  %1002 = fmul fast float %999, 2.000000e+00
  %1003 = fmul fast float %1000, 2.000000e+00
  %1004 = fadd fast float %1001, -1.000000e+00
  %1005 = fadd fast float %1002, -1.000000e+00
  %1006 = fadd fast float %1003, -1.000000e+00
  %1007 = fmul fast float %1004, %1004
  %1008 = fmul fast float %1005, %1005
  %1009 = fadd fast float %1007, %1008
  %1010 = fmul fast float %1006, %1006
  %1011 = fadd fast float %1009, %1010
  %1012 = call float @dx.op.unary.f32(i32 24, float %1011)  ; Sqrt(value)
  %1013 = fcmp fast ogt float %1012, 0.000000e+00
  br i1 %1013, label %1014, label %1018

; <label>:1014                                    ; preds = %937
  %1015 = fdiv fast float %1004, %1012
  %1016 = fdiv fast float %1005, %1012
  %1017 = fdiv fast float %1006, %1012
  br label %1018

; <label>:1018                                    ; preds = %1014, %937
  %1019 = phi float [ %1015, %1014 ], [ 0.000000e+00, %937 ]
  %1020 = phi float [ %1016, %1014 ], [ 0.000000e+00, %937 ]
  %1021 = phi float [ %1017, %1014 ], [ 0.000000e+00, %937 ]
  %1022 = call float @dx.op.dot3.f32(i32 55, float %1019, float %1020, float %1021, float %181, float %182, float %183)  ; Dot3(ax,ay,az,bx,by,bz)
  %1023 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1022)  ; FMax(a,b)
  %1024 = fmul fast float %1023, 0x400C5BF8A0000000
  %1025 = fmul fast float %993, %913
  %1026 = fmul fast float %1025, %1024
  %1027 = fmul fast float %994, %913
  %1028 = fmul fast float %1027, %1024
  %1029 = fmul fast float %995, %913
  %1030 = fmul fast float %1029, %1024
  %1031 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1032 = extractvalue %dx.types.CBufRet.f32 %1031, 3
  %1033 = fmul fast float %1026, %1032
  %1034 = fmul fast float %1028, %1032
  %1035 = fmul fast float %1030, %1032
  %1036 = fcmp fast ogt float %880, %960
  br i1 %1036, label %1037, label %1046

; <label>:1037                                    ; preds = %1018
  %1038 = fmul fast float %962, 0x3FC24924A0000000
  %1039 = fsub fast float %880, %960
  %1040 = fdiv fast float %1039, %1038
  %1041 = call float @dx.op.unary.f32(i32 7, float %1040)  ; Saturate(value)
  %1042 = fsub fast float 1.000000e+00, %1041
  %1043 = fmul fast float %1042, %1033
  %1044 = fmul fast float %1042, %1034
  %1045 = fmul fast float %1042, %1035
  br label %1046

; <label>:1046                                    ; preds = %1037, %1018, %923, %878
  %1047 = phi float [ %1045, %1037 ], [ %1035, %1018 ], [ 0.000000e+00, %923 ], [ 0.000000e+00, %878 ]
  %1048 = phi float [ %1044, %1037 ], [ %1034, %1018 ], [ 0.000000e+00, %923 ], [ 0.000000e+00, %878 ]
  %1049 = phi float [ %1043, %1037 ], [ %1033, %1018 ], [ 0.000000e+00, %923 ], [ 0.000000e+00, %878 ]
  %1050 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1049)  ; FMax(a,b)
  %1051 = fmul fast float %1050, 0x3FD20DD760000000
  %1052 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float %327, float %328, float %329)  ; Dot3(ax,ay,az,bx,by,bz)
  %1053 = fmul fast float %1052, 0x3FDF454380000000
  %1054 = fmul fast float %1052, %1052
  %1055 = fmul fast float %1054, 0x3FEE471020000000
  %1056 = fadd fast float %1055, 0xBFD42F6020000000
  %1057 = call float @dx.op.dot3.f32(i32 55, float %1050, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %1053, float %1056)  ; Dot3(ax,ay,az,bx,by,bz)
  %1058 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1048)  ; FMax(a,b)
  %1059 = fmul fast float %1058, 0x3FD20DD760000000
  %1060 = call float @dx.op.dot3.f32(i32 55, float %1058, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %1053, float %1056)  ; Dot3(ax,ay,az,bx,by,bz)
  %1061 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1047)  ; FMax(a,b)
  %1062 = fmul fast float %1061, 0x3FD20DD760000000
  %1063 = call float @dx.op.dot3.f32(i32 55, float %1061, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %1053, float %1056)  ; Dot3(ax,ay,az,bx,by,bz)
  %1064 = call float @dx.op.binary.f32(i32 35, float %1051, float 0.000000e+00)  ; FMax(a,b)
  %1065 = call float @dx.op.binary.f32(i32 35, float %1059, float 0.000000e+00)  ; FMax(a,b)
  %1066 = call float @dx.op.binary.f32(i32 35, float %1062, float 0.000000e+00)  ; FMax(a,b)
  %1067 = call float @dx.op.binary.f32(i32 35, float %1057, float 0.000000e+00)  ; FMax(a,b)
  %1068 = call float @dx.op.binary.f32(i32 35, float %1060, float 0.000000e+00)  ; FMax(a,b)
  %1069 = call float @dx.op.binary.f32(i32 35, float %1063, float 0.000000e+00)  ; FMax(a,b)
  %1070 = fmul fast float %1064, %381
  %1071 = fmul fast float %1065, %381
  %1072 = fmul fast float %1066, %381
  %1073 = fadd fast float %1070, %870
  %1074 = fadd fast float %1071, %871
  %1075 = fadd fast float %1072, %872
  %1076 = fmul fast float %1067, %381
  %1077 = fmul fast float %1068, %381
  %1078 = fmul fast float %1069, %381
  %1079 = fadd fast float %1076, %867
  %1080 = fadd fast float %1077, %868
  %1081 = fadd fast float %1078, %869
  br label %1082

; <label>:1082                                    ; preds = %1046, %866
  %1083 = phi float [ %1079, %1046 ], [ %867, %866 ]
  %1084 = phi float [ %1080, %1046 ], [ %868, %866 ]
  %1085 = phi float [ %1081, %1046 ], [ %869, %866 ]
  %1086 = phi float [ %1073, %1046 ], [ %870, %866 ]
  %1087 = phi float [ %1074, %1046 ], [ %871, %866 ]
  %1088 = phi float [ %1075, %1046 ], [ %872, %866 ]
  %1089 = fcmp fast olt float %381, 1.000000e+00
  br i1 %1089, label %1090, label %1913, !dx.controlflow.hints !96

; <label>:1090                                    ; preds = %1082
  %1091 = extractvalue %dx.types.CBufRet.f32 %337, 2
  %1092 = fadd fast float %1091, %252
  %1093 = fmul fast float %181, 3.200000e+01
  %1094 = fmul fast float %182, 3.200000e+01
  %1095 = fadd fast float %340, %1093
  %1096 = fadd fast float %341, %1094
  %1097 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %1098 = extractvalue %dx.types.CBufRet.f32 %1097, 0
  %1099 = extractvalue %dx.types.CBufRet.f32 %1097, 1
  %1100 = fsub fast float %1095, %1098
  %1101 = fsub fast float %1096, %1099
  %1102 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %1103 = extractvalue %dx.types.CBufRet.f32 %1102, 0
  %1104 = extractvalue %dx.types.CBufRet.f32 %1102, 1
  %1105 = fmul fast float %1100, %1103
  %1106 = fmul fast float %1101, %1104
  %1107 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %1108 = extractvalue %dx.types.CBufRet.f32 %1107, 0
  %1109 = fmul fast float %1105, %1108
  %1110 = extractvalue %dx.types.CBufRet.f32 %1107, 1
  %1111 = fadd fast float %1109, %1110
  %1112 = extractvalue %dx.types.CBufRet.f32 %1107, 2
  %1113 = fmul fast float %1112, %1106
  %1114 = extractvalue %dx.types.CBufRet.f32 %1107, 3
  %1115 = fadd fast float %1113, %1114
  %1116 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %27, %dx.types.Handle %44, float %1111, float %1115, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1117 = extractvalue %dx.types.ResRet.f32 %1116, 0
  %1118 = extractvalue %dx.types.ResRet.f32 %1116, 1
  %1119 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %1120 = extractvalue %dx.types.CBufRet.f32 %1119, 1
  %1121 = extractvalue %dx.types.CBufRet.f32 %1119, 0
  %1122 = fsub fast float %1120, %1121
  %1123 = fmul fast float %1122, %1117
  %1124 = fadd fast float %1123, %1121
  %1125 = extractvalue %dx.types.CBufRet.f32 %1119, 3
  %1126 = extractvalue %dx.types.CBufRet.f32 %1119, 2
  %1127 = fsub fast float %1125, %1126
  %1128 = fmul fast float %1127, %1118
  %1129 = fadd fast float %1128, %1126
  %1130 = fsub fast float %1092, %1124
  %1131 = fsub fast float %1129, %1124
  %1132 = fdiv fast float %1130, %1131
  %1133 = call float @dx.op.unary.f32(i32 7, float %1132)  ; Saturate(value)
  %1134 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 264)  ; CBufferLoadLegacy(handle,regIndex)
  %1135 = extractvalue %dx.types.CBufRet.f32 %1134, 0
  %1136 = fmul fast float %1135, %1133
  %1137 = extractvalue %dx.types.CBufRet.f32 %1134, 1
  %1138 = fadd fast float %1136, %1137
  %1139 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %44, float %1111, float %1115, float %1138, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1140 = extractvalue %dx.types.ResRet.f32 %1139, 0
  %1141 = extractvalue %dx.types.ResRet.f32 %1139, 1
  %1142 = extractvalue %dx.types.ResRet.f32 %1139, 2
  %1143 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 258)  ; CBufferLoadLegacy(handle,regIndex)
  %1144 = extractvalue %dx.types.CBufRet.f32 %1143, 0
  %1145 = extractvalue %dx.types.CBufRet.f32 %1143, 1
  %1146 = extractvalue %dx.types.CBufRet.f32 %1143, 2
  %1147 = fmul fast float %1144, %1140
  %1148 = fmul fast float %1145, %1141
  %1149 = fmul fast float %1146, %1142
  %1150 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 257)  ; CBufferLoadLegacy(handle,regIndex)
  %1151 = extractvalue %dx.types.CBufRet.f32 %1150, 0
  %1152 = extractvalue %dx.types.CBufRet.f32 %1150, 1
  %1153 = extractvalue %dx.types.CBufRet.f32 %1150, 2
  %1154 = fadd fast float %1147, %1151
  %1155 = fadd fast float %1148, %1152
  %1156 = fadd fast float %1149, %1153
  %1157 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 262)  ; CBufferLoadLegacy(handle,regIndex)
  %1158 = extractvalue %dx.types.CBufRet.f32 %1157, 0
  %1159 = fmul fast float %1158, %1105
  %1160 = extractvalue %dx.types.CBufRet.f32 %1157, 1
  %1161 = fadd fast float %1159, %1160
  %1162 = extractvalue %dx.types.CBufRet.f32 %1157, 2
  %1163 = fmul fast float %1162, %1106
  %1164 = extractvalue %dx.types.CBufRet.f32 %1157, 3
  %1165 = fadd fast float %1163, %1164
  %1166 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 265)  ; CBufferLoadLegacy(handle,regIndex)
  %1167 = extractvalue %dx.types.CBufRet.f32 %1166, 0
  %1168 = extractvalue %dx.types.CBufRet.f32 %1166, 1
  %1169 = extractvalue %dx.types.CBufRet.f32 %1166, 2
  %1170 = extractvalue %dx.types.CBufRet.f32 %1166, 3
  %1171 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 266)  ; CBufferLoadLegacy(handle,regIndex)
  %1172 = extractvalue %dx.types.CBufRet.f32 %1171, 0
  %1173 = extractvalue %dx.types.CBufRet.f32 %1171, 1
  %1174 = extractvalue %dx.types.CBufRet.f32 %1171, 2
  %1175 = extractvalue %dx.types.CBufRet.f32 %1171, 3
  %1176 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %44, float %1161, float %1165, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1177 = extractvalue %dx.types.ResRet.f32 %1176, 0
  %1178 = extractvalue %dx.types.ResRet.f32 %1176, 1
  %1179 = extractvalue %dx.types.ResRet.f32 %1176, 2
  %1180 = extractvalue %dx.types.ResRet.f32 %1176, 3
  %1181 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %44, float %1161, float %1165, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1182 = extractvalue %dx.types.ResRet.f32 %1181, 0
  %1183 = extractvalue %dx.types.ResRet.f32 %1181, 1
  %1184 = extractvalue %dx.types.ResRet.f32 %1181, 2
  %1185 = extractvalue %dx.types.ResRet.f32 %1181, 3
  %1186 = fmul fast float %1177, %1154
  %1187 = fmul fast float %1182, %1154
  %1188 = fmul fast float %1184, %1154
  %1189 = fmul fast float %1180, %1154
  %1190 = fadd fast float %1186, %1167
  %1191 = fadd fast float %1187, %1168
  %1192 = fadd fast float %1188, %1169
  %1193 = fadd fast float %1189, %1170
  %1194 = fmul fast float %1178, %1154
  %1195 = fmul fast float %1183, %1154
  %1196 = fadd fast float %1194, %1172
  %1197 = fadd fast float %1195, %1173
  %1198 = fmul fast float %1179, %1154
  %1199 = fmul fast float %1185, %1154
  %1200 = fadd fast float %1198, %1174
  %1201 = fadd fast float %1199, %1175
  %1202 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %44, float %1161, float %1165, float 2.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1203 = extractvalue %dx.types.ResRet.f32 %1202, 0
  %1204 = extractvalue %dx.types.ResRet.f32 %1202, 1
  %1205 = extractvalue %dx.types.ResRet.f32 %1202, 2
  %1206 = extractvalue %dx.types.ResRet.f32 %1202, 3
  %1207 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %44, float %1161, float %1165, float 3.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1208 = extractvalue %dx.types.ResRet.f32 %1207, 0
  %1209 = extractvalue %dx.types.ResRet.f32 %1207, 1
  %1210 = extractvalue %dx.types.ResRet.f32 %1207, 2
  %1211 = extractvalue %dx.types.ResRet.f32 %1207, 3
  %1212 = fmul fast float %1203, %1155
  %1213 = fmul fast float %1208, %1155
  %1214 = fmul fast float %1210, %1155
  %1215 = fmul fast float %1206, %1155
  %1216 = fadd fast float %1190, %1212
  %1217 = fadd fast float %1191, %1213
  %1218 = fadd fast float %1192, %1214
  %1219 = fadd fast float %1193, %1215
  %1220 = fmul fast float %1204, %1155
  %1221 = fmul fast float %1209, %1155
  %1222 = fadd fast float %1196, %1220
  %1223 = fadd fast float %1197, %1221
  %1224 = fmul fast float %1205, %1155
  %1225 = fmul fast float %1211, %1155
  %1226 = fadd fast float %1200, %1224
  %1227 = fadd fast float %1201, %1225
  %1228 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %44, float %1161, float %1165, float 4.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1229 = extractvalue %dx.types.ResRet.f32 %1228, 0
  %1230 = extractvalue %dx.types.ResRet.f32 %1228, 1
  %1231 = extractvalue %dx.types.ResRet.f32 %1228, 2
  %1232 = extractvalue %dx.types.ResRet.f32 %1228, 3
  %1233 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %44, float %1161, float %1165, float 5.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1234 = extractvalue %dx.types.ResRet.f32 %1233, 0
  %1235 = extractvalue %dx.types.ResRet.f32 %1233, 1
  %1236 = extractvalue %dx.types.ResRet.f32 %1233, 2
  %1237 = extractvalue %dx.types.ResRet.f32 %1233, 3
  %1238 = fmul fast float %1229, %1156
  %1239 = fmul fast float %1234, %1156
  %1240 = fmul fast float %1236, %1156
  %1241 = fmul fast float %1232, %1156
  %1242 = fadd fast float %1216, %1238
  %1243 = fadd fast float %1217, %1239
  %1244 = fadd fast float %1218, %1240
  %1245 = fadd fast float %1219, %1241
  %1246 = fmul fast float %1230, %1156
  %1247 = fmul fast float %1235, %1156
  %1248 = fadd fast float %1222, %1246
  %1249 = fadd fast float %1223, %1247
  %1250 = fmul fast float %1231, %1156
  %1251 = fmul fast float %1237, %1156
  %1252 = fadd fast float %1226, %1250
  %1253 = fadd fast float %1227, %1251
  %1254 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 255)  ; CBufferLoadLegacy(handle,regIndex)
  %1255 = extractvalue %dx.types.CBufRet.f32 %1254, 0
  %1256 = fsub fast float %340, %1255
  %1257 = fsub fast float %1098, %340
  %1258 = call float @dx.op.binary.f32(i32 35, float %1257, float %1256)  ; FMax(a,b)
  %1259 = extractvalue %dx.types.CBufRet.f32 %1254, 1
  %1260 = fsub fast float %341, %1259
  %1261 = fsub fast float %1099, %341
  %1262 = call float @dx.op.binary.f32(i32 35, float %1261, float %1260)  ; FMax(a,b)
  %1263 = call float @dx.op.binary.f32(i32 35, float %1258, float %1262)  ; FMax(a,b)
  %1264 = extractvalue %dx.types.CBufRet.f32 %1102, 3
  %1265 = fmul fast float %1264, %1263
  %1266 = call float @dx.op.unary.f32(i32 7, float %1265)  ; Saturate(value)
  %1267 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 272)  ; CBufferLoadLegacy(handle,regIndex)
  %1268 = extractvalue %dx.types.CBufRet.f32 %1267, 0
  %1269 = extractvalue %dx.types.CBufRet.f32 %1267, 1
  %1270 = extractvalue %dx.types.CBufRet.f32 %1267, 2
  %1271 = extractvalue %dx.types.CBufRet.f32 %1267, 3
  %1272 = fsub fast float %1268, %1242
  %1273 = fsub fast float %1269, %1243
  %1274 = fsub fast float %1270, %1244
  %1275 = fsub fast float %1271, %1245
  %1276 = fmul fast float %1272, %1266
  %1277 = fmul fast float %1273, %1266
  %1278 = fmul fast float %1274, %1266
  %1279 = fmul fast float %1275, %1266
  %1280 = fadd fast float %1276, %1242
  %1281 = fadd fast float %1277, %1243
  %1282 = fadd fast float %1278, %1244
  %1283 = fadd fast float %1279, %1245
  %1284 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 273)  ; CBufferLoadLegacy(handle,regIndex)
  %1285 = extractvalue %dx.types.CBufRet.f32 %1284, 0
  %1286 = extractvalue %dx.types.CBufRet.f32 %1284, 1
  %1287 = fsub fast float %1285, %1248
  %1288 = fsub fast float %1286, %1249
  %1289 = fmul fast float %1287, %1266
  %1290 = fmul fast float %1288, %1266
  %1291 = fadd fast float %1289, %1248
  %1292 = fadd fast float %1290, %1249
  %1293 = extractvalue %dx.types.CBufRet.f32 %1284, 2
  %1294 = extractvalue %dx.types.CBufRet.f32 %1284, 3
  %1295 = fsub fast float %1293, %1252
  %1296 = fsub fast float %1294, %1253
  %1297 = fmul fast float %1295, %1266
  %1298 = fmul fast float %1296, %1266
  %1299 = fadd fast float %1297, %1252
  %1300 = fadd fast float %1298, %1253
  %1301 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 267)  ; CBufferLoadLegacy(handle,regIndex)
  %1302 = extractvalue %dx.types.CBufRet.f32 %1301, 0
  %1303 = fmul fast float %1302, %1280
  %1304 = fmul fast float %1302, %1281
  %1305 = fmul fast float %1302, %1282
  %1306 = fmul fast float %1302, %1283
  %1307 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 268)  ; CBufferLoadLegacy(handle,regIndex)
  %1308 = extractvalue %dx.types.CBufRet.f32 %1307, 0
  %1309 = fmul fast float %1308, %1291
  %1310 = fmul fast float %1308, %1292
  %1311 = fadd fast float %1309, %1303
  %1312 = fadd fast float %1310, %1305
  %1313 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 269)  ; CBufferLoadLegacy(handle,regIndex)
  %1314 = extractvalue %dx.types.CBufRet.f32 %1313, 0
  %1315 = fmul fast float %1314, %1299
  %1316 = fmul fast float %1314, %1300
  %1317 = fadd fast float %1311, %1315
  %1318 = fadd fast float %1312, %1316
  %1319 = extractvalue %dx.types.CBufRet.f32 %1301, 1
  %1320 = fmul fast float %1319, %1280
  %1321 = fmul fast float %1319, %1281
  %1322 = fmul fast float %1319, %1282
  %1323 = fmul fast float %1319, %1283
  %1324 = extractvalue %dx.types.CBufRet.f32 %1307, 1
  %1325 = fmul fast float %1324, %1291
  %1326 = fmul fast float %1324, %1292
  %1327 = fadd fast float %1325, %1320
  %1328 = fadd fast float %1326, %1322
  %1329 = extractvalue %dx.types.CBufRet.f32 %1313, 1
  %1330 = fmul fast float %1329, %1299
  %1331 = fmul fast float %1329, %1300
  %1332 = fadd fast float %1327, %1330
  %1333 = fadd fast float %1328, %1331
  %1334 = extractvalue %dx.types.CBufRet.f32 %1301, 2
  %1335 = fmul fast float %1334, %1280
  %1336 = fmul fast float %1334, %1281
  %1337 = fmul fast float %1334, %1282
  %1338 = fmul fast float %1334, %1283
  %1339 = extractvalue %dx.types.CBufRet.f32 %1307, 2
  %1340 = fmul fast float %1339, %1291
  %1341 = fmul fast float %1339, %1292
  %1342 = fadd fast float %1340, %1335
  %1343 = fadd fast float %1341, %1337
  %1344 = extractvalue %dx.types.CBufRet.f32 %1313, 2
  %1345 = fmul fast float %1344, %1299
  %1346 = fmul fast float %1344, %1300
  %1347 = fadd fast float %1342, %1345
  %1348 = fadd fast float %1343, %1346
  %1349 = fmul fast float %1336, %1336
  %1350 = fmul fast float %1348, %1348
  %1351 = fmul fast float %1338, %1338
  %1352 = fadd fast float %1351, %1349
  %1353 = fadd fast float %1352, %1350
  %1354 = call float @dx.op.unary.f32(i32 24, float %1353)  ; Sqrt(value)
  %1355 = fcmp fast ugt float %1354, 0.000000e+00
  br i1 %1355, label %1356, label %1371

; <label>:1356                                    ; preds = %1090
  %1357 = fsub fast float -0.000000e+00, %1338
  %1358 = fdiv fast float %1357, %1354
  %1359 = fsub fast float -0.000000e+00, %1336
  %1360 = fdiv fast float %1359, %1354
  %1361 = fdiv fast float %1348, %1354
  %1362 = fmul fast float %1347, 0x3FE279A760000000
  %1363 = fmul fast float %1360, %1336
  %1364 = fmul fast float %1361, %1348
  %1365 = fmul fast float %1358, %1338
  %1366 = fadd fast float %1363, %1365
  %1367 = fsub fast float %1366, %1364
  %1368 = call float @dx.op.unary.f32(i32 6, float %1367)  ; FAbs(value)
  %1369 = fadd fast float %1368, 0x3DDB7CDFE0000000
  %1370 = fdiv fast float %1362, %1369
  br label %1371

; <label>:1371                                    ; preds = %1356, %1090
  %1372 = phi float [ %1370, %1356 ], [ 1.000000e+00, %1090 ]
  %1373 = fmul fast float %1321, %1321
  %1374 = fmul fast float %1333, %1333
  %1375 = fmul fast float %1323, %1323
  %1376 = fadd fast float %1375, %1373
  %1377 = fadd fast float %1376, %1374
  %1378 = call float @dx.op.unary.f32(i32 24, float %1377)  ; Sqrt(value)
  %1379 = fcmp fast ugt float %1378, 0.000000e+00
  br i1 %1379, label %1380, label %1395

; <label>:1380                                    ; preds = %1371
  %1381 = fsub fast float -0.000000e+00, %1323
  %1382 = fdiv fast float %1381, %1378
  %1383 = fsub fast float -0.000000e+00, %1321
  %1384 = fdiv fast float %1383, %1378
  %1385 = fdiv fast float %1333, %1378
  %1386 = fmul fast float %1332, 0x3FE279A760000000
  %1387 = fmul fast float %1384, %1321
  %1388 = fmul fast float %1385, %1333
  %1389 = fmul fast float %1382, %1323
  %1390 = fadd fast float %1387, %1389
  %1391 = fsub fast float %1390, %1388
  %1392 = call float @dx.op.unary.f32(i32 6, float %1391)  ; FAbs(value)
  %1393 = fadd fast float %1392, 0x3DDB7CDFE0000000
  %1394 = fdiv fast float %1386, %1393
  br label %1395

; <label>:1395                                    ; preds = %1380, %1371
  %1396 = phi float [ %1394, %1380 ], [ 1.000000e+00, %1371 ]
  %1397 = call float @dx.op.binary.f32(i32 36, float %1396, float %1372)  ; FMin(a,b)
  %1398 = fmul fast float %1304, %1304
  %1399 = fmul fast float %1318, %1318
  %1400 = fmul fast float %1306, %1306
  %1401 = fadd fast float %1400, %1398
  %1402 = fadd fast float %1401, %1399
  %1403 = call float @dx.op.unary.f32(i32 24, float %1402)  ; Sqrt(value)
  %1404 = fcmp fast ugt float %1403, 0.000000e+00
  br i1 %1404, label %1405, label %1420

; <label>:1405                                    ; preds = %1395
  %1406 = fsub fast float -0.000000e+00, %1306
  %1407 = fdiv fast float %1406, %1403
  %1408 = fsub fast float -0.000000e+00, %1304
  %1409 = fdiv fast float %1408, %1403
  %1410 = fdiv fast float %1318, %1403
  %1411 = fmul fast float %1317, 0x3FE279A760000000
  %1412 = fmul fast float %1409, %1304
  %1413 = fmul fast float %1410, %1318
  %1414 = fmul fast float %1407, %1306
  %1415 = fadd fast float %1412, %1414
  %1416 = fsub fast float %1415, %1413
  %1417 = call float @dx.op.unary.f32(i32 6, float %1416)  ; FAbs(value)
  %1418 = fadd fast float %1417, 0x3DDB7CDFE0000000
  %1419 = fdiv fast float %1411, %1418
  br label %1420

; <label>:1420                                    ; preds = %1405, %1395
  %1421 = phi float [ %1419, %1405 ], [ 1.000000e+00, %1395 ]
  %1422 = call float @dx.op.binary.f32(i32 36, float %1421, float %1397)  ; FMin(a,b)
  %1423 = call float @dx.op.unary.f32(i32 7, float %1422)  ; Saturate(value)
  %1424 = fcmp fast olt float %1423, 1.000000e+00
  br i1 %1424, label %1425, label %1435

; <label>:1425                                    ; preds = %1420
  %1426 = fmul fast float %1423, %1304
  %1427 = fmul fast float %1423, %1318
  %1428 = fmul fast float %1423, %1306
  %1429 = fmul fast float %1423, %1321
  %1430 = fmul fast float %1423, %1333
  %1431 = fmul fast float %1423, %1323
  %1432 = fmul fast float %1423, %1336
  %1433 = fmul fast float %1423, %1348
  %1434 = fmul fast float %1423, %1338
  br label %1435

; <label>:1435                                    ; preds = %1425, %1420
  %1436 = phi float [ %1432, %1425 ], [ %1336, %1420 ]
  %1437 = phi float [ %1433, %1425 ], [ %1348, %1420 ]
  %1438 = phi float [ %1434, %1425 ], [ %1338, %1420 ]
  %1439 = phi float [ %1429, %1425 ], [ %1321, %1420 ]
  %1440 = phi float [ %1430, %1425 ], [ %1333, %1420 ]
  %1441 = phi float [ %1431, %1425 ], [ %1323, %1420 ]
  %1442 = phi float [ %1426, %1425 ], [ %1304, %1420 ]
  %1443 = phi float [ %1427, %1425 ], [ %1318, %1420 ]
  %1444 = phi float [ %1428, %1425 ], [ %1306, %1420 ]
  %1445 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1317)  ; FMax(a,b)
  %1446 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1332)  ; FMax(a,b)
  %1447 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1347)  ; FMax(a,b)
  %1448 = fcmp fast oge float %1105, 0.000000e+00
  %1449 = and i1 %1448, %876
  %1450 = fcmp fast ole float %1105, 1.000000e+00
  %1451 = and i1 %1450, %1449
  %1452 = fcmp fast oge float %1106, 0.000000e+00
  %1453 = and i1 %1452, %1451
  %1454 = fcmp fast ole float %1106, 1.000000e+00
  %1455 = and i1 %1454, %1453
  br i1 %1455, label %1456, label %1601, !dx.controlflow.hints !97

; <label>:1456                                    ; preds = %1435
  %1457 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %1458 = extractvalue %dx.types.CBufRet.f32 %1457, 2
  %1459 = extractvalue %dx.types.CBufRet.f32 %1457, 3
  %1460 = fmul fast float %1458, %1105
  %1461 = fmul fast float %1459, %1106
  %1462 = call float @dx.op.unary.f32(i32 27, float %1460)  ; Round_ni(value)
  %1463 = call float @dx.op.unary.f32(i32 27, float %1461)  ; Round_ni(value)
  %1464 = fptosi float %1462 to i32
  %1465 = fptosi float %1463 to i32
  %1466 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %26, i32 0, i32 %1464, i32 %1465, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1467 = extractvalue %dx.types.ResRet.i32 %1466, 0
  %1468 = and i32 %1467, 65535
  %1469 = lshr i32 %1467, 16
  %1470 = icmp eq i32 %1468, 65535
  br i1 %1470, label %1507, label %1471

; <label>:1471                                    ; preds = %1456
  %1472 = extractvalue %dx.types.CBufRet.f32 %874, 1
  %1473 = extractvalue %dx.types.CBufRet.f32 %1457, 0
  %1474 = extractvalue %dx.types.CBufRet.f32 %1457, 1
  %1475 = fmul fast float %1473, %1105
  %1476 = fmul fast float %1474, %1106
  %1477 = fmul fast float %1475, 1.250000e-01
  %1478 = fmul fast float %1476, 1.250000e-01
  %1479 = call float @dx.op.unary.f32(i32 27, float %1477)  ; Round_ni(value)
  %1480 = call float @dx.op.unary.f32(i32 27, float %1478)  ; Round_ni(value)
  %1481 = fmul fast float %1479, 8.000000e+00
  %1482 = fmul fast float %1480, 8.000000e+00
  %1483 = and i32 %1467, 255
  %1484 = lshr i32 %1467, 8
  %1485 = and i32 %1484, 255
  %1486 = mul nuw nsw i32 %1483, 9
  %1487 = uitofp i32 %1486 to float
  %1488 = mul nuw nsw i32 %1485, 9
  %1489 = uitofp i32 %1488 to float
  %1490 = fadd fast float %1487, 5.000000e-01
  %1491 = fadd fast float %1490, %1475
  %1492 = fsub fast float %1491, %1481
  %1493 = fadd fast float %1489, 5.000000e-01
  %1494 = fadd fast float %1493, %1476
  %1495 = fsub fast float %1494, %1482
  %1496 = fdiv fast float %1492, %875
  %1497 = fdiv fast float %1495, %1472
  %1498 = fmul fast float %1133, 4.375000e-01
  %1499 = fadd fast float %1498, 3.125000e-02
  %1500 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %44, float %1496, float %1497, float %1499, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1501 = extractvalue %dx.types.ResRet.f32 %1500, 0
  %1502 = extractvalue %dx.types.ResRet.f32 %1500, 1
  %1503 = extractvalue %dx.types.ResRet.f32 %1500, 2
  %1504 = fadd fast float %1501, %1445
  %1505 = fadd fast float %1502, %1446
  %1506 = fadd fast float %1503, %1447
  br label %1507

; <label>:1507                                    ; preds = %1471, %1456
  %1508 = phi float [ %1506, %1471 ], [ %1447, %1456 ]
  %1509 = phi float [ %1505, %1471 ], [ %1446, %1456 ]
  %1510 = phi float [ %1504, %1471 ], [ %1445, %1456 ]
  %1511 = icmp eq i32 %1469, 65535
  br i1 %1511, label %1601, label %1512

; <label>:1512                                    ; preds = %1507
  %1513 = extractvalue %dx.types.CBufRet.f32 %874, 1
  %1514 = extractvalue %dx.types.CBufRet.f32 %1457, 0
  %1515 = extractvalue %dx.types.CBufRet.f32 %1457, 1
  %1516 = fmul fast float %1514, %1105
  %1517 = fmul fast float %1515, %1106
  %1518 = fmul fast float %1516, 1.250000e-01
  %1519 = fmul fast float %1517, 1.250000e-01
  %1520 = call float @dx.op.unary.f32(i32 27, float %1518)  ; Round_ni(value)
  %1521 = call float @dx.op.unary.f32(i32 27, float %1519)  ; Round_ni(value)
  %1522 = fmul fast float %1520, 8.000000e+00
  %1523 = fmul fast float %1521, 8.000000e+00
  %1524 = fsub fast float %1516, %1522
  %1525 = fsub fast float %1517, %1523
  %1526 = fadd fast float %1524, 5.000000e-01
  %1527 = fadd fast float %1525, 5.000000e-01
  %1528 = and i32 %1469, 255
  %1529 = lshr i32 %1467, 24
  %1530 = mul nuw nsw i32 %1528, 9
  %1531 = uitofp i32 %1530 to float
  %1532 = mul nuw nsw i32 %1529, 9
  %1533 = uitofp i32 %1532 to float
  %1534 = fadd fast float %1526, %1531
  %1535 = fadd fast float %1527, %1533
  %1536 = fdiv fast float %1534, %875
  %1537 = fdiv fast float %1535, %1513
  %1538 = fmul fast float %1133, 4.375000e-01
  %1539 = fadd fast float %1538, 3.125000e-02
  %1540 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %44, float %1536, float %1537, float %1539, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1541 = extractvalue %dx.types.ResRet.f32 %1540, 0
  %1542 = extractvalue %dx.types.ResRet.f32 %1540, 1
  %1543 = extractvalue %dx.types.ResRet.f32 %1540, 2
  %1544 = fadd fast float %1538, 5.312500e-01
  %1545 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %44, float %1536, float %1537, float %1544, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1546 = extractvalue %dx.types.ResRet.f32 %1545, 0
  %1547 = extractvalue %dx.types.ResRet.f32 %1545, 1
  %1548 = extractvalue %dx.types.ResRet.f32 %1545, 2
  %1549 = fmul fast float %1546, 2.000000e+00
  %1550 = fmul fast float %1547, 2.000000e+00
  %1551 = fmul fast float %1548, 2.000000e+00
  %1552 = fadd fast float %1549, -1.000000e+00
  %1553 = fadd fast float %1550, -1.000000e+00
  %1554 = fadd fast float %1551, -1.000000e+00
  %1555 = fmul fast float %1552, %1552
  %1556 = fmul fast float %1553, %1553
  %1557 = fadd fast float %1555, %1556
  %1558 = fmul fast float %1554, %1554
  %1559 = fadd fast float %1557, %1558
  %1560 = call float @dx.op.unary.f32(i32 24, float %1559)  ; Sqrt(value)
  %1561 = fcmp fast ogt float %1560, 0.000000e+00
  br i1 %1561, label %1562, label %1566

; <label>:1562                                    ; preds = %1512
  %1563 = fdiv fast float %1552, %1560
  %1564 = fdiv fast float %1553, %1560
  %1565 = fdiv fast float %1554, %1560
  br label %1566

; <label>:1566                                    ; preds = %1562, %1512
  %1567 = phi float [ %1563, %1562 ], [ 0.000000e+00, %1512 ]
  %1568 = phi float [ %1564, %1562 ], [ 0.000000e+00, %1512 ]
  %1569 = phi float [ %1565, %1562 ], [ 0.000000e+00, %1512 ]
  %1570 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1571 = extractvalue %dx.types.CBufRet.f32 %1570, 0
  %1572 = extractvalue %dx.types.CBufRet.f32 %1570, 1
  %1573 = fsub fast float %340, %1571
  %1574 = fsub fast float %341, %1572
  %1575 = fmul fast float %1573, %1573
  %1576 = fmul fast float %1574, %1574
  %1577 = fadd fast float %1575, %1576
  %1578 = call float @dx.op.unary.f32(i32 24, float %1577)  ; Sqrt(value)
  %1579 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %1580 = extractvalue %dx.types.CBufRet.f32 %1579, 0
  %1581 = extractvalue %dx.types.CBufRet.f32 %1579, 1
  %1582 = fsub fast float %1578, %1580
  %1583 = fdiv fast float %1582, %1581
  %1584 = call float @dx.op.unary.f32(i32 7, float %1583)  ; Saturate(value)
  %1585 = fmul fast float %1584, 2.000000e+00
  %1586 = fsub fast float 3.000000e+00, %1585
  %1587 = fmul fast float %1584, %1584
  %1588 = fmul fast float %1587, %1586
  %1589 = call float @dx.op.dot3.f32(i32 55, float %1567, float %1568, float %1569, float %181, float %182, float %183)  ; Dot3(ax,ay,az,bx,by,bz)
  %1590 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1589)  ; FMax(a,b)
  %1591 = fmul fast float %1590, 0x400C5BF8A0000000
  %1592 = fmul fast float %1588, %1541
  %1593 = fmul fast float %1592, %1591
  %1594 = fadd fast float %1593, %1510
  %1595 = fmul fast float %1588, %1542
  %1596 = fmul fast float %1595, %1591
  %1597 = fadd fast float %1596, %1509
  %1598 = fmul fast float %1588, %1543
  %1599 = fmul fast float %1598, %1591
  %1600 = fadd fast float %1599, %1508
  br label %1601

; <label>:1601                                    ; preds = %1566, %1507, %1435
  %1602 = phi float [ %1600, %1566 ], [ %1508, %1507 ], [ %1447, %1435 ]
  %1603 = phi float [ %1597, %1566 ], [ %1509, %1507 ], [ %1446, %1435 ]
  %1604 = phi float [ %1594, %1566 ], [ %1510, %1507 ], [ %1445, %1435 ]
  %1605 = fcmp fast ogt float %1092, %1129
  %1606 = and i1 %1448, %1605
  %1607 = and i1 %1450, %1606
  %1608 = and i1 %1452, %1607
  %1609 = and i1 %1454, %1608
  br i1 %1609, label %1610, label %1667, !dx.controlflow.hints !98

; <label>:1610                                    ; preds = %1601
  %1611 = fmul fast float %1131, 0x3FC24924A0000000
  %1612 = fsub fast float %1092, %1129
  %1613 = fdiv fast float %1612, %1611
  %1614 = call float @dx.op.unary.f32(i32 7, float %1613)  ; Saturate(value)
  %1615 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 275)  ; CBufferLoadLegacy(handle,regIndex)
  %1616 = extractvalue %dx.types.CBufRet.f32 %1615, 0
  %1617 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 276)  ; CBufferLoadLegacy(handle,regIndex)
  %1618 = extractvalue %dx.types.CBufRet.f32 %1617, 0
  %1619 = extractvalue %dx.types.CBufRet.f32 %1617, 1
  %1620 = extractvalue %dx.types.CBufRet.f32 %1617, 2
  %1621 = fsub fast float %1616, %1604
  %1622 = fsub fast float %1618, %1442
  %1623 = fsub fast float %1619, %1443
  %1624 = fsub fast float %1620, %1444
  %1625 = fmul fast float %1621, %1614
  %1626 = fmul fast float %1622, %1614
  %1627 = fmul fast float %1623, %1614
  %1628 = fmul fast float %1624, %1614
  %1629 = fadd fast float %1625, %1604
  %1630 = fadd fast float %1626, %1442
  %1631 = fadd fast float %1627, %1443
  %1632 = fadd fast float %1628, %1444
  %1633 = extractvalue %dx.types.CBufRet.f32 %1615, 1
  %1634 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 278)  ; CBufferLoadLegacy(handle,regIndex)
  %1635 = extractvalue %dx.types.CBufRet.f32 %1634, 0
  %1636 = extractvalue %dx.types.CBufRet.f32 %1634, 1
  %1637 = extractvalue %dx.types.CBufRet.f32 %1634, 2
  %1638 = fsub fast float %1633, %1603
  %1639 = fsub fast float %1635, %1439
  %1640 = fsub fast float %1636, %1440
  %1641 = fsub fast float %1637, %1441
  %1642 = fmul fast float %1638, %1614
  %1643 = fmul fast float %1639, %1614
  %1644 = fmul fast float %1640, %1614
  %1645 = fmul fast float %1641, %1614
  %1646 = fadd fast float %1642, %1603
  %1647 = fadd fast float %1643, %1439
  %1648 = fadd fast float %1644, %1440
  %1649 = fadd fast float %1645, %1441
  %1650 = extractvalue %dx.types.CBufRet.f32 %1615, 2
  %1651 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 280)  ; CBufferLoadLegacy(handle,regIndex)
  %1652 = extractvalue %dx.types.CBufRet.f32 %1651, 0
  %1653 = extractvalue %dx.types.CBufRet.f32 %1651, 1
  %1654 = extractvalue %dx.types.CBufRet.f32 %1651, 2
  %1655 = fsub fast float %1650, %1602
  %1656 = fsub fast float %1652, %1436
  %1657 = fsub fast float %1653, %1437
  %1658 = fsub fast float %1654, %1438
  %1659 = fmul fast float %1655, %1614
  %1660 = fmul fast float %1656, %1614
  %1661 = fmul fast float %1657, %1614
  %1662 = fmul fast float %1658, %1614
  %1663 = fadd fast float %1659, %1602
  %1664 = fadd fast float %1660, %1436
  %1665 = fadd fast float %1661, %1437
  %1666 = fadd fast float %1662, %1438
  br label %1667

; <label>:1667                                    ; preds = %1610, %1601
  %1668 = phi float [ %1663, %1610 ], [ %1602, %1601 ]
  %1669 = phi float [ %1664, %1610 ], [ %1436, %1601 ]
  %1670 = phi float [ %1665, %1610 ], [ %1437, %1601 ]
  %1671 = phi float [ %1666, %1610 ], [ %1438, %1601 ]
  %1672 = phi float [ %1646, %1610 ], [ %1603, %1601 ]
  %1673 = phi float [ %1647, %1610 ], [ %1439, %1601 ]
  %1674 = phi float [ %1648, %1610 ], [ %1440, %1601 ]
  %1675 = phi float [ %1649, %1610 ], [ %1441, %1601 ]
  %1676 = phi float [ %1629, %1610 ], [ %1604, %1601 ]
  %1677 = phi float [ %1630, %1610 ], [ %1442, %1601 ]
  %1678 = phi float [ %1631, %1610 ], [ %1443, %1601 ]
  %1679 = phi float [ %1632, %1610 ], [ %1444, %1601 ]
  %1680 = extractvalue %dx.types.CBufRet.f32 %1254, 3
  %1681 = fmul fast float %1680, %1676
  %1682 = fmul fast float %1680, %1672
  %1683 = fmul fast float %1680, %1668
  %1684 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1685 = extractvalue %dx.types.CBufRet.f32 %1684, 3
  %1686 = fmul fast float %1681, %1685
  %1687 = fmul fast float %1682, %1685
  %1688 = fmul fast float %1683, %1685
  %1689 = call float @dx.op.dot3.f32(i32 55, float %1686, float %1687, float %1688, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1690 = fmul fast float %1689, 0x3FD20DD760000000
  %1691 = fmul fast float %1677, 1.500000e+00
  %1692 = fmul fast float %1691, %1680
  %1693 = fmul fast float %1692, %1685
  %1694 = fmul fast float %1678, 1.500000e+00
  %1695 = fmul fast float %1694, %1680
  %1696 = fmul fast float %1695, %1685
  %1697 = fmul fast float %1679, 1.500000e+00
  %1698 = fmul fast float %1697, %1680
  %1699 = fmul fast float %1698, %1685
  %1700 = fmul fast float %1673, 1.500000e+00
  %1701 = fmul fast float %1700, %1680
  %1702 = fmul fast float %1701, %1685
  %1703 = fmul fast float %1674, 1.500000e+00
  %1704 = fmul fast float %1703, %1680
  %1705 = fmul fast float %1704, %1685
  %1706 = fmul fast float %1675, 1.500000e+00
  %1707 = fmul fast float %1706, %1680
  %1708 = fmul fast float %1707, %1685
  %1709 = fmul fast float %1669, 1.500000e+00
  %1710 = fmul fast float %1709, %1680
  %1711 = fmul fast float %1710, %1685
  %1712 = fmul fast float %1670, 1.500000e+00
  %1713 = fmul fast float %1712, %1680
  %1714 = fmul fast float %1713, %1685
  %1715 = fmul fast float %1671, 1.500000e+00
  %1716 = fmul fast float %1715, %1680
  %1717 = fmul fast float %1716, %1685
  %1718 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1686)  ; FMax(a,b)
  %1719 = call float @dx.op.dot3.f32(i32 55, float %1693, float %1696, float %1699, float %1693, float %1696, float %1699)  ; Dot3(ax,ay,az,bx,by,bz)
  %1720 = fcmp fast oeq float %1719, 0.000000e+00
  %1721 = fcmp fast oeq float %1718, 0.000000e+00
  %1722 = or i1 %1721, %1720
  br i1 %1722, label %1752, label %1723

; <label>:1723                                    ; preds = %1667
  %1724 = fsub fast float -0.000000e+00, %1699
  %1725 = fsub fast float -0.000000e+00, %1693
  %1726 = call float @dx.op.unary.f32(i32 24, float %1719)  ; Sqrt(value)
  %1727 = fdiv fast float %1726, %1718
  %1728 = fcmp fast ogt float %1727, 0x3FFB6F8900000000
  %1729 = select i1 %1728, float 0x3FFB6F8900000000, float %1727
  %1730 = fmul fast float %1729, 0x3FE8A23460000000
  %1731 = call float @dx.op.unary.f32(i32 7, float %1730)  ; Saturate(value)
  %1732 = call float @dx.op.binary.f32(i32 35, float %1729, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %1733 = fmul fast float %1731, %1718
  %1734 = fmul fast float %1732, 0x3FF279A740000000
  %1735 = fadd fast float %1734, -1.000000e+00
  %1736 = call float @dx.op.dot3.f32(i32 55, float %1724, float %1725, float %1696, float %1724, float %1725, float %1696)  ; Dot3(ax,ay,az,bx,by,bz)
  %1737 = call float @dx.op.unary.f32(i32 25, float %1736)  ; Rsqrt(value)
  %1738 = fmul fast float %1737, %1724
  %1739 = fmul fast float %1737, %1725
  %1740 = fmul fast float %1737, %1696
  %1741 = fmul fast float %1735, %1735
  %1742 = fsub fast float 1.000000e+00, %1741
  %1743 = fmul fast float %1732, 0x40005F8BE0000000
  %1744 = fsub fast float 0x400C5BF8A0000000, %1743
  %1745 = fdiv fast float %1733, %1744
  %1746 = fmul fast float %1745, 0x3FEE31C3C0000000
  %1747 = fmul fast float %1746, %1742
  %1748 = fmul fast float %1732, 0x3FDACB7480000000
  %1749 = fadd fast float %1748, 0xBFD7347680000000
  %1750 = fmul fast float %1749, %1745
  %1751 = fmul fast float %1750, %1742
  br label %1752

; <label>:1752                                    ; preds = %1723, %1667
  %1753 = phi float [ %1738, %1723 ], [ 0.000000e+00, %1667 ]
  %1754 = phi float [ %1739, %1723 ], [ 0.000000e+00, %1667 ]
  %1755 = phi float [ %1740, %1723 ], [ 0.000000e+00, %1667 ]
  %1756 = phi float [ %1747, %1723 ], [ 0.000000e+00, %1667 ]
  %1757 = phi float [ %1751, %1723 ], [ 0.000000e+00, %1667 ]
  %1758 = call float @dx.op.dot3.f32(i32 55, float %1753, float %1754, float %1755, float %181, float %182, float %183)  ; Dot3(ax,ay,az,bx,by,bz)
  %1759 = fmul fast float %1758, %1758
  %1760 = fmul fast float %1759, 0x3FEE471020000000
  %1761 = fadd fast float %1760, 0xBFD42F6020000000
  %1762 = fmul fast float %1718, 0x3FD20DD760000000
  %1763 = fmul fast float %1761, %1757
  %1764 = fmul fast float %1756, 0x3FDF454380000000
  %1765 = fmul fast float %1764, %1758
  %1766 = fadd fast float %1765, %1762
  %1767 = fadd fast float %1766, %1763
  %1768 = call float @dx.op.dot3.f32(i32 55, float %1753, float %1754, float %1755, float %327, float %328, float %329)  ; Dot3(ax,ay,az,bx,by,bz)
  %1769 = fmul fast float %1768, 0x3FDF454380000000
  %1770 = fmul fast float %1768, %1768
  %1771 = fmul fast float %1770, 0x3FEE471020000000
  %1772 = fadd fast float %1771, 0xBFD42F6020000000
  %1773 = call float @dx.op.dot3.f32(i32 55, float %1718, float %1756, float %1757, float 0x3FD20DD760000000, float %1769, float %1772)  ; Dot3(ax,ay,az,bx,by,bz)
  %1774 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1687)  ; FMax(a,b)
  %1775 = call float @dx.op.dot3.f32(i32 55, float %1702, float %1705, float %1708, float %1702, float %1705, float %1708)  ; Dot3(ax,ay,az,bx,by,bz)
  %1776 = fcmp fast oeq float %1775, 0.000000e+00
  %1777 = fcmp fast oeq float %1774, 0.000000e+00
  %1778 = or i1 %1777, %1776
  br i1 %1778, label %1808, label %1779

; <label>:1779                                    ; preds = %1752
  %1780 = fsub fast float -0.000000e+00, %1708
  %1781 = fsub fast float -0.000000e+00, %1702
  %1782 = call float @dx.op.unary.f32(i32 24, float %1775)  ; Sqrt(value)
  %1783 = fdiv fast float %1782, %1774
  %1784 = fcmp fast ogt float %1783, 0x3FFB6F8900000000
  %1785 = select i1 %1784, float 0x3FFB6F8900000000, float %1783
  %1786 = fmul fast float %1785, 0x3FE8A23460000000
  %1787 = call float @dx.op.unary.f32(i32 7, float %1786)  ; Saturate(value)
  %1788 = call float @dx.op.binary.f32(i32 35, float %1785, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %1789 = fmul fast float %1787, %1774
  %1790 = fmul fast float %1788, 0x3FF279A740000000
  %1791 = fadd fast float %1790, -1.000000e+00
  %1792 = call float @dx.op.dot3.f32(i32 55, float %1780, float %1781, float %1705, float %1780, float %1781, float %1705)  ; Dot3(ax,ay,az,bx,by,bz)
  %1793 = call float @dx.op.unary.f32(i32 25, float %1792)  ; Rsqrt(value)
  %1794 = fmul fast float %1793, %1780
  %1795 = fmul fast float %1793, %1781
  %1796 = fmul fast float %1793, %1705
  %1797 = fmul fast float %1791, %1791
  %1798 = fsub fast float 1.000000e+00, %1797
  %1799 = fmul fast float %1788, 0x40005F8BE0000000
  %1800 = fsub fast float 0x400C5BF8A0000000, %1799
  %1801 = fdiv fast float %1789, %1800
  %1802 = fmul fast float %1801, 0x3FEE31C3C0000000
  %1803 = fmul fast float %1802, %1798
  %1804 = fmul fast float %1788, 0x3FDACB7480000000
  %1805 = fadd fast float %1804, 0xBFD7347680000000
  %1806 = fmul fast float %1805, %1801
  %1807 = fmul fast float %1806, %1798
  br label %1808

; <label>:1808                                    ; preds = %1779, %1752
  %1809 = phi float [ %1794, %1779 ], [ 0.000000e+00, %1752 ]
  %1810 = phi float [ %1795, %1779 ], [ 0.000000e+00, %1752 ]
  %1811 = phi float [ %1796, %1779 ], [ 0.000000e+00, %1752 ]
  %1812 = phi float [ %1803, %1779 ], [ 0.000000e+00, %1752 ]
  %1813 = phi float [ %1807, %1779 ], [ 0.000000e+00, %1752 ]
  %1814 = call float @dx.op.dot3.f32(i32 55, float %1809, float %1810, float %1811, float %181, float %182, float %183)  ; Dot3(ax,ay,az,bx,by,bz)
  %1815 = fmul fast float %1814, %1814
  %1816 = fmul fast float %1815, 0x3FEE471020000000
  %1817 = fadd fast float %1816, 0xBFD42F6020000000
  %1818 = fmul fast float %1774, 0x3FD20DD760000000
  %1819 = fmul fast float %1817, %1813
  %1820 = fmul fast float %1812, 0x3FDF454380000000
  %1821 = fmul fast float %1820, %1814
  %1822 = fadd fast float %1821, %1818
  %1823 = fadd fast float %1822, %1819
  %1824 = call float @dx.op.dot3.f32(i32 55, float %1809, float %1810, float %1811, float %327, float %328, float %329)  ; Dot3(ax,ay,az,bx,by,bz)
  %1825 = fmul fast float %1824, 0x3FDF454380000000
  %1826 = fmul fast float %1824, %1824
  %1827 = fmul fast float %1826, 0x3FEE471020000000
  %1828 = fadd fast float %1827, 0xBFD42F6020000000
  %1829 = call float @dx.op.dot3.f32(i32 55, float %1774, float %1812, float %1813, float 0x3FD20DD760000000, float %1825, float %1828)  ; Dot3(ax,ay,az,bx,by,bz)
  %1830 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1688)  ; FMax(a,b)
  %1831 = call float @dx.op.dot3.f32(i32 55, float %1711, float %1714, float %1717, float %1711, float %1714, float %1717)  ; Dot3(ax,ay,az,bx,by,bz)
  %1832 = fcmp fast oeq float %1831, 0.000000e+00
  %1833 = fcmp fast oeq float %1830, 0.000000e+00
  %1834 = or i1 %1833, %1832
  br i1 %1834, label %1864, label %1835

; <label>:1835                                    ; preds = %1808
  %1836 = fsub fast float -0.000000e+00, %1717
  %1837 = fsub fast float -0.000000e+00, %1711
  %1838 = call float @dx.op.unary.f32(i32 24, float %1831)  ; Sqrt(value)
  %1839 = fdiv fast float %1838, %1830
  %1840 = fcmp fast ogt float %1839, 0x3FFB6F8900000000
  %1841 = select i1 %1840, float 0x3FFB6F8900000000, float %1839
  %1842 = fmul fast float %1841, 0x3FE8A23460000000
  %1843 = call float @dx.op.unary.f32(i32 7, float %1842)  ; Saturate(value)
  %1844 = call float @dx.op.binary.f32(i32 35, float %1841, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %1845 = fmul fast float %1843, %1830
  %1846 = fmul fast float %1844, 0x3FF279A740000000
  %1847 = fadd fast float %1846, -1.000000e+00
  %1848 = call float @dx.op.dot3.f32(i32 55, float %1836, float %1837, float %1714, float %1836, float %1837, float %1714)  ; Dot3(ax,ay,az,bx,by,bz)
  %1849 = call float @dx.op.unary.f32(i32 25, float %1848)  ; Rsqrt(value)
  %1850 = fmul fast float %1849, %1836
  %1851 = fmul fast float %1849, %1837
  %1852 = fmul fast float %1849, %1714
  %1853 = fmul fast float %1847, %1847
  %1854 = fsub fast float 1.000000e+00, %1853
  %1855 = fmul fast float %1844, 0x40005F8BE0000000
  %1856 = fsub fast float 0x400C5BF8A0000000, %1855
  %1857 = fdiv fast float %1845, %1856
  %1858 = fmul fast float %1857, 0x3FEE31C3C0000000
  %1859 = fmul fast float %1858, %1854
  %1860 = fmul fast float %1844, 0x3FDACB7480000000
  %1861 = fadd fast float %1860, 0xBFD7347680000000
  %1862 = fmul fast float %1861, %1857
  %1863 = fmul fast float %1862, %1854
  br label %1864

; <label>:1864                                    ; preds = %1835, %1808
  %1865 = phi float [ %1850, %1835 ], [ 0.000000e+00, %1808 ]
  %1866 = phi float [ %1851, %1835 ], [ 0.000000e+00, %1808 ]
  %1867 = phi float [ %1852, %1835 ], [ 0.000000e+00, %1808 ]
  %1868 = phi float [ %1859, %1835 ], [ 0.000000e+00, %1808 ]
  %1869 = phi float [ %1863, %1835 ], [ 0.000000e+00, %1808 ]
  %1870 = call float @dx.op.dot3.f32(i32 55, float %1865, float %1866, float %1867, float %181, float %182, float %183)  ; Dot3(ax,ay,az,bx,by,bz)
  %1871 = fmul fast float %1870, %1870
  %1872 = fmul fast float %1871, 0x3FEE471020000000
  %1873 = fadd fast float %1872, 0xBFD42F6020000000
  %1874 = fmul fast float %1830, 0x3FD20DD760000000
  %1875 = fmul fast float %1873, %1869
  %1876 = fmul fast float %1868, 0x3FDF454380000000
  %1877 = fmul fast float %1876, %1870
  %1878 = fadd fast float %1877, %1874
  %1879 = fadd fast float %1878, %1875
  %1880 = call float @dx.op.dot3.f32(i32 55, float %1865, float %1866, float %1867, float %327, float %328, float %329)  ; Dot3(ax,ay,az,bx,by,bz)
  %1881 = fmul fast float %1880, 0x3FDF454380000000
  %1882 = fmul fast float %1880, %1880
  %1883 = fmul fast float %1882, 0x3FEE471020000000
  %1884 = fadd fast float %1883, 0xBFD42F6020000000
  %1885 = call float @dx.op.dot3.f32(i32 55, float %1830, float %1868, float %1869, float 0x3FD20DD760000000, float %1881, float %1884)  ; Dot3(ax,ay,az,bx,by,bz)
  %1886 = call float @dx.op.binary.f32(i32 35, float %1767, float 0.000000e+00)  ; FMax(a,b)
  %1887 = call float @dx.op.binary.f32(i32 35, float %1823, float 0.000000e+00)  ; FMax(a,b)
  %1888 = call float @dx.op.binary.f32(i32 35, float %1879, float 0.000000e+00)  ; FMax(a,b)
  %1889 = call float @dx.op.binary.f32(i32 35, float %1773, float 0.000000e+00)  ; FMax(a,b)
  %1890 = call float @dx.op.binary.f32(i32 35, float %1829, float 0.000000e+00)  ; FMax(a,b)
  %1891 = call float @dx.op.binary.f32(i32 35, float %1885, float 0.000000e+00)  ; FMax(a,b)
  %1892 = fsub fast float %1086, %1886
  %1893 = fsub fast float %1087, %1887
  %1894 = fsub fast float %1088, %1888
  %1895 = fmul fast float %1892, %381
  %1896 = fmul fast float %1893, %381
  %1897 = fmul fast float %1894, %381
  %1898 = fadd fast float %1895, %1886
  %1899 = fadd fast float %1896, %1887
  %1900 = fadd fast float %1897, %1888
  %1901 = fsub fast float %1083, %1889
  %1902 = fsub fast float %1084, %1890
  %1903 = fsub fast float %1085, %1891
  %1904 = fmul fast float %1901, %381
  %1905 = fmul fast float %1902, %381
  %1906 = fmul fast float %1903, %381
  %1907 = fadd fast float %1904, %1889
  %1908 = fadd fast float %1905, %1890
  %1909 = fadd fast float %1906, %1891
  %1910 = fsub fast float %873, %1690
  %1911 = fmul fast float %1910, %381
  %1912 = fadd fast float %1911, %1690
  br label %1913

; <label>:1913                                    ; preds = %1864, %1082
  %1914 = phi float [ %1907, %1864 ], [ %1083, %1082 ]
  %1915 = phi float [ %1908, %1864 ], [ %1084, %1082 ]
  %1916 = phi float [ %1909, %1864 ], [ %1085, %1082 ]
  %1917 = phi float [ %1898, %1864 ], [ %1086, %1082 ]
  %1918 = phi float [ %1899, %1864 ], [ %1087, %1082 ]
  %1919 = phi float [ %1900, %1864 ], [ %1088, %1082 ]
  %1920 = phi float [ %1912, %1864 ], [ %873, %1082 ]
  %1921 = fmul fast float %1917, 0x3FEE623840000000
  %1922 = fmul fast float %1918, 0x3FEE623840000000
  %1923 = fmul fast float %1919, 0x3FEE623840000000
  %1924 = fmul fast float %1914, 0x3FEE623840000000
  %1925 = fmul fast float %1915, 0x3FEE623840000000
  %1926 = fmul fast float %1916, 0x3FEE623840000000
  %1927 = call float @dx.op.dot3.f32(i32 55, float %1921, float %1922, float %1923, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1928 = select i1 %110, float 0.000000e+00, float %1921
  %1929 = select i1 %110, float %1927, float %1922
  %1930 = select i1 %110, float 0.000000e+00, float %1923
  %1931 = call float @dx.op.dot3.f32(i32 55, float %1924, float %1925, float %1926, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1932 = select i1 %110, float 0.000000e+00, float %1924
  %1933 = select i1 %110, float %1931, float %1925
  %1934 = select i1 %110, float 0.000000e+00, float %1926
  %1935 = fmul fast float %321, 9.843750e-01
  %1936 = fmul fast float %193, 9.843750e-01
  %1937 = fadd fast float %1935, 7.812500e-03
  %1938 = fadd fast float %1936, 7.812500e-03
  %1939 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %44, float %1937, float %1938, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1940 = extractvalue %dx.types.ResRet.f32 %1939, 2
  %1941 = extractvalue %dx.types.ResRet.f32 %1939, 3
  %1942 = fmul fast float %1940, %301
  %1943 = fmul fast float %1940, %302
  %1944 = fmul fast float %1940, %319
  %1945 = fadd fast float %1942, %1941
  %1946 = fadd fast float %1943, %1941
  %1947 = fadd fast float %1944, %1941
  %1948 = call float @dx.op.binary.f32(i32 35, float %1946, float %1947)  ; FMax(a,b)
  %1949 = call float @dx.op.binary.f32(i32 35, float %1945, float %1948)  ; FMax(a,b)
  %1950 = fsub fast float 1.000000e+00, %1949
  %1951 = fmul fast float %1949, %193
  %1952 = fadd fast float %1951, %193
  %1953 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 252)  ; CBufferLoadLegacy(handle,regIndex)
  %1954 = extractvalue %dx.types.CBufRet.f32 %1953, 2
  %1955 = extractvalue %dx.types.CBufRet.f32 %1953, 3
  %1956 = fmul fast float %1952, %1954
  %1957 = fadd fast float %1956, %1955
  %1958 = call float @dx.op.unary.f32(i32 7, float %1957)  ; Saturate(value)
  %1959 = fsub fast float 1.000000e+00, %336
  %1960 = fadd fast float %1959, %1958
  %1961 = call float @dx.op.unary.f32(i32 7, float %1960)  ; Saturate(value)
  %1962 = fcmp fast olt float %1961, 1.000000e+00
  br i1 %1962, label %1963, label %2438

; <label>:1963                                    ; preds = %1913
  %1964 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %1965 = extractvalue %dx.types.CBufRet.f32 %1964, 2
  %1966 = extractvalue %dx.types.CBufRet.f32 %1964, 3
  %1967 = fmul fast float %1965, %73
  %1968 = fmul fast float %1966, %74
  %1969 = fptoui float %1967 to i32
  %1970 = fptoui float %1968 to i32
  %1971 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %1972 = extractvalue %dx.types.CBufRet.f32 %1971, 0
  %1973 = extractvalue %dx.types.CBufRet.f32 %1971, 2
  %1974 = extractvalue %dx.types.CBufRet.f32 %1971, 3
  %1975 = fadd fast float %216, -4.000000e+00
  %1976 = call float @dx.op.binary.f32(i32 35, float %1975, float 0.000000e+00)  ; FMax(a,b)
  %1977 = fadd fast float %1976, %1972
  %1978 = fmul fast float %1977, %1973
  %1979 = call float @dx.op.unary.f32(i32 23, float %1978)  ; Log(value)
  %1980 = fmul fast float %1979, %1974
  %1981 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %1982 = extractvalue %dx.types.CBufRet.f32 %1981, 2
  %1983 = fmul fast float %1980, %1982
  %1984 = call float @dx.op.unary.f32(i32 7, float %1983)  ; Saturate(value)
  %1985 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %1986 = extractvalue %dx.types.CBufRet.i32 %1985, 1
  %1987 = add i32 %1986, -1
  %1988 = uitofp i32 %1986 to float
  %1989 = fmul fast float %1988, %1984
  %1990 = fptoui float %1989 to i32
  %1991 = call i32 @dx.op.binary.i32(i32 40, i32 %1990, i32 %1987)  ; UMin(a,b)
  %1992 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %1993 = extractvalue %dx.types.CBufRet.i32 %1992, 2
  %1994 = extractvalue %dx.types.CBufRet.i32 %1992, 3
  %1995 = call i32 @dx.op.tertiary.i32(i32 49, i32 %1970, i32 %1993, i32 %1969)  ; UMad(a,b,c)
  %1996 = call i32 @dx.op.tertiary.i32(i32 49, i32 %1991, i32 %1994, i32 %1995)  ; UMad(a,b,c)
  %1997 = call float @dx.op.binary.f32(i32 35, float %216, float 0.000000e+00)  ; FMax(a,b)
  %1998 = fptoui float %1997 to i32
  %1999 = lshr i32 %1998, 5
  %2000 = call i32 @dx.op.binary.i32(i32 40, i32 %1999, i32 8191)  ; UMin(a,b)
  %2001 = call float @dx.op.unary.f32(i32 7, float %310)  ; Saturate(value)
  %2002 = fcmp fast ogt float %2001, 0.000000e+00
  %2003 = fcmp fast ogt float %329, 0.000000e+00
  %2004 = and i1 %2003, %2002
  br i1 %2004, label %2005, label %2034

; <label>:2005                                    ; preds = %1963
  %2006 = call float @dx.op.dot3.f32(i32 55, float %327, float %328, float %329, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %2007 = call float @dx.op.binary.f32(i32 35, float %2006, float -1.000000e+00)  ; FMax(a,b)
  %2008 = call float @dx.op.binary.f32(i32 36, float %2007, float 1.000000e+00)  ; FMin(a,b)
  %2009 = fmul fast float %2008, %2008
  %2010 = fsub fast float 1.000000e+00, %2009
  %2011 = fmul fast float %2010, 0x3FFC6E2300000000
  %2012 = fsub fast float 1.000000e+00, %2011
  %2013 = fcmp fast ogt float %2012, 0.000000e+00
  %2014 = call float @dx.op.unary.f32(i32 24, float %2012)  ; Sqrt(value)
  %2015 = fsub fast float 1.000000e+00, %2014
  %2016 = call float @dx.op.unary.f32(i32 23, float %2015)  ; Log(value)
  %2017 = fmul fast float %2016, 5.000000e+00
  %2018 = call float @dx.op.unary.f32(i32 21, float %2017)  ; Exp(value)
  %2019 = fmul fast float %2018, 0x3FEF591A60000000
  %2020 = fadd fast float %2019, 0x3F94DCB540000000
  %2021 = select i1 %2013, float %2020, float 1.000000e+00
  %2022 = fcmp fast oge float %2021, 1.000000e+00
  %2023 = fmul fast float %2006, 2.000000e+00
  %2024 = fadd fast float %2023, %329
  %2025 = select i1 %2022, float %2024, float %329
  %2026 = fsub fast float %2025, %329
  %2027 = fmul fast float %2026, %2001
  %2028 = fadd fast float %2027, %329
  %2029 = call float @dx.op.dot3.f32(i32 55, float %327, float %328, float %2028, float %327, float %328, float %2028)  ; Dot3(ax,ay,az,bx,by,bz)
  %2030 = call float @dx.op.unary.f32(i32 25, float %2029)  ; Rsqrt(value)
  %2031 = fmul fast float %2030, %327
  %2032 = fmul fast float %2030, %328
  %2033 = fmul fast float %2028, %2030
  br label %2034

; <label>:2034                                    ; preds = %2005, %1963
  %2035 = phi float [ %2031, %2005 ], [ %327, %1963 ]
  %2036 = phi float [ %2032, %2005 ], [ %328, %1963 ]
  %2037 = phi float [ %2033, %2005 ], [ %329, %1963 ]
  %2038 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %2039 = extractvalue %dx.types.CBufRet.i32 %2038, 2
  %2040 = add nsw i32 %2039, -1
  %2041 = call i32 @dx.op.binary.i32(i32 37, i32 %2040, i32 0)  ; IMax(a,b)
  %2042 = shl i32 %2000, 2
  %2043 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %2042, i32 undef)  ; BufferLoad(srv,index,wot)
  %2044 = extractvalue %dx.types.ResRet.i32 %2043, 0
  %2045 = lshr i32 %2044, 16
  %2046 = and i32 %2044, 65535
  %2047 = lshr i32 %2044, 21
  %2048 = lshr i32 %2046, 5
  %2049 = call i32 @dx.op.binary.i32(i32 40, i32 %2048, i32 %2041)  ; UMin(a,b)
  %2050 = icmp ugt i32 %2047, %2049
  br i1 %2050, label %2414, label %2051

; <label>:2051                                    ; preds = %2034
  br label %2052

; <label>:2052                                    ; preds = %2406, %2051
  %2053 = phi float [ %2407, %2406 ], [ 0.000000e+00, %2051 ]
  %2054 = phi float [ %2408, %2406 ], [ 0.000000e+00, %2051 ]
  %2055 = phi float [ %2409, %2406 ], [ 0.000000e+00, %2051 ]
  %2056 = phi float [ %2410, %2406 ], [ 1.000000e+00, %2051 ]
  %2057 = phi i32 [ %2411, %2406 ], [ %2047, %2051 ]
  %2058 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %2059 = extractvalue %dx.types.CBufRet.i32 %2058, 2
  %2060 = call i32 @dx.op.tertiary.i32(i32 49, i32 %1996, i32 %2059, i32 %2057)  ; UMad(a,b,c)
  %2061 = shl i32 %2060, 2
  %2062 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2061, i32 undef)  ; BufferLoad(srv,index,wot)
  %2063 = extractvalue %dx.types.ResRet.i32 %2062, 0
  %2064 = shl i32 %2057, 5
  %2065 = sub nsw i32 %2045, %2064
  %2066 = call i32 @dx.op.binary.i32(i32 37, i32 %2065, i32 0)  ; IMax(a,b)
  %2067 = call i32 @dx.op.binary.i32(i32 38, i32 %2066, i32 31)  ; IMin(a,b)
  %2068 = sub nsw i32 1, %2045
  %2069 = add nsw i32 %2068, %2046
  %2070 = call i32 @dx.op.binary.i32(i32 37, i32 %2069, i32 0)  ; IMax(a,b)
  %2071 = call i32 @dx.op.binary.i32(i32 38, i32 %2070, i32 32)  ; IMin(a,b)
  %2072 = and i32 %2071, 31
  %2073 = shl i32 -1, %2072
  %2074 = xor i32 %2073, -1
  %2075 = and i32 %2067, 31
  %2076 = shl i32 %2074, %2075
  %2077 = icmp eq i32 %2071, 32
  %2078 = select i1 %2077, i32 -1, i32 %2076
  %2079 = and i32 %2078, %2063
  %2080 = icmp eq i32 %2079, 0
  br i1 %2080, label %2406, label %2081

; <label>:2081                                    ; preds = %2052
  br label %2082

; <label>:2082                                    ; preds = %2189, %2081
  %2083 = phi float [ %2190, %2189 ], [ %2053, %2081 ]
  %2084 = phi float [ %2191, %2189 ], [ %2054, %2081 ]
  %2085 = phi float [ %2192, %2189 ], [ %2055, %2081 ]
  %2086 = phi float [ %2193, %2189 ], [ %2056, %2081 ]
  %2087 = phi i32 [ %2092, %2189 ], [ %2079, %2081 ]
  %2088 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %2087)  ; FirstbitLo(value)
  %2089 = add i32 %2088, %2064
  %2090 = and i32 %2088, 31
  %2091 = shl i32 1, %2090
  %2092 = xor i32 %2091, %2087
  %2093 = mul i32 %2089, 72
  %2094 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %2093, i32 undef)  ; BufferLoad(srv,index,wot)
  %2095 = extractvalue %dx.types.ResRet.f32 %2094, 0
  %2096 = extractvalue %dx.types.ResRet.f32 %2094, 1
  %2097 = extractvalue %dx.types.ResRet.f32 %2094, 2
  %2098 = add i32 %2093, 12
  %2099 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %2098, i32 undef)  ; BufferLoad(srv,index,wot)
  %2100 = extractvalue %dx.types.ResRet.i32 %2099, 0
  %2101 = add i32 %2093, 16
  %2102 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %2101, i32 undef)  ; BufferLoad(srv,index,wot)
  %2103 = extractvalue %dx.types.ResRet.f32 %2102, 0
  %2104 = extractvalue %dx.types.ResRet.f32 %2102, 1
  %2105 = extractvalue %dx.types.ResRet.f32 %2102, 2
  %2106 = add i32 %2093, 28
  %2107 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %2106, i32 undef)  ; BufferLoad(srv,index,wot)
  %2108 = extractvalue %dx.types.ResRet.f32 %2107, 0
  %2109 = add i32 %2093, 32
  %2110 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %2109, i32 undef)  ; BufferLoad(srv,index,wot)
  %2111 = extractvalue %dx.types.ResRet.f32 %2110, 0
  %2112 = extractvalue %dx.types.ResRet.f32 %2110, 1
  %2113 = extractvalue %dx.types.ResRet.f32 %2110, 2
  %2114 = extractvalue %dx.types.ResRet.f32 %2110, 3
  %2115 = add i32 %2093, 48
  %2116 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %2115, i32 undef)  ; BufferLoad(srv,index,wot)
  %2117 = extractvalue %dx.types.ResRet.f32 %2116, 0
  %2118 = extractvalue %dx.types.ResRet.f32 %2116, 1
  %2119 = add i32 %2093, 56
  %2120 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %2119, i32 undef)  ; BufferLoad(srv,index,wot)
  %2121 = extractvalue %dx.types.ResRet.f32 %2120, 0
  %2122 = extractvalue %dx.types.ResRet.f32 %2120, 1
  %2123 = add i32 %2093, 64
  %2124 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %2123, i32 undef)  ; BufferLoad(srv,index,wot)
  %2125 = extractvalue %dx.types.ResRet.f32 %2124, 0
  %2126 = extractvalue %dx.types.ResRet.f32 %2124, 1
  %2127 = mul i32 %2089, 60
  %2128 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %2127, i32 undef)  ; BufferLoad(srv,index,wot)
  %2129 = extractvalue %dx.types.ResRet.f32 %2128, 0
  %2130 = extractvalue %dx.types.ResRet.f32 %2128, 1
  %2131 = extractvalue %dx.types.ResRet.f32 %2128, 2
  %2132 = add i32 %2127, 12
  %2133 = add i32 %2127, 48
  %2134 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %2133, i32 undef)  ; BufferLoad(srv,index,wot)
  %2135 = extractvalue %dx.types.ResRet.f32 %2134, 0
  %2136 = extractvalue %dx.types.ResRet.f32 %2134, 1
  %2137 = extractvalue %dx.types.ResRet.f32 %2134, 2
  %2138 = and i32 %2100, 32767
  %2139 = bitcast float %2095 to i32
  %2140 = icmp eq i32 %2139, -1
  %2141 = bitcast float %2096 to i32
  %2142 = and i32 %2100, 32768
  %2143 = icmp ne i32 %2142, 0
  %2144 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %2145 = extractvalue %dx.types.CBufRet.f32 %2144, 0
  %2146 = extractvalue %dx.types.CBufRet.f32 %2144, 1
  %2147 = extractvalue %dx.types.CBufRet.f32 %2144, 2
  %2148 = fsub fast float %2129, %2145
  %2149 = fsub fast float %2130, %2146
  %2150 = fsub fast float %2131, %2147
  %2151 = fsub fast float %250, %2148
  %2152 = fsub fast float %251, %2149
  %2153 = fsub fast float %252, %2150
  %2154 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %2132, i32 undef)  ; BufferLoad(srv,index,wot)
  %2155 = extractvalue %dx.types.ResRet.f32 %2154, 0
  %2156 = extractvalue %dx.types.ResRet.f32 %2154, 1
  %2157 = extractvalue %dx.types.ResRet.f32 %2154, 2
  %2158 = call float @dx.op.dot3.f32(i32 55, float %2151, float %2152, float %2153, float %2155, float %2156, float %2157)  ; Dot3(ax,ay,az,bx,by,bz)
  %2159 = add i32 %2127, 24
  %2160 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %2159, i32 undef)  ; BufferLoad(srv,index,wot)
  %2161 = extractvalue %dx.types.ResRet.f32 %2160, 0
  %2162 = extractvalue %dx.types.ResRet.f32 %2160, 1
  %2163 = extractvalue %dx.types.ResRet.f32 %2160, 2
  %2164 = call float @dx.op.dot3.f32(i32 55, float %2151, float %2152, float %2153, float %2161, float %2162, float %2163)  ; Dot3(ax,ay,az,bx,by,bz)
  %2165 = add i32 %2127, 36
  %2166 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %2165, i32 undef)  ; BufferLoad(srv,index,wot)
  %2167 = extractvalue %dx.types.ResRet.f32 %2166, 0
  %2168 = extractvalue %dx.types.ResRet.f32 %2166, 1
  %2169 = extractvalue %dx.types.ResRet.f32 %2166, 2
  %2170 = call float @dx.op.dot3.f32(i32 55, float %2151, float %2152, float %2153, float %2167, float %2168, float %2169)  ; Dot3(ax,ay,az,bx,by,bz)
  %2171 = call float @dx.op.unary.f32(i32 6, float %2158)  ; FAbs(value)
  %2172 = call float @dx.op.unary.f32(i32 6, float %2164)  ; FAbs(value)
  %2173 = call float @dx.op.unary.f32(i32 6, float %2170)  ; FAbs(value)
  %2174 = fsub fast float %2135, %2171
  %2175 = fsub fast float %2136, %2172
  %2176 = fsub fast float %2137, %2173
  %2177 = fmul fast float %2174, %2103
  %2178 = fmul fast float %2175, %2104
  %2179 = fmul fast float %2176, %2105
  %2180 = call float @dx.op.binary.f32(i32 36, float %2178, float %2179)  ; FMin(a,b)
  %2181 = call float @dx.op.binary.f32(i32 36, float %2177, float %2180)  ; FMin(a,b)
  %2182 = call float @dx.op.unary.f32(i32 7, float %2181)  ; Saturate(value)
  %2183 = call float @dx.op.binary.f32(i32 36, float %2086, float %2182)  ; FMin(a,b)
  %2184 = uitofp i1 %2143 to float
  %2185 = fadd fast float %2001, 1.000000e+00
  %2186 = fsub fast float %2185, %2184
  %2187 = fmul fast float %2183, %2186
  %2188 = fcmp fast ogt float %2187, 0.000000e+00
  br i1 %2188, label %2195, label %2189

; <label>:2189                                    ; preds = %2337, %2082
  %2190 = phi float [ %2401, %2337 ], [ %2083, %2082 ]
  %2191 = phi float [ %2402, %2337 ], [ %2084, %2082 ]
  %2192 = phi float [ %2403, %2337 ], [ %2085, %2082 ]
  %2193 = phi float [ %2404, %2337 ], [ %2086, %2082 ]
  %2194 = icmp eq i32 %2087, %2091
  br i1 %2194, label %2405, label %2082

; <label>:2195                                    ; preds = %2082
  br i1 %2140, label %2253, label %2196

; <label>:2196                                    ; preds = %2195
  %2197 = fsub fast float -0.000000e+00, %2155
  %2198 = fsub fast float -0.000000e+00, %2156
  %2199 = fsub fast float -0.000000e+00, %2157
  %2200 = call float @dx.op.dot3.f32(i32 55, float %2035, float %2036, float %2037, float %2197, float %2198, float %2199)  ; Dot3(ax,ay,az,bx,by,bz)
  %2201 = fsub fast float -0.000000e+00, %2200
  %2202 = call float @dx.op.dot3.f32(i32 55, float %2151, float %2152, float %2153, float %2197, float %2198, float %2199)  ; Dot3(ax,ay,az,bx,by,bz)
  %2203 = fadd fast float %2202, %2118
  %2204 = fadd fast float %2117, %2202
  %2205 = fsub fast float -0.000000e+00, %2204
  %2206 = fcmp ogt float %2200, -0.000000e+00
  %2207 = select i1 %2206, float %2205, float %2203
  %2208 = call float @dx.op.unary.f32(i32 6, float %2201)  ; FAbs(value)
  %2209 = fdiv fast float 1.000000e+00, %2208
  %2210 = fmul fast float %2207, %2209
  %2211 = call float @dx.op.binary.f32(i32 35, float %2210, float 0.000000e+00)  ; FMax(a,b)
  %2212 = fsub fast float -0.000000e+00, %2161
  %2213 = fsub fast float -0.000000e+00, %2162
  %2214 = fsub fast float -0.000000e+00, %2163
  %2215 = call float @dx.op.dot3.f32(i32 55, float %2035, float %2036, float %2037, float %2212, float %2213, float %2214)  ; Dot3(ax,ay,az,bx,by,bz)
  %2216 = fsub fast float -0.000000e+00, %2215
  %2217 = call float @dx.op.dot3.f32(i32 55, float %2151, float %2152, float %2153, float %2212, float %2213, float %2214)  ; Dot3(ax,ay,az,bx,by,bz)
  %2218 = fadd fast float %2217, %2122
  %2219 = fadd fast float %2121, %2217
  %2220 = fsub fast float -0.000000e+00, %2219
  %2221 = fcmp ogt float %2215, -0.000000e+00
  %2222 = select i1 %2221, float %2220, float %2218
  %2223 = call float @dx.op.unary.f32(i32 6, float %2216)  ; FAbs(value)
  %2224 = fdiv fast float 1.000000e+00, %2223
  %2225 = fmul fast float %2222, %2224
  %2226 = call float @dx.op.binary.f32(i32 35, float %2225, float 0.000000e+00)  ; FMax(a,b)
  %2227 = fsub fast float -0.000000e+00, %2167
  %2228 = fsub fast float -0.000000e+00, %2168
  %2229 = fsub fast float -0.000000e+00, %2169
  %2230 = call float @dx.op.dot3.f32(i32 55, float %2035, float %2036, float %2037, float %2227, float %2228, float %2229)  ; Dot3(ax,ay,az,bx,by,bz)
  %2231 = fsub fast float -0.000000e+00, %2230
  %2232 = call float @dx.op.dot3.f32(i32 55, float %2151, float %2152, float %2153, float %2227, float %2228, float %2229)  ; Dot3(ax,ay,az,bx,by,bz)
  %2233 = fadd fast float %2232, %2126
  %2234 = fadd fast float %2125, %2232
  %2235 = fsub fast float -0.000000e+00, %2234
  %2236 = fcmp ogt float %2230, -0.000000e+00
  %2237 = select i1 %2236, float %2235, float %2233
  %2238 = call float @dx.op.unary.f32(i32 6, float %2231)  ; FAbs(value)
  %2239 = fdiv fast float 1.000000e+00, %2238
  %2240 = fmul fast float %2237, %2239
  %2241 = call float @dx.op.binary.f32(i32 35, float %2240, float 0.000000e+00)  ; FMax(a,b)
  %2242 = call float @dx.op.binary.f32(i32 36, float %2226, float %2241)  ; FMin(a,b)
  %2243 = call float @dx.op.binary.f32(i32 36, float %2211, float %2242)  ; FMin(a,b)
  %2244 = fmul fast float %2243, %2035
  %2245 = fmul fast float %2243, %2036
  %2246 = fmul fast float %2243, %2037
  %2247 = fadd fast float %2244, %250
  %2248 = fadd fast float %2245, %251
  %2249 = fadd fast float %2246, %252
  %2250 = fsub fast float %2247, %2095
  %2251 = fsub fast float %2248, %2096
  %2252 = fsub fast float %2249, %2097
  br label %2260

; <label>:2253                                    ; preds = %2195
  %2254 = fmul fast float %2035, 8.096000e+03
  %2255 = fmul fast float %2036, 8.096000e+03
  %2256 = fmul fast float %2037, 8.096000e+03
  %2257 = fadd fast float %2254, %250
  %2258 = fadd fast float %2255, %251
  %2259 = fadd fast float %2256, %252
  br label %2260

; <label>:2260                                    ; preds = %2253, %2196
  %2261 = phi float [ %2035, %2253 ], [ %2250, %2196 ]
  %2262 = phi float [ %2036, %2253 ], [ %2251, %2196 ]
  %2263 = phi float [ %2037, %2253 ], [ %2252, %2196 ]
  %2264 = phi float [ %2257, %2253 ], [ %2247, %2196 ]
  %2265 = phi float [ %2258, %2253 ], [ %2248, %2196 ]
  %2266 = phi float [ %2259, %2253 ], [ %2249, %2196 ]
  %2267 = fcmp fast olt float %2114, 1.000000e+00
  br i1 %2267, label %2268, label %2299, !dx.controlflow.hints !99

; <label>:2268                                    ; preds = %2260
  %2269 = fmul fast float %2263, %2112
  %2270 = fmul fast float %2262, %2113
  %2271 = fsub fast float %2269, %2270
  %2272 = fmul fast float %2261, %2113
  %2273 = fmul fast float %2263, %2111
  %2274 = fsub fast float %2272, %2273
  %2275 = fmul fast float %2262, %2111
  %2276 = fmul fast float %2261, %2112
  %2277 = fsub fast float %2275, %2276
  %2278 = fmul fast float %2271, 2.000000e+00
  %2279 = fmul fast float %2274, 2.000000e+00
  %2280 = fmul fast float %2277, 2.000000e+00
  %2281 = fmul fast float %2278, %2114
  %2282 = fmul fast float %2279, %2114
  %2283 = fmul fast float %2280, %2114
  %2284 = fmul fast float %2280, %2112
  %2285 = fmul fast float %2279, %2113
  %2286 = fmul fast float %2278, %2113
  %2287 = fmul fast float %2280, %2111
  %2288 = fmul fast float %2279, %2111
  %2289 = fmul fast float %2278, %2112
  %2290 = fadd fast float %2284, %2261
  %2291 = fadd fast float %2290, %2281
  %2292 = fsub fast float %2291, %2285
  %2293 = fsub fast float %2262, %2287
  %2294 = fadd fast float %2293, %2282
  %2295 = fadd fast float %2294, %2286
  %2296 = fadd fast float %2283, %2263
  %2297 = fsub fast float %2296, %2289
  %2298 = fadd fast float %2297, %2288
  br label %2299

; <label>:2299                                    ; preds = %2268, %2260
  %2300 = phi float [ %2292, %2268 ], [ %2261, %2260 ]
  %2301 = phi float [ %2295, %2268 ], [ %2262, %2260 ]
  %2302 = phi float [ %2298, %2268 ], [ %2263, %2260 ]
  br i1 %2140, label %2334, label %2303

; <label>:2303                                    ; preds = %2299
  %2304 = fmul fast float %193, 0x400187C840000000
  %2305 = fadd fast float %2304, 0xC00EFC2120000000
  %2306 = fmul fast float %2305, %193
  %2307 = fadd fast float %2306, 0x3FE5D16340000000
  %2308 = fmul fast float %2307, %193
  %2309 = fadd fast float %2308, 1.000000e+00
  %2310 = call float @dx.op.unary.f32(i32 7, float %2309)  ; Saturate(value)
  %2311 = fsub fast float %2264, %250
  %2312 = fsub fast float %2265, %251
  %2313 = fsub fast float %2266, %252
  %2314 = fsub fast float %2264, %2095
  %2315 = fsub fast float %2265, %2096
  %2316 = fsub fast float %2266, %2097
  %2317 = call float @dx.op.dot3.f32(i32 55, float %2311, float %2312, float %2313, float %2311, float %2312, float %2313)  ; Dot3(ax,ay,az,bx,by,bz)
  %2318 = call float @dx.op.dot3.f32(i32 55, float %2314, float %2315, float %2316, float %2314, float %2315, float %2316)  ; Dot3(ax,ay,az,bx,by,bz)
  %2319 = fadd fast float %2318, 0x3EE4F8B580000000
  %2320 = fdiv fast float %2317, %2319
  %2321 = bitcast float %2320 to i32
  %2322 = ashr i32 %2321, 1
  %2323 = add nsw i32 %2322, 532487669
  %2324 = bitcast i32 %2323 to float
  %2325 = fmul fast float %2324, %2310
  %2326 = call float @dx.op.unary.f32(i32 7, float %2325)  ; Saturate(value)
  %2327 = fmul fast float %2326, 0x4009981AE0000000
  %2328 = fsub fast float 0x40111BBD80000000, %2327
  %2329 = fmul fast float %2328, %2326
  %2330 = fadd fast float %2329, 0xC0009F6020000000
  %2331 = fmul fast float %2330, %2326
  %2332 = fadd fast float %2331, 1.000000e+00
  %2333 = call float @dx.op.unary.f32(i32 7, float %2332)  ; Saturate(value)
  br label %2337

; <label>:2334                                    ; preds = %2299
  %2335 = icmp ne i32 %2141, -1
  %2336 = zext i1 %2335 to i32
  br label %2337

; <label>:2337                                    ; preds = %2334, %2303
  %2338 = phi float [ %193, %2334 ], [ %2333, %2303 ]
  %2339 = phi i32 [ %2336, %2334 ], [ 0, %2303 ]
  %2340 = fmul float %2338, 5.000000e+00
  %2341 = fsub float 5.000000e+00, %2340
  %2342 = icmp ne i32 %2339, 0
  %2343 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %2344 = extractvalue %dx.types.CBufRet.f32 %2343, 3
  %2345 = fadd fast float %2344, %2341
  %2346 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2345)  ; FMax(a,b)
  %2347 = call float @dx.op.unary.f32(i32 6, float %2300)  ; FAbs(value)
  %2348 = call float @dx.op.unary.f32(i32 6, float %2301)  ; FAbs(value)
  %2349 = fadd fast float %2348, %2347
  %2350 = call float @dx.op.unary.f32(i32 6, float %2302)  ; FAbs(value)
  %2351 = fadd fast float %2349, %2350
  %2352 = fcmp fast oeq float %2351, 0.000000e+00
  %2353 = fdiv fast float 1.000000e+00, %2351
  %2354 = select i1 %2352, float 1.000000e+00, float %2353
  %2355 = fmul fast float %2354, %2300
  %2356 = fmul fast float %2354, %2301
  %2357 = call float @dx.op.unary.f32(i32 6, float %2356)  ; FAbs(value)
  %2358 = call float @dx.op.unary.f32(i32 6, float %2355)  ; FAbs(value)
  %2359 = fsub fast float 1.000000e+00, %2357
  %2360 = fsub fast float 1.000000e+00, %2358
  %2361 = fcmp fast oge float %2355, 0.000000e+00
  %2362 = fcmp fast oge float %2356, 0.000000e+00
  %2363 = select i1 %2361, float 1.000000e+00, float -1.000000e+00
  %2364 = select i1 %2362, float 1.000000e+00, float -1.000000e+00
  %2365 = fcmp fast ole float %2302, 0.000000e+00
  %2366 = fmul fast float %2363, %2359
  %2367 = fmul fast float %2364, %2360
  %2368 = select i1 %2365, float %2366, float %2355
  %2369 = select i1 %2365, float %2367, float %2356
  %2370 = fmul fast float %2368, 5.000000e-01
  %2371 = fmul fast float %2369, 5.000000e-01
  %2372 = fadd fast float %2370, 5.000000e-01
  %2373 = fadd fast float %2371, 5.000000e-01
  %2374 = uitofp i32 %2138 to float
  %2375 = call float @dx.op.binary.f32(i32 36, float %2346, float 3.000000e+00)  ; FMin(a,b)
  %2376 = fadd fast float %2375, 2.000000e+00
  %2377 = call float @dx.op.unary.f32(i32 21, float %2376)  ; Exp(value)
  %2378 = extractvalue %dx.types.CBufRet.f32 %2343, 1
  %2379 = fmul fast float %2378, %2377
  %2380 = fmul fast float %2379, 2.000000e+00
  %2381 = fsub fast float 1.000000e+00, %2380
  %2382 = fmul fast float %2372, %2381
  %2383 = fmul fast float %2373, %2381
  %2384 = fadd fast float %2382, %2379
  %2385 = fadd fast float %2383, %2379
  %2386 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %42, float %2384, float %2385, float %2374, float undef, i32 0, i32 0, i32 undef, float %2346)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2387 = extractvalue %dx.types.ResRet.f32 %2386, 0
  %2388 = extractvalue %dx.types.ResRet.f32 %2386, 1
  %2389 = extractvalue %dx.types.ResRet.f32 %2386, 2
  %2390 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2391 = extractvalue %dx.types.CBufRet.f32 %2390, 3
  %2392 = fmul fast float %2391, %2108
  %2393 = call float @dx.op.binary.f32(i32 36, float %1920, float %2392)  ; FMin(a,b)
  %2394 = select i1 %2342, float %2393, float %2392
  %2395 = fmul fast float %2387, %2187
  %2396 = fmul fast float %2395, %2394
  %2397 = fmul fast float %2388, %2187
  %2398 = fmul fast float %2397, %2394
  %2399 = fmul fast float %2389, %2187
  %2400 = fmul fast float %2399, %2394
  %2401 = fadd fast float %2396, %2083
  %2402 = fadd fast float %2398, %2084
  %2403 = fadd fast float %2400, %2085
  %2404 = fsub fast float %2086, %2187
  br label %2189

; <label>:2405                                    ; preds = %2189
  br label %2406

; <label>:2406                                    ; preds = %2405, %2052
  %2407 = phi float [ %2053, %2052 ], [ %2190, %2405 ]
  %2408 = phi float [ %2054, %2052 ], [ %2191, %2405 ]
  %2409 = phi float [ %2055, %2052 ], [ %2192, %2405 ]
  %2410 = phi float [ %2056, %2052 ], [ %2193, %2405 ]
  %2411 = add i32 %2057, 1
  %2412 = icmp ugt i32 %2411, %2049
  br i1 %2412, label %2413, label %2052, !llvm.loop !100

; <label>:2413                                    ; preds = %2406
  br label %2414

; <label>:2414                                    ; preds = %2413, %2034
  %2415 = phi float [ 0.000000e+00, %2034 ], [ %2407, %2413 ]
  %2416 = phi float [ 0.000000e+00, %2034 ], [ %2408, %2413 ]
  %2417 = phi float [ 0.000000e+00, %2034 ], [ %2409, %2413 ]
  %2418 = call float @dx.op.dot3.f32(i32 55, float %2415, float %2416, float %2417, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2419 = select i1 %110, float 0.000000e+00, float %2415
  %2420 = select i1 %110, float %2418, float %2416
  %2421 = select i1 %110, float 0.000000e+00, float %2417
  %2422 = fcmp fast olt float %1961, 0.000000e+00
  %2423 = call float @dx.op.unary.f32(i32 6, float %1961)  ; FAbs(value)
  %2424 = fmul fast float %2423, %1932
  %2425 = fmul fast float %2423, %1933
  %2426 = fmul fast float %2423, %1934
  %2427 = select i1 %2422, float %1932, float %2424
  %2428 = select i1 %2422, float %1933, float %2425
  %2429 = select i1 %2422, float %1934, float %2426
  %2430 = fsub fast float 1.000000e+00, %2423
  %2431 = call float @dx.op.unary.f32(i32 7, float %2430)  ; Saturate(value)
  %2432 = fmul fast float %2431, %2419
  %2433 = fmul fast float %2431, %2420
  %2434 = fmul fast float %2431, %2421
  %2435 = fadd fast float %2427, %2432
  %2436 = fadd fast float %2428, %2433
  %2437 = fadd fast float %2429, %2434
  br label %2438

; <label>:2438                                    ; preds = %2414, %1913
  %2439 = phi float [ %1932, %1913 ], [ %2435, %2414 ]
  %2440 = phi float [ %1933, %1913 ], [ %2436, %2414 ]
  %2441 = phi float [ %1934, %1913 ], [ %2437, %2414 ]
  %2442 = fmul fast float %1950, %1928
  %2443 = fmul fast float %1950, %1929
  %2444 = fmul fast float %1950, %1930
  %2445 = fmul fast float %2439, %1945
  %2446 = fmul fast float %2440, %1946
  %2447 = fmul fast float %2441, %1947
  %2448 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %2449 = extractvalue %dx.types.CBufRet.f32 %2448, 3
  %2450 = fcmp fast oeq float %2449, 0.000000e+00
  br i1 %2450, label %4003, label %2451

; <label>:2451                                    ; preds = %2438
  %2452 = extractvalue %dx.types.CBufRet.f32 %2448, 0
  %2453 = extractvalue %dx.types.CBufRet.f32 %2448, 1
  %2454 = extractvalue %dx.types.CBufRet.f32 %2448, 2
  %2455 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %2456 = extractvalue %dx.types.CBufRet.f32 %2455, 0
  %2457 = extractvalue %dx.types.CBufRet.f32 %2455, 1
  %2458 = extractvalue %dx.types.CBufRet.f32 %2455, 2
  %2459 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %2460 = extractvalue %dx.types.CBufRet.f32 %2459, 0
  %2461 = extractvalue %dx.types.CBufRet.f32 %2459, 1
  %2462 = call float @dx.op.dot3.f32(i32 55, float %2456, float %2457, float %2458, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2463 = select i1 %110, float %2460, float %2456
  %2464 = select i1 %110, float %2462, float %2457
  %2465 = select i1 %110, float %2461, float %2458
  %2466 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %2467 = extractvalue %dx.types.CBufRet.f32 %2466, 2
  %2468 = fmul fast float %2467, %181
  %2469 = fmul fast float %2467, %182
  %2470 = fmul fast float %2467, %183
  %2471 = fadd fast float %2468, %250
  %2472 = fadd fast float %2469, %251
  %2473 = fadd fast float %2470, %252
  %2474 = fcmp fast olt float %2449, 0.000000e+00
  br i1 %2474, label %3732, label %2475

; <label>:2475                                    ; preds = %2451
  %2476 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %2477 = extractvalue %dx.types.CBufRet.f32 %2476, 0
  %2478 = extractvalue %dx.types.CBufRet.f32 %2476, 1
  %2479 = extractvalue %dx.types.CBufRet.f32 %2476, 2
  %2480 = extractvalue %dx.types.CBufRet.f32 %2476, 3
  %2481 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %2482 = extractvalue %dx.types.CBufRet.f32 %2481, 0
  %2483 = extractvalue %dx.types.CBufRet.f32 %2481, 1
  %2484 = extractvalue %dx.types.CBufRet.f32 %2481, 2
  %2485 = extractvalue %dx.types.CBufRet.f32 %2481, 3
  %2486 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %2487 = extractvalue %dx.types.CBufRet.f32 %2486, 0
  %2488 = extractvalue %dx.types.CBufRet.f32 %2486, 1
  %2489 = extractvalue %dx.types.CBufRet.f32 %2486, 2
  %2490 = extractvalue %dx.types.CBufRet.f32 %2486, 3
  %2491 = fmul fast float %2477, %2471
  %2492 = call float @dx.op.tertiary.f32(i32 46, float %2472, float %2478, float %2491)  ; FMad(a,b,c)
  %2493 = call float @dx.op.tertiary.f32(i32 46, float %2473, float %2479, float %2492)  ; FMad(a,b,c)
  %2494 = fadd fast float %2493, %2480
  %2495 = fmul fast float %2482, %2471
  %2496 = call float @dx.op.tertiary.f32(i32 46, float %2472, float %2483, float %2495)  ; FMad(a,b,c)
  %2497 = call float @dx.op.tertiary.f32(i32 46, float %2473, float %2484, float %2496)  ; FMad(a,b,c)
  %2498 = fadd fast float %2497, %2485
  %2499 = fmul fast float %2487, %2471
  %2500 = call float @dx.op.tertiary.f32(i32 46, float %2472, float %2488, float %2499)  ; FMad(a,b,c)
  %2501 = call float @dx.op.tertiary.f32(i32 46, float %2473, float %2489, float %2500)  ; FMad(a,b,c)
  %2502 = fadd fast float %2501, %2490
  %2503 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %2504 = extractvalue %dx.types.CBufRet.f32 %2503, 0
  %2505 = fcmp fast une float %2504, 0.000000e+00
  %2506 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %2507 = extractvalue %dx.types.CBufRet.f32 %2506, 0
  %2508 = extractvalue %dx.types.CBufRet.f32 %2506, 1
  %2509 = extractvalue %dx.types.CBufRet.f32 %2506, 3
  %2510 = fmul fast float %2509, %2494
  %2511 = fmul fast float %2509, %2498
  %2512 = fadd fast float %2510, %2507
  %2513 = fadd fast float %2511, %2508
  %2514 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %2515 = extractvalue %dx.types.CBufRet.f32 %2514, 0
  %2516 = extractvalue %dx.types.CBufRet.f32 %2514, 1
  %2517 = extractvalue %dx.types.CBufRet.f32 %2514, 3
  %2518 = fmul fast float %2517, %2494
  %2519 = fmul fast float %2517, %2498
  %2520 = fadd fast float %2518, %2515
  %2521 = fadd fast float %2519, %2516
  %2522 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %2523 = extractvalue %dx.types.CBufRet.f32 %2522, 1
  %2524 = fsub fast float %2523, %2502
  %2525 = extractvalue %dx.types.CBufRet.f32 %2522, 2
  %2526 = fmul fast float %2524, %2525
  %2527 = fsub fast float 1.000000e+00, %2526
  %2528 = call float @dx.op.unary.f32(i32 7, float %2527)  ; Saturate(value)
  br i1 %2505, label %2589, label %2529

; <label>:2529                                    ; preds = %2475
  %2530 = extractvalue %dx.types.CBufRet.f32 %2514, 2
  %2531 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %2532 = extractvalue %dx.types.CBufRet.f32 %2531, 2
  %2533 = fadd fast float %2532, %2530
  %2534 = fcmp fast ogt float %2533, 0.000000e+00
  br i1 %2534, label %2535, label %2559

; <label>:2535                                    ; preds = %2529
  %2536 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %2537 = extractvalue %dx.types.CBufRet.f32 %2536, 0
  %2538 = extractvalue %dx.types.CBufRet.f32 %2536, 1
  %2539 = fsub fast float %2520, %2537
  %2540 = fsub fast float %2521, %2538
  %2541 = fcmp fast olt float %2539, 0.000000e+00
  %2542 = fcmp fast olt float %2540, 0.000000e+00
  %2543 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %2544 = extractvalue %dx.types.CBufRet.f32 %2543, 0
  %2545 = extractvalue %dx.types.CBufRet.f32 %2543, 1
  %2546 = extractvalue %dx.types.CBufRet.f32 %2543, 2
  %2547 = extractvalue %dx.types.CBufRet.f32 %2543, 3
  %2548 = select i1 %2541, float %2544, float %2546
  %2549 = select i1 %2542, float %2545, float %2547
  %2550 = fmul fast float %2548, %2539
  %2551 = fmul fast float %2549, %2540
  %2552 = call float @dx.op.unary.f32(i32 6, float %2550)  ; FAbs(value)
  %2553 = call float @dx.op.unary.f32(i32 6, float %2551)  ; FAbs(value)
  %2554 = extractvalue %dx.types.CBufRet.f32 %2466, 0
  %2555 = call float @dx.op.binary.f32(i32 35, float %2552, float %2553)  ; FMax(a,b)
  %2556 = fsub fast float %2554, %2555
  %2557 = call float @dx.op.unary.f32(i32 7, float %2556)  ; Saturate(value)
  %2558 = fmul fast float %2557, %2528
  br label %2559

; <label>:2559                                    ; preds = %2535, %2529
  %2560 = phi float [ %2558, %2535 ], [ 0.000000e+00, %2529 ]
  %2561 = extractvalue %dx.types.CBufRet.f32 %2506, 2
  %2562 = extractvalue %dx.types.CBufRet.f32 %2531, 1
  %2563 = fadd fast float %2562, %2561
  %2564 = fcmp fast ogt float %2563, 0.000000e+00
  br i1 %2564, label %2565, label %2589

; <label>:2565                                    ; preds = %2559
  %2566 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %2567 = extractvalue %dx.types.CBufRet.f32 %2566, 0
  %2568 = extractvalue %dx.types.CBufRet.f32 %2566, 1
  %2569 = fsub fast float %2512, %2567
  %2570 = fsub fast float %2513, %2568
  %2571 = fcmp fast olt float %2569, 0.000000e+00
  %2572 = fcmp fast olt float %2570, 0.000000e+00
  %2573 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %2574 = extractvalue %dx.types.CBufRet.f32 %2573, 0
  %2575 = extractvalue %dx.types.CBufRet.f32 %2573, 1
  %2576 = extractvalue %dx.types.CBufRet.f32 %2573, 2
  %2577 = extractvalue %dx.types.CBufRet.f32 %2573, 3
  %2578 = select i1 %2571, float %2574, float %2576
  %2579 = select i1 %2572, float %2575, float %2577
  %2580 = fmul fast float %2578, %2569
  %2581 = fmul fast float %2579, %2570
  %2582 = call float @dx.op.unary.f32(i32 6, float %2580)  ; FAbs(value)
  %2583 = call float @dx.op.unary.f32(i32 6, float %2581)  ; FAbs(value)
  %2584 = extractvalue %dx.types.CBufRet.f32 %2466, 0
  %2585 = call float @dx.op.binary.f32(i32 35, float %2582, float %2583)  ; FMax(a,b)
  %2586 = fsub fast float %2584, %2585
  %2587 = call float @dx.op.unary.f32(i32 7, float %2586)  ; Saturate(value)
  %2588 = fmul fast float %2587, %2528
  br label %2589

; <label>:2589                                    ; preds = %2565, %2559, %2475
  %2590 = phi float [ 0.000000e+00, %2475 ], [ %2588, %2565 ], [ 0.000000e+00, %2559 ]
  %2591 = phi float [ 0.000000e+00, %2475 ], [ %2560, %2565 ], [ %2560, %2559 ]
  %2592 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %2593 = extractvalue %dx.types.CBufRet.f32 %2592, 1
  %2594 = call float @dx.op.unary.f32(i32 7, float %2593)  ; Saturate(value)
  %2595 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %2596 = extractvalue %dx.types.CBufRet.f32 %2595, 0
  %2597 = extractvalue %dx.types.CBufRet.f32 %2595, 1
  %2598 = fsub fast float %2494, %2596
  %2599 = fsub fast float %2498, %2597
  %2600 = fcmp fast olt float %2598, 0.000000e+00
  %2601 = fcmp fast olt float %2599, 0.000000e+00
  %2602 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %2603 = extractvalue %dx.types.CBufRet.f32 %2602, 0
  %2604 = extractvalue %dx.types.CBufRet.f32 %2602, 1
  %2605 = extractvalue %dx.types.CBufRet.f32 %2602, 2
  %2606 = extractvalue %dx.types.CBufRet.f32 %2602, 3
  %2607 = select i1 %2600, float %2603, float %2605
  %2608 = select i1 %2601, float %2604, float %2606
  %2609 = fmul fast float %2607, %2598
  %2610 = fmul fast float %2608, %2599
  %2611 = call float @dx.op.unary.f32(i32 6, float %2609)  ; FAbs(value)
  %2612 = call float @dx.op.unary.f32(i32 6, float %2610)  ; FAbs(value)
  %2613 = extractvalue %dx.types.CBufRet.f32 %2466, 0
  %2614 = call float @dx.op.binary.f32(i32 35, float %2611, float %2612)  ; FMax(a,b)
  %2615 = fsub fast float %2613, %2614
  %2616 = call float @dx.op.unary.f32(i32 7, float %2615)  ; Saturate(value)
  %2617 = call float @dx.op.binary.f32(i32 36, float %2616, float %2594)  ; FMin(a,b)
  %2618 = fmul fast float %2617, %2528
  %2619 = fsub fast float %2590, %2618
  %2620 = fsub fast float %2591, %2590
  %2621 = fsub fast float %2620, %2618
  %2622 = call float @dx.op.binary.f32(i32 35, float %2590, float %2591)  ; FMax(a,b)
  %2623 = call float @dx.op.binary.f32(i32 35, float %2618, float %2622)  ; FMax(a,b)
  %2624 = fcmp fast olt float %2623, 1.000000e+00
  br i1 %2624, label %2625, label %3023, !dx.controlflow.hints !102

; <label>:2625                                    ; preds = %2589
  %2626 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %2627 = extractvalue %dx.types.CBufRet.f32 %2626, 0
  %2628 = fcmp fast une float %2627, 0.000000e+00
  br i1 %2628, label %2629, label %3023, !dx.controlflow.hints !103

; <label>:2629                                    ; preds = %2625
  %2630 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %2631 = extractvalue %dx.types.CBufRet.f32 %2630, 0
  %2632 = extractvalue %dx.types.CBufRet.f32 %2630, 1
  %2633 = extractvalue %dx.types.CBufRet.f32 %2630, 2
  %2634 = extractvalue %dx.types.CBufRet.f32 %2630, 3
  %2635 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %2636 = extractvalue %dx.types.CBufRet.f32 %2635, 0
  %2637 = extractvalue %dx.types.CBufRet.f32 %2635, 1
  %2638 = extractvalue %dx.types.CBufRet.f32 %2635, 2
  %2639 = extractvalue %dx.types.CBufRet.f32 %2635, 3
  %2640 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %2641 = extractvalue %dx.types.CBufRet.f32 %2640, 0
  %2642 = extractvalue %dx.types.CBufRet.f32 %2640, 1
  %2643 = extractvalue %dx.types.CBufRet.f32 %2640, 2
  %2644 = extractvalue %dx.types.CBufRet.f32 %2640, 3
  %2645 = fmul fast float %2631, %2471
  %2646 = call float @dx.op.tertiary.f32(i32 46, float %2472, float %2632, float %2645)  ; FMad(a,b,c)
  %2647 = call float @dx.op.tertiary.f32(i32 46, float %2473, float %2633, float %2646)  ; FMad(a,b,c)
  %2648 = fadd fast float %2647, %2634
  %2649 = fmul fast float %2636, %2471
  %2650 = call float @dx.op.tertiary.f32(i32 46, float %2472, float %2637, float %2649)  ; FMad(a,b,c)
  %2651 = call float @dx.op.tertiary.f32(i32 46, float %2473, float %2638, float %2650)  ; FMad(a,b,c)
  %2652 = fadd fast float %2651, %2639
  %2653 = fmul fast float %2641, %2471
  %2654 = call float @dx.op.tertiary.f32(i32 46, float %2472, float %2642, float %2653)  ; FMad(a,b,c)
  %2655 = call float @dx.op.tertiary.f32(i32 46, float %2473, float %2643, float %2654)  ; FMad(a,b,c)
  %2656 = fadd fast float %2655, %2644
  %2657 = fcmp fast oge float %2648, 1.000000e+00
  %2658 = fcmp fast oge float %2652, 1.000000e+00
  %2659 = or i1 %2657, %2658
  %2660 = fcmp fast olt float %2648, 0.000000e+00
  %2661 = fcmp fast olt float %2652, 0.000000e+00
  %2662 = or i1 %2660, %2661
  %2663 = or i1 %2659, %2662
  br i1 %2663, label %3023, label %2664, !dx.controlflow.hints !104

; <label>:2664                                    ; preds = %2629
  %2665 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %2666 = extractvalue %dx.types.CBufRet.f32 %2665, 0
  %2667 = extractvalue %dx.types.CBufRet.f32 %2665, 1
  %2668 = extractvalue %dx.types.CBufRet.f32 %2665, 2
  %2669 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %2670 = extractvalue %dx.types.CBufRet.i32 %2669, 2
  %2671 = uitofp i32 %2670 to float
  %2672 = extractvalue %dx.types.CBufRet.i32 %2669, 3
  %2673 = uitofp i32 %2672 to float
  %2674 = extractvalue %dx.types.CBufRet.f32 %2665, 3
  %2675 = fmul fast float %2674, 2.000000e+00
  %2676 = fsub fast float %2648, %2666
  %2677 = fsub fast float %2652, %2667
  %2678 = fmul fast float %2675, %2676
  %2679 = fmul fast float %2675, %2677
  %2680 = fdiv fast float 1.000000e+00, %2454
  %2681 = fmul fast float %2679, %2680
  %2682 = call float @dx.op.unary.f32(i32 6, float %2681)  ; FAbs(value)
  %2683 = fmul fast float %2668, %2473
  %2684 = fmul fast float %2683, %2675
  %2685 = call float @dx.op.unary.f32(i32 6, float %2684)  ; FAbs(value)
  %2686 = call float @dx.op.unary.f32(i32 6, float %2678)  ; FAbs(value)
  %2687 = call float @dx.op.binary.f32(i32 35, float %2685, float %2682)  ; FMax(a,b)
  %2688 = call float @dx.op.binary.f32(i32 35, float %2686, float %2687)  ; FMax(a,b)
  %2689 = fmul fast float %2688, 2.000000e+00
  %2690 = call float @dx.op.unary.f32(i32 23, float %2689)  ; Log(value)
  %2691 = call float @dx.op.binary.f32(i32 35, float %2690, float %2671)  ; FMax(a,b)
  %2692 = call float @dx.op.unary.f32(i32 22, float %2691)  ; Frc(value)
  %2693 = fadd fast float %2692, 0xBFEA666660000000
  %2694 = fmul fast float %2693, 8.000000e+00
  %2695 = call float @dx.op.unary.f32(i32 7, float %2694)  ; Saturate(value)
  %2696 = call float @dx.op.unary.f32(i32 27, float %2691)  ; Round_ni(value)
  %2697 = fadd fast float %2696, %2695
  %2698 = call float @dx.op.binary.f32(i32 36, float %2697, float %2673)  ; FMin(a,b)
  %2699 = call float @dx.op.unary.f32(i32 27, float %2698)  ; Round_ni(value)
  %2700 = fsub fast float -0.000000e+00, %2699
  %2701 = call float @dx.op.unary.f32(i32 21, float %2700)  ; Exp(value)
  %2702 = fmul fast float %2701, %2675
  %2703 = fmul fast float %2702, %2648
  %2704 = fmul fast float %2702, %2652
  %2705 = fmul fast float %2703, 2.500000e-01
  %2706 = fmul fast float %2704, 2.500000e-01
  %2707 = fadd fast float %2705, 5.000000e-01
  %2708 = fadd fast float %2706, 5.000000e-01
  %2709 = fsub fast float %2673, %2671
  %2710 = fptoui float %2709 to i32
  %2711 = add i32 %2710, 320
  %2712 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 %2711)  ; CBufferLoadLegacy(handle,regIndex)
  %2713 = extractvalue %dx.types.CBufRet.f32 %2712, 0
  %2714 = extractvalue %dx.types.CBufRet.f32 %2712, 1
  %2715 = fcmp fast une float %2698, %2673
  %2716 = fsub fast float %2648, %2713
  %2717 = fsub fast float %2652, %2714
  %2718 = call float @dx.op.unary.f32(i32 6, float %2716)  ; FAbs(value)
  %2719 = call float @dx.op.unary.f32(i32 6, float %2717)  ; FAbs(value)
  %2720 = fmul fast float %2718, %2702
  %2721 = fmul fast float %2719, %2702
  %2722 = fcmp fast olt float %2720, 1.000000e+00
  %2723 = fcmp fast olt float %2721, 1.000000e+00
  %2724 = and i1 %2722, %2723
  %2725 = or i1 %2715, %2724
  br i1 %2725, label %2726, label %3023, !dx.controlflow.hints !105

; <label>:2726                                    ; preds = %2664
  %2727 = fmul fast float %2704, 5.000000e-01
  %2728 = fmul fast float %2703, 5.000000e-01
  %2729 = fadd fast float %2727, 5.000000e-01
  %2730 = fadd fast float %2728, 5.000000e-01
  %2731 = sitofp i32 %2670 to float
  %2732 = fsub fast float %2698, %2731
  %2733 = call float @dx.op.unary.f32(i32 27, float %2732)  ; Round_ni(value)
  %2734 = call float @dx.op.unary.f32(i32 22, float %2698)  ; Frc(value)
  %2735 = call float @dx.op.unary.f32(i32 22, float %2730)  ; Frc(value)
  %2736 = call float @dx.op.unary.f32(i32 22, float %2729)  ; Frc(value)
  %2737 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %43, float %2735, float %2736, float %2733, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2738 = extractvalue %dx.types.ResRet.f32 %2737, 0
  %2739 = extractvalue %dx.types.ResRet.f32 %2737, 1
  %2740 = extractvalue %dx.types.ResRet.f32 %2737, 2
  %2741 = extractvalue %dx.types.ResRet.f32 %2737, 3
  %2742 = fcmp fast ogt float %2734, 0.000000e+00
  br i1 %2742, label %2743, label %2764, !dx.controlflow.hints !106

; <label>:2743                                    ; preds = %2726
  %2744 = fadd fast float %2733, 1.000000e+00
  %2745 = call float @dx.op.unary.f32(i32 22, float %2707)  ; Frc(value)
  %2746 = call float @dx.op.unary.f32(i32 22, float %2708)  ; Frc(value)
  %2747 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %43, float %2745, float %2746, float %2744, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2748 = extractvalue %dx.types.ResRet.f32 %2747, 0
  %2749 = extractvalue %dx.types.ResRet.f32 %2747, 1
  %2750 = extractvalue %dx.types.ResRet.f32 %2747, 2
  %2751 = extractvalue %dx.types.ResRet.f32 %2747, 3
  %2752 = fsub fast float %2748, %2738
  %2753 = fsub fast float %2749, %2739
  %2754 = fsub fast float %2750, %2740
  %2755 = fsub fast float %2751, %2741
  %2756 = fmul fast float %2752, %2734
  %2757 = fmul fast float %2753, %2734
  %2758 = fmul fast float %2754, %2734
  %2759 = fmul fast float %2755, %2734
  %2760 = fadd fast float %2756, %2738
  %2761 = fadd fast float %2757, %2739
  %2762 = fadd fast float %2758, %2740
  %2763 = fadd fast float %2759, %2741
  br label %2764

; <label>:2764                                    ; preds = %2743, %2726
  %2765 = phi float [ %2760, %2743 ], [ %2738, %2726 ]
  %2766 = phi float [ %2761, %2743 ], [ %2739, %2726 ]
  %2767 = phi float [ %2762, %2743 ], [ %2740, %2726 ]
  %2768 = phi float [ %2763, %2743 ], [ %2741, %2726 ]
  %2769 = fadd fast float %2765, -5.000000e-01
  %2770 = fadd fast float %2767, -5.000000e-01
  %2771 = fmul fast float %2769, 0xBFD5555560000000
  %2772 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %2770, float %2771)  ; FMad(a,b,c)
  %2773 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %2766, float 0.000000e+00)  ; FMad(a,b,c)
  %2774 = fadd fast float %2773, %2768
  %2775 = fmul fast float %2769, -7.500000e-01
  %2776 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %2770, float %2775)  ; FMad(a,b,c)
  %2777 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %2766, float 0.000000e+00)  ; FMad(a,b,c)
  %2778 = fadd fast float %2777, %2768
  %2779 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %2780 = extractvalue %dx.types.CBufRet.f32 %2779, 0
  %2781 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %2782 = extractvalue %dx.types.CBufRet.f32 %2781, 0
  %2783 = extractvalue %dx.types.CBufRet.f32 %2781, 1
  %2784 = extractvalue %dx.types.CBufRet.f32 %2781, 2
  %2785 = extractvalue %dx.types.CBufRet.f32 %2781, 3
  %2786 = fsub fast float %2782, %2772
  %2787 = fsub fast float %2783, %2774
  %2788 = fsub fast float %2784, %2776
  %2789 = fsub fast float %2785, %2778
  %2790 = fmul fast float %2786, %2780
  %2791 = fmul fast float %2787, %2780
  %2792 = fmul fast float %2788, %2780
  %2793 = fmul fast float %2789, %2780
  %2794 = fadd fast float %2790, %2772
  %2795 = fadd fast float %2791, %2774
  %2796 = fadd fast float %2792, %2776
  %2797 = fadd fast float %2793, %2778
  %2798 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %2799 = extractvalue %dx.types.ResRet.i32 %2798, 0
  %2800 = and i32 %2799, 536870911
  %2801 = uitofp i32 %2800 to float
  %2802 = fmul fast float %2801, %2648
  %2803 = fmul fast float %2801, %2652
  %2804 = fptoui float %2802 to i32
  %2805 = fptoui float %2803 to i32
  %2806 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %2807 = extractvalue %dx.types.ResRet.i32 %2806, 0
  %2808 = and i32 %2807, 31
  %2809 = lshr i32 %2804, %2808
  %2810 = lshr i32 %2805, %2808
  %2811 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %2812 = extractvalue %dx.types.ResRet.i32 %2811, 0
  %2813 = and i32 %2812, 31
  %2814 = shl i32 1, %2813
  %2815 = call i32 @dx.op.binary.i32(i32 40, i32 %2814, i32 4)  ; UMin(a,b)
  %2816 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %2817 = extractvalue %dx.types.ResRet.i32 %2816, 0
  %2818 = extractvalue %dx.types.ResRet.i32 %2816, 1
  %2819 = icmp eq i32 %2815, 0
  br i1 %2819, label %2861, label %2820

; <label>:2820                                    ; preds = %2764
  br label %2821

; <label>:2821                                    ; preds = %2849, %2820
  %2822 = phi i32 [ %2852, %2849 ], [ 0, %2820 ]
  %2823 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %2824 = extractvalue %dx.types.ResRet.i32 %2823, 0
  %2825 = lshr i32 %2824, 16
  %2826 = and i32 %2825, 31
  %2827 = shl i32 %2810, %2826
  %2828 = add i32 %2827, %2809
  %2829 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %2830 = extractvalue %dx.types.ResRet.i32 %2829, 0
  %2831 = and i32 %2830, 31
  %2832 = shl i32 %2828, %2831
  %2833 = add i32 %2832, %2822
  %2834 = shl i32 %2833, 2
  %2835 = add i32 %2834, 32
  %2836 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %2835, i32 undef)  ; BufferLoad(srv,index,wot)
  %2837 = extractvalue %dx.types.ResRet.i32 %2836, 0
  %2838 = icmp slt i32 %2837, 0
  %2839 = getelementptr [12 x float], [12 x float]* %65, i32 0, i32 %2822
  %2840 = getelementptr [12 x float], [12 x float]* %66, i32 0, i32 %2822
  %2841 = bitcast float* %2839 to i32*
  %2842 = bitcast float* %2840 to i32*
  br i1 %2838, label %2843, label %2849

; <label>:2843                                    ; preds = %2821
  %2844 = and i32 %2837, 1073741823
  %2845 = add nuw nsw i32 %2844, 20
  %2846 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %2845, i32 undef)  ; BufferLoad(srv,index,wot)
  %2847 = extractvalue %dx.types.ResRet.i32 %2846, 0
  %2848 = extractvalue %dx.types.ResRet.i32 %2846, 1
  br label %2849

; <label>:2849                                    ; preds = %2843, %2821
  %2850 = phi i32 [ %2847, %2843 ], [ %2817, %2821 ]
  %2851 = phi i32 [ %2848, %2843 ], [ %2818, %2821 ]
  store i32 %2850, i32* %2841, align 4
  store i32 %2851, i32* %2842, align 4
  %2852 = add nuw i32 %2822, 1
  %2853 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %2854 = extractvalue %dx.types.CBufRet.i32 %2853, 2
  %2855 = icmp eq i32 %2854, 0
  %2856 = icmp ugt i32 %2837, -1073741825
  %2857 = and i1 %2856, %2855
  %2858 = icmp ult i32 %2852, %2815
  %2859 = and i1 %2857, %2858
  br i1 %2859, label %2821, label %2860

; <label>:2860                                    ; preds = %2849
  br label %2861

; <label>:2861                                    ; preds = %2860, %2764
  %2862 = phi i32 [ 0, %2764 ], [ %2852, %2860 ]
  %2863 = extractvalue %dx.types.CBufRet.f32 %2626, 2
  %2864 = fptoui float %2863 to i32
  %2865 = icmp eq i32 %2864, 0
  br i1 %2865, label %2917, label %2866

; <label>:2866                                    ; preds = %2861
  br label %2867

; <label>:2867                                    ; preds = %2912, %2866
  %2868 = phi i32 [ %2913, %2912 ], [ %2862, %2866 ]
  %2869 = phi i32 [ %2914, %2912 ], [ 0, %2866 ]
  %2870 = lshr i32 %2869, 2
  %2871 = and i32 %2869, 3
  %2872 = add nuw nsw i32 %2870, 83
  %2873 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 %2872)  ; CBufferLoadLegacy(handle,regIndex)
  %2874 = extractvalue %dx.types.CBufRet.i32 %2873, 0
  %2875 = extractvalue %dx.types.CBufRet.i32 %2873, 1
  %2876 = extractvalue %dx.types.CBufRet.i32 %2873, 2
  %2877 = extractvalue %dx.types.CBufRet.i32 %2873, 3
  %2878 = getelementptr inbounds [4 x i32], [4 x i32]* %49, i32 0, i32 0
  store i32 %2874, i32* %2878, align 4
  %2879 = getelementptr inbounds [4 x i32], [4 x i32]* %49, i32 0, i32 1
  store i32 %2875, i32* %2879, align 4
  %2880 = getelementptr inbounds [4 x i32], [4 x i32]* %49, i32 0, i32 2
  store i32 %2876, i32* %2880, align 4
  %2881 = getelementptr inbounds [4 x i32], [4 x i32]* %49, i32 0, i32 3
  store i32 %2877, i32* %2881, align 4
  %2882 = getelementptr inbounds [4 x i32], [4 x i32]* %49, i32 0, i32 %2871
  %2883 = load i32, i32* %2882, align 4, !tbaa !107, !noalias !111
  %2884 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %2885 = extractvalue %dx.types.ResRet.i32 %2884, 0
  %2886 = lshr i32 %2885, 16
  %2887 = and i32 %2886, 31
  %2888 = shl i32 %2810, %2887
  %2889 = add i32 %2888, %2809
  %2890 = shl i32 %2889, 2
  %2891 = add i32 %2890, %2883
  %2892 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %2891, i32 undef)  ; BufferLoad(srv,index,wot)
  %2893 = extractvalue %dx.types.ResRet.i32 %2892, 0
  %2894 = icmp eq i32 %2893, 0
  br i1 %2894, label %2912, label %2895

; <label>:2895                                    ; preds = %2867
  %2896 = icmp slt i32 %2893, 0
  %2897 = getelementptr [12 x float], [12 x float]* %65, i32 0, i32 %2868
  %2898 = getelementptr [12 x float], [12 x float]* %66, i32 0, i32 %2868
  %2899 = bitcast float* %2897 to i32*
  %2900 = bitcast float* %2898 to i32*
  br i1 %2896, label %2901, label %2908

; <label>:2901                                    ; preds = %2895
  %2902 = and i32 %2893, 1073741823
  %2903 = add i32 %2883, 20
  %2904 = add i32 %2903, %2902
  %2905 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %2904, i32 undef)  ; BufferLoad(srv,index,wot)
  %2906 = extractvalue %dx.types.ResRet.i32 %2905, 0
  %2907 = extractvalue %dx.types.ResRet.i32 %2905, 1
  br label %2908

; <label>:2908                                    ; preds = %2901, %2895
  %2909 = phi i32 [ %2906, %2901 ], [ %2817, %2895 ]
  %2910 = phi i32 [ %2907, %2901 ], [ %2818, %2895 ]
  store i32 %2909, i32* %2899, align 4
  store i32 %2910, i32* %2900, align 4
  %2911 = add i32 %2868, 1
  br label %2912

; <label>:2912                                    ; preds = %2908, %2867
  %2913 = phi i32 [ %2868, %2867 ], [ %2911, %2908 ]
  %2914 = add nuw i32 %2869, 1
  %2915 = icmp eq i32 %2914, %2864
  br i1 %2915, label %2916, label %2867

; <label>:2916                                    ; preds = %2912
  br label %2917

; <label>:2917                                    ; preds = %2916, %2861
  %2918 = phi i32 [ %2862, %2861 ], [ %2913, %2916 ]
  %2919 = icmp eq i32 %2918, 1
  %2920 = getelementptr [12 x float], [12 x float]* %65, i32 0, i32 0
  %2921 = getelementptr [12 x float], [12 x float]* %66, i32 0, i32 0
  br i1 %2919, label %2922, label %2925

; <label>:2922                                    ; preds = %2917
  %2923 = load float, float* %2920, align 4
  %2924 = load float, float* %2921, align 4
  br label %2952

; <label>:2925                                    ; preds = %2917
  %2926 = load float, float* %2920, align 4
  %2927 = load float, float* %2921, align 4
  %2928 = fdiv fast float 1.000000e+00, %2927
  %2929 = fsub fast float %2926, %2928
  %2930 = icmp ugt i32 %2918, 1
  br i1 %2930, label %2931, label %2947

; <label>:2931                                    ; preds = %2925
  br label %2932

; <label>:2932                                    ; preds = %2932, %2931
  %2933 = phi float [ %2942, %2932 ], [ %2929, %2931 ]
  %2934 = phi float [ %2943, %2932 ], [ %2926, %2931 ]
  %2935 = phi i32 [ %2944, %2932 ], [ 1, %2931 ]
  %2936 = getelementptr [12 x float], [12 x float]* %65, i32 0, i32 %2935
  %2937 = load float, float* %2936, align 4
  %2938 = getelementptr [12 x float], [12 x float]* %66, i32 0, i32 %2935
  %2939 = load float, float* %2938, align 4
  %2940 = fdiv fast float 1.000000e+00, %2939
  %2941 = fsub fast float %2937, %2940
  %2942 = call float @dx.op.binary.f32(i32 36, float %2933, float %2941)  ; FMin(a,b)
  %2943 = call float @dx.op.binary.f32(i32 35, float %2934, float %2937)  ; FMax(a,b)
  %2944 = add nuw i32 %2935, 1
  %2945 = icmp eq i32 %2944, %2918
  br i1 %2945, label %2946, label %2932

; <label>:2946                                    ; preds = %2932
  br label %2947

; <label>:2947                                    ; preds = %2946, %2925
  %2948 = phi float [ %2929, %2925 ], [ %2942, %2946 ]
  %2949 = phi float [ %2926, %2925 ], [ %2943, %2946 ]
  %2950 = fsub fast float %2949, %2948
  %2951 = fdiv fast float 1.000000e+00, %2950
  br label %2952

; <label>:2952                                    ; preds = %2947, %2922
  %2953 = phi float [ %2923, %2922 ], [ %2949, %2947 ]
  %2954 = phi float [ %2924, %2922 ], [ %2951, %2947 ]
  %2955 = fadd fast float %2656, %2953
  %2956 = fmul fast float %2955, %2954
  %2957 = call float @dx.op.unary.f32(i32 7, float %2956)  ; Saturate(value)
  %2958 = fmul fast float %2957, 2.000000e+00
  %2959 = fsub fast float 1.000000e+00, %2958
  %2960 = fmul fast float %2794, %2794
  %2961 = fsub fast float %2795, %2960
  %2962 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %2961)  ; FMax(a,b)
  %2963 = fdiv fast float 1.000000e+00, %2962
  %2964 = fmul fast float %2795, %2794
  %2965 = fsub fast float %2796, %2964
  %2966 = fsub fast float %2959, %2794
  %2967 = fmul fast float %2959, %2959
  %2968 = fsub fast float %2967, %2795
  %2969 = fmul fast float %2963, %2965
  %2970 = fmul fast float %2969, %2966
  %2971 = fsub fast float %2968, %2970
  %2972 = fmul fast float %2795, %2795
  %2973 = fsub fast float %2797, %2972
  %2974 = fmul fast float %2965, %2965
  %2975 = fmul fast float %2974, %2963
  %2976 = fsub fast float %2973, %2975
  %2977 = fdiv fast float %2971, %2976
  %2978 = fmul fast float %2977, %2965
  %2979 = fsub fast float %2966, %2978
  %2980 = fmul fast float %2979, %2963
  %2981 = fmul fast float %2980, %2794
  %2982 = fsub fast float 1.000000e+00, %2981
  %2983 = fmul fast float %2977, %2795
  %2984 = fsub fast float %2982, %2983
  %2985 = fmul fast float %2980, %2980
  %2986 = fmul fast float %2977, 4.000000e+00
  %2987 = fmul fast float %2986, %2984
  %2988 = fsub fast float %2985, %2987
  %2989 = call float @dx.op.unary.f32(i32 24, float %2988)  ; Sqrt(value)
  %2990 = fcmp fast oge float %2980, 0.000000e+00
  %2991 = fsub fast float -0.000000e+00, %2989
  %2992 = select i1 %2990, float %2991, float %2989
  %2993 = fsub fast float %2992, %2980
  %2994 = fdiv fast float %2993, %2977
  %2995 = fdiv fast float %2984, %2993
  %2996 = fmul fast float %2994, 5.000000e-01
  %2997 = fmul fast float %2995, 2.000000e+00
  %2998 = select i1 %2990, float %2996, float %2997
  %2999 = select i1 %2990, float %2997, float %2996
  %3000 = call float @dx.op.binary.f32(i32 35, float %2998, float %2999)  ; FMax(a,b)
  %3001 = call float @dx.op.binary.f32(i32 36, float %2998, float %2999)  ; FMin(a,b)
  %3002 = fcmp fast ogt float %2959, %3000
  %3003 = fsub fast float %2959, %3001
  %3004 = fsub fast float %2959, %3000
  %3005 = fsub fast float %3000, %3001
  %3006 = select i1 %3002, float %3004, float %3005
  %3007 = fmul float %3003, %3006
  %3008 = select i1 %3002, float %3001, float %2959
  %3009 = fcmp fast ogt float %2959, %3001
  %3010 = fmul fast float %3008, %3000
  %3011 = fadd fast float %3008, %3000
  %3012 = fmul fast float %3011, %2794
  %3013 = fadd fast float %3010, %2795
  %3014 = fsub fast float %3013, %3012
  %3015 = fdiv fast float %3014, %3007
  %3016 = select i1 %3009, float %3015, float 0.000000e+00
  %3017 = fsub fast float 1.000000e+00, %3016
  %3018 = select i1 %3002, float %3017, float %3016
  %3019 = call float @dx.op.unary.f32(i32 7, float %3018)  ; Saturate(value)
  %3020 = extractvalue %dx.types.CBufRet.f32 %2779, 3
  %3021 = fmul fast float %3020, %3019
  %3022 = fsub fast float 1.000000e+00, %3021
  br label %3023

; <label>:3023                                    ; preds = %2952, %2664, %2629, %2625, %2589
  %3024 = phi float [ 1.000000e+00, %2589 ], [ %3022, %2952 ], [ 1.000000e+00, %2629 ], [ 1.000000e+00, %2664 ], [ 1.000000e+00, %2625 ]
  %3025 = fcmp fast ogt float %2621, 0.000000e+00
  br i1 %3025, label %3026, label %3190, !dx.controlflow.hints !120

; <label>:3026                                    ; preds = %3023
  %3027 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %3028 = extractvalue %dx.types.CBufRet.f32 %3027, 2
  %3029 = fadd fast float %3028, %2502
  %3030 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %3031 = extractvalue %dx.types.CBufRet.f32 %3030, 2
  %3032 = extractvalue %dx.types.CBufRet.f32 %3030, 3
  %3033 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %3034 = extractvalue %dx.types.CBufRet.f32 %3033, 2
  %3035 = call float @dx.op.binary.f32(i32 35, float %3029, float 0.000000e+00)  ; FMax(a,b)
  %3036 = fadd fast float %3035, 0x3F10000000000000
  %3037 = fcmp fast oeq float %3034, 0.000000e+00
  br i1 %3037, label %3038, label %3105

; <label>:3038                                    ; preds = %3026
  %3039 = extractvalue %dx.types.CBufRet.f32 %3030, 1
  %3040 = extractvalue %dx.types.CBufRet.f32 %3030, 0
  %3041 = fmul fast float %3040, %2520
  %3042 = fmul fast float %3039, %2521
  %3043 = fadd fast float %3041, 5.000000e-01
  %3044 = call float @dx.op.unary.f32(i32 27, float %3043)  ; Round_ni(value)
  %3045 = fadd fast float %3042, 5.000000e-01
  %3046 = call float @dx.op.unary.f32(i32 27, float %3045)  ; Round_ni(value)
  %3047 = fsub fast float %3043, %3044
  %3048 = fsub fast float %3045, %3046
  %3049 = fadd fast float %3044, -5.000000e-01
  %3050 = fadd fast float %3046, -5.000000e-01
  %3051 = fmul fast float %3047, 2.000000e+00
  %3052 = fsub fast float 3.000000e+00, %3051
  %3053 = fadd fast float %3051, 1.000000e+00
  %3054 = fsub fast float 2.000000e+00, %3047
  %3055 = bitcast float %3052 to i32
  %3056 = sub nsw i32 2129859010, %3055
  %3057 = bitcast i32 %3056 to float
  %3058 = fmul fast float %3057, %3054
  %3059 = fadd fast float %3058, -1.000000e+00
  %3060 = bitcast float %3053 to i32
  %3061 = sub nsw i32 2129859010, %3060
  %3062 = bitcast i32 %3061 to float
  %3063 = fmul fast float %3062, %3047
  %3064 = fadd fast float %3063, 1.000000e+00
  %3065 = fmul fast float %3048, 2.000000e+00
  %3066 = fsub fast float 3.000000e+00, %3065
  %3067 = fadd fast float %3065, 1.000000e+00
  %3068 = fsub fast float 2.000000e+00, %3048
  %3069 = bitcast float %3066 to i32
  %3070 = sub nsw i32 2129859010, %3069
  %3071 = bitcast i32 %3070 to float
  %3072 = fmul fast float %3071, %3068
  %3073 = fadd fast float %3072, -1.000000e+00
  %3074 = bitcast float %3067 to i32
  %3075 = sub nsw i32 2129859010, %3074
  %3076 = bitcast i32 %3075 to float
  %3077 = fmul fast float %3076, %3048
  %3078 = fadd fast float %3077, 1.000000e+00
  %3079 = fadd fast float %3059, %3049
  %3080 = fmul fast float %3079, %3031
  %3081 = fadd fast float %3073, %3050
  %3082 = fmul fast float %3081, %3032
  %3083 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %9, %dx.types.Handle %46, float %3080, float %3082, float undef, float undef, i32 0, i32 0, i32 undef, float %3036)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3084 = extractvalue %dx.types.ResRet.f32 %3083, 0
  %3085 = fmul fast float %3084, %3052
  %3086 = fadd fast float %3064, %3049
  %3087 = fmul fast float %3086, %3031
  %3088 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %9, %dx.types.Handle %46, float %3087, float %3082, float undef, float undef, i32 0, i32 0, i32 undef, float %3036)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3089 = extractvalue %dx.types.ResRet.f32 %3088, 0
  %3090 = fmul fast float %3089, %3053
  %3091 = fadd fast float %3078, %3050
  %3092 = fmul fast float %3091, %3032
  %3093 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %9, %dx.types.Handle %46, float %3080, float %3092, float undef, float undef, i32 0, i32 0, i32 undef, float %3036)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3094 = extractvalue %dx.types.ResRet.f32 %3093, 0
  %3095 = fmul fast float %3094, %3052
  %3096 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %9, %dx.types.Handle %46, float %3087, float %3092, float undef, float undef, i32 0, i32 0, i32 undef, float %3036)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3097 = extractvalue %dx.types.ResRet.f32 %3096, 0
  %3098 = fmul fast float %3097, %3053
  %3099 = fadd fast float %3098, %3095
  %3100 = fmul fast float %3099, %3067
  %3101 = fadd fast float %3090, %3085
  %3102 = fmul fast float %3101, %3066
  %3103 = fadd fast float %3102, %3100
  %3104 = fmul fast float %3103, 6.250000e-02
  br label %3190

; <label>:3105                                    ; preds = %3026
  %3106 = fmul fast float %121, 0x401921FB60000000
  %3107 = call float @dx.op.unary.f32(i32 13, float %3106)  ; Sin(value)
  %3108 = call float @dx.op.unary.f32(i32 12, float %3106)  ; Cos(value)
  %3109 = fsub fast float -0.000000e+00, %3107
  br label %3110

; <label>:3110                                    ; preds = %3159, %3105
  %3111 = phi float [ 0.000000e+00, %3105 ], [ %3154, %3159 ]
  %3112 = phi float [ 0.000000e+00, %3105 ], [ %3156, %3159 ]
  %3113 = phi i32 [ 0, %3105 ], [ %3160, %3159 ]
  %3114 = mul i32 %3113, 2
  %3115 = add i32 0, %3114
  %3116 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %3115
  %3117 = load float, float* %3116, align 4
  %3118 = mul i32 %3113, 2
  %3119 = add i32 1, %3118
  %3120 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %3119
  %3121 = load float, float* %3120, align 4
  %3122 = fmul fast float %3117, %3108
  %3123 = call float @dx.op.tertiary.f32(i32 46, float %3121, float %3109, float %3122)  ; FMad(a,b,c)
  %3124 = fmul fast float %3117, %3107
  %3125 = call float @dx.op.tertiary.f32(i32 46, float %3121, float %3108, float %3124)  ; FMad(a,b,c)
  %3126 = fmul fast float %3123, %3034
  %3127 = fmul fast float %3125, %3034
  %3128 = fadd fast float %3126, %2520
  %3129 = fadd fast float %3127, %2521
  %3130 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %9, %dx.types.Handle %45, float %3128, float %3129, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %3131 = extractvalue %dx.types.ResRet.f32 %3130, 0
  %3132 = extractvalue %dx.types.ResRet.f32 %3130, 1
  %3133 = extractvalue %dx.types.ResRet.f32 %3130, 2
  %3134 = extractvalue %dx.types.ResRet.f32 %3130, 3
  %3135 = getelementptr inbounds [4 x float], [4 x float]* %70, i32 0, i32 0
  store float %3131, float* %3135, align 4
  %3136 = getelementptr inbounds [4 x float], [4 x float]* %70, i32 0, i32 1
  store float %3132, float* %3136, align 4
  %3137 = getelementptr inbounds [4 x float], [4 x float]* %70, i32 0, i32 2
  store float %3133, float* %3137, align 4
  %3138 = getelementptr inbounds [4 x float], [4 x float]* %70, i32 0, i32 3
  store float %3134, float* %3138, align 4
  %3139 = fsub fast float %3131, %3036
  %3140 = fcmp fast olt float %3139, 0.000000e+00
  %3141 = select i1 %3140, float 0.000000e+00, float 1.000000e+00
  %3142 = fadd fast float %3141, %3111
  %3143 = fmul fast float %3141, %3139
  %3144 = fadd fast float %3143, %3112
  br label %3145

; <label>:3145                                    ; preds = %3145, %3110
  %3146 = phi i32 [ 1, %3110 ], [ %3157, %3145 ]
  %3147 = phi float [ %3144, %3110 ], [ %3156, %3145 ]
  %3148 = phi float [ %3142, %3110 ], [ %3154, %3145 ]
  %3149 = getelementptr [4 x float], [4 x float]* %70, i32 0, i32 %3146
  %3150 = load float, float* %3149, align 4, !tbaa !121, !noalias !111
  %3151 = fsub fast float %3150, %3036
  %3152 = fcmp fast olt float %3151, 0.000000e+00
  %3153 = select i1 %3152, float 0.000000e+00, float 1.000000e+00
  %3154 = fadd fast float %3153, %3148
  %3155 = fmul fast float %3153, %3151
  %3156 = fadd fast float %3155, %3147
  %3157 = add nuw nsw i32 %3146, 1
  %3158 = icmp eq i32 %3157, 4
  br i1 %3158, label %3159, label %3145, !llvm.loop !123

; <label>:3159                                    ; preds = %3145
  %3160 = add nuw nsw i32 %3113, 1
  %3161 = icmp eq i32 %3160, 8
  br i1 %3161, label %3162, label %3110, !llvm.loop !124

; <label>:3162                                    ; preds = %3159
  %3163 = fdiv fast float 1.000000e+00, %3154
  %3164 = fmul fast float %3163, %3156
  %3165 = fdiv fast float 1.000000e+00, %3036
  %3166 = fmul fast float %3164, %3165
  %3167 = call float @dx.op.unary.f32(i32 7, float %3166)  ; Saturate(value)
  %3168 = call float @dx.op.binary.f32(i32 35, float %3167, float 0.000000e+00)  ; FMax(a,b)
  %3169 = fmul fast float %3154, 3.125000e-02
  %3170 = call float @dx.op.unary.f32(i32 7, float %3169)  ; Saturate(value)
  %3171 = fmul fast float %3170, 2.000000e+00
  %3172 = fadd fast float %3171, -1.000000e+00
  %3173 = fcmp fast ogt float %3172, 0.000000e+00
  %3174 = fcmp fast olt float %3172, 0.000000e+00
  %3175 = zext i1 %3173 to i32
  %3176 = zext i1 %3174 to i32
  %3177 = sub nsw i32 %3175, %3176
  %3178 = sitofp i32 %3177 to float
  %3179 = fmul fast float %3178, %3172
  %3180 = fsub fast float 1.000000e+00, %3179
  %3181 = fmul fast float %3180, %3180
  %3182 = fmul fast float %3181, %3180
  %3183 = fsub fast float %3180, %3182
  %3184 = fmul fast float %3183, %3168
  %3185 = fsub fast float 1.000000e+00, %3182
  %3186 = fsub fast float %3185, %3184
  %3187 = fmul fast float %3178, 5.000000e-01
  %3188 = fmul fast float %3187, %3186
  %3189 = fsub fast float 5.000000e-01, %3188
  br label %3190

; <label>:3190                                    ; preds = %3162, %3038, %3023
  %3191 = phi float [ 1.000000e+00, %3023 ], [ %3104, %3038 ], [ %3189, %3162 ]
  %3192 = fcmp fast ogt float %2619, 0.000000e+00
  br i1 %3192, label %3193, label %3357, !dx.controlflow.hints !125

; <label>:3193                                    ; preds = %3190
  %3194 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %3195 = extractvalue %dx.types.CBufRet.f32 %3194, 1
  %3196 = fadd fast float %3195, %2502
  %3197 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %3198 = extractvalue %dx.types.CBufRet.f32 %3197, 2
  %3199 = extractvalue %dx.types.CBufRet.f32 %3197, 3
  %3200 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %3201 = extractvalue %dx.types.CBufRet.f32 %3200, 1
  %3202 = call float @dx.op.binary.f32(i32 35, float %3196, float 0.000000e+00)  ; FMax(a,b)
  %3203 = fadd fast float %3202, 0x3F10000000000000
  %3204 = fcmp fast oeq float %3201, 0.000000e+00
  br i1 %3204, label %3205, label %3272

; <label>:3205                                    ; preds = %3193
  %3206 = extractvalue %dx.types.CBufRet.f32 %3197, 1
  %3207 = extractvalue %dx.types.CBufRet.f32 %3197, 0
  %3208 = fmul fast float %3207, %2512
  %3209 = fmul fast float %3206, %2513
  %3210 = fadd fast float %3208, 5.000000e-01
  %3211 = call float @dx.op.unary.f32(i32 27, float %3210)  ; Round_ni(value)
  %3212 = fadd fast float %3209, 5.000000e-01
  %3213 = call float @dx.op.unary.f32(i32 27, float %3212)  ; Round_ni(value)
  %3214 = fsub fast float %3210, %3211
  %3215 = fsub fast float %3212, %3213
  %3216 = fadd fast float %3211, -5.000000e-01
  %3217 = fadd fast float %3213, -5.000000e-01
  %3218 = fmul fast float %3214, 2.000000e+00
  %3219 = fsub fast float 3.000000e+00, %3218
  %3220 = fadd fast float %3218, 1.000000e+00
  %3221 = fsub fast float 2.000000e+00, %3214
  %3222 = bitcast float %3219 to i32
  %3223 = sub nsw i32 2129859010, %3222
  %3224 = bitcast i32 %3223 to float
  %3225 = fmul fast float %3224, %3221
  %3226 = fadd fast float %3225, -1.000000e+00
  %3227 = bitcast float %3220 to i32
  %3228 = sub nsw i32 2129859010, %3227
  %3229 = bitcast i32 %3228 to float
  %3230 = fmul fast float %3229, %3214
  %3231 = fadd fast float %3230, 1.000000e+00
  %3232 = fmul fast float %3215, 2.000000e+00
  %3233 = fsub fast float 3.000000e+00, %3232
  %3234 = fadd fast float %3232, 1.000000e+00
  %3235 = fsub fast float 2.000000e+00, %3215
  %3236 = bitcast float %3233 to i32
  %3237 = sub nsw i32 2129859010, %3236
  %3238 = bitcast i32 %3237 to float
  %3239 = fmul fast float %3238, %3235
  %3240 = fadd fast float %3239, -1.000000e+00
  %3241 = bitcast float %3234 to i32
  %3242 = sub nsw i32 2129859010, %3241
  %3243 = bitcast i32 %3242 to float
  %3244 = fmul fast float %3243, %3215
  %3245 = fadd fast float %3244, 1.000000e+00
  %3246 = fadd fast float %3226, %3216
  %3247 = fmul fast float %3246, %3198
  %3248 = fadd fast float %3240, %3217
  %3249 = fmul fast float %3248, %3199
  %3250 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %10, %dx.types.Handle %46, float %3247, float %3249, float undef, float undef, i32 0, i32 0, i32 undef, float %3203)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3251 = extractvalue %dx.types.ResRet.f32 %3250, 0
  %3252 = fmul fast float %3251, %3219
  %3253 = fadd fast float %3231, %3216
  %3254 = fmul fast float %3253, %3198
  %3255 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %10, %dx.types.Handle %46, float %3254, float %3249, float undef, float undef, i32 0, i32 0, i32 undef, float %3203)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3256 = extractvalue %dx.types.ResRet.f32 %3255, 0
  %3257 = fmul fast float %3256, %3220
  %3258 = fadd fast float %3245, %3217
  %3259 = fmul fast float %3258, %3199
  %3260 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %10, %dx.types.Handle %46, float %3247, float %3259, float undef, float undef, i32 0, i32 0, i32 undef, float %3203)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3261 = extractvalue %dx.types.ResRet.f32 %3260, 0
  %3262 = fmul fast float %3261, %3219
  %3263 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %10, %dx.types.Handle %46, float %3254, float %3259, float undef, float undef, i32 0, i32 0, i32 undef, float %3203)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3264 = extractvalue %dx.types.ResRet.f32 %3263, 0
  %3265 = fmul fast float %3264, %3220
  %3266 = fadd fast float %3265, %3262
  %3267 = fmul fast float %3266, %3234
  %3268 = fadd fast float %3257, %3252
  %3269 = fmul fast float %3268, %3233
  %3270 = fadd fast float %3269, %3267
  %3271 = fmul fast float %3270, 6.250000e-02
  br label %3357

; <label>:3272                                    ; preds = %3193
  %3273 = fmul fast float %121, 0x401921FB60000000
  %3274 = call float @dx.op.unary.f32(i32 13, float %3273)  ; Sin(value)
  %3275 = call float @dx.op.unary.f32(i32 12, float %3273)  ; Cos(value)
  %3276 = fsub fast float -0.000000e+00, %3274
  br label %3277

; <label>:3277                                    ; preds = %3326, %3272
  %3278 = phi float [ 0.000000e+00, %3272 ], [ %3321, %3326 ]
  %3279 = phi float [ 0.000000e+00, %3272 ], [ %3323, %3326 ]
  %3280 = phi i32 [ 0, %3272 ], [ %3327, %3326 ]
  %3281 = mul i32 %3280, 2
  %3282 = add i32 0, %3281
  %3283 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %3282
  %3284 = load float, float* %3283, align 4
  %3285 = mul i32 %3280, 2
  %3286 = add i32 1, %3285
  %3287 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %3286
  %3288 = load float, float* %3287, align 4
  %3289 = fmul fast float %3284, %3275
  %3290 = call float @dx.op.tertiary.f32(i32 46, float %3288, float %3276, float %3289)  ; FMad(a,b,c)
  %3291 = fmul fast float %3284, %3274
  %3292 = call float @dx.op.tertiary.f32(i32 46, float %3288, float %3275, float %3291)  ; FMad(a,b,c)
  %3293 = fmul fast float %3290, %3201
  %3294 = fmul fast float %3292, %3201
  %3295 = fadd fast float %3293, %2512
  %3296 = fadd fast float %3294, %2513
  %3297 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %10, %dx.types.Handle %45, float %3295, float %3296, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %3298 = extractvalue %dx.types.ResRet.f32 %3297, 0
  %3299 = extractvalue %dx.types.ResRet.f32 %3297, 1
  %3300 = extractvalue %dx.types.ResRet.f32 %3297, 2
  %3301 = extractvalue %dx.types.ResRet.f32 %3297, 3
  %3302 = getelementptr inbounds [4 x float], [4 x float]* %69, i32 0, i32 0
  store float %3298, float* %3302, align 4
  %3303 = getelementptr inbounds [4 x float], [4 x float]* %69, i32 0, i32 1
  store float %3299, float* %3303, align 4
  %3304 = getelementptr inbounds [4 x float], [4 x float]* %69, i32 0, i32 2
  store float %3300, float* %3304, align 4
  %3305 = getelementptr inbounds [4 x float], [4 x float]* %69, i32 0, i32 3
  store float %3301, float* %3305, align 4
  %3306 = fsub fast float %3298, %3203
  %3307 = fcmp fast olt float %3306, 0.000000e+00
  %3308 = select i1 %3307, float 0.000000e+00, float 1.000000e+00
  %3309 = fadd fast float %3308, %3278
  %3310 = fmul fast float %3308, %3306
  %3311 = fadd fast float %3310, %3279
  br label %3312

; <label>:3312                                    ; preds = %3312, %3277
  %3313 = phi i32 [ 1, %3277 ], [ %3324, %3312 ]
  %3314 = phi float [ %3311, %3277 ], [ %3323, %3312 ]
  %3315 = phi float [ %3309, %3277 ], [ %3321, %3312 ]
  %3316 = getelementptr [4 x float], [4 x float]* %69, i32 0, i32 %3313
  %3317 = load float, float* %3316, align 4, !tbaa !121, !noalias !111
  %3318 = fsub fast float %3317, %3203
  %3319 = fcmp fast olt float %3318, 0.000000e+00
  %3320 = select i1 %3319, float 0.000000e+00, float 1.000000e+00
  %3321 = fadd fast float %3320, %3315
  %3322 = fmul fast float %3320, %3318
  %3323 = fadd fast float %3322, %3314
  %3324 = add nuw nsw i32 %3313, 1
  %3325 = icmp eq i32 %3324, 4
  br i1 %3325, label %3326, label %3312, !llvm.loop !123

; <label>:3326                                    ; preds = %3312
  %3327 = add nuw nsw i32 %3280, 1
  %3328 = icmp eq i32 %3327, 8
  br i1 %3328, label %3329, label %3277, !llvm.loop !124

; <label>:3329                                    ; preds = %3326
  %3330 = fdiv fast float 1.000000e+00, %3321
  %3331 = fmul fast float %3330, %3323
  %3332 = fdiv fast float 1.000000e+00, %3203
  %3333 = fmul fast float %3331, %3332
  %3334 = call float @dx.op.unary.f32(i32 7, float %3333)  ; Saturate(value)
  %3335 = call float @dx.op.binary.f32(i32 35, float %3334, float 0.000000e+00)  ; FMax(a,b)
  %3336 = fmul fast float %3321, 3.125000e-02
  %3337 = call float @dx.op.unary.f32(i32 7, float %3336)  ; Saturate(value)
  %3338 = fmul fast float %3337, 2.000000e+00
  %3339 = fadd fast float %3338, -1.000000e+00
  %3340 = fcmp fast ogt float %3339, 0.000000e+00
  %3341 = fcmp fast olt float %3339, 0.000000e+00
  %3342 = zext i1 %3340 to i32
  %3343 = zext i1 %3341 to i32
  %3344 = sub nsw i32 %3342, %3343
  %3345 = sitofp i32 %3344 to float
  %3346 = fmul fast float %3345, %3339
  %3347 = fsub fast float 1.000000e+00, %3346
  %3348 = fmul fast float %3347, %3347
  %3349 = fmul fast float %3348, %3347
  %3350 = fsub fast float %3347, %3349
  %3351 = fmul fast float %3350, %3335
  %3352 = fsub fast float 1.000000e+00, %3349
  %3353 = fsub fast float %3352, %3351
  %3354 = fmul fast float %3345, 5.000000e-01
  %3355 = fmul fast float %3354, %3353
  %3356 = fsub fast float 5.000000e-01, %3355
  br label %3357

; <label>:3357                                    ; preds = %3329, %3205, %3190
  %3358 = phi float [ 1.000000e+00, %3190 ], [ %3271, %3205 ], [ %3356, %3329 ]
  %3359 = fcmp fast ogt float %2618, 0.000000e+00
  br i1 %3359, label %3360, label %3678, !dx.controlflow.hints !126

; <label>:3360                                    ; preds = %3357
  %3361 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %3362 = extractvalue %dx.types.CBufRet.f32 %3361, 0
  %3363 = fadd fast float %3362, %2502
  %3364 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %3365 = extractvalue %dx.types.CBufRet.f32 %3364, 2
  %3366 = extractvalue %dx.types.CBufRet.f32 %3364, 3
  %3367 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %3368 = extractvalue %dx.types.CBufRet.f32 %3367, 0
  %3369 = call float @dx.op.binary.f32(i32 35, float %3363, float 0.000000e+00)  ; FMax(a,b)
  %3370 = fadd fast float %3369, 0x3F10000000000000
  %3371 = fcmp fast oeq float %3368, 0.000000e+00
  br i1 %2505, label %3372, label %3525, !dx.controlflow.hints !127

; <label>:3372                                    ; preds = %3360
  br i1 %3371, label %3373, label %3440

; <label>:3373                                    ; preds = %3372
  %3374 = extractvalue %dx.types.CBufRet.f32 %3364, 1
  %3375 = extractvalue %dx.types.CBufRet.f32 %3364, 0
  %3376 = fmul fast float %3375, %2494
  %3377 = fmul fast float %3374, %2498
  %3378 = fadd fast float %3376, 5.000000e-01
  %3379 = call float @dx.op.unary.f32(i32 27, float %3378)  ; Round_ni(value)
  %3380 = fadd fast float %3377, 5.000000e-01
  %3381 = call float @dx.op.unary.f32(i32 27, float %3380)  ; Round_ni(value)
  %3382 = fsub fast float %3378, %3379
  %3383 = fsub fast float %3380, %3381
  %3384 = fadd fast float %3379, -5.000000e-01
  %3385 = fadd fast float %3381, -5.000000e-01
  %3386 = fmul fast float %3382, 2.000000e+00
  %3387 = fsub fast float 3.000000e+00, %3386
  %3388 = fadd fast float %3386, 1.000000e+00
  %3389 = fsub fast float 2.000000e+00, %3382
  %3390 = bitcast float %3387 to i32
  %3391 = sub nsw i32 2129859010, %3390
  %3392 = bitcast i32 %3391 to float
  %3393 = fmul fast float %3392, %3389
  %3394 = fadd fast float %3393, -1.000000e+00
  %3395 = bitcast float %3388 to i32
  %3396 = sub nsw i32 2129859010, %3395
  %3397 = bitcast i32 %3396 to float
  %3398 = fmul fast float %3397, %3382
  %3399 = fadd fast float %3398, 1.000000e+00
  %3400 = fmul fast float %3383, 2.000000e+00
  %3401 = fsub fast float 3.000000e+00, %3400
  %3402 = fadd fast float %3400, 1.000000e+00
  %3403 = fsub fast float 2.000000e+00, %3383
  %3404 = bitcast float %3401 to i32
  %3405 = sub nsw i32 2129859010, %3404
  %3406 = bitcast i32 %3405 to float
  %3407 = fmul fast float %3406, %3403
  %3408 = fadd fast float %3407, -1.000000e+00
  %3409 = bitcast float %3402 to i32
  %3410 = sub nsw i32 2129859010, %3409
  %3411 = bitcast i32 %3410 to float
  %3412 = fmul fast float %3411, %3383
  %3413 = fadd fast float %3412, 1.000000e+00
  %3414 = fadd fast float %3394, %3384
  %3415 = fmul fast float %3414, %3365
  %3416 = fadd fast float %3408, %3385
  %3417 = fmul fast float %3416, %3366
  %3418 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %12, %dx.types.Handle %46, float %3415, float %3417, float undef, float undef, i32 0, i32 0, i32 undef, float %3370)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3419 = extractvalue %dx.types.ResRet.f32 %3418, 0
  %3420 = fmul fast float %3419, %3387
  %3421 = fadd fast float %3399, %3384
  %3422 = fmul fast float %3421, %3365
  %3423 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %12, %dx.types.Handle %46, float %3422, float %3417, float undef, float undef, i32 0, i32 0, i32 undef, float %3370)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3424 = extractvalue %dx.types.ResRet.f32 %3423, 0
  %3425 = fmul fast float %3424, %3388
  %3426 = fadd fast float %3413, %3385
  %3427 = fmul fast float %3426, %3366
  %3428 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %12, %dx.types.Handle %46, float %3415, float %3427, float undef, float undef, i32 0, i32 0, i32 undef, float %3370)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3429 = extractvalue %dx.types.ResRet.f32 %3428, 0
  %3430 = fmul fast float %3429, %3387
  %3431 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %12, %dx.types.Handle %46, float %3422, float %3427, float undef, float undef, i32 0, i32 0, i32 undef, float %3370)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3432 = extractvalue %dx.types.ResRet.f32 %3431, 0
  %3433 = fmul fast float %3432, %3388
  %3434 = fadd fast float %3433, %3430
  %3435 = fmul fast float %3434, %3402
  %3436 = fadd fast float %3425, %3420
  %3437 = fmul fast float %3436, %3401
  %3438 = fadd fast float %3437, %3435
  %3439 = fmul fast float %3438, 6.250000e-02
  br label %3678

; <label>:3440                                    ; preds = %3372
  %3441 = fmul fast float %121, 0x401921FB60000000
  %3442 = call float @dx.op.unary.f32(i32 13, float %3441)  ; Sin(value)
  %3443 = call float @dx.op.unary.f32(i32 12, float %3441)  ; Cos(value)
  %3444 = fsub fast float -0.000000e+00, %3442
  br label %3445

; <label>:3445                                    ; preds = %3494, %3440
  %3446 = phi float [ 0.000000e+00, %3440 ], [ %3489, %3494 ]
  %3447 = phi float [ 0.000000e+00, %3440 ], [ %3491, %3494 ]
  %3448 = phi i32 [ 0, %3440 ], [ %3495, %3494 ]
  %3449 = mul i32 %3448, 2
  %3450 = add i32 0, %3449
  %3451 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %3450
  %3452 = load float, float* %3451, align 4
  %3453 = mul i32 %3448, 2
  %3454 = add i32 1, %3453
  %3455 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %3454
  %3456 = load float, float* %3455, align 4
  %3457 = fmul fast float %3452, %3443
  %3458 = call float @dx.op.tertiary.f32(i32 46, float %3456, float %3444, float %3457)  ; FMad(a,b,c)
  %3459 = fmul fast float %3452, %3442
  %3460 = call float @dx.op.tertiary.f32(i32 46, float %3456, float %3443, float %3459)  ; FMad(a,b,c)
  %3461 = fmul fast float %3458, %3368
  %3462 = fmul fast float %3460, %3368
  %3463 = fadd fast float %3461, %2494
  %3464 = fadd fast float %3462, %2498
  %3465 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %12, %dx.types.Handle %45, float %3463, float %3464, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %3466 = extractvalue %dx.types.ResRet.f32 %3465, 0
  %3467 = extractvalue %dx.types.ResRet.f32 %3465, 1
  %3468 = extractvalue %dx.types.ResRet.f32 %3465, 2
  %3469 = extractvalue %dx.types.ResRet.f32 %3465, 3
  %3470 = getelementptr inbounds [4 x float], [4 x float]* %68, i32 0, i32 0
  store float %3466, float* %3470, align 4
  %3471 = getelementptr inbounds [4 x float], [4 x float]* %68, i32 0, i32 1
  store float %3467, float* %3471, align 4
  %3472 = getelementptr inbounds [4 x float], [4 x float]* %68, i32 0, i32 2
  store float %3468, float* %3472, align 4
  %3473 = getelementptr inbounds [4 x float], [4 x float]* %68, i32 0, i32 3
  store float %3469, float* %3473, align 4
  %3474 = fsub fast float %3466, %3370
  %3475 = fcmp fast olt float %3474, 0.000000e+00
  %3476 = select i1 %3475, float 0.000000e+00, float 1.000000e+00
  %3477 = fadd fast float %3476, %3446
  %3478 = fmul fast float %3476, %3474
  %3479 = fadd fast float %3478, %3447
  br label %3480

; <label>:3480                                    ; preds = %3480, %3445
  %3481 = phi i32 [ 1, %3445 ], [ %3492, %3480 ]
  %3482 = phi float [ %3479, %3445 ], [ %3491, %3480 ]
  %3483 = phi float [ %3477, %3445 ], [ %3489, %3480 ]
  %3484 = getelementptr [4 x float], [4 x float]* %68, i32 0, i32 %3481
  %3485 = load float, float* %3484, align 4, !tbaa !121, !noalias !111
  %3486 = fsub fast float %3485, %3370
  %3487 = fcmp fast olt float %3486, 0.000000e+00
  %3488 = select i1 %3487, float 0.000000e+00, float 1.000000e+00
  %3489 = fadd fast float %3488, %3483
  %3490 = fmul fast float %3488, %3486
  %3491 = fadd fast float %3490, %3482
  %3492 = add nuw nsw i32 %3481, 1
  %3493 = icmp eq i32 %3492, 4
  br i1 %3493, label %3494, label %3480, !llvm.loop !123

; <label>:3494                                    ; preds = %3480
  %3495 = add nuw nsw i32 %3448, 1
  %3496 = icmp eq i32 %3495, 8
  br i1 %3496, label %3497, label %3445, !llvm.loop !124

; <label>:3497                                    ; preds = %3494
  %3498 = fdiv fast float 1.000000e+00, %3489
  %3499 = fmul fast float %3498, %3491
  %3500 = fdiv fast float 1.000000e+00, %3370
  %3501 = fmul fast float %3499, %3500
  %3502 = call float @dx.op.unary.f32(i32 7, float %3501)  ; Saturate(value)
  %3503 = call float @dx.op.binary.f32(i32 35, float %3502, float 0.000000e+00)  ; FMax(a,b)
  %3504 = fmul fast float %3489, 3.125000e-02
  %3505 = call float @dx.op.unary.f32(i32 7, float %3504)  ; Saturate(value)
  %3506 = fmul fast float %3505, 2.000000e+00
  %3507 = fadd fast float %3506, -1.000000e+00
  %3508 = fcmp fast ogt float %3507, 0.000000e+00
  %3509 = fcmp fast olt float %3507, 0.000000e+00
  %3510 = zext i1 %3508 to i32
  %3511 = zext i1 %3509 to i32
  %3512 = sub nsw i32 %3510, %3511
  %3513 = sitofp i32 %3512 to float
  %3514 = fmul fast float %3513, %3507
  %3515 = fsub fast float 1.000000e+00, %3514
  %3516 = fmul fast float %3515, %3515
  %3517 = fmul fast float %3516, %3515
  %3518 = fsub fast float %3515, %3517
  %3519 = fmul fast float %3518, %3503
  %3520 = fsub fast float 1.000000e+00, %3517
  %3521 = fsub fast float %3520, %3519
  %3522 = fmul fast float %3513, 5.000000e-01
  %3523 = fmul fast float %3522, %3521
  %3524 = fsub fast float 5.000000e-01, %3523
  br label %3678

; <label>:3525                                    ; preds = %3360
  br i1 %3371, label %3526, label %3593

; <label>:3526                                    ; preds = %3525
  %3527 = extractvalue %dx.types.CBufRet.f32 %3364, 1
  %3528 = extractvalue %dx.types.CBufRet.f32 %3364, 0
  %3529 = fmul fast float %3528, %2494
  %3530 = fmul fast float %3527, %2498
  %3531 = fadd fast float %3529, 5.000000e-01
  %3532 = call float @dx.op.unary.f32(i32 27, float %3531)  ; Round_ni(value)
  %3533 = fadd fast float %3530, 5.000000e-01
  %3534 = call float @dx.op.unary.f32(i32 27, float %3533)  ; Round_ni(value)
  %3535 = fsub fast float %3531, %3532
  %3536 = fsub fast float %3533, %3534
  %3537 = fadd fast float %3532, -5.000000e-01
  %3538 = fadd fast float %3534, -5.000000e-01
  %3539 = fmul fast float %3535, 2.000000e+00
  %3540 = fsub fast float 3.000000e+00, %3539
  %3541 = fadd fast float %3539, 1.000000e+00
  %3542 = fsub fast float 2.000000e+00, %3535
  %3543 = bitcast float %3540 to i32
  %3544 = sub nsw i32 2129859010, %3543
  %3545 = bitcast i32 %3544 to float
  %3546 = fmul fast float %3545, %3542
  %3547 = fadd fast float %3546, -1.000000e+00
  %3548 = bitcast float %3541 to i32
  %3549 = sub nsw i32 2129859010, %3548
  %3550 = bitcast i32 %3549 to float
  %3551 = fmul fast float %3550, %3535
  %3552 = fadd fast float %3551, 1.000000e+00
  %3553 = fmul fast float %3536, 2.000000e+00
  %3554 = fsub fast float 3.000000e+00, %3553
  %3555 = fadd fast float %3553, 1.000000e+00
  %3556 = fsub fast float 2.000000e+00, %3536
  %3557 = bitcast float %3554 to i32
  %3558 = sub nsw i32 2129859010, %3557
  %3559 = bitcast i32 %3558 to float
  %3560 = fmul fast float %3559, %3556
  %3561 = fadd fast float %3560, -1.000000e+00
  %3562 = bitcast float %3555 to i32
  %3563 = sub nsw i32 2129859010, %3562
  %3564 = bitcast i32 %3563 to float
  %3565 = fmul fast float %3564, %3536
  %3566 = fadd fast float %3565, 1.000000e+00
  %3567 = fadd fast float %3547, %3537
  %3568 = fmul fast float %3567, %3365
  %3569 = fadd fast float %3561, %3538
  %3570 = fmul fast float %3569, %3366
  %3571 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %11, %dx.types.Handle %46, float %3568, float %3570, float undef, float undef, i32 0, i32 0, i32 undef, float %3370)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3572 = extractvalue %dx.types.ResRet.f32 %3571, 0
  %3573 = fmul fast float %3572, %3540
  %3574 = fadd fast float %3552, %3537
  %3575 = fmul fast float %3574, %3365
  %3576 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %11, %dx.types.Handle %46, float %3575, float %3570, float undef, float undef, i32 0, i32 0, i32 undef, float %3370)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3577 = extractvalue %dx.types.ResRet.f32 %3576, 0
  %3578 = fmul fast float %3577, %3541
  %3579 = fadd fast float %3566, %3538
  %3580 = fmul fast float %3579, %3366
  %3581 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %11, %dx.types.Handle %46, float %3568, float %3580, float undef, float undef, i32 0, i32 0, i32 undef, float %3370)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3582 = extractvalue %dx.types.ResRet.f32 %3581, 0
  %3583 = fmul fast float %3582, %3540
  %3584 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %11, %dx.types.Handle %46, float %3575, float %3580, float undef, float undef, i32 0, i32 0, i32 undef, float %3370)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3585 = extractvalue %dx.types.ResRet.f32 %3584, 0
  %3586 = fmul fast float %3585, %3541
  %3587 = fadd fast float %3586, %3583
  %3588 = fmul fast float %3587, %3555
  %3589 = fadd fast float %3578, %3573
  %3590 = fmul fast float %3589, %3554
  %3591 = fadd fast float %3590, %3588
  %3592 = fmul fast float %3591, 6.250000e-02
  br label %3678

; <label>:3593                                    ; preds = %3525
  %3594 = fmul fast float %121, 0x401921FB60000000
  %3595 = call float @dx.op.unary.f32(i32 13, float %3594)  ; Sin(value)
  %3596 = call float @dx.op.unary.f32(i32 12, float %3594)  ; Cos(value)
  %3597 = fsub fast float -0.000000e+00, %3595
  br label %3598

; <label>:3598                                    ; preds = %3647, %3593
  %3599 = phi float [ 0.000000e+00, %3593 ], [ %3642, %3647 ]
  %3600 = phi float [ 0.000000e+00, %3593 ], [ %3644, %3647 ]
  %3601 = phi i32 [ 0, %3593 ], [ %3648, %3647 ]
  %3602 = mul i32 %3601, 2
  %3603 = add i32 0, %3602
  %3604 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %3603
  %3605 = load float, float* %3604, align 4
  %3606 = mul i32 %3601, 2
  %3607 = add i32 1, %3606
  %3608 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %3607
  %3609 = load float, float* %3608, align 4
  %3610 = fmul fast float %3605, %3596
  %3611 = call float @dx.op.tertiary.f32(i32 46, float %3609, float %3597, float %3610)  ; FMad(a,b,c)
  %3612 = fmul fast float %3605, %3595
  %3613 = call float @dx.op.tertiary.f32(i32 46, float %3609, float %3596, float %3612)  ; FMad(a,b,c)
  %3614 = fmul fast float %3611, %3368
  %3615 = fmul fast float %3613, %3368
  %3616 = fadd fast float %3614, %2494
  %3617 = fadd fast float %3615, %2498
  %3618 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %11, %dx.types.Handle %45, float %3616, float %3617, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %3619 = extractvalue %dx.types.ResRet.f32 %3618, 0
  %3620 = extractvalue %dx.types.ResRet.f32 %3618, 1
  %3621 = extractvalue %dx.types.ResRet.f32 %3618, 2
  %3622 = extractvalue %dx.types.ResRet.f32 %3618, 3
  %3623 = getelementptr inbounds [4 x float], [4 x float]* %67, i32 0, i32 0
  store float %3619, float* %3623, align 4
  %3624 = getelementptr inbounds [4 x float], [4 x float]* %67, i32 0, i32 1
  store float %3620, float* %3624, align 4
  %3625 = getelementptr inbounds [4 x float], [4 x float]* %67, i32 0, i32 2
  store float %3621, float* %3625, align 4
  %3626 = getelementptr inbounds [4 x float], [4 x float]* %67, i32 0, i32 3
  store float %3622, float* %3626, align 4
  %3627 = fsub fast float %3619, %3370
  %3628 = fcmp fast olt float %3627, 0.000000e+00
  %3629 = select i1 %3628, float 0.000000e+00, float 1.000000e+00
  %3630 = fadd fast float %3629, %3599
  %3631 = fmul fast float %3629, %3627
  %3632 = fadd fast float %3631, %3600
  br label %3633

; <label>:3633                                    ; preds = %3633, %3598
  %3634 = phi i32 [ 1, %3598 ], [ %3645, %3633 ]
  %3635 = phi float [ %3632, %3598 ], [ %3644, %3633 ]
  %3636 = phi float [ %3630, %3598 ], [ %3642, %3633 ]
  %3637 = getelementptr [4 x float], [4 x float]* %67, i32 0, i32 %3634
  %3638 = load float, float* %3637, align 4, !tbaa !121, !noalias !111
  %3639 = fsub fast float %3638, %3370
  %3640 = fcmp fast olt float %3639, 0.000000e+00
  %3641 = select i1 %3640, float 0.000000e+00, float 1.000000e+00
  %3642 = fadd fast float %3641, %3636
  %3643 = fmul fast float %3641, %3639
  %3644 = fadd fast float %3643, %3635
  %3645 = add nuw nsw i32 %3634, 1
  %3646 = icmp eq i32 %3645, 4
  br i1 %3646, label %3647, label %3633, !llvm.loop !123

; <label>:3647                                    ; preds = %3633
  %3648 = add nuw nsw i32 %3601, 1
  %3649 = icmp eq i32 %3648, 8
  br i1 %3649, label %3650, label %3598, !llvm.loop !124

; <label>:3650                                    ; preds = %3647
  %3651 = fdiv fast float 1.000000e+00, %3642
  %3652 = fmul fast float %3651, %3644
  %3653 = fdiv fast float 1.000000e+00, %3370
  %3654 = fmul fast float %3652, %3653
  %3655 = call float @dx.op.unary.f32(i32 7, float %3654)  ; Saturate(value)
  %3656 = call float @dx.op.binary.f32(i32 35, float %3655, float 0.000000e+00)  ; FMax(a,b)
  %3657 = fmul fast float %3642, 3.125000e-02
  %3658 = call float @dx.op.unary.f32(i32 7, float %3657)  ; Saturate(value)
  %3659 = fmul fast float %3658, 2.000000e+00
  %3660 = fadd fast float %3659, -1.000000e+00
  %3661 = fcmp fast ogt float %3660, 0.000000e+00
  %3662 = fcmp fast olt float %3660, 0.000000e+00
  %3663 = zext i1 %3661 to i32
  %3664 = zext i1 %3662 to i32
  %3665 = sub nsw i32 %3663, %3664
  %3666 = sitofp i32 %3665 to float
  %3667 = fmul fast float %3666, %3660
  %3668 = fsub fast float 1.000000e+00, %3667
  %3669 = fmul fast float %3668, %3668
  %3670 = fmul fast float %3669, %3668
  %3671 = fsub fast float %3668, %3670
  %3672 = fmul fast float %3671, %3656
  %3673 = fsub fast float 1.000000e+00, %3670
  %3674 = fsub fast float %3673, %3672
  %3675 = fmul fast float %3666, 5.000000e-01
  %3676 = fmul fast float %3675, %3674
  %3677 = fsub fast float 5.000000e-01, %3676
  br label %3678

; <label>:3678                                    ; preds = %3650, %3526, %3497, %3373, %3357
  %3679 = phi float [ 1.000000e+00, %3357 ], [ %3439, %3373 ], [ %3524, %3497 ], [ %3592, %3526 ], [ %3677, %3650 ]
  %3680 = fsub fast float %3191, %3024
  %3681 = fmul fast float %3680, %2591
  %3682 = fadd fast float %3681, %3024
  %3683 = fsub fast float %3358, %3682
  %3684 = fmul fast float %3683, %2590
  %3685 = fadd fast float %3684, %3682
  %3686 = fsub fast float %3679, %3685
  %3687 = fmul fast float %3686, %2618
  %3688 = fadd fast float %3687, %3685
  %3689 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %3690 = extractvalue %dx.types.CBufRet.f32 %3689, 2
  %3691 = fcmp fast ogt float %3690, 0.000000e+00
  br i1 %3691, label %3692, label %3732, !dx.controlflow.hints !128

; <label>:3692                                    ; preds = %3678
  %3693 = fcmp fast ugt float %3690, 0.000000e+00
  br i1 %3693, label %3694, label %3729

; <label>:3694                                    ; preds = %3692
  %3695 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %3696 = extractvalue %dx.types.CBufRet.f32 %3695, 0
  %3697 = extractvalue %dx.types.CBufRet.f32 %3695, 1
  %3698 = extractvalue %dx.types.CBufRet.f32 %3695, 2
  %3699 = extractvalue %dx.types.CBufRet.f32 %3695, 3
  %3700 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %3701 = extractvalue %dx.types.CBufRet.f32 %3700, 0
  %3702 = extractvalue %dx.types.CBufRet.f32 %3700, 1
  %3703 = extractvalue %dx.types.CBufRet.f32 %3700, 2
  %3704 = extractvalue %dx.types.CBufRet.f32 %3700, 3
  %3705 = extractvalue %dx.types.CBufRet.f32 %3689, 0
  %3706 = extractvalue %dx.types.CBufRet.f32 %3689, 1
  %3707 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %3708 = extractvalue %dx.types.CBufRet.f32 %3707, 0
  %3709 = extractvalue %dx.types.CBufRet.f32 %3707, 1
  %3710 = extractvalue %dx.types.CBufRet.f32 %3707, 2
  %3711 = fadd fast float %3708, %2471
  %3712 = fadd fast float %3709, %2472
  %3713 = fadd fast float %3710, %2473
  %3714 = fmul fast float %3711, %3696
  %3715 = call float @dx.op.tertiary.f32(i32 46, float %3697, float %3712, float %3714)  ; FMad(a,b,c)
  %3716 = call float @dx.op.tertiary.f32(i32 46, float %3698, float %3713, float %3715)  ; FMad(a,b,c)
  %3717 = fadd fast float %3716, %3699
  %3718 = fmul fast float %3711, %3701
  %3719 = call float @dx.op.tertiary.f32(i32 46, float %3702, float %3712, float %3718)  ; FMad(a,b,c)
  %3720 = call float @dx.op.tertiary.f32(i32 46, float %3703, float %3713, float %3719)  ; FMad(a,b,c)
  %3721 = fadd fast float %3720, %3704
  %3722 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %6, %dx.types.Handle %41, float %3717, float %3721, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3723 = extractvalue %dx.types.ResRet.f32 %3722, 0
  %3724 = fmul fast float %3723, %3706
  %3725 = fadd fast float %3724, %3705
  %3726 = call float @dx.op.unary.f32(i32 7, float %3725)  ; Saturate(value)
  %3727 = fmul fast float %3726, %3690
  %3728 = fsub fast float 1.000000e+00, %3727
  br label %3729

; <label>:3729                                    ; preds = %3694, %3692
  %3730 = phi float [ %3728, %3694 ], [ 1.000000e+00, %3692 ]
  %3731 = fmul fast float %3730, %3688
  br label %3732

; <label>:3732                                    ; preds = %3729, %3678, %2451
  %3733 = phi float [ 1.000000e+00, %2451 ], [ %3731, %3729 ], [ %3688, %3678 ]
  %3734 = call float @dx.op.binary.f32(i32 36, float %3733, float %3733)  ; FMin(a,b)
  %3735 = call float @dx.op.binary.f32(i32 36, float %3733, float %3734)  ; FMin(a,b)
  %3736 = fcmp fast ogt float %3735, 0.000000e+00
  br i1 %3736, label %3737, label %3902, !dx.controlflow.hints !129

; <label>:3737                                    ; preds = %3732
  %3738 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %3739 = extractvalue %dx.types.CBufRet.f32 %3738, 0
  %3740 = extractvalue %dx.types.CBufRet.f32 %3738, 1
  %3741 = extractvalue %dx.types.CBufRet.f32 %3738, 2
  %3742 = extractvalue %dx.types.CBufRet.f32 %3738, 3
  %3743 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %3744 = extractvalue %dx.types.CBufRet.f32 %3743, 0
  %3745 = extractvalue %dx.types.CBufRet.f32 %3743, 1
  %3746 = extractvalue %dx.types.CBufRet.f32 %3743, 2
  %3747 = extractvalue %dx.types.CBufRet.f32 %3743, 3
  %3748 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %3749 = extractvalue %dx.types.CBufRet.f32 %3748, 0
  %3750 = extractvalue %dx.types.CBufRet.f32 %3748, 1
  %3751 = extractvalue %dx.types.CBufRet.f32 %3748, 2
  %3752 = extractvalue %dx.types.CBufRet.f32 %3748, 3
  %3753 = fmul fast float %3739, %2471
  %3754 = call float @dx.op.tertiary.f32(i32 46, float %2472, float %3740, float %3753)  ; FMad(a,b,c)
  %3755 = call float @dx.op.tertiary.f32(i32 46, float %2473, float %3741, float %3754)  ; FMad(a,b,c)
  %3756 = fadd fast float %3755, %3742
  %3757 = fmul fast float %3744, %2471
  %3758 = call float @dx.op.tertiary.f32(i32 46, float %2472, float %3745, float %3757)  ; FMad(a,b,c)
  %3759 = call float @dx.op.tertiary.f32(i32 46, float %2473, float %3746, float %3758)  ; FMad(a,b,c)
  %3760 = fadd fast float %3759, %3747
  %3761 = fmul fast float %3749, %2471
  %3762 = call float @dx.op.tertiary.f32(i32 46, float %2472, float %3750, float %3761)  ; FMad(a,b,c)
  %3763 = call float @dx.op.tertiary.f32(i32 46, float %2473, float %3751, float %3762)  ; FMad(a,b,c)
  %3764 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %3765 = extractvalue %dx.types.CBufRet.f32 %3764, 0
  %3766 = extractvalue %dx.types.CBufRet.f32 %3764, 1
  %3767 = extractvalue %dx.types.CBufRet.f32 %3764, 3
  %3768 = fmul fast float %3767, %3756
  %3769 = fmul fast float %3767, %3760
  %3770 = fadd fast float %3768, %3765
  %3771 = fadd fast float %3769, %3766
  %3772 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %3773 = extractvalue %dx.types.CBufRet.f32 %3772, 0
  %3774 = extractvalue %dx.types.CBufRet.f32 %3772, 1
  %3775 = fsub fast float %3770, %3773
  %3776 = fsub fast float %3771, %3774
  %3777 = fcmp fast olt float %3775, 0.000000e+00
  %3778 = fcmp fast olt float %3776, 0.000000e+00
  %3779 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %3780 = extractvalue %dx.types.CBufRet.f32 %3779, 0
  %3781 = extractvalue %dx.types.CBufRet.f32 %3779, 1
  %3782 = extractvalue %dx.types.CBufRet.f32 %3779, 2
  %3783 = extractvalue %dx.types.CBufRet.f32 %3779, 3
  %3784 = select i1 %3777, float %3780, float %3782
  %3785 = select i1 %3778, float %3781, float %3783
  %3786 = fmul fast float %3784, %3775
  %3787 = fmul fast float %3785, %3776
  %3788 = call float @dx.op.unary.f32(i32 6, float %3786)  ; FAbs(value)
  %3789 = call float @dx.op.unary.f32(i32 6, float %3787)  ; FAbs(value)
  %3790 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %3791 = extractvalue %dx.types.CBufRet.f32 %3790, 0
  %3792 = call float @dx.op.binary.f32(i32 35, float %3788, float %3789)  ; FMax(a,b)
  %3793 = fsub fast float %3791, %3792
  %3794 = call float @dx.op.unary.f32(i32 7, float %3793)  ; Saturate(value)
  %3795 = fcmp fast ogt float %3794, 0.000000e+00
  br i1 %3795, label %3796, label %3837, !dx.controlflow.hints !130

; <label>:3796                                    ; preds = %3737
  %3797 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %44, float %3770, float %3771, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3798 = extractvalue %dx.types.ResRet.f32 %3797, 1
  %3799 = fcmp fast ogt float %3798, 0.000000e+00
  br i1 %3799, label %3800, label %3833

; <label>:3800                                    ; preds = %3796
  %3801 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %44, float %3770, float %3771, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3802 = extractvalue %dx.types.ResRet.f32 %3801, 0
  %3803 = extractvalue %dx.types.ResRet.f32 %3801, 1
  %3804 = extractvalue %dx.types.ResRet.f32 %3801, 2
  %3805 = extractvalue %dx.types.ResRet.f32 %3801, 3
  %3806 = fsub fast float 1.000000e+00, %3752
  %3807 = fsub fast float %3806, %3763
  %3808 = fmul fast float %3807, 0x400921FB60000000
  %3809 = fadd fast float %3808, 0x3FF921FB60000000
  %3810 = call float @dx.op.unary.f32(i32 13, float %3809)  ; Sin(value)
  %3811 = fadd fast float %3810, -1.000000e+00
  %3812 = fmul fast float %3811, 0x3FD45F3060000000
  %3813 = fmul fast float %3807, 0x401921FB60000000
  %3814 = fadd fast float %3813, 0x400921FB60000000
  %3815 = call float @dx.op.unary.f32(i32 13, float %3814)  ; Sin(value)
  %3816 = fadd fast float %3815, 0x3E7777A5C0000000
  %3817 = fmul fast float %3816, 0x3FC45F3060000000
  %3818 = fmul fast float %3807, 0x4022D97C80000000
  %3819 = fadd fast float %3818, 0x4012D97C80000000
  %3820 = call float @dx.op.unary.f32(i32 13, float %3819)  ; Sin(value)
  %3821 = fadd fast float %3820, 1.000000e+00
  %3822 = fmul fast float %3821, 0x3FBB2995E0000000
  %3823 = fmul fast float %3807, 0x402921FB60000000
  %3824 = fadd fast float %3823, 0x401921FB60000000
  %3825 = call float @dx.op.unary.f32(i32 13, float %3824)  ; Sin(value)
  %3826 = fadd fast float %3825, 0xBE8777A5C0000000
  %3827 = fmul fast float %3826, 0x3FB45F3060000000
  %3828 = call float @dx.op.dot4.f32(i32 56, float %3802, float %3803, float %3804, float %3805, float %3812, float %3817, float %3822, float %3827)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3829 = fmul fast float %3828, 0xBFF7154760000000
  %3830 = call float @dx.op.unary.f32(i32 21, float %3829)  ; Exp(value)
  %3831 = call float @dx.op.unary.f32(i32 7, float %3830)  ; Saturate(value)
  %3832 = fadd float %3831, -1.000000e+00
  br label %3833

; <label>:3833                                    ; preds = %3800, %3796
  %3834 = phi float [ %3832, %3800 ], [ 0.000000e+00, %3796 ]
  %3835 = fmul fast float %3834, %3794
  %3836 = fadd fast float %3835, 1.000000e+00
  br label %3837

; <label>:3837                                    ; preds = %3833, %3737
  %3838 = phi float [ %3836, %3833 ], [ 1.000000e+00, %3737 ]
  %3839 = fmul fast float %3838, %3733
  %3840 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %3841 = extractvalue %dx.types.CBufRet.f32 %3840, 0
  %3842 = extractvalue %dx.types.CBufRet.f32 %3840, 1
  %3843 = extractvalue %dx.types.CBufRet.f32 %3840, 2
  %3844 = fadd fast float %3841, %250
  %3845 = fadd fast float %3842, %251
  %3846 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %3847 = extractvalue %dx.types.CBufRet.f32 %3846, 1
  %3848 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %3849 = extractvalue %dx.types.CBufRet.f32 %3848, 0
  %3850 = extractvalue %dx.types.CBufRet.f32 %3848, 1
  %3851 = extractvalue %dx.types.CBufRet.f32 %3848, 2
  %3852 = fsub fast float -0.000000e+00, %3844
  %3853 = fsub fast float -0.000000e+00, %3845
  %3854 = fsub fast float %310, %3843
  %3855 = fadd fast float %3854, %3847
  %3856 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %3852, float %3853, float %3855)  ; Dot3(ax,ay,az,bx,by,bz)
  %3857 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %3849, float %3850, float %3851)  ; Dot3(ax,ay,az,bx,by,bz)
  %3858 = fdiv fast float 1.000000e+00, %3857
  %3859 = fmul fast float %3858, %3856
  %3860 = fmul fast float %3849, %3859
  %3861 = fmul fast float %3850, %3859
  %3862 = fadd fast float %3860, %3844
  %3863 = fadd fast float %3861, %3845
  %3864 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %3865 = extractvalue %dx.types.CBufRet.f32 %3864, 0
  %3866 = extractvalue %dx.types.CBufRet.f32 %3864, 1
  %3867 = fsub fast float %3862, %3865
  %3868 = fsub fast float %3863, %3866
  %3869 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %3870 = extractvalue %dx.types.CBufRet.f32 %3869, 2
  %3871 = extractvalue %dx.types.CBufRet.f32 %3869, 3
  %3872 = fmul fast float %3867, %3870
  %3873 = fmul fast float %3868, %3871
  %3874 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %3875 = extractvalue %dx.types.CBufRet.i32 %3874, 3
  %3876 = icmp eq i32 %3875, 0
  br i1 %3876, label %3882, label %3877

; <label>:3877                                    ; preds = %3837
  %3878 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %43, float %3872, float %3873, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3879 = extractvalue %dx.types.ResRet.f32 %3878, 0
  %3880 = extractvalue %dx.types.ResRet.f32 %3878, 1
  %3881 = extractvalue %dx.types.ResRet.f32 %3878, 2
  br label %3887

; <label>:3882                                    ; preds = %3837
  %3883 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %44, float %3872, float %3873, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3884 = extractvalue %dx.types.ResRet.f32 %3883, 0
  %3885 = extractvalue %dx.types.ResRet.f32 %3883, 1
  %3886 = extractvalue %dx.types.ResRet.f32 %3883, 2
  br label %3887

; <label>:3887                                    ; preds = %3882, %3877
  %3888 = phi float [ %3879, %3877 ], [ %3884, %3882 ]
  %3889 = phi float [ %3880, %3877 ], [ %3885, %3882 ]
  %3890 = phi float [ %3881, %3877 ], [ %3886, %3882 ]
  %3891 = extractvalue %dx.types.CBufRet.f32 %3846, 2
  %3892 = fmul fast float %3891, %3888
  %3893 = extractvalue %dx.types.CBufRet.f32 %3846, 0
  %3894 = fsub fast float %3859, %3893
  %3895 = fsub fast float %3894, %3892
  %3896 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3895)  ; FMax(a,b)
  %3897 = fmul fast float %3896, %3889
  %3898 = call float @dx.op.binary.f32(i32 36, float %3890, float %3897)  ; FMin(a,b)
  %3899 = fmul fast float %3898, 0xBFF7154760000000
  %3900 = call float @dx.op.unary.f32(i32 21, float %3899)  ; Exp(value)
  %3901 = fmul fast float %3839, %3900
  br label %3902

; <label>:3902                                    ; preds = %3887, %3732
  %3903 = phi float [ %3901, %3887 ], [ %3733, %3732 ]
  %3904 = call float @dx.op.binary.f32(i32 36, float %3903, float %3903)  ; FMin(a,b)
  %3905 = call float @dx.op.binary.f32(i32 36, float %3903, float %3904)  ; FMin(a,b)
  %3906 = fcmp fast ogt float %3905, 0.000000e+00
  br i1 %3906, label %3907, label %4003, !dx.controlflow.hints !131

; <label>:3907                                    ; preds = %3902
  %3908 = fmul fast float %3903, %2463
  %3909 = fmul fast float %3903, %2464
  %3910 = fmul fast float %3903, %2465
  %3911 = fsub fast float %2452, %313
  %3912 = fsub fast float %2453, %314
  %3913 = fsub fast float %2454, %315
  %3914 = call float @dx.op.dot3.f32(i32 55, float %3911, float %3912, float %3913, float %3911, float %3912, float %3913)  ; Dot3(ax,ay,az,bx,by,bz)
  %3915 = call float @dx.op.unary.f32(i32 25, float %3914)  ; Rsqrt(value)
  %3916 = fmul fast float %3915, %3911
  %3917 = fmul fast float %3915, %3912
  %3918 = fmul fast float %3915, %3913
  %3919 = call float @dx.op.dot3.f32(i32 55, float %2452, float %2453, float %2454, float %181, float %182, float %183)  ; Dot3(ax,ay,az,bx,by,bz)
  %3920 = call float @dx.op.dot3.f32(i32 55, float %316, float %317, float %318, float %3916, float %3917, float %3918)  ; Dot3(ax,ay,az,bx,by,bz)
  %3921 = call float @dx.op.unary.f32(i32 7, float %3919)  ; Saturate(value)
  %3922 = fmul fast float %3921, %3921
  %3923 = fmul fast float %3922, 0x47DE623840000000
  %3924 = call float @dx.op.unary.f32(i32 7, float %3923)  ; Saturate(value)
  %3925 = fmul fast float %3924, %3921
  %3926 = call float @dx.op.dot3.f32(i32 55, float %181, float %182, float %183, float %3916, float %3917, float %3918)  ; Dot3(ax,ay,az,bx,by,bz)
  %3927 = fmul fast float %3926, %3926
  %3928 = call float @dx.op.unary.f32(i32 6, float %3919)  ; FAbs(value)
  %3929 = fsub fast float 1.000000e+00, %333
  %3930 = fmul fast float %321, %321
  %3931 = fmul fast float %3930, %3929
  %3932 = fadd fast float %3931, %333
  %3933 = bitcast float %3932 to i32
  %3934 = ashr i32 %3933, 1
  %3935 = add nsw i32 %3934, 532487669
  %3936 = bitcast i32 %3935 to float
  %3937 = fadd fast float %3936, %321
  %3938 = fmul fast float %333, %3927
  %3939 = fsub fast float 1.000000e+00, %3927
  %3940 = fadd fast float %3939, %3938
  %3941 = fmul fast float %3928, %3928
  %3942 = fmul fast float %3941, %3929
  %3943 = fadd fast float %3942, %333
  %3944 = bitcast float %3943 to i32
  %3945 = ashr i32 %3944, 1
  %3946 = add nsw i32 %3945, 532487669
  %3947 = bitcast i32 %3946 to float
  %3948 = fadd fast float %3947, %3928
  %3949 = fmul fast float %3940, %3940
  %3950 = fmul fast float %3949, %3937
  %3951 = fmul fast float %3950, %3948
  %3952 = fdiv fast float 0x3FF0A00000000000, %3951
  %3953 = fmul fast float %3952, %333
  %3954 = call float @dx.op.unary.f32(i32 6, float %3920)  ; FAbs(value)
  %3955 = fsub fast float 1.000000e+00, %3954
  %3956 = bitcast float %3955 to i32
  %3957 = sitofp i32 %3956 to float
  %3958 = fmul fast float %3957, 5.000000e+00
  %3959 = fadd fast float %3958, 0xC1EFBF8940000000
  %3960 = fptosi float %3959 to i32
  %3961 = bitcast i32 %3960 to float
  %3962 = fsub fast float 1.000000e+00, %301
  %3963 = fsub fast float 1.000000e+00, %302
  %3964 = fsub fast float 1.000000e+00, %319
  %3965 = fmul fast float %3961, %3962
  %3966 = fmul fast float %3961, %3963
  %3967 = fmul fast float %3961, %3964
  %3968 = fadd fast float %3965, %301
  %3969 = fadd fast float %3966, %302
  %3970 = fadd fast float %3967, %319
  %3971 = fmul fast float %3919, 9.843750e-01
  %3972 = fadd fast float %3971, 7.812500e-03
  %3973 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %44, float %3972, float %1938, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3974 = extractvalue %dx.types.ResRet.f32 %3973, 2
  %3975 = extractvalue %dx.types.ResRet.f32 %3973, 3
  %3976 = fmul fast float %3974, %301
  %3977 = fmul fast float %3974, %302
  %3978 = fmul fast float %3974, %319
  %3979 = fadd fast float %3976, %3975
  %3980 = fadd fast float %3977, %3975
  %3981 = fadd fast float %3978, %3975
  %3982 = call float @dx.op.binary.f32(i32 35, float %3980, float %3981)  ; FMax(a,b)
  %3983 = call float @dx.op.binary.f32(i32 35, float %3979, float %3982)  ; FMax(a,b)
  %3984 = fsub fast float 1.000000e+00, %3983
  %3985 = fmul fast float %3925, %3908
  %3986 = fmul fast float %3985, %3984
  %3987 = fmul fast float %3925, %3909
  %3988 = fmul fast float %3987, %3984
  %3989 = fmul fast float %3925, %3910
  %3990 = fmul fast float %3989, %3984
  %3991 = fadd fast float %3986, %2442
  %3992 = fadd fast float %3988, %2443
  %3993 = fadd fast float %3990, %2444
  %3994 = fmul fast float %3985, %3953
  %3995 = fmul fast float %3994, %3968
  %3996 = fmul fast float %3987, %3953
  %3997 = fmul fast float %3996, %3969
  %3998 = fmul fast float %3989, %3953
  %3999 = fmul fast float %3998, %3970
  %4000 = fadd fast float %3995, %2445
  %4001 = fadd fast float %3997, %2446
  %4002 = fadd fast float %3999, %2447
  br label %4003

; <label>:4003                                    ; preds = %3907, %3902, %2438
  %4004 = phi float [ %2445, %2438 ], [ %2445, %3902 ], [ %4000, %3907 ]
  %4005 = phi float [ %2446, %2438 ], [ %2446, %3902 ], [ %4001, %3907 ]
  %4006 = phi float [ %2447, %2438 ], [ %2447, %3902 ], [ %4002, %3907 ]
  %4007 = phi float [ %2442, %2438 ], [ %2442, %3902 ], [ %3991, %3907 ]
  %4008 = phi float [ %2443, %2438 ], [ %2443, %3902 ], [ %3992, %3907 ]
  %4009 = phi float [ %2444, %2438 ], [ %2444, %3902 ], [ %3993, %3907 ]
  %4010 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %4011 = extractvalue %dx.types.CBufRet.i32 %4010, 0
  %4012 = icmp eq i32 %4011, 0
  br i1 %4012, label %4525, label %4013

; <label>:4013                                    ; preds = %4003
  %4014 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %4015 = extractvalue %dx.types.CBufRet.f32 %4014, 2
  %4016 = extractvalue %dx.types.CBufRet.f32 %4014, 3
  %4017 = fmul fast float %4015, %73
  %4018 = fmul fast float %4016, %74
  %4019 = fptoui float %4017 to i32
  %4020 = fptoui float %4018 to i32
  %4021 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %4022 = extractvalue %dx.types.CBufRet.f32 %4021, 0
  %4023 = extractvalue %dx.types.CBufRet.f32 %4021, 2
  %4024 = extractvalue %dx.types.CBufRet.f32 %4021, 3
  %4025 = fadd fast float %216, -4.000000e+00
  %4026 = call float @dx.op.binary.f32(i32 35, float %4025, float 0.000000e+00)  ; FMax(a,b)
  %4027 = fadd fast float %4026, %4022
  %4028 = fmul fast float %4027, %4023
  %4029 = call float @dx.op.unary.f32(i32 23, float %4028)  ; Log(value)
  %4030 = fmul fast float %4029, %4024
  %4031 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %4032 = extractvalue %dx.types.CBufRet.f32 %4031, 2
  %4033 = fmul fast float %4030, %4032
  %4034 = call float @dx.op.unary.f32(i32 7, float %4033)  ; Saturate(value)
  %4035 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %4036 = extractvalue %dx.types.CBufRet.i32 %4035, 1
  %4037 = add i32 %4036, -1
  %4038 = uitofp i32 %4036 to float
  %4039 = fmul fast float %4038, %4034
  %4040 = fptoui float %4039 to i32
  %4041 = call i32 @dx.op.binary.i32(i32 40, i32 %4040, i32 %4037)  ; UMin(a,b)
  %4042 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %4043 = extractvalue %dx.types.CBufRet.i32 %4042, 2
  %4044 = extractvalue %dx.types.CBufRet.i32 %4042, 3
  %4045 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4020, i32 %4043, i32 %4019)  ; UMad(a,b,c)
  %4046 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4041, i32 %4044, i32 %4045)  ; UMad(a,b,c)
  %4047 = add nsw i32 %4011, -1
  %4048 = call i32 @dx.op.binary.i32(i32 37, i32 %4047, i32 0)  ; IMax(a,b)
  %4049 = call float @dx.op.binary.f32(i32 35, float %216, float 0.000000e+00)  ; FMax(a,b)
  %4050 = fptoui float %4049 to i32
  %4051 = lshr i32 %4050, 5
  %4052 = call i32 @dx.op.binary.i32(i32 40, i32 %4051, i32 8191)  ; UMin(a,b)
  %4053 = shl i32 %4052, 2
  %4054 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %4053, i32 undef)  ; BufferLoad(srv,index,wot)
  %4055 = extractvalue %dx.types.ResRet.i32 %4054, 0
  %4056 = lshr i32 %4055, 16
  %4057 = and i32 %4055, 65535
  %4058 = lshr i32 %4055, 21
  %4059 = lshr i32 %4057, 5
  %4060 = call i32 @dx.op.binary.i32(i32 40, i32 %4059, i32 %4048)  ; UMin(a,b)
  %4061 = icmp ugt i32 %4058, %4060
  br i1 %4061, label %4525, label %4062

; <label>:4062                                    ; preds = %4013
  br label %4063

; <label>:4063                                    ; preds = %4515, %4062
  %4064 = phi i32 [ %4522, %4515 ], [ %4058, %4062 ]
  %4065 = phi float [ %4516, %4515 ], [ %4004, %4062 ]
  %4066 = phi float [ %4517, %4515 ], [ %4005, %4062 ]
  %4067 = phi float [ %4518, %4515 ], [ %4006, %4062 ]
  %4068 = phi float [ %4519, %4515 ], [ %4007, %4062 ]
  %4069 = phi float [ %4520, %4515 ], [ %4008, %4062 ]
  %4070 = phi float [ %4521, %4515 ], [ %4009, %4062 ]
  %4071 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %4072 = extractvalue %dx.types.CBufRet.i32 %4071, 0
  %4073 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4046, i32 %4072, i32 %4064)  ; UMad(a,b,c)
  %4074 = shl i32 %4073, 2
  %4075 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %4074, i32 undef)  ; BufferLoad(srv,index,wot)
  %4076 = extractvalue %dx.types.ResRet.i32 %4075, 0
  %4077 = shl i32 %4064, 5
  %4078 = sub nsw i32 %4056, %4077
  %4079 = call i32 @dx.op.binary.i32(i32 37, i32 %4078, i32 0)  ; IMax(a,b)
  %4080 = call i32 @dx.op.binary.i32(i32 38, i32 %4079, i32 31)  ; IMin(a,b)
  %4081 = sub nsw i32 1, %4056
  %4082 = add nsw i32 %4081, %4057
  %4083 = call i32 @dx.op.binary.i32(i32 37, i32 %4082, i32 0)  ; IMax(a,b)
  %4084 = call i32 @dx.op.binary.i32(i32 38, i32 %4083, i32 32)  ; IMin(a,b)
  %4085 = and i32 %4084, 31
  %4086 = shl i32 -1, %4085
  %4087 = xor i32 %4086, -1
  %4088 = and i32 %4080, 31
  %4089 = shl i32 %4087, %4088
  %4090 = icmp eq i32 %4084, 32
  %4091 = select i1 %4090, i32 -1, i32 %4089
  %4092 = and i32 %4091, %4076
  %4093 = icmp eq i32 %4092, 0
  br i1 %4093, label %4515, label %4094

; <label>:4094                                    ; preds = %4063
  br label %4095

; <label>:4095                                    ; preds = %4229, %4094
  %4096 = phi i32 [ %4107, %4229 ], [ %4092, %4094 ]
  %4097 = phi float [ %4230, %4229 ], [ %4065, %4094 ]
  %4098 = phi float [ %4231, %4229 ], [ %4066, %4094 ]
  %4099 = phi float [ %4232, %4229 ], [ %4067, %4094 ]
  %4100 = phi float [ %4233, %4229 ], [ %4068, %4094 ]
  %4101 = phi float [ %4234, %4229 ], [ %4069, %4094 ]
  %4102 = phi float [ %4235, %4229 ], [ %4070, %4094 ]
  %4103 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4096)  ; FirstbitLo(value)
  %4104 = add i32 %4103, %4077
  %4105 = and i32 %4103, 31
  %4106 = shl i32 1, %4105
  %4107 = xor i32 %4106, %4096
  %4108 = mul i32 %4104, 112
  %4109 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %16, i32 %4108, i32 undef)  ; BufferLoad(srv,index,wot)
  %4110 = extractvalue %dx.types.ResRet.f32 %4109, 0
  %4111 = extractvalue %dx.types.ResRet.f32 %4109, 1
  %4112 = extractvalue %dx.types.ResRet.f32 %4109, 2
  %4113 = or i32 %4108, 12
  %4114 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %16, i32 %4113, i32 undef)  ; BufferLoad(srv,index,wot)
  %4115 = extractvalue %dx.types.ResRet.f32 %4114, 0
  %4116 = add i32 %4108, 16
  %4117 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %16, i32 %4116, i32 undef)  ; BufferLoad(srv,index,wot)
  %4118 = extractvalue %dx.types.ResRet.f32 %4117, 0
  %4119 = extractvalue %dx.types.ResRet.f32 %4117, 1
  %4120 = extractvalue %dx.types.ResRet.f32 %4117, 2
  %4121 = add i32 %4108, 28
  %4122 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %4121, i32 undef)  ; BufferLoad(srv,index,wot)
  %4123 = extractvalue %dx.types.ResRet.i32 %4122, 0
  %4124 = add i32 %4108, 44
  %4125 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %16, i32 %4124, i32 undef)  ; BufferLoad(srv,index,wot)
  %4126 = extractvalue %dx.types.ResRet.f32 %4125, 0
  %4127 = add i32 %4108, 48
  %4128 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %16, i32 %4127, i32 undef)  ; BufferLoad(srv,index,wot)
  %4129 = extractvalue %dx.types.ResRet.f32 %4128, 0
  %4130 = extractvalue %dx.types.ResRet.f32 %4128, 1
  %4131 = extractvalue %dx.types.ResRet.f32 %4128, 2
  %4132 = extractvalue %dx.types.ResRet.f32 %4128, 3
  %4133 = add i32 %4108, 64
  %4134 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %16, i32 %4133, i32 undef)  ; BufferLoad(srv,index,wot)
  %4135 = extractvalue %dx.types.ResRet.f32 %4134, 0
  %4136 = extractvalue %dx.types.ResRet.f32 %4134, 1
  %4137 = extractvalue %dx.types.ResRet.f32 %4134, 2
  %4138 = extractvalue %dx.types.ResRet.f32 %4134, 3
  %4139 = add i32 %4108, 80
  %4140 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %16, i32 %4139, i32 undef)  ; BufferLoad(srv,index,wot)
  %4141 = extractvalue %dx.types.ResRet.f32 %4140, 1
  %4142 = extractvalue %dx.types.ResRet.f32 %4140, 2
  %4143 = add i32 %4108, 92
  %4144 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %4143, i32 undef)  ; BufferLoad(srv,index,wot)
  %4145 = extractvalue %dx.types.ResRet.i32 %4144, 0
  %4146 = call float @dx.op.dot3.f32(i32 55, float %4110, float %4111, float %4112, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4147 = select i1 %110, float %4141, float %4110
  %4148 = select i1 %110, float %4146, float %4111
  %4149 = select i1 %110, float %4142, float %4112
  %4150 = and i32 %4145, 65535
  %4151 = uitofp i32 %4150 to float
  %4152 = lshr i32 %4145, 16
  %4153 = uitofp i32 %4152 to float
  %4154 = and i32 %4123, 65535
  %4155 = and i32 %4123, 50331648
  %4156 = icmp eq i32 %4155, 33554432
  %4157 = fsub fast float %4129, %250
  %4158 = fsub fast float %4130, %251
  %4159 = fsub fast float %4131, %252
  %4160 = call float @dx.op.dot3.f32(i32 55, float %4157, float %4158, float %4159, float %4157, float %4158, float %4159)  ; Dot3(ax,ay,az,bx,by,bz)
  %4161 = call float @dx.op.unary.f32(i32 24, float %4160)  ; Sqrt(value)
  %4162 = fdiv fast float 1.000000e+00, %4161
  %4163 = fmul fast float %4162, %4157
  %4164 = fmul fast float %4162, %4158
  %4165 = fmul fast float %4162, %4159
  %4166 = fadd fast float %4161, %4115
  %4167 = fdiv fast float 1.000000e+00, %4166
  %4168 = fmul float %4126, %4167
  %4169 = fmul float %4168, %4168
  %4170 = call float @dx.op.unary.f32(i32 7, float %4169)  ; Saturate(value)
  br i1 %4156, label %4171, label %4192

; <label>:4171                                    ; preds = %4095
  %4172 = fmul fast float %4137, %4118
  %4173 = fmul fast float %4137, %4119
  %4174 = fmul fast float %4137, %4120
  %4175 = fadd fast float %4157, %4172
  %4176 = fadd fast float %4158, %4173
  %4177 = fadd fast float %4159, %4174
  %4178 = call float @dx.op.dot3.f32(i32 55, float %4175, float %4176, float %4177, float %4175, float %4176, float %4177)  ; Dot3(ax,ay,az,bx,by,bz)
  %4179 = call float @dx.op.unary.f32(i32 25, float %4178)  ; Rsqrt(value)
  %4180 = fmul fast float %4179, %4175
  %4181 = fmul fast float %4179, %4176
  %4182 = fmul fast float %4179, %4177
  %4183 = fsub fast float %250, %4129
  %4184 = fsub fast float %251, %4130
  %4185 = fsub fast float %252, %4131
  %4186 = fsub fast float -0.000000e+00, %4183
  %4187 = fsub fast float -0.000000e+00, %4184
  %4188 = fsub fast float -0.000000e+00, %4185
  %4189 = call float @dx.op.dot3.f32(i32 55, float %4186, float %4187, float %4188, float %4118, float %4119, float %4120)  ; Dot3(ax,ay,az,bx,by,bz)
  %4190 = fcmp fast ogt float %4189, 0.000000e+00
  %4191 = uitofp i1 %4190 to float
  br label %4192

; <label>:4192                                    ; preds = %4171, %4095
  %4193 = phi float [ %4191, %4171 ], [ 1.000000e+00, %4095 ]
  %4194 = phi float [ %4180, %4171 ], [ %4163, %4095 ]
  %4195 = phi float [ %4181, %4171 ], [ %4164, %4095 ]
  %4196 = phi float [ %4182, %4171 ], [ %4165, %4095 ]
  %4197 = call float @dx.op.dot3.f32(i32 55, float %4118, float %4119, float %4120, float %4194, float %4195, float %4196)  ; Dot3(ax,ay,az,bx,by,bz)
  %4198 = fmul fast float %4197, %4197
  %4199 = call float @dx.op.unary.f32(i32 7, float %4198)  ; Saturate(value)
  %4200 = fsub fast float 1.000000e+00, %4199
  %4201 = fmul fast float %4200, 5.000000e-01
  %4202 = fcmp fast ogt float %4197, 0.000000e+00
  %4203 = fsub fast float 1.000000e+00, %4201
  %4204 = select i1 %4202, float %4201, float %4203
  %4205 = fmul fast float %4204, %4153
  %4206 = fadd fast float %4205, %4151
  %4207 = fmul fast float %4206, 0x3EF0001000000000
  %4208 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %44, float %4207, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4209 = extractvalue %dx.types.ResRet.f32 %4208, 0
  %4210 = fmul fast float %4197, %4135
  %4211 = fadd fast float %4210, %4136
  %4212 = call float @dx.op.unary.f32(i32 7, float %4211)  ; Saturate(value)
  %4213 = select i1 %4156, float 1.000000e+00, float %4212
  %4214 = select i1 %4156, float %4212, float 1.000000e+00
  %4215 = fmul fast float %4161, %4132
  %4216 = fsub fast float 1.000000e+00, %4215
  %4217 = fmul fast float %4216, %4138
  %4218 = call float @dx.op.unary.f32(i32 7, float %4217)  ; Saturate(value)
  %4219 = fmul fast float %4218, %4214
  %4220 = fmul fast float %4219, 2.000000e+00
  %4221 = fsub fast float 3.000000e+00, %4220
  %4222 = fmul fast float %4209, %4193
  %4223 = fmul fast float %4219, %4219
  %4224 = fmul fast float %4223, %4222
  %4225 = fmul fast float %4224, %4221
  %4226 = call float @dx.op.binary.f32(i32 36, float %4225, float %4225)  ; FMin(a,b)
  %4227 = call float @dx.op.binary.f32(i32 36, float %4225, float %4226)  ; FMin(a,b)
  %4228 = fcmp fast ogt float %4227, 0.000000e+00
  br i1 %4228, label %4237, label %4229, !dx.controlflow.hints !132

; <label>:4229                                    ; preds = %4388, %4383, %4192
  %4230 = phi float [ %4097, %4383 ], [ %4097, %4192 ], [ %4511, %4388 ]
  %4231 = phi float [ %4098, %4383 ], [ %4098, %4192 ], [ %4512, %4388 ]
  %4232 = phi float [ %4099, %4383 ], [ %4099, %4192 ], [ %4513, %4388 ]
  %4233 = phi float [ %4100, %4383 ], [ %4100, %4192 ], [ %4502, %4388 ]
  %4234 = phi float [ %4101, %4383 ], [ %4101, %4192 ], [ %4503, %4388 ]
  %4235 = phi float [ %4102, %4383 ], [ %4102, %4192 ], [ %4504, %4388 ]
  %4236 = icmp eq i32 %4096, %4106
  br i1 %4236, label %4514, label %4095

; <label>:4237                                    ; preds = %4192
  %4238 = icmp eq i32 %4154, 255
  br i1 %4238, label %4383, label %4239, !dx.controlflow.hints !133

; <label>:4239                                    ; preds = %4237
  %4240 = mul nuw nsw i32 %4154, 176
  %4241 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %4240, i32 undef)  ; BufferLoad(srv,index,wot)
  %4242 = extractvalue %dx.types.ResRet.f32 %4241, 0
  %4243 = extractvalue %dx.types.ResRet.f32 %4241, 1
  %4244 = extractvalue %dx.types.ResRet.f32 %4241, 2
  %4245 = extractvalue %dx.types.ResRet.f32 %4241, 3
  %4246 = add nuw nsw i32 %4240, 16
  %4247 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %4246, i32 undef)  ; BufferLoad(srv,index,wot)
  %4248 = extractvalue %dx.types.ResRet.f32 %4247, 0
  %4249 = extractvalue %dx.types.ResRet.f32 %4247, 1
  %4250 = add nuw nsw i32 %4240, 32
  %4251 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %4250, i32 undef)  ; BufferLoad(srv,index,wot)
  %4252 = extractvalue %dx.types.ResRet.f32 %4251, 0
  %4253 = extractvalue %dx.types.ResRet.f32 %4251, 1
  %4254 = extractvalue %dx.types.ResRet.f32 %4251, 2
  %4255 = add nuw nsw i32 %4240, 48
  %4256 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %4255, i32 undef)  ; BufferLoad(srv,index,wot)
  %4257 = extractvalue %dx.types.ResRet.f32 %4256, 0
  %4258 = extractvalue %dx.types.ResRet.f32 %4256, 1
  %4259 = extractvalue %dx.types.ResRet.f32 %4256, 2
  %4260 = extractvalue %dx.types.ResRet.f32 %4256, 3
  %4261 = add nuw nsw i32 %4240, 64
  %4262 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %4261, i32 undef)  ; BufferLoad(srv,index,wot)
  %4263 = extractvalue %dx.types.ResRet.f32 %4262, 0
  %4264 = extractvalue %dx.types.ResRet.f32 %4262, 1
  %4265 = extractvalue %dx.types.ResRet.f32 %4262, 2
  %4266 = extractvalue %dx.types.ResRet.f32 %4262, 3
  %4267 = add nuw nsw i32 %4240, 80
  %4268 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %4267, i32 undef)  ; BufferLoad(srv,index,wot)
  %4269 = extractvalue %dx.types.ResRet.f32 %4268, 0
  %4270 = extractvalue %dx.types.ResRet.f32 %4268, 1
  %4271 = extractvalue %dx.types.ResRet.f32 %4268, 2
  %4272 = extractvalue %dx.types.ResRet.f32 %4268, 3
  %4273 = add nuw nsw i32 %4240, 96
  %4274 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %4273, i32 undef)  ; BufferLoad(srv,index,wot)
  %4275 = extractvalue %dx.types.ResRet.f32 %4274, 0
  %4276 = extractvalue %dx.types.ResRet.f32 %4274, 1
  %4277 = extractvalue %dx.types.ResRet.f32 %4274, 2
  %4278 = extractvalue %dx.types.ResRet.f32 %4274, 3
  %4279 = bitcast float %4249 to i32
  %4280 = fmul fast float %4254, %181
  %4281 = fmul fast float %4254, %182
  %4282 = fmul fast float %4254, %183
  %4283 = fadd fast float %4280, %250
  %4284 = fadd fast float %4281, %251
  %4285 = fadd fast float %4282, %252
  %4286 = fmul fast float %4283, %4257
  %4287 = call float @dx.op.tertiary.f32(i32 46, float %4284, float %4263, float %4286)  ; FMad(a,b,c)
  %4288 = call float @dx.op.tertiary.f32(i32 46, float %4285, float %4269, float %4287)  ; FMad(a,b,c)
  %4289 = fadd fast float %4288, %4275
  %4290 = fmul fast float %4283, %4258
  %4291 = call float @dx.op.tertiary.f32(i32 46, float %4284, float %4264, float %4290)  ; FMad(a,b,c)
  %4292 = call float @dx.op.tertiary.f32(i32 46, float %4285, float %4270, float %4291)  ; FMad(a,b,c)
  %4293 = fadd fast float %4292, %4276
  %4294 = fmul fast float %4283, %4259
  %4295 = call float @dx.op.tertiary.f32(i32 46, float %4284, float %4265, float %4294)  ; FMad(a,b,c)
  %4296 = call float @dx.op.tertiary.f32(i32 46, float %4285, float %4271, float %4295)  ; FMad(a,b,c)
  %4297 = fadd fast float %4296, %4277
  %4298 = fmul fast float %4283, %4260
  %4299 = call float @dx.op.tertiary.f32(i32 46, float %4284, float %4266, float %4298)  ; FMad(a,b,c)
  %4300 = call float @dx.op.tertiary.f32(i32 46, float %4285, float %4272, float %4299)  ; FMad(a,b,c)
  %4301 = fadd fast float %4300, %4278
  %4302 = fdiv fast float %4289, %4301
  %4303 = fdiv fast float %4293, %4301
  %4304 = fdiv fast float %4297, %4301
  %4305 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %4304)  ; FMax(a,b)
  %4306 = fmul fast float %121, 0x401921FB60000000
  %4307 = call float @dx.op.unary.f32(i32 13, float %4306)  ; Sin(value)
  %4308 = call float @dx.op.unary.f32(i32 12, float %4306)  ; Cos(value)
  %4309 = fmul fast float %4308, %4253
  %4310 = call float @dx.op.tertiary.f32(i32 46, float %4307, float %4253, float 0.000000e+00)  ; FMad(a,b,c)
  %4311 = fmul fast float %4253, %4307
  %4312 = fsub fast float -0.000000e+00, %4311
  %4313 = call float @dx.op.tertiary.f32(i32 46, float %4308, float %4253, float 0.000000e+00)  ; FMad(a,b,c)
  br label %4314

; <label>:4314                                    ; preds = %4314, %4239
  %4315 = phi float [ 0.000000e+00, %4239 ], [ %4347, %4314 ]
  %4316 = phi float [ 0.000000e+00, %4239 ], [ %4349, %4314 ]
  %4317 = phi i32 [ 0, %4239 ], [ %4350, %4314 ]
  %4318 = mul i32 %4317, 2
  %4319 = add i32 0, %4318
  %4320 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %4319
  %4321 = load float, float* %4320, align 4
  %4322 = mul i32 %4317, 2
  %4323 = add i32 1, %4322
  %4324 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %4323
  %4325 = load float, float* %4324, align 4
  %4326 = fmul fast float %4309, %4321
  %4327 = call float @dx.op.tertiary.f32(i32 46, float %4325, float %4312, float %4326)  ; FMad(a,b,c)
  %4328 = fmul fast float %4321, %4310
  %4329 = call float @dx.op.tertiary.f32(i32 46, float %4325, float %4313, float %4328)  ; FMad(a,b,c)
  %4330 = fadd fast float %4327, %4302
  %4331 = fadd fast float %4329, %4303
  %4332 = fmul fast float %4330, %4248
  %4333 = fmul fast float %4331, %4248
  %4334 = call float @dx.op.binary.f32(i32 35, float %4332, float %4244)  ; FMax(a,b)
  %4335 = call float @dx.op.binary.f32(i32 35, float %4333, float %4244)  ; FMax(a,b)
  %4336 = call float @dx.op.binary.f32(i32 36, float %4334, float %4245)  ; FMin(a,b)
  %4337 = call float @dx.op.binary.f32(i32 36, float %4335, float %4245)  ; FMin(a,b)
  %4338 = fadd fast float %4336, %4242
  %4339 = fadd fast float %4337, %4243
  %4340 = uitofp i32 %4279 to float
  %4341 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %45, float %4338, float %4339, float %4340, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4342 = extractvalue %dx.types.ResRet.f32 %4341, 0
  %4343 = fsub fast float %4342, %4305
  %4344 = fsub fast float %4343, %4252
  %4345 = fcmp fast ogt float %4344, 0.000000e+00
  %4346 = select i1 %4345, float 1.000000e+00, float 0.000000e+00
  %4347 = fadd fast float %4346, %4315
  %4348 = select i1 %4345, float %4344, float 0.000000e+00
  %4349 = fadd fast float %4348, %4316
  %4350 = add nuw nsw i32 %4317, 1
  %4351 = icmp eq i32 %4350, 8
  br i1 %4351, label %4352, label %4314

; <label>:4352                                    ; preds = %4314
  %4353 = fdiv fast float 1.000000e+00, %4347
  %4354 = fmul fast float %4353, %4349
  %4355 = fdiv fast float 1.000000e+00, %4305
  %4356 = fmul fast float %4354, %4355
  %4357 = call float @dx.op.unary.f32(i32 7, float %4356)  ; Saturate(value)
  %4358 = call float @dx.op.binary.f32(i32 35, float %4357, float 0.000000e+00)  ; FMax(a,b)
  %4359 = fmul fast float %4347, 1.250000e-01
  %4360 = call float @dx.op.unary.f32(i32 7, float %4359)  ; Saturate(value)
  %4361 = fmul fast float %4360, 2.000000e+00
  %4362 = fadd fast float %4361, -1.000000e+00
  %4363 = fcmp fast ogt float %4362, 0.000000e+00
  %4364 = fcmp fast olt float %4362, 0.000000e+00
  %4365 = zext i1 %4363 to i32
  %4366 = zext i1 %4364 to i32
  %4367 = sub nsw i32 %4365, %4366
  %4368 = sitofp i32 %4367 to float
  %4369 = fmul fast float %4368, %4362
  %4370 = fsub fast float 1.000000e+00, %4369
  %4371 = fmul fast float %4370, %4370
  %4372 = fmul fast float %4371, %4370
  %4373 = fsub fast float %4370, %4372
  %4374 = fmul fast float %4373, %4358
  %4375 = fsub fast float 1.000000e+00, %4372
  %4376 = fsub fast float %4375, %4374
  %4377 = fmul fast float %4368, 5.000000e-01
  %4378 = fmul fast float %4377, %4376
  %4379 = fsub fast float -5.000000e-01, %4378
  %4380 = fmul fast float %4379, %4213
  %4381 = fadd fast float %4380, 1.000000e+00
  %4382 = fmul fast float %4381, %4225
  br label %4383

; <label>:4383                                    ; preds = %4352, %4237
  %4384 = phi float [ %4382, %4352 ], [ %4225, %4237 ]
  %4385 = call float @dx.op.binary.f32(i32 36, float %4384, float %4384)  ; FMin(a,b)
  %4386 = call float @dx.op.binary.f32(i32 36, float %4384, float %4385)  ; FMin(a,b)
  %4387 = fcmp fast ogt float %4386, 0.000000e+00
  br i1 %4387, label %4388, label %4229, !dx.controlflow.hints !134

; <label>:4388                                    ; preds = %4383
  %4389 = fmul fast float %4384, %4147
  %4390 = fmul fast float %4384, %4148
  %4391 = fmul fast float %4384, %4149
  %4392 = fsub fast float %4163, %313
  %4393 = fsub fast float %4164, %314
  %4394 = fsub fast float %4165, %315
  %4395 = call float @dx.op.dot3.f32(i32 55, float %4392, float %4393, float %4394, float %4392, float %4393, float %4394)  ; Dot3(ax,ay,az,bx,by,bz)
  %4396 = call float @dx.op.unary.f32(i32 25, float %4395)  ; Rsqrt(value)
  %4397 = fmul fast float %4396, %4392
  %4398 = fmul fast float %4396, %4393
  %4399 = fmul fast float %4396, %4394
  %4400 = call float @dx.op.dot3.f32(i32 55, float %4163, float %4164, float %4165, float %181, float %182, float %183)  ; Dot3(ax,ay,az,bx,by,bz)
  %4401 = call float @dx.op.dot3.f32(i32 55, float %316, float %317, float %318, float %4397, float %4398, float %4399)  ; Dot3(ax,ay,az,bx,by,bz)
  %4402 = call float @dx.op.unary.f32(i32 7, float %4400)  ; Saturate(value)
  %4403 = fmul fast float %4402, %4170
  %4404 = fmul fast float %4402, %4402
  %4405 = fmul fast float %4404, 0x47DE623840000000
  %4406 = call float @dx.op.unary.f32(i32 7, float %4405)  ; Saturate(value)
  %4407 = fmul fast float %4403, %4406
  %4408 = bitcast float %4160 to i32
  %4409 = ashr i32 %4408, 1
  %4410 = sub nsw i32 1597463007, %4409
  %4411 = bitcast i32 %4410 to float
  %4412 = fmul fast float %4411, %4157
  %4413 = fmul fast float %4411, %4158
  %4414 = fmul fast float %4411, %4159
  %4415 = fsub fast float %4412, %313
  %4416 = fsub fast float %4413, %314
  %4417 = fsub fast float %4414, %315
  %4418 = call float @dx.op.dot3.f32(i32 55, float %4415, float %4416, float %4417, float %4415, float %4416, float %4417)  ; Dot3(ax,ay,az,bx,by,bz)
  %4419 = call float @dx.op.unary.f32(i32 25, float %4418)  ; Rsqrt(value)
  %4420 = fmul fast float %4415, %4419
  %4421 = fmul fast float %4416, %4419
  %4422 = fmul fast float %4417, %4419
  %4423 = call float @dx.op.dot3.f32(i32 55, float %181, float %182, float %183, float %4420, float %4421, float %4422)  ; Dot3(ax,ay,az,bx,by,bz)
  %4424 = fmul fast float %4423, %4423
  %4425 = call float @dx.op.unary.f32(i32 6, float %4400)  ; FAbs(value)
  %4426 = fsub fast float 1.000000e+00, %333
  %4427 = fmul fast float %321, %321
  %4428 = fmul fast float %4427, %4426
  %4429 = fadd fast float %4428, %333
  %4430 = bitcast float %4429 to i32
  %4431 = ashr i32 %4430, 1
  %4432 = add nsw i32 %4431, 532487669
  %4433 = bitcast i32 %4432 to float
  %4434 = fadd fast float %4433, %321
  %4435 = fmul fast float %333, %4424
  %4436 = fsub fast float 1.000000e+00, %4424
  %4437 = fadd fast float %4436, %4435
  %4438 = fmul fast float %4425, %4425
  %4439 = fmul fast float %4438, %4426
  %4440 = fadd fast float %4439, %333
  %4441 = bitcast float %4440 to i32
  %4442 = ashr i32 %4441, 1
  %4443 = add nsw i32 %4442, 532487669
  %4444 = bitcast i32 %4443 to float
  %4445 = fadd fast float %4444, %4425
  %4446 = fmul fast float %4437, %4437
  %4447 = fmul fast float %4446, %4434
  %4448 = fmul fast float %4447, %4445
  %4449 = fdiv fast float 1.000000e+00, %4448
  %4450 = bitcast float %333 to i32
  %4451 = sitofp i32 %4450 to float
  %4452 = fmul fast float %4451, 0x3FE7F73180000000
  %4453 = fadd fast float %4452, 0x41AFE27C40000000
  %4454 = fptosi float %4453 to i32
  %4455 = bitcast i32 %4454 to float
  %4456 = fmul fast float %4126, 0x3FD80E9D60000000
  %4457 = fmul fast float %4456, %4411
  %4458 = fadd fast float %4455, %4457
  %4459 = bitcast float %4458 to i32
  %4460 = sub nsw i32 2129859010, %4459
  %4461 = bitcast i32 %4460 to float
  %4462 = fmul fast float %333, %4449
  %4463 = fmul fast float %4462, %4455
  %4464 = fmul fast float %4463, %4461
  %4465 = call float @dx.op.unary.f32(i32 6, float %4401)  ; FAbs(value)
  %4466 = fsub fast float 1.000000e+00, %4465
  %4467 = bitcast float %4466 to i32
  %4468 = sitofp i32 %4467 to float
  %4469 = fmul fast float %4468, 5.000000e+00
  %4470 = fadd fast float %4469, 0xC1EFBF8940000000
  %4471 = fptosi float %4470 to i32
  %4472 = bitcast i32 %4471 to float
  %4473 = fsub fast float 1.000000e+00, %301
  %4474 = fsub fast float 1.000000e+00, %302
  %4475 = fsub fast float 1.000000e+00, %319
  %4476 = fmul fast float %4472, %4473
  %4477 = fmul fast float %4472, %4474
  %4478 = fmul fast float %4472, %4475
  %4479 = fadd fast float %4476, %301
  %4480 = fadd fast float %4477, %302
  %4481 = fadd fast float %4478, %319
  %4482 = fmul fast float %4400, 9.843750e-01
  %4483 = fadd fast float %4482, 7.812500e-03
  %4484 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %44, float %4483, float %1938, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4485 = extractvalue %dx.types.ResRet.f32 %4484, 2
  %4486 = extractvalue %dx.types.ResRet.f32 %4484, 3
  %4487 = fmul fast float %4485, %301
  %4488 = fmul fast float %4485, %302
  %4489 = fmul fast float %4485, %319
  %4490 = fadd fast float %4487, %4486
  %4491 = fadd fast float %4488, %4486
  %4492 = fadd fast float %4489, %4486
  %4493 = call float @dx.op.binary.f32(i32 35, float %4491, float %4492)  ; FMax(a,b)
  %4494 = call float @dx.op.binary.f32(i32 35, float %4490, float %4493)  ; FMax(a,b)
  %4495 = fsub fast float 1.000000e+00, %4494
  %4496 = fmul fast float %4407, %4389
  %4497 = fmul fast float %4496, %4495
  %4498 = fmul fast float %4407, %4390
  %4499 = fmul fast float %4498, %4495
  %4500 = fmul fast float %4407, %4391
  %4501 = fmul fast float %4500, %4495
  %4502 = fadd fast float %4497, %4100
  %4503 = fadd fast float %4499, %4101
  %4504 = fadd fast float %4501, %4102
  %4505 = fmul fast float %4496, %4479
  %4506 = fmul fast float %4505, %4464
  %4507 = fmul fast float %4498, %4480
  %4508 = fmul fast float %4507, %4464
  %4509 = fmul fast float %4500, %4481
  %4510 = fmul fast float %4509, %4464
  %4511 = fadd fast float %4506, %4097
  %4512 = fadd fast float %4508, %4098
  %4513 = fadd fast float %4510, %4099
  br label %4229

; <label>:4514                                    ; preds = %4229
  br label %4515

; <label>:4515                                    ; preds = %4514, %4063
  %4516 = phi float [ %4065, %4063 ], [ %4230, %4514 ]
  %4517 = phi float [ %4066, %4063 ], [ %4231, %4514 ]
  %4518 = phi float [ %4067, %4063 ], [ %4232, %4514 ]
  %4519 = phi float [ %4068, %4063 ], [ %4233, %4514 ]
  %4520 = phi float [ %4069, %4063 ], [ %4234, %4514 ]
  %4521 = phi float [ %4070, %4063 ], [ %4235, %4514 ]
  %4522 = add i32 %4064, 1
  %4523 = icmp ugt i32 %4522, %4060
  br i1 %4523, label %4524, label %4063

; <label>:4524                                    ; preds = %4515
  br label %4525

; <label>:4525                                    ; preds = %4524, %4013, %4003
  %4526 = phi float [ %4004, %4003 ], [ %4004, %4013 ], [ %4516, %4524 ]
  %4527 = phi float [ %4005, %4003 ], [ %4005, %4013 ], [ %4517, %4524 ]
  %4528 = phi float [ %4006, %4003 ], [ %4006, %4013 ], [ %4518, %4524 ]
  %4529 = phi float [ %4007, %4003 ], [ %4007, %4013 ], [ %4519, %4524 ]
  %4530 = phi float [ %4008, %4003 ], [ %4008, %4013 ], [ %4520, %4524 ]
  %4531 = phi float [ %4009, %4003 ], [ %4009, %4013 ], [ %4521, %4524 ]
  %4532 = call float @dx.op.unary.f32(i32 24, float %292)  ; Sqrt(value)
  %4533 = call float @dx.op.unary.f32(i32 24, float %293)  ; Sqrt(value)
  %4534 = call float @dx.op.unary.f32(i32 24, float %294)  ; Sqrt(value)
  %4535 = fmul fast float %4532, %4529
  %4536 = fmul fast float %4533, %4530
  %4537 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %4538 = extractvalue %dx.types.CBufRet.f32 %4537, 0
  br i1 %110, label %4539, label %4559

; <label>:4539                                    ; preds = %4525
  %4540 = fadd fast float %4531, %309
  %4541 = fmul fast float %4540, %307
  %4542 = fsub fast float 1.000000e+00, %307
  %4543 = call float @dx.op.unary.f32(i32 7, float %4542)  ; Saturate(value)
  %4544 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4545 = extractvalue %dx.types.CBufRet.f32 %4544, 3
  %4546 = fmul fast float %4545, %4543
  %4547 = fadd fast float %4546, %4541
  %4548 = fsub fast float 1.000000e+00, %321
  %4549 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4550 = extractvalue %dx.types.CBufRet.f32 %4549, 0
  %4551 = fmul fast float %4550, %4548
  %4552 = fsub fast float %4547, %4551
  %4553 = fadd fast float %4536, %4535
  %4554 = extractvalue %dx.types.CBufRet.f32 %4544, 1
  %4555 = fsub fast float %4552, %4554
  %4556 = extractvalue %dx.types.CBufRet.f32 %4544, 2
  %4557 = fmul fast float %4555, %4556
  %4558 = call float @dx.op.unary.f32(i32 7, float %4557)  ; Saturate(value)
  br label %4563

; <label>:4559                                    ; preds = %4525
  %4560 = fmul fast float %4534, %4531
  %4561 = fmul fast float %4538, %4536
  %4562 = fmul fast float %4560, %4538
  br label %4563

; <label>:4563                                    ; preds = %4559, %4539
  %4564 = phi float [ %4553, %4539 ], [ %4535, %4559 ]
  %4565 = phi float [ %4558, %4539 ], [ %4561, %4559 ]
  %4566 = phi float [ 1.000000e+00, %4539 ], [ %4562, %4559 ]
  %4567 = fmul float %4538, %4564
  %4568 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %4569 = extractvalue %dx.types.CBufRet.f32 %4568, 0
  %4570 = fmul fast float %4569, %4527
  %4571 = fmul fast float %4569, %4528
  %4572 = fadd fast float %4527, %4526
  %4573 = select i1 %110, float %4572, float %4526
  %4574 = fmul float %4573, %4569
  %4575 = select i1 %110, float 0.000000e+00, float %4570
  %4576 = select i1 %110, float 0.000000e+00, float %4571
  %4577 = fmul fast float %4567, %4532
  %4578 = fmul fast float %4565, %4533
  %4579 = fmul fast float %4566, %4534
  %4580 = fadd fast float %4574, %4577
  %4581 = fadd fast float %4575, %4578
  %4582 = fadd fast float %4576, %4579
  %4583 = select i1 %110, float %4565, float %4581
  %4584 = select i1 %110, float %4566, float %4582
  %4585 = call float @dx.op.binary.f32(i32 36, float %4580, float 3.225500e+04)  ; FMin(a,b)
  %4586 = call float @dx.op.binary.f32(i32 36, float %4583, float 3.225500e+04)  ; FMin(a,b)
  %4587 = call float @dx.op.binary.f32(i32 36, float %4584, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %4585)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %4586)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %4587)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

