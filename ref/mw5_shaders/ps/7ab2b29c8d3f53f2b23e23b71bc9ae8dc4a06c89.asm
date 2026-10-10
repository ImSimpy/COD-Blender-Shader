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
; SV_Target                1   xyzw        1   TARGET   float   xyzw
;
; shader hash: b8e110824ec86e5520a1ebadc0e8af4f
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
;                                   texture     f32          2d     T23     t61,space2     1
;                                   texture     f32          2d     T24     t57,space2     1
;                                   texture    byte         r/o     T25     t69,space1     1
;                                   texture     f32     2darray     T26     t35,space2     1
;                                   texture     f32          3d     T27     t31,space2     1
;                                   texture    byte         r/o     T28     t10,space1     1
;                                   texture    byte         r/o     T29      t1,space1     1
;                                   texture     f32          1d     T30     t32,space2     1
;                                   texture     f32     2darray     T31      t8,space2     1
;                                   texture     f32          2d     T32      t1,space2     1
;                                   texture     f32          2d     T33      t2,space2     1
;                                   texture     f32          2d     T34      t3,space2     1
;                                   texture     f32          2d     T35      t4,space2     1
;                                   textureunorm_f32     2darray     T36     t80,space2     1
;                                   texture    byte         r/o     T37     t67,space1     1
;                                   texture     f32          2d     T38      t7,space2     1
;                                   texture     f32          2d     T39      t6,space2     1
;                                   texture     f32          2d     T40      t5,space2     1
;                                   texture     f32          2d     T41     t38,space2     1
;                                   texture    byte         r/o     T42     t12,space1     1
;                                   texture    byte         r/o     T43     t13,space1     1
;                                       UAV     f32          2d      U0             u7     1
;
;
; ViewId state:
;
; Number of inputs: 56, outputs: 8
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 3, 8, 9, 11, 12, 13, 14, 15, 27, 28, 49, 52 }
;   output 1 depends on inputs: { 0, 1, 3, 8, 9, 11, 12, 13, 14, 15, 27, 28, 49, 52 }
;   output 2 depends on inputs: { 0, 1, 3, 8, 9, 11, 12, 13, 14, 15, 27, 28, 49, 52 }
;   output 4 depends on inputs: { 0, 1, 3, 8, 9, 11, 12, 13, 14, 15, 27, 28, 49, 52 }
;   output 5 depends on inputs: { 0, 1, 3, 8, 9, 11, 12, 13, 14, 15, 27, 28, 49, 52 }
;   output 6 depends on inputs: { 0, 1, 3, 8, 9, 11, 12, 13, 14, 15, 27, 28, 49, 52 }
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
%hostlayout.stable = type { [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float> }
%struct.SamplerComparisonState = type { i32 }
%struct.SamplerState = type { i32 }

@PCF_OFFSETS_8.v.1dim = internal constant [16 x float] [float 0xBFE6A09020000000, float 0x3FE6A09020000000, float 0.000000e+00, float -8.750000e-01, float 0x3FE0F837C0000000, float 0x3FE0F837C0000000, float -6.250000e-01, float 0.000000e+00, float 0x3FD6A161E0000000, float 0xBFD6A161E0000000, float 0.000000e+00, float 3.750000e-01, float 0xBFC6A161E0000000, float 0xBFC6A161E0000000, float 1.250000e-01, float 0.000000e+00], align 4

define void @ps_main() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 43, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 42, i32 12, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 41, i32 38, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 40, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 39, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 38, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 37, i32 67, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 36, i32 80, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 35, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 34, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 33, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 32, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 31, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 30, i32 32, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 29, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 28, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 27, i32 31, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 26, i32 35, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 25, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 24, i32 57, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 23, i32 61, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 22, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 21, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 20, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 19, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %27 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 18, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %28 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %29 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 18, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %30 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %31 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %32 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 14, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %33 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 15, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %34 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %35 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 33, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %36 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 20, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %37 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 19, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %38 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 60, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %39 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 59, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %40 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 22, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %41 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 21, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %42 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 63, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %43 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 62, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %44 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %45 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 5, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %46 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 4, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %47 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %48 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %49 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %50 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %51 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %52 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %53 = alloca [4 x i32], align 4
  %54 = call i32 @dx.op.loadInput.i32(i32 4, i32 16, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %55 = icmp ne i32 %54, 0
  %56 = call i32 @dx.op.loadInput.i32(i32 4, i32 15, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %57 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %58 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %59 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %60 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %61 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %62 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %63 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %64 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %65 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %66 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %67 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %68 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %69 = alloca [12 x float], align 4
  %70 = alloca [12 x float], align 4
  %71 = alloca [4 x float], align 4
  %72 = alloca [4 x float], align 4
  %73 = alloca [4 x float], align 4
  %74 = alloca [4 x float], align 4
  %75 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 16)  ; CBufferLoadLegacy(handle,regIndex)
  %76 = extractvalue %dx.types.CBufRet.f32 %75, 0
  %77 = fmul fast float %76, %66
  %78 = fmul fast float %76, %67
  %79 = select i1 %55, float 1.000000e+00, float -1.000000e+00
  %80 = call float @dx.op.dot3.f32(i32 55, float %60, float %61, float %62, float %60, float %61, float %62)  ; Dot3(ax,ay,az,bx,by,bz)
  %81 = bitcast float %80 to i32
  %82 = ashr i32 %81, 1
  %83 = sub nsw i32 1597250115, %82
  %84 = bitcast i32 %83 to float
  %85 = fmul fast float %60, %79
  %86 = fmul fast float %85, %84
  %87 = fmul fast float %61, %79
  %88 = fmul fast float %87, %84
  %89 = fmul fast float %62, %79
  %90 = fmul fast float %89, %84
  %91 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %92 = extractvalue %dx.types.CBufRet.f32 %91, 2
  %93 = extractvalue %dx.types.CBufRet.f32 %91, 3
  %94 = fmul fast float %92, %77
  %95 = fmul fast float %93, %78
  %96 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %97 = extractvalue %dx.types.ResRet.i32 %96, 0
  %98 = and i32 %97, 114688
  %99 = icmp ne i32 %98, 0
  %100 = select i1 %99, float %94, float 0.000000e+00
  %101 = select i1 %99, float %95, float 0.000000e+00
  %102 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %49, float %100, float %101, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %103 = extractvalue %dx.types.ResRet.f32 %102, 0
  %104 = fmul fast float %103, 2.550000e+02
  %105 = fptoui float %104 to i32
  %106 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %107 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %108 = extractvalue %dx.types.CBufRet.i32 %107, 3
  %109 = and i32 %108, 3
  %110 = icmp ne i32 %109, 0
  %111 = and i32 %108, 4
  %112 = icmp ne i32 %111, 0
  %113 = and i1 %110, %112
  br i1 %113, label %114, label %125

; <label>:114                                     ; preds = %0
  %115 = extractvalue %dx.types.CBufRet.f32 %106, 3
  %116 = fmul fast float %115, %78
  %117 = extractvalue %dx.types.CBufRet.f32 %106, 2
  %118 = fmul fast float %117, %77
  %119 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %48, float %118, float %116, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %120 = extractvalue %dx.types.ResRet.f32 %119, 0
  %121 = fsub fast float 1.000000e+00, %120
  %122 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %123 = extractvalue %dx.types.CBufRet.f32 %122, 0
  %124 = fcmp fast olt float %121, %123
  br label %128

; <label>:125                                     ; preds = %0
  %126 = icmp eq i32 %111, 0
  %127 = and i1 %110, %126
  br label %128

; <label>:128                                     ; preds = %125, %114
  %129 = phi i1 [ %124, %114 ], [ %127, %125 ]
  %130 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %131 = extractvalue %dx.types.CBufRet.f32 %130, 2
  %132 = fmul fast float %131, 0x3FE3C6EF40000000
  %133 = frem fast float %77, 2.560000e+02
  %134 = frem fast float %78, 2.560000e+02
  %135 = fptoui float %133 to i32
  %136 = fptoui float %134 to i32
  %137 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %23, i32 0, i32 %135, i32 %136, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %138 = extractvalue %dx.types.ResRet.f32 %137, 0
  %139 = fadd fast float %138, %132
  %140 = call float @dx.op.unary.f32(i32 22, float %139)  ; Frc(value)
  %141 = add i32 %56, 60
  %142 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %141, i32 undef)  ; BufferLoad(srv,index,wot)
  %143 = extractvalue %dx.types.ResRet.i32 %142, 0
  %144 = add i32 %143, 0
  %145 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %144, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %146 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %145, i32 0)  ; GetDimensions(handle,mipLevel)
  %147 = extractvalue %dx.types.Dimensions %146, 0
  %148 = sitofp i32 %147 to float
  %149 = extractvalue %dx.types.Dimensions %146, 1
  %150 = sitofp i32 %149 to float
  %151 = fmul fast float %148, %63
  %152 = call float @dx.op.unary.f32(i32 83, float %151)  ; DerivCoarseX(value)
  %153 = call float @dx.op.unary.f32(i32 84, float %151)  ; DerivCoarseY(value)
  %154 = fmul fast float %150, %64
  %155 = call float @dx.op.unary.f32(i32 83, float %154)  ; DerivCoarseX(value)
  %156 = call float @dx.op.unary.f32(i32 84, float %154)  ; DerivCoarseY(value)
  %157 = fmul fast float %155, %155
  %158 = fmul fast float %156, %156
  %159 = fadd fast float %158, %157
  %160 = fmul fast float %155, %152
  %161 = fmul fast float %156, %153
  %162 = fadd fast float %161, %160
  %163 = fmul fast float %152, %152
  %164 = fmul fast float %153, %153
  %165 = fadd fast float %164, %163
  %166 = fmul fast float %159, %165
  %167 = fmul fast float %162, %162
  %168 = fsub fast float %166, %167
  %169 = bitcast float %168 to i32
  %170 = fadd fast float %159, %165
  %171 = bitcast float %170 to i32
  %172 = sub i32 8388608, %171
  %173 = add i32 %172, %169
  %174 = ashr i32 %173, 24
  %175 = sitofp i32 %174 to float
  %176 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %141, i32 undef)  ; BufferLoad(srv,index,wot)
  %177 = extractvalue %dx.types.ResRet.i32 %176, 0
  %178 = add i32 %177, 0
  %179 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %178, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %180 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %179, %dx.types.Handle %48, float %63, float %64, float undef, float undef, i32 0, i32 0, i32 undef, float %175)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %181 = extractvalue %dx.types.ResRet.f32 %180, 0
  %182 = extractvalue %dx.types.ResRet.f32 %180, 1
  %183 = extractvalue %dx.types.ResRet.f32 %180, 2
  %184 = fmul fast float %181, 2.000000e+00
  %185 = fmul fast float %182, 2.000000e+00
  %186 = fmul fast float %183, 2.000000e+00
  %187 = fadd fast float %184, -1.000000e+00
  %188 = fadd fast float %185, -1.000000e+00
  %189 = fadd fast float %186, -1.000000e+00
  br i1 %55, label %199, label %190

; <label>:190                                     ; preds = %128
  %191 = call float @dx.op.dot3.f32(i32 55, float %86, float %88, float %90, float %187, float %188, float %189)  ; Dot3(ax,ay,az,bx,by,bz)
  %192 = fmul fast float %191, 2.000000e+00
  %193 = fmul fast float %192, %86
  %194 = fmul fast float %192, %88
  %195 = fmul fast float %192, %90
  %196 = fsub fast float %187, %193
  %197 = fsub fast float %188, %194
  %198 = fsub fast float %189, %195
  br label %199

; <label>:199                                     ; preds = %190, %128
  %200 = phi float [ %196, %190 ], [ %187, %128 ]
  %201 = phi float [ %197, %190 ], [ %188, %128 ]
  %202 = phi float [ %198, %190 ], [ %189, %128 ]
  %203 = add i32 %56, 56
  %204 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %203, i32 undef)  ; BufferLoad(srv,index,wot)
  %205 = extractvalue %dx.types.ResRet.i32 %204, 0
  %206 = add i32 %205, 0
  %207 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %206, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %208 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %207, %dx.types.Handle %48, float %63, float %64, float undef, float undef, i32 0, i32 0, i32 undef, float %175)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %209 = extractvalue %dx.types.ResRet.f32 %208, 0
  %210 = extractvalue %dx.types.ResRet.f32 %208, 1
  %211 = extractvalue %dx.types.ResRet.f32 %208, 2
  %212 = extractvalue %dx.types.ResRet.f32 %208, 3
  %213 = add i32 %56, 64
  %214 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %213, i32 undef)  ; BufferLoad(srv,index,wot)
  %215 = extractvalue %dx.types.ResRet.i32 %214, 0
  %216 = add i32 %215, 0
  %217 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %216, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %218 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %217, %dx.types.Handle %48, float %63, float %64, float undef, float undef, i32 0, i32 0, i32 undef, float %175)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %219 = extractvalue %dx.types.ResRet.f32 %218, 0
  %220 = add i32 %56, 68
  %221 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %220, i32 undef)  ; BufferLoad(srv,index,wot)
  %222 = extractvalue %dx.types.ResRet.i32 %221, 0
  %223 = add i32 %222, 0
  %224 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %223, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %225 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %224, %dx.types.Handle %48, float %63, float %64, float undef, float undef, i32 0, i32 0, i32 undef, float %175)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %226 = extractvalue %dx.types.ResRet.f32 %225, 0
  %227 = fadd fast float %59, 1.000000e+00
  %228 = add i32 %56, 24
  %229 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %228, i32 undef)  ; BufferLoad(srv,index,wot)
  %230 = extractvalue %dx.types.ResRet.i32 %229, 2
  %231 = bitcast i32 %230 to float
  %232 = fmul fast float %226, 2.000000e+00
  %233 = fsub fast float %227, %232
  %234 = fmul fast float %231, %233
  %235 = fadd fast float %234, %68
  %236 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %237 = extractvalue %dx.types.CBufRet.f32 %236, 2
  %238 = extractvalue %dx.types.CBufRet.f32 %236, 3
  %239 = fmul fast float %77, 2.000000e+00
  %240 = fmul fast float %239, %237
  %241 = fmul fast float %78, 2.000000e+00
  %242 = fmul fast float %241, %238
  %243 = fsub fast float 1.000000e+00, %240
  %244 = fsub fast float 1.000000e+00, %242
  %245 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %246 = extractvalue %dx.types.CBufRet.f32 %245, 0
  %247 = extractvalue %dx.types.CBufRet.f32 %245, 1
  %248 = extractvalue %dx.types.CBufRet.f32 %245, 2
  %249 = fmul fast float %243, %246
  %250 = fmul fast float %243, %247
  %251 = fmul fast float %243, %248
  %252 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %253 = extractvalue %dx.types.CBufRet.f32 %252, 0
  %254 = extractvalue %dx.types.CBufRet.f32 %252, 1
  %255 = extractvalue %dx.types.CBufRet.f32 %252, 2
  %256 = fmul fast float %244, %253
  %257 = fmul fast float %244, %254
  %258 = fmul fast float %244, %255
  %259 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %260 = extractvalue %dx.types.CBufRet.f32 %259, 0
  %261 = extractvalue %dx.types.CBufRet.f32 %259, 1
  %262 = extractvalue %dx.types.CBufRet.f32 %259, 2
  %263 = fadd fast float %256, %260
  %264 = fadd fast float %263, %249
  %265 = fadd fast float %257, %261
  %266 = fadd fast float %265, %250
  %267 = fadd fast float %258, %262
  %268 = fadd fast float %267, %251
  %269 = fmul fast float %264, %235
  %270 = fmul fast float %266, %235
  %271 = fmul fast float %268, %235
  %272 = call float @dx.op.unary.f32(i32 26, float %58)  ; Round_ne(value)
  %273 = fptoui float %272 to i32
  %274 = shl i32 %273, 6
  %275 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %276 = extractvalue %dx.types.CBufRet.f32 %275, 0
  %277 = extractvalue %dx.types.CBufRet.f32 %275, 1
  %278 = extractvalue %dx.types.CBufRet.f32 %275, 2
  %279 = fadd fast float %269, %276
  %280 = fadd fast float %270, %277
  %281 = fadd fast float %271, %278
  %282 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %274, i32 undef)  ; BufferLoad(srv,index,wot)
  %283 = extractvalue %dx.types.ResRet.f32 %282, 0
  %284 = extractvalue %dx.types.ResRet.f32 %282, 1
  %285 = extractvalue %dx.types.ResRet.f32 %282, 2
  %286 = extractvalue %dx.types.ResRet.f32 %282, 3
  %287 = call float @dx.op.dot4.f32(i32 56, float %283, float %284, float %285, float %286, float %279, float %280, float %281, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %288 = or i32 %274, 16
  %289 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %288, i32 undef)  ; BufferLoad(srv,index,wot)
  %290 = extractvalue %dx.types.ResRet.f32 %289, 0
  %291 = extractvalue %dx.types.ResRet.f32 %289, 1
  %292 = extractvalue %dx.types.ResRet.f32 %289, 2
  %293 = extractvalue %dx.types.ResRet.f32 %289, 3
  %294 = call float @dx.op.dot4.f32(i32 56, float %290, float %291, float %292, float %293, float %279, float %280, float %281, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %295 = or i32 %274, 32
  %296 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %295, i32 undef)  ; BufferLoad(srv,index,wot)
  %297 = extractvalue %dx.types.ResRet.f32 %296, 0
  %298 = extractvalue %dx.types.ResRet.f32 %296, 1
  %299 = extractvalue %dx.types.ResRet.f32 %296, 2
  %300 = extractvalue %dx.types.ResRet.f32 %296, 3
  %301 = call float @dx.op.dot4.f32(i32 56, float %297, float %298, float %299, float %300, float %279, float %280, float %281, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %302 = fadd fast float %219, 0xBFB99999A0000000
  %303 = call float @dx.op.unary.f32(i32 7, float %302)  ; Saturate(value)
  %304 = fmul fast float %303, 0x3FF1C71C80000000
  %305 = call float @dx.op.binary.f32(i32 36, float %219, float 0x3FB99999A0000000)  ; FMin(a,b)
  %306 = fsub fast float 1.000000e+00, %304
  %307 = call float @dx.op.unary.f32(i32 7, float %306)  ; Saturate(value)
  %308 = fmul fast float %307, %209
  %309 = fmul fast float %307, %210
  %310 = fmul fast float %307, %211
  %311 = call float @dx.op.unary.f32(i32 7, float %308)  ; Saturate(value)
  %312 = call float @dx.op.unary.f32(i32 7, float %309)  ; Saturate(value)
  %313 = call float @dx.op.unary.f32(i32 7, float %310)  ; Saturate(value)
  %314 = fmul fast float %304, %209
  %315 = fmul fast float %304, %210
  %316 = fmul fast float %304, %211
  %317 = fadd fast float %314, %305
  %318 = fadd fast float %315, %305
  %319 = fadd fast float %316, %305
  %320 = call float @dx.op.unary.f32(i32 7, float %317)  ; Saturate(value)
  %321 = call float @dx.op.unary.f32(i32 7, float %318)  ; Saturate(value)
  %322 = call float @dx.op.unary.f32(i32 7, float %319)  ; Saturate(value)
  %323 = call float @dx.op.dot3.f32(i32 55, float %311, float %312, float %313, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %324 = fmul fast float %323, 1.875000e-01
  %325 = fadd fast float %324, 0x3FE647AE20000000
  %326 = call float @dx.op.unary.f32(i32 7, float %325)  ; Saturate(value)
  %327 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %328 = extractvalue %dx.types.CBufRet.f32 %327, 0
  %329 = fptoui float %77 to i32
  %330 = fptoui float %78 to i32
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %329, i32 %330, i32 undef, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %331 = fsub fast float -0.000000e+00, %271
  %332 = call float @dx.op.dot3.f32(i32 55, float %269, float %270, float %271, float %269, float %270, float %271)  ; Dot3(ax,ay,az,bx,by,bz)
  %333 = call float @dx.op.unary.f32(i32 25, float %332)  ; Rsqrt(value)
  %334 = fmul fast float %333, %269
  %335 = fmul fast float %333, %270
  %336 = fmul fast float %333, %271
  %337 = fsub fast float -0.000000e+00, %334
  %338 = fsub fast float -0.000000e+00, %335
  %339 = fsub fast float -0.000000e+00, %336
  %340 = select i1 %129, float 0.000000e+00, float %322
  %341 = call float @dx.op.dot3.f32(i32 55, float %200, float %201, float %202, float %337, float %338, float %339)  ; Dot3(ax,ay,az,bx,by,bz)
  %342 = call float @dx.op.unary.f32(i32 7, float %341)  ; Saturate(value)
  %343 = call float @dx.op.dot3.f32(i32 55, float %334, float %335, float %336, float %200, float %201, float %202)  ; Dot3(ax,ay,az,bx,by,bz)
  %344 = fmul fast float %343, 2.000000e+00
  %345 = fmul fast float %344, %200
  %346 = fmul fast float %344, %201
  %347 = fmul fast float %344, %202
  %348 = fsub fast float %334, %345
  %349 = fsub fast float %335, %346
  %350 = fsub fast float %336, %347
  %351 = fsub fast float 1.000000e+00, %212
  %352 = call float @dx.op.binary.f32(i32 35, float %351, float 0x3F847AE140000000)  ; FMax(a,b)
  %353 = fmul fast float %352, %352
  %354 = fmul fast float %353, %353
  %355 = call float @dx.op.unary.f32(i32 7, float %342)  ; Saturate(value)
  %356 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %48, float 0x3BF7A3BEA0000000, float %354, float %355, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %357 = extractvalue %dx.types.ResRet.f32 %356, 0
  %358 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %359 = extractvalue %dx.types.CBufRet.f32 %358, 0
  %360 = extractvalue %dx.types.CBufRet.f32 %358, 1
  %361 = fadd fast float %359, %269
  %362 = fadd fast float %360, %270
  %363 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 260)  ; CBufferLoadLegacy(handle,regIndex)
  %364 = extractvalue %dx.types.CBufRet.i32 %363, 0
  %365 = icmp eq i32 %364, 1
  br i1 %365, label %366, label %401

; <label>:366                                     ; preds = %199
  %367 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %368 = extractvalue %dx.types.CBufRet.f32 %367, 0
  %369 = extractvalue %dx.types.CBufRet.f32 %367, 1
  %370 = fsub fast float %361, %368
  %371 = fsub fast float %362, %369
  %372 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %373 = extractvalue %dx.types.CBufRet.f32 %372, 0
  %374 = extractvalue %dx.types.CBufRet.f32 %372, 1
  %375 = fmul fast float %370, %373
  %376 = fmul fast float %371, %374
  %377 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %48, float %375, float %376, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %378 = extractvalue %dx.types.ResRet.f32 %377, 0
  %379 = fcmp fast ogt float %378, 0.000000e+00
  %380 = extractvalue %dx.types.CBufRet.i32 %363, 3
  %381 = icmp ne i32 %380, 0
  %382 = and i1 %379, %381
  br i1 %382, label %383, label %401, !dx.controlflow.hints !98

; <label>:383                                     ; preds = %366
  %384 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %385 = extractvalue %dx.types.CBufRet.f32 %384, 0
  %386 = extractvalue %dx.types.CBufRet.f32 %384, 1
  %387 = fsub fast float %361, %385
  %388 = fsub fast float %362, %386
  %389 = fmul fast float %387, %387
  %390 = fmul fast float %388, %388
  %391 = fadd fast float %389, %390
  %392 = uitofp i32 %380 to float
  %393 = fmul fast float %392, %392
  %394 = fcmp fast ogt float %391, %393
  br i1 %394, label %401, label %395

; <label>:395                                     ; preds = %383
  %396 = call float @dx.op.unary.f32(i32 24, float %391)  ; Sqrt(value)
  %397 = fsub fast float %392, %396
  %398 = fmul fast float %397, 0x3F75555560000000
  %399 = call float @dx.op.unary.f32(i32 7, float %398)  ; Saturate(value)
  %400 = call float @dx.op.binary.f32(i32 36, float %399, float %378)  ; FMin(a,b)
  br label %401

; <label>:401                                     ; preds = %395, %383, %366, %199
  %402 = phi float [ 1.000000e+00, %199 ], [ %400, %395 ], [ %378, %366 ], [ 0.000000e+00, %383 ]
  %403 = fcmp fast ogt float %402, 0.000000e+00
  br i1 %403, label %404, label %887, !dx.controlflow.hints !99

; <label>:404                                     ; preds = %401
  %405 = fadd fast float %58, 5.000000e-01
  %406 = fptoui float %405 to i32
  %407 = fcmp fast une float %57, 0.000000e+00
  br i1 %407, label %408, label %460

; <label>:408                                     ; preds = %404
  %409 = fadd fast float %65, 5.000000e-01
  %410 = fptoui float %409 to i32
  %411 = shl i32 %410, 3
  %412 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %411, i32 undef)  ; BufferLoad(srv,index,wot)
  %413 = extractvalue %dx.types.ResRet.i32 %412, 0
  %414 = or i32 %411, 4
  %415 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %414, i32 undef)  ; BufferLoad(srv,index,wot)
  %416 = extractvalue %dx.types.ResRet.i32 %415, 0
  %417 = and i32 %416, 16777215
  %418 = add i32 %417, %406
  %419 = shl i32 %418, 5
  %420 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %419, i32 undef)  ; BufferLoad(srv,index,wot)
  %421 = extractvalue %dx.types.ResRet.f32 %420, 0
  %422 = extractvalue %dx.types.ResRet.f32 %420, 1
  %423 = extractvalue %dx.types.ResRet.f32 %420, 2
  %424 = or i32 %419, 16
  %425 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %424, i32 undef)  ; BufferLoad(srv,index,wot)
  %426 = extractvalue %dx.types.ResRet.f32 %425, 0
  %427 = extractvalue %dx.types.ResRet.f32 %425, 1
  %428 = extractvalue %dx.types.ResRet.f32 %425, 2
  %429 = lshr i32 %416, 24
  %430 = and i32 %429, 3
  %431 = add nuw nsw i32 %430, 3
  %432 = shl i32 1, %431
  %433 = lshr i32 %416, 29
  %434 = lshr i32 %416, 23
  %435 = and i32 %434, 56
  %436 = shl nuw nsw i32 %433, 3
  %437 = lshr i32 %413, 16
  %438 = and i32 %413, 65535
  %439 = uitofp i32 %432 to float
  %440 = fmul fast float %439, 1.562500e-02
  %441 = uitofp i32 %437 to float
  %442 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 302)  ; CBufferLoadLegacy(handle,regIndex)
  %443 = extractvalue %dx.types.CBufRet.f32 %442, 3
  %444 = fmul fast float %443, %441
  %445 = uitofp i32 %435 to float
  %446 = fmul fast float %445, 1.562500e-02
  %447 = uitofp i32 %436 to float
  %448 = fmul fast float %447, 1.562500e-02
  %449 = uitofp i32 %438 to float
  %450 = fmul fast float %443, %449
  %451 = fmul fast float %440, %421
  %452 = fmul fast float %440, %422
  %453 = fmul fast float %444, %423
  %454 = fmul fast float %440, %426
  %455 = fmul fast float %440, %427
  %456 = fmul fast float %444, %428
  %457 = fadd fast float %454, %446
  %458 = fadd fast float %455, %448
  %459 = fadd fast float %456, %450
  br label %471

; <label>:460                                     ; preds = %404
  %461 = shl i32 %406, 5
  %462 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %461, i32 undef)  ; BufferLoad(srv,index,wot)
  %463 = extractvalue %dx.types.ResRet.f32 %462, 0
  %464 = extractvalue %dx.types.ResRet.f32 %462, 1
  %465 = extractvalue %dx.types.ResRet.f32 %462, 2
  %466 = or i32 %461, 16
  %467 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %466, i32 undef)  ; BufferLoad(srv,index,wot)
  %468 = extractvalue %dx.types.ResRet.f32 %467, 0
  %469 = extractvalue %dx.types.ResRet.f32 %467, 1
  %470 = extractvalue %dx.types.ResRet.f32 %467, 2
  br label %471

; <label>:471                                     ; preds = %460, %408
  %472 = phi float [ %457, %408 ], [ %468, %460 ]
  %473 = phi float [ %458, %408 ], [ %469, %460 ]
  %474 = phi float [ %459, %408 ], [ %470, %460 ]
  %475 = phi float [ %451, %408 ], [ %463, %460 ]
  %476 = phi float [ %452, %408 ], [ %464, %460 ]
  %477 = phi float [ %453, %408 ], [ %465, %460 ]
  %478 = call float @dx.op.unary.f32(i32 7, float %287)  ; Saturate(value)
  %479 = call float @dx.op.unary.f32(i32 7, float %294)  ; Saturate(value)
  %480 = call float @dx.op.unary.f32(i32 7, float %301)  ; Saturate(value)
  %481 = fmul fast float %478, %475
  %482 = fmul fast float %479, %476
  %483 = fmul fast float %480, %477
  %484 = fadd fast float %481, %472
  %485 = fadd fast float %482, %473
  %486 = fadd fast float %483, %474
  %487 = fmul fast float %484, 5.000000e-01
  %488 = fmul fast float %485, 0x3FD5555560000000
  %489 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %490 = extractvalue %dx.types.CBufRet.f32 %489, 3
  %491 = fadd fast float %487, 5.000000e-01
  %492 = fadd fast float %488, 0x3FD5555560000000
  %493 = fadd fast float %488, 0x3FE5555560000000
  br i1 %407, label %494, label %604

; <label>:494                                     ; preds = %471
  %495 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %41, %dx.types.Handle %46, float %484, float %485, float %486, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %496 = extractvalue %dx.types.ResRet.f32 %495, 0
  %497 = extractvalue %dx.types.ResRet.f32 %495, 1
  %498 = extractvalue %dx.types.ResRet.f32 %495, 2
  %499 = fmul fast float %490, %496
  %500 = fmul fast float %490, %497
  %501 = fmul fast float %490, %498
  %502 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %40, %dx.types.Handle %46, float %487, float %488, float %486, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %503 = extractvalue %dx.types.ResRet.f32 %502, 0
  %504 = extractvalue %dx.types.ResRet.f32 %502, 1
  %505 = extractvalue %dx.types.ResRet.f32 %502, 2
  %506 = extractvalue %dx.types.ResRet.f32 %502, 3
  %507 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %40, %dx.types.Handle %46, float %491, float %488, float %486, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %508 = extractvalue %dx.types.ResRet.f32 %507, 0
  %509 = extractvalue %dx.types.ResRet.f32 %507, 1
  %510 = extractvalue %dx.types.ResRet.f32 %507, 2
  %511 = extractvalue %dx.types.ResRet.f32 %507, 3
  %512 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %40, %dx.types.Handle %46, float %487, float %492, float %486, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %513 = extractvalue %dx.types.ResRet.f32 %512, 0
  %514 = extractvalue %dx.types.ResRet.f32 %512, 1
  %515 = extractvalue %dx.types.ResRet.f32 %512, 2
  %516 = extractvalue %dx.types.ResRet.f32 %512, 3
  %517 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %40, %dx.types.Handle %46, float %491, float %492, float %486, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %518 = extractvalue %dx.types.ResRet.f32 %517, 0
  %519 = extractvalue %dx.types.ResRet.f32 %517, 1
  %520 = extractvalue %dx.types.ResRet.f32 %517, 2
  %521 = extractvalue %dx.types.ResRet.f32 %517, 3
  %522 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %40, %dx.types.Handle %46, float %487, float %493, float %486, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %523 = extractvalue %dx.types.ResRet.f32 %522, 0
  %524 = extractvalue %dx.types.ResRet.f32 %522, 1
  %525 = extractvalue %dx.types.ResRet.f32 %522, 2
  %526 = extractvalue %dx.types.ResRet.f32 %522, 3
  %527 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %40, %dx.types.Handle %46, float %491, float %493, float %486, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %528 = extractvalue %dx.types.ResRet.f32 %527, 0
  %529 = extractvalue %dx.types.ResRet.f32 %527, 1
  %530 = extractvalue %dx.types.ResRet.f32 %527, 2
  %531 = extractvalue %dx.types.ResRet.f32 %527, 3
  %532 = fmul fast float %503, 0x400BB67AE0000000
  %533 = fadd fast float %532, 0xBFFBB67AE0000000
  %534 = fmul fast float %533, %499
  %535 = fmul fast float %504, 0x400BB67AE0000000
  %536 = fadd fast float %535, 0xBFFBB67AE0000000
  %537 = fmul fast float %536, %500
  %538 = fmul fast float %505, 0x400BB67AE0000000
  %539 = fadd fast float %538, 0xBFFBB67AE0000000
  %540 = fmul fast float %539, %501
  %541 = fmul fast float %506, 0x4011E377A0000000
  %542 = fadd fast float %541, 0xC001E377A0000000
  %543 = fmul fast float %542, %499
  %544 = fmul fast float %508, 0x4011E377A0000000
  %545 = fadd fast float %544, 0xC001E377A0000000
  %546 = fmul fast float %545, %500
  %547 = fmul fast float %509, 0x4011E377A0000000
  %548 = fadd fast float %547, 0xC001E377A0000000
  %549 = fmul fast float %548, %501
  %550 = fmul fast float %510, 0x400BB67AE0000000
  %551 = fadd fast float %550, 0xBFFBB67AE0000000
  %552 = fmul fast float %551, %499
  %553 = fmul fast float %511, 0x400BB67AE0000000
  %554 = fadd fast float %553, 0xBFFBB67AE0000000
  %555 = fmul fast float %554, %500
  %556 = fmul fast float %513, 0x400BB67AE0000000
  %557 = fadd fast float %556, 0xBFFBB67AE0000000
  %558 = fmul fast float %557, %501
  %559 = fmul fast float %514, 0x400BB67AE0000000
  %560 = fadd fast float %559, 0xBFFBB67AE0000000
  %561 = fmul fast float %560, %499
  %562 = fmul fast float %515, 0x400BB67AE0000000
  %563 = fadd fast float %562, 0xBFFBB67AE0000000
  %564 = fmul fast float %563, %500
  %565 = fmul fast float %516, 0x400BB67AE0000000
  %566 = fadd fast float %565, 0xBFFBB67AE0000000
  %567 = fmul fast float %566, %501
  %568 = fmul fast float %518, 0x400EFBDEC0000000
  %569 = fadd fast float %568, 0xBFFEFBDEC0000000
  %570 = fmul fast float %569, %499
  %571 = fmul fast float %519, 0x400EFBDEC0000000
  %572 = fadd fast float %571, 0xBFFEFBDEC0000000
  %573 = fmul fast float %572, %500
  %574 = fmul fast float %520, 0x400EFBDEC0000000
  %575 = fadd fast float %574, 0xBFFEFBDEC0000000
  %576 = fmul fast float %575, %501
  %577 = fmul fast float %521, 0x400EFBDEC0000000
  %578 = fadd fast float %577, 0xBFFEFBDEC0000000
  %579 = fmul fast float %578, %499
  %580 = fmul fast float %523, 0x400EFBDEC0000000
  %581 = fadd fast float %580, 0xBFFEFBDEC0000000
  %582 = fmul fast float %581, %500
  %583 = fmul fast float %524, 0x400EFBDEC0000000
  %584 = fadd fast float %583, 0xBFFEFBDEC0000000
  %585 = fmul fast float %584, %501
  %586 = fmul fast float %525, 0x400EFBDEC0000000
  %587 = fadd fast float %586, 0xBFFEFBDEC0000000
  %588 = fmul fast float %587, %499
  %589 = fmul fast float %526, 0x400EFBDEC0000000
  %590 = fadd fast float %589, 0xBFFEFBDEC0000000
  %591 = fmul fast float %590, %500
  %592 = fmul fast float %528, 0x400EFBDEC0000000
  %593 = fadd fast float %592, 0xBFFEFBDEC0000000
  %594 = fmul fast float %593, %501
  %595 = fmul fast float %529, 0x400EFBDEC0000000
  %596 = fadd fast float %595, 0xBFFEFBDEC0000000
  %597 = fmul fast float %596, %499
  %598 = fmul fast float %530, 0x400EFBDEC0000000
  %599 = fadd fast float %598, 0xBFFEFBDEC0000000
  %600 = fmul fast float %599, %500
  %601 = fmul fast float %531, 0x400EFBDEC0000000
  %602 = fadd fast float %601, 0xBFFEFBDEC0000000
  %603 = fmul fast float %602, %501
  br label %714

; <label>:604                                     ; preds = %471
  %605 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %37, %dx.types.Handle %46, float %484, float %485, float %486, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %606 = extractvalue %dx.types.ResRet.f32 %605, 0
  %607 = extractvalue %dx.types.ResRet.f32 %605, 1
  %608 = extractvalue %dx.types.ResRet.f32 %605, 2
  %609 = fmul fast float %490, %606
  %610 = fmul fast float %490, %607
  %611 = fmul fast float %490, %608
  %612 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %36, %dx.types.Handle %46, float %487, float %488, float %486, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %613 = extractvalue %dx.types.ResRet.f32 %612, 0
  %614 = extractvalue %dx.types.ResRet.f32 %612, 1
  %615 = extractvalue %dx.types.ResRet.f32 %612, 2
  %616 = extractvalue %dx.types.ResRet.f32 %612, 3
  %617 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %36, %dx.types.Handle %46, float %491, float %488, float %486, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %618 = extractvalue %dx.types.ResRet.f32 %617, 0
  %619 = extractvalue %dx.types.ResRet.f32 %617, 1
  %620 = extractvalue %dx.types.ResRet.f32 %617, 2
  %621 = extractvalue %dx.types.ResRet.f32 %617, 3
  %622 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %36, %dx.types.Handle %46, float %487, float %492, float %486, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %623 = extractvalue %dx.types.ResRet.f32 %622, 0
  %624 = extractvalue %dx.types.ResRet.f32 %622, 1
  %625 = extractvalue %dx.types.ResRet.f32 %622, 2
  %626 = extractvalue %dx.types.ResRet.f32 %622, 3
  %627 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %36, %dx.types.Handle %46, float %491, float %492, float %486, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %628 = extractvalue %dx.types.ResRet.f32 %627, 0
  %629 = extractvalue %dx.types.ResRet.f32 %627, 1
  %630 = extractvalue %dx.types.ResRet.f32 %627, 2
  %631 = extractvalue %dx.types.ResRet.f32 %627, 3
  %632 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %36, %dx.types.Handle %46, float %487, float %493, float %486, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %633 = extractvalue %dx.types.ResRet.f32 %632, 0
  %634 = extractvalue %dx.types.ResRet.f32 %632, 1
  %635 = extractvalue %dx.types.ResRet.f32 %632, 2
  %636 = extractvalue %dx.types.ResRet.f32 %632, 3
  %637 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %36, %dx.types.Handle %46, float %491, float %493, float %486, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %638 = extractvalue %dx.types.ResRet.f32 %637, 0
  %639 = extractvalue %dx.types.ResRet.f32 %637, 1
  %640 = extractvalue %dx.types.ResRet.f32 %637, 2
  %641 = extractvalue %dx.types.ResRet.f32 %637, 3
  %642 = fmul fast float %613, 0x400BB67AE0000000
  %643 = fadd fast float %642, 0xBFFBB67AE0000000
  %644 = fmul fast float %643, %609
  %645 = fmul fast float %614, 0x400BB67AE0000000
  %646 = fadd fast float %645, 0xBFFBB67AE0000000
  %647 = fmul fast float %646, %610
  %648 = fmul fast float %615, 0x400BB67AE0000000
  %649 = fadd fast float %648, 0xBFFBB67AE0000000
  %650 = fmul fast float %649, %611
  %651 = fmul fast float %616, 0x4011E377A0000000
  %652 = fadd fast float %651, 0xC001E377A0000000
  %653 = fmul fast float %652, %609
  %654 = fmul fast float %618, 0x4011E377A0000000
  %655 = fadd fast float %654, 0xC001E377A0000000
  %656 = fmul fast float %655, %610
  %657 = fmul fast float %619, 0x4011E377A0000000
  %658 = fadd fast float %657, 0xC001E377A0000000
  %659 = fmul fast float %658, %611
  %660 = fmul fast float %620, 0x400BB67AE0000000
  %661 = fadd fast float %660, 0xBFFBB67AE0000000
  %662 = fmul fast float %661, %609
  %663 = fmul fast float %621, 0x400BB67AE0000000
  %664 = fadd fast float %663, 0xBFFBB67AE0000000
  %665 = fmul fast float %664, %610
  %666 = fmul fast float %623, 0x400BB67AE0000000
  %667 = fadd fast float %666, 0xBFFBB67AE0000000
  %668 = fmul fast float %667, %611
  %669 = fmul fast float %624, 0x400BB67AE0000000
  %670 = fadd fast float %669, 0xBFFBB67AE0000000
  %671 = fmul fast float %670, %609
  %672 = fmul fast float %625, 0x400BB67AE0000000
  %673 = fadd fast float %672, 0xBFFBB67AE0000000
  %674 = fmul fast float %673, %610
  %675 = fmul fast float %626, 0x400BB67AE0000000
  %676 = fadd fast float %675, 0xBFFBB67AE0000000
  %677 = fmul fast float %676, %611
  %678 = fmul fast float %628, 0x400EFBDEC0000000
  %679 = fadd fast float %678, 0xBFFEFBDEC0000000
  %680 = fmul fast float %679, %609
  %681 = fmul fast float %629, 0x400EFBDEC0000000
  %682 = fadd fast float %681, 0xBFFEFBDEC0000000
  %683 = fmul fast float %682, %610
  %684 = fmul fast float %630, 0x400EFBDEC0000000
  %685 = fadd fast float %684, 0xBFFEFBDEC0000000
  %686 = fmul fast float %685, %611
  %687 = fmul fast float %631, 0x400EFBDEC0000000
  %688 = fadd fast float %687, 0xBFFEFBDEC0000000
  %689 = fmul fast float %688, %609
  %690 = fmul fast float %633, 0x400EFBDEC0000000
  %691 = fadd fast float %690, 0xBFFEFBDEC0000000
  %692 = fmul fast float %691, %610
  %693 = fmul fast float %634, 0x400EFBDEC0000000
  %694 = fadd fast float %693, 0xBFFEFBDEC0000000
  %695 = fmul fast float %694, %611
  %696 = fmul fast float %635, 0x400EFBDEC0000000
  %697 = fadd fast float %696, 0xBFFEFBDEC0000000
  %698 = fmul fast float %697, %609
  %699 = fmul fast float %636, 0x400EFBDEC0000000
  %700 = fadd fast float %699, 0xBFFEFBDEC0000000
  %701 = fmul fast float %700, %610
  %702 = fmul fast float %638, 0x400EFBDEC0000000
  %703 = fadd fast float %702, 0xBFFEFBDEC0000000
  %704 = fmul fast float %703, %611
  %705 = fmul fast float %639, 0x400EFBDEC0000000
  %706 = fadd fast float %705, 0xBFFEFBDEC0000000
  %707 = fmul fast float %706, %609
  %708 = fmul fast float %640, 0x400EFBDEC0000000
  %709 = fadd fast float %708, 0xBFFEFBDEC0000000
  %710 = fmul fast float %709, %610
  %711 = fmul fast float %641, 0x400EFBDEC0000000
  %712 = fadd fast float %711, 0xBFFEFBDEC0000000
  %713 = fmul fast float %712, %611
  br label %714

; <label>:714                                     ; preds = %604, %494
  %715 = phi float [ %704, %604 ], [ %594, %494 ]
  %716 = phi float [ %686, %604 ], [ %576, %494 ]
  %717 = phi float [ %659, %604 ], [ %549, %494 ]
  %718 = phi float [ %695, %604 ], [ %585, %494 ]
  %719 = phi float [ %713, %604 ], [ %603, %494 ]
  %720 = phi float [ %677, %604 ], [ %567, %494 ]
  %721 = phi float [ %650, %604 ], [ %540, %494 ]
  %722 = phi float [ %668, %604 ], [ %558, %494 ]
  %723 = phi float [ %611, %604 ], [ %501, %494 ]
  %724 = phi float [ %701, %604 ], [ %591, %494 ]
  %725 = phi float [ %683, %604 ], [ %573, %494 ]
  %726 = phi float [ %656, %604 ], [ %546, %494 ]
  %727 = phi float [ %692, %604 ], [ %582, %494 ]
  %728 = phi float [ %710, %604 ], [ %600, %494 ]
  %729 = phi float [ %674, %604 ], [ %564, %494 ]
  %730 = phi float [ %647, %604 ], [ %537, %494 ]
  %731 = phi float [ %665, %604 ], [ %555, %494 ]
  %732 = phi float [ %610, %604 ], [ %500, %494 ]
  %733 = phi float [ %698, %604 ], [ %588, %494 ]
  %734 = phi float [ %680, %604 ], [ %570, %494 ]
  %735 = phi float [ %653, %604 ], [ %543, %494 ]
  %736 = phi float [ %689, %604 ], [ %579, %494 ]
  %737 = phi float [ %707, %604 ], [ %597, %494 ]
  %738 = phi float [ %671, %604 ], [ %561, %494 ]
  %739 = phi float [ %644, %604 ], [ %534, %494 ]
  %740 = phi float [ %662, %604 ], [ %552, %494 ]
  %741 = phi float [ %609, %604 ], [ %499, %494 ]
  %742 = call float @dx.op.dot3.f32(i32 55, float %741, float %732, float %723, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %743 = fmul fast float %742, 0x3FD20DD760000000
  %744 = fmul fast float %741, 0x3FD20DD760000000
  %745 = fmul fast float %202, 0x3FD4D8D7C0000000
  %746 = fmul fast float %745, %739
  %747 = fmul fast float %202, %202
  %748 = fmul fast float %747, 0x3FEE471020000000
  %749 = fadd fast float %748, 0xBFD42F6020000000
  %750 = fmul fast float %735, %749
  %751 = fmul fast float %200, 0x3FD4D8D7C0000000
  %752 = fmul fast float %751, %738
  %753 = fmul fast float %201, 0x3FD4D8D7C0000000
  %754 = fmul fast float %753, %740
  %755 = fmul fast float %202, 0xBFF17B1420000000
  %756 = fmul fast float %734, %200
  %757 = fmul fast float %736, %201
  %758 = fmul fast float %200, %200
  %759 = fmul fast float %201, %201
  %760 = fsub fast float %758, %759
  %761 = fmul fast float %760, 0x3FC17B1420000000
  %762 = fmul fast float %761, %733
  %763 = fmul fast float %200, 0x3FD17B1420000000
  %764 = fmul fast float %763, %201
  %765 = fmul fast float %764, %737
  %766 = fadd fast float %757, %756
  %767 = fmul fast float %755, %766
  %768 = fadd fast float %767, %750
  %769 = fmul fast float %768, 2.500000e-01
  %770 = fadd fast float %765, %762
  %771 = fsub fast float %770, %752
  %772 = fadd fast float %771, %769
  %773 = fadd fast float %772, %746
  %774 = fadd fast float %773, %744
  %775 = fsub fast float %774, %754
  %776 = fmul fast float %732, 0x3FD20DD760000000
  %777 = fmul fast float %745, %730
  %778 = fmul fast float %726, %749
  %779 = fmul fast float %751, %729
  %780 = fmul fast float %753, %731
  %781 = fmul fast float %725, %200
  %782 = fmul fast float %727, %201
  %783 = fmul fast float %761, %724
  %784 = fmul fast float %764, %728
  %785 = fadd fast float %782, %781
  %786 = fmul fast float %755, %785
  %787 = fadd fast float %786, %778
  %788 = fmul fast float %787, 2.500000e-01
  %789 = fadd fast float %784, %783
  %790 = fsub fast float %789, %779
  %791 = fadd fast float %790, %788
  %792 = fadd fast float %791, %777
  %793 = fadd fast float %792, %776
  %794 = fsub fast float %793, %780
  %795 = fmul fast float %723, 0x3FD20DD760000000
  %796 = fmul fast float %745, %721
  %797 = fmul fast float %717, %749
  %798 = fmul fast float %751, %720
  %799 = fmul fast float %753, %722
  %800 = fmul fast float %716, %200
  %801 = fmul fast float %718, %201
  %802 = fmul fast float %761, %715
  %803 = fmul fast float %764, %719
  %804 = fadd fast float %801, %800
  %805 = fmul fast float %755, %804
  %806 = fadd fast float %805, %797
  %807 = fmul fast float %806, 2.500000e-01
  %808 = fadd fast float %803, %802
  %809 = fsub fast float %808, %798
  %810 = fadd fast float %809, %807
  %811 = fadd fast float %810, %796
  %812 = fadd fast float %811, %795
  %813 = fsub fast float %812, %799
  %814 = call float @dx.op.binary.f32(i32 35, float %775, float 0.000000e+00)  ; FMax(a,b)
  %815 = call float @dx.op.binary.f32(i32 35, float %794, float 0.000000e+00)  ; FMax(a,b)
  %816 = call float @dx.op.binary.f32(i32 35, float %813, float 0.000000e+00)  ; FMax(a,b)
  %817 = fmul fast float %350, 0x3FD4D8D7C0000000
  %818 = fmul fast float %817, %739
  %819 = fmul fast float %350, %350
  %820 = fmul fast float %819, 0x3FEE471020000000
  %821 = fadd fast float %820, 0xBFD42F6020000000
  %822 = fmul fast float %735, %821
  %823 = fmul fast float %348, 0x3FD4D8D7C0000000
  %824 = fmul fast float %823, %738
  %825 = fmul fast float %349, 0x3FD4D8D7C0000000
  %826 = fmul fast float %825, %740
  %827 = fmul fast float %350, 0xBFF17B1420000000
  %828 = fmul fast float %734, %348
  %829 = fmul fast float %736, %349
  %830 = fmul fast float %348, %348
  %831 = fmul fast float %349, %349
  %832 = fsub fast float %830, %831
  %833 = fmul fast float %832, 0x3FC17B1420000000
  %834 = fmul fast float %833, %733
  %835 = fmul fast float %349, 0x3FD17B1420000000
  %836 = fmul fast float %835, %348
  %837 = fmul fast float %836, %737
  %838 = fadd fast float %829, %828
  %839 = fmul fast float %827, %838
  %840 = fadd fast float %839, %822
  %841 = fmul fast float %840, 2.500000e-01
  %842 = fadd fast float %837, %834
  %843 = fsub fast float %842, %824
  %844 = fadd fast float %843, %841
  %845 = fadd fast float %844, %818
  %846 = fadd fast float %845, %744
  %847 = fsub fast float %846, %826
  %848 = fmul fast float %817, %730
  %849 = fmul fast float %726, %821
  %850 = fmul fast float %823, %729
  %851 = fmul fast float %825, %731
  %852 = fmul fast float %725, %348
  %853 = fmul fast float %727, %349
  %854 = fmul fast float %833, %724
  %855 = fmul fast float %836, %728
  %856 = fadd fast float %853, %852
  %857 = fmul fast float %827, %856
  %858 = fadd fast float %857, %849
  %859 = fmul fast float %858, 2.500000e-01
  %860 = fadd fast float %855, %854
  %861 = fsub fast float %860, %850
  %862 = fadd fast float %861, %859
  %863 = fadd fast float %862, %848
  %864 = fadd fast float %863, %776
  %865 = fsub fast float %864, %851
  %866 = fmul fast float %817, %721
  %867 = fmul fast float %717, %821
  %868 = fmul fast float %823, %720
  %869 = fmul fast float %825, %722
  %870 = fmul fast float %716, %348
  %871 = fmul fast float %718, %349
  %872 = fmul fast float %833, %715
  %873 = fmul fast float %836, %719
  %874 = fadd fast float %871, %870
  %875 = fmul fast float %827, %874
  %876 = fadd fast float %875, %867
  %877 = fmul fast float %876, 2.500000e-01
  %878 = fadd fast float %873, %872
  %879 = fsub fast float %878, %868
  %880 = fadd fast float %879, %877
  %881 = fadd fast float %880, %866
  %882 = fadd fast float %881, %795
  %883 = fsub fast float %882, %869
  %884 = call float @dx.op.binary.f32(i32 35, float %847, float 0.000000e+00)  ; FMax(a,b)
  %885 = call float @dx.op.binary.f32(i32 35, float %865, float 0.000000e+00)  ; FMax(a,b)
  %886 = call float @dx.op.binary.f32(i32 35, float %883, float 0.000000e+00)  ; FMax(a,b)
  br label %887

; <label>:887                                     ; preds = %714, %401
  %888 = phi float [ %884, %714 ], [ 0.000000e+00, %401 ]
  %889 = phi float [ %885, %714 ], [ 0.000000e+00, %401 ]
  %890 = phi float [ %886, %714 ], [ 0.000000e+00, %401 ]
  %891 = phi float [ %814, %714 ], [ 0.000000e+00, %401 ]
  %892 = phi float [ %815, %714 ], [ 0.000000e+00, %401 ]
  %893 = phi float [ %816, %714 ], [ 0.000000e+00, %401 ]
  %894 = phi float [ %743, %714 ], [ 0.000000e+00, %401 ]
  %895 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 271)  ; CBufferLoadLegacy(handle,regIndex)
  %896 = extractvalue %dx.types.CBufRet.f32 %895, 0
  %897 = fcmp fast ogt float %896, 0.000000e+00
  %898 = and i1 %403, %897
  br i1 %898, label %899, label %1103, !dx.controlflow.hints !100

; <label>:899                                     ; preds = %887
  %900 = extractvalue %dx.types.CBufRet.f32 %358, 2
  %901 = fadd fast float %900, %271
  %902 = fmul fast float %200, 3.200000e+01
  %903 = fmul fast float %201, 3.200000e+01
  %904 = fadd fast float %361, %902
  %905 = fadd fast float %362, %903
  %906 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %907 = extractvalue %dx.types.CBufRet.f32 %906, 0
  %908 = extractvalue %dx.types.CBufRet.f32 %906, 1
  %909 = fsub fast float %904, %907
  %910 = fsub fast float %905, %908
  %911 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %912 = extractvalue %dx.types.CBufRet.f32 %911, 0
  %913 = extractvalue %dx.types.CBufRet.f32 %911, 1
  %914 = fmul fast float %909, %912
  %915 = fmul fast float %910, %913
  %916 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %917 = extractvalue %dx.types.CBufRet.f32 %916, 0
  %918 = extractvalue %dx.types.CBufRet.f32 %916, 1
  %919 = fsub fast float %361, %917
  %920 = fsub fast float %362, %918
  %921 = fmul fast float %919, %919
  %922 = fmul fast float %920, %920
  %923 = fadd fast float %921, %922
  %924 = call float @dx.op.unary.f32(i32 24, float %923)  ; Sqrt(value)
  %925 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %926 = extractvalue %dx.types.CBufRet.f32 %925, 0
  %927 = extractvalue %dx.types.CBufRet.f32 %925, 1
  %928 = fsub fast float %924, %926
  %929 = fdiv fast float %928, %927
  %930 = call float @dx.op.unary.f32(i32 7, float %929)  ; Saturate(value)
  %931 = fmul fast float %930, 2.000000e+00
  %932 = fsub fast float 3.000000e+00, %931
  %933 = fmul fast float %930, %930
  %934 = fmul fast float %933, %932
  %935 = fcmp fast oge float %914, 0.000000e+00
  %936 = fcmp fast ole float %914, 1.000000e+00
  %937 = and i1 %936, %935
  %938 = fcmp fast oge float %915, 0.000000e+00
  %939 = and i1 %938, %937
  %940 = fcmp fast ole float %915, 1.000000e+00
  %941 = and i1 %940, %939
  %942 = fcmp fast ogt float %934, 0.000000e+00
  %943 = and i1 %942, %941
  br i1 %943, label %944, label %1067, !dx.controlflow.hints !101

; <label>:944                                     ; preds = %899
  %945 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %946 = extractvalue %dx.types.CBufRet.f32 %945, 2
  %947 = extractvalue %dx.types.CBufRet.f32 %945, 3
  %948 = fmul fast float %946, %914
  %949 = fmul fast float %947, %915
  %950 = call float @dx.op.unary.f32(i32 27, float %948)  ; Round_ni(value)
  %951 = call float @dx.op.unary.f32(i32 27, float %949)  ; Round_ni(value)
  %952 = fptosi float %950 to i32
  %953 = fptosi float %951 to i32
  %954 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %30, i32 0, i32 %952, i32 %953, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %955 = extractvalue %dx.types.ResRet.i32 %954, 0
  %956 = lshr i32 %955, 16
  %957 = icmp eq i32 %956, 65535
  br i1 %957, label %1067, label %958

; <label>:958                                     ; preds = %944
  %959 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %960 = extractvalue %dx.types.CBufRet.f32 %959, 0
  %961 = fmul fast float %960, %914
  %962 = extractvalue %dx.types.CBufRet.f32 %959, 1
  %963 = fadd fast float %961, %962
  %964 = extractvalue %dx.types.CBufRet.f32 %959, 2
  %965 = fmul fast float %964, %915
  %966 = extractvalue %dx.types.CBufRet.f32 %959, 3
  %967 = fadd fast float %965, %966
  %968 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %48, float %963, float %967, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %969 = extractvalue %dx.types.ResRet.f32 %968, 0
  %970 = extractvalue %dx.types.ResRet.f32 %968, 1
  %971 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %972 = extractvalue %dx.types.CBufRet.f32 %971, 1
  %973 = extractvalue %dx.types.CBufRet.f32 %971, 0
  %974 = fsub fast float %972, %973
  %975 = fmul fast float %974, %969
  %976 = fadd fast float %975, %973
  %977 = extractvalue %dx.types.CBufRet.f32 %971, 3
  %978 = extractvalue %dx.types.CBufRet.f32 %971, 2
  %979 = fsub fast float %977, %978
  %980 = fmul fast float %979, %970
  %981 = fadd fast float %980, %978
  %982 = fsub fast float %901, %976
  %983 = fsub fast float %981, %976
  %984 = fdiv fast float %982, %983
  %985 = call float @dx.op.unary.f32(i32 7, float %984)  ; Saturate(value)
  %986 = extractvalue %dx.types.CBufRet.f32 %895, 1
  %987 = extractvalue %dx.types.CBufRet.f32 %945, 0
  %988 = extractvalue %dx.types.CBufRet.f32 %945, 1
  %989 = fmul fast float %987, %914
  %990 = fmul fast float %988, %915
  %991 = fmul fast float %989, 1.250000e-01
  %992 = fmul fast float %990, 1.250000e-01
  %993 = call float @dx.op.unary.f32(i32 27, float %991)  ; Round_ni(value)
  %994 = call float @dx.op.unary.f32(i32 27, float %992)  ; Round_ni(value)
  %995 = fmul fast float %993, 8.000000e+00
  %996 = fmul fast float %994, 8.000000e+00
  %997 = fsub fast float %989, %995
  %998 = fsub fast float %990, %996
  %999 = fadd fast float %997, 5.000000e-01
  %1000 = fadd fast float %998, 5.000000e-01
  %1001 = and i32 %956, 255
  %1002 = lshr i32 %955, 24
  %1003 = mul nuw nsw i32 %1001, 9
  %1004 = uitofp i32 %1003 to float
  %1005 = mul nuw nsw i32 %1002, 9
  %1006 = uitofp i32 %1005 to float
  %1007 = fadd fast float %999, %1004
  %1008 = fadd fast float %1000, %1006
  %1009 = fdiv fast float %1007, %896
  %1010 = fdiv fast float %1008, %986
  %1011 = fmul fast float %985, 4.375000e-01
  %1012 = fadd fast float %1011, 3.125000e-02
  %1013 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %48, float %1009, float %1010, float %1012, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1014 = extractvalue %dx.types.ResRet.f32 %1013, 0
  %1015 = extractvalue %dx.types.ResRet.f32 %1013, 1
  %1016 = extractvalue %dx.types.ResRet.f32 %1013, 2
  %1017 = fadd fast float %1011, 5.312500e-01
  %1018 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %48, float %1009, float %1010, float %1017, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1019 = extractvalue %dx.types.ResRet.f32 %1018, 0
  %1020 = extractvalue %dx.types.ResRet.f32 %1018, 1
  %1021 = extractvalue %dx.types.ResRet.f32 %1018, 2
  %1022 = fmul fast float %1019, 2.000000e+00
  %1023 = fmul fast float %1020, 2.000000e+00
  %1024 = fmul fast float %1021, 2.000000e+00
  %1025 = fadd fast float %1022, -1.000000e+00
  %1026 = fadd fast float %1023, -1.000000e+00
  %1027 = fadd fast float %1024, -1.000000e+00
  %1028 = fmul fast float %1025, %1025
  %1029 = fmul fast float %1026, %1026
  %1030 = fadd fast float %1028, %1029
  %1031 = fmul fast float %1027, %1027
  %1032 = fadd fast float %1030, %1031
  %1033 = call float @dx.op.unary.f32(i32 24, float %1032)  ; Sqrt(value)
  %1034 = fcmp fast ogt float %1033, 0.000000e+00
  br i1 %1034, label %1035, label %1039

; <label>:1035                                    ; preds = %958
  %1036 = fdiv fast float %1025, %1033
  %1037 = fdiv fast float %1026, %1033
  %1038 = fdiv fast float %1027, %1033
  br label %1039

; <label>:1039                                    ; preds = %1035, %958
  %1040 = phi float [ %1036, %1035 ], [ 0.000000e+00, %958 ]
  %1041 = phi float [ %1037, %1035 ], [ 0.000000e+00, %958 ]
  %1042 = phi float [ %1038, %1035 ], [ 0.000000e+00, %958 ]
  %1043 = call float @dx.op.dot3.f32(i32 55, float %1040, float %1041, float %1042, float %200, float %201, float %202)  ; Dot3(ax,ay,az,bx,by,bz)
  %1044 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1043)  ; FMax(a,b)
  %1045 = fmul fast float %1044, 0x400C5BF8A0000000
  %1046 = fmul fast float %1014, %934
  %1047 = fmul fast float %1046, %1045
  %1048 = fmul fast float %1015, %934
  %1049 = fmul fast float %1048, %1045
  %1050 = fmul fast float %1016, %934
  %1051 = fmul fast float %1050, %1045
  %1052 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1053 = extractvalue %dx.types.CBufRet.f32 %1052, 3
  %1054 = fmul fast float %1047, %1053
  %1055 = fmul fast float %1049, %1053
  %1056 = fmul fast float %1051, %1053
  %1057 = fcmp fast ogt float %901, %981
  br i1 %1057, label %1058, label %1067

; <label>:1058                                    ; preds = %1039
  %1059 = fmul fast float %983, 0x3FC24924A0000000
  %1060 = fsub fast float %901, %981
  %1061 = fdiv fast float %1060, %1059
  %1062 = call float @dx.op.unary.f32(i32 7, float %1061)  ; Saturate(value)
  %1063 = fsub fast float 1.000000e+00, %1062
  %1064 = fmul fast float %1063, %1054
  %1065 = fmul fast float %1063, %1055
  %1066 = fmul fast float %1063, %1056
  br label %1067

; <label>:1067                                    ; preds = %1058, %1039, %944, %899
  %1068 = phi float [ %1066, %1058 ], [ %1056, %1039 ], [ 0.000000e+00, %944 ], [ 0.000000e+00, %899 ]
  %1069 = phi float [ %1065, %1058 ], [ %1055, %1039 ], [ 0.000000e+00, %944 ], [ 0.000000e+00, %899 ]
  %1070 = phi float [ %1064, %1058 ], [ %1054, %1039 ], [ 0.000000e+00, %944 ], [ 0.000000e+00, %899 ]
  %1071 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1070)  ; FMax(a,b)
  %1072 = fmul fast float %1071, 0x3FD20DD760000000
  %1073 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float %348, float %349, float %350)  ; Dot3(ax,ay,az,bx,by,bz)
  %1074 = fmul fast float %1073, 0x3FDF454380000000
  %1075 = fmul fast float %1073, %1073
  %1076 = fmul fast float %1075, 0x3FEE471020000000
  %1077 = fadd fast float %1076, 0xBFD42F6020000000
  %1078 = call float @dx.op.dot3.f32(i32 55, float %1071, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %1074, float %1077)  ; Dot3(ax,ay,az,bx,by,bz)
  %1079 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1069)  ; FMax(a,b)
  %1080 = fmul fast float %1079, 0x3FD20DD760000000
  %1081 = call float @dx.op.dot3.f32(i32 55, float %1079, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %1074, float %1077)  ; Dot3(ax,ay,az,bx,by,bz)
  %1082 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1068)  ; FMax(a,b)
  %1083 = fmul fast float %1082, 0x3FD20DD760000000
  %1084 = call float @dx.op.dot3.f32(i32 55, float %1082, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %1074, float %1077)  ; Dot3(ax,ay,az,bx,by,bz)
  %1085 = call float @dx.op.binary.f32(i32 35, float %1072, float 0.000000e+00)  ; FMax(a,b)
  %1086 = call float @dx.op.binary.f32(i32 35, float %1080, float 0.000000e+00)  ; FMax(a,b)
  %1087 = call float @dx.op.binary.f32(i32 35, float %1083, float 0.000000e+00)  ; FMax(a,b)
  %1088 = call float @dx.op.binary.f32(i32 35, float %1078, float 0.000000e+00)  ; FMax(a,b)
  %1089 = call float @dx.op.binary.f32(i32 35, float %1081, float 0.000000e+00)  ; FMax(a,b)
  %1090 = call float @dx.op.binary.f32(i32 35, float %1084, float 0.000000e+00)  ; FMax(a,b)
  %1091 = fmul fast float %1085, %402
  %1092 = fmul fast float %1086, %402
  %1093 = fmul fast float %1087, %402
  %1094 = fadd fast float %1091, %891
  %1095 = fadd fast float %1092, %892
  %1096 = fadd fast float %1093, %893
  %1097 = fmul fast float %1088, %402
  %1098 = fmul fast float %1089, %402
  %1099 = fmul fast float %1090, %402
  %1100 = fadd fast float %1097, %888
  %1101 = fadd fast float %1098, %889
  %1102 = fadd fast float %1099, %890
  br label %1103

; <label>:1103                                    ; preds = %1067, %887
  %1104 = phi float [ %1100, %1067 ], [ %888, %887 ]
  %1105 = phi float [ %1101, %1067 ], [ %889, %887 ]
  %1106 = phi float [ %1102, %1067 ], [ %890, %887 ]
  %1107 = phi float [ %1094, %1067 ], [ %891, %887 ]
  %1108 = phi float [ %1095, %1067 ], [ %892, %887 ]
  %1109 = phi float [ %1096, %1067 ], [ %893, %887 ]
  %1110 = fcmp fast olt float %402, 1.000000e+00
  br i1 %1110, label %1111, label %1934, !dx.controlflow.hints !102

; <label>:1111                                    ; preds = %1103
  %1112 = extractvalue %dx.types.CBufRet.f32 %358, 2
  %1113 = fadd fast float %1112, %271
  %1114 = fmul fast float %200, 3.200000e+01
  %1115 = fmul fast float %201, 3.200000e+01
  %1116 = fadd fast float %361, %1114
  %1117 = fadd fast float %362, %1115
  %1118 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %1119 = extractvalue %dx.types.CBufRet.f32 %1118, 0
  %1120 = extractvalue %dx.types.CBufRet.f32 %1118, 1
  %1121 = fsub fast float %1116, %1119
  %1122 = fsub fast float %1117, %1120
  %1123 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %1124 = extractvalue %dx.types.CBufRet.f32 %1123, 0
  %1125 = extractvalue %dx.types.CBufRet.f32 %1123, 1
  %1126 = fmul fast float %1121, %1124
  %1127 = fmul fast float %1122, %1125
  %1128 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %1129 = extractvalue %dx.types.CBufRet.f32 %1128, 0
  %1130 = fmul fast float %1126, %1129
  %1131 = extractvalue %dx.types.CBufRet.f32 %1128, 1
  %1132 = fadd fast float %1130, %1131
  %1133 = extractvalue %dx.types.CBufRet.f32 %1128, 2
  %1134 = fmul fast float %1133, %1127
  %1135 = extractvalue %dx.types.CBufRet.f32 %1128, 3
  %1136 = fadd fast float %1134, %1135
  %1137 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %48, float %1132, float %1136, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1138 = extractvalue %dx.types.ResRet.f32 %1137, 0
  %1139 = extractvalue %dx.types.ResRet.f32 %1137, 1
  %1140 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %1141 = extractvalue %dx.types.CBufRet.f32 %1140, 1
  %1142 = extractvalue %dx.types.CBufRet.f32 %1140, 0
  %1143 = fsub fast float %1141, %1142
  %1144 = fmul fast float %1143, %1138
  %1145 = fadd fast float %1144, %1142
  %1146 = extractvalue %dx.types.CBufRet.f32 %1140, 3
  %1147 = extractvalue %dx.types.CBufRet.f32 %1140, 2
  %1148 = fsub fast float %1146, %1147
  %1149 = fmul fast float %1148, %1139
  %1150 = fadd fast float %1149, %1147
  %1151 = fsub fast float %1113, %1145
  %1152 = fsub fast float %1150, %1145
  %1153 = fdiv fast float %1151, %1152
  %1154 = call float @dx.op.unary.f32(i32 7, float %1153)  ; Saturate(value)
  %1155 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 264)  ; CBufferLoadLegacy(handle,regIndex)
  %1156 = extractvalue %dx.types.CBufRet.f32 %1155, 0
  %1157 = fmul fast float %1156, %1154
  %1158 = extractvalue %dx.types.CBufRet.f32 %1155, 1
  %1159 = fadd fast float %1157, %1158
  %1160 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %48, float %1132, float %1136, float %1159, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1161 = extractvalue %dx.types.ResRet.f32 %1160, 0
  %1162 = extractvalue %dx.types.ResRet.f32 %1160, 1
  %1163 = extractvalue %dx.types.ResRet.f32 %1160, 2
  %1164 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 258)  ; CBufferLoadLegacy(handle,regIndex)
  %1165 = extractvalue %dx.types.CBufRet.f32 %1164, 0
  %1166 = extractvalue %dx.types.CBufRet.f32 %1164, 1
  %1167 = extractvalue %dx.types.CBufRet.f32 %1164, 2
  %1168 = fmul fast float %1165, %1161
  %1169 = fmul fast float %1166, %1162
  %1170 = fmul fast float %1167, %1163
  %1171 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 257)  ; CBufferLoadLegacy(handle,regIndex)
  %1172 = extractvalue %dx.types.CBufRet.f32 %1171, 0
  %1173 = extractvalue %dx.types.CBufRet.f32 %1171, 1
  %1174 = extractvalue %dx.types.CBufRet.f32 %1171, 2
  %1175 = fadd fast float %1168, %1172
  %1176 = fadd fast float %1169, %1173
  %1177 = fadd fast float %1170, %1174
  %1178 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 262)  ; CBufferLoadLegacy(handle,regIndex)
  %1179 = extractvalue %dx.types.CBufRet.f32 %1178, 0
  %1180 = fmul fast float %1179, %1126
  %1181 = extractvalue %dx.types.CBufRet.f32 %1178, 1
  %1182 = fadd fast float %1180, %1181
  %1183 = extractvalue %dx.types.CBufRet.f32 %1178, 2
  %1184 = fmul fast float %1183, %1127
  %1185 = extractvalue %dx.types.CBufRet.f32 %1178, 3
  %1186 = fadd fast float %1184, %1185
  %1187 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 265)  ; CBufferLoadLegacy(handle,regIndex)
  %1188 = extractvalue %dx.types.CBufRet.f32 %1187, 0
  %1189 = extractvalue %dx.types.CBufRet.f32 %1187, 1
  %1190 = extractvalue %dx.types.CBufRet.f32 %1187, 2
  %1191 = extractvalue %dx.types.CBufRet.f32 %1187, 3
  %1192 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 266)  ; CBufferLoadLegacy(handle,regIndex)
  %1193 = extractvalue %dx.types.CBufRet.f32 %1192, 0
  %1194 = extractvalue %dx.types.CBufRet.f32 %1192, 1
  %1195 = extractvalue %dx.types.CBufRet.f32 %1192, 2
  %1196 = extractvalue %dx.types.CBufRet.f32 %1192, 3
  %1197 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %48, float %1182, float %1186, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1198 = extractvalue %dx.types.ResRet.f32 %1197, 0
  %1199 = extractvalue %dx.types.ResRet.f32 %1197, 1
  %1200 = extractvalue %dx.types.ResRet.f32 %1197, 2
  %1201 = extractvalue %dx.types.ResRet.f32 %1197, 3
  %1202 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %48, float %1182, float %1186, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1203 = extractvalue %dx.types.ResRet.f32 %1202, 0
  %1204 = extractvalue %dx.types.ResRet.f32 %1202, 1
  %1205 = extractvalue %dx.types.ResRet.f32 %1202, 2
  %1206 = extractvalue %dx.types.ResRet.f32 %1202, 3
  %1207 = fmul fast float %1198, %1175
  %1208 = fmul fast float %1203, %1175
  %1209 = fmul fast float %1205, %1175
  %1210 = fmul fast float %1201, %1175
  %1211 = fadd fast float %1207, %1188
  %1212 = fadd fast float %1208, %1189
  %1213 = fadd fast float %1209, %1190
  %1214 = fadd fast float %1210, %1191
  %1215 = fmul fast float %1199, %1175
  %1216 = fmul fast float %1204, %1175
  %1217 = fadd fast float %1215, %1193
  %1218 = fadd fast float %1216, %1194
  %1219 = fmul fast float %1200, %1175
  %1220 = fmul fast float %1206, %1175
  %1221 = fadd fast float %1219, %1195
  %1222 = fadd fast float %1220, %1196
  %1223 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %48, float %1182, float %1186, float 2.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1224 = extractvalue %dx.types.ResRet.f32 %1223, 0
  %1225 = extractvalue %dx.types.ResRet.f32 %1223, 1
  %1226 = extractvalue %dx.types.ResRet.f32 %1223, 2
  %1227 = extractvalue %dx.types.ResRet.f32 %1223, 3
  %1228 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %48, float %1182, float %1186, float 3.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1229 = extractvalue %dx.types.ResRet.f32 %1228, 0
  %1230 = extractvalue %dx.types.ResRet.f32 %1228, 1
  %1231 = extractvalue %dx.types.ResRet.f32 %1228, 2
  %1232 = extractvalue %dx.types.ResRet.f32 %1228, 3
  %1233 = fmul fast float %1224, %1176
  %1234 = fmul fast float %1229, %1176
  %1235 = fmul fast float %1231, %1176
  %1236 = fmul fast float %1227, %1176
  %1237 = fadd fast float %1211, %1233
  %1238 = fadd fast float %1212, %1234
  %1239 = fadd fast float %1213, %1235
  %1240 = fadd fast float %1214, %1236
  %1241 = fmul fast float %1225, %1176
  %1242 = fmul fast float %1230, %1176
  %1243 = fadd fast float %1217, %1241
  %1244 = fadd fast float %1218, %1242
  %1245 = fmul fast float %1226, %1176
  %1246 = fmul fast float %1232, %1176
  %1247 = fadd fast float %1221, %1245
  %1248 = fadd fast float %1222, %1246
  %1249 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %48, float %1182, float %1186, float 4.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1250 = extractvalue %dx.types.ResRet.f32 %1249, 0
  %1251 = extractvalue %dx.types.ResRet.f32 %1249, 1
  %1252 = extractvalue %dx.types.ResRet.f32 %1249, 2
  %1253 = extractvalue %dx.types.ResRet.f32 %1249, 3
  %1254 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %48, float %1182, float %1186, float 5.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1255 = extractvalue %dx.types.ResRet.f32 %1254, 0
  %1256 = extractvalue %dx.types.ResRet.f32 %1254, 1
  %1257 = extractvalue %dx.types.ResRet.f32 %1254, 2
  %1258 = extractvalue %dx.types.ResRet.f32 %1254, 3
  %1259 = fmul fast float %1250, %1177
  %1260 = fmul fast float %1255, %1177
  %1261 = fmul fast float %1257, %1177
  %1262 = fmul fast float %1253, %1177
  %1263 = fadd fast float %1237, %1259
  %1264 = fadd fast float %1238, %1260
  %1265 = fadd fast float %1239, %1261
  %1266 = fadd fast float %1240, %1262
  %1267 = fmul fast float %1251, %1177
  %1268 = fmul fast float %1256, %1177
  %1269 = fadd fast float %1243, %1267
  %1270 = fadd fast float %1244, %1268
  %1271 = fmul fast float %1252, %1177
  %1272 = fmul fast float %1258, %1177
  %1273 = fadd fast float %1247, %1271
  %1274 = fadd fast float %1248, %1272
  %1275 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 255)  ; CBufferLoadLegacy(handle,regIndex)
  %1276 = extractvalue %dx.types.CBufRet.f32 %1275, 0
  %1277 = fsub fast float %361, %1276
  %1278 = fsub fast float %1119, %361
  %1279 = call float @dx.op.binary.f32(i32 35, float %1278, float %1277)  ; FMax(a,b)
  %1280 = extractvalue %dx.types.CBufRet.f32 %1275, 1
  %1281 = fsub fast float %362, %1280
  %1282 = fsub fast float %1120, %362
  %1283 = call float @dx.op.binary.f32(i32 35, float %1282, float %1281)  ; FMax(a,b)
  %1284 = call float @dx.op.binary.f32(i32 35, float %1279, float %1283)  ; FMax(a,b)
  %1285 = extractvalue %dx.types.CBufRet.f32 %1123, 3
  %1286 = fmul fast float %1285, %1284
  %1287 = call float @dx.op.unary.f32(i32 7, float %1286)  ; Saturate(value)
  %1288 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 272)  ; CBufferLoadLegacy(handle,regIndex)
  %1289 = extractvalue %dx.types.CBufRet.f32 %1288, 0
  %1290 = extractvalue %dx.types.CBufRet.f32 %1288, 1
  %1291 = extractvalue %dx.types.CBufRet.f32 %1288, 2
  %1292 = extractvalue %dx.types.CBufRet.f32 %1288, 3
  %1293 = fsub fast float %1289, %1263
  %1294 = fsub fast float %1290, %1264
  %1295 = fsub fast float %1291, %1265
  %1296 = fsub fast float %1292, %1266
  %1297 = fmul fast float %1293, %1287
  %1298 = fmul fast float %1294, %1287
  %1299 = fmul fast float %1295, %1287
  %1300 = fmul fast float %1296, %1287
  %1301 = fadd fast float %1297, %1263
  %1302 = fadd fast float %1298, %1264
  %1303 = fadd fast float %1299, %1265
  %1304 = fadd fast float %1300, %1266
  %1305 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 273)  ; CBufferLoadLegacy(handle,regIndex)
  %1306 = extractvalue %dx.types.CBufRet.f32 %1305, 0
  %1307 = extractvalue %dx.types.CBufRet.f32 %1305, 1
  %1308 = fsub fast float %1306, %1269
  %1309 = fsub fast float %1307, %1270
  %1310 = fmul fast float %1308, %1287
  %1311 = fmul fast float %1309, %1287
  %1312 = fadd fast float %1310, %1269
  %1313 = fadd fast float %1311, %1270
  %1314 = extractvalue %dx.types.CBufRet.f32 %1305, 2
  %1315 = extractvalue %dx.types.CBufRet.f32 %1305, 3
  %1316 = fsub fast float %1314, %1273
  %1317 = fsub fast float %1315, %1274
  %1318 = fmul fast float %1316, %1287
  %1319 = fmul fast float %1317, %1287
  %1320 = fadd fast float %1318, %1273
  %1321 = fadd fast float %1319, %1274
  %1322 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 267)  ; CBufferLoadLegacy(handle,regIndex)
  %1323 = extractvalue %dx.types.CBufRet.f32 %1322, 0
  %1324 = fmul fast float %1323, %1301
  %1325 = fmul fast float %1323, %1302
  %1326 = fmul fast float %1323, %1303
  %1327 = fmul fast float %1323, %1304
  %1328 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 268)  ; CBufferLoadLegacy(handle,regIndex)
  %1329 = extractvalue %dx.types.CBufRet.f32 %1328, 0
  %1330 = fmul fast float %1329, %1312
  %1331 = fmul fast float %1329, %1313
  %1332 = fadd fast float %1330, %1324
  %1333 = fadd fast float %1331, %1326
  %1334 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 269)  ; CBufferLoadLegacy(handle,regIndex)
  %1335 = extractvalue %dx.types.CBufRet.f32 %1334, 0
  %1336 = fmul fast float %1335, %1320
  %1337 = fmul fast float %1335, %1321
  %1338 = fadd fast float %1332, %1336
  %1339 = fadd fast float %1333, %1337
  %1340 = extractvalue %dx.types.CBufRet.f32 %1322, 1
  %1341 = fmul fast float %1340, %1301
  %1342 = fmul fast float %1340, %1302
  %1343 = fmul fast float %1340, %1303
  %1344 = fmul fast float %1340, %1304
  %1345 = extractvalue %dx.types.CBufRet.f32 %1328, 1
  %1346 = fmul fast float %1345, %1312
  %1347 = fmul fast float %1345, %1313
  %1348 = fadd fast float %1346, %1341
  %1349 = fadd fast float %1347, %1343
  %1350 = extractvalue %dx.types.CBufRet.f32 %1334, 1
  %1351 = fmul fast float %1350, %1320
  %1352 = fmul fast float %1350, %1321
  %1353 = fadd fast float %1348, %1351
  %1354 = fadd fast float %1349, %1352
  %1355 = extractvalue %dx.types.CBufRet.f32 %1322, 2
  %1356 = fmul fast float %1355, %1301
  %1357 = fmul fast float %1355, %1302
  %1358 = fmul fast float %1355, %1303
  %1359 = fmul fast float %1355, %1304
  %1360 = extractvalue %dx.types.CBufRet.f32 %1328, 2
  %1361 = fmul fast float %1360, %1312
  %1362 = fmul fast float %1360, %1313
  %1363 = fadd fast float %1361, %1356
  %1364 = fadd fast float %1362, %1358
  %1365 = extractvalue %dx.types.CBufRet.f32 %1334, 2
  %1366 = fmul fast float %1365, %1320
  %1367 = fmul fast float %1365, %1321
  %1368 = fadd fast float %1363, %1366
  %1369 = fadd fast float %1364, %1367
  %1370 = fmul fast float %1357, %1357
  %1371 = fmul fast float %1369, %1369
  %1372 = fmul fast float %1359, %1359
  %1373 = fadd fast float %1372, %1370
  %1374 = fadd fast float %1373, %1371
  %1375 = call float @dx.op.unary.f32(i32 24, float %1374)  ; Sqrt(value)
  %1376 = fcmp fast ugt float %1375, 0.000000e+00
  br i1 %1376, label %1377, label %1392

; <label>:1377                                    ; preds = %1111
  %1378 = fsub fast float -0.000000e+00, %1359
  %1379 = fdiv fast float %1378, %1375
  %1380 = fsub fast float -0.000000e+00, %1357
  %1381 = fdiv fast float %1380, %1375
  %1382 = fdiv fast float %1369, %1375
  %1383 = fmul fast float %1368, 0x3FE279A760000000
  %1384 = fmul fast float %1381, %1357
  %1385 = fmul fast float %1382, %1369
  %1386 = fmul fast float %1379, %1359
  %1387 = fadd fast float %1384, %1386
  %1388 = fsub fast float %1387, %1385
  %1389 = call float @dx.op.unary.f32(i32 6, float %1388)  ; FAbs(value)
  %1390 = fadd fast float %1389, 0x3DDB7CDFE0000000
  %1391 = fdiv fast float %1383, %1390
  br label %1392

; <label>:1392                                    ; preds = %1377, %1111
  %1393 = phi float [ %1391, %1377 ], [ 1.000000e+00, %1111 ]
  %1394 = fmul fast float %1342, %1342
  %1395 = fmul fast float %1354, %1354
  %1396 = fmul fast float %1344, %1344
  %1397 = fadd fast float %1396, %1394
  %1398 = fadd fast float %1397, %1395
  %1399 = call float @dx.op.unary.f32(i32 24, float %1398)  ; Sqrt(value)
  %1400 = fcmp fast ugt float %1399, 0.000000e+00
  br i1 %1400, label %1401, label %1416

; <label>:1401                                    ; preds = %1392
  %1402 = fsub fast float -0.000000e+00, %1344
  %1403 = fdiv fast float %1402, %1399
  %1404 = fsub fast float -0.000000e+00, %1342
  %1405 = fdiv fast float %1404, %1399
  %1406 = fdiv fast float %1354, %1399
  %1407 = fmul fast float %1353, 0x3FE279A760000000
  %1408 = fmul fast float %1405, %1342
  %1409 = fmul fast float %1406, %1354
  %1410 = fmul fast float %1403, %1344
  %1411 = fadd fast float %1408, %1410
  %1412 = fsub fast float %1411, %1409
  %1413 = call float @dx.op.unary.f32(i32 6, float %1412)  ; FAbs(value)
  %1414 = fadd fast float %1413, 0x3DDB7CDFE0000000
  %1415 = fdiv fast float %1407, %1414
  br label %1416

; <label>:1416                                    ; preds = %1401, %1392
  %1417 = phi float [ %1415, %1401 ], [ 1.000000e+00, %1392 ]
  %1418 = call float @dx.op.binary.f32(i32 36, float %1417, float %1393)  ; FMin(a,b)
  %1419 = fmul fast float %1325, %1325
  %1420 = fmul fast float %1339, %1339
  %1421 = fmul fast float %1327, %1327
  %1422 = fadd fast float %1421, %1419
  %1423 = fadd fast float %1422, %1420
  %1424 = call float @dx.op.unary.f32(i32 24, float %1423)  ; Sqrt(value)
  %1425 = fcmp fast ugt float %1424, 0.000000e+00
  br i1 %1425, label %1426, label %1441

; <label>:1426                                    ; preds = %1416
  %1427 = fsub fast float -0.000000e+00, %1327
  %1428 = fdiv fast float %1427, %1424
  %1429 = fsub fast float -0.000000e+00, %1325
  %1430 = fdiv fast float %1429, %1424
  %1431 = fdiv fast float %1339, %1424
  %1432 = fmul fast float %1338, 0x3FE279A760000000
  %1433 = fmul fast float %1430, %1325
  %1434 = fmul fast float %1431, %1339
  %1435 = fmul fast float %1428, %1327
  %1436 = fadd fast float %1433, %1435
  %1437 = fsub fast float %1436, %1434
  %1438 = call float @dx.op.unary.f32(i32 6, float %1437)  ; FAbs(value)
  %1439 = fadd fast float %1438, 0x3DDB7CDFE0000000
  %1440 = fdiv fast float %1432, %1439
  br label %1441

; <label>:1441                                    ; preds = %1426, %1416
  %1442 = phi float [ %1440, %1426 ], [ 1.000000e+00, %1416 ]
  %1443 = call float @dx.op.binary.f32(i32 36, float %1442, float %1418)  ; FMin(a,b)
  %1444 = call float @dx.op.unary.f32(i32 7, float %1443)  ; Saturate(value)
  %1445 = fcmp fast olt float %1444, 1.000000e+00
  br i1 %1445, label %1446, label %1456

; <label>:1446                                    ; preds = %1441
  %1447 = fmul fast float %1444, %1325
  %1448 = fmul fast float %1444, %1339
  %1449 = fmul fast float %1444, %1327
  %1450 = fmul fast float %1444, %1342
  %1451 = fmul fast float %1444, %1354
  %1452 = fmul fast float %1444, %1344
  %1453 = fmul fast float %1444, %1357
  %1454 = fmul fast float %1444, %1369
  %1455 = fmul fast float %1444, %1359
  br label %1456

; <label>:1456                                    ; preds = %1446, %1441
  %1457 = phi float [ %1453, %1446 ], [ %1357, %1441 ]
  %1458 = phi float [ %1454, %1446 ], [ %1369, %1441 ]
  %1459 = phi float [ %1455, %1446 ], [ %1359, %1441 ]
  %1460 = phi float [ %1450, %1446 ], [ %1342, %1441 ]
  %1461 = phi float [ %1451, %1446 ], [ %1354, %1441 ]
  %1462 = phi float [ %1452, %1446 ], [ %1344, %1441 ]
  %1463 = phi float [ %1447, %1446 ], [ %1325, %1441 ]
  %1464 = phi float [ %1448, %1446 ], [ %1339, %1441 ]
  %1465 = phi float [ %1449, %1446 ], [ %1327, %1441 ]
  %1466 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1338)  ; FMax(a,b)
  %1467 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1353)  ; FMax(a,b)
  %1468 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1368)  ; FMax(a,b)
  %1469 = fcmp fast oge float %1126, 0.000000e+00
  %1470 = and i1 %1469, %897
  %1471 = fcmp fast ole float %1126, 1.000000e+00
  %1472 = and i1 %1471, %1470
  %1473 = fcmp fast oge float %1127, 0.000000e+00
  %1474 = and i1 %1473, %1472
  %1475 = fcmp fast ole float %1127, 1.000000e+00
  %1476 = and i1 %1475, %1474
  br i1 %1476, label %1477, label %1622, !dx.controlflow.hints !103

; <label>:1477                                    ; preds = %1456
  %1478 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %1479 = extractvalue %dx.types.CBufRet.f32 %1478, 2
  %1480 = extractvalue %dx.types.CBufRet.f32 %1478, 3
  %1481 = fmul fast float %1479, %1126
  %1482 = fmul fast float %1480, %1127
  %1483 = call float @dx.op.unary.f32(i32 27, float %1481)  ; Round_ni(value)
  %1484 = call float @dx.op.unary.f32(i32 27, float %1482)  ; Round_ni(value)
  %1485 = fptosi float %1483 to i32
  %1486 = fptosi float %1484 to i32
  %1487 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %30, i32 0, i32 %1485, i32 %1486, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1488 = extractvalue %dx.types.ResRet.i32 %1487, 0
  %1489 = and i32 %1488, 65535
  %1490 = lshr i32 %1488, 16
  %1491 = icmp eq i32 %1489, 65535
  br i1 %1491, label %1528, label %1492

; <label>:1492                                    ; preds = %1477
  %1493 = extractvalue %dx.types.CBufRet.f32 %895, 1
  %1494 = extractvalue %dx.types.CBufRet.f32 %1478, 0
  %1495 = extractvalue %dx.types.CBufRet.f32 %1478, 1
  %1496 = fmul fast float %1494, %1126
  %1497 = fmul fast float %1495, %1127
  %1498 = fmul fast float %1496, 1.250000e-01
  %1499 = fmul fast float %1497, 1.250000e-01
  %1500 = call float @dx.op.unary.f32(i32 27, float %1498)  ; Round_ni(value)
  %1501 = call float @dx.op.unary.f32(i32 27, float %1499)  ; Round_ni(value)
  %1502 = fmul fast float %1500, 8.000000e+00
  %1503 = fmul fast float %1501, 8.000000e+00
  %1504 = and i32 %1488, 255
  %1505 = lshr i32 %1488, 8
  %1506 = and i32 %1505, 255
  %1507 = mul nuw nsw i32 %1504, 9
  %1508 = uitofp i32 %1507 to float
  %1509 = mul nuw nsw i32 %1506, 9
  %1510 = uitofp i32 %1509 to float
  %1511 = fadd fast float %1508, 5.000000e-01
  %1512 = fadd fast float %1511, %1496
  %1513 = fsub fast float %1512, %1502
  %1514 = fadd fast float %1510, 5.000000e-01
  %1515 = fadd fast float %1514, %1497
  %1516 = fsub fast float %1515, %1503
  %1517 = fdiv fast float %1513, %896
  %1518 = fdiv fast float %1516, %1493
  %1519 = fmul fast float %1154, 4.375000e-01
  %1520 = fadd fast float %1519, 3.125000e-02
  %1521 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %48, float %1517, float %1518, float %1520, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1522 = extractvalue %dx.types.ResRet.f32 %1521, 0
  %1523 = extractvalue %dx.types.ResRet.f32 %1521, 1
  %1524 = extractvalue %dx.types.ResRet.f32 %1521, 2
  %1525 = fadd fast float %1522, %1466
  %1526 = fadd fast float %1523, %1467
  %1527 = fadd fast float %1524, %1468
  br label %1528

; <label>:1528                                    ; preds = %1492, %1477
  %1529 = phi float [ %1527, %1492 ], [ %1468, %1477 ]
  %1530 = phi float [ %1526, %1492 ], [ %1467, %1477 ]
  %1531 = phi float [ %1525, %1492 ], [ %1466, %1477 ]
  %1532 = icmp eq i32 %1490, 65535
  br i1 %1532, label %1622, label %1533

; <label>:1533                                    ; preds = %1528
  %1534 = extractvalue %dx.types.CBufRet.f32 %895, 1
  %1535 = extractvalue %dx.types.CBufRet.f32 %1478, 0
  %1536 = extractvalue %dx.types.CBufRet.f32 %1478, 1
  %1537 = fmul fast float %1535, %1126
  %1538 = fmul fast float %1536, %1127
  %1539 = fmul fast float %1537, 1.250000e-01
  %1540 = fmul fast float %1538, 1.250000e-01
  %1541 = call float @dx.op.unary.f32(i32 27, float %1539)  ; Round_ni(value)
  %1542 = call float @dx.op.unary.f32(i32 27, float %1540)  ; Round_ni(value)
  %1543 = fmul fast float %1541, 8.000000e+00
  %1544 = fmul fast float %1542, 8.000000e+00
  %1545 = fsub fast float %1537, %1543
  %1546 = fsub fast float %1538, %1544
  %1547 = fadd fast float %1545, 5.000000e-01
  %1548 = fadd fast float %1546, 5.000000e-01
  %1549 = and i32 %1490, 255
  %1550 = lshr i32 %1488, 24
  %1551 = mul nuw nsw i32 %1549, 9
  %1552 = uitofp i32 %1551 to float
  %1553 = mul nuw nsw i32 %1550, 9
  %1554 = uitofp i32 %1553 to float
  %1555 = fadd fast float %1547, %1552
  %1556 = fadd fast float %1548, %1554
  %1557 = fdiv fast float %1555, %896
  %1558 = fdiv fast float %1556, %1534
  %1559 = fmul fast float %1154, 4.375000e-01
  %1560 = fadd fast float %1559, 3.125000e-02
  %1561 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %48, float %1557, float %1558, float %1560, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1562 = extractvalue %dx.types.ResRet.f32 %1561, 0
  %1563 = extractvalue %dx.types.ResRet.f32 %1561, 1
  %1564 = extractvalue %dx.types.ResRet.f32 %1561, 2
  %1565 = fadd fast float %1559, 5.312500e-01
  %1566 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %48, float %1557, float %1558, float %1565, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1567 = extractvalue %dx.types.ResRet.f32 %1566, 0
  %1568 = extractvalue %dx.types.ResRet.f32 %1566, 1
  %1569 = extractvalue %dx.types.ResRet.f32 %1566, 2
  %1570 = fmul fast float %1567, 2.000000e+00
  %1571 = fmul fast float %1568, 2.000000e+00
  %1572 = fmul fast float %1569, 2.000000e+00
  %1573 = fadd fast float %1570, -1.000000e+00
  %1574 = fadd fast float %1571, -1.000000e+00
  %1575 = fadd fast float %1572, -1.000000e+00
  %1576 = fmul fast float %1573, %1573
  %1577 = fmul fast float %1574, %1574
  %1578 = fadd fast float %1576, %1577
  %1579 = fmul fast float %1575, %1575
  %1580 = fadd fast float %1578, %1579
  %1581 = call float @dx.op.unary.f32(i32 24, float %1580)  ; Sqrt(value)
  %1582 = fcmp fast ogt float %1581, 0.000000e+00
  br i1 %1582, label %1583, label %1587

; <label>:1583                                    ; preds = %1533
  %1584 = fdiv fast float %1573, %1581
  %1585 = fdiv fast float %1574, %1581
  %1586 = fdiv fast float %1575, %1581
  br label %1587

; <label>:1587                                    ; preds = %1583, %1533
  %1588 = phi float [ %1584, %1583 ], [ 0.000000e+00, %1533 ]
  %1589 = phi float [ %1585, %1583 ], [ 0.000000e+00, %1533 ]
  %1590 = phi float [ %1586, %1583 ], [ 0.000000e+00, %1533 ]
  %1591 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1592 = extractvalue %dx.types.CBufRet.f32 %1591, 0
  %1593 = extractvalue %dx.types.CBufRet.f32 %1591, 1
  %1594 = fsub fast float %361, %1592
  %1595 = fsub fast float %362, %1593
  %1596 = fmul fast float %1594, %1594
  %1597 = fmul fast float %1595, %1595
  %1598 = fadd fast float %1596, %1597
  %1599 = call float @dx.op.unary.f32(i32 24, float %1598)  ; Sqrt(value)
  %1600 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %1601 = extractvalue %dx.types.CBufRet.f32 %1600, 0
  %1602 = extractvalue %dx.types.CBufRet.f32 %1600, 1
  %1603 = fsub fast float %1599, %1601
  %1604 = fdiv fast float %1603, %1602
  %1605 = call float @dx.op.unary.f32(i32 7, float %1604)  ; Saturate(value)
  %1606 = fmul fast float %1605, 2.000000e+00
  %1607 = fsub fast float 3.000000e+00, %1606
  %1608 = fmul fast float %1605, %1605
  %1609 = fmul fast float %1608, %1607
  %1610 = call float @dx.op.dot3.f32(i32 55, float %1588, float %1589, float %1590, float %200, float %201, float %202)  ; Dot3(ax,ay,az,bx,by,bz)
  %1611 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1610)  ; FMax(a,b)
  %1612 = fmul fast float %1611, 0x400C5BF8A0000000
  %1613 = fmul fast float %1609, %1562
  %1614 = fmul fast float %1613, %1612
  %1615 = fadd fast float %1614, %1531
  %1616 = fmul fast float %1609, %1563
  %1617 = fmul fast float %1616, %1612
  %1618 = fadd fast float %1617, %1530
  %1619 = fmul fast float %1609, %1564
  %1620 = fmul fast float %1619, %1612
  %1621 = fadd fast float %1620, %1529
  br label %1622

; <label>:1622                                    ; preds = %1587, %1528, %1456
  %1623 = phi float [ %1621, %1587 ], [ %1529, %1528 ], [ %1468, %1456 ]
  %1624 = phi float [ %1618, %1587 ], [ %1530, %1528 ], [ %1467, %1456 ]
  %1625 = phi float [ %1615, %1587 ], [ %1531, %1528 ], [ %1466, %1456 ]
  %1626 = fcmp fast ogt float %1113, %1150
  %1627 = and i1 %1469, %1626
  %1628 = and i1 %1471, %1627
  %1629 = and i1 %1473, %1628
  %1630 = and i1 %1475, %1629
  br i1 %1630, label %1631, label %1688, !dx.controlflow.hints !104

; <label>:1631                                    ; preds = %1622
  %1632 = fmul fast float %1152, 0x3FC24924A0000000
  %1633 = fsub fast float %1113, %1150
  %1634 = fdiv fast float %1633, %1632
  %1635 = call float @dx.op.unary.f32(i32 7, float %1634)  ; Saturate(value)
  %1636 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 275)  ; CBufferLoadLegacy(handle,regIndex)
  %1637 = extractvalue %dx.types.CBufRet.f32 %1636, 0
  %1638 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 276)  ; CBufferLoadLegacy(handle,regIndex)
  %1639 = extractvalue %dx.types.CBufRet.f32 %1638, 0
  %1640 = extractvalue %dx.types.CBufRet.f32 %1638, 1
  %1641 = extractvalue %dx.types.CBufRet.f32 %1638, 2
  %1642 = fsub fast float %1637, %1625
  %1643 = fsub fast float %1639, %1463
  %1644 = fsub fast float %1640, %1464
  %1645 = fsub fast float %1641, %1465
  %1646 = fmul fast float %1642, %1635
  %1647 = fmul fast float %1643, %1635
  %1648 = fmul fast float %1644, %1635
  %1649 = fmul fast float %1645, %1635
  %1650 = fadd fast float %1646, %1625
  %1651 = fadd fast float %1647, %1463
  %1652 = fadd fast float %1648, %1464
  %1653 = fadd fast float %1649, %1465
  %1654 = extractvalue %dx.types.CBufRet.f32 %1636, 1
  %1655 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 278)  ; CBufferLoadLegacy(handle,regIndex)
  %1656 = extractvalue %dx.types.CBufRet.f32 %1655, 0
  %1657 = extractvalue %dx.types.CBufRet.f32 %1655, 1
  %1658 = extractvalue %dx.types.CBufRet.f32 %1655, 2
  %1659 = fsub fast float %1654, %1624
  %1660 = fsub fast float %1656, %1460
  %1661 = fsub fast float %1657, %1461
  %1662 = fsub fast float %1658, %1462
  %1663 = fmul fast float %1659, %1635
  %1664 = fmul fast float %1660, %1635
  %1665 = fmul fast float %1661, %1635
  %1666 = fmul fast float %1662, %1635
  %1667 = fadd fast float %1663, %1624
  %1668 = fadd fast float %1664, %1460
  %1669 = fadd fast float %1665, %1461
  %1670 = fadd fast float %1666, %1462
  %1671 = extractvalue %dx.types.CBufRet.f32 %1636, 2
  %1672 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 280)  ; CBufferLoadLegacy(handle,regIndex)
  %1673 = extractvalue %dx.types.CBufRet.f32 %1672, 0
  %1674 = extractvalue %dx.types.CBufRet.f32 %1672, 1
  %1675 = extractvalue %dx.types.CBufRet.f32 %1672, 2
  %1676 = fsub fast float %1671, %1623
  %1677 = fsub fast float %1673, %1457
  %1678 = fsub fast float %1674, %1458
  %1679 = fsub fast float %1675, %1459
  %1680 = fmul fast float %1676, %1635
  %1681 = fmul fast float %1677, %1635
  %1682 = fmul fast float %1678, %1635
  %1683 = fmul fast float %1679, %1635
  %1684 = fadd fast float %1680, %1623
  %1685 = fadd fast float %1681, %1457
  %1686 = fadd fast float %1682, %1458
  %1687 = fadd fast float %1683, %1459
  br label %1688

; <label>:1688                                    ; preds = %1631, %1622
  %1689 = phi float [ %1684, %1631 ], [ %1623, %1622 ]
  %1690 = phi float [ %1685, %1631 ], [ %1457, %1622 ]
  %1691 = phi float [ %1686, %1631 ], [ %1458, %1622 ]
  %1692 = phi float [ %1687, %1631 ], [ %1459, %1622 ]
  %1693 = phi float [ %1667, %1631 ], [ %1624, %1622 ]
  %1694 = phi float [ %1668, %1631 ], [ %1460, %1622 ]
  %1695 = phi float [ %1669, %1631 ], [ %1461, %1622 ]
  %1696 = phi float [ %1670, %1631 ], [ %1462, %1622 ]
  %1697 = phi float [ %1650, %1631 ], [ %1625, %1622 ]
  %1698 = phi float [ %1651, %1631 ], [ %1463, %1622 ]
  %1699 = phi float [ %1652, %1631 ], [ %1464, %1622 ]
  %1700 = phi float [ %1653, %1631 ], [ %1465, %1622 ]
  %1701 = extractvalue %dx.types.CBufRet.f32 %1275, 3
  %1702 = fmul fast float %1701, %1697
  %1703 = fmul fast float %1701, %1693
  %1704 = fmul fast float %1701, %1689
  %1705 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1706 = extractvalue %dx.types.CBufRet.f32 %1705, 3
  %1707 = fmul fast float %1702, %1706
  %1708 = fmul fast float %1703, %1706
  %1709 = fmul fast float %1704, %1706
  %1710 = call float @dx.op.dot3.f32(i32 55, float %1707, float %1708, float %1709, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1711 = fmul fast float %1710, 0x3FD20DD760000000
  %1712 = fmul fast float %1698, 1.500000e+00
  %1713 = fmul fast float %1712, %1701
  %1714 = fmul fast float %1713, %1706
  %1715 = fmul fast float %1699, 1.500000e+00
  %1716 = fmul fast float %1715, %1701
  %1717 = fmul fast float %1716, %1706
  %1718 = fmul fast float %1700, 1.500000e+00
  %1719 = fmul fast float %1718, %1701
  %1720 = fmul fast float %1719, %1706
  %1721 = fmul fast float %1694, 1.500000e+00
  %1722 = fmul fast float %1721, %1701
  %1723 = fmul fast float %1722, %1706
  %1724 = fmul fast float %1695, 1.500000e+00
  %1725 = fmul fast float %1724, %1701
  %1726 = fmul fast float %1725, %1706
  %1727 = fmul fast float %1696, 1.500000e+00
  %1728 = fmul fast float %1727, %1701
  %1729 = fmul fast float %1728, %1706
  %1730 = fmul fast float %1690, 1.500000e+00
  %1731 = fmul fast float %1730, %1701
  %1732 = fmul fast float %1731, %1706
  %1733 = fmul fast float %1691, 1.500000e+00
  %1734 = fmul fast float %1733, %1701
  %1735 = fmul fast float %1734, %1706
  %1736 = fmul fast float %1692, 1.500000e+00
  %1737 = fmul fast float %1736, %1701
  %1738 = fmul fast float %1737, %1706
  %1739 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1707)  ; FMax(a,b)
  %1740 = call float @dx.op.dot3.f32(i32 55, float %1714, float %1717, float %1720, float %1714, float %1717, float %1720)  ; Dot3(ax,ay,az,bx,by,bz)
  %1741 = fcmp fast oeq float %1740, 0.000000e+00
  %1742 = fcmp fast oeq float %1739, 0.000000e+00
  %1743 = or i1 %1742, %1741
  br i1 %1743, label %1773, label %1744

; <label>:1744                                    ; preds = %1688
  %1745 = fsub fast float -0.000000e+00, %1720
  %1746 = fsub fast float -0.000000e+00, %1714
  %1747 = call float @dx.op.unary.f32(i32 24, float %1740)  ; Sqrt(value)
  %1748 = fdiv fast float %1747, %1739
  %1749 = fcmp fast ogt float %1748, 0x3FFB6F8900000000
  %1750 = select i1 %1749, float 0x3FFB6F8900000000, float %1748
  %1751 = fmul fast float %1750, 0x3FE8A23460000000
  %1752 = call float @dx.op.unary.f32(i32 7, float %1751)  ; Saturate(value)
  %1753 = call float @dx.op.binary.f32(i32 35, float %1750, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %1754 = fmul fast float %1752, %1739
  %1755 = fmul fast float %1753, 0x3FF279A740000000
  %1756 = fadd fast float %1755, -1.000000e+00
  %1757 = call float @dx.op.dot3.f32(i32 55, float %1745, float %1746, float %1717, float %1745, float %1746, float %1717)  ; Dot3(ax,ay,az,bx,by,bz)
  %1758 = call float @dx.op.unary.f32(i32 25, float %1757)  ; Rsqrt(value)
  %1759 = fmul fast float %1758, %1745
  %1760 = fmul fast float %1758, %1746
  %1761 = fmul fast float %1758, %1717
  %1762 = fmul fast float %1756, %1756
  %1763 = fsub fast float 1.000000e+00, %1762
  %1764 = fmul fast float %1753, 0x40005F8BE0000000
  %1765 = fsub fast float 0x400C5BF8A0000000, %1764
  %1766 = fdiv fast float %1754, %1765
  %1767 = fmul fast float %1766, 0x3FEE31C3C0000000
  %1768 = fmul fast float %1767, %1763
  %1769 = fmul fast float %1753, 0x3FDACB7480000000
  %1770 = fadd fast float %1769, 0xBFD7347680000000
  %1771 = fmul fast float %1770, %1766
  %1772 = fmul fast float %1771, %1763
  br label %1773

; <label>:1773                                    ; preds = %1744, %1688
  %1774 = phi float [ %1759, %1744 ], [ 0.000000e+00, %1688 ]
  %1775 = phi float [ %1760, %1744 ], [ 0.000000e+00, %1688 ]
  %1776 = phi float [ %1761, %1744 ], [ 0.000000e+00, %1688 ]
  %1777 = phi float [ %1768, %1744 ], [ 0.000000e+00, %1688 ]
  %1778 = phi float [ %1772, %1744 ], [ 0.000000e+00, %1688 ]
  %1779 = call float @dx.op.dot3.f32(i32 55, float %1774, float %1775, float %1776, float %200, float %201, float %202)  ; Dot3(ax,ay,az,bx,by,bz)
  %1780 = fmul fast float %1779, %1779
  %1781 = fmul fast float %1780, 0x3FEE471020000000
  %1782 = fadd fast float %1781, 0xBFD42F6020000000
  %1783 = fmul fast float %1739, 0x3FD20DD760000000
  %1784 = fmul fast float %1782, %1778
  %1785 = fmul fast float %1777, 0x3FDF454380000000
  %1786 = fmul fast float %1785, %1779
  %1787 = fadd fast float %1786, %1783
  %1788 = fadd fast float %1787, %1784
  %1789 = call float @dx.op.dot3.f32(i32 55, float %1774, float %1775, float %1776, float %348, float %349, float %350)  ; Dot3(ax,ay,az,bx,by,bz)
  %1790 = fmul fast float %1789, 0x3FDF454380000000
  %1791 = fmul fast float %1789, %1789
  %1792 = fmul fast float %1791, 0x3FEE471020000000
  %1793 = fadd fast float %1792, 0xBFD42F6020000000
  %1794 = call float @dx.op.dot3.f32(i32 55, float %1739, float %1777, float %1778, float 0x3FD20DD760000000, float %1790, float %1793)  ; Dot3(ax,ay,az,bx,by,bz)
  %1795 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1708)  ; FMax(a,b)
  %1796 = call float @dx.op.dot3.f32(i32 55, float %1723, float %1726, float %1729, float %1723, float %1726, float %1729)  ; Dot3(ax,ay,az,bx,by,bz)
  %1797 = fcmp fast oeq float %1796, 0.000000e+00
  %1798 = fcmp fast oeq float %1795, 0.000000e+00
  %1799 = or i1 %1798, %1797
  br i1 %1799, label %1829, label %1800

; <label>:1800                                    ; preds = %1773
  %1801 = fsub fast float -0.000000e+00, %1729
  %1802 = fsub fast float -0.000000e+00, %1723
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
  %1813 = call float @dx.op.dot3.f32(i32 55, float %1801, float %1802, float %1726, float %1801, float %1802, float %1726)  ; Dot3(ax,ay,az,bx,by,bz)
  %1814 = call float @dx.op.unary.f32(i32 25, float %1813)  ; Rsqrt(value)
  %1815 = fmul fast float %1814, %1801
  %1816 = fmul fast float %1814, %1802
  %1817 = fmul fast float %1814, %1726
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

; <label>:1829                                    ; preds = %1800, %1773
  %1830 = phi float [ %1815, %1800 ], [ 0.000000e+00, %1773 ]
  %1831 = phi float [ %1816, %1800 ], [ 0.000000e+00, %1773 ]
  %1832 = phi float [ %1817, %1800 ], [ 0.000000e+00, %1773 ]
  %1833 = phi float [ %1824, %1800 ], [ 0.000000e+00, %1773 ]
  %1834 = phi float [ %1828, %1800 ], [ 0.000000e+00, %1773 ]
  %1835 = call float @dx.op.dot3.f32(i32 55, float %1830, float %1831, float %1832, float %200, float %201, float %202)  ; Dot3(ax,ay,az,bx,by,bz)
  %1836 = fmul fast float %1835, %1835
  %1837 = fmul fast float %1836, 0x3FEE471020000000
  %1838 = fadd fast float %1837, 0xBFD42F6020000000
  %1839 = fmul fast float %1795, 0x3FD20DD760000000
  %1840 = fmul fast float %1838, %1834
  %1841 = fmul fast float %1833, 0x3FDF454380000000
  %1842 = fmul fast float %1841, %1835
  %1843 = fadd fast float %1842, %1839
  %1844 = fadd fast float %1843, %1840
  %1845 = call float @dx.op.dot3.f32(i32 55, float %1830, float %1831, float %1832, float %348, float %349, float %350)  ; Dot3(ax,ay,az,bx,by,bz)
  %1846 = fmul fast float %1845, 0x3FDF454380000000
  %1847 = fmul fast float %1845, %1845
  %1848 = fmul fast float %1847, 0x3FEE471020000000
  %1849 = fadd fast float %1848, 0xBFD42F6020000000
  %1850 = call float @dx.op.dot3.f32(i32 55, float %1795, float %1833, float %1834, float 0x3FD20DD760000000, float %1846, float %1849)  ; Dot3(ax,ay,az,bx,by,bz)
  %1851 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1709)  ; FMax(a,b)
  %1852 = call float @dx.op.dot3.f32(i32 55, float %1732, float %1735, float %1738, float %1732, float %1735, float %1738)  ; Dot3(ax,ay,az,bx,by,bz)
  %1853 = fcmp fast oeq float %1852, 0.000000e+00
  %1854 = fcmp fast oeq float %1851, 0.000000e+00
  %1855 = or i1 %1854, %1853
  br i1 %1855, label %1885, label %1856

; <label>:1856                                    ; preds = %1829
  %1857 = fsub fast float -0.000000e+00, %1738
  %1858 = fsub fast float -0.000000e+00, %1732
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
  %1869 = call float @dx.op.dot3.f32(i32 55, float %1857, float %1858, float %1735, float %1857, float %1858, float %1735)  ; Dot3(ax,ay,az,bx,by,bz)
  %1870 = call float @dx.op.unary.f32(i32 25, float %1869)  ; Rsqrt(value)
  %1871 = fmul fast float %1870, %1857
  %1872 = fmul fast float %1870, %1858
  %1873 = fmul fast float %1870, %1735
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

; <label>:1885                                    ; preds = %1856, %1829
  %1886 = phi float [ %1871, %1856 ], [ 0.000000e+00, %1829 ]
  %1887 = phi float [ %1872, %1856 ], [ 0.000000e+00, %1829 ]
  %1888 = phi float [ %1873, %1856 ], [ 0.000000e+00, %1829 ]
  %1889 = phi float [ %1880, %1856 ], [ 0.000000e+00, %1829 ]
  %1890 = phi float [ %1884, %1856 ], [ 0.000000e+00, %1829 ]
  %1891 = call float @dx.op.dot3.f32(i32 55, float %1886, float %1887, float %1888, float %200, float %201, float %202)  ; Dot3(ax,ay,az,bx,by,bz)
  %1892 = fmul fast float %1891, %1891
  %1893 = fmul fast float %1892, 0x3FEE471020000000
  %1894 = fadd fast float %1893, 0xBFD42F6020000000
  %1895 = fmul fast float %1851, 0x3FD20DD760000000
  %1896 = fmul fast float %1894, %1890
  %1897 = fmul fast float %1889, 0x3FDF454380000000
  %1898 = fmul fast float %1897, %1891
  %1899 = fadd fast float %1898, %1895
  %1900 = fadd fast float %1899, %1896
  %1901 = call float @dx.op.dot3.f32(i32 55, float %1886, float %1887, float %1888, float %348, float %349, float %350)  ; Dot3(ax,ay,az,bx,by,bz)
  %1902 = fmul fast float %1901, 0x3FDF454380000000
  %1903 = fmul fast float %1901, %1901
  %1904 = fmul fast float %1903, 0x3FEE471020000000
  %1905 = fadd fast float %1904, 0xBFD42F6020000000
  %1906 = call float @dx.op.dot3.f32(i32 55, float %1851, float %1889, float %1890, float 0x3FD20DD760000000, float %1902, float %1905)  ; Dot3(ax,ay,az,bx,by,bz)
  %1907 = call float @dx.op.binary.f32(i32 35, float %1788, float 0.000000e+00)  ; FMax(a,b)
  %1908 = call float @dx.op.binary.f32(i32 35, float %1844, float 0.000000e+00)  ; FMax(a,b)
  %1909 = call float @dx.op.binary.f32(i32 35, float %1900, float 0.000000e+00)  ; FMax(a,b)
  %1910 = call float @dx.op.binary.f32(i32 35, float %1794, float 0.000000e+00)  ; FMax(a,b)
  %1911 = call float @dx.op.binary.f32(i32 35, float %1850, float 0.000000e+00)  ; FMax(a,b)
  %1912 = call float @dx.op.binary.f32(i32 35, float %1906, float 0.000000e+00)  ; FMax(a,b)
  %1913 = fsub fast float %1107, %1907
  %1914 = fsub fast float %1108, %1908
  %1915 = fsub fast float %1109, %1909
  %1916 = fmul fast float %1913, %402
  %1917 = fmul fast float %1914, %402
  %1918 = fmul fast float %1915, %402
  %1919 = fadd fast float %1916, %1907
  %1920 = fadd fast float %1917, %1908
  %1921 = fadd fast float %1918, %1909
  %1922 = fsub fast float %1104, %1910
  %1923 = fsub fast float %1105, %1911
  %1924 = fsub fast float %1106, %1912
  %1925 = fmul fast float %1922, %402
  %1926 = fmul fast float %1923, %402
  %1927 = fmul fast float %1924, %402
  %1928 = fadd fast float %1925, %1910
  %1929 = fadd fast float %1926, %1911
  %1930 = fadd fast float %1927, %1912
  %1931 = fsub fast float %894, %1711
  %1932 = fmul fast float %1931, %402
  %1933 = fadd fast float %1932, %1711
  br label %1934

; <label>:1934                                    ; preds = %1885, %1103
  %1935 = phi float [ %1928, %1885 ], [ %1104, %1103 ]
  %1936 = phi float [ %1929, %1885 ], [ %1105, %1103 ]
  %1937 = phi float [ %1930, %1885 ], [ %1106, %1103 ]
  %1938 = phi float [ %1919, %1885 ], [ %1107, %1103 ]
  %1939 = phi float [ %1920, %1885 ], [ %1108, %1103 ]
  %1940 = phi float [ %1921, %1885 ], [ %1109, %1103 ]
  %1941 = phi float [ %1933, %1885 ], [ %894, %1103 ]
  %1942 = fmul fast float %1938, 0x3FEE623840000000
  %1943 = fmul fast float %1939, 0x3FEE623840000000
  %1944 = fmul fast float %1940, 0x3FEE623840000000
  %1945 = fmul fast float %1935, 0x3FEE623840000000
  %1946 = fmul fast float %1936, 0x3FEE623840000000
  %1947 = fmul fast float %1937, 0x3FEE623840000000
  %1948 = call float @dx.op.dot3.f32(i32 55, float %1942, float %1943, float %1944, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1949 = select i1 %129, float 0.000000e+00, float %1942
  %1950 = select i1 %129, float %1948, float %1943
  %1951 = select i1 %129, float 0.000000e+00, float %1944
  %1952 = call float @dx.op.dot3.f32(i32 55, float %1945, float %1946, float %1947, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1953 = select i1 %129, float 0.000000e+00, float %1945
  %1954 = select i1 %129, float %1952, float %1946
  %1955 = select i1 %129, float 0.000000e+00, float %1947
  %1956 = fmul fast float %342, 9.843750e-01
  %1957 = fmul fast float %212, 9.843750e-01
  %1958 = fadd fast float %1956, 7.812500e-03
  %1959 = fadd fast float %1957, 7.812500e-03
  %1960 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %48, float %1958, float %1959, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1961 = extractvalue %dx.types.ResRet.f32 %1960, 2
  %1962 = extractvalue %dx.types.ResRet.f32 %1960, 3
  %1963 = fmul fast float %1961, %320
  %1964 = fmul fast float %1961, %321
  %1965 = fmul fast float %1961, %340
  %1966 = fadd fast float %1963, %1962
  %1967 = fadd fast float %1964, %1962
  %1968 = fadd fast float %1965, %1962
  %1969 = call float @dx.op.binary.f32(i32 35, float %1967, float %1968)  ; FMax(a,b)
  %1970 = call float @dx.op.binary.f32(i32 35, float %1966, float %1969)  ; FMax(a,b)
  %1971 = fsub fast float 1.000000e+00, %1970
  %1972 = fmul fast float %1970, %212
  %1973 = fadd fast float %1972, %212
  %1974 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 252)  ; CBufferLoadLegacy(handle,regIndex)
  %1975 = extractvalue %dx.types.CBufRet.f32 %1974, 2
  %1976 = extractvalue %dx.types.CBufRet.f32 %1974, 3
  %1977 = fmul fast float %1973, %1975
  %1978 = fadd fast float %1977, %1976
  %1979 = call float @dx.op.unary.f32(i32 7, float %1978)  ; Saturate(value)
  %1980 = fsub fast float 1.000000e+00, %357
  %1981 = fadd fast float %1980, %1979
  %1982 = call float @dx.op.unary.f32(i32 7, float %1981)  ; Saturate(value)
  %1983 = fcmp fast olt float %1982, 1.000000e+00
  br i1 %1983, label %1984, label %2459

; <label>:1984                                    ; preds = %1934
  %1985 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %1986 = extractvalue %dx.types.CBufRet.f32 %1985, 2
  %1987 = extractvalue %dx.types.CBufRet.f32 %1985, 3
  %1988 = fmul fast float %1986, %77
  %1989 = fmul fast float %1987, %78
  %1990 = fptoui float %1988 to i32
  %1991 = fptoui float %1989 to i32
  %1992 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %1993 = extractvalue %dx.types.CBufRet.f32 %1992, 0
  %1994 = extractvalue %dx.types.CBufRet.f32 %1992, 2
  %1995 = extractvalue %dx.types.CBufRet.f32 %1992, 3
  %1996 = fadd fast float %235, -4.000000e+00
  %1997 = call float @dx.op.binary.f32(i32 35, float %1996, float 0.000000e+00)  ; FMax(a,b)
  %1998 = fadd fast float %1997, %1993
  %1999 = fmul fast float %1998, %1994
  %2000 = call float @dx.op.unary.f32(i32 23, float %1999)  ; Log(value)
  %2001 = fmul fast float %2000, %1995
  %2002 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %2003 = extractvalue %dx.types.CBufRet.f32 %2002, 2
  %2004 = fmul fast float %2001, %2003
  %2005 = call float @dx.op.unary.f32(i32 7, float %2004)  ; Saturate(value)
  %2006 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %2007 = extractvalue %dx.types.CBufRet.i32 %2006, 1
  %2008 = add i32 %2007, -1
  %2009 = uitofp i32 %2007 to float
  %2010 = fmul fast float %2009, %2005
  %2011 = fptoui float %2010 to i32
  %2012 = call i32 @dx.op.binary.i32(i32 40, i32 %2011, i32 %2008)  ; UMin(a,b)
  %2013 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %2014 = extractvalue %dx.types.CBufRet.i32 %2013, 2
  %2015 = extractvalue %dx.types.CBufRet.i32 %2013, 3
  %2016 = call i32 @dx.op.tertiary.i32(i32 49, i32 %1991, i32 %2014, i32 %1990)  ; UMad(a,b,c)
  %2017 = call i32 @dx.op.tertiary.i32(i32 49, i32 %2012, i32 %2015, i32 %2016)  ; UMad(a,b,c)
  %2018 = call float @dx.op.binary.f32(i32 35, float %235, float 0.000000e+00)  ; FMax(a,b)
  %2019 = fptoui float %2018 to i32
  %2020 = lshr i32 %2019, 5
  %2021 = call i32 @dx.op.binary.i32(i32 40, i32 %2020, i32 8191)  ; UMin(a,b)
  %2022 = call float @dx.op.unary.f32(i32 7, float %331)  ; Saturate(value)
  %2023 = fcmp fast ogt float %2022, 0.000000e+00
  %2024 = fcmp fast ogt float %350, 0.000000e+00
  %2025 = and i1 %2024, %2023
  br i1 %2025, label %2026, label %2055

; <label>:2026                                    ; preds = %1984
  %2027 = call float @dx.op.dot3.f32(i32 55, float %348, float %349, float %350, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %2028 = call float @dx.op.binary.f32(i32 35, float %2027, float -1.000000e+00)  ; FMax(a,b)
  %2029 = call float @dx.op.binary.f32(i32 36, float %2028, float 1.000000e+00)  ; FMin(a,b)
  %2030 = fmul fast float %2029, %2029
  %2031 = fsub fast float 1.000000e+00, %2030
  %2032 = fmul fast float %2031, 0x3FFC6E2300000000
  %2033 = fsub fast float 1.000000e+00, %2032
  %2034 = fcmp fast ogt float %2033, 0.000000e+00
  %2035 = call float @dx.op.unary.f32(i32 24, float %2033)  ; Sqrt(value)
  %2036 = fsub fast float 1.000000e+00, %2035
  %2037 = call float @dx.op.unary.f32(i32 23, float %2036)  ; Log(value)
  %2038 = fmul fast float %2037, 5.000000e+00
  %2039 = call float @dx.op.unary.f32(i32 21, float %2038)  ; Exp(value)
  %2040 = fmul fast float %2039, 0x3FEF591A60000000
  %2041 = fadd fast float %2040, 0x3F94DCB540000000
  %2042 = select i1 %2034, float %2041, float 1.000000e+00
  %2043 = fcmp fast oge float %2042, 1.000000e+00
  %2044 = fmul fast float %2027, 2.000000e+00
  %2045 = fadd fast float %2044, %350
  %2046 = select i1 %2043, float %2045, float %350
  %2047 = fsub fast float %2046, %350
  %2048 = fmul fast float %2047, %2022
  %2049 = fadd fast float %2048, %350
  %2050 = call float @dx.op.dot3.f32(i32 55, float %348, float %349, float %2049, float %348, float %349, float %2049)  ; Dot3(ax,ay,az,bx,by,bz)
  %2051 = call float @dx.op.unary.f32(i32 25, float %2050)  ; Rsqrt(value)
  %2052 = fmul fast float %2051, %348
  %2053 = fmul fast float %2051, %349
  %2054 = fmul fast float %2049, %2051
  br label %2055

; <label>:2055                                    ; preds = %2026, %1984
  %2056 = phi float [ %2052, %2026 ], [ %348, %1984 ]
  %2057 = phi float [ %2053, %2026 ], [ %349, %1984 ]
  %2058 = phi float [ %2054, %2026 ], [ %350, %1984 ]
  %2059 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %2060 = extractvalue %dx.types.CBufRet.i32 %2059, 2
  %2061 = add nsw i32 %2060, -1
  %2062 = call i32 @dx.op.binary.i32(i32 37, i32 %2061, i32 0)  ; IMax(a,b)
  %2063 = shl i32 %2021, 2
  %2064 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2063, i32 undef)  ; BufferLoad(srv,index,wot)
  %2065 = extractvalue %dx.types.ResRet.i32 %2064, 0
  %2066 = lshr i32 %2065, 16
  %2067 = and i32 %2065, 65535
  %2068 = lshr i32 %2065, 21
  %2069 = lshr i32 %2067, 5
  %2070 = call i32 @dx.op.binary.i32(i32 40, i32 %2069, i32 %2062)  ; UMin(a,b)
  %2071 = icmp ugt i32 %2068, %2070
  br i1 %2071, label %2435, label %2072

; <label>:2072                                    ; preds = %2055
  br label %2073

; <label>:2073                                    ; preds = %2427, %2072
  %2074 = phi float [ %2428, %2427 ], [ 0.000000e+00, %2072 ]
  %2075 = phi float [ %2429, %2427 ], [ 0.000000e+00, %2072 ]
  %2076 = phi float [ %2430, %2427 ], [ 0.000000e+00, %2072 ]
  %2077 = phi float [ %2431, %2427 ], [ 1.000000e+00, %2072 ]
  %2078 = phi i32 [ %2432, %2427 ], [ %2068, %2072 ]
  %2079 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %2080 = extractvalue %dx.types.CBufRet.i32 %2079, 2
  %2081 = call i32 @dx.op.tertiary.i32(i32 49, i32 %2017, i32 %2080, i32 %2078)  ; UMad(a,b,c)
  %2082 = shl i32 %2081, 2
  %2083 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2082, i32 undef)  ; BufferLoad(srv,index,wot)
  %2084 = extractvalue %dx.types.ResRet.i32 %2083, 0
  %2085 = shl i32 %2078, 5
  %2086 = sub nsw i32 %2066, %2085
  %2087 = call i32 @dx.op.binary.i32(i32 37, i32 %2086, i32 0)  ; IMax(a,b)
  %2088 = call i32 @dx.op.binary.i32(i32 38, i32 %2087, i32 31)  ; IMin(a,b)
  %2089 = sub nsw i32 1, %2066
  %2090 = add nsw i32 %2089, %2067
  %2091 = call i32 @dx.op.binary.i32(i32 37, i32 %2090, i32 0)  ; IMax(a,b)
  %2092 = call i32 @dx.op.binary.i32(i32 38, i32 %2091, i32 32)  ; IMin(a,b)
  %2093 = and i32 %2092, 31
  %2094 = shl i32 -1, %2093
  %2095 = xor i32 %2094, -1
  %2096 = and i32 %2088, 31
  %2097 = shl i32 %2095, %2096
  %2098 = icmp eq i32 %2092, 32
  %2099 = select i1 %2098, i32 -1, i32 %2097
  %2100 = and i32 %2099, %2084
  %2101 = icmp eq i32 %2100, 0
  br i1 %2101, label %2427, label %2102

; <label>:2102                                    ; preds = %2073
  br label %2103

; <label>:2103                                    ; preds = %2210, %2102
  %2104 = phi float [ %2211, %2210 ], [ %2074, %2102 ]
  %2105 = phi float [ %2212, %2210 ], [ %2075, %2102 ]
  %2106 = phi float [ %2213, %2210 ], [ %2076, %2102 ]
  %2107 = phi float [ %2214, %2210 ], [ %2077, %2102 ]
  %2108 = phi i32 [ %2113, %2210 ], [ %2100, %2102 ]
  %2109 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %2108)  ; FirstbitLo(value)
  %2110 = add i32 %2109, %2085
  %2111 = and i32 %2109, 31
  %2112 = shl i32 1, %2111
  %2113 = xor i32 %2112, %2108
  %2114 = mul i32 %2110, 72
  %2115 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %2114, i32 undef)  ; BufferLoad(srv,index,wot)
  %2116 = extractvalue %dx.types.ResRet.f32 %2115, 0
  %2117 = extractvalue %dx.types.ResRet.f32 %2115, 1
  %2118 = extractvalue %dx.types.ResRet.f32 %2115, 2
  %2119 = add i32 %2114, 12
  %2120 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2119, i32 undef)  ; BufferLoad(srv,index,wot)
  %2121 = extractvalue %dx.types.ResRet.i32 %2120, 0
  %2122 = add i32 %2114, 16
  %2123 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %2122, i32 undef)  ; BufferLoad(srv,index,wot)
  %2124 = extractvalue %dx.types.ResRet.f32 %2123, 0
  %2125 = extractvalue %dx.types.ResRet.f32 %2123, 1
  %2126 = extractvalue %dx.types.ResRet.f32 %2123, 2
  %2127 = add i32 %2114, 28
  %2128 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %2127, i32 undef)  ; BufferLoad(srv,index,wot)
  %2129 = extractvalue %dx.types.ResRet.f32 %2128, 0
  %2130 = add i32 %2114, 32
  %2131 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %2130, i32 undef)  ; BufferLoad(srv,index,wot)
  %2132 = extractvalue %dx.types.ResRet.f32 %2131, 0
  %2133 = extractvalue %dx.types.ResRet.f32 %2131, 1
  %2134 = extractvalue %dx.types.ResRet.f32 %2131, 2
  %2135 = extractvalue %dx.types.ResRet.f32 %2131, 3
  %2136 = add i32 %2114, 48
  %2137 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %2136, i32 undef)  ; BufferLoad(srv,index,wot)
  %2138 = extractvalue %dx.types.ResRet.f32 %2137, 0
  %2139 = extractvalue %dx.types.ResRet.f32 %2137, 1
  %2140 = add i32 %2114, 56
  %2141 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %2140, i32 undef)  ; BufferLoad(srv,index,wot)
  %2142 = extractvalue %dx.types.ResRet.f32 %2141, 0
  %2143 = extractvalue %dx.types.ResRet.f32 %2141, 1
  %2144 = add i32 %2114, 64
  %2145 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %2144, i32 undef)  ; BufferLoad(srv,index,wot)
  %2146 = extractvalue %dx.types.ResRet.f32 %2145, 0
  %2147 = extractvalue %dx.types.ResRet.f32 %2145, 1
  %2148 = mul i32 %2110, 60
  %2149 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %2148, i32 undef)  ; BufferLoad(srv,index,wot)
  %2150 = extractvalue %dx.types.ResRet.f32 %2149, 0
  %2151 = extractvalue %dx.types.ResRet.f32 %2149, 1
  %2152 = extractvalue %dx.types.ResRet.f32 %2149, 2
  %2153 = add i32 %2148, 12
  %2154 = add i32 %2148, 48
  %2155 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %2154, i32 undef)  ; BufferLoad(srv,index,wot)
  %2156 = extractvalue %dx.types.ResRet.f32 %2155, 0
  %2157 = extractvalue %dx.types.ResRet.f32 %2155, 1
  %2158 = extractvalue %dx.types.ResRet.f32 %2155, 2
  %2159 = and i32 %2121, 32767
  %2160 = bitcast float %2116 to i32
  %2161 = icmp eq i32 %2160, -1
  %2162 = bitcast float %2117 to i32
  %2163 = and i32 %2121, 32768
  %2164 = icmp ne i32 %2163, 0
  %2165 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %2166 = extractvalue %dx.types.CBufRet.f32 %2165, 0
  %2167 = extractvalue %dx.types.CBufRet.f32 %2165, 1
  %2168 = extractvalue %dx.types.CBufRet.f32 %2165, 2
  %2169 = fsub fast float %2150, %2166
  %2170 = fsub fast float %2151, %2167
  %2171 = fsub fast float %2152, %2168
  %2172 = fsub fast float %269, %2169
  %2173 = fsub fast float %270, %2170
  %2174 = fsub fast float %271, %2171
  %2175 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %2153, i32 undef)  ; BufferLoad(srv,index,wot)
  %2176 = extractvalue %dx.types.ResRet.f32 %2175, 0
  %2177 = extractvalue %dx.types.ResRet.f32 %2175, 1
  %2178 = extractvalue %dx.types.ResRet.f32 %2175, 2
  %2179 = call float @dx.op.dot3.f32(i32 55, float %2172, float %2173, float %2174, float %2176, float %2177, float %2178)  ; Dot3(ax,ay,az,bx,by,bz)
  %2180 = add i32 %2148, 24
  %2181 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %2180, i32 undef)  ; BufferLoad(srv,index,wot)
  %2182 = extractvalue %dx.types.ResRet.f32 %2181, 0
  %2183 = extractvalue %dx.types.ResRet.f32 %2181, 1
  %2184 = extractvalue %dx.types.ResRet.f32 %2181, 2
  %2185 = call float @dx.op.dot3.f32(i32 55, float %2172, float %2173, float %2174, float %2182, float %2183, float %2184)  ; Dot3(ax,ay,az,bx,by,bz)
  %2186 = add i32 %2148, 36
  %2187 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %2186, i32 undef)  ; BufferLoad(srv,index,wot)
  %2188 = extractvalue %dx.types.ResRet.f32 %2187, 0
  %2189 = extractvalue %dx.types.ResRet.f32 %2187, 1
  %2190 = extractvalue %dx.types.ResRet.f32 %2187, 2
  %2191 = call float @dx.op.dot3.f32(i32 55, float %2172, float %2173, float %2174, float %2188, float %2189, float %2190)  ; Dot3(ax,ay,az,bx,by,bz)
  %2192 = call float @dx.op.unary.f32(i32 6, float %2179)  ; FAbs(value)
  %2193 = call float @dx.op.unary.f32(i32 6, float %2185)  ; FAbs(value)
  %2194 = call float @dx.op.unary.f32(i32 6, float %2191)  ; FAbs(value)
  %2195 = fsub fast float %2156, %2192
  %2196 = fsub fast float %2157, %2193
  %2197 = fsub fast float %2158, %2194
  %2198 = fmul fast float %2195, %2124
  %2199 = fmul fast float %2196, %2125
  %2200 = fmul fast float %2197, %2126
  %2201 = call float @dx.op.binary.f32(i32 36, float %2199, float %2200)  ; FMin(a,b)
  %2202 = call float @dx.op.binary.f32(i32 36, float %2198, float %2201)  ; FMin(a,b)
  %2203 = call float @dx.op.unary.f32(i32 7, float %2202)  ; Saturate(value)
  %2204 = call float @dx.op.binary.f32(i32 36, float %2107, float %2203)  ; FMin(a,b)
  %2205 = uitofp i1 %2164 to float
  %2206 = fadd fast float %2022, 1.000000e+00
  %2207 = fsub fast float %2206, %2205
  %2208 = fmul fast float %2204, %2207
  %2209 = fcmp fast ogt float %2208, 0.000000e+00
  br i1 %2209, label %2216, label %2210

; <label>:2210                                    ; preds = %2358, %2103
  %2211 = phi float [ %2422, %2358 ], [ %2104, %2103 ]
  %2212 = phi float [ %2423, %2358 ], [ %2105, %2103 ]
  %2213 = phi float [ %2424, %2358 ], [ %2106, %2103 ]
  %2214 = phi float [ %2425, %2358 ], [ %2107, %2103 ]
  %2215 = icmp eq i32 %2108, %2112
  br i1 %2215, label %2426, label %2103

; <label>:2216                                    ; preds = %2103
  br i1 %2161, label %2274, label %2217

; <label>:2217                                    ; preds = %2216
  %2218 = fsub fast float -0.000000e+00, %2176
  %2219 = fsub fast float -0.000000e+00, %2177
  %2220 = fsub fast float -0.000000e+00, %2178
  %2221 = call float @dx.op.dot3.f32(i32 55, float %2056, float %2057, float %2058, float %2218, float %2219, float %2220)  ; Dot3(ax,ay,az,bx,by,bz)
  %2222 = fsub fast float -0.000000e+00, %2221
  %2223 = call float @dx.op.dot3.f32(i32 55, float %2172, float %2173, float %2174, float %2218, float %2219, float %2220)  ; Dot3(ax,ay,az,bx,by,bz)
  %2224 = fadd fast float %2223, %2139
  %2225 = fadd fast float %2138, %2223
  %2226 = fsub fast float -0.000000e+00, %2225
  %2227 = fcmp ogt float %2221, -0.000000e+00
  %2228 = select i1 %2227, float %2226, float %2224
  %2229 = call float @dx.op.unary.f32(i32 6, float %2222)  ; FAbs(value)
  %2230 = fdiv fast float 1.000000e+00, %2229
  %2231 = fmul fast float %2228, %2230
  %2232 = call float @dx.op.binary.f32(i32 35, float %2231, float 0.000000e+00)  ; FMax(a,b)
  %2233 = fsub fast float -0.000000e+00, %2182
  %2234 = fsub fast float -0.000000e+00, %2183
  %2235 = fsub fast float -0.000000e+00, %2184
  %2236 = call float @dx.op.dot3.f32(i32 55, float %2056, float %2057, float %2058, float %2233, float %2234, float %2235)  ; Dot3(ax,ay,az,bx,by,bz)
  %2237 = fsub fast float -0.000000e+00, %2236
  %2238 = call float @dx.op.dot3.f32(i32 55, float %2172, float %2173, float %2174, float %2233, float %2234, float %2235)  ; Dot3(ax,ay,az,bx,by,bz)
  %2239 = fadd fast float %2238, %2143
  %2240 = fadd fast float %2142, %2238
  %2241 = fsub fast float -0.000000e+00, %2240
  %2242 = fcmp ogt float %2236, -0.000000e+00
  %2243 = select i1 %2242, float %2241, float %2239
  %2244 = call float @dx.op.unary.f32(i32 6, float %2237)  ; FAbs(value)
  %2245 = fdiv fast float 1.000000e+00, %2244
  %2246 = fmul fast float %2243, %2245
  %2247 = call float @dx.op.binary.f32(i32 35, float %2246, float 0.000000e+00)  ; FMax(a,b)
  %2248 = fsub fast float -0.000000e+00, %2188
  %2249 = fsub fast float -0.000000e+00, %2189
  %2250 = fsub fast float -0.000000e+00, %2190
  %2251 = call float @dx.op.dot3.f32(i32 55, float %2056, float %2057, float %2058, float %2248, float %2249, float %2250)  ; Dot3(ax,ay,az,bx,by,bz)
  %2252 = fsub fast float -0.000000e+00, %2251
  %2253 = call float @dx.op.dot3.f32(i32 55, float %2172, float %2173, float %2174, float %2248, float %2249, float %2250)  ; Dot3(ax,ay,az,bx,by,bz)
  %2254 = fadd fast float %2253, %2147
  %2255 = fadd fast float %2146, %2253
  %2256 = fsub fast float -0.000000e+00, %2255
  %2257 = fcmp ogt float %2251, -0.000000e+00
  %2258 = select i1 %2257, float %2256, float %2254
  %2259 = call float @dx.op.unary.f32(i32 6, float %2252)  ; FAbs(value)
  %2260 = fdiv fast float 1.000000e+00, %2259
  %2261 = fmul fast float %2258, %2260
  %2262 = call float @dx.op.binary.f32(i32 35, float %2261, float 0.000000e+00)  ; FMax(a,b)
  %2263 = call float @dx.op.binary.f32(i32 36, float %2247, float %2262)  ; FMin(a,b)
  %2264 = call float @dx.op.binary.f32(i32 36, float %2232, float %2263)  ; FMin(a,b)
  %2265 = fmul fast float %2264, %2056
  %2266 = fmul fast float %2264, %2057
  %2267 = fmul fast float %2264, %2058
  %2268 = fadd fast float %2265, %269
  %2269 = fadd fast float %2266, %270
  %2270 = fadd fast float %2267, %271
  %2271 = fsub fast float %2268, %2116
  %2272 = fsub fast float %2269, %2117
  %2273 = fsub fast float %2270, %2118
  br label %2281

; <label>:2274                                    ; preds = %2216
  %2275 = fmul fast float %2056, 8.096000e+03
  %2276 = fmul fast float %2057, 8.096000e+03
  %2277 = fmul fast float %2058, 8.096000e+03
  %2278 = fadd fast float %2275, %269
  %2279 = fadd fast float %2276, %270
  %2280 = fadd fast float %2277, %271
  br label %2281

; <label>:2281                                    ; preds = %2274, %2217
  %2282 = phi float [ %2056, %2274 ], [ %2271, %2217 ]
  %2283 = phi float [ %2057, %2274 ], [ %2272, %2217 ]
  %2284 = phi float [ %2058, %2274 ], [ %2273, %2217 ]
  %2285 = phi float [ %2278, %2274 ], [ %2268, %2217 ]
  %2286 = phi float [ %2279, %2274 ], [ %2269, %2217 ]
  %2287 = phi float [ %2280, %2274 ], [ %2270, %2217 ]
  %2288 = fcmp fast olt float %2135, 1.000000e+00
  br i1 %2288, label %2289, label %2320, !dx.controlflow.hints !105

; <label>:2289                                    ; preds = %2281
  %2290 = fmul fast float %2284, %2133
  %2291 = fmul fast float %2283, %2134
  %2292 = fsub fast float %2290, %2291
  %2293 = fmul fast float %2282, %2134
  %2294 = fmul fast float %2284, %2132
  %2295 = fsub fast float %2293, %2294
  %2296 = fmul fast float %2283, %2132
  %2297 = fmul fast float %2282, %2133
  %2298 = fsub fast float %2296, %2297
  %2299 = fmul fast float %2292, 2.000000e+00
  %2300 = fmul fast float %2295, 2.000000e+00
  %2301 = fmul fast float %2298, 2.000000e+00
  %2302 = fmul fast float %2299, %2135
  %2303 = fmul fast float %2300, %2135
  %2304 = fmul fast float %2301, %2135
  %2305 = fmul fast float %2301, %2133
  %2306 = fmul fast float %2300, %2134
  %2307 = fmul fast float %2299, %2134
  %2308 = fmul fast float %2301, %2132
  %2309 = fmul fast float %2300, %2132
  %2310 = fmul fast float %2299, %2133
  %2311 = fadd fast float %2305, %2282
  %2312 = fadd fast float %2311, %2302
  %2313 = fsub fast float %2312, %2306
  %2314 = fsub fast float %2283, %2308
  %2315 = fadd fast float %2314, %2303
  %2316 = fadd fast float %2315, %2307
  %2317 = fadd fast float %2304, %2284
  %2318 = fsub fast float %2317, %2310
  %2319 = fadd fast float %2318, %2309
  br label %2320

; <label>:2320                                    ; preds = %2289, %2281
  %2321 = phi float [ %2313, %2289 ], [ %2282, %2281 ]
  %2322 = phi float [ %2316, %2289 ], [ %2283, %2281 ]
  %2323 = phi float [ %2319, %2289 ], [ %2284, %2281 ]
  br i1 %2161, label %2355, label %2324

; <label>:2324                                    ; preds = %2320
  %2325 = fmul fast float %212, 0x400187C840000000
  %2326 = fadd fast float %2325, 0xC00EFC2120000000
  %2327 = fmul fast float %2326, %212
  %2328 = fadd fast float %2327, 0x3FE5D16340000000
  %2329 = fmul fast float %2328, %212
  %2330 = fadd fast float %2329, 1.000000e+00
  %2331 = call float @dx.op.unary.f32(i32 7, float %2330)  ; Saturate(value)
  %2332 = fsub fast float %2285, %269
  %2333 = fsub fast float %2286, %270
  %2334 = fsub fast float %2287, %271
  %2335 = fsub fast float %2285, %2116
  %2336 = fsub fast float %2286, %2117
  %2337 = fsub fast float %2287, %2118
  %2338 = call float @dx.op.dot3.f32(i32 55, float %2332, float %2333, float %2334, float %2332, float %2333, float %2334)  ; Dot3(ax,ay,az,bx,by,bz)
  %2339 = call float @dx.op.dot3.f32(i32 55, float %2335, float %2336, float %2337, float %2335, float %2336, float %2337)  ; Dot3(ax,ay,az,bx,by,bz)
  %2340 = fadd fast float %2339, 0x3EE4F8B580000000
  %2341 = fdiv fast float %2338, %2340
  %2342 = bitcast float %2341 to i32
  %2343 = ashr i32 %2342, 1
  %2344 = add nsw i32 %2343, 532487669
  %2345 = bitcast i32 %2344 to float
  %2346 = fmul fast float %2345, %2331
  %2347 = call float @dx.op.unary.f32(i32 7, float %2346)  ; Saturate(value)
  %2348 = fmul fast float %2347, 0x4009981AE0000000
  %2349 = fsub fast float 0x40111BBD80000000, %2348
  %2350 = fmul fast float %2349, %2347
  %2351 = fadd fast float %2350, 0xC0009F6020000000
  %2352 = fmul fast float %2351, %2347
  %2353 = fadd fast float %2352, 1.000000e+00
  %2354 = call float @dx.op.unary.f32(i32 7, float %2353)  ; Saturate(value)
  br label %2358

; <label>:2355                                    ; preds = %2320
  %2356 = icmp ne i32 %2162, -1
  %2357 = zext i1 %2356 to i32
  br label %2358

; <label>:2358                                    ; preds = %2355, %2324
  %2359 = phi float [ %212, %2355 ], [ %2354, %2324 ]
  %2360 = phi i32 [ %2357, %2355 ], [ 0, %2324 ]
  %2361 = fmul float %2359, 5.000000e+00
  %2362 = fsub float 5.000000e+00, %2361
  %2363 = icmp ne i32 %2360, 0
  %2364 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %2365 = extractvalue %dx.types.CBufRet.f32 %2364, 3
  %2366 = fadd fast float %2365, %2362
  %2367 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2366)  ; FMax(a,b)
  %2368 = call float @dx.op.unary.f32(i32 6, float %2321)  ; FAbs(value)
  %2369 = call float @dx.op.unary.f32(i32 6, float %2322)  ; FAbs(value)
  %2370 = fadd fast float %2369, %2368
  %2371 = call float @dx.op.unary.f32(i32 6, float %2323)  ; FAbs(value)
  %2372 = fadd fast float %2370, %2371
  %2373 = fcmp fast oeq float %2372, 0.000000e+00
  %2374 = fdiv fast float 1.000000e+00, %2372
  %2375 = select i1 %2373, float 1.000000e+00, float %2374
  %2376 = fmul fast float %2375, %2321
  %2377 = fmul fast float %2375, %2322
  %2378 = call float @dx.op.unary.f32(i32 6, float %2377)  ; FAbs(value)
  %2379 = call float @dx.op.unary.f32(i32 6, float %2376)  ; FAbs(value)
  %2380 = fsub fast float 1.000000e+00, %2378
  %2381 = fsub fast float 1.000000e+00, %2379
  %2382 = fcmp fast oge float %2376, 0.000000e+00
  %2383 = fcmp fast oge float %2377, 0.000000e+00
  %2384 = select i1 %2382, float 1.000000e+00, float -1.000000e+00
  %2385 = select i1 %2383, float 1.000000e+00, float -1.000000e+00
  %2386 = fcmp fast ole float %2323, 0.000000e+00
  %2387 = fmul fast float %2384, %2380
  %2388 = fmul fast float %2385, %2381
  %2389 = select i1 %2386, float %2387, float %2376
  %2390 = select i1 %2386, float %2388, float %2377
  %2391 = fmul fast float %2389, 5.000000e-01
  %2392 = fmul fast float %2390, 5.000000e-01
  %2393 = fadd fast float %2391, 5.000000e-01
  %2394 = fadd fast float %2392, 5.000000e-01
  %2395 = uitofp i32 %2159 to float
  %2396 = call float @dx.op.binary.f32(i32 36, float %2367, float 3.000000e+00)  ; FMin(a,b)
  %2397 = fadd fast float %2396, 2.000000e+00
  %2398 = call float @dx.op.unary.f32(i32 21, float %2397)  ; Exp(value)
  %2399 = extractvalue %dx.types.CBufRet.f32 %2364, 1
  %2400 = fmul fast float %2399, %2398
  %2401 = fmul fast float %2400, 2.000000e+00
  %2402 = fsub fast float 1.000000e+00, %2401
  %2403 = fmul fast float %2393, %2402
  %2404 = fmul fast float %2394, %2402
  %2405 = fadd fast float %2403, %2400
  %2406 = fadd fast float %2404, %2400
  %2407 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %46, float %2405, float %2406, float %2395, float undef, i32 0, i32 0, i32 undef, float %2367)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2408 = extractvalue %dx.types.ResRet.f32 %2407, 0
  %2409 = extractvalue %dx.types.ResRet.f32 %2407, 1
  %2410 = extractvalue %dx.types.ResRet.f32 %2407, 2
  %2411 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2412 = extractvalue %dx.types.CBufRet.f32 %2411, 3
  %2413 = fmul fast float %2412, %2129
  %2414 = call float @dx.op.binary.f32(i32 36, float %1941, float %2413)  ; FMin(a,b)
  %2415 = select i1 %2363, float %2414, float %2413
  %2416 = fmul fast float %2408, %2208
  %2417 = fmul fast float %2416, %2415
  %2418 = fmul fast float %2409, %2208
  %2419 = fmul fast float %2418, %2415
  %2420 = fmul fast float %2410, %2208
  %2421 = fmul fast float %2420, %2415
  %2422 = fadd fast float %2417, %2104
  %2423 = fadd fast float %2419, %2105
  %2424 = fadd fast float %2421, %2106
  %2425 = fsub fast float %2107, %2208
  br label %2210

; <label>:2426                                    ; preds = %2210
  br label %2427

; <label>:2427                                    ; preds = %2426, %2073
  %2428 = phi float [ %2074, %2073 ], [ %2211, %2426 ]
  %2429 = phi float [ %2075, %2073 ], [ %2212, %2426 ]
  %2430 = phi float [ %2076, %2073 ], [ %2213, %2426 ]
  %2431 = phi float [ %2077, %2073 ], [ %2214, %2426 ]
  %2432 = add i32 %2078, 1
  %2433 = icmp ugt i32 %2432, %2070
  br i1 %2433, label %2434, label %2073, !llvm.loop !106

; <label>:2434                                    ; preds = %2427
  br label %2435

; <label>:2435                                    ; preds = %2434, %2055
  %2436 = phi float [ 0.000000e+00, %2055 ], [ %2428, %2434 ]
  %2437 = phi float [ 0.000000e+00, %2055 ], [ %2429, %2434 ]
  %2438 = phi float [ 0.000000e+00, %2055 ], [ %2430, %2434 ]
  %2439 = call float @dx.op.dot3.f32(i32 55, float %2436, float %2437, float %2438, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2440 = select i1 %129, float 0.000000e+00, float %2436
  %2441 = select i1 %129, float %2439, float %2437
  %2442 = select i1 %129, float 0.000000e+00, float %2438
  %2443 = fcmp fast olt float %1982, 0.000000e+00
  %2444 = call float @dx.op.unary.f32(i32 6, float %1982)  ; FAbs(value)
  %2445 = fmul fast float %2444, %1953
  %2446 = fmul fast float %2444, %1954
  %2447 = fmul fast float %2444, %1955
  %2448 = select i1 %2443, float %1953, float %2445
  %2449 = select i1 %2443, float %1954, float %2446
  %2450 = select i1 %2443, float %1955, float %2447
  %2451 = fsub fast float 1.000000e+00, %2444
  %2452 = call float @dx.op.unary.f32(i32 7, float %2451)  ; Saturate(value)
  %2453 = fmul fast float %2452, %2440
  %2454 = fmul fast float %2452, %2441
  %2455 = fmul fast float %2452, %2442
  %2456 = fadd fast float %2448, %2453
  %2457 = fadd fast float %2449, %2454
  %2458 = fadd fast float %2450, %2455
  br label %2459

; <label>:2459                                    ; preds = %2435, %1934
  %2460 = phi float [ %1953, %1934 ], [ %2456, %2435 ]
  %2461 = phi float [ %1954, %1934 ], [ %2457, %2435 ]
  %2462 = phi float [ %1955, %1934 ], [ %2458, %2435 ]
  %2463 = fmul fast float %1971, %1949
  %2464 = fmul fast float %1971, %1950
  %2465 = fmul fast float %1971, %1951
  %2466 = fmul fast float %2460, %1966
  %2467 = fmul fast float %2461, %1967
  %2468 = fmul fast float %2462, %1968
  %2469 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %2470 = extractvalue %dx.types.CBufRet.f32 %2469, 3
  %2471 = fcmp fast oeq float %2470, 0.000000e+00
  br i1 %2471, label %4406, label %2472

; <label>:2472                                    ; preds = %2459
  %2473 = extractvalue %dx.types.CBufRet.f32 %2469, 0
  %2474 = extractvalue %dx.types.CBufRet.f32 %2469, 1
  %2475 = extractvalue %dx.types.CBufRet.f32 %2469, 2
  %2476 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %2477 = extractvalue %dx.types.CBufRet.f32 %2476, 0
  %2478 = extractvalue %dx.types.CBufRet.f32 %2476, 1
  %2479 = extractvalue %dx.types.CBufRet.f32 %2476, 2
  %2480 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %2481 = extractvalue %dx.types.CBufRet.f32 %2480, 0
  %2482 = extractvalue %dx.types.CBufRet.f32 %2480, 1
  %2483 = call float @dx.op.dot3.f32(i32 55, float %2477, float %2478, float %2479, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2484 = select i1 %129, float %2481, float %2477
  %2485 = select i1 %129, float %2483, float %2478
  %2486 = select i1 %129, float %2482, float %2479
  %2487 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %2488 = extractvalue %dx.types.CBufRet.f32 %2487, 2
  %2489 = fmul fast float %2488, %200
  %2490 = fmul fast float %2488, %201
  %2491 = fmul fast float %2488, %202
  %2492 = fadd fast float %2489, %269
  %2493 = fadd fast float %2490, %270
  %2494 = fadd fast float %2491, %271
  %2495 = fcmp fast olt float %2470, 0.000000e+00
  br i1 %2495, label %3753, label %2496

; <label>:2496                                    ; preds = %2472
  %2497 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %2498 = extractvalue %dx.types.CBufRet.f32 %2497, 0
  %2499 = extractvalue %dx.types.CBufRet.f32 %2497, 1
  %2500 = extractvalue %dx.types.CBufRet.f32 %2497, 2
  %2501 = extractvalue %dx.types.CBufRet.f32 %2497, 3
  %2502 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %2503 = extractvalue %dx.types.CBufRet.f32 %2502, 0
  %2504 = extractvalue %dx.types.CBufRet.f32 %2502, 1
  %2505 = extractvalue %dx.types.CBufRet.f32 %2502, 2
  %2506 = extractvalue %dx.types.CBufRet.f32 %2502, 3
  %2507 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %2508 = extractvalue %dx.types.CBufRet.f32 %2507, 0
  %2509 = extractvalue %dx.types.CBufRet.f32 %2507, 1
  %2510 = extractvalue %dx.types.CBufRet.f32 %2507, 2
  %2511 = extractvalue %dx.types.CBufRet.f32 %2507, 3
  %2512 = fmul fast float %2498, %2492
  %2513 = call float @dx.op.tertiary.f32(i32 46, float %2493, float %2499, float %2512)  ; FMad(a,b,c)
  %2514 = call float @dx.op.tertiary.f32(i32 46, float %2494, float %2500, float %2513)  ; FMad(a,b,c)
  %2515 = fadd fast float %2514, %2501
  %2516 = fmul fast float %2503, %2492
  %2517 = call float @dx.op.tertiary.f32(i32 46, float %2493, float %2504, float %2516)  ; FMad(a,b,c)
  %2518 = call float @dx.op.tertiary.f32(i32 46, float %2494, float %2505, float %2517)  ; FMad(a,b,c)
  %2519 = fadd fast float %2518, %2506
  %2520 = fmul fast float %2508, %2492
  %2521 = call float @dx.op.tertiary.f32(i32 46, float %2493, float %2509, float %2520)  ; FMad(a,b,c)
  %2522 = call float @dx.op.tertiary.f32(i32 46, float %2494, float %2510, float %2521)  ; FMad(a,b,c)
  %2523 = fadd fast float %2522, %2511
  %2524 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %2525 = extractvalue %dx.types.CBufRet.f32 %2524, 0
  %2526 = fcmp fast une float %2525, 0.000000e+00
  %2527 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %2528 = extractvalue %dx.types.CBufRet.f32 %2527, 0
  %2529 = extractvalue %dx.types.CBufRet.f32 %2527, 1
  %2530 = extractvalue %dx.types.CBufRet.f32 %2527, 3
  %2531 = fmul fast float %2530, %2515
  %2532 = fmul fast float %2530, %2519
  %2533 = fadd fast float %2531, %2528
  %2534 = fadd fast float %2532, %2529
  %2535 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %2536 = extractvalue %dx.types.CBufRet.f32 %2535, 0
  %2537 = extractvalue %dx.types.CBufRet.f32 %2535, 1
  %2538 = extractvalue %dx.types.CBufRet.f32 %2535, 3
  %2539 = fmul fast float %2538, %2515
  %2540 = fmul fast float %2538, %2519
  %2541 = fadd fast float %2539, %2536
  %2542 = fadd fast float %2540, %2537
  %2543 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %2544 = extractvalue %dx.types.CBufRet.f32 %2543, 1
  %2545 = fsub fast float %2544, %2523
  %2546 = extractvalue %dx.types.CBufRet.f32 %2543, 2
  %2547 = fmul fast float %2545, %2546
  %2548 = fsub fast float 1.000000e+00, %2547
  %2549 = call float @dx.op.unary.f32(i32 7, float %2548)  ; Saturate(value)
  br i1 %2526, label %2610, label %2550

; <label>:2550                                    ; preds = %2496
  %2551 = extractvalue %dx.types.CBufRet.f32 %2535, 2
  %2552 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %2553 = extractvalue %dx.types.CBufRet.f32 %2552, 2
  %2554 = fadd fast float %2553, %2551
  %2555 = fcmp fast ogt float %2554, 0.000000e+00
  br i1 %2555, label %2556, label %2580

; <label>:2556                                    ; preds = %2550
  %2557 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %2558 = extractvalue %dx.types.CBufRet.f32 %2557, 0
  %2559 = extractvalue %dx.types.CBufRet.f32 %2557, 1
  %2560 = fsub fast float %2541, %2558
  %2561 = fsub fast float %2542, %2559
  %2562 = fcmp fast olt float %2560, 0.000000e+00
  %2563 = fcmp fast olt float %2561, 0.000000e+00
  %2564 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %2565 = extractvalue %dx.types.CBufRet.f32 %2564, 0
  %2566 = extractvalue %dx.types.CBufRet.f32 %2564, 1
  %2567 = extractvalue %dx.types.CBufRet.f32 %2564, 2
  %2568 = extractvalue %dx.types.CBufRet.f32 %2564, 3
  %2569 = select i1 %2562, float %2565, float %2567
  %2570 = select i1 %2563, float %2566, float %2568
  %2571 = fmul fast float %2569, %2560
  %2572 = fmul fast float %2570, %2561
  %2573 = call float @dx.op.unary.f32(i32 6, float %2571)  ; FAbs(value)
  %2574 = call float @dx.op.unary.f32(i32 6, float %2572)  ; FAbs(value)
  %2575 = extractvalue %dx.types.CBufRet.f32 %2487, 0
  %2576 = call float @dx.op.binary.f32(i32 35, float %2573, float %2574)  ; FMax(a,b)
  %2577 = fsub fast float %2575, %2576
  %2578 = call float @dx.op.unary.f32(i32 7, float %2577)  ; Saturate(value)
  %2579 = fmul fast float %2578, %2549
  br label %2580

; <label>:2580                                    ; preds = %2556, %2550
  %2581 = phi float [ %2579, %2556 ], [ 0.000000e+00, %2550 ]
  %2582 = extractvalue %dx.types.CBufRet.f32 %2527, 2
  %2583 = extractvalue %dx.types.CBufRet.f32 %2552, 1
  %2584 = fadd fast float %2583, %2582
  %2585 = fcmp fast ogt float %2584, 0.000000e+00
  br i1 %2585, label %2586, label %2610

; <label>:2586                                    ; preds = %2580
  %2587 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %2588 = extractvalue %dx.types.CBufRet.f32 %2587, 0
  %2589 = extractvalue %dx.types.CBufRet.f32 %2587, 1
  %2590 = fsub fast float %2533, %2588
  %2591 = fsub fast float %2534, %2589
  %2592 = fcmp fast olt float %2590, 0.000000e+00
  %2593 = fcmp fast olt float %2591, 0.000000e+00
  %2594 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %2595 = extractvalue %dx.types.CBufRet.f32 %2594, 0
  %2596 = extractvalue %dx.types.CBufRet.f32 %2594, 1
  %2597 = extractvalue %dx.types.CBufRet.f32 %2594, 2
  %2598 = extractvalue %dx.types.CBufRet.f32 %2594, 3
  %2599 = select i1 %2592, float %2595, float %2597
  %2600 = select i1 %2593, float %2596, float %2598
  %2601 = fmul fast float %2599, %2590
  %2602 = fmul fast float %2600, %2591
  %2603 = call float @dx.op.unary.f32(i32 6, float %2601)  ; FAbs(value)
  %2604 = call float @dx.op.unary.f32(i32 6, float %2602)  ; FAbs(value)
  %2605 = extractvalue %dx.types.CBufRet.f32 %2487, 0
  %2606 = call float @dx.op.binary.f32(i32 35, float %2603, float %2604)  ; FMax(a,b)
  %2607 = fsub fast float %2605, %2606
  %2608 = call float @dx.op.unary.f32(i32 7, float %2607)  ; Saturate(value)
  %2609 = fmul fast float %2608, %2549
  br label %2610

; <label>:2610                                    ; preds = %2586, %2580, %2496
  %2611 = phi float [ 0.000000e+00, %2496 ], [ %2609, %2586 ], [ 0.000000e+00, %2580 ]
  %2612 = phi float [ 0.000000e+00, %2496 ], [ %2581, %2586 ], [ %2581, %2580 ]
  %2613 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %2614 = extractvalue %dx.types.CBufRet.f32 %2613, 1
  %2615 = call float @dx.op.unary.f32(i32 7, float %2614)  ; Saturate(value)
  %2616 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %2617 = extractvalue %dx.types.CBufRet.f32 %2616, 0
  %2618 = extractvalue %dx.types.CBufRet.f32 %2616, 1
  %2619 = fsub fast float %2515, %2617
  %2620 = fsub fast float %2519, %2618
  %2621 = fcmp fast olt float %2619, 0.000000e+00
  %2622 = fcmp fast olt float %2620, 0.000000e+00
  %2623 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %2624 = extractvalue %dx.types.CBufRet.f32 %2623, 0
  %2625 = extractvalue %dx.types.CBufRet.f32 %2623, 1
  %2626 = extractvalue %dx.types.CBufRet.f32 %2623, 2
  %2627 = extractvalue %dx.types.CBufRet.f32 %2623, 3
  %2628 = select i1 %2621, float %2624, float %2626
  %2629 = select i1 %2622, float %2625, float %2627
  %2630 = fmul fast float %2628, %2619
  %2631 = fmul fast float %2629, %2620
  %2632 = call float @dx.op.unary.f32(i32 6, float %2630)  ; FAbs(value)
  %2633 = call float @dx.op.unary.f32(i32 6, float %2631)  ; FAbs(value)
  %2634 = extractvalue %dx.types.CBufRet.f32 %2487, 0
  %2635 = call float @dx.op.binary.f32(i32 35, float %2632, float %2633)  ; FMax(a,b)
  %2636 = fsub fast float %2634, %2635
  %2637 = call float @dx.op.unary.f32(i32 7, float %2636)  ; Saturate(value)
  %2638 = call float @dx.op.binary.f32(i32 36, float %2637, float %2615)  ; FMin(a,b)
  %2639 = fmul fast float %2638, %2549
  %2640 = fsub fast float %2611, %2639
  %2641 = fsub fast float %2612, %2611
  %2642 = fsub fast float %2641, %2639
  %2643 = call float @dx.op.binary.f32(i32 35, float %2611, float %2612)  ; FMax(a,b)
  %2644 = call float @dx.op.binary.f32(i32 35, float %2639, float %2643)  ; FMax(a,b)
  %2645 = fcmp fast olt float %2644, 1.000000e+00
  br i1 %2645, label %2646, label %3044, !dx.controlflow.hints !108

; <label>:2646                                    ; preds = %2610
  %2647 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %2648 = extractvalue %dx.types.CBufRet.f32 %2647, 0
  %2649 = fcmp fast une float %2648, 0.000000e+00
  br i1 %2649, label %2650, label %3044, !dx.controlflow.hints !109

; <label>:2650                                    ; preds = %2646
  %2651 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %2652 = extractvalue %dx.types.CBufRet.f32 %2651, 0
  %2653 = extractvalue %dx.types.CBufRet.f32 %2651, 1
  %2654 = extractvalue %dx.types.CBufRet.f32 %2651, 2
  %2655 = extractvalue %dx.types.CBufRet.f32 %2651, 3
  %2656 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %2657 = extractvalue %dx.types.CBufRet.f32 %2656, 0
  %2658 = extractvalue %dx.types.CBufRet.f32 %2656, 1
  %2659 = extractvalue %dx.types.CBufRet.f32 %2656, 2
  %2660 = extractvalue %dx.types.CBufRet.f32 %2656, 3
  %2661 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %2662 = extractvalue %dx.types.CBufRet.f32 %2661, 0
  %2663 = extractvalue %dx.types.CBufRet.f32 %2661, 1
  %2664 = extractvalue %dx.types.CBufRet.f32 %2661, 2
  %2665 = extractvalue %dx.types.CBufRet.f32 %2661, 3
  %2666 = fmul fast float %2652, %2492
  %2667 = call float @dx.op.tertiary.f32(i32 46, float %2493, float %2653, float %2666)  ; FMad(a,b,c)
  %2668 = call float @dx.op.tertiary.f32(i32 46, float %2494, float %2654, float %2667)  ; FMad(a,b,c)
  %2669 = fadd fast float %2668, %2655
  %2670 = fmul fast float %2657, %2492
  %2671 = call float @dx.op.tertiary.f32(i32 46, float %2493, float %2658, float %2670)  ; FMad(a,b,c)
  %2672 = call float @dx.op.tertiary.f32(i32 46, float %2494, float %2659, float %2671)  ; FMad(a,b,c)
  %2673 = fadd fast float %2672, %2660
  %2674 = fmul fast float %2662, %2492
  %2675 = call float @dx.op.tertiary.f32(i32 46, float %2493, float %2663, float %2674)  ; FMad(a,b,c)
  %2676 = call float @dx.op.tertiary.f32(i32 46, float %2494, float %2664, float %2675)  ; FMad(a,b,c)
  %2677 = fadd fast float %2676, %2665
  %2678 = fcmp fast oge float %2669, 1.000000e+00
  %2679 = fcmp fast oge float %2673, 1.000000e+00
  %2680 = or i1 %2678, %2679
  %2681 = fcmp fast olt float %2669, 0.000000e+00
  %2682 = fcmp fast olt float %2673, 0.000000e+00
  %2683 = or i1 %2681, %2682
  %2684 = or i1 %2680, %2683
  br i1 %2684, label %3044, label %2685, !dx.controlflow.hints !110

; <label>:2685                                    ; preds = %2650
  %2686 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %2687 = extractvalue %dx.types.CBufRet.f32 %2686, 0
  %2688 = extractvalue %dx.types.CBufRet.f32 %2686, 1
  %2689 = extractvalue %dx.types.CBufRet.f32 %2686, 2
  %2690 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %2691 = extractvalue %dx.types.CBufRet.i32 %2690, 2
  %2692 = uitofp i32 %2691 to float
  %2693 = extractvalue %dx.types.CBufRet.i32 %2690, 3
  %2694 = uitofp i32 %2693 to float
  %2695 = extractvalue %dx.types.CBufRet.f32 %2686, 3
  %2696 = fmul fast float %2695, 2.000000e+00
  %2697 = fsub fast float %2669, %2687
  %2698 = fsub fast float %2673, %2688
  %2699 = fmul fast float %2696, %2697
  %2700 = fmul fast float %2696, %2698
  %2701 = fdiv fast float 1.000000e+00, %2475
  %2702 = fmul fast float %2700, %2701
  %2703 = call float @dx.op.unary.f32(i32 6, float %2702)  ; FAbs(value)
  %2704 = fmul fast float %2689, %2494
  %2705 = fmul fast float %2704, %2696
  %2706 = call float @dx.op.unary.f32(i32 6, float %2705)  ; FAbs(value)
  %2707 = call float @dx.op.unary.f32(i32 6, float %2699)  ; FAbs(value)
  %2708 = call float @dx.op.binary.f32(i32 35, float %2706, float %2703)  ; FMax(a,b)
  %2709 = call float @dx.op.binary.f32(i32 35, float %2707, float %2708)  ; FMax(a,b)
  %2710 = fmul fast float %2709, 2.000000e+00
  %2711 = call float @dx.op.unary.f32(i32 23, float %2710)  ; Log(value)
  %2712 = call float @dx.op.binary.f32(i32 35, float %2711, float %2692)  ; FMax(a,b)
  %2713 = call float @dx.op.unary.f32(i32 22, float %2712)  ; Frc(value)
  %2714 = fadd fast float %2713, 0xBFEA666660000000
  %2715 = fmul fast float %2714, 8.000000e+00
  %2716 = call float @dx.op.unary.f32(i32 7, float %2715)  ; Saturate(value)
  %2717 = call float @dx.op.unary.f32(i32 27, float %2712)  ; Round_ni(value)
  %2718 = fadd fast float %2717, %2716
  %2719 = call float @dx.op.binary.f32(i32 36, float %2718, float %2694)  ; FMin(a,b)
  %2720 = call float @dx.op.unary.f32(i32 27, float %2719)  ; Round_ni(value)
  %2721 = fsub fast float -0.000000e+00, %2720
  %2722 = call float @dx.op.unary.f32(i32 21, float %2721)  ; Exp(value)
  %2723 = fmul fast float %2722, %2696
  %2724 = fmul fast float %2723, %2669
  %2725 = fmul fast float %2723, %2673
  %2726 = fmul fast float %2724, 2.500000e-01
  %2727 = fmul fast float %2725, 2.500000e-01
  %2728 = fadd fast float %2726, 5.000000e-01
  %2729 = fadd fast float %2727, 5.000000e-01
  %2730 = fsub fast float %2694, %2692
  %2731 = fptoui float %2730 to i32
  %2732 = add i32 %2731, 320
  %2733 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 %2732)  ; CBufferLoadLegacy(handle,regIndex)
  %2734 = extractvalue %dx.types.CBufRet.f32 %2733, 0
  %2735 = extractvalue %dx.types.CBufRet.f32 %2733, 1
  %2736 = fcmp fast une float %2719, %2694
  %2737 = fsub fast float %2669, %2734
  %2738 = fsub fast float %2673, %2735
  %2739 = call float @dx.op.unary.f32(i32 6, float %2737)  ; FAbs(value)
  %2740 = call float @dx.op.unary.f32(i32 6, float %2738)  ; FAbs(value)
  %2741 = fmul fast float %2739, %2723
  %2742 = fmul fast float %2740, %2723
  %2743 = fcmp fast olt float %2741, 1.000000e+00
  %2744 = fcmp fast olt float %2742, 1.000000e+00
  %2745 = and i1 %2743, %2744
  %2746 = or i1 %2736, %2745
  br i1 %2746, label %2747, label %3044, !dx.controlflow.hints !111

; <label>:2747                                    ; preds = %2685
  %2748 = fmul fast float %2725, 5.000000e-01
  %2749 = fmul fast float %2724, 5.000000e-01
  %2750 = fadd fast float %2748, 5.000000e-01
  %2751 = fadd fast float %2749, 5.000000e-01
  %2752 = sitofp i32 %2691 to float
  %2753 = fsub fast float %2719, %2752
  %2754 = call float @dx.op.unary.f32(i32 27, float %2753)  ; Round_ni(value)
  %2755 = call float @dx.op.unary.f32(i32 22, float %2719)  ; Frc(value)
  %2756 = call float @dx.op.unary.f32(i32 22, float %2751)  ; Frc(value)
  %2757 = call float @dx.op.unary.f32(i32 22, float %2750)  ; Frc(value)
  %2758 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %47, float %2756, float %2757, float %2754, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2759 = extractvalue %dx.types.ResRet.f32 %2758, 0
  %2760 = extractvalue %dx.types.ResRet.f32 %2758, 1
  %2761 = extractvalue %dx.types.ResRet.f32 %2758, 2
  %2762 = extractvalue %dx.types.ResRet.f32 %2758, 3
  %2763 = fcmp fast ogt float %2755, 0.000000e+00
  br i1 %2763, label %2764, label %2785, !dx.controlflow.hints !112

; <label>:2764                                    ; preds = %2747
  %2765 = fadd fast float %2754, 1.000000e+00
  %2766 = call float @dx.op.unary.f32(i32 22, float %2728)  ; Frc(value)
  %2767 = call float @dx.op.unary.f32(i32 22, float %2729)  ; Frc(value)
  %2768 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %47, float %2766, float %2767, float %2765, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2769 = extractvalue %dx.types.ResRet.f32 %2768, 0
  %2770 = extractvalue %dx.types.ResRet.f32 %2768, 1
  %2771 = extractvalue %dx.types.ResRet.f32 %2768, 2
  %2772 = extractvalue %dx.types.ResRet.f32 %2768, 3
  %2773 = fsub fast float %2769, %2759
  %2774 = fsub fast float %2770, %2760
  %2775 = fsub fast float %2771, %2761
  %2776 = fsub fast float %2772, %2762
  %2777 = fmul fast float %2773, %2755
  %2778 = fmul fast float %2774, %2755
  %2779 = fmul fast float %2775, %2755
  %2780 = fmul fast float %2776, %2755
  %2781 = fadd fast float %2777, %2759
  %2782 = fadd fast float %2778, %2760
  %2783 = fadd fast float %2779, %2761
  %2784 = fadd fast float %2780, %2762
  br label %2785

; <label>:2785                                    ; preds = %2764, %2747
  %2786 = phi float [ %2781, %2764 ], [ %2759, %2747 ]
  %2787 = phi float [ %2782, %2764 ], [ %2760, %2747 ]
  %2788 = phi float [ %2783, %2764 ], [ %2761, %2747 ]
  %2789 = phi float [ %2784, %2764 ], [ %2762, %2747 ]
  %2790 = fadd fast float %2786, -5.000000e-01
  %2791 = fadd fast float %2788, -5.000000e-01
  %2792 = fmul fast float %2790, 0xBFD5555560000000
  %2793 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %2791, float %2792)  ; FMad(a,b,c)
  %2794 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %2787, float 0.000000e+00)  ; FMad(a,b,c)
  %2795 = fadd fast float %2794, %2789
  %2796 = fmul fast float %2790, -7.500000e-01
  %2797 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %2791, float %2796)  ; FMad(a,b,c)
  %2798 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %2787, float 0.000000e+00)  ; FMad(a,b,c)
  %2799 = fadd fast float %2798, %2789
  %2800 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %2801 = extractvalue %dx.types.CBufRet.f32 %2800, 0
  %2802 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %2803 = extractvalue %dx.types.CBufRet.f32 %2802, 0
  %2804 = extractvalue %dx.types.CBufRet.f32 %2802, 1
  %2805 = extractvalue %dx.types.CBufRet.f32 %2802, 2
  %2806 = extractvalue %dx.types.CBufRet.f32 %2802, 3
  %2807 = fsub fast float %2803, %2793
  %2808 = fsub fast float %2804, %2795
  %2809 = fsub fast float %2805, %2797
  %2810 = fsub fast float %2806, %2799
  %2811 = fmul fast float %2807, %2801
  %2812 = fmul fast float %2808, %2801
  %2813 = fmul fast float %2809, %2801
  %2814 = fmul fast float %2810, %2801
  %2815 = fadd fast float %2811, %2793
  %2816 = fadd fast float %2812, %2795
  %2817 = fadd fast float %2813, %2797
  %2818 = fadd fast float %2814, %2799
  %2819 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %2820 = extractvalue %dx.types.ResRet.i32 %2819, 0
  %2821 = and i32 %2820, 536870911
  %2822 = uitofp i32 %2821 to float
  %2823 = fmul fast float %2822, %2669
  %2824 = fmul fast float %2822, %2673
  %2825 = fptoui float %2823 to i32
  %2826 = fptoui float %2824 to i32
  %2827 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %2828 = extractvalue %dx.types.ResRet.i32 %2827, 0
  %2829 = and i32 %2828, 31
  %2830 = lshr i32 %2825, %2829
  %2831 = lshr i32 %2826, %2829
  %2832 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %2833 = extractvalue %dx.types.ResRet.i32 %2832, 0
  %2834 = and i32 %2833, 31
  %2835 = shl i32 1, %2834
  %2836 = call i32 @dx.op.binary.i32(i32 40, i32 %2835, i32 4)  ; UMin(a,b)
  %2837 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %2838 = extractvalue %dx.types.ResRet.i32 %2837, 0
  %2839 = extractvalue %dx.types.ResRet.i32 %2837, 1
  %2840 = icmp eq i32 %2836, 0
  br i1 %2840, label %2882, label %2841

; <label>:2841                                    ; preds = %2785
  br label %2842

; <label>:2842                                    ; preds = %2870, %2841
  %2843 = phi i32 [ %2873, %2870 ], [ 0, %2841 ]
  %2844 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %2845 = extractvalue %dx.types.ResRet.i32 %2844, 0
  %2846 = lshr i32 %2845, 16
  %2847 = and i32 %2846, 31
  %2848 = shl i32 %2831, %2847
  %2849 = add i32 %2848, %2830
  %2850 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %2851 = extractvalue %dx.types.ResRet.i32 %2850, 0
  %2852 = and i32 %2851, 31
  %2853 = shl i32 %2849, %2852
  %2854 = add i32 %2853, %2843
  %2855 = shl i32 %2854, 2
  %2856 = add i32 %2855, 32
  %2857 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %2856, i32 undef)  ; BufferLoad(srv,index,wot)
  %2858 = extractvalue %dx.types.ResRet.i32 %2857, 0
  %2859 = icmp slt i32 %2858, 0
  %2860 = getelementptr [12 x float], [12 x float]* %69, i32 0, i32 %2843
  %2861 = getelementptr [12 x float], [12 x float]* %70, i32 0, i32 %2843
  %2862 = bitcast float* %2860 to i32*
  %2863 = bitcast float* %2861 to i32*
  br i1 %2859, label %2864, label %2870

; <label>:2864                                    ; preds = %2842
  %2865 = and i32 %2858, 1073741823
  %2866 = add nuw nsw i32 %2865, 20
  %2867 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %2866, i32 undef)  ; BufferLoad(srv,index,wot)
  %2868 = extractvalue %dx.types.ResRet.i32 %2867, 0
  %2869 = extractvalue %dx.types.ResRet.i32 %2867, 1
  br label %2870

; <label>:2870                                    ; preds = %2864, %2842
  %2871 = phi i32 [ %2868, %2864 ], [ %2838, %2842 ]
  %2872 = phi i32 [ %2869, %2864 ], [ %2839, %2842 ]
  store i32 %2871, i32* %2862, align 4
  store i32 %2872, i32* %2863, align 4
  %2873 = add nuw i32 %2843, 1
  %2874 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %2875 = extractvalue %dx.types.CBufRet.i32 %2874, 2
  %2876 = icmp eq i32 %2875, 0
  %2877 = icmp ugt i32 %2858, -1073741825
  %2878 = and i1 %2877, %2876
  %2879 = icmp ult i32 %2873, %2836
  %2880 = and i1 %2878, %2879
  br i1 %2880, label %2842, label %2881

; <label>:2881                                    ; preds = %2870
  br label %2882

; <label>:2882                                    ; preds = %2881, %2785
  %2883 = phi i32 [ 0, %2785 ], [ %2873, %2881 ]
  %2884 = extractvalue %dx.types.CBufRet.f32 %2647, 2
  %2885 = fptoui float %2884 to i32
  %2886 = icmp eq i32 %2885, 0
  br i1 %2886, label %2938, label %2887

; <label>:2887                                    ; preds = %2882
  br label %2888

; <label>:2888                                    ; preds = %2933, %2887
  %2889 = phi i32 [ %2934, %2933 ], [ %2883, %2887 ]
  %2890 = phi i32 [ %2935, %2933 ], [ 0, %2887 ]
  %2891 = lshr i32 %2890, 2
  %2892 = and i32 %2890, 3
  %2893 = add nuw nsw i32 %2891, 83
  %2894 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 %2893)  ; CBufferLoadLegacy(handle,regIndex)
  %2895 = extractvalue %dx.types.CBufRet.i32 %2894, 0
  %2896 = extractvalue %dx.types.CBufRet.i32 %2894, 1
  %2897 = extractvalue %dx.types.CBufRet.i32 %2894, 2
  %2898 = extractvalue %dx.types.CBufRet.i32 %2894, 3
  %2899 = getelementptr inbounds [4 x i32], [4 x i32]* %53, i32 0, i32 0
  store i32 %2895, i32* %2899, align 4
  %2900 = getelementptr inbounds [4 x i32], [4 x i32]* %53, i32 0, i32 1
  store i32 %2896, i32* %2900, align 4
  %2901 = getelementptr inbounds [4 x i32], [4 x i32]* %53, i32 0, i32 2
  store i32 %2897, i32* %2901, align 4
  %2902 = getelementptr inbounds [4 x i32], [4 x i32]* %53, i32 0, i32 3
  store i32 %2898, i32* %2902, align 4
  %2903 = getelementptr inbounds [4 x i32], [4 x i32]* %53, i32 0, i32 %2892
  %2904 = load i32, i32* %2903, align 4, !tbaa !113, !noalias !117
  %2905 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %2906 = extractvalue %dx.types.ResRet.i32 %2905, 0
  %2907 = lshr i32 %2906, 16
  %2908 = and i32 %2907, 31
  %2909 = shl i32 %2831, %2908
  %2910 = add i32 %2909, %2830
  %2911 = shl i32 %2910, 2
  %2912 = add i32 %2911, %2904
  %2913 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %2912, i32 undef)  ; BufferLoad(srv,index,wot)
  %2914 = extractvalue %dx.types.ResRet.i32 %2913, 0
  %2915 = icmp eq i32 %2914, 0
  br i1 %2915, label %2933, label %2916

; <label>:2916                                    ; preds = %2888
  %2917 = icmp slt i32 %2914, 0
  %2918 = getelementptr [12 x float], [12 x float]* %69, i32 0, i32 %2889
  %2919 = getelementptr [12 x float], [12 x float]* %70, i32 0, i32 %2889
  %2920 = bitcast float* %2918 to i32*
  %2921 = bitcast float* %2919 to i32*
  br i1 %2917, label %2922, label %2929

; <label>:2922                                    ; preds = %2916
  %2923 = and i32 %2914, 1073741823
  %2924 = add i32 %2904, 20
  %2925 = add i32 %2924, %2923
  %2926 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %2925, i32 undef)  ; BufferLoad(srv,index,wot)
  %2927 = extractvalue %dx.types.ResRet.i32 %2926, 0
  %2928 = extractvalue %dx.types.ResRet.i32 %2926, 1
  br label %2929

; <label>:2929                                    ; preds = %2922, %2916
  %2930 = phi i32 [ %2927, %2922 ], [ %2838, %2916 ]
  %2931 = phi i32 [ %2928, %2922 ], [ %2839, %2916 ]
  store i32 %2930, i32* %2920, align 4
  store i32 %2931, i32* %2921, align 4
  %2932 = add i32 %2889, 1
  br label %2933

; <label>:2933                                    ; preds = %2929, %2888
  %2934 = phi i32 [ %2889, %2888 ], [ %2932, %2929 ]
  %2935 = add nuw i32 %2890, 1
  %2936 = icmp eq i32 %2935, %2885
  br i1 %2936, label %2937, label %2888

; <label>:2937                                    ; preds = %2933
  br label %2938

; <label>:2938                                    ; preds = %2937, %2882
  %2939 = phi i32 [ %2883, %2882 ], [ %2934, %2937 ]
  %2940 = icmp eq i32 %2939, 1
  %2941 = getelementptr [12 x float], [12 x float]* %69, i32 0, i32 0
  %2942 = getelementptr [12 x float], [12 x float]* %70, i32 0, i32 0
  br i1 %2940, label %2943, label %2946

; <label>:2943                                    ; preds = %2938
  %2944 = load float, float* %2941, align 4
  %2945 = load float, float* %2942, align 4
  br label %2973

; <label>:2946                                    ; preds = %2938
  %2947 = load float, float* %2941, align 4
  %2948 = load float, float* %2942, align 4
  %2949 = fdiv fast float 1.000000e+00, %2948
  %2950 = fsub fast float %2947, %2949
  %2951 = icmp ugt i32 %2939, 1
  br i1 %2951, label %2952, label %2968

; <label>:2952                                    ; preds = %2946
  br label %2953

; <label>:2953                                    ; preds = %2953, %2952
  %2954 = phi float [ %2963, %2953 ], [ %2950, %2952 ]
  %2955 = phi float [ %2964, %2953 ], [ %2947, %2952 ]
  %2956 = phi i32 [ %2965, %2953 ], [ 1, %2952 ]
  %2957 = getelementptr [12 x float], [12 x float]* %69, i32 0, i32 %2956
  %2958 = load float, float* %2957, align 4
  %2959 = getelementptr [12 x float], [12 x float]* %70, i32 0, i32 %2956
  %2960 = load float, float* %2959, align 4
  %2961 = fdiv fast float 1.000000e+00, %2960
  %2962 = fsub fast float %2958, %2961
  %2963 = call float @dx.op.binary.f32(i32 36, float %2954, float %2962)  ; FMin(a,b)
  %2964 = call float @dx.op.binary.f32(i32 35, float %2955, float %2958)  ; FMax(a,b)
  %2965 = add nuw i32 %2956, 1
  %2966 = icmp eq i32 %2965, %2939
  br i1 %2966, label %2967, label %2953

; <label>:2967                                    ; preds = %2953
  br label %2968

; <label>:2968                                    ; preds = %2967, %2946
  %2969 = phi float [ %2950, %2946 ], [ %2963, %2967 ]
  %2970 = phi float [ %2947, %2946 ], [ %2964, %2967 ]
  %2971 = fsub fast float %2970, %2969
  %2972 = fdiv fast float 1.000000e+00, %2971
  br label %2973

; <label>:2973                                    ; preds = %2968, %2943
  %2974 = phi float [ %2944, %2943 ], [ %2970, %2968 ]
  %2975 = phi float [ %2945, %2943 ], [ %2972, %2968 ]
  %2976 = fadd fast float %2677, %2974
  %2977 = fmul fast float %2976, %2975
  %2978 = call float @dx.op.unary.f32(i32 7, float %2977)  ; Saturate(value)
  %2979 = fmul fast float %2978, 2.000000e+00
  %2980 = fsub fast float 1.000000e+00, %2979
  %2981 = fmul fast float %2815, %2815
  %2982 = fsub fast float %2816, %2981
  %2983 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %2982)  ; FMax(a,b)
  %2984 = fdiv fast float 1.000000e+00, %2983
  %2985 = fmul fast float %2816, %2815
  %2986 = fsub fast float %2817, %2985
  %2987 = fsub fast float %2980, %2815
  %2988 = fmul fast float %2980, %2980
  %2989 = fsub fast float %2988, %2816
  %2990 = fmul fast float %2984, %2986
  %2991 = fmul fast float %2990, %2987
  %2992 = fsub fast float %2989, %2991
  %2993 = fmul fast float %2816, %2816
  %2994 = fsub fast float %2818, %2993
  %2995 = fmul fast float %2986, %2986
  %2996 = fmul fast float %2995, %2984
  %2997 = fsub fast float %2994, %2996
  %2998 = fdiv fast float %2992, %2997
  %2999 = fmul fast float %2998, %2986
  %3000 = fsub fast float %2987, %2999
  %3001 = fmul fast float %3000, %2984
  %3002 = fmul fast float %3001, %2815
  %3003 = fsub fast float 1.000000e+00, %3002
  %3004 = fmul fast float %2998, %2816
  %3005 = fsub fast float %3003, %3004
  %3006 = fmul fast float %3001, %3001
  %3007 = fmul fast float %2998, 4.000000e+00
  %3008 = fmul fast float %3007, %3005
  %3009 = fsub fast float %3006, %3008
  %3010 = call float @dx.op.unary.f32(i32 24, float %3009)  ; Sqrt(value)
  %3011 = fcmp fast oge float %3001, 0.000000e+00
  %3012 = fsub fast float -0.000000e+00, %3010
  %3013 = select i1 %3011, float %3012, float %3010
  %3014 = fsub fast float %3013, %3001
  %3015 = fdiv fast float %3014, %2998
  %3016 = fdiv fast float %3005, %3014
  %3017 = fmul fast float %3015, 5.000000e-01
  %3018 = fmul fast float %3016, 2.000000e+00
  %3019 = select i1 %3011, float %3017, float %3018
  %3020 = select i1 %3011, float %3018, float %3017
  %3021 = call float @dx.op.binary.f32(i32 35, float %3019, float %3020)  ; FMax(a,b)
  %3022 = call float @dx.op.binary.f32(i32 36, float %3019, float %3020)  ; FMin(a,b)
  %3023 = fcmp fast ogt float %2980, %3021
  %3024 = fsub fast float %2980, %3022
  %3025 = fsub fast float %2980, %3021
  %3026 = fsub fast float %3021, %3022
  %3027 = select i1 %3023, float %3025, float %3026
  %3028 = fmul float %3024, %3027
  %3029 = select i1 %3023, float %3022, float %2980
  %3030 = fcmp fast ogt float %2980, %3022
  %3031 = fmul fast float %3029, %3021
  %3032 = fadd fast float %3029, %3021
  %3033 = fmul fast float %3032, %2815
  %3034 = fadd fast float %3031, %2816
  %3035 = fsub fast float %3034, %3033
  %3036 = fdiv fast float %3035, %3028
  %3037 = select i1 %3030, float %3036, float 0.000000e+00
  %3038 = fsub fast float 1.000000e+00, %3037
  %3039 = select i1 %3023, float %3038, float %3037
  %3040 = call float @dx.op.unary.f32(i32 7, float %3039)  ; Saturate(value)
  %3041 = extractvalue %dx.types.CBufRet.f32 %2800, 3
  %3042 = fmul fast float %3041, %3040
  %3043 = fsub fast float 1.000000e+00, %3042
  br label %3044

; <label>:3044                                    ; preds = %2973, %2685, %2650, %2646, %2610
  %3045 = phi float [ 1.000000e+00, %2610 ], [ %3043, %2973 ], [ 1.000000e+00, %2650 ], [ 1.000000e+00, %2685 ], [ 1.000000e+00, %2646 ]
  %3046 = fcmp fast ogt float %2642, 0.000000e+00
  br i1 %3046, label %3047, label %3211, !dx.controlflow.hints !126

; <label>:3047                                    ; preds = %3044
  %3048 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %3049 = extractvalue %dx.types.CBufRet.f32 %3048, 2
  %3050 = fadd fast float %3049, %2523
  %3051 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %3052 = extractvalue %dx.types.CBufRet.f32 %3051, 2
  %3053 = extractvalue %dx.types.CBufRet.f32 %3051, 3
  %3054 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %3055 = extractvalue %dx.types.CBufRet.f32 %3054, 2
  %3056 = call float @dx.op.binary.f32(i32 35, float %3050, float 0.000000e+00)  ; FMax(a,b)
  %3057 = fadd fast float %3056, 0x3F10000000000000
  %3058 = fcmp fast oeq float %3055, 0.000000e+00
  br i1 %3058, label %3059, label %3126

; <label>:3059                                    ; preds = %3047
  %3060 = extractvalue %dx.types.CBufRet.f32 %3051, 1
  %3061 = extractvalue %dx.types.CBufRet.f32 %3051, 0
  %3062 = fmul fast float %3061, %2541
  %3063 = fmul fast float %3060, %2542
  %3064 = fadd fast float %3062, 5.000000e-01
  %3065 = call float @dx.op.unary.f32(i32 27, float %3064)  ; Round_ni(value)
  %3066 = fadd fast float %3063, 5.000000e-01
  %3067 = call float @dx.op.unary.f32(i32 27, float %3066)  ; Round_ni(value)
  %3068 = fsub fast float %3064, %3065
  %3069 = fsub fast float %3066, %3067
  %3070 = fadd fast float %3065, -5.000000e-01
  %3071 = fadd fast float %3067, -5.000000e-01
  %3072 = fmul fast float %3068, 2.000000e+00
  %3073 = fsub fast float 3.000000e+00, %3072
  %3074 = fadd fast float %3072, 1.000000e+00
  %3075 = fsub fast float 2.000000e+00, %3068
  %3076 = bitcast float %3073 to i32
  %3077 = sub nsw i32 2129859010, %3076
  %3078 = bitcast i32 %3077 to float
  %3079 = fmul fast float %3078, %3075
  %3080 = fadd fast float %3079, -1.000000e+00
  %3081 = bitcast float %3074 to i32
  %3082 = sub nsw i32 2129859010, %3081
  %3083 = bitcast i32 %3082 to float
  %3084 = fmul fast float %3083, %3068
  %3085 = fadd fast float %3084, 1.000000e+00
  %3086 = fmul fast float %3069, 2.000000e+00
  %3087 = fsub fast float 3.000000e+00, %3086
  %3088 = fadd fast float %3086, 1.000000e+00
  %3089 = fsub fast float 2.000000e+00, %3069
  %3090 = bitcast float %3087 to i32
  %3091 = sub nsw i32 2129859010, %3090
  %3092 = bitcast i32 %3091 to float
  %3093 = fmul fast float %3092, %3089
  %3094 = fadd fast float %3093, -1.000000e+00
  %3095 = bitcast float %3088 to i32
  %3096 = sub nsw i32 2129859010, %3095
  %3097 = bitcast i32 %3096 to float
  %3098 = fmul fast float %3097, %3069
  %3099 = fadd fast float %3098, 1.000000e+00
  %3100 = fadd fast float %3080, %3070
  %3101 = fmul fast float %3100, %3052
  %3102 = fadd fast float %3094, %3071
  %3103 = fmul fast float %3102, %3053
  %3104 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %10, %dx.types.Handle %50, float %3101, float %3103, float undef, float undef, i32 0, i32 0, i32 undef, float %3057)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3105 = extractvalue %dx.types.ResRet.f32 %3104, 0
  %3106 = fmul fast float %3105, %3073
  %3107 = fadd fast float %3085, %3070
  %3108 = fmul fast float %3107, %3052
  %3109 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %10, %dx.types.Handle %50, float %3108, float %3103, float undef, float undef, i32 0, i32 0, i32 undef, float %3057)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3110 = extractvalue %dx.types.ResRet.f32 %3109, 0
  %3111 = fmul fast float %3110, %3074
  %3112 = fadd fast float %3099, %3071
  %3113 = fmul fast float %3112, %3053
  %3114 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %10, %dx.types.Handle %50, float %3101, float %3113, float undef, float undef, i32 0, i32 0, i32 undef, float %3057)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3115 = extractvalue %dx.types.ResRet.f32 %3114, 0
  %3116 = fmul fast float %3115, %3073
  %3117 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %10, %dx.types.Handle %50, float %3108, float %3113, float undef, float undef, i32 0, i32 0, i32 undef, float %3057)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3118 = extractvalue %dx.types.ResRet.f32 %3117, 0
  %3119 = fmul fast float %3118, %3074
  %3120 = fadd fast float %3119, %3116
  %3121 = fmul fast float %3120, %3088
  %3122 = fadd fast float %3111, %3106
  %3123 = fmul fast float %3122, %3087
  %3124 = fadd fast float %3123, %3121
  %3125 = fmul fast float %3124, 6.250000e-02
  br label %3211

; <label>:3126                                    ; preds = %3047
  %3127 = fmul fast float %140, 0x401921FB60000000
  %3128 = call float @dx.op.unary.f32(i32 13, float %3127)  ; Sin(value)
  %3129 = call float @dx.op.unary.f32(i32 12, float %3127)  ; Cos(value)
  %3130 = fsub fast float -0.000000e+00, %3128
  br label %3131

; <label>:3131                                    ; preds = %3180, %3126
  %3132 = phi float [ 0.000000e+00, %3126 ], [ %3175, %3180 ]
  %3133 = phi float [ 0.000000e+00, %3126 ], [ %3177, %3180 ]
  %3134 = phi i32 [ 0, %3126 ], [ %3181, %3180 ]
  %3135 = mul i32 %3134, 2
  %3136 = add i32 0, %3135
  %3137 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %3136
  %3138 = load float, float* %3137, align 4
  %3139 = mul i32 %3134, 2
  %3140 = add i32 1, %3139
  %3141 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %3140
  %3142 = load float, float* %3141, align 4
  %3143 = fmul fast float %3138, %3129
  %3144 = call float @dx.op.tertiary.f32(i32 46, float %3142, float %3130, float %3143)  ; FMad(a,b,c)
  %3145 = fmul fast float %3138, %3128
  %3146 = call float @dx.op.tertiary.f32(i32 46, float %3142, float %3129, float %3145)  ; FMad(a,b,c)
  %3147 = fmul fast float %3144, %3055
  %3148 = fmul fast float %3146, %3055
  %3149 = fadd fast float %3147, %2541
  %3150 = fadd fast float %3148, %2542
  %3151 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %10, %dx.types.Handle %49, float %3149, float %3150, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %3152 = extractvalue %dx.types.ResRet.f32 %3151, 0
  %3153 = extractvalue %dx.types.ResRet.f32 %3151, 1
  %3154 = extractvalue %dx.types.ResRet.f32 %3151, 2
  %3155 = extractvalue %dx.types.ResRet.f32 %3151, 3
  %3156 = getelementptr inbounds [4 x float], [4 x float]* %74, i32 0, i32 0
  store float %3152, float* %3156, align 4
  %3157 = getelementptr inbounds [4 x float], [4 x float]* %74, i32 0, i32 1
  store float %3153, float* %3157, align 4
  %3158 = getelementptr inbounds [4 x float], [4 x float]* %74, i32 0, i32 2
  store float %3154, float* %3158, align 4
  %3159 = getelementptr inbounds [4 x float], [4 x float]* %74, i32 0, i32 3
  store float %3155, float* %3159, align 4
  %3160 = fsub fast float %3152, %3057
  %3161 = fcmp fast olt float %3160, 0.000000e+00
  %3162 = select i1 %3161, float 0.000000e+00, float 1.000000e+00
  %3163 = fadd fast float %3162, %3132
  %3164 = fmul fast float %3162, %3160
  %3165 = fadd fast float %3164, %3133
  br label %3166

; <label>:3166                                    ; preds = %3166, %3131
  %3167 = phi i32 [ 1, %3131 ], [ %3178, %3166 ]
  %3168 = phi float [ %3165, %3131 ], [ %3177, %3166 ]
  %3169 = phi float [ %3163, %3131 ], [ %3175, %3166 ]
  %3170 = getelementptr [4 x float], [4 x float]* %74, i32 0, i32 %3167
  %3171 = load float, float* %3170, align 4, !tbaa !127, !noalias !117
  %3172 = fsub fast float %3171, %3057
  %3173 = fcmp fast olt float %3172, 0.000000e+00
  %3174 = select i1 %3173, float 0.000000e+00, float 1.000000e+00
  %3175 = fadd fast float %3174, %3169
  %3176 = fmul fast float %3174, %3172
  %3177 = fadd fast float %3176, %3168
  %3178 = add nuw nsw i32 %3167, 1
  %3179 = icmp eq i32 %3178, 4
  br i1 %3179, label %3180, label %3166, !llvm.loop !129

; <label>:3180                                    ; preds = %3166
  %3181 = add nuw nsw i32 %3134, 1
  %3182 = icmp eq i32 %3181, 8
  br i1 %3182, label %3183, label %3131, !llvm.loop !130

; <label>:3183                                    ; preds = %3180
  %3184 = fdiv fast float 1.000000e+00, %3175
  %3185 = fmul fast float %3184, %3177
  %3186 = fdiv fast float 1.000000e+00, %3057
  %3187 = fmul fast float %3185, %3186
  %3188 = call float @dx.op.unary.f32(i32 7, float %3187)  ; Saturate(value)
  %3189 = call float @dx.op.binary.f32(i32 35, float %3188, float 0.000000e+00)  ; FMax(a,b)
  %3190 = fmul fast float %3175, 3.125000e-02
  %3191 = call float @dx.op.unary.f32(i32 7, float %3190)  ; Saturate(value)
  %3192 = fmul fast float %3191, 2.000000e+00
  %3193 = fadd fast float %3192, -1.000000e+00
  %3194 = fcmp fast ogt float %3193, 0.000000e+00
  %3195 = fcmp fast olt float %3193, 0.000000e+00
  %3196 = zext i1 %3194 to i32
  %3197 = zext i1 %3195 to i32
  %3198 = sub nsw i32 %3196, %3197
  %3199 = sitofp i32 %3198 to float
  %3200 = fmul fast float %3199, %3193
  %3201 = fsub fast float 1.000000e+00, %3200
  %3202 = fmul fast float %3201, %3201
  %3203 = fmul fast float %3202, %3201
  %3204 = fsub fast float %3201, %3203
  %3205 = fmul fast float %3204, %3189
  %3206 = fsub fast float 1.000000e+00, %3203
  %3207 = fsub fast float %3206, %3205
  %3208 = fmul fast float %3199, 5.000000e-01
  %3209 = fmul fast float %3208, %3207
  %3210 = fsub fast float 5.000000e-01, %3209
  br label %3211

; <label>:3211                                    ; preds = %3183, %3059, %3044
  %3212 = phi float [ 1.000000e+00, %3044 ], [ %3125, %3059 ], [ %3210, %3183 ]
  %3213 = fcmp fast ogt float %2640, 0.000000e+00
  br i1 %3213, label %3214, label %3378, !dx.controlflow.hints !131

; <label>:3214                                    ; preds = %3211
  %3215 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %3216 = extractvalue %dx.types.CBufRet.f32 %3215, 1
  %3217 = fadd fast float %3216, %2523
  %3218 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %3219 = extractvalue %dx.types.CBufRet.f32 %3218, 2
  %3220 = extractvalue %dx.types.CBufRet.f32 %3218, 3
  %3221 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %3222 = extractvalue %dx.types.CBufRet.f32 %3221, 1
  %3223 = call float @dx.op.binary.f32(i32 35, float %3217, float 0.000000e+00)  ; FMax(a,b)
  %3224 = fadd fast float %3223, 0x3F10000000000000
  %3225 = fcmp fast oeq float %3222, 0.000000e+00
  br i1 %3225, label %3226, label %3293

; <label>:3226                                    ; preds = %3214
  %3227 = extractvalue %dx.types.CBufRet.f32 %3218, 1
  %3228 = extractvalue %dx.types.CBufRet.f32 %3218, 0
  %3229 = fmul fast float %3228, %2533
  %3230 = fmul fast float %3227, %2534
  %3231 = fadd fast float %3229, 5.000000e-01
  %3232 = call float @dx.op.unary.f32(i32 27, float %3231)  ; Round_ni(value)
  %3233 = fadd fast float %3230, 5.000000e-01
  %3234 = call float @dx.op.unary.f32(i32 27, float %3233)  ; Round_ni(value)
  %3235 = fsub fast float %3231, %3232
  %3236 = fsub fast float %3233, %3234
  %3237 = fadd fast float %3232, -5.000000e-01
  %3238 = fadd fast float %3234, -5.000000e-01
  %3239 = fmul fast float %3235, 2.000000e+00
  %3240 = fsub fast float 3.000000e+00, %3239
  %3241 = fadd fast float %3239, 1.000000e+00
  %3242 = fsub fast float 2.000000e+00, %3235
  %3243 = bitcast float %3240 to i32
  %3244 = sub nsw i32 2129859010, %3243
  %3245 = bitcast i32 %3244 to float
  %3246 = fmul fast float %3245, %3242
  %3247 = fadd fast float %3246, -1.000000e+00
  %3248 = bitcast float %3241 to i32
  %3249 = sub nsw i32 2129859010, %3248
  %3250 = bitcast i32 %3249 to float
  %3251 = fmul fast float %3250, %3235
  %3252 = fadd fast float %3251, 1.000000e+00
  %3253 = fmul fast float %3236, 2.000000e+00
  %3254 = fsub fast float 3.000000e+00, %3253
  %3255 = fadd fast float %3253, 1.000000e+00
  %3256 = fsub fast float 2.000000e+00, %3236
  %3257 = bitcast float %3254 to i32
  %3258 = sub nsw i32 2129859010, %3257
  %3259 = bitcast i32 %3258 to float
  %3260 = fmul fast float %3259, %3256
  %3261 = fadd fast float %3260, -1.000000e+00
  %3262 = bitcast float %3255 to i32
  %3263 = sub nsw i32 2129859010, %3262
  %3264 = bitcast i32 %3263 to float
  %3265 = fmul fast float %3264, %3236
  %3266 = fadd fast float %3265, 1.000000e+00
  %3267 = fadd fast float %3247, %3237
  %3268 = fmul fast float %3267, %3219
  %3269 = fadd fast float %3261, %3238
  %3270 = fmul fast float %3269, %3220
  %3271 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %11, %dx.types.Handle %50, float %3268, float %3270, float undef, float undef, i32 0, i32 0, i32 undef, float %3224)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3272 = extractvalue %dx.types.ResRet.f32 %3271, 0
  %3273 = fmul fast float %3272, %3240
  %3274 = fadd fast float %3252, %3237
  %3275 = fmul fast float %3274, %3219
  %3276 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %11, %dx.types.Handle %50, float %3275, float %3270, float undef, float undef, i32 0, i32 0, i32 undef, float %3224)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3277 = extractvalue %dx.types.ResRet.f32 %3276, 0
  %3278 = fmul fast float %3277, %3241
  %3279 = fadd fast float %3266, %3238
  %3280 = fmul fast float %3279, %3220
  %3281 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %11, %dx.types.Handle %50, float %3268, float %3280, float undef, float undef, i32 0, i32 0, i32 undef, float %3224)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3282 = extractvalue %dx.types.ResRet.f32 %3281, 0
  %3283 = fmul fast float %3282, %3240
  %3284 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %11, %dx.types.Handle %50, float %3275, float %3280, float undef, float undef, i32 0, i32 0, i32 undef, float %3224)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3285 = extractvalue %dx.types.ResRet.f32 %3284, 0
  %3286 = fmul fast float %3285, %3241
  %3287 = fadd fast float %3286, %3283
  %3288 = fmul fast float %3287, %3255
  %3289 = fadd fast float %3278, %3273
  %3290 = fmul fast float %3289, %3254
  %3291 = fadd fast float %3290, %3288
  %3292 = fmul fast float %3291, 6.250000e-02
  br label %3378

; <label>:3293                                    ; preds = %3214
  %3294 = fmul fast float %140, 0x401921FB60000000
  %3295 = call float @dx.op.unary.f32(i32 13, float %3294)  ; Sin(value)
  %3296 = call float @dx.op.unary.f32(i32 12, float %3294)  ; Cos(value)
  %3297 = fsub fast float -0.000000e+00, %3295
  br label %3298

; <label>:3298                                    ; preds = %3347, %3293
  %3299 = phi float [ 0.000000e+00, %3293 ], [ %3342, %3347 ]
  %3300 = phi float [ 0.000000e+00, %3293 ], [ %3344, %3347 ]
  %3301 = phi i32 [ 0, %3293 ], [ %3348, %3347 ]
  %3302 = mul i32 %3301, 2
  %3303 = add i32 0, %3302
  %3304 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %3303
  %3305 = load float, float* %3304, align 4
  %3306 = mul i32 %3301, 2
  %3307 = add i32 1, %3306
  %3308 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %3307
  %3309 = load float, float* %3308, align 4
  %3310 = fmul fast float %3305, %3296
  %3311 = call float @dx.op.tertiary.f32(i32 46, float %3309, float %3297, float %3310)  ; FMad(a,b,c)
  %3312 = fmul fast float %3305, %3295
  %3313 = call float @dx.op.tertiary.f32(i32 46, float %3309, float %3296, float %3312)  ; FMad(a,b,c)
  %3314 = fmul fast float %3311, %3222
  %3315 = fmul fast float %3313, %3222
  %3316 = fadd fast float %3314, %2533
  %3317 = fadd fast float %3315, %2534
  %3318 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %11, %dx.types.Handle %49, float %3316, float %3317, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %3319 = extractvalue %dx.types.ResRet.f32 %3318, 0
  %3320 = extractvalue %dx.types.ResRet.f32 %3318, 1
  %3321 = extractvalue %dx.types.ResRet.f32 %3318, 2
  %3322 = extractvalue %dx.types.ResRet.f32 %3318, 3
  %3323 = getelementptr inbounds [4 x float], [4 x float]* %73, i32 0, i32 0
  store float %3319, float* %3323, align 4
  %3324 = getelementptr inbounds [4 x float], [4 x float]* %73, i32 0, i32 1
  store float %3320, float* %3324, align 4
  %3325 = getelementptr inbounds [4 x float], [4 x float]* %73, i32 0, i32 2
  store float %3321, float* %3325, align 4
  %3326 = getelementptr inbounds [4 x float], [4 x float]* %73, i32 0, i32 3
  store float %3322, float* %3326, align 4
  %3327 = fsub fast float %3319, %3224
  %3328 = fcmp fast olt float %3327, 0.000000e+00
  %3329 = select i1 %3328, float 0.000000e+00, float 1.000000e+00
  %3330 = fadd fast float %3329, %3299
  %3331 = fmul fast float %3329, %3327
  %3332 = fadd fast float %3331, %3300
  br label %3333

; <label>:3333                                    ; preds = %3333, %3298
  %3334 = phi i32 [ 1, %3298 ], [ %3345, %3333 ]
  %3335 = phi float [ %3332, %3298 ], [ %3344, %3333 ]
  %3336 = phi float [ %3330, %3298 ], [ %3342, %3333 ]
  %3337 = getelementptr [4 x float], [4 x float]* %73, i32 0, i32 %3334
  %3338 = load float, float* %3337, align 4, !tbaa !127, !noalias !117
  %3339 = fsub fast float %3338, %3224
  %3340 = fcmp fast olt float %3339, 0.000000e+00
  %3341 = select i1 %3340, float 0.000000e+00, float 1.000000e+00
  %3342 = fadd fast float %3341, %3336
  %3343 = fmul fast float %3341, %3339
  %3344 = fadd fast float %3343, %3335
  %3345 = add nuw nsw i32 %3334, 1
  %3346 = icmp eq i32 %3345, 4
  br i1 %3346, label %3347, label %3333, !llvm.loop !129

; <label>:3347                                    ; preds = %3333
  %3348 = add nuw nsw i32 %3301, 1
  %3349 = icmp eq i32 %3348, 8
  br i1 %3349, label %3350, label %3298, !llvm.loop !130

; <label>:3350                                    ; preds = %3347
  %3351 = fdiv fast float 1.000000e+00, %3342
  %3352 = fmul fast float %3351, %3344
  %3353 = fdiv fast float 1.000000e+00, %3224
  %3354 = fmul fast float %3352, %3353
  %3355 = call float @dx.op.unary.f32(i32 7, float %3354)  ; Saturate(value)
  %3356 = call float @dx.op.binary.f32(i32 35, float %3355, float 0.000000e+00)  ; FMax(a,b)
  %3357 = fmul fast float %3342, 3.125000e-02
  %3358 = call float @dx.op.unary.f32(i32 7, float %3357)  ; Saturate(value)
  %3359 = fmul fast float %3358, 2.000000e+00
  %3360 = fadd fast float %3359, -1.000000e+00
  %3361 = fcmp fast ogt float %3360, 0.000000e+00
  %3362 = fcmp fast olt float %3360, 0.000000e+00
  %3363 = zext i1 %3361 to i32
  %3364 = zext i1 %3362 to i32
  %3365 = sub nsw i32 %3363, %3364
  %3366 = sitofp i32 %3365 to float
  %3367 = fmul fast float %3366, %3360
  %3368 = fsub fast float 1.000000e+00, %3367
  %3369 = fmul fast float %3368, %3368
  %3370 = fmul fast float %3369, %3368
  %3371 = fsub fast float %3368, %3370
  %3372 = fmul fast float %3371, %3356
  %3373 = fsub fast float 1.000000e+00, %3370
  %3374 = fsub fast float %3373, %3372
  %3375 = fmul fast float %3366, 5.000000e-01
  %3376 = fmul fast float %3375, %3374
  %3377 = fsub fast float 5.000000e-01, %3376
  br label %3378

; <label>:3378                                    ; preds = %3350, %3226, %3211
  %3379 = phi float [ 1.000000e+00, %3211 ], [ %3292, %3226 ], [ %3377, %3350 ]
  %3380 = fcmp fast ogt float %2639, 0.000000e+00
  br i1 %3380, label %3381, label %3699, !dx.controlflow.hints !132

; <label>:3381                                    ; preds = %3378
  %3382 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %3383 = extractvalue %dx.types.CBufRet.f32 %3382, 0
  %3384 = fadd fast float %3383, %2523
  %3385 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %3386 = extractvalue %dx.types.CBufRet.f32 %3385, 2
  %3387 = extractvalue %dx.types.CBufRet.f32 %3385, 3
  %3388 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %3389 = extractvalue %dx.types.CBufRet.f32 %3388, 0
  %3390 = call float @dx.op.binary.f32(i32 35, float %3384, float 0.000000e+00)  ; FMax(a,b)
  %3391 = fadd fast float %3390, 0x3F10000000000000
  %3392 = fcmp fast oeq float %3389, 0.000000e+00
  br i1 %2526, label %3393, label %3546, !dx.controlflow.hints !133

; <label>:3393                                    ; preds = %3381
  br i1 %3392, label %3394, label %3461

; <label>:3394                                    ; preds = %3393
  %3395 = extractvalue %dx.types.CBufRet.f32 %3385, 1
  %3396 = extractvalue %dx.types.CBufRet.f32 %3385, 0
  %3397 = fmul fast float %3396, %2515
  %3398 = fmul fast float %3395, %2519
  %3399 = fadd fast float %3397, 5.000000e-01
  %3400 = call float @dx.op.unary.f32(i32 27, float %3399)  ; Round_ni(value)
  %3401 = fadd fast float %3398, 5.000000e-01
  %3402 = call float @dx.op.unary.f32(i32 27, float %3401)  ; Round_ni(value)
  %3403 = fsub fast float %3399, %3400
  %3404 = fsub fast float %3401, %3402
  %3405 = fadd fast float %3400, -5.000000e-01
  %3406 = fadd fast float %3402, -5.000000e-01
  %3407 = fmul fast float %3403, 2.000000e+00
  %3408 = fsub fast float 3.000000e+00, %3407
  %3409 = fadd fast float %3407, 1.000000e+00
  %3410 = fsub fast float 2.000000e+00, %3403
  %3411 = bitcast float %3408 to i32
  %3412 = sub nsw i32 2129859010, %3411
  %3413 = bitcast i32 %3412 to float
  %3414 = fmul fast float %3413, %3410
  %3415 = fadd fast float %3414, -1.000000e+00
  %3416 = bitcast float %3409 to i32
  %3417 = sub nsw i32 2129859010, %3416
  %3418 = bitcast i32 %3417 to float
  %3419 = fmul fast float %3418, %3403
  %3420 = fadd fast float %3419, 1.000000e+00
  %3421 = fmul fast float %3404, 2.000000e+00
  %3422 = fsub fast float 3.000000e+00, %3421
  %3423 = fadd fast float %3421, 1.000000e+00
  %3424 = fsub fast float 2.000000e+00, %3404
  %3425 = bitcast float %3422 to i32
  %3426 = sub nsw i32 2129859010, %3425
  %3427 = bitcast i32 %3426 to float
  %3428 = fmul fast float %3427, %3424
  %3429 = fadd fast float %3428, -1.000000e+00
  %3430 = bitcast float %3423 to i32
  %3431 = sub nsw i32 2129859010, %3430
  %3432 = bitcast i32 %3431 to float
  %3433 = fmul fast float %3432, %3404
  %3434 = fadd fast float %3433, 1.000000e+00
  %3435 = fadd fast float %3415, %3405
  %3436 = fmul fast float %3435, %3386
  %3437 = fadd fast float %3429, %3406
  %3438 = fmul fast float %3437, %3387
  %3439 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %13, %dx.types.Handle %50, float %3436, float %3438, float undef, float undef, i32 0, i32 0, i32 undef, float %3391)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3440 = extractvalue %dx.types.ResRet.f32 %3439, 0
  %3441 = fmul fast float %3440, %3408
  %3442 = fadd fast float %3420, %3405
  %3443 = fmul fast float %3442, %3386
  %3444 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %13, %dx.types.Handle %50, float %3443, float %3438, float undef, float undef, i32 0, i32 0, i32 undef, float %3391)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3445 = extractvalue %dx.types.ResRet.f32 %3444, 0
  %3446 = fmul fast float %3445, %3409
  %3447 = fadd fast float %3434, %3406
  %3448 = fmul fast float %3447, %3387
  %3449 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %13, %dx.types.Handle %50, float %3436, float %3448, float undef, float undef, i32 0, i32 0, i32 undef, float %3391)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3450 = extractvalue %dx.types.ResRet.f32 %3449, 0
  %3451 = fmul fast float %3450, %3408
  %3452 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %13, %dx.types.Handle %50, float %3443, float %3448, float undef, float undef, i32 0, i32 0, i32 undef, float %3391)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3453 = extractvalue %dx.types.ResRet.f32 %3452, 0
  %3454 = fmul fast float %3453, %3409
  %3455 = fadd fast float %3454, %3451
  %3456 = fmul fast float %3455, %3423
  %3457 = fadd fast float %3446, %3441
  %3458 = fmul fast float %3457, %3422
  %3459 = fadd fast float %3458, %3456
  %3460 = fmul fast float %3459, 6.250000e-02
  br label %3699

; <label>:3461                                    ; preds = %3393
  %3462 = fmul fast float %140, 0x401921FB60000000
  %3463 = call float @dx.op.unary.f32(i32 13, float %3462)  ; Sin(value)
  %3464 = call float @dx.op.unary.f32(i32 12, float %3462)  ; Cos(value)
  %3465 = fsub fast float -0.000000e+00, %3463
  br label %3466

; <label>:3466                                    ; preds = %3515, %3461
  %3467 = phi float [ 0.000000e+00, %3461 ], [ %3510, %3515 ]
  %3468 = phi float [ 0.000000e+00, %3461 ], [ %3512, %3515 ]
  %3469 = phi i32 [ 0, %3461 ], [ %3516, %3515 ]
  %3470 = mul i32 %3469, 2
  %3471 = add i32 0, %3470
  %3472 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %3471
  %3473 = load float, float* %3472, align 4
  %3474 = mul i32 %3469, 2
  %3475 = add i32 1, %3474
  %3476 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %3475
  %3477 = load float, float* %3476, align 4
  %3478 = fmul fast float %3473, %3464
  %3479 = call float @dx.op.tertiary.f32(i32 46, float %3477, float %3465, float %3478)  ; FMad(a,b,c)
  %3480 = fmul fast float %3473, %3463
  %3481 = call float @dx.op.tertiary.f32(i32 46, float %3477, float %3464, float %3480)  ; FMad(a,b,c)
  %3482 = fmul fast float %3479, %3389
  %3483 = fmul fast float %3481, %3389
  %3484 = fadd fast float %3482, %2515
  %3485 = fadd fast float %3483, %2519
  %3486 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %13, %dx.types.Handle %49, float %3484, float %3485, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %3487 = extractvalue %dx.types.ResRet.f32 %3486, 0
  %3488 = extractvalue %dx.types.ResRet.f32 %3486, 1
  %3489 = extractvalue %dx.types.ResRet.f32 %3486, 2
  %3490 = extractvalue %dx.types.ResRet.f32 %3486, 3
  %3491 = getelementptr inbounds [4 x float], [4 x float]* %72, i32 0, i32 0
  store float %3487, float* %3491, align 4
  %3492 = getelementptr inbounds [4 x float], [4 x float]* %72, i32 0, i32 1
  store float %3488, float* %3492, align 4
  %3493 = getelementptr inbounds [4 x float], [4 x float]* %72, i32 0, i32 2
  store float %3489, float* %3493, align 4
  %3494 = getelementptr inbounds [4 x float], [4 x float]* %72, i32 0, i32 3
  store float %3490, float* %3494, align 4
  %3495 = fsub fast float %3487, %3391
  %3496 = fcmp fast olt float %3495, 0.000000e+00
  %3497 = select i1 %3496, float 0.000000e+00, float 1.000000e+00
  %3498 = fadd fast float %3497, %3467
  %3499 = fmul fast float %3497, %3495
  %3500 = fadd fast float %3499, %3468
  br label %3501

; <label>:3501                                    ; preds = %3501, %3466
  %3502 = phi i32 [ 1, %3466 ], [ %3513, %3501 ]
  %3503 = phi float [ %3500, %3466 ], [ %3512, %3501 ]
  %3504 = phi float [ %3498, %3466 ], [ %3510, %3501 ]
  %3505 = getelementptr [4 x float], [4 x float]* %72, i32 0, i32 %3502
  %3506 = load float, float* %3505, align 4, !tbaa !127, !noalias !117
  %3507 = fsub fast float %3506, %3391
  %3508 = fcmp fast olt float %3507, 0.000000e+00
  %3509 = select i1 %3508, float 0.000000e+00, float 1.000000e+00
  %3510 = fadd fast float %3509, %3504
  %3511 = fmul fast float %3509, %3507
  %3512 = fadd fast float %3511, %3503
  %3513 = add nuw nsw i32 %3502, 1
  %3514 = icmp eq i32 %3513, 4
  br i1 %3514, label %3515, label %3501, !llvm.loop !129

; <label>:3515                                    ; preds = %3501
  %3516 = add nuw nsw i32 %3469, 1
  %3517 = icmp eq i32 %3516, 8
  br i1 %3517, label %3518, label %3466, !llvm.loop !130

; <label>:3518                                    ; preds = %3515
  %3519 = fdiv fast float 1.000000e+00, %3510
  %3520 = fmul fast float %3519, %3512
  %3521 = fdiv fast float 1.000000e+00, %3391
  %3522 = fmul fast float %3520, %3521
  %3523 = call float @dx.op.unary.f32(i32 7, float %3522)  ; Saturate(value)
  %3524 = call float @dx.op.binary.f32(i32 35, float %3523, float 0.000000e+00)  ; FMax(a,b)
  %3525 = fmul fast float %3510, 3.125000e-02
  %3526 = call float @dx.op.unary.f32(i32 7, float %3525)  ; Saturate(value)
  %3527 = fmul fast float %3526, 2.000000e+00
  %3528 = fadd fast float %3527, -1.000000e+00
  %3529 = fcmp fast ogt float %3528, 0.000000e+00
  %3530 = fcmp fast olt float %3528, 0.000000e+00
  %3531 = zext i1 %3529 to i32
  %3532 = zext i1 %3530 to i32
  %3533 = sub nsw i32 %3531, %3532
  %3534 = sitofp i32 %3533 to float
  %3535 = fmul fast float %3534, %3528
  %3536 = fsub fast float 1.000000e+00, %3535
  %3537 = fmul fast float %3536, %3536
  %3538 = fmul fast float %3537, %3536
  %3539 = fsub fast float %3536, %3538
  %3540 = fmul fast float %3539, %3524
  %3541 = fsub fast float 1.000000e+00, %3538
  %3542 = fsub fast float %3541, %3540
  %3543 = fmul fast float %3534, 5.000000e-01
  %3544 = fmul fast float %3543, %3542
  %3545 = fsub fast float 5.000000e-01, %3544
  br label %3699

; <label>:3546                                    ; preds = %3381
  br i1 %3392, label %3547, label %3614

; <label>:3547                                    ; preds = %3546
  %3548 = extractvalue %dx.types.CBufRet.f32 %3385, 1
  %3549 = extractvalue %dx.types.CBufRet.f32 %3385, 0
  %3550 = fmul fast float %3549, %2515
  %3551 = fmul fast float %3548, %2519
  %3552 = fadd fast float %3550, 5.000000e-01
  %3553 = call float @dx.op.unary.f32(i32 27, float %3552)  ; Round_ni(value)
  %3554 = fadd fast float %3551, 5.000000e-01
  %3555 = call float @dx.op.unary.f32(i32 27, float %3554)  ; Round_ni(value)
  %3556 = fsub fast float %3552, %3553
  %3557 = fsub fast float %3554, %3555
  %3558 = fadd fast float %3553, -5.000000e-01
  %3559 = fadd fast float %3555, -5.000000e-01
  %3560 = fmul fast float %3556, 2.000000e+00
  %3561 = fsub fast float 3.000000e+00, %3560
  %3562 = fadd fast float %3560, 1.000000e+00
  %3563 = fsub fast float 2.000000e+00, %3556
  %3564 = bitcast float %3561 to i32
  %3565 = sub nsw i32 2129859010, %3564
  %3566 = bitcast i32 %3565 to float
  %3567 = fmul fast float %3566, %3563
  %3568 = fadd fast float %3567, -1.000000e+00
  %3569 = bitcast float %3562 to i32
  %3570 = sub nsw i32 2129859010, %3569
  %3571 = bitcast i32 %3570 to float
  %3572 = fmul fast float %3571, %3556
  %3573 = fadd fast float %3572, 1.000000e+00
  %3574 = fmul fast float %3557, 2.000000e+00
  %3575 = fsub fast float 3.000000e+00, %3574
  %3576 = fadd fast float %3574, 1.000000e+00
  %3577 = fsub fast float 2.000000e+00, %3557
  %3578 = bitcast float %3575 to i32
  %3579 = sub nsw i32 2129859010, %3578
  %3580 = bitcast i32 %3579 to float
  %3581 = fmul fast float %3580, %3577
  %3582 = fadd fast float %3581, -1.000000e+00
  %3583 = bitcast float %3576 to i32
  %3584 = sub nsw i32 2129859010, %3583
  %3585 = bitcast i32 %3584 to float
  %3586 = fmul fast float %3585, %3557
  %3587 = fadd fast float %3586, 1.000000e+00
  %3588 = fadd fast float %3568, %3558
  %3589 = fmul fast float %3588, %3386
  %3590 = fadd fast float %3582, %3559
  %3591 = fmul fast float %3590, %3387
  %3592 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %12, %dx.types.Handle %50, float %3589, float %3591, float undef, float undef, i32 0, i32 0, i32 undef, float %3391)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3593 = extractvalue %dx.types.ResRet.f32 %3592, 0
  %3594 = fmul fast float %3593, %3561
  %3595 = fadd fast float %3573, %3558
  %3596 = fmul fast float %3595, %3386
  %3597 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %12, %dx.types.Handle %50, float %3596, float %3591, float undef, float undef, i32 0, i32 0, i32 undef, float %3391)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3598 = extractvalue %dx.types.ResRet.f32 %3597, 0
  %3599 = fmul fast float %3598, %3562
  %3600 = fadd fast float %3587, %3559
  %3601 = fmul fast float %3600, %3387
  %3602 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %12, %dx.types.Handle %50, float %3589, float %3601, float undef, float undef, i32 0, i32 0, i32 undef, float %3391)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3603 = extractvalue %dx.types.ResRet.f32 %3602, 0
  %3604 = fmul fast float %3603, %3561
  %3605 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %12, %dx.types.Handle %50, float %3596, float %3601, float undef, float undef, i32 0, i32 0, i32 undef, float %3391)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3606 = extractvalue %dx.types.ResRet.f32 %3605, 0
  %3607 = fmul fast float %3606, %3562
  %3608 = fadd fast float %3607, %3604
  %3609 = fmul fast float %3608, %3576
  %3610 = fadd fast float %3599, %3594
  %3611 = fmul fast float %3610, %3575
  %3612 = fadd fast float %3611, %3609
  %3613 = fmul fast float %3612, 6.250000e-02
  br label %3699

; <label>:3614                                    ; preds = %3546
  %3615 = fmul fast float %140, 0x401921FB60000000
  %3616 = call float @dx.op.unary.f32(i32 13, float %3615)  ; Sin(value)
  %3617 = call float @dx.op.unary.f32(i32 12, float %3615)  ; Cos(value)
  %3618 = fsub fast float -0.000000e+00, %3616
  br label %3619

; <label>:3619                                    ; preds = %3668, %3614
  %3620 = phi float [ 0.000000e+00, %3614 ], [ %3663, %3668 ]
  %3621 = phi float [ 0.000000e+00, %3614 ], [ %3665, %3668 ]
  %3622 = phi i32 [ 0, %3614 ], [ %3669, %3668 ]
  %3623 = mul i32 %3622, 2
  %3624 = add i32 0, %3623
  %3625 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %3624
  %3626 = load float, float* %3625, align 4
  %3627 = mul i32 %3622, 2
  %3628 = add i32 1, %3627
  %3629 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %3628
  %3630 = load float, float* %3629, align 4
  %3631 = fmul fast float %3626, %3617
  %3632 = call float @dx.op.tertiary.f32(i32 46, float %3630, float %3618, float %3631)  ; FMad(a,b,c)
  %3633 = fmul fast float %3626, %3616
  %3634 = call float @dx.op.tertiary.f32(i32 46, float %3630, float %3617, float %3633)  ; FMad(a,b,c)
  %3635 = fmul fast float %3632, %3389
  %3636 = fmul fast float %3634, %3389
  %3637 = fadd fast float %3635, %2515
  %3638 = fadd fast float %3636, %2519
  %3639 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %12, %dx.types.Handle %49, float %3637, float %3638, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %3640 = extractvalue %dx.types.ResRet.f32 %3639, 0
  %3641 = extractvalue %dx.types.ResRet.f32 %3639, 1
  %3642 = extractvalue %dx.types.ResRet.f32 %3639, 2
  %3643 = extractvalue %dx.types.ResRet.f32 %3639, 3
  %3644 = getelementptr inbounds [4 x float], [4 x float]* %71, i32 0, i32 0
  store float %3640, float* %3644, align 4
  %3645 = getelementptr inbounds [4 x float], [4 x float]* %71, i32 0, i32 1
  store float %3641, float* %3645, align 4
  %3646 = getelementptr inbounds [4 x float], [4 x float]* %71, i32 0, i32 2
  store float %3642, float* %3646, align 4
  %3647 = getelementptr inbounds [4 x float], [4 x float]* %71, i32 0, i32 3
  store float %3643, float* %3647, align 4
  %3648 = fsub fast float %3640, %3391
  %3649 = fcmp fast olt float %3648, 0.000000e+00
  %3650 = select i1 %3649, float 0.000000e+00, float 1.000000e+00
  %3651 = fadd fast float %3650, %3620
  %3652 = fmul fast float %3650, %3648
  %3653 = fadd fast float %3652, %3621
  br label %3654

; <label>:3654                                    ; preds = %3654, %3619
  %3655 = phi i32 [ 1, %3619 ], [ %3666, %3654 ]
  %3656 = phi float [ %3653, %3619 ], [ %3665, %3654 ]
  %3657 = phi float [ %3651, %3619 ], [ %3663, %3654 ]
  %3658 = getelementptr [4 x float], [4 x float]* %71, i32 0, i32 %3655
  %3659 = load float, float* %3658, align 4, !tbaa !127, !noalias !117
  %3660 = fsub fast float %3659, %3391
  %3661 = fcmp fast olt float %3660, 0.000000e+00
  %3662 = select i1 %3661, float 0.000000e+00, float 1.000000e+00
  %3663 = fadd fast float %3662, %3657
  %3664 = fmul fast float %3662, %3660
  %3665 = fadd fast float %3664, %3656
  %3666 = add nuw nsw i32 %3655, 1
  %3667 = icmp eq i32 %3666, 4
  br i1 %3667, label %3668, label %3654, !llvm.loop !129

; <label>:3668                                    ; preds = %3654
  %3669 = add nuw nsw i32 %3622, 1
  %3670 = icmp eq i32 %3669, 8
  br i1 %3670, label %3671, label %3619, !llvm.loop !130

; <label>:3671                                    ; preds = %3668
  %3672 = fdiv fast float 1.000000e+00, %3663
  %3673 = fmul fast float %3672, %3665
  %3674 = fdiv fast float 1.000000e+00, %3391
  %3675 = fmul fast float %3673, %3674
  %3676 = call float @dx.op.unary.f32(i32 7, float %3675)  ; Saturate(value)
  %3677 = call float @dx.op.binary.f32(i32 35, float %3676, float 0.000000e+00)  ; FMax(a,b)
  %3678 = fmul fast float %3663, 3.125000e-02
  %3679 = call float @dx.op.unary.f32(i32 7, float %3678)  ; Saturate(value)
  %3680 = fmul fast float %3679, 2.000000e+00
  %3681 = fadd fast float %3680, -1.000000e+00
  %3682 = fcmp fast ogt float %3681, 0.000000e+00
  %3683 = fcmp fast olt float %3681, 0.000000e+00
  %3684 = zext i1 %3682 to i32
  %3685 = zext i1 %3683 to i32
  %3686 = sub nsw i32 %3684, %3685
  %3687 = sitofp i32 %3686 to float
  %3688 = fmul fast float %3687, %3681
  %3689 = fsub fast float 1.000000e+00, %3688
  %3690 = fmul fast float %3689, %3689
  %3691 = fmul fast float %3690, %3689
  %3692 = fsub fast float %3689, %3691
  %3693 = fmul fast float %3692, %3677
  %3694 = fsub fast float 1.000000e+00, %3691
  %3695 = fsub fast float %3694, %3693
  %3696 = fmul fast float %3687, 5.000000e-01
  %3697 = fmul fast float %3696, %3695
  %3698 = fsub fast float 5.000000e-01, %3697
  br label %3699

; <label>:3699                                    ; preds = %3671, %3547, %3518, %3394, %3378
  %3700 = phi float [ 1.000000e+00, %3378 ], [ %3460, %3394 ], [ %3545, %3518 ], [ %3613, %3547 ], [ %3698, %3671 ]
  %3701 = fsub fast float %3212, %3045
  %3702 = fmul fast float %3701, %2612
  %3703 = fadd fast float %3702, %3045
  %3704 = fsub fast float %3379, %3703
  %3705 = fmul fast float %3704, %2611
  %3706 = fadd fast float %3705, %3703
  %3707 = fsub fast float %3700, %3706
  %3708 = fmul fast float %3707, %2639
  %3709 = fadd fast float %3708, %3706
  %3710 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %3711 = extractvalue %dx.types.CBufRet.f32 %3710, 2
  %3712 = fcmp fast ogt float %3711, 0.000000e+00
  br i1 %3712, label %3713, label %3753, !dx.controlflow.hints !134

; <label>:3713                                    ; preds = %3699
  %3714 = fcmp fast ugt float %3711, 0.000000e+00
  br i1 %3714, label %3715, label %3750

; <label>:3715                                    ; preds = %3713
  %3716 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %3717 = extractvalue %dx.types.CBufRet.f32 %3716, 0
  %3718 = extractvalue %dx.types.CBufRet.f32 %3716, 1
  %3719 = extractvalue %dx.types.CBufRet.f32 %3716, 2
  %3720 = extractvalue %dx.types.CBufRet.f32 %3716, 3
  %3721 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %3722 = extractvalue %dx.types.CBufRet.f32 %3721, 0
  %3723 = extractvalue %dx.types.CBufRet.f32 %3721, 1
  %3724 = extractvalue %dx.types.CBufRet.f32 %3721, 2
  %3725 = extractvalue %dx.types.CBufRet.f32 %3721, 3
  %3726 = extractvalue %dx.types.CBufRet.f32 %3710, 0
  %3727 = extractvalue %dx.types.CBufRet.f32 %3710, 1
  %3728 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %3729 = extractvalue %dx.types.CBufRet.f32 %3728, 0
  %3730 = extractvalue %dx.types.CBufRet.f32 %3728, 1
  %3731 = extractvalue %dx.types.CBufRet.f32 %3728, 2
  %3732 = fadd fast float %3729, %2492
  %3733 = fadd fast float %3730, %2493
  %3734 = fadd fast float %3731, %2494
  %3735 = fmul fast float %3732, %3717
  %3736 = call float @dx.op.tertiary.f32(i32 46, float %3718, float %3733, float %3735)  ; FMad(a,b,c)
  %3737 = call float @dx.op.tertiary.f32(i32 46, float %3719, float %3734, float %3736)  ; FMad(a,b,c)
  %3738 = fadd fast float %3737, %3720
  %3739 = fmul fast float %3732, %3722
  %3740 = call float @dx.op.tertiary.f32(i32 46, float %3723, float %3733, float %3739)  ; FMad(a,b,c)
  %3741 = call float @dx.op.tertiary.f32(i32 46, float %3724, float %3734, float %3740)  ; FMad(a,b,c)
  %3742 = fadd fast float %3741, %3725
  %3743 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %7, %dx.types.Handle %45, float %3738, float %3742, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3744 = extractvalue %dx.types.ResRet.f32 %3743, 0
  %3745 = fmul fast float %3744, %3727
  %3746 = fadd fast float %3745, %3726
  %3747 = call float @dx.op.unary.f32(i32 7, float %3746)  ; Saturate(value)
  %3748 = fmul fast float %3747, %3711
  %3749 = fsub fast float 1.000000e+00, %3748
  br label %3750

; <label>:3750                                    ; preds = %3715, %3713
  %3751 = phi float [ %3749, %3715 ], [ 1.000000e+00, %3713 ]
  %3752 = fmul fast float %3751, %3709
  br label %3753

; <label>:3753                                    ; preds = %3750, %3699, %2472
  %3754 = phi float [ 1.000000e+00, %2472 ], [ %3752, %3750 ], [ %3709, %3699 ]
  %3755 = call float @dx.op.binary.f32(i32 36, float %3754, float %3754)  ; FMin(a,b)
  %3756 = call float @dx.op.binary.f32(i32 36, float %3754, float %3755)  ; FMin(a,b)
  %3757 = fcmp fast ogt float %3756, 0.000000e+00
  br i1 %3757, label %3758, label %3923, !dx.controlflow.hints !135

; <label>:3758                                    ; preds = %3753
  %3759 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %3760 = extractvalue %dx.types.CBufRet.f32 %3759, 0
  %3761 = extractvalue %dx.types.CBufRet.f32 %3759, 1
  %3762 = extractvalue %dx.types.CBufRet.f32 %3759, 2
  %3763 = extractvalue %dx.types.CBufRet.f32 %3759, 3
  %3764 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %3765 = extractvalue %dx.types.CBufRet.f32 %3764, 0
  %3766 = extractvalue %dx.types.CBufRet.f32 %3764, 1
  %3767 = extractvalue %dx.types.CBufRet.f32 %3764, 2
  %3768 = extractvalue %dx.types.CBufRet.f32 %3764, 3
  %3769 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %3770 = extractvalue %dx.types.CBufRet.f32 %3769, 0
  %3771 = extractvalue %dx.types.CBufRet.f32 %3769, 1
  %3772 = extractvalue %dx.types.CBufRet.f32 %3769, 2
  %3773 = extractvalue %dx.types.CBufRet.f32 %3769, 3
  %3774 = fmul fast float %3760, %2492
  %3775 = call float @dx.op.tertiary.f32(i32 46, float %2493, float %3761, float %3774)  ; FMad(a,b,c)
  %3776 = call float @dx.op.tertiary.f32(i32 46, float %2494, float %3762, float %3775)  ; FMad(a,b,c)
  %3777 = fadd fast float %3776, %3763
  %3778 = fmul fast float %3765, %2492
  %3779 = call float @dx.op.tertiary.f32(i32 46, float %2493, float %3766, float %3778)  ; FMad(a,b,c)
  %3780 = call float @dx.op.tertiary.f32(i32 46, float %2494, float %3767, float %3779)  ; FMad(a,b,c)
  %3781 = fadd fast float %3780, %3768
  %3782 = fmul fast float %3770, %2492
  %3783 = call float @dx.op.tertiary.f32(i32 46, float %2493, float %3771, float %3782)  ; FMad(a,b,c)
  %3784 = call float @dx.op.tertiary.f32(i32 46, float %2494, float %3772, float %3783)  ; FMad(a,b,c)
  %3785 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %3786 = extractvalue %dx.types.CBufRet.f32 %3785, 0
  %3787 = extractvalue %dx.types.CBufRet.f32 %3785, 1
  %3788 = extractvalue %dx.types.CBufRet.f32 %3785, 3
  %3789 = fmul fast float %3788, %3777
  %3790 = fmul fast float %3788, %3781
  %3791 = fadd fast float %3789, %3786
  %3792 = fadd fast float %3790, %3787
  %3793 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %3794 = extractvalue %dx.types.CBufRet.f32 %3793, 0
  %3795 = extractvalue %dx.types.CBufRet.f32 %3793, 1
  %3796 = fsub fast float %3791, %3794
  %3797 = fsub fast float %3792, %3795
  %3798 = fcmp fast olt float %3796, 0.000000e+00
  %3799 = fcmp fast olt float %3797, 0.000000e+00
  %3800 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %3801 = extractvalue %dx.types.CBufRet.f32 %3800, 0
  %3802 = extractvalue %dx.types.CBufRet.f32 %3800, 1
  %3803 = extractvalue %dx.types.CBufRet.f32 %3800, 2
  %3804 = extractvalue %dx.types.CBufRet.f32 %3800, 3
  %3805 = select i1 %3798, float %3801, float %3803
  %3806 = select i1 %3799, float %3802, float %3804
  %3807 = fmul fast float %3805, %3796
  %3808 = fmul fast float %3806, %3797
  %3809 = call float @dx.op.unary.f32(i32 6, float %3807)  ; FAbs(value)
  %3810 = call float @dx.op.unary.f32(i32 6, float %3808)  ; FAbs(value)
  %3811 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %3812 = extractvalue %dx.types.CBufRet.f32 %3811, 0
  %3813 = call float @dx.op.binary.f32(i32 35, float %3809, float %3810)  ; FMax(a,b)
  %3814 = fsub fast float %3812, %3813
  %3815 = call float @dx.op.unary.f32(i32 7, float %3814)  ; Saturate(value)
  %3816 = fcmp fast ogt float %3815, 0.000000e+00
  br i1 %3816, label %3817, label %3858, !dx.controlflow.hints !136

; <label>:3817                                    ; preds = %3758
  %3818 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %3791, float %3792, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3819 = extractvalue %dx.types.ResRet.f32 %3818, 1
  %3820 = fcmp fast ogt float %3819, 0.000000e+00
  br i1 %3820, label %3821, label %3854

; <label>:3821                                    ; preds = %3817
  %3822 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %48, float %3791, float %3792, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3823 = extractvalue %dx.types.ResRet.f32 %3822, 0
  %3824 = extractvalue %dx.types.ResRet.f32 %3822, 1
  %3825 = extractvalue %dx.types.ResRet.f32 %3822, 2
  %3826 = extractvalue %dx.types.ResRet.f32 %3822, 3
  %3827 = fsub fast float 1.000000e+00, %3773
  %3828 = fsub fast float %3827, %3784
  %3829 = fmul fast float %3828, 0x400921FB60000000
  %3830 = fadd fast float %3829, 0x3FF921FB60000000
  %3831 = call float @dx.op.unary.f32(i32 13, float %3830)  ; Sin(value)
  %3832 = fadd fast float %3831, -1.000000e+00
  %3833 = fmul fast float %3832, 0x3FD45F3060000000
  %3834 = fmul fast float %3828, 0x401921FB60000000
  %3835 = fadd fast float %3834, 0x400921FB60000000
  %3836 = call float @dx.op.unary.f32(i32 13, float %3835)  ; Sin(value)
  %3837 = fadd fast float %3836, 0x3E7777A5C0000000
  %3838 = fmul fast float %3837, 0x3FC45F3060000000
  %3839 = fmul fast float %3828, 0x4022D97C80000000
  %3840 = fadd fast float %3839, 0x4012D97C80000000
  %3841 = call float @dx.op.unary.f32(i32 13, float %3840)  ; Sin(value)
  %3842 = fadd fast float %3841, 1.000000e+00
  %3843 = fmul fast float %3842, 0x3FBB2995E0000000
  %3844 = fmul fast float %3828, 0x402921FB60000000
  %3845 = fadd fast float %3844, 0x401921FB60000000
  %3846 = call float @dx.op.unary.f32(i32 13, float %3845)  ; Sin(value)
  %3847 = fadd fast float %3846, 0xBE8777A5C0000000
  %3848 = fmul fast float %3847, 0x3FB45F3060000000
  %3849 = call float @dx.op.dot4.f32(i32 56, float %3823, float %3824, float %3825, float %3826, float %3833, float %3838, float %3843, float %3848)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3850 = fmul fast float %3849, 0xBFF7154760000000
  %3851 = call float @dx.op.unary.f32(i32 21, float %3850)  ; Exp(value)
  %3852 = call float @dx.op.unary.f32(i32 7, float %3851)  ; Saturate(value)
  %3853 = fadd float %3852, -1.000000e+00
  br label %3854

; <label>:3854                                    ; preds = %3821, %3817
  %3855 = phi float [ %3853, %3821 ], [ 0.000000e+00, %3817 ]
  %3856 = fmul fast float %3855, %3815
  %3857 = fadd fast float %3856, 1.000000e+00
  br label %3858

; <label>:3858                                    ; preds = %3854, %3758
  %3859 = phi float [ %3857, %3854 ], [ 1.000000e+00, %3758 ]
  %3860 = fmul fast float %3859, %3754
  %3861 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %3862 = extractvalue %dx.types.CBufRet.f32 %3861, 0
  %3863 = extractvalue %dx.types.CBufRet.f32 %3861, 1
  %3864 = extractvalue %dx.types.CBufRet.f32 %3861, 2
  %3865 = fadd fast float %3862, %269
  %3866 = fadd fast float %3863, %270
  %3867 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %3868 = extractvalue %dx.types.CBufRet.f32 %3867, 1
  %3869 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %3870 = extractvalue %dx.types.CBufRet.f32 %3869, 0
  %3871 = extractvalue %dx.types.CBufRet.f32 %3869, 1
  %3872 = extractvalue %dx.types.CBufRet.f32 %3869, 2
  %3873 = fsub fast float -0.000000e+00, %3865
  %3874 = fsub fast float -0.000000e+00, %3866
  %3875 = fsub fast float %331, %3864
  %3876 = fadd fast float %3875, %3868
  %3877 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %3873, float %3874, float %3876)  ; Dot3(ax,ay,az,bx,by,bz)
  %3878 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %3870, float %3871, float %3872)  ; Dot3(ax,ay,az,bx,by,bz)
  %3879 = fdiv fast float 1.000000e+00, %3878
  %3880 = fmul fast float %3879, %3877
  %3881 = fmul fast float %3870, %3880
  %3882 = fmul fast float %3871, %3880
  %3883 = fadd fast float %3881, %3865
  %3884 = fadd fast float %3882, %3866
  %3885 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %3886 = extractvalue %dx.types.CBufRet.f32 %3885, 0
  %3887 = extractvalue %dx.types.CBufRet.f32 %3885, 1
  %3888 = fsub fast float %3883, %3886
  %3889 = fsub fast float %3884, %3887
  %3890 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %3891 = extractvalue %dx.types.CBufRet.f32 %3890, 2
  %3892 = extractvalue %dx.types.CBufRet.f32 %3890, 3
  %3893 = fmul fast float %3888, %3891
  %3894 = fmul fast float %3889, %3892
  %3895 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %3896 = extractvalue %dx.types.CBufRet.i32 %3895, 3
  %3897 = icmp eq i32 %3896, 0
  br i1 %3897, label %3903, label %3898

; <label>:3898                                    ; preds = %3858
  %3899 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %47, float %3893, float %3894, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3900 = extractvalue %dx.types.ResRet.f32 %3899, 0
  %3901 = extractvalue %dx.types.ResRet.f32 %3899, 1
  %3902 = extractvalue %dx.types.ResRet.f32 %3899, 2
  br label %3908

; <label>:3903                                    ; preds = %3858
  %3904 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %48, float %3893, float %3894, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3905 = extractvalue %dx.types.ResRet.f32 %3904, 0
  %3906 = extractvalue %dx.types.ResRet.f32 %3904, 1
  %3907 = extractvalue %dx.types.ResRet.f32 %3904, 2
  br label %3908

; <label>:3908                                    ; preds = %3903, %3898
  %3909 = phi float [ %3900, %3898 ], [ %3905, %3903 ]
  %3910 = phi float [ %3901, %3898 ], [ %3906, %3903 ]
  %3911 = phi float [ %3902, %3898 ], [ %3907, %3903 ]
  %3912 = extractvalue %dx.types.CBufRet.f32 %3867, 2
  %3913 = fmul fast float %3912, %3909
  %3914 = extractvalue %dx.types.CBufRet.f32 %3867, 0
  %3915 = fsub fast float %3880, %3914
  %3916 = fsub fast float %3915, %3913
  %3917 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3916)  ; FMax(a,b)
  %3918 = fmul fast float %3917, %3910
  %3919 = call float @dx.op.binary.f32(i32 36, float %3911, float %3918)  ; FMin(a,b)
  %3920 = fmul fast float %3919, 0xBFF7154760000000
  %3921 = call float @dx.op.unary.f32(i32 21, float %3920)  ; Exp(value)
  %3922 = fmul fast float %3860, %3921
  br label %3923

; <label>:3923                                    ; preds = %3908, %3753
  %3924 = phi float [ %3922, %3908 ], [ %3754, %3753 ]
  %3925 = call float @dx.op.binary.f32(i32 36, float %3924, float %3924)  ; FMin(a,b)
  %3926 = call float @dx.op.binary.f32(i32 36, float %3924, float %3925)  ; FMin(a,b)
  %3927 = fcmp fast ogt float %3926, 0.000000e+00
  br i1 %3927, label %3928, label %4406, !dx.controlflow.hints !137

; <label>:3928                                    ; preds = %3923
  %3929 = fmul fast float %3924, %2484
  %3930 = fmul fast float %3924, %2485
  %3931 = fmul fast float %3924, %2486
  %3932 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3933 = extractvalue %dx.types.CBufRet.i32 %3932, 0
  %3934 = and i32 %3933, 64
  %3935 = icmp ne i32 %3934, 0
  %3936 = fcmp fast ule float %271, 0.000000e+00
  %3937 = fmul fast float %2473, 5.120000e+02
  %3938 = fmul fast float %2474, 5.120000e+02
  %3939 = fmul fast float %2475, 5.120000e+02
  %3940 = fadd fast float %3939, %271
  %3941 = fsub fast float -0.000000e+00, %3940
  %3942 = select i1 %3936, float %3940, float %3941
  %3943 = fsub fast float %3942, %271
  %3944 = call float @dx.op.dot3.f32(i32 55, float %3937, float %3938, float %3943, float %3937, float %3938, float %3943)  ; Dot3(ax,ay,az,bx,by,bz)
  %3945 = call float @dx.op.unary.f32(i32 25, float %3944)  ; Rsqrt(value)
  %3946 = fmul fast float %3945, %3937
  %3947 = fmul fast float %3945, %3938
  %3948 = fmul fast float %3945, %3943
  %3949 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %331)  ; Dot3(ax,ay,az,bx,by,bz)
  %3950 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %3946, float %3947, float %3948)  ; Dot3(ax,ay,az,bx,by,bz)
  %3951 = fdiv fast float 1.000000e+00, %3950
  %3952 = fmul fast float %3951, %3949
  %3953 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %271, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %3954 = fcmp fast ogt float %3953, 0.000000e+00
  %3955 = fcmp fast olt float %3953, 0.000000e+00
  %3956 = zext i1 %3954 to i32
  %3957 = zext i1 %3955 to i32
  %3958 = sub nsw i32 %3956, %3957
  %3959 = sitofp i32 %3958 to float
  %3960 = call float @dx.op.dot3.f32(i32 55, float %3937, float %3938, float %3942, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %3961 = fcmp fast ogt float %3960, 0.000000e+00
  %3962 = fcmp fast olt float %3960, 0.000000e+00
  %3963 = zext i1 %3961 to i32
  %3964 = zext i1 %3962 to i32
  %3965 = sub nsw i32 %3963, %3964
  %3966 = sitofp i32 %3965 to float
  %3967 = fcmp fast une float %3959, %3966
  br i1 %3967, label %3968, label %3978

; <label>:3968                                    ; preds = %3928
  %3969 = fmul fast float %3952, %3948
  %3970 = fmul fast float %3952, %3947
  %3971 = fmul fast float %3952, %3946
  %3972 = fmul fast float %3971, %3971
  %3973 = fmul fast float %3970, %3970
  %3974 = fadd fast float %3972, %3973
  %3975 = fmul fast float %3969, %3969
  %3976 = fadd fast float %3974, %3975
  %3977 = call float @dx.op.unary.f32(i32 24, float %3976)  ; Sqrt(value)
  br label %3988

; <label>:3978                                    ; preds = %3928
  %3979 = icmp slt i32 %3958, 0
  br i1 %3979, label %3980, label %3988

; <label>:3980                                    ; preds = %3978
  %3981 = fsub fast float %271, %3942
  %3982 = fmul fast float %3937, %3937
  %3983 = fmul fast float %3938, %3938
  %3984 = fadd fast float %3982, %3983
  %3985 = fmul fast float %3981, %3981
  %3986 = fadd fast float %3984, %3985
  %3987 = call float @dx.op.unary.f32(i32 24, float %3986)  ; Sqrt(value)
  br label %3988

; <label>:3988                                    ; preds = %3980, %3978, %3968
  %3989 = phi float [ %3977, %3968 ], [ %3987, %3980 ], [ 0.000000e+00, %3978 ]
  %3990 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 348)  ; CBufferLoadLegacy(handle,regIndex)
  %3991 = extractvalue %dx.types.CBufRet.i32 %3990, 1
  %3992 = icmp ne i32 %3991, 0
  %3993 = and i1 %3936, %3992
  %3994 = call float @dx.op.dot3.f32(i32 55, float %3946, float %3947, float %3948, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %3995 = fmul fast float %3994, %3994
  %3996 = fsub fast float 1.000000e+00, %3995
  %3997 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3998 = extractvalue %dx.types.CBufRet.f32 %3997, 0
  %3999 = extractvalue %dx.types.CBufRet.f32 %3997, 1
  %4000 = extractvalue %dx.types.CBufRet.f32 %3997, 2
  %4001 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4002 = extractvalue %dx.types.CBufRet.f32 %4001, 0
  %4003 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4004 = extractvalue %dx.types.CBufRet.f32 %4003, 0
  %4005 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4006 = extractvalue %dx.types.CBufRet.f32 %4005, 0
  %4007 = extractvalue %dx.types.CBufRet.f32 %4001, 1
  %4008 = extractvalue %dx.types.CBufRet.f32 %4003, 1
  %4009 = extractvalue %dx.types.CBufRet.f32 %4005, 1
  %4010 = extractvalue %dx.types.CBufRet.f32 %4001, 3
  %4011 = extractvalue %dx.types.CBufRet.f32 %4003, 3
  %4012 = extractvalue %dx.types.CBufRet.f32 %4005, 3
  %4013 = fadd fast float %3998, %269
  %4014 = fadd fast float %3999, %270
  %4015 = fadd fast float %4000, %271
  %4016 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 346)  ; CBufferLoadLegacy(handle,regIndex)
  %4017 = extractvalue %dx.types.CBufRet.f32 %4016, 0
  %4018 = extractvalue %dx.types.CBufRet.f32 %4016, 1
  %4019 = extractvalue %dx.types.CBufRet.f32 %4016, 2
  %4020 = extractvalue %dx.types.CBufRet.f32 %4016, 3
  br i1 %3993, label %4021, label %4214

; <label>:4021                                    ; preds = %3988
  %4022 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 349)  ; CBufferLoadLegacy(handle,regIndex)
  %4023 = extractvalue %dx.types.CBufRet.f32 %4022, 0
  %4024 = fmul fast float %4023, %4023
  %4025 = fmul fast float %4024, %3996
  %4026 = fsub fast float 1.000000e+00, %4025
  %4027 = fcmp fast oge float %4026, 0.000000e+00
  %4028 = fmul fast float %4023, %3946
  %4029 = fmul fast float %4023, %3947
  %4030 = fmul fast float %4023, %3948
  %4031 = call float @dx.op.unary.f32(i32 24, float %4026)  ; Sqrt(value)
  %4032 = fmul fast float %4023, %3994
  %4033 = fsub fast float -0.000000e+00, %4031
  %4034 = fsub fast float %4033, %4032
  %4035 = fadd fast float %4034, %4030
  %4036 = select i1 %4027, float %4028, float 0.000000e+00
  %4037 = select i1 %4027, float %4029, float 0.000000e+00
  %4038 = select i1 %4027, float %4035, float 0.000000e+00
  %4039 = fmul fast float %4036, %3989
  %4040 = fmul fast float %4037, %3989
  %4041 = fmul fast float %4038, %3989
  %4042 = fadd fast float %4013, %4039
  %4043 = fadd fast float %4042, %4010
  %4044 = fadd fast float %4014, %4040
  %4045 = fadd fast float %4044, %4011
  %4046 = fadd fast float %4015, %4041
  %4047 = fadd fast float %4046, %4012
  %4048 = fmul fast float %4043, %4002
  %4049 = call float @dx.op.tertiary.f32(i32 46, float %4045, float %4004, float %4048)  ; FMad(a,b,c)
  %4050 = call float @dx.op.tertiary.f32(i32 46, float %4047, float %4006, float %4049)  ; FMad(a,b,c)
  %4051 = fmul fast float %4043, %4007
  %4052 = call float @dx.op.tertiary.f32(i32 46, float %4045, float %4008, float %4051)  ; FMad(a,b,c)
  %4053 = call float @dx.op.tertiary.f32(i32 46, float %4047, float %4009, float %4052)  ; FMad(a,b,c)
  %4054 = fsub fast float %4050, %4010
  %4055 = fsub fast float %4054, %4017
  %4056 = fadd fast float %4055, %4019
  %4057 = fsub fast float %4053, %4011
  %4058 = fsub fast float %4057, %4018
  %4059 = fadd fast float %4058, %4019
  %4060 = fmul fast float %4056, %4020
  %4061 = fmul fast float %4059, %4020
  %4062 = call float @dx.op.unary.f32(i32 7, float %4060)  ; Saturate(value)
  %4063 = call float @dx.op.unary.f32(i32 7, float %4061)  ; Saturate(value)
  %4064 = fsub fast float 1.000000e+00, %4062
  %4065 = fsub fast float 1.000000e+00, %4063
  %4066 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %48, float %4064, float %4065, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4067 = extractvalue %dx.types.ResRet.f32 %4066, 0
  %4068 = fmul fast float %4067, 0x3FBC5ABC00000000
  %4069 = extractvalue %dx.types.CBufRet.f32 %4022, 1
  %4070 = fmul fast float %4069, %4069
  %4071 = fmul fast float %4070, %3996
  %4072 = fsub fast float 1.000000e+00, %4071
  %4073 = fcmp fast oge float %4072, 0.000000e+00
  %4074 = fmul fast float %4069, %3946
  %4075 = fmul fast float %4069, %3947
  %4076 = fmul fast float %4069, %3948
  %4077 = call float @dx.op.unary.f32(i32 24, float %4072)  ; Sqrt(value)
  %4078 = fmul fast float %4069, %3994
  %4079 = fsub fast float -0.000000e+00, %4077
  %4080 = fsub fast float %4079, %4078
  %4081 = fadd fast float %4080, %4076
  %4082 = select i1 %4073, float %4074, float 0.000000e+00
  %4083 = select i1 %4073, float %4075, float 0.000000e+00
  %4084 = select i1 %4073, float %4081, float 0.000000e+00
  %4085 = fmul fast float %4082, %3989
  %4086 = fmul fast float %4083, %3989
  %4087 = fmul fast float %4084, %3989
  %4088 = fadd fast float %4013, %4085
  %4089 = fadd fast float %4088, %4010
  %4090 = fadd fast float %4014, %4086
  %4091 = fadd fast float %4090, %4011
  %4092 = fadd fast float %4015, %4087
  %4093 = fadd fast float %4092, %4012
  %4094 = fmul fast float %4089, %4002
  %4095 = call float @dx.op.tertiary.f32(i32 46, float %4091, float %4004, float %4094)  ; FMad(a,b,c)
  %4096 = call float @dx.op.tertiary.f32(i32 46, float %4093, float %4006, float %4095)  ; FMad(a,b,c)
  %4097 = fmul fast float %4089, %4007
  %4098 = call float @dx.op.tertiary.f32(i32 46, float %4091, float %4008, float %4097)  ; FMad(a,b,c)
  %4099 = call float @dx.op.tertiary.f32(i32 46, float %4093, float %4009, float %4098)  ; FMad(a,b,c)
  %4100 = fsub fast float %4096, %4010
  %4101 = fsub fast float %4100, %4017
  %4102 = fadd fast float %4101, %4019
  %4103 = fsub fast float %4099, %4011
  %4104 = fsub fast float %4103, %4018
  %4105 = fadd fast float %4104, %4019
  %4106 = fmul fast float %4102, %4020
  %4107 = fmul fast float %4105, %4020
  %4108 = call float @dx.op.unary.f32(i32 7, float %4106)  ; Saturate(value)
  %4109 = call float @dx.op.unary.f32(i32 7, float %4107)  ; Saturate(value)
  %4110 = fsub fast float 1.000000e+00, %4108
  %4111 = fsub fast float 1.000000e+00, %4109
  %4112 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %48, float %4110, float %4111, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4113 = extractvalue %dx.types.ResRet.f32 %4112, 0
  %4114 = fmul fast float %4113, 0x3F9E4BBD60000000
  %4115 = extractvalue %dx.types.CBufRet.f32 %4022, 2
  %4116 = fmul fast float %4115, %4115
  %4117 = fmul fast float %4116, %3996
  %4118 = fsub fast float 1.000000e+00, %4117
  %4119 = fcmp fast oge float %4118, 0.000000e+00
  %4120 = fmul fast float %4115, %3946
  %4121 = fmul fast float %4115, %3947
  %4122 = fmul fast float %4115, %3948
  %4123 = call float @dx.op.unary.f32(i32 24, float %4118)  ; Sqrt(value)
  %4124 = fmul fast float %4115, %3994
  %4125 = fsub fast float -0.000000e+00, %4123
  %4126 = fsub fast float %4125, %4124
  %4127 = fadd fast float %4126, %4122
  %4128 = select i1 %4119, float %4120, float 0.000000e+00
  %4129 = select i1 %4119, float %4121, float 0.000000e+00
  %4130 = select i1 %4119, float %4127, float 0.000000e+00
  %4131 = fmul fast float %4128, %3989
  %4132 = fmul fast float %4129, %3989
  %4133 = fmul fast float %4130, %3989
  %4134 = fadd fast float %4013, %4131
  %4135 = fadd fast float %4134, %4010
  %4136 = fadd fast float %4014, %4132
  %4137 = fadd fast float %4136, %4011
  %4138 = fadd fast float %4015, %4133
  %4139 = fadd fast float %4138, %4012
  %4140 = fmul fast float %4135, %4002
  %4141 = call float @dx.op.tertiary.f32(i32 46, float %4137, float %4004, float %4140)  ; FMad(a,b,c)
  %4142 = call float @dx.op.tertiary.f32(i32 46, float %4139, float %4006, float %4141)  ; FMad(a,b,c)
  %4143 = fmul fast float %4135, %4007
  %4144 = call float @dx.op.tertiary.f32(i32 46, float %4137, float %4008, float %4143)  ; FMad(a,b,c)
  %4145 = call float @dx.op.tertiary.f32(i32 46, float %4139, float %4009, float %4144)  ; FMad(a,b,c)
  %4146 = fsub fast float %4142, %4010
  %4147 = fsub fast float %4146, %4017
  %4148 = fadd fast float %4147, %4019
  %4149 = fsub fast float %4145, %4011
  %4150 = fsub fast float %4149, %4018
  %4151 = fadd fast float %4150, %4019
  %4152 = fmul fast float %4148, %4020
  %4153 = fmul fast float %4151, %4020
  %4154 = call float @dx.op.unary.f32(i32 7, float %4152)  ; Saturate(value)
  %4155 = call float @dx.op.unary.f32(i32 7, float %4153)  ; Saturate(value)
  %4156 = fsub fast float 1.000000e+00, %4154
  %4157 = fsub fast float 1.000000e+00, %4155
  %4158 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %48, float %4156, float %4157, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4159 = extractvalue %dx.types.ResRet.f32 %4158, 0
  %4160 = fmul fast float %4159, 0x3FDDEACB00000000
  %4161 = fadd fast float %4160, %4114
  %4162 = extractvalue %dx.types.CBufRet.f32 %4022, 3
  %4163 = fmul fast float %4162, %4162
  %4164 = fmul fast float %4163, %3996
  %4165 = fsub fast float 1.000000e+00, %4164
  %4166 = fcmp fast oge float %4165, 0.000000e+00
  %4167 = fmul fast float %4162, %3946
  %4168 = fmul fast float %4162, %3947
  %4169 = fmul fast float %4162, %3948
  %4170 = call float @dx.op.unary.f32(i32 24, float %4165)  ; Sqrt(value)
  %4171 = fmul fast float %4162, %3994
  %4172 = fsub fast float -0.000000e+00, %4170
  %4173 = fsub fast float %4172, %4171
  %4174 = fadd fast float %4173, %4169
  %4175 = select i1 %4166, float %4167, float 0.000000e+00
  %4176 = select i1 %4166, float %4168, float 0.000000e+00
  %4177 = select i1 %4166, float %4174, float 0.000000e+00
  %4178 = fmul fast float %4175, %3989
  %4179 = fmul fast float %4176, %3989
  %4180 = fmul fast float %4177, %3989
  %4181 = fadd fast float %4013, %4178
  %4182 = fadd fast float %4181, %4010
  %4183 = fadd fast float %4014, %4179
  %4184 = fadd fast float %4183, %4011
  %4185 = fadd fast float %4015, %4180
  %4186 = fadd fast float %4185, %4012
  %4187 = fmul fast float %4182, %4002
  %4188 = call float @dx.op.tertiary.f32(i32 46, float %4184, float %4004, float %4187)  ; FMad(a,b,c)
  %4189 = call float @dx.op.tertiary.f32(i32 46, float %4186, float %4006, float %4188)  ; FMad(a,b,c)
  %4190 = fmul fast float %4182, %4007
  %4191 = call float @dx.op.tertiary.f32(i32 46, float %4184, float %4008, float %4190)  ; FMad(a,b,c)
  %4192 = call float @dx.op.tertiary.f32(i32 46, float %4186, float %4009, float %4191)  ; FMad(a,b,c)
  %4193 = fsub fast float %4189, %4010
  %4194 = fsub fast float %4193, %4017
  %4195 = fadd fast float %4194, %4019
  %4196 = fsub fast float %4192, %4011
  %4197 = fsub fast float %4196, %4018
  %4198 = fadd fast float %4197, %4019
  %4199 = fmul fast float %4195, %4020
  %4200 = fmul fast float %4198, %4020
  %4201 = call float @dx.op.unary.f32(i32 7, float %4199)  ; Saturate(value)
  %4202 = call float @dx.op.unary.f32(i32 7, float %4200)  ; Saturate(value)
  %4203 = fsub fast float 1.000000e+00, %4201
  %4204 = fsub fast float 1.000000e+00, %4202
  %4205 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %48, float %4203, float %4204, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4206 = extractvalue %dx.types.ResRet.f32 %4205, 0
  %4207 = fmul fast float %4206, 0x3FE0183CA0000000
  %4208 = fmul fast float %4206, 0x3FB51033E0000000
  %4209 = fadd fast float %4161, %4207
  %4210 = fadd fast float %4159, %4113
  %4211 = fmul fast float %4210, 0x3FD9D2A200000000
  %4212 = fadd fast float %4208, %4068
  %4213 = fadd fast float %4212, %4211
  br label %4260

; <label>:4214                                    ; preds = %3988
  %4215 = fmul fast float %3996, 0x3FE2024E20000000
  %4216 = fsub fast float 1.000000e+00, %4215
  %4217 = fcmp fast oge float %4216, 0.000000e+00
  %4218 = fmul fast float %3946, 0x3FE8018960000000
  %4219 = fmul fast float %3947, 0x3FE8018960000000
  %4220 = fmul fast float %3948, 0x3FE8018960000000
  %4221 = call float @dx.op.unary.f32(i32 24, float %4216)  ; Sqrt(value)
  %4222 = fmul fast float %3994, 0x3FE8018960000000
  %4223 = fsub fast float %4220, %4221
  %4224 = fsub fast float %4223, %4222
  %4225 = select i1 %4217, float %4218, float 0.000000e+00
  %4226 = select i1 %4217, float %4219, float 0.000000e+00
  %4227 = select i1 %4217, float %4224, float 0.000000e+00
  %4228 = select i1 %3936, float %4225, float %3946
  %4229 = select i1 %3936, float %4226, float %3947
  %4230 = select i1 %3936, float %4227, float %3948
  %4231 = fmul fast float %4228, %3989
  %4232 = fmul fast float %4229, %3989
  %4233 = fmul fast float %4230, %3989
  %4234 = fadd fast float %4013, %4231
  %4235 = fadd fast float %4234, %4010
  %4236 = fadd fast float %4014, %4232
  %4237 = fadd fast float %4236, %4011
  %4238 = fadd fast float %4015, %4233
  %4239 = fadd fast float %4238, %4012
  %4240 = fmul fast float %4235, %4002
  %4241 = call float @dx.op.tertiary.f32(i32 46, float %4237, float %4004, float %4240)  ; FMad(a,b,c)
  %4242 = call float @dx.op.tertiary.f32(i32 46, float %4239, float %4006, float %4241)  ; FMad(a,b,c)
  %4243 = fmul fast float %4235, %4007
  %4244 = call float @dx.op.tertiary.f32(i32 46, float %4237, float %4008, float %4243)  ; FMad(a,b,c)
  %4245 = call float @dx.op.tertiary.f32(i32 46, float %4239, float %4009, float %4244)  ; FMad(a,b,c)
  %4246 = fsub fast float %4242, %4010
  %4247 = fsub fast float %4246, %4017
  %4248 = fadd fast float %4247, %4019
  %4249 = fsub fast float %4245, %4011
  %4250 = fsub fast float %4249, %4018
  %4251 = fadd fast float %4250, %4019
  %4252 = fmul fast float %4248, %4020
  %4253 = fmul fast float %4251, %4020
  %4254 = call float @dx.op.unary.f32(i32 7, float %4252)  ; Saturate(value)
  %4255 = call float @dx.op.unary.f32(i32 7, float %4253)  ; Saturate(value)
  %4256 = fsub fast float 1.000000e+00, %4254
  %4257 = fsub fast float 1.000000e+00, %4255
  %4258 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %48, float %4256, float %4257, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4259 = extractvalue %dx.types.ResRet.f32 %4258, 0
  br label %4260

; <label>:4260                                    ; preds = %4214, %4021
  %4261 = phi float [ %4259, %4214 ], [ %4209, %4021 ]
  %4262 = phi float [ %4259, %4214 ], [ %4213, %4021 ]
  %4263 = phi float [ %4259, %4214 ], [ %4067, %4021 ]
  %4264 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4265 = extractvalue %dx.types.CBufRet.f32 %4264, 0
  %4266 = call float @dx.op.unary.f32(i32 6, float %4265)  ; FAbs(value)
  %4267 = fmul fast float %3989, %3989
  %4268 = fadd fast float %4267, 1.000000e+00
  %4269 = fdiv fast float %4266, %4268
  %4270 = call float @dx.op.unary.f32(i32 7, float %4269)  ; Saturate(value)
  %4271 = call float @dx.op.unary.f32(i32 6, float %3994)  ; FAbs(value)
  %4272 = fsub fast float 1.000000e+00, %4271
  %4273 = bitcast float %4272 to i32
  %4274 = sitofp i32 %4273 to float
  %4275 = fptosi float %4274 to i32
  %4276 = bitcast i32 %4275 to float
  %4277 = fmul fast float %4276, 0x3FEF333340000000
  %4278 = fadd fast float %4277, 0x3F999999A0000000
  %4279 = call float @dx.op.unary.f32(i32 7, float %4278)  ; Saturate(value)
  %4280 = fsub fast float 1.000000e+00, %4279
  %4281 = fadd fast float %4261, 1.000000e+00
  %4282 = fadd fast float %4262, 1.000000e+00
  %4283 = fadd fast float %4263, 1.000000e+00
  %4284 = fmul fast float %4280, %4281
  %4285 = fmul fast float %4280, %4282
  %4286 = fmul fast float %4280, %4283
  %4287 = fmul fast float %4270, %4281
  %4288 = fmul fast float %4287, %4279
  %4289 = fmul fast float %4270, %4282
  %4290 = fmul fast float %4289, %4279
  %4291 = fmul fast float %4270, %4283
  %4292 = fmul fast float %4291, %4279
  %4293 = fadd fast float %4288, 1.000000e+00
  %4294 = fadd fast float %4290, 1.000000e+00
  %4295 = fadd fast float %4292, 1.000000e+00
  %4296 = call float @dx.op.unary.f32(i32 6, float %271)  ; FAbs(value)
  %4297 = call float @dx.op.unary.f32(i32 7, float %4296)  ; Saturate(value)
  %4298 = select i1 %3936, float %4284, float %4293
  %4299 = select i1 %3936, float %4285, float %4294
  %4300 = select i1 %3936, float %4286, float %4295
  %4301 = select i1 %3935, float %4297, float 0.000000e+00
  %4302 = fadd fast float %4298, -1.000000e+00
  %4303 = fadd fast float %4299, -1.000000e+00
  %4304 = fadd fast float %4300, -1.000000e+00
  %4305 = fmul fast float %4302, %4301
  %4306 = fmul fast float %4303, %4301
  %4307 = fmul fast float %4304, %4301
  %4308 = fadd fast float %4305, 1.000000e+00
  %4309 = fadd fast float %4306, 1.000000e+00
  %4310 = fadd fast float %4307, 1.000000e+00
  %4311 = fmul fast float %3929, %4308
  %4312 = fmul fast float %3930, %4309
  %4313 = fmul fast float %3931, %4310
  %4314 = fsub fast float %2473, %334
  %4315 = fsub fast float %2474, %335
  %4316 = fsub fast float %2475, %336
  %4317 = call float @dx.op.dot3.f32(i32 55, float %4314, float %4315, float %4316, float %4314, float %4315, float %4316)  ; Dot3(ax,ay,az,bx,by,bz)
  %4318 = call float @dx.op.unary.f32(i32 25, float %4317)  ; Rsqrt(value)
  %4319 = fmul fast float %4318, %4314
  %4320 = fmul fast float %4318, %4315
  %4321 = fmul fast float %4318, %4316
  %4322 = call float @dx.op.dot3.f32(i32 55, float %2473, float %2474, float %2475, float %200, float %201, float %202)  ; Dot3(ax,ay,az,bx,by,bz)
  %4323 = call float @dx.op.dot3.f32(i32 55, float %337, float %338, float %339, float %4319, float %4320, float %4321)  ; Dot3(ax,ay,az,bx,by,bz)
  %4324 = call float @dx.op.unary.f32(i32 7, float %4322)  ; Saturate(value)
  %4325 = fmul fast float %4324, %4324
  %4326 = fmul fast float %4325, 0x47DE623840000000
  %4327 = call float @dx.op.unary.f32(i32 7, float %4326)  ; Saturate(value)
  %4328 = fmul fast float %4327, %4324
  %4329 = call float @dx.op.dot3.f32(i32 55, float %200, float %201, float %202, float %4319, float %4320, float %4321)  ; Dot3(ax,ay,az,bx,by,bz)
  %4330 = fmul fast float %4329, %4329
  %4331 = call float @dx.op.unary.f32(i32 6, float %4322)  ; FAbs(value)
  %4332 = fsub fast float 1.000000e+00, %354
  %4333 = fmul fast float %342, %342
  %4334 = fmul fast float %4333, %4332
  %4335 = fadd fast float %4334, %354
  %4336 = bitcast float %4335 to i32
  %4337 = ashr i32 %4336, 1
  %4338 = add nsw i32 %4337, 532487669
  %4339 = bitcast i32 %4338 to float
  %4340 = fadd fast float %4339, %342
  %4341 = fmul fast float %354, %4330
  %4342 = fsub fast float 1.000000e+00, %4330
  %4343 = fadd fast float %4342, %4341
  %4344 = fmul fast float %4331, %4331
  %4345 = fmul fast float %4344, %4332
  %4346 = fadd fast float %4345, %354
  %4347 = bitcast float %4346 to i32
  %4348 = ashr i32 %4347, 1
  %4349 = add nsw i32 %4348, 532487669
  %4350 = bitcast i32 %4349 to float
  %4351 = fadd fast float %4350, %4331
  %4352 = fmul fast float %4343, %4343
  %4353 = fmul fast float %4352, %4340
  %4354 = fmul fast float %4353, %4351
  %4355 = fdiv fast float 0x3FF0A00000000000, %4354
  %4356 = fmul fast float %4355, %354
  %4357 = call float @dx.op.unary.f32(i32 6, float %4323)  ; FAbs(value)
  %4358 = fsub fast float 1.000000e+00, %4357
  %4359 = bitcast float %4358 to i32
  %4360 = sitofp i32 %4359 to float
  %4361 = fmul fast float %4360, 5.000000e+00
  %4362 = fadd fast float %4361, 0xC1EFBF8940000000
  %4363 = fptosi float %4362 to i32
  %4364 = bitcast i32 %4363 to float
  %4365 = fsub fast float 1.000000e+00, %320
  %4366 = fsub fast float 1.000000e+00, %321
  %4367 = fsub fast float 1.000000e+00, %340
  %4368 = fmul fast float %4364, %4365
  %4369 = fmul fast float %4364, %4366
  %4370 = fmul fast float %4364, %4367
  %4371 = fadd fast float %4368, %320
  %4372 = fadd fast float %4369, %321
  %4373 = fadd fast float %4370, %340
  %4374 = fmul fast float %4322, 9.843750e-01
  %4375 = fadd fast float %4374, 7.812500e-03
  %4376 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %48, float %4375, float %1959, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4377 = extractvalue %dx.types.ResRet.f32 %4376, 2
  %4378 = extractvalue %dx.types.ResRet.f32 %4376, 3
  %4379 = fmul fast float %4377, %320
  %4380 = fmul fast float %4377, %321
  %4381 = fmul fast float %4377, %340
  %4382 = fadd fast float %4379, %4378
  %4383 = fadd fast float %4380, %4378
  %4384 = fadd fast float %4381, %4378
  %4385 = call float @dx.op.binary.f32(i32 35, float %4383, float %4384)  ; FMax(a,b)
  %4386 = call float @dx.op.binary.f32(i32 35, float %4382, float %4385)  ; FMax(a,b)
  %4387 = fsub fast float 1.000000e+00, %4386
  %4388 = fmul fast float %4328, %4311
  %4389 = fmul fast float %4388, %4387
  %4390 = fmul fast float %4328, %4312
  %4391 = fmul fast float %4390, %4387
  %4392 = fmul fast float %4328, %4313
  %4393 = fmul fast float %4392, %4387
  %4394 = fadd fast float %4389, %2463
  %4395 = fadd fast float %4391, %2464
  %4396 = fadd fast float %4393, %2465
  %4397 = fmul fast float %4388, %4356
  %4398 = fmul fast float %4397, %4371
  %4399 = fmul fast float %4390, %4356
  %4400 = fmul fast float %4399, %4372
  %4401 = fmul fast float %4392, %4356
  %4402 = fmul fast float %4401, %4373
  %4403 = fadd fast float %4398, %2466
  %4404 = fadd fast float %4400, %2467
  %4405 = fadd fast float %4402, %2468
  br label %4406

; <label>:4406                                    ; preds = %4260, %3923, %2459
  %4407 = phi float [ %2466, %2459 ], [ %2466, %3923 ], [ %4403, %4260 ]
  %4408 = phi float [ %2467, %2459 ], [ %2467, %3923 ], [ %4404, %4260 ]
  %4409 = phi float [ %2468, %2459 ], [ %2468, %3923 ], [ %4405, %4260 ]
  %4410 = phi float [ %2463, %2459 ], [ %2463, %3923 ], [ %4394, %4260 ]
  %4411 = phi float [ %2464, %2459 ], [ %2464, %3923 ], [ %4395, %4260 ]
  %4412 = phi float [ %2465, %2459 ], [ %2465, %3923 ], [ %4396, %4260 ]
  %4413 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %4414 = extractvalue %dx.types.CBufRet.i32 %4413, 0
  %4415 = icmp eq i32 %4414, 0
  br i1 %4415, label %5438, label %4416

; <label>:4416                                    ; preds = %4406
  %4417 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %4418 = extractvalue %dx.types.CBufRet.f32 %4417, 2
  %4419 = extractvalue %dx.types.CBufRet.f32 %4417, 3
  %4420 = fmul fast float %4418, %77
  %4421 = fmul fast float %4419, %78
  %4422 = fptoui float %4420 to i32
  %4423 = fptoui float %4421 to i32
  %4424 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %4425 = extractvalue %dx.types.CBufRet.f32 %4424, 0
  %4426 = extractvalue %dx.types.CBufRet.f32 %4424, 2
  %4427 = extractvalue %dx.types.CBufRet.f32 %4424, 3
  %4428 = fadd fast float %235, -4.000000e+00
  %4429 = call float @dx.op.binary.f32(i32 35, float %4428, float 0.000000e+00)  ; FMax(a,b)
  %4430 = fadd fast float %4429, %4425
  %4431 = fmul fast float %4430, %4426
  %4432 = call float @dx.op.unary.f32(i32 23, float %4431)  ; Log(value)
  %4433 = fmul fast float %4432, %4427
  %4434 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %4435 = extractvalue %dx.types.CBufRet.f32 %4434, 2
  %4436 = fmul fast float %4433, %4435
  %4437 = call float @dx.op.unary.f32(i32 7, float %4436)  ; Saturate(value)
  %4438 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %4439 = extractvalue %dx.types.CBufRet.i32 %4438, 1
  %4440 = add i32 %4439, -1
  %4441 = uitofp i32 %4439 to float
  %4442 = fmul fast float %4441, %4437
  %4443 = fptoui float %4442 to i32
  %4444 = call i32 @dx.op.binary.i32(i32 40, i32 %4443, i32 %4440)  ; UMin(a,b)
  %4445 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %4446 = extractvalue %dx.types.CBufRet.i32 %4445, 2
  %4447 = extractvalue %dx.types.CBufRet.i32 %4445, 3
  %4448 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4423, i32 %4446, i32 %4422)  ; UMad(a,b,c)
  %4449 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4444, i32 %4447, i32 %4448)  ; UMad(a,b,c)
  %4450 = add nsw i32 %4414, -1
  %4451 = call i32 @dx.op.binary.i32(i32 37, i32 %4450, i32 0)  ; IMax(a,b)
  %4452 = call float @dx.op.binary.f32(i32 35, float %235, float 0.000000e+00)  ; FMax(a,b)
  %4453 = fptoui float %4452 to i32
  %4454 = lshr i32 %4453, 5
  %4455 = call i32 @dx.op.binary.i32(i32 40, i32 %4454, i32 8191)  ; UMin(a,b)
  %4456 = shl i32 %4455, 2
  %4457 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %4456, i32 undef)  ; BufferLoad(srv,index,wot)
  %4458 = extractvalue %dx.types.ResRet.i32 %4457, 0
  %4459 = lshr i32 %4458, 16
  %4460 = and i32 %4458, 65535
  %4461 = lshr i32 %4458, 21
  %4462 = lshr i32 %4460, 5
  %4463 = call i32 @dx.op.binary.i32(i32 40, i32 %4462, i32 %4451)  ; UMin(a,b)
  %4464 = icmp ugt i32 %4461, %4463
  br i1 %4464, label %5438, label %4465

; <label>:4465                                    ; preds = %4416
  br label %4466

; <label>:4466                                    ; preds = %5428, %4465
  %4467 = phi i32 [ %5435, %5428 ], [ %4461, %4465 ]
  %4468 = phi float [ %5429, %5428 ], [ %4407, %4465 ]
  %4469 = phi float [ %5430, %5428 ], [ %4408, %4465 ]
  %4470 = phi float [ %5431, %5428 ], [ %4409, %4465 ]
  %4471 = phi float [ %5432, %5428 ], [ %4410, %4465 ]
  %4472 = phi float [ %5433, %5428 ], [ %4411, %4465 ]
  %4473 = phi float [ %5434, %5428 ], [ %4412, %4465 ]
  %4474 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %4475 = extractvalue %dx.types.CBufRet.i32 %4474, 0
  %4476 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4449, i32 %4475, i32 %4467)  ; UMad(a,b,c)
  %4477 = shl i32 %4476, 2
  %4478 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %4477, i32 undef)  ; BufferLoad(srv,index,wot)
  %4479 = extractvalue %dx.types.ResRet.i32 %4478, 0
  %4480 = shl i32 %4467, 5
  %4481 = sub nsw i32 %4459, %4480
  %4482 = call i32 @dx.op.binary.i32(i32 37, i32 %4481, i32 0)  ; IMax(a,b)
  %4483 = call i32 @dx.op.binary.i32(i32 38, i32 %4482, i32 31)  ; IMin(a,b)
  %4484 = sub nsw i32 1, %4459
  %4485 = add nsw i32 %4484, %4460
  %4486 = call i32 @dx.op.binary.i32(i32 37, i32 %4485, i32 0)  ; IMax(a,b)
  %4487 = call i32 @dx.op.binary.i32(i32 38, i32 %4486, i32 32)  ; IMin(a,b)
  %4488 = and i32 %4487, 31
  %4489 = shl i32 -1, %4488
  %4490 = xor i32 %4489, -1
  %4491 = and i32 %4483, 31
  %4492 = shl i32 %4490, %4491
  %4493 = icmp eq i32 %4487, 32
  %4494 = select i1 %4493, i32 -1, i32 %4492
  %4495 = and i32 %4494, %4479
  %4496 = icmp eq i32 %4495, 0
  br i1 %4496, label %5428, label %4497

; <label>:4497                                    ; preds = %4466
  br label %4498

; <label>:4498                                    ; preds = %4647, %4497
  %4499 = phi i32 [ %4510, %4647 ], [ %4495, %4497 ]
  %4500 = phi float [ %4648, %4647 ], [ %4468, %4497 ]
  %4501 = phi float [ %4649, %4647 ], [ %4469, %4497 ]
  %4502 = phi float [ %4650, %4647 ], [ %4470, %4497 ]
  %4503 = phi float [ %4651, %4647 ], [ %4471, %4497 ]
  %4504 = phi float [ %4652, %4647 ], [ %4472, %4497 ]
  %4505 = phi float [ %4653, %4647 ], [ %4473, %4497 ]
  %4506 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4499)  ; FirstbitLo(value)
  %4507 = add i32 %4506, %4480
  %4508 = and i32 %4506, 31
  %4509 = shl i32 1, %4508
  %4510 = xor i32 %4509, %4499
  %4511 = mul i32 %4507, 112
  %4512 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %4511, i32 undef)  ; BufferLoad(srv,index,wot)
  %4513 = extractvalue %dx.types.ResRet.f32 %4512, 0
  %4514 = extractvalue %dx.types.ResRet.f32 %4512, 1
  %4515 = extractvalue %dx.types.ResRet.f32 %4512, 2
  %4516 = add i32 %4511, 16
  %4517 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %4516, i32 undef)  ; BufferLoad(srv,index,wot)
  %4518 = extractvalue %dx.types.ResRet.f32 %4517, 0
  %4519 = extractvalue %dx.types.ResRet.f32 %4517, 1
  %4520 = extractvalue %dx.types.ResRet.f32 %4517, 2
  %4521 = add i32 %4511, 28
  %4522 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %4521, i32 undef)  ; BufferLoad(srv,index,wot)
  %4523 = extractvalue %dx.types.ResRet.i32 %4522, 0
  %4524 = add i32 %4511, 32
  %4525 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %4524, i32 undef)  ; BufferLoad(srv,index,wot)
  %4526 = extractvalue %dx.types.ResRet.f32 %4525, 0
  %4527 = extractvalue %dx.types.ResRet.f32 %4525, 1
  %4528 = extractvalue %dx.types.ResRet.f32 %4525, 2
  %4529 = add i32 %4511, 44
  %4530 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %4529, i32 undef)  ; BufferLoad(srv,index,wot)
  %4531 = extractvalue %dx.types.ResRet.f32 %4530, 0
  %4532 = add i32 %4511, 48
  %4533 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %4532, i32 undef)  ; BufferLoad(srv,index,wot)
  %4534 = extractvalue %dx.types.ResRet.f32 %4533, 0
  %4535 = extractvalue %dx.types.ResRet.f32 %4533, 1
  %4536 = extractvalue %dx.types.ResRet.f32 %4533, 2
  %4537 = fsub fast float -0.000000e+00, %4536
  %4538 = extractvalue %dx.types.ResRet.f32 %4533, 3
  %4539 = add i32 %4511, 64
  %4540 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %4539, i32 undef)  ; BufferLoad(srv,index,wot)
  %4541 = extractvalue %dx.types.ResRet.f32 %4540, 0
  %4542 = extractvalue %dx.types.ResRet.f32 %4540, 1
  %4543 = extractvalue %dx.types.ResRet.f32 %4540, 2
  %4544 = extractvalue %dx.types.ResRet.f32 %4540, 3
  %4545 = add i32 %4511, 80
  %4546 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %4545, i32 undef)  ; BufferLoad(srv,index,wot)
  %4547 = extractvalue %dx.types.ResRet.f32 %4546, 1
  %4548 = extractvalue %dx.types.ResRet.f32 %4546, 2
  %4549 = add i32 %4511, 92
  %4550 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %4549, i32 undef)  ; BufferLoad(srv,index,wot)
  %4551 = extractvalue %dx.types.ResRet.i32 %4550, 0
  %4552 = call float @dx.op.dot3.f32(i32 55, float %4513, float %4514, float %4515, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4553 = select i1 %129, float %4547, float %4513
  %4554 = select i1 %129, float %4552, float %4514
  %4555 = select i1 %129, float %4548, float %4515
  %4556 = and i32 %4551, 65535
  %4557 = uitofp i32 %4556 to float
  %4558 = lshr i32 %4551, 16
  %4559 = uitofp i32 %4558 to float
  %4560 = and i32 %4523, 65535
  %4561 = and i32 %4523, 50331648
  %4562 = icmp eq i32 %4561, 33554432
  %4563 = call float @dx.op.dot3.f32(i32 55, float %4526, float %4527, float %4528, float %4526, float %4527, float %4528)  ; Dot3(ax,ay,az,bx,by,bz)
  %4564 = fsub fast float %269, %4534
  %4565 = fsub fast float %270, %4535
  %4566 = fsub fast float %271, %4536
  %4567 = call float @dx.op.dot3.f32(i32 55, float %4564, float %4565, float %4566, float %4526, float %4527, float %4528)  ; Dot3(ax,ay,az,bx,by,bz)
  %4568 = fdiv fast float %4567, %4563
  %4569 = call float @dx.op.binary.f32(i32 35, float %4568, float -1.000000e+00)  ; FMax(a,b)
  %4570 = call float @dx.op.binary.f32(i32 36, float %4569, float 1.000000e+00)  ; FMin(a,b)
  %4571 = fmul fast float %4570, %4526
  %4572 = fmul fast float %4570, %4527
  %4573 = fmul fast float %4570, %4528
  %4574 = fadd fast float %4571, %4534
  %4575 = fadd fast float %4572, %4535
  %4576 = fadd fast float %4573, %4536
  %4577 = fsub fast float %4574, %269
  %4578 = fsub fast float %4575, %270
  %4579 = fsub fast float %4576, %271
  %4580 = call float @dx.op.dot3.f32(i32 55, float %4577, float %4578, float %4579, float %4577, float %4578, float %4579)  ; Dot3(ax,ay,az,bx,by,bz)
  %4581 = call float @dx.op.unary.f32(i32 24, float %4580)  ; Sqrt(value)
  %4582 = fdiv fast float 1.000000e+00, %4581
  %4583 = fmul fast float %4577, %4582
  %4584 = fmul fast float %4578, %4582
  %4585 = fmul fast float %4579, %4582
  br i1 %4562, label %4586, label %4610

; <label>:4586                                    ; preds = %4498
  %4587 = fmul fast float %4543, %4518
  %4588 = fmul fast float %4543, %4519
  %4589 = fmul fast float %4543, %4520
  %4590 = fsub fast float %4587, %269
  %4591 = fadd fast float %4590, %4574
  %4592 = fsub fast float %4588, %270
  %4593 = fadd fast float %4592, %4575
  %4594 = fsub fast float %4589, %271
  %4595 = fadd fast float %4594, %4576
  %4596 = call float @dx.op.dot3.f32(i32 55, float %4591, float %4593, float %4595, float %4591, float %4593, float %4595)  ; Dot3(ax,ay,az,bx,by,bz)
  %4597 = call float @dx.op.unary.f32(i32 25, float %4596)  ; Rsqrt(value)
  %4598 = fmul fast float %4597, %4591
  %4599 = fmul fast float %4597, %4593
  %4600 = fmul fast float %4597, %4595
  %4601 = fsub fast float %269, %4574
  %4602 = fsub fast float %270, %4575
  %4603 = fsub fast float %271, %4576
  %4604 = fsub fast float -0.000000e+00, %4601
  %4605 = fsub fast float -0.000000e+00, %4602
  %4606 = fsub fast float -0.000000e+00, %4603
  %4607 = call float @dx.op.dot3.f32(i32 55, float %4604, float %4605, float %4606, float %4518, float %4519, float %4520)  ; Dot3(ax,ay,az,bx,by,bz)
  %4608 = fcmp fast ogt float %4607, 0.000000e+00
  %4609 = uitofp i1 %4608 to float
  br label %4610

; <label>:4610                                    ; preds = %4586, %4498
  %4611 = phi float [ %4609, %4586 ], [ 1.000000e+00, %4498 ]
  %4612 = phi float [ %4598, %4586 ], [ %4583, %4498 ]
  %4613 = phi float [ %4599, %4586 ], [ %4584, %4498 ]
  %4614 = phi float [ %4600, %4586 ], [ %4585, %4498 ]
  %4615 = call float @dx.op.dot3.f32(i32 55, float %4518, float %4519, float %4520, float %4612, float %4613, float %4614)  ; Dot3(ax,ay,az,bx,by,bz)
  %4616 = fmul fast float %4615, %4615
  %4617 = call float @dx.op.unary.f32(i32 7, float %4616)  ; Saturate(value)
  %4618 = fsub fast float 1.000000e+00, %4617
  %4619 = fmul fast float %4618, 5.000000e-01
  %4620 = fcmp fast ogt float %4615, 0.000000e+00
  %4621 = fsub fast float 1.000000e+00, %4619
  %4622 = select i1 %4620, float %4619, float %4621
  %4623 = fmul fast float %4622, %4559
  %4624 = fadd fast float %4623, %4557
  %4625 = fmul fast float %4624, 0x3EF0001000000000
  %4626 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %48, float %4625, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4627 = extractvalue %dx.types.ResRet.f32 %4626, 0
  %4628 = fmul fast float %4615, %4541
  %4629 = fadd fast float %4628, %4542
  %4630 = call float @dx.op.unary.f32(i32 7, float %4629)  ; Saturate(value)
  %4631 = select i1 %4562, float 1.000000e+00, float %4630
  %4632 = select i1 %4562, float %4630, float 1.000000e+00
  %4633 = fmul fast float %4581, %4538
  %4634 = fsub fast float 1.000000e+00, %4633
  %4635 = fmul fast float %4634, %4544
  %4636 = call float @dx.op.unary.f32(i32 7, float %4635)  ; Saturate(value)
  %4637 = fmul fast float %4636, %4632
  %4638 = fmul fast float %4637, 2.000000e+00
  %4639 = fsub fast float 3.000000e+00, %4638
  %4640 = fmul fast float %4627, %4611
  %4641 = fmul fast float %4637, %4637
  %4642 = fmul fast float %4641, %4640
  %4643 = fmul fast float %4642, %4639
  %4644 = call float @dx.op.binary.f32(i32 36, float %4643, float %4643)  ; FMin(a,b)
  %4645 = call float @dx.op.binary.f32(i32 36, float %4643, float %4644)  ; FMin(a,b)
  %4646 = fcmp fast ogt float %4645, 0.000000e+00
  br i1 %4646, label %4655, label %4647, !dx.controlflow.hints !138

; <label>:4647                                    ; preds = %5137, %4801, %4610
  %4648 = phi float [ %4500, %4801 ], [ %4500, %4610 ], [ %5424, %5137 ]
  %4649 = phi float [ %4501, %4801 ], [ %4501, %4610 ], [ %5425, %5137 ]
  %4650 = phi float [ %4502, %4801 ], [ %4502, %4610 ], [ %5426, %5137 ]
  %4651 = phi float [ %4503, %4801 ], [ %4503, %4610 ], [ %5415, %5137 ]
  %4652 = phi float [ %4504, %4801 ], [ %4504, %4610 ], [ %5416, %5137 ]
  %4653 = phi float [ %4505, %4801 ], [ %4505, %4610 ], [ %5417, %5137 ]
  %4654 = icmp eq i32 %4499, %4509
  br i1 %4654, label %5427, label %4498

; <label>:4655                                    ; preds = %4610
  %4656 = icmp eq i32 %4560, 255
  br i1 %4656, label %4801, label %4657, !dx.controlflow.hints !139

; <label>:4657                                    ; preds = %4655
  %4658 = mul nuw nsw i32 %4560, 176
  %4659 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %16, i32 %4658, i32 undef)  ; BufferLoad(srv,index,wot)
  %4660 = extractvalue %dx.types.ResRet.f32 %4659, 0
  %4661 = extractvalue %dx.types.ResRet.f32 %4659, 1
  %4662 = extractvalue %dx.types.ResRet.f32 %4659, 2
  %4663 = extractvalue %dx.types.ResRet.f32 %4659, 3
  %4664 = add nuw nsw i32 %4658, 16
  %4665 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %16, i32 %4664, i32 undef)  ; BufferLoad(srv,index,wot)
  %4666 = extractvalue %dx.types.ResRet.f32 %4665, 0
  %4667 = extractvalue %dx.types.ResRet.f32 %4665, 1
  %4668 = add nuw nsw i32 %4658, 32
  %4669 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %16, i32 %4668, i32 undef)  ; BufferLoad(srv,index,wot)
  %4670 = extractvalue %dx.types.ResRet.f32 %4669, 0
  %4671 = extractvalue %dx.types.ResRet.f32 %4669, 1
  %4672 = extractvalue %dx.types.ResRet.f32 %4669, 2
  %4673 = add nuw nsw i32 %4658, 48
  %4674 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %16, i32 %4673, i32 undef)  ; BufferLoad(srv,index,wot)
  %4675 = extractvalue %dx.types.ResRet.f32 %4674, 0
  %4676 = extractvalue %dx.types.ResRet.f32 %4674, 1
  %4677 = extractvalue %dx.types.ResRet.f32 %4674, 2
  %4678 = extractvalue %dx.types.ResRet.f32 %4674, 3
  %4679 = add nuw nsw i32 %4658, 64
  %4680 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %16, i32 %4679, i32 undef)  ; BufferLoad(srv,index,wot)
  %4681 = extractvalue %dx.types.ResRet.f32 %4680, 0
  %4682 = extractvalue %dx.types.ResRet.f32 %4680, 1
  %4683 = extractvalue %dx.types.ResRet.f32 %4680, 2
  %4684 = extractvalue %dx.types.ResRet.f32 %4680, 3
  %4685 = add nuw nsw i32 %4658, 80
  %4686 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %16, i32 %4685, i32 undef)  ; BufferLoad(srv,index,wot)
  %4687 = extractvalue %dx.types.ResRet.f32 %4686, 0
  %4688 = extractvalue %dx.types.ResRet.f32 %4686, 1
  %4689 = extractvalue %dx.types.ResRet.f32 %4686, 2
  %4690 = extractvalue %dx.types.ResRet.f32 %4686, 3
  %4691 = add nuw nsw i32 %4658, 96
  %4692 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %16, i32 %4691, i32 undef)  ; BufferLoad(srv,index,wot)
  %4693 = extractvalue %dx.types.ResRet.f32 %4692, 0
  %4694 = extractvalue %dx.types.ResRet.f32 %4692, 1
  %4695 = extractvalue %dx.types.ResRet.f32 %4692, 2
  %4696 = extractvalue %dx.types.ResRet.f32 %4692, 3
  %4697 = bitcast float %4667 to i32
  %4698 = fmul fast float %4672, %200
  %4699 = fmul fast float %4672, %201
  %4700 = fmul fast float %4672, %202
  %4701 = fadd fast float %4698, %269
  %4702 = fadd fast float %4699, %270
  %4703 = fadd fast float %4700, %271
  %4704 = fmul fast float %4701, %4675
  %4705 = call float @dx.op.tertiary.f32(i32 46, float %4702, float %4681, float %4704)  ; FMad(a,b,c)
  %4706 = call float @dx.op.tertiary.f32(i32 46, float %4703, float %4687, float %4705)  ; FMad(a,b,c)
  %4707 = fadd fast float %4706, %4693
  %4708 = fmul fast float %4701, %4676
  %4709 = call float @dx.op.tertiary.f32(i32 46, float %4702, float %4682, float %4708)  ; FMad(a,b,c)
  %4710 = call float @dx.op.tertiary.f32(i32 46, float %4703, float %4688, float %4709)  ; FMad(a,b,c)
  %4711 = fadd fast float %4710, %4694
  %4712 = fmul fast float %4701, %4677
  %4713 = call float @dx.op.tertiary.f32(i32 46, float %4702, float %4683, float %4712)  ; FMad(a,b,c)
  %4714 = call float @dx.op.tertiary.f32(i32 46, float %4703, float %4689, float %4713)  ; FMad(a,b,c)
  %4715 = fadd fast float %4714, %4695
  %4716 = fmul fast float %4701, %4678
  %4717 = call float @dx.op.tertiary.f32(i32 46, float %4702, float %4684, float %4716)  ; FMad(a,b,c)
  %4718 = call float @dx.op.tertiary.f32(i32 46, float %4703, float %4690, float %4717)  ; FMad(a,b,c)
  %4719 = fadd fast float %4718, %4696
  %4720 = fdiv fast float %4707, %4719
  %4721 = fdiv fast float %4711, %4719
  %4722 = fdiv fast float %4715, %4719
  %4723 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %4722)  ; FMax(a,b)
  %4724 = fmul fast float %140, 0x401921FB60000000
  %4725 = call float @dx.op.unary.f32(i32 13, float %4724)  ; Sin(value)
  %4726 = call float @dx.op.unary.f32(i32 12, float %4724)  ; Cos(value)
  %4727 = fmul fast float %4726, %4671
  %4728 = call float @dx.op.tertiary.f32(i32 46, float %4725, float %4671, float 0.000000e+00)  ; FMad(a,b,c)
  %4729 = fmul fast float %4671, %4725
  %4730 = fsub fast float -0.000000e+00, %4729
  %4731 = call float @dx.op.tertiary.f32(i32 46, float %4726, float %4671, float 0.000000e+00)  ; FMad(a,b,c)
  br label %4732

; <label>:4732                                    ; preds = %4732, %4657
  %4733 = phi float [ 0.000000e+00, %4657 ], [ %4765, %4732 ]
  %4734 = phi float [ 0.000000e+00, %4657 ], [ %4767, %4732 ]
  %4735 = phi i32 [ 0, %4657 ], [ %4768, %4732 ]
  %4736 = mul i32 %4735, 2
  %4737 = add i32 0, %4736
  %4738 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %4737
  %4739 = load float, float* %4738, align 4
  %4740 = mul i32 %4735, 2
  %4741 = add i32 1, %4740
  %4742 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %4741
  %4743 = load float, float* %4742, align 4
  %4744 = fmul fast float %4727, %4739
  %4745 = call float @dx.op.tertiary.f32(i32 46, float %4743, float %4730, float %4744)  ; FMad(a,b,c)
  %4746 = fmul fast float %4739, %4728
  %4747 = call float @dx.op.tertiary.f32(i32 46, float %4743, float %4731, float %4746)  ; FMad(a,b,c)
  %4748 = fadd fast float %4745, %4720
  %4749 = fadd fast float %4747, %4721
  %4750 = fmul fast float %4748, %4666
  %4751 = fmul fast float %4749, %4666
  %4752 = call float @dx.op.binary.f32(i32 35, float %4750, float %4662)  ; FMax(a,b)
  %4753 = call float @dx.op.binary.f32(i32 35, float %4751, float %4662)  ; FMax(a,b)
  %4754 = call float @dx.op.binary.f32(i32 36, float %4752, float %4663)  ; FMin(a,b)
  %4755 = call float @dx.op.binary.f32(i32 36, float %4753, float %4663)  ; FMin(a,b)
  %4756 = fadd fast float %4754, %4660
  %4757 = fadd fast float %4755, %4661
  %4758 = uitofp i32 %4697 to float
  %4759 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %49, float %4756, float %4757, float %4758, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4760 = extractvalue %dx.types.ResRet.f32 %4759, 0
  %4761 = fsub fast float %4760, %4723
  %4762 = fsub fast float %4761, %4670
  %4763 = fcmp fast ogt float %4762, 0.000000e+00
  %4764 = select i1 %4763, float 1.000000e+00, float 0.000000e+00
  %4765 = fadd fast float %4764, %4733
  %4766 = select i1 %4763, float %4762, float 0.000000e+00
  %4767 = fadd fast float %4766, %4734
  %4768 = add nuw nsw i32 %4735, 1
  %4769 = icmp eq i32 %4768, 8
  br i1 %4769, label %4770, label %4732

; <label>:4770                                    ; preds = %4732
  %4771 = fdiv fast float 1.000000e+00, %4765
  %4772 = fmul fast float %4771, %4767
  %4773 = fdiv fast float 1.000000e+00, %4723
  %4774 = fmul fast float %4772, %4773
  %4775 = call float @dx.op.unary.f32(i32 7, float %4774)  ; Saturate(value)
  %4776 = call float @dx.op.binary.f32(i32 35, float %4775, float 0.000000e+00)  ; FMax(a,b)
  %4777 = fmul fast float %4765, 1.250000e-01
  %4778 = call float @dx.op.unary.f32(i32 7, float %4777)  ; Saturate(value)
  %4779 = fmul fast float %4778, 2.000000e+00
  %4780 = fadd fast float %4779, -1.000000e+00
  %4781 = fcmp fast ogt float %4780, 0.000000e+00
  %4782 = fcmp fast olt float %4780, 0.000000e+00
  %4783 = zext i1 %4781 to i32
  %4784 = zext i1 %4782 to i32
  %4785 = sub nsw i32 %4783, %4784
  %4786 = sitofp i32 %4785 to float
  %4787 = fmul fast float %4786, %4780
  %4788 = fsub fast float 1.000000e+00, %4787
  %4789 = fmul fast float %4788, %4788
  %4790 = fmul fast float %4789, %4788
  %4791 = fsub fast float %4788, %4790
  %4792 = fmul fast float %4791, %4776
  %4793 = fsub fast float 1.000000e+00, %4790
  %4794 = fsub fast float %4793, %4792
  %4795 = fmul fast float %4786, 5.000000e-01
  %4796 = fmul fast float %4795, %4794
  %4797 = fsub fast float -5.000000e-01, %4796
  %4798 = fmul fast float %4797, %4631
  %4799 = fadd fast float %4798, 1.000000e+00
  %4800 = fmul fast float %4799, %4643
  br label %4801

; <label>:4801                                    ; preds = %4770, %4655
  %4802 = phi float [ %4800, %4770 ], [ %4643, %4655 ]
  %4803 = call float @dx.op.binary.f32(i32 36, float %4802, float %4802)  ; FMin(a,b)
  %4804 = call float @dx.op.binary.f32(i32 36, float %4802, float %4803)  ; FMin(a,b)
  %4805 = fcmp fast ogt float %4804, 0.000000e+00
  br i1 %4805, label %4806, label %4647, !dx.controlflow.hints !140

; <label>:4806                                    ; preds = %4801
  %4807 = fmul fast float %4802, %4553
  %4808 = fmul fast float %4802, %4554
  %4809 = fmul fast float %4802, %4555
  %4810 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4811 = extractvalue %dx.types.CBufRet.i32 %4810, 0
  %4812 = and i32 %4811, 64
  %4813 = icmp ne i32 %4812, 0
  %4814 = fcmp fast ogt float %4536, 0.000000e+00
  %4815 = fcmp fast ogt float %271, 0.000000e+00
  %4816 = xor i1 %4815, %4814
  %4817 = select i1 %4816, float %4536, float %4537
  %4818 = fsub fast float %4534, %269
  %4819 = fsub fast float %4535, %270
  %4820 = fsub fast float %4817, %271
  %4821 = call float @dx.op.dot3.f32(i32 55, float %4818, float %4819, float %4820, float %4818, float %4819, float %4820)  ; Dot3(ax,ay,az,bx,by,bz)
  %4822 = call float @dx.op.unary.f32(i32 25, float %4821)  ; Rsqrt(value)
  %4823 = fmul fast float %4822, %4818
  %4824 = fmul fast float %4822, %4819
  %4825 = fmul fast float %4822, %4820
  %4826 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %331)  ; Dot3(ax,ay,az,bx,by,bz)
  %4827 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %4823, float %4824, float %4825)  ; Dot3(ax,ay,az,bx,by,bz)
  %4828 = fdiv fast float 1.000000e+00, %4827
  %4829 = fmul fast float %4828, %4826
  %4830 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %271, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4831 = fcmp fast ogt float %4830, 0.000000e+00
  %4832 = fcmp fast olt float %4830, 0.000000e+00
  %4833 = zext i1 %4831 to i32
  %4834 = zext i1 %4832 to i32
  %4835 = sub nsw i32 %4833, %4834
  %4836 = sitofp i32 %4835 to float
  %4837 = call float @dx.op.dot3.f32(i32 55, float %4818, float %4819, float %4817, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4838 = fcmp fast ogt float %4837, 0.000000e+00
  %4839 = fcmp fast olt float %4837, 0.000000e+00
  %4840 = zext i1 %4838 to i32
  %4841 = zext i1 %4839 to i32
  %4842 = sub nsw i32 %4840, %4841
  %4843 = sitofp i32 %4842 to float
  %4844 = fcmp fast une float %4836, %4843
  br i1 %4844, label %4845, label %4855

; <label>:4845                                    ; preds = %4806
  %4846 = fmul fast float %4829, %4825
  %4847 = fmul fast float %4829, %4824
  %4848 = fmul fast float %4829, %4823
  %4849 = fmul fast float %4848, %4848
  %4850 = fmul fast float %4847, %4847
  %4851 = fadd fast float %4849, %4850
  %4852 = fmul fast float %4846, %4846
  %4853 = fadd fast float %4851, %4852
  %4854 = call float @dx.op.unary.f32(i32 24, float %4853)  ; Sqrt(value)
  br label %4865

; <label>:4855                                    ; preds = %4806
  %4856 = icmp slt i32 %4835, 0
  br i1 %4856, label %4857, label %4865

; <label>:4857                                    ; preds = %4855
  %4858 = fsub fast float %271, %4817
  %4859 = fmul fast float %4564, %4564
  %4860 = fmul fast float %4565, %4565
  %4861 = fadd fast float %4859, %4860
  %4862 = fmul fast float %4858, %4858
  %4863 = fadd fast float %4861, %4862
  %4864 = call float @dx.op.unary.f32(i32 24, float %4863)  ; Sqrt(value)
  br label %4865

; <label>:4865                                    ; preds = %4857, %4855, %4845
  %4866 = phi float [ %4854, %4845 ], [ %4864, %4857 ], [ 0.000000e+00, %4855 ]
  %4867 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 348)  ; CBufferLoadLegacy(handle,regIndex)
  %4868 = extractvalue %dx.types.CBufRet.i32 %4867, 1
  %4869 = icmp ne i32 %4868, 0
  %4870 = and i1 %4816, %4869
  %4871 = call float @dx.op.dot3.f32(i32 55, float %4823, float %4824, float %4825, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4872 = fmul fast float %4871, %4871
  %4873 = fsub fast float 1.000000e+00, %4872
  %4874 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4875 = extractvalue %dx.types.CBufRet.f32 %4874, 0
  %4876 = extractvalue %dx.types.CBufRet.f32 %4874, 1
  %4877 = extractvalue %dx.types.CBufRet.f32 %4874, 2
  %4878 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4879 = extractvalue %dx.types.CBufRet.f32 %4878, 0
  %4880 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4881 = extractvalue %dx.types.CBufRet.f32 %4880, 0
  %4882 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4883 = extractvalue %dx.types.CBufRet.f32 %4882, 0
  %4884 = extractvalue %dx.types.CBufRet.f32 %4878, 1
  %4885 = extractvalue %dx.types.CBufRet.f32 %4880, 1
  %4886 = extractvalue %dx.types.CBufRet.f32 %4882, 1
  %4887 = extractvalue %dx.types.CBufRet.f32 %4878, 3
  %4888 = extractvalue %dx.types.CBufRet.f32 %4880, 3
  %4889 = extractvalue %dx.types.CBufRet.f32 %4882, 3
  %4890 = fadd fast float %4875, %269
  %4891 = fadd fast float %4876, %270
  %4892 = fadd fast float %4877, %271
  %4893 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 346)  ; CBufferLoadLegacy(handle,regIndex)
  %4894 = extractvalue %dx.types.CBufRet.f32 %4893, 0
  %4895 = extractvalue %dx.types.CBufRet.f32 %4893, 1
  %4896 = extractvalue %dx.types.CBufRet.f32 %4893, 2
  %4897 = extractvalue %dx.types.CBufRet.f32 %4893, 3
  br i1 %4870, label %4898, label %5091

; <label>:4898                                    ; preds = %4865
  %4899 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 349)  ; CBufferLoadLegacy(handle,regIndex)
  %4900 = extractvalue %dx.types.CBufRet.f32 %4899, 0
  %4901 = fmul fast float %4900, %4900
  %4902 = fmul fast float %4901, %4873
  %4903 = fsub fast float 1.000000e+00, %4902
  %4904 = fcmp fast oge float %4903, 0.000000e+00
  %4905 = fmul fast float %4900, %4823
  %4906 = fmul fast float %4900, %4824
  %4907 = fmul fast float %4900, %4825
  %4908 = call float @dx.op.unary.f32(i32 24, float %4903)  ; Sqrt(value)
  %4909 = fmul fast float %4900, %4871
  %4910 = fsub fast float -0.000000e+00, %4908
  %4911 = fsub fast float %4910, %4909
  %4912 = fadd fast float %4911, %4907
  %4913 = select i1 %4904, float %4905, float 0.000000e+00
  %4914 = select i1 %4904, float %4906, float 0.000000e+00
  %4915 = select i1 %4904, float %4912, float 0.000000e+00
  %4916 = fmul fast float %4913, %4866
  %4917 = fmul fast float %4914, %4866
  %4918 = fmul fast float %4915, %4866
  %4919 = fadd fast float %4890, %4916
  %4920 = fadd fast float %4919, %4887
  %4921 = fadd fast float %4891, %4917
  %4922 = fadd fast float %4921, %4888
  %4923 = fadd fast float %4892, %4918
  %4924 = fadd fast float %4923, %4889
  %4925 = fmul fast float %4920, %4879
  %4926 = call float @dx.op.tertiary.f32(i32 46, float %4922, float %4881, float %4925)  ; FMad(a,b,c)
  %4927 = call float @dx.op.tertiary.f32(i32 46, float %4924, float %4883, float %4926)  ; FMad(a,b,c)
  %4928 = fmul fast float %4920, %4884
  %4929 = call float @dx.op.tertiary.f32(i32 46, float %4922, float %4885, float %4928)  ; FMad(a,b,c)
  %4930 = call float @dx.op.tertiary.f32(i32 46, float %4924, float %4886, float %4929)  ; FMad(a,b,c)
  %4931 = fsub fast float %4927, %4887
  %4932 = fsub fast float %4931, %4894
  %4933 = fadd fast float %4932, %4896
  %4934 = fsub fast float %4930, %4888
  %4935 = fsub fast float %4934, %4895
  %4936 = fadd fast float %4935, %4896
  %4937 = fmul fast float %4933, %4897
  %4938 = fmul fast float %4936, %4897
  %4939 = call float @dx.op.unary.f32(i32 7, float %4937)  ; Saturate(value)
  %4940 = call float @dx.op.unary.f32(i32 7, float %4938)  ; Saturate(value)
  %4941 = fsub fast float 1.000000e+00, %4939
  %4942 = fsub fast float 1.000000e+00, %4940
  %4943 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %48, float %4941, float %4942, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4944 = extractvalue %dx.types.ResRet.f32 %4943, 0
  %4945 = fmul fast float %4944, 0x3FBC5ABC00000000
  %4946 = extractvalue %dx.types.CBufRet.f32 %4899, 1
  %4947 = fmul fast float %4946, %4946
  %4948 = fmul fast float %4947, %4873
  %4949 = fsub fast float 1.000000e+00, %4948
  %4950 = fcmp fast oge float %4949, 0.000000e+00
  %4951 = fmul fast float %4946, %4823
  %4952 = fmul fast float %4946, %4824
  %4953 = fmul fast float %4946, %4825
  %4954 = call float @dx.op.unary.f32(i32 24, float %4949)  ; Sqrt(value)
  %4955 = fmul fast float %4946, %4871
  %4956 = fsub fast float -0.000000e+00, %4954
  %4957 = fsub fast float %4956, %4955
  %4958 = fadd fast float %4957, %4953
  %4959 = select i1 %4950, float %4951, float 0.000000e+00
  %4960 = select i1 %4950, float %4952, float 0.000000e+00
  %4961 = select i1 %4950, float %4958, float 0.000000e+00
  %4962 = fmul fast float %4959, %4866
  %4963 = fmul fast float %4960, %4866
  %4964 = fmul fast float %4961, %4866
  %4965 = fadd fast float %4890, %4962
  %4966 = fadd fast float %4965, %4887
  %4967 = fadd fast float %4891, %4963
  %4968 = fadd fast float %4967, %4888
  %4969 = fadd fast float %4892, %4964
  %4970 = fadd fast float %4969, %4889
  %4971 = fmul fast float %4966, %4879
  %4972 = call float @dx.op.tertiary.f32(i32 46, float %4968, float %4881, float %4971)  ; FMad(a,b,c)
  %4973 = call float @dx.op.tertiary.f32(i32 46, float %4970, float %4883, float %4972)  ; FMad(a,b,c)
  %4974 = fmul fast float %4966, %4884
  %4975 = call float @dx.op.tertiary.f32(i32 46, float %4968, float %4885, float %4974)  ; FMad(a,b,c)
  %4976 = call float @dx.op.tertiary.f32(i32 46, float %4970, float %4886, float %4975)  ; FMad(a,b,c)
  %4977 = fsub fast float %4973, %4887
  %4978 = fsub fast float %4977, %4894
  %4979 = fadd fast float %4978, %4896
  %4980 = fsub fast float %4976, %4888
  %4981 = fsub fast float %4980, %4895
  %4982 = fadd fast float %4981, %4896
  %4983 = fmul fast float %4979, %4897
  %4984 = fmul fast float %4982, %4897
  %4985 = call float @dx.op.unary.f32(i32 7, float %4983)  ; Saturate(value)
  %4986 = call float @dx.op.unary.f32(i32 7, float %4984)  ; Saturate(value)
  %4987 = fsub fast float 1.000000e+00, %4985
  %4988 = fsub fast float 1.000000e+00, %4986
  %4989 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %48, float %4987, float %4988, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4990 = extractvalue %dx.types.ResRet.f32 %4989, 0
  %4991 = fmul fast float %4990, 0x3F9E4BBD60000000
  %4992 = extractvalue %dx.types.CBufRet.f32 %4899, 2
  %4993 = fmul fast float %4992, %4992
  %4994 = fmul fast float %4993, %4873
  %4995 = fsub fast float 1.000000e+00, %4994
  %4996 = fcmp fast oge float %4995, 0.000000e+00
  %4997 = fmul fast float %4992, %4823
  %4998 = fmul fast float %4992, %4824
  %4999 = fmul fast float %4992, %4825
  %5000 = call float @dx.op.unary.f32(i32 24, float %4995)  ; Sqrt(value)
  %5001 = fmul fast float %4992, %4871
  %5002 = fsub fast float -0.000000e+00, %5000
  %5003 = fsub fast float %5002, %5001
  %5004 = fadd fast float %5003, %4999
  %5005 = select i1 %4996, float %4997, float 0.000000e+00
  %5006 = select i1 %4996, float %4998, float 0.000000e+00
  %5007 = select i1 %4996, float %5004, float 0.000000e+00
  %5008 = fmul fast float %5005, %4866
  %5009 = fmul fast float %5006, %4866
  %5010 = fmul fast float %5007, %4866
  %5011 = fadd fast float %4890, %5008
  %5012 = fadd fast float %5011, %4887
  %5013 = fadd fast float %4891, %5009
  %5014 = fadd fast float %5013, %4888
  %5015 = fadd fast float %4892, %5010
  %5016 = fadd fast float %5015, %4889
  %5017 = fmul fast float %5012, %4879
  %5018 = call float @dx.op.tertiary.f32(i32 46, float %5014, float %4881, float %5017)  ; FMad(a,b,c)
  %5019 = call float @dx.op.tertiary.f32(i32 46, float %5016, float %4883, float %5018)  ; FMad(a,b,c)
  %5020 = fmul fast float %5012, %4884
  %5021 = call float @dx.op.tertiary.f32(i32 46, float %5014, float %4885, float %5020)  ; FMad(a,b,c)
  %5022 = call float @dx.op.tertiary.f32(i32 46, float %5016, float %4886, float %5021)  ; FMad(a,b,c)
  %5023 = fsub fast float %5019, %4887
  %5024 = fsub fast float %5023, %4894
  %5025 = fadd fast float %5024, %4896
  %5026 = fsub fast float %5022, %4888
  %5027 = fsub fast float %5026, %4895
  %5028 = fadd fast float %5027, %4896
  %5029 = fmul fast float %5025, %4897
  %5030 = fmul fast float %5028, %4897
  %5031 = call float @dx.op.unary.f32(i32 7, float %5029)  ; Saturate(value)
  %5032 = call float @dx.op.unary.f32(i32 7, float %5030)  ; Saturate(value)
  %5033 = fsub fast float 1.000000e+00, %5031
  %5034 = fsub fast float 1.000000e+00, %5032
  %5035 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %48, float %5033, float %5034, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5036 = extractvalue %dx.types.ResRet.f32 %5035, 0
  %5037 = fmul fast float %5036, 0x3FDDEACB00000000
  %5038 = fadd fast float %5037, %4991
  %5039 = extractvalue %dx.types.CBufRet.f32 %4899, 3
  %5040 = fmul fast float %5039, %5039
  %5041 = fmul fast float %5040, %4873
  %5042 = fsub fast float 1.000000e+00, %5041
  %5043 = fcmp fast oge float %5042, 0.000000e+00
  %5044 = fmul fast float %5039, %4823
  %5045 = fmul fast float %5039, %4824
  %5046 = fmul fast float %5039, %4825
  %5047 = call float @dx.op.unary.f32(i32 24, float %5042)  ; Sqrt(value)
  %5048 = fmul fast float %5039, %4871
  %5049 = fsub fast float -0.000000e+00, %5047
  %5050 = fsub fast float %5049, %5048
  %5051 = fadd fast float %5050, %5046
  %5052 = select i1 %5043, float %5044, float 0.000000e+00
  %5053 = select i1 %5043, float %5045, float 0.000000e+00
  %5054 = select i1 %5043, float %5051, float 0.000000e+00
  %5055 = fmul fast float %5052, %4866
  %5056 = fmul fast float %5053, %4866
  %5057 = fmul fast float %5054, %4866
  %5058 = fadd fast float %4890, %5055
  %5059 = fadd fast float %5058, %4887
  %5060 = fadd fast float %4891, %5056
  %5061 = fadd fast float %5060, %4888
  %5062 = fadd fast float %4892, %5057
  %5063 = fadd fast float %5062, %4889
  %5064 = fmul fast float %5059, %4879
  %5065 = call float @dx.op.tertiary.f32(i32 46, float %5061, float %4881, float %5064)  ; FMad(a,b,c)
  %5066 = call float @dx.op.tertiary.f32(i32 46, float %5063, float %4883, float %5065)  ; FMad(a,b,c)
  %5067 = fmul fast float %5059, %4884
  %5068 = call float @dx.op.tertiary.f32(i32 46, float %5061, float %4885, float %5067)  ; FMad(a,b,c)
  %5069 = call float @dx.op.tertiary.f32(i32 46, float %5063, float %4886, float %5068)  ; FMad(a,b,c)
  %5070 = fsub fast float %5066, %4887
  %5071 = fsub fast float %5070, %4894
  %5072 = fadd fast float %5071, %4896
  %5073 = fsub fast float %5069, %4888
  %5074 = fsub fast float %5073, %4895
  %5075 = fadd fast float %5074, %4896
  %5076 = fmul fast float %5072, %4897
  %5077 = fmul fast float %5075, %4897
  %5078 = call float @dx.op.unary.f32(i32 7, float %5076)  ; Saturate(value)
  %5079 = call float @dx.op.unary.f32(i32 7, float %5077)  ; Saturate(value)
  %5080 = fsub fast float 1.000000e+00, %5078
  %5081 = fsub fast float 1.000000e+00, %5079
  %5082 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %48, float %5080, float %5081, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5083 = extractvalue %dx.types.ResRet.f32 %5082, 0
  %5084 = fmul fast float %5083, 0x3FE0183CA0000000
  %5085 = fmul fast float %5083, 0x3FB51033E0000000
  %5086 = fadd fast float %5038, %5084
  %5087 = fadd fast float %5036, %4990
  %5088 = fmul fast float %5087, 0x3FD9D2A200000000
  %5089 = fadd fast float %5085, %4945
  %5090 = fadd fast float %5089, %5088
  br label %5137

; <label>:5091                                    ; preds = %4865
  %5092 = fmul fast float %4873, 0x3FE2024E20000000
  %5093 = fsub fast float 1.000000e+00, %5092
  %5094 = fcmp fast oge float %5093, 0.000000e+00
  %5095 = fmul fast float %4823, 0x3FE8018960000000
  %5096 = fmul fast float %4824, 0x3FE8018960000000
  %5097 = fmul fast float %4825, 0x3FE8018960000000
  %5098 = call float @dx.op.unary.f32(i32 24, float %5093)  ; Sqrt(value)
  %5099 = fmul fast float %4871, 0x3FE8018960000000
  %5100 = fsub fast float %5097, %5098
  %5101 = fsub fast float %5100, %5099
  %5102 = select i1 %5094, float %5095, float 0.000000e+00
  %5103 = select i1 %5094, float %5096, float 0.000000e+00
  %5104 = select i1 %5094, float %5101, float 0.000000e+00
  %5105 = select i1 %4816, float %5102, float %4823
  %5106 = select i1 %4816, float %5103, float %4824
  %5107 = select i1 %4816, float %5104, float %4825
  %5108 = fmul fast float %5105, %4866
  %5109 = fmul fast float %5106, %4866
  %5110 = fmul fast float %5107, %4866
  %5111 = fadd fast float %4890, %5108
  %5112 = fadd fast float %5111, %4887
  %5113 = fadd fast float %4891, %5109
  %5114 = fadd fast float %5113, %4888
  %5115 = fadd fast float %4892, %5110
  %5116 = fadd fast float %5115, %4889
  %5117 = fmul fast float %5112, %4879
  %5118 = call float @dx.op.tertiary.f32(i32 46, float %5114, float %4881, float %5117)  ; FMad(a,b,c)
  %5119 = call float @dx.op.tertiary.f32(i32 46, float %5116, float %4883, float %5118)  ; FMad(a,b,c)
  %5120 = fmul fast float %5112, %4884
  %5121 = call float @dx.op.tertiary.f32(i32 46, float %5114, float %4885, float %5120)  ; FMad(a,b,c)
  %5122 = call float @dx.op.tertiary.f32(i32 46, float %5116, float %4886, float %5121)  ; FMad(a,b,c)
  %5123 = fsub fast float %5119, %4887
  %5124 = fsub fast float %5123, %4894
  %5125 = fadd fast float %5124, %4896
  %5126 = fsub fast float %5122, %4888
  %5127 = fsub fast float %5126, %4895
  %5128 = fadd fast float %5127, %4896
  %5129 = fmul fast float %5125, %4897
  %5130 = fmul fast float %5128, %4897
  %5131 = call float @dx.op.unary.f32(i32 7, float %5129)  ; Saturate(value)
  %5132 = call float @dx.op.unary.f32(i32 7, float %5130)  ; Saturate(value)
  %5133 = fsub fast float 1.000000e+00, %5131
  %5134 = fsub fast float 1.000000e+00, %5132
  %5135 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %48, float %5133, float %5134, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5136 = extractvalue %dx.types.ResRet.f32 %5135, 0
  br label %5137

; <label>:5137                                    ; preds = %5091, %4898
  %5138 = phi float [ %5136, %5091 ], [ %5086, %4898 ]
  %5139 = phi float [ %5136, %5091 ], [ %5090, %4898 ]
  %5140 = phi float [ %5136, %5091 ], [ %4944, %4898 ]
  %5141 = fmul fast float %4818, %4818
  %5142 = fmul fast float %4819, %4819
  %5143 = fadd fast float %5141, %5142
  %5144 = fmul fast float %4820, %4820
  %5145 = fadd fast float %5143, %5144
  %5146 = call float @dx.op.unary.f32(i32 24, float %5145)  ; Sqrt(value)
  %5147 = fmul fast float %4564, %4564
  %5148 = fmul fast float %4565, %4565
  %5149 = fadd fast float %5147, %5148
  %5150 = fmul fast float %4566, %4566
  %5151 = fadd fast float %5149, %5150
  %5152 = call float @dx.op.unary.f32(i32 24, float %5151)  ; Sqrt(value)
  %5153 = fsub fast float %5146, %5152
  %5154 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %5155 = extractvalue %dx.types.CBufRet.f32 %5154, 0
  %5156 = call float @dx.op.unary.f32(i32 6, float %5155)  ; FAbs(value)
  %5157 = fmul fast float %5152, %5152
  %5158 = fmul fast float %5157, %5156
  %5159 = fmul fast float %5153, %5153
  %5160 = fadd fast float %5159, %5157
  %5161 = fdiv fast float %5158, %5160
  %5162 = call float @dx.op.unary.f32(i32 7, float %5161)  ; Saturate(value)
  %5163 = call float @dx.op.unary.f32(i32 6, float %4871)  ; FAbs(value)
  %5164 = fsub fast float 1.000000e+00, %5163
  %5165 = bitcast float %5164 to i32
  %5166 = sitofp i32 %5165 to float
  %5167 = fptosi float %5166 to i32
  %5168 = bitcast i32 %5167 to float
  %5169 = fmul fast float %5168, 0x3FEF333340000000
  %5170 = fadd fast float %5169, 0x3F999999A0000000
  %5171 = call float @dx.op.unary.f32(i32 7, float %5170)  ; Saturate(value)
  %5172 = fsub fast float 1.000000e+00, %5171
  %5173 = fadd fast float %5138, 1.000000e+00
  %5174 = fadd fast float %5139, 1.000000e+00
  %5175 = fadd fast float %5140, 1.000000e+00
  %5176 = fmul fast float %5172, %5173
  %5177 = fmul fast float %5172, %5174
  %5178 = fmul fast float %5172, %5175
  %5179 = fmul fast float %5162, %5173
  %5180 = fmul fast float %5179, %5171
  %5181 = fmul fast float %5162, %5174
  %5182 = fmul fast float %5181, %5171
  %5183 = fmul fast float %5162, %5175
  %5184 = fmul fast float %5183, %5171
  %5185 = fadd fast float %5180, 1.000000e+00
  %5186 = fadd fast float %5182, 1.000000e+00
  %5187 = fadd fast float %5184, 1.000000e+00
  %5188 = call float @dx.op.unary.f32(i32 6, float %271)  ; FAbs(value)
  %5189 = call float @dx.op.unary.f32(i32 7, float %5188)  ; Saturate(value)
  %5190 = select i1 %4816, float %5176, float %5185
  %5191 = select i1 %4816, float %5177, float %5186
  %5192 = select i1 %4816, float %5178, float %5187
  %5193 = select i1 %4813, float %5189, float 0.000000e+00
  %5194 = fadd fast float %5190, -1.000000e+00
  %5195 = fadd fast float %5191, -1.000000e+00
  %5196 = fadd fast float %5192, -1.000000e+00
  %5197 = fmul fast float %5194, %5193
  %5198 = fmul fast float %5195, %5193
  %5199 = fmul fast float %5196, %5193
  %5200 = fadd fast float %5197, 1.000000e+00
  %5201 = fadd fast float %5198, 1.000000e+00
  %5202 = fadd fast float %5199, 1.000000e+00
  %5203 = fmul fast float %4807, %5200
  %5204 = fmul fast float %4808, %5201
  %5205 = fmul fast float %4809, %5202
  %5206 = fadd fast float %4583, %200
  %5207 = fadd fast float %4584, %201
  %5208 = fadd fast float %4585, %202
  %5209 = call float @dx.op.dot3.f32(i32 55, float %4583, float %4584, float %4585, float %4577, float %4578, float %4579)  ; Dot3(ax,ay,az,bx,by,bz)
  %5210 = call float @dx.op.dot3.f32(i32 55, float %4583, float %4584, float %4585, float %5206, float %5207, float %5208)  ; Dot3(ax,ay,az,bx,by,bz)
  %5211 = fdiv fast float 1.000000e+00, %5210
  %5212 = fmul fast float %5211, %5209
  %5213 = fmul fast float %5212, %5206
  %5214 = fmul fast float %5212, %5207
  %5215 = fmul fast float %5212, %5208
  %5216 = fadd fast float %4564, %5213
  %5217 = fadd fast float %4565, %5214
  %5218 = fadd fast float %4566, %5215
  %5219 = call float @dx.op.dot3.f32(i32 55, float %5216, float %5217, float %5218, float %4526, float %4527, float %4528)  ; Dot3(ax,ay,az,bx,by,bz)
  %5220 = fdiv fast float %5219, %4563
  %5221 = call float @dx.op.binary.f32(i32 35, float %5220, float -1.000000e+00)  ; FMax(a,b)
  %5222 = call float @dx.op.binary.f32(i32 36, float %5221, float 1.000000e+00)  ; FMin(a,b)
  %5223 = fmul fast float %5222, %4526
  %5224 = fmul fast float %5222, %4527
  %5225 = fmul fast float %5222, %4528
  %5226 = fadd fast float %4818, %5223
  %5227 = fadd fast float %4819, %5224
  %5228 = fsub fast float %4536, %271
  %5229 = fadd fast float %5228, %5225
  %5230 = call float @dx.op.dot3.f32(i32 55, float %5226, float %5227, float %5229, float %5226, float %5227, float %5229)  ; Dot3(ax,ay,az,bx,by,bz)
  %5231 = call float @dx.op.unary.f32(i32 25, float %5230)  ; Rsqrt(value)
  %5232 = fmul fast float %5226, %5231
  %5233 = fmul fast float %5227, %5231
  %5234 = fmul fast float %5229, %5231
  %5235 = fsub fast float %5232, %334
  %5236 = fsub fast float %5233, %335
  %5237 = fsub fast float %5234, %336
  %5238 = call float @dx.op.dot3.f32(i32 55, float %5235, float %5236, float %5237, float %5235, float %5236, float %5237)  ; Dot3(ax,ay,az,bx,by,bz)
  %5239 = call float @dx.op.unary.f32(i32 25, float %5238)  ; Rsqrt(value)
  %5240 = fmul fast float %5235, %5239
  %5241 = fmul fast float %5236, %5239
  %5242 = fmul fast float %5237, %5239
  %5243 = call float @dx.op.dot3.f32(i32 55, float %5232, float %5233, float %5234, float %200, float %201, float %202)  ; Dot3(ax,ay,az,bx,by,bz)
  %5244 = call float @dx.op.dot3.f32(i32 55, float %337, float %338, float %339, float %5240, float %5241, float %5242)  ; Dot3(ax,ay,az,bx,by,bz)
  %5245 = fmul fast float %5231, %4531
  %5246 = fmul fast float %5245, %5245
  %5247 = bitcast float %5246 to i32
  %5248 = ashr i32 %5247, 1
  %5249 = sub nsw i32 1597463007, %5248
  %5250 = bitcast i32 %5249 to float
  %5251 = fmul fast float %5250, %5243
  %5252 = fmul fast float %5251, %5251
  %5253 = fsub fast float 1.000000e+00, %5252
  %5254 = fmul fast float %5243, %5246
  %5255 = call float @dx.op.unary.f32(i32 7, float %5254)  ; Saturate(value)
  %5256 = fmul fast float %5251, 5.000000e-01
  %5257 = fadd fast float %5256, 5.000000e-01
  %5258 = fmul fast float %5257, %5246
  %5259 = call float @dx.op.unary.f32(i32 7, float %5258)  ; Saturate(value)
  %5260 = bitcast float %5259 to i32
  %5261 = ashr i32 %5260, 1
  %5262 = add nsw i32 %5261, 532487669
  %5263 = bitcast i32 %5262 to float
  %5264 = fmul fast float %5263, %5259
  %5265 = fcmp fast ogt float %5253, 0.000000e+00
  %5266 = select i1 %5265, float %5264, float %5255
  %5267 = call float @dx.op.unary.f32(i32 7, float %5243)  ; Saturate(value)
  %5268 = fmul fast float %5267, %5267
  %5269 = fmul fast float %5268, 0x47DE623840000000
  %5270 = call float @dx.op.unary.f32(i32 7, float %5269)  ; Saturate(value)
  %5271 = fmul fast float %5266, %5270
  %5272 = call float @dx.op.dot3.f32(i32 55, float %4526, float %4527, float %4528, float %348, float %349, float %350)  ; Dot3(ax,ay,az,bx,by,bz)
  %5273 = call float @dx.op.dot3.f32(i32 55, float %4526, float %4527, float %4528, float %4577, float %4578, float %4579)  ; Dot3(ax,ay,az,bx,by,bz)
  %5274 = call float @dx.op.dot3.f32(i32 55, float %348, float %349, float %350, float %4577, float %4578, float %4579)  ; Dot3(ax,ay,az,bx,by,bz)
  %5275 = fmul fast float %5272, %5272
  %5276 = fsub fast float %4563, %5275
  %5277 = fmul fast float %5274, %5272
  %5278 = fsub fast float %5277, %5273
  %5279 = fdiv fast float %5278, %5276
  %5280 = call float @dx.op.binary.f32(i32 35, float %5279, float -1.500000e+00)  ; FMax(a,b)
  %5281 = call float @dx.op.binary.f32(i32 36, float %5280, float 1.500000e+00)  ; FMin(a,b)
  %5282 = fmul fast float %5281, %5281
  %5283 = fmul fast float %5282, 0x3FC2F68380000000
  %5284 = fmul fast float %5283, %5281
  %5285 = fsub fast float %5281, %5284
  %5286 = fmul fast float %5285, %4526
  %5287 = fmul fast float %5285, %4527
  %5288 = fmul fast float %5285, %4528
  %5289 = fadd fast float %5286, %4574
  %5290 = fadd fast float %5287, %4575
  %5291 = fadd fast float %5288, %4576
  %5292 = fsub fast float %5289, %269
  %5293 = fsub fast float %5290, %270
  %5294 = fsub fast float %5291, %271
  %5295 = call float @dx.op.dot3.f32(i32 55, float %5292, float %5293, float %5294, float %348, float %349, float %350)  ; Dot3(ax,ay,az,bx,by,bz)
  %5296 = fmul fast float %5295, %348
  %5297 = fmul fast float %5295, %349
  %5298 = fmul fast float %5295, %350
  %5299 = fsub fast float %5296, %5292
  %5300 = fsub fast float %5297, %5293
  %5301 = fsub fast float %5298, %5294
  %5302 = call float @dx.op.dot3.f32(i32 55, float %5299, float %5300, float %5301, float %5299, float %5300, float %5301)  ; Dot3(ax,ay,az,bx,by,bz)
  %5303 = bitcast float %5302 to i32
  %5304 = ashr i32 %5303, 1
  %5305 = sub nsw i32 1597463007, %5304
  %5306 = bitcast i32 %5305 to float
  %5307 = fmul fast float %5306, %4531
  %5308 = call float @dx.op.dot3.f32(i32 55, float %5292, float %5293, float %5294, float %5292, float %5293, float %5294)  ; Dot3(ax,ay,az,bx,by,bz)
  %5309 = bitcast float %5308 to i32
  %5310 = ashr i32 %5309, 1
  %5311 = sub nsw i32 1597463007, %5310
  %5312 = bitcast i32 %5311 to float
  %5313 = fmul fast float %5307, %5307
  %5314 = fadd fast float %5313, 1.250000e-01
  %5315 = call float @dx.op.unary.f32(i32 25, float %5314)  ; Rsqrt(value)
  %5316 = fmul fast float %5307, %5315
  %5317 = fmul fast float %5299, %5316
  %5318 = fmul fast float %5300, %5316
  %5319 = fmul fast float %5301, %5316
  %5320 = fadd fast float %5292, %5317
  %5321 = fadd fast float %5293, %5318
  %5322 = fadd fast float %5294, %5319
  %5323 = call float @dx.op.dot3.f32(i32 55, float %5320, float %5321, float %5322, float %5320, float %5321, float %5322)  ; Dot3(ax,ay,az,bx,by,bz)
  %5324 = call float @dx.op.unary.f32(i32 25, float %5323)  ; Rsqrt(value)
  %5325 = fmul fast float %5320, %5324
  %5326 = fmul fast float %5321, %5324
  %5327 = fmul fast float %5322, %5324
  %5328 = fsub fast float %5325, %334
  %5329 = fsub fast float %5326, %335
  %5330 = fsub fast float %5327, %336
  %5331 = call float @dx.op.dot3.f32(i32 55, float %5328, float %5329, float %5330, float %5328, float %5329, float %5330)  ; Dot3(ax,ay,az,bx,by,bz)
  %5332 = call float @dx.op.unary.f32(i32 25, float %5331)  ; Rsqrt(value)
  %5333 = fmul fast float %5328, %5332
  %5334 = fmul fast float %5329, %5332
  %5335 = fmul fast float %5330, %5332
  %5336 = call float @dx.op.dot3.f32(i32 55, float %200, float %201, float %202, float %5333, float %5334, float %5335)  ; Dot3(ax,ay,az,bx,by,bz)
  %5337 = fmul fast float %5336, %5336
  %5338 = call float @dx.op.unary.f32(i32 6, float %5243)  ; FAbs(value)
  %5339 = fsub fast float 1.000000e+00, %354
  %5340 = fmul fast float %342, %342
  %5341 = fmul fast float %5340, %5339
  %5342 = fadd fast float %5341, %354
  %5343 = bitcast float %5342 to i32
  %5344 = ashr i32 %5343, 1
  %5345 = add nsw i32 %5344, 532487669
  %5346 = bitcast i32 %5345 to float
  %5347 = fadd fast float %5346, %342
  %5348 = fmul fast float %354, %5337
  %5349 = fsub fast float 1.000000e+00, %5337
  %5350 = fadd fast float %5349, %5348
  %5351 = fmul fast float %5338, %5338
  %5352 = fmul fast float %5351, %5339
  %5353 = fadd fast float %5352, %354
  %5354 = bitcast float %5353 to i32
  %5355 = ashr i32 %5354, 1
  %5356 = add nsw i32 %5355, 532487669
  %5357 = bitcast i32 %5356 to float
  %5358 = fadd fast float %5357, %5338
  %5359 = fmul fast float %5350, %5350
  %5360 = fmul fast float %5359, %5347
  %5361 = fmul fast float %5360, %5358
  %5362 = fdiv fast float 1.000000e+00, %5361
  %5363 = bitcast float %354 to i32
  %5364 = sitofp i32 %5363 to float
  %5365 = fmul fast float %5364, 0x3FE7F73180000000
  %5366 = fadd fast float %5365, 0x41AFE27C40000000
  %5367 = fptosi float %5366 to i32
  %5368 = bitcast i32 %5367 to float
  %5369 = fmul fast float %4531, 0x3FD80E9D60000000
  %5370 = fmul fast float %5369, %5312
  %5371 = fadd fast float %5368, %5370
  %5372 = bitcast float %5371 to i32
  %5373 = sub nsw i32 2129859010, %5372
  %5374 = bitcast i32 %5373 to float
  %5375 = fmul fast float %354, %5362
  %5376 = fmul fast float %5375, %5368
  %5377 = fmul fast float %5376, %5374
  %5378 = call float @dx.op.unary.f32(i32 6, float %5244)  ; FAbs(value)
  %5379 = fsub fast float 1.000000e+00, %5378
  %5380 = bitcast float %5379 to i32
  %5381 = sitofp i32 %5380 to float
  %5382 = fmul fast float %5381, 5.000000e+00
  %5383 = fadd fast float %5382, 0xC1EFBF8940000000
  %5384 = fptosi float %5383 to i32
  %5385 = bitcast i32 %5384 to float
  %5386 = fsub fast float 1.000000e+00, %320
  %5387 = fsub fast float 1.000000e+00, %321
  %5388 = fsub fast float 1.000000e+00, %340
  %5389 = fmul fast float %5385, %5386
  %5390 = fmul fast float %5385, %5387
  %5391 = fmul fast float %5385, %5388
  %5392 = fadd fast float %5389, %320
  %5393 = fadd fast float %5390, %321
  %5394 = fadd fast float %5391, %340
  %5395 = fmul fast float %5243, 9.843750e-01
  %5396 = fadd fast float %5395, 7.812500e-03
  %5397 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %48, float %5396, float %1959, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5398 = extractvalue %dx.types.ResRet.f32 %5397, 2
  %5399 = extractvalue %dx.types.ResRet.f32 %5397, 3
  %5400 = fmul fast float %5398, %320
  %5401 = fmul fast float %5398, %321
  %5402 = fmul fast float %5398, %340
  %5403 = fadd fast float %5400, %5399
  %5404 = fadd fast float %5401, %5399
  %5405 = fadd fast float %5402, %5399
  %5406 = call float @dx.op.binary.f32(i32 35, float %5404, float %5405)  ; FMax(a,b)
  %5407 = call float @dx.op.binary.f32(i32 35, float %5403, float %5406)  ; FMax(a,b)
  %5408 = fsub fast float 1.000000e+00, %5407
  %5409 = fmul fast float %5271, %5203
  %5410 = fmul fast float %5409, %5408
  %5411 = fmul fast float %5271, %5204
  %5412 = fmul fast float %5411, %5408
  %5413 = fmul fast float %5271, %5205
  %5414 = fmul fast float %5413, %5408
  %5415 = fadd fast float %5410, %4503
  %5416 = fadd fast float %5412, %4504
  %5417 = fadd fast float %5414, %4505
  %5418 = fmul fast float %5409, %5392
  %5419 = fmul fast float %5418, %5377
  %5420 = fmul fast float %5411, %5393
  %5421 = fmul fast float %5420, %5377
  %5422 = fmul fast float %5413, %5394
  %5423 = fmul fast float %5422, %5377
  %5424 = fadd fast float %5419, %4500
  %5425 = fadd fast float %5421, %4501
  %5426 = fadd fast float %5423, %4502
  br label %4647

; <label>:5427                                    ; preds = %4647
  br label %5428

; <label>:5428                                    ; preds = %5427, %4466
  %5429 = phi float [ %4468, %4466 ], [ %4648, %5427 ]
  %5430 = phi float [ %4469, %4466 ], [ %4649, %5427 ]
  %5431 = phi float [ %4470, %4466 ], [ %4650, %5427 ]
  %5432 = phi float [ %4471, %4466 ], [ %4651, %5427 ]
  %5433 = phi float [ %4472, %4466 ], [ %4652, %5427 ]
  %5434 = phi float [ %4473, %4466 ], [ %4653, %5427 ]
  %5435 = add i32 %4467, 1
  %5436 = icmp ugt i32 %5435, %4463
  br i1 %5436, label %5437, label %4466

; <label>:5437                                    ; preds = %5428
  br label %5438

; <label>:5438                                    ; preds = %5437, %4416, %4406
  %5439 = phi float [ %4407, %4406 ], [ %4407, %4416 ], [ %5429, %5437 ]
  %5440 = phi float [ %4408, %4406 ], [ %4408, %4416 ], [ %5430, %5437 ]
  %5441 = phi float [ %4409, %4406 ], [ %4409, %4416 ], [ %5431, %5437 ]
  %5442 = phi float [ %4410, %4406 ], [ %4410, %4416 ], [ %5432, %5437 ]
  %5443 = phi float [ %4411, %4406 ], [ %4411, %4416 ], [ %5433, %5437 ]
  %5444 = phi float [ %4412, %4406 ], [ %4412, %4416 ], [ %5434, %5437 ]
  %5445 = call float @dx.op.unary.f32(i32 24, float %311)  ; Sqrt(value)
  %5446 = call float @dx.op.unary.f32(i32 24, float %312)  ; Sqrt(value)
  %5447 = call float @dx.op.unary.f32(i32 24, float %313)  ; Sqrt(value)
  %5448 = fmul fast float %5445, %5442
  %5449 = fmul fast float %5446, %5443
  %5450 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5451 = extractvalue %dx.types.CBufRet.f32 %5450, 0
  br i1 %129, label %5452, label %5472

; <label>:5452                                    ; preds = %5438
  %5453 = fadd fast float %5444, %328
  %5454 = fmul fast float %5453, %326
  %5455 = fsub fast float 1.000000e+00, %326
  %5456 = call float @dx.op.unary.f32(i32 7, float %5455)  ; Saturate(value)
  %5457 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %5458 = extractvalue %dx.types.CBufRet.f32 %5457, 3
  %5459 = fmul fast float %5458, %5456
  %5460 = fadd fast float %5459, %5454
  %5461 = fsub fast float 1.000000e+00, %342
  %5462 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %5463 = extractvalue %dx.types.CBufRet.f32 %5462, 0
  %5464 = fmul fast float %5463, %5461
  %5465 = fsub fast float %5460, %5464
  %5466 = fadd fast float %5449, %5448
  %5467 = extractvalue %dx.types.CBufRet.f32 %5457, 1
  %5468 = fsub fast float %5465, %5467
  %5469 = extractvalue %dx.types.CBufRet.f32 %5457, 2
  %5470 = fmul fast float %5468, %5469
  %5471 = call float @dx.op.unary.f32(i32 7, float %5470)  ; Saturate(value)
  br label %5476

; <label>:5472                                    ; preds = %5438
  %5473 = fmul fast float %5447, %5444
  %5474 = fmul fast float %5451, %5449
  %5475 = fmul fast float %5473, %5451
  br label %5476

; <label>:5476                                    ; preds = %5472, %5452
  %5477 = phi float [ %5466, %5452 ], [ %5448, %5472 ]
  %5478 = phi float [ %5471, %5452 ], [ %5474, %5472 ]
  %5479 = phi float [ 1.000000e+00, %5452 ], [ %5475, %5472 ]
  %5480 = fmul float %5451, %5477
  %5481 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5482 = extractvalue %dx.types.CBufRet.f32 %5481, 0
  %5483 = fmul fast float %5482, %5440
  %5484 = fmul fast float %5482, %5441
  %5485 = fadd fast float %5440, %5439
  %5486 = select i1 %129, float %5485, float %5439
  %5487 = fmul float %5486, %5482
  %5488 = select i1 %129, float 0.000000e+00, float %5483
  %5489 = select i1 %129, float 0.000000e+00, float %5484
  %5490 = call float @dx.op.binary.f32(i32 36, float %5480, float 3.225500e+04)  ; FMin(a,b)
  %5491 = call float @dx.op.binary.f32(i32 36, float %5478, float 3.225500e+04)  ; FMin(a,b)
  %5492 = call float @dx.op.binary.f32(i32 36, float %5479, float 3.225500e+04)  ; FMin(a,b)
  %5493 = call float @dx.op.binary.f32(i32 36, float %5487, float 3.225500e+04)  ; FMin(a,b)
  %5494 = call float @dx.op.binary.f32(i32 36, float %5488, float 3.225500e+04)  ; FMin(a,b)
  %5495 = call float @dx.op.binary.f32(i32 36, float %5489, float 3.225500e+04)  ; FMin(a,b)
  %5496 = and i32 %105, 4
  %5497 = icmp eq i32 %5496, 0
  %5498 = xor i1 %99, true
  %5499 = or i1 %5497, %5498
  br i1 %5499, label %5500, label %5507

; <label>:5500                                    ; preds = %5476
  %5501 = fmul fast float %5490, %5445
  %5502 = fmul fast float %5491, %5446
  %5503 = fmul fast float %5492, %5447
  %5504 = fadd fast float %5493, %5501
  %5505 = fadd fast float %5494, %5502
  %5506 = fadd fast float %5495, %5503
  br label %5507

; <label>:5507                                    ; preds = %5500, %5476
  %5508 = phi float [ %5504, %5500 ], [ %5493, %5476 ]
  %5509 = phi float [ %5505, %5500 ], [ %5494, %5476 ]
  %5510 = phi float [ %5506, %5500 ], [ %5495, %5476 ]
  %5511 = select i1 %129, float %5491, float %5509
  %5512 = select i1 %129, float %5492, float %5510
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %5508)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %5511)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %5512)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %5490)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %5491)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %5492)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!dx.viewIdState = !{!65}
!dx.entryPoints = !{!66}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, !53, !55, !58}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !46, !47, !48, !49, !50, !51, !52}
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
!31 = !{i32 23, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 61, i32 1, i32 2, i32 0, !7}
!32 = !{i32 24, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 57, i32 1, i32 2, i32 0, !7}
!33 = !{i32 25, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 69, i32 1, i32 11, i32 0, null}
!34 = !{i32 26, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 35, i32 1, i32 7, i32 0, !7}
!35 = !{i32 27, %"class.Texture3D<float>"* undef, !"", i32 2, i32 31, i32 1, i32 4, i32 0, !7}
!36 = !{i32 28, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 10, i32 1, i32 11, i32 0, null}
!37 = !{i32 29, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 1, i32 1, i32 11, i32 0, null}
!38 = !{i32 30, %"class.Texture1D<float>"* undef, !"", i32 2, i32 32, i32 1, i32 1, i32 0, !7}
!39 = !{i32 31, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 8, i32 1, i32 7, i32 0, !7}
!40 = !{i32 32, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 1, i32 1, i32 2, i32 0, !7}
!41 = !{i32 33, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 2, i32 1, i32 2, i32 0, !7}
!42 = !{i32 34, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 3, i32 1, i32 2, i32 0, !7}
!43 = !{i32 35, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 4, i32 1, i32 2, i32 0, !7}
!44 = !{i32 36, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 80, i32 1, i32 7, i32 0, !45}
!45 = !{i32 0, i32 14}
!46 = !{i32 37, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 67, i32 1, i32 11, i32 0, null}
!47 = !{i32 38, %"class.Texture2D<float>"* undef, !"", i32 2, i32 7, i32 1, i32 2, i32 0, !7}
!48 = !{i32 39, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 6, i32 1, i32 2, i32 0, !7}
!49 = !{i32 40, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 5, i32 1, i32 2, i32 0, !7}
!50 = !{i32 41, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 38, i32 1, i32 2, i32 0, !7}
!51 = !{i32 42, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 12, i32 1, i32 11, i32 0, null}
!52 = !{i32 43, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 13, i32 1, i32 11, i32 0, null}
!53 = !{!54}
!54 = !{i32 0, %"class.RWTexture2D<vector<float, 2> >"* undef, !"", i32 0, i32 7, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!55 = !{!56, !57}
!56 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!57 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 272, null}
!58 = !{!59, !60, !61, !62, !63, !64}
!59 = !{i32 0, %struct.SamplerComparisonState* undef, !"", i32 0, i32 0, i32 1, i32 1, null}
!60 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!61 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!62 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!63 = !{i32 4, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!64 = !{i32 5, %struct.SamplerState* undef, !"", i32 0, i32 5, i32 1, i32 0, null}
!65 = !{[58 x i32] [i32 56, i32 8, i32 119, i32 119, i32 0, i32 119, i32 0, i32 0, i32 0, i32 0, i32 119, i32 119, i32 0, i32 119, i32 119, i32 119, i32 119, i32 119, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 119, i32 119, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 119, i32 0, i32 0, i32 119, i32 0, i32 0, i32 0]}
!66 = !{void ()* @ps_main, !"ps_main", !67, !4, !97}
!67 = !{!68, !93, null}
!68 = !{!69, !72, !73, !74, !76, !77, !79, !81, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92}
!69 = !{i32 0, !"SV_Position", i8 9, i8 3, !70, i8 4, i32 1, i8 4, i32 0, i8 0, !71}
!70 = !{i32 0}
!71 = !{i32 3, i32 11}
!72 = !{i32 1, !"COLOR", i8 9, i8 0, !70, i8 2, i32 1, i8 4, i32 1, i8 0, null}
!73 = !{i32 2, !"TEXCOORDS", i8 9, i8 0, !70, i8 2, i32 1, i8 4, i32 2, i8 0, !71}
!74 = !{i32 3, !"NORMAL", i8 9, i8 0, !70, i8 2, i32 1, i8 3, i32 3, i8 0, !75}
!75 = !{i32 3, i32 7}
!76 = !{i32 4, !"TANGENT", i8 9, i8 0, !70, i8 2, i32 1, i8 4, i32 4, i8 0, null}
!77 = !{i32 5, !"CARD_DEPTH_OFFSET", i8 9, i8 0, !70, i8 2, i32 1, i8 1, i32 3, i8 3, !78}
!78 = !{i32 3, i32 1}
!79 = !{i32 6, !"CARD_BARY_AND_TILE", i8 9, i8 0, !80, i8 1, i32 1, i8 4, i32 5, i8 0, null}
!80 = !{i32 1}
!81 = !{i32 7, !"LGV_POSITION_INDEX", i8 9, i8 0, !70, i8 2, i32 1, i8 4, i32 6, i8 0, !82}
!82 = !{i32 3, i32 8}
!83 = !{i32 8, !"LGV_IS_STATIC", i8 9, i8 0, !70, i8 2, i32 1, i8 1, i32 7, i8 0, !78}
!84 = !{i32 9, !"WGV_TEXCOORD", i8 9, i8 0, !70, i8 2, i32 1, i8 3, i32 7, i8 1, null}
!85 = !{i32 10, !"WGV_NORMAL", i8 9, i8 0, !70, i8 2, i32 1, i8 4, i32 8, i8 0, null}
!86 = !{i32 11, !"SECONDARY_TEXCOORDS", i8 9, i8 0, !70, i8 2, i32 1, i8 2, i32 9, i8 0, null}
!87 = !{i32 12, !"SCEONDARY_NORMAL", i8 9, i8 0, !70, i8 2, i32 1, i8 4, i32 10, i8 0, null}
!88 = !{i32 13, !"OBJECT_POSITION", i8 9, i8 0, !70, i8 2, i32 1, i8 4, i32 11, i8 0, null}
!89 = !{i32 14, !"DECAL_VOLUME_GRID_INDEX", i8 5, i8 0, !70, i8 1, i32 1, i8 1, i32 12, i8 0, null}
!90 = !{i32 15, !"PACKED_TRI_DATA", i8 5, i8 0, !70, i8 1, i32 1, i8 4, i32 13, i8 0, !78}
!91 = !{i32 16, !"SV_IsFrontFace", i8 5, i8 13, !70, i8 1, i32 1, i8 1, i32 12, i8 1, !78}
!92 = !{i32 17, !"SV_SampleIndex", i8 5, i8 12, !70, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!93 = !{!94, !96}
!94 = !{i32 0, !"SV_Target", i8 9, i8 16, !70, i8 0, i32 1, i8 4, i32 0, i8 0, !95}
!95 = !{i32 3, i32 15}
!96 = !{i32 1, !"SV_Target", i8 9, i8 16, !80, i8 0, i32 1, i8 4, i32 1, i8 0, !95}
!97 = !{i32 0, i64 24}
!98 = distinct !{!98, !"dx.controlflow.hints", i32 1}
!99 = distinct !{!99, !"dx.controlflow.hints", i32 1}
!100 = distinct !{!100, !"dx.controlflow.hints", i32 1}
!101 = distinct !{!101, !"dx.controlflow.hints", i32 1}
!102 = distinct !{!102, !"dx.controlflow.hints", i32 1}
!103 = distinct !{!103, !"dx.controlflow.hints", i32 1}
!104 = distinct !{!104, !"dx.controlflow.hints", i32 1}
!105 = distinct !{!105, !"dx.controlflow.hints", i32 1}
!106 = distinct !{!106, !107}
!107 = !{!"llvm.loop.unroll.disable"}
!108 = distinct !{!108, !"dx.controlflow.hints", i32 1}
!109 = distinct !{!109, !"dx.controlflow.hints", i32 1}
!110 = distinct !{!110, !"dx.controlflow.hints", i32 1}
!111 = distinct !{!111, !"dx.controlflow.hints", i32 1}
!112 = distinct !{!112, !"dx.controlflow.hints", i32 1}
!113 = !{!114, !114, i64 0}
!114 = !{!"int", !115, i64 0}
!115 = !{!"omnipotent char", !116, i64 0}
!116 = !{!"Simple C/C++ TBAA"}
!117 = !{!118, !120, !122, !124}
!118 = distinct !{!118, !119, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!119 = distinct !{!119, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!120 = distinct !{!120, !121, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!121 = distinct !{!121, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!122 = distinct !{!122, !123, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z: %agg.result"}
!123 = distinct !{!123, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z"}
!124 = distinct !{!124, !125, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z: %agg.result"}
!125 = distinct !{!125, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z"}
!126 = distinct !{!126, !"dx.controlflow.hints", i32 1}
!127 = !{!128, !128, i64 0}
!128 = !{!"float", !115, i64 0}
!129 = distinct !{!129, !107}
!130 = distinct !{!130, !107}
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

