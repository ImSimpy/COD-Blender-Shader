;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float   xyzw
; COLOR                    0   xyzw        1     NONE   float   xyzw
; TEXCOORDS                0   xyzw        2     NONE   float   xy  
; NORMAL                   0   xyz         3     NONE   float   xyz 
; COMP_FACTOR              0      w        3     NONE   float      w
; TANGENT                  0   xyzw        4     NONE   float   xyzw
; AMBIENT_COLOR            0   xyz         5     NONE   float   xyz 
; HIGHLIGHT_DIR_VIS        0   xyzw        6     NONE   float   xyzw
; WGV_TEXCOORD             0   xyz         7     NONE   float   xyz 
; WGV_NORMAL               0   xyzw        8     NONE   float   xyzw
; SECONDARY_TEXCOORDS      0   xy          9     NONE   float   xy  
; SCEONDARY_NORMAL         0   xyzw       10     NONE   float   xyzw
; OBJECT_POSITION          0   xyzw       11     NONE   float   xyzw
; DECAL_VOLUME_GRID_INDEX     0   x          12     NONE    uint   x   
; ENTITY_IDS               0    yz        12     NONE    uint    yz 
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
; shader hash: 157fd248d22272dd769806d46f6edd23
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
; AMBIENT_COLOR            0                 linear       
; HIGHLIGHT_DIR_VIS        0                 linear       
; COMP_FACTOR              0                 linear       
; WGV_TEXCOORD             0                 linear       
; WGV_NORMAL               0                 linear       
; SECONDARY_TEXCOORDS      0                 linear       
; SCEONDARY_NORMAL         0                 linear       
; OBJECT_POSITION          0                 linear       
; DECAL_VOLUME_GRID_INDEX     0        nointerpolation       
; ENTITY_IDS               0        nointerpolation       
; PACKED_TRI_DATA          0        nointerpolation       
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
;   [144 x i8] (type annotation not present)
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
;                                   sampler      NA          NA      S0             s7     4
;                                   sampler      NA          NA      S1             s0     1
;                                   sampler      NA          NA      S2             s1     1
;                                   sampler      NA          NA      S3             s2     1
;                                   sampler      NA          NA      S4             s3     1
;                                   sampler      NA          NA      S5             s4     1
;                                   sampler      NA          NA      S6             s5     1
;                                   texture     f32          2d      T0      t0,space3unbounded
;                                   texture     f32          2d      T1      t0,space4unbounded
;                                   texture    byte         r/o      T2      t9,space1     1
;                                   texture    byte         r/o      T3     t37,space1     1
;                                   texture    byte         r/o      T4     t22,space1     1
;                                   texture     f32          3d      T5     t52,space2     1
;                                   texture     f32          2d      T6     t33,space2     1
;                                   texture    byte         r/o      T7      t3,space1     1
;                                   texture    byte         r/o      T8      t4,space1     1
;                                   texture    byte         r/o      T9      t5,space1     1
;                                   texture    byte         r/o     T10      t6,space1     1
;                                   texture     f32          2d     T11     t69,space2     1
;                                   texture    byte         r/o     T12     t18,space1     1
;                                   texture    byte         r/o     T13     t19,space1     1
;                                   texture    byte         r/o     T14     t20,space1     1
;                                   texture    byte         r/o     T15     t21,space1     1
;                                   texture     f32          2d     T16     t37,space2     1
;                                   texture     f32          2d     T17             t0     1
;                                   texture     f32          2d     T18     t58,space2     1
;                                   texture     f32          2d     T19     t57,space2     1
;                                   texture    byte         r/o     T20     t69,space1     1
;                                   texture     u32          2d     T21     t56,space2     1
;                                   texture     f32     2darray     T22     t35,space2     1
;                                   texture     f32          2d     T23     t34,space2     1
;                                   texture     f32          3d     T24     t31,space2     1
;                                   texture     f32          2d     T25      t1,space2     1
;                                   texture     f32          2d     T26      t2,space2     1
;                                   texture     f32          2d     T27      t3,space2     1
;                                   texture     f32          2d     T28      t4,space2     1
;                                   textureunorm_f32     2darray     T29     t80,space2     1
;                                   texture    byte         r/o     T30     t67,space1     1
;                                   texture     f32          2d     T31      t7,space2     1
;                                   texture     f32          2d     T32      t6,space2     1
;                                   texture     f32          2d     T33      t5,space2     1
;                                   texture     f32          2d     T34     t38,space2     1
;                                   texture     f32          1d     T35     t30,space2     1
;                                   texture     f32          3d     T36     t44,space2     1
;                                   texture     f32          3d     T37     t45,space2     1
;                                   texture     f32     2darray     T38     t47,space2     1
;                                   textureunorm_f32     2darray     T39     t85,space2     1
;                                   texture     f32          2d     T40     t83,space2     1
;                                   texture     f32          2d     T41     t86,space2     1
;                                   texture     f32          2d     T42     t12,space2     1
;                                   texture     f32          2d     T43     t55,space2     1
;
;
; ViewId state:
;
; Number of inputs: 56, outputs: 8
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 24, 25, 26, 27, 28, 29, 30, 32, 33, 34, 35, 36, 37, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 52 }
;   output 1 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 24, 25, 26, 27, 28, 29, 30, 32, 33, 34, 35, 36, 37, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 52 }
;   output 2 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 24, 25, 26, 27, 28, 29, 30, 32, 33, 34, 35, 36, 37, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 52 }
;   output 4 depends on inputs: { 0, 1, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 28, 29, 30, 32, 33, 34, 35, 36, 37, 40, 41, 42, 43, 44, 45, 46, 48, 49, 50, 52 }
;   output 5 depends on inputs: { 0, 1, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 28, 29, 30, 32, 33, 34, 35, 36, 37, 40, 41, 42, 43, 44, 45, 46, 48, 49, 50, 52 }
;   output 6 depends on inputs: { 0, 1, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 28, 29, 30, 32, 33, 34, 35, 36, 37, 40, 41, 42, 43, 44, 45, 46, 48, 49, 50, 52 }
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%dx.types.Dimensions = type { i32, i32, i32, i32 }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%"class.Texture2D<vector<float, 4> >" = type { <4 x float>, %"class.Texture2D<vector<float, 4> >::mips_type" }
%"class.Texture2D<vector<float, 4> >::mips_type" = type { i32 }
%struct.ByteAddressBuffer = type { i32 }
%"class.Texture3D<vector<float, 4> >" = type { <4 x float>, %"class.Texture3D<vector<float, 4> >::mips_type" }
%"class.Texture3D<vector<float, 4> >::mips_type" = type { i32 }
%"class.Texture2D<unsigned int>" = type { i32, %"class.Texture2D<unsigned int>::mips_type" }
%"class.Texture2D<unsigned int>::mips_type" = type { i32 }
%"class.Texture2DArray<vector<float, 4> >" = type { <4 x float>, %"class.Texture2DArray<vector<float, 4> >::mips_type" }
%"class.Texture2DArray<vector<float, 4> >::mips_type" = type { i32 }
%"class.Texture2D<vector<float, 3> >" = type { <3 x float>, %"class.Texture2D<vector<float, 3> >::mips_type" }
%"class.Texture2D<vector<float, 3> >::mips_type" = type { i32 }
%"class.Texture3D<float>" = type { float, %"class.Texture3D<float>::mips_type" }
%"class.Texture3D<float>::mips_type" = type { i32 }
%"class.Texture2D<float>" = type { float, %"class.Texture2D<float>::mips_type" }
%"class.Texture2D<float>::mips_type" = type { i32 }
%"class.Texture1D<float>" = type { float, %"class.Texture1D<float>::mips_type" }
%"class.Texture1D<float>::mips_type" = type { i32 }
%"class.Texture2DArray<float>" = type { float, %"class.Texture2DArray<float>::mips_type" }
%"class.Texture2DArray<float>::mips_type" = type { i32 }
%hostlayout.scene = type { %hostlayout.struct.GfxCodeSceneConsts }
%hostlayout.struct.GfxCodeSceneConsts = type { <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <3 x float>, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x i32>, <4 x i32>, <4 x float>, float, float, float, float, i32, i32, float, float, <2 x i32>, <2 x i32>, <2 x float>, <2 x float>, <3 x float>, i32, <3 x float>, float, <3 x float>, float, <2 x float>, <2 x float>, <3 x float>, float, <3 x float>, float, float, float, float, float, <3 x float>, float, i32, float, float, float, <4 x float>, <3 x float>, float, float, float, float, float, <4 x float>, float, float, float, float, i32, i32, i32, float, <4 x float>, i32, i32, i32, i32, i32, i32, i32, i32, <2 x i32>, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, [2 x <4 x i32>], [3 x <2 x float>], i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x i32>, <4 x float>, i32, float, float, float, i32, i32, i32, i32, <2 x float>, <2 x float>, <2 x float>, <2 x float>, i32, i32, <2 x float>, <2 x float>, <2 x float>, <3 x float>, i32, i32, i32, i32, i32, <4 x i32>, <4 x i32>, <4 x i32>, <4 x float>, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <3 x float>, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], <4 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], i32, i32, float, i32, <2 x float>, float, float, float, float, float, i32, <3 x float>, float, float, float, float, float, <3 x float>, float, <3 x float>, float, <3 x float>, float, float, float, float, float, <2 x float>, <2 x float>, float, float, float, float, <3 x float>, float, <2 x float>, i32, i32, <3 x float>, float, float, float, float, float, float, float, float, float, [4 x <3 x float>], i32, [4 x <3 x float>], i32, [4 x <3 x float>], i32, <4 x i32>, <2 x float>, <2 x float>, <2 x float>, i32, i32, float, float, float, float, <4 x float>, <4 x i32>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, i32, <4 x float>, i32, float, float, i32, i32, float, float, i32, i32, float, float, i32, i32, float, float, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, float, float, float, float, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, float, <4 x float>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, float, <4 x float>, float, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x i32>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [8 x <4 x float>], [8 x <4 x float>], <4 x float>, <3 x float>, i32, <2 x float>, float, float, float, float, float, float, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <2 x float>, float, float, <4 x float>, i32, i32, i32, i32, <3 x float>, i32, <4 x i32>, <4 x i32>, <2 x float>, <2 x i32>, <4 x float>, <4 x float>, <2 x float>, <2 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, float, i32, i32, i32, i32, i32, float, float, <2 x float>, <2 x float>, float, float, float, float, i32, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32, i32, float, float, float, i32, <2 x i32>, <2 x i32>, <4 x i32>, float, float, float, float, <4 x float>, <4 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x float>, float, float, float, float, <4 x float>, float, float, float, float, i32, i32, float, float, <4 x float>, <2 x float>, <2 x float>, i32, i32, float, float, [4 x <4 x float>], float, float, float, float, float, float, float, float, i32, i32, i32, float, <4 x float>, <4 x float>, i32, i32, i32, i32, <2 x i32>, <2 x i32>, [2 x <4 x i32>], i32, float, float, float, i32, float, float, i32, <2 x i32>, <2 x float>, float, float, float, i32, %struct.GfxWeatherData, %hostlayout.struct.GfxVolumetricData, %struct.GfxFogRaymarchingData, %struct.GfxEnvironmentalFogData, %struct.GfxShallowWaterData, %struct.GfxGroundDeformationData, %struct.GfxSplinedModelGlobals }
%struct.GfxWeatherData = type { i32, i32, i32, i32, float, float, float, float, float, float, i32, i32, float, float, float, float, i32, i32, i32, i32, float, float, float, float, float, i32, i32, i32, i32, i32, i32, i32, <3 x float>, i32, <3 x float>, i32, i32, float, i32, i32, float, float, float, float }
%hostlayout.struct.GfxVolumetricData = type { [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <3 x i32>, i32, <3 x float>, i32, <4 x float>, <3 x float>, i32, i32, float, float, float, i32, i32, i32, float, <4 x float>, float, float, i32, i32, <3 x float>, i32, <3 x float>, float, <3 x float>, float, <2 x float>, float, float, <3 x float>, float, <3 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, <3 x float>, float, i32, float, float, float, <3 x float>, float, <2 x float>, <2 x float>, <3 x float>, float, i32, float, float, float, float, float, float, float, i32, i32, float, float, <3 x float>, float, i32, i32, <2 x float> }
%struct.GfxFogRaymarchingData = type { <2 x float>, <2 x float>, float, float, float, float, float, float, float, float, float, float, float, float, <2 x float>, <2 x float>, <3 x float>, float }
%struct.GfxEnvironmentalFogData = type { float, float, float, i32 }
%struct.GfxShallowWaterData = type { i32, i32, i32, i32, float, float, float, float, <2 x float>, <2 x float>, float, float, float, float, <3 x float>, float, float, float, float, float, float, float, float, float, i32, float, float, float, float, float, float, float, float, float, float, float, i32, float, float, float, float, i32, i32, i32 }
%struct.GfxGroundDeformationData = type { <2 x float>, <2 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32 }
%struct.GfxSplinedModelGlobals = type { [64 x <4 x float>], [64 x <4 x float>], [16 x <4 x float>], [32 x <4 x float>], [64 x <4 x float>], [16 x <4 x float>], [16 x <4 x float>], float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float }
%hostlayout.stable = type { [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float> }
%struct.SamplerState = type { i32 }
%struct.SamplerComparisonState = type { i32 }

@PCF_OFFSETS_4.0 = internal unnamed_addr constant [4 x float] [float 0x3FE6A161E0000000, float 0.000000e+00, float 0xBFD6A161E0000000, float 2.500000e-01], align 4
@PCF_OFFSETS_4.1 = internal unnamed_addr constant [4 x float] [float 0xBFE6A161E0000000, float 7.500000e-01, float 0xBFD6A161E0000000, float 0.000000e+00], align 4
@PCF_OFFSETS_8.v.1dim = internal constant [16 x float] [float 0xBFE6A09020000000, float 0x3FE6A09020000000, float 0.000000e+00, float -8.750000e-01, float 0x3FE0F837C0000000, float 0x3FE0F837C0000000, float -6.250000e-01, float 0.000000e+00, float 0x3FD6A161E0000000, float 0xBFD6A161E0000000, float 0.000000e+00, float 3.750000e-01, float 0xBFC6A161E0000000, float 0xBFC6A161E0000000, float 1.250000e-01, float 0.000000e+00], align 4

define void @ps_main() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 43, i32 55, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 42, i32 12, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 41, i32 86, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 40, i32 83, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 39, i32 85, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 38, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 37, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 36, i32 44, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 35, i32 30, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 34, i32 38, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 33, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 32, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 31, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 30, i32 67, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 29, i32 80, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 28, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 27, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 26, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 25, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 24, i32 31, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 23, i32 34, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 22, i32 35, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 21, i32 56, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 20, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 19, i32 57, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 18, i32 58, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %27 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %28 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %29 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 21, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %30 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 20, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %31 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 19, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %32 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 18, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %33 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %34 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %35 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %36 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %37 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %38 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 33, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %39 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 52, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %40 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 22, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %41 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %42 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 9, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %43 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 6, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %44 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 5, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %45 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 4, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %46 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %47 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %48 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %49 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %50 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %51 = alloca [4 x i32], align 4
  %52 = call i32 @dx.op.loadInput.i32(i32 4, i32 15, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %53 = call i32 @dx.op.loadInput.i32(i32 4, i32 14, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %54 = call i32 @dx.op.loadInput.i32(i32 4, i32 14, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %55 = call i32 @dx.op.loadInput.i32(i32 4, i32 13, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %56 = call float @dx.op.loadInput.f32(i32 4, i32 12, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %57 = call float @dx.op.loadInput.f32(i32 4, i32 12, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %58 = call float @dx.op.loadInput.f32(i32 4, i32 12, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %59 = call float @dx.op.loadInput.f32(i32 4, i32 12, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %60 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %61 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %62 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %63 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %64 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %65 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %66 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %67 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %68 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %69 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %70 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %71 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %72 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %73 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %74 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %75 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %76 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %77 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %78 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %79 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %80 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %81 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %82 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %83 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %84 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %85 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %86 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %87 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %88 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %89 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %90 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %91 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %92 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %93 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %94 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %95 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %96 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %97 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %98 = alloca [12 x float], align 4
  %99 = alloca [12 x float], align 4
  %100 = alloca [4 x float], align 4
  %101 = alloca [4 x float], align 4
  %102 = alloca [4 x float], align 4
  %103 = alloca [4 x float], align 4
  %104 = alloca [3 x float], align 4
  %105 = alloca [3 x float], align 4
  %106 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %107 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %108 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %109 = extractvalue %dx.types.CBufRet.f32 %108, 0
  %110 = fmul fast float %109, %94
  %111 = fmul fast float %109, %95
  %112 = call float @dx.op.dot3.f32(i32 55, float %85, float %86, float %87, float %85, float %86, float %87)  ; Dot3(ax,ay,az,bx,by,bz)
  %113 = bitcast float %112 to i32
  %114 = ashr i32 %113, 1
  %115 = sub nsw i32 1597250115, %114
  %116 = bitcast i32 %115 to float
  %117 = fmul fast float %116, %85
  %118 = fmul fast float %116, %86
  %119 = fmul fast float %116, %87
  %120 = fmul fast float %86, %83
  %121 = fmul fast float %87, %82
  %122 = fsub fast float %120, %121
  %123 = fmul fast float %87, %81
  %124 = fmul fast float %85, %83
  %125 = fsub fast float %123, %124
  %126 = fmul fast float %85, %82
  %127 = fmul fast float %86, %81
  %128 = fsub fast float %126, %127
  %129 = fmul fast float %122, %84
  %130 = fmul fast float %125, %84
  %131 = fmul fast float %128, %84
  %132 = call float @dx.op.dot3.f32(i32 55, float %74, float %75, float %76, float %74, float %75, float %76)  ; Dot3(ax,ay,az,bx,by,bz)
  %133 = bitcast float %132 to i32
  %134 = ashr i32 %133, 1
  %135 = sub nsw i32 1597250115, %134
  %136 = bitcast i32 %135 to float
  %137 = fmul fast float %136, %74
  %138 = fmul fast float %136, %75
  %139 = fmul fast float %136, %76
  %140 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %141 = extractvalue %dx.types.CBufRet.f32 %140, 0
  %142 = fcmp fast une float %141, 0.000000e+00
  %143 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %144 = extractvalue %dx.types.CBufRet.f32 %143, 2
  %145 = extractvalue %dx.types.CBufRet.f32 %143, 3
  %146 = fmul fast float %110, 2.000000e+00
  %147 = fmul fast float %146, %144
  %148 = fmul fast float %111, 2.000000e+00
  %149 = fmul fast float %148, %145
  %150 = fsub fast float 1.000000e+00, %147
  %151 = fsub fast float 1.000000e+00, %149
  %152 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %153 = extractvalue %dx.types.CBufRet.f32 %152, 0
  %154 = extractvalue %dx.types.CBufRet.f32 %152, 1
  %155 = extractvalue %dx.types.CBufRet.f32 %152, 2
  %156 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %157 = extractvalue %dx.types.CBufRet.f32 %156, 0
  %158 = extractvalue %dx.types.CBufRet.f32 %156, 1
  %159 = extractvalue %dx.types.CBufRet.f32 %156, 2
  %160 = select i1 %142, float %153, float %157
  %161 = select i1 %142, float %154, float %158
  %162 = select i1 %142, float %155, float %159
  %163 = fmul fast float %160, %150
  %164 = fmul fast float %161, %150
  %165 = fmul fast float %162, %150
  %166 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %167 = extractvalue %dx.types.CBufRet.f32 %166, 0
  %168 = extractvalue %dx.types.CBufRet.f32 %166, 1
  %169 = extractvalue %dx.types.CBufRet.f32 %166, 2
  %170 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %171 = extractvalue %dx.types.CBufRet.f32 %170, 0
  %172 = extractvalue %dx.types.CBufRet.f32 %170, 1
  %173 = extractvalue %dx.types.CBufRet.f32 %170, 2
  %174 = select i1 %142, float %167, float %171
  %175 = select i1 %142, float %168, float %172
  %176 = select i1 %142, float %169, float %173
  %177 = fmul fast float %174, %151
  %178 = fmul fast float %175, %151
  %179 = fmul fast float %176, %151
  %180 = fadd fast float %177, %163
  %181 = fadd fast float %178, %164
  %182 = fadd fast float %179, %165
  %183 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %184 = extractvalue %dx.types.CBufRet.f32 %183, 0
  %185 = extractvalue %dx.types.CBufRet.f32 %183, 1
  %186 = extractvalue %dx.types.CBufRet.f32 %183, 2
  %187 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %188 = extractvalue %dx.types.CBufRet.f32 %187, 0
  %189 = extractvalue %dx.types.CBufRet.f32 %187, 1
  %190 = extractvalue %dx.types.CBufRet.f32 %187, 2
  %191 = select i1 %142, float %184, float %188
  %192 = select i1 %142, float %185, float %189
  %193 = select i1 %142, float %186, float %190
  %194 = fadd fast float %180, %191
  %195 = fadd fast float %181, %192
  %196 = fadd fast float %182, %193
  %197 = fmul fast float %194, %97
  %198 = fmul fast float %195, %97
  %199 = fmul fast float %196, %97
  %200 = shl i32 %53, 5
  %201 = add i32 %200, 4194304
  %202 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %201, i32 undef)  ; BufferLoad(srv,index,wot)
  %203 = extractvalue %dx.types.ResRet.i32 %202, 0
  %204 = extractvalue %dx.types.ResRet.i32 %202, 1
  %205 = extractvalue %dx.types.ResRet.i32 %202, 2
  %206 = extractvalue %dx.types.ResRet.i32 %202, 3
  %207 = add i32 %200, 4194320
  %208 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %207, i32 undef)  ; BufferLoad(srv,index,wot)
  %209 = extractvalue %dx.types.ResRet.i32 %208, 0
  %210 = extractvalue %dx.types.ResRet.i32 %208, 1
  %211 = bitcast i32 %209 to float
  %212 = bitcast i32 %210 to float
  %213 = fmul fast float %110, 5.000000e-01
  %214 = fmul fast float %111, 5.000000e-01
  %215 = fptosi float %213 to i32
  %216 = fptosi float %214 to i32
  %217 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %23, i32 0, i32 %215, i32 %216, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %218 = extractvalue %dx.types.ResRet.i32 %217, 0
  %219 = lshr i32 %218, 18
  %220 = uitofp i32 %219 to float
  %221 = fmul fast float %220, 0x3F4C00EBA0000000
  %222 = call float @dx.op.unary.f32(i32 21, float %221)  ; Exp(value)
  %223 = fadd fast float %222, -1.000000e+00
  %224 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %23, i32 0)  ; GetDimensions(handle,mipLevel)
  %225 = extractvalue %dx.types.Dimensions %224, 0
  %226 = sitofp i32 %225 to float
  %227 = extractvalue %dx.types.Dimensions %224, 1
  %228 = sitofp i32 %227 to float
  %229 = fcmp fast oge float %213, %226
  %230 = fcmp fast oge float %214, %228
  %231 = or i1 %229, %230
  %232 = select i1 %231, float 0x4197782600000000, float %223
  %233 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %234 = extractvalue %dx.types.CBufRet.f32 %233, 2
  %235 = extractvalue %dx.types.CBufRet.f32 %233, 3
  %236 = fmul fast float %234, %110
  %237 = fmul fast float %235, %111
  %238 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %239 = extractvalue %dx.types.ResRet.i32 %238, 0
  %240 = and i32 %239, 114688
  %241 = icmp ne i32 %240, 0
  %242 = select i1 %241, float %236, float 0.000000e+00
  %243 = select i1 %241, float %237, float 0.000000e+00
  %244 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %47, float %242, float %243, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %245 = extractvalue %dx.types.ResRet.f32 %244, 0
  %246 = fmul fast float %245, 2.550000e+02
  %247 = fptoui float %246 to i32
  %248 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %249 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %250 = extractvalue %dx.types.CBufRet.i32 %249, 3
  %251 = and i32 %250, 3
  %252 = icmp ne i32 %251, 0
  %253 = and i32 %250, 4
  %254 = icmp ne i32 %253, 0
  %255 = and i1 %252, %254
  br i1 %255, label %256, label %267

; <label>:256                                     ; preds = %0
  %257 = extractvalue %dx.types.CBufRet.f32 %248, 3
  %258 = fmul fast float %257, %111
  %259 = extractvalue %dx.types.CBufRet.f32 %248, 2
  %260 = fmul fast float %259, %110
  %261 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %46, float %260, float %258, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %262 = extractvalue %dx.types.ResRet.f32 %261, 0
  %263 = fsub fast float 1.000000e+00, %262
  %264 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %265 = extractvalue %dx.types.CBufRet.f32 %264, 0
  %266 = fcmp fast olt float %263, %265
  br label %270

; <label>:267                                     ; preds = %0
  %268 = icmp eq i32 %253, 0
  %269 = and i1 %252, %268
  br label %270

; <label>:270                                     ; preds = %267, %256
  %271 = phi i1 [ %266, %256 ], [ %269, %267 ]
  %272 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %273 = extractvalue %dx.types.CBufRet.f32 %272, 2
  %274 = fmul fast float %273, 0x3FE3C6EF40000000
  %275 = frem fast float %110, 2.560000e+02
  %276 = frem fast float %111, 2.560000e+02
  %277 = fptoui float %275 to i32
  %278 = fptoui float %276 to i32
  %279 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %28, i32 0, i32 %277, i32 %278, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %280 = extractvalue %dx.types.ResRet.f32 %279, 0
  %281 = fadd fast float %280, %274
  %282 = call float @dx.op.unary.f32(i32 22, float %281)  ; Frc(value)
  %283 = add i32 %52, 156
  %284 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %283, i32 undef)  ; BufferLoad(srv,index,wot)
  %285 = extractvalue %dx.types.ResRet.i32 %284, 0
  %286 = shl i32 %285, 4
  %287 = and i32 %286, 32752
  %288 = call float @dx.op.legacyF16ToF32(i32 131, i32 %287)  ; LegacyF16ToF32(value)
  %289 = lshr i32 %285, 7
  %290 = and i32 %289, 32752
  %291 = call float @dx.op.legacyF16ToF32(i32 131, i32 %290)  ; LegacyF16ToF32(value)
  %292 = lshr i32 %285, 22
  %293 = shl nuw nsw i32 %292, 5
  %294 = call float @dx.op.legacyF16ToF32(i32 131, i32 %293)  ; LegacyF16ToF32(value)
  %295 = add i32 %52, 216
  %296 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %295, i32 undef)  ; BufferLoad(srv,index,wot)
  %297 = extractvalue %dx.types.ResRet.i32 %296, 0
  %298 = and i32 %297, 255
  %299 = uitofp i32 %298 to float
  %300 = fmul fast float %299, 0x3F70101020000000
  %301 = lshr i32 %297, 8
  %302 = and i32 %301, 255
  %303 = uitofp i32 %302 to float
  %304 = fmul fast float %303, 0x3F70101020000000
  %305 = lshr i32 %297, 16
  %306 = and i32 %305, 255
  %307 = uitofp i32 %306 to float
  %308 = fmul fast float %307, 0x3F70101020000000
  %309 = add i32 %52, 36
  %310 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %309, i32 undef)  ; BufferLoad(srv,index,wot)
  %311 = extractvalue %dx.types.ResRet.i32 %310, 0
  %312 = and i32 %311, 65535
  %313 = call float @dx.op.legacyF16ToF32(i32 131, i32 %312)  ; LegacyF16ToF32(value)
  %314 = lshr i32 %311, 16
  %315 = call float @dx.op.legacyF16ToF32(i32 131, i32 %314)  ; LegacyF16ToF32(value)
  %316 = add i32 %52, 288
  %317 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %316, i32 undef)  ; BufferLoad(srv,index,wot)
  %318 = extractvalue %dx.types.ResRet.i32 %317, 0
  %319 = and i32 %318, 65535
  %320 = call float @dx.op.legacyF16ToF32(i32 131, i32 %319)  ; LegacyF16ToF32(value)
  %321 = lshr i32 %318, 16
  %322 = call float @dx.op.legacyF16ToF32(i32 131, i32 %321)  ; LegacyF16ToF32(value)
  %323 = fmul fast float %320, 0x3F50624DE0000000
  %324 = fmul fast float %322, 0x3F50624DE0000000
  %325 = mul i32 %54, 100
  %326 = add i32 %325, 28
  %327 = add i32 %325, 40
  %328 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %326, i32 undef)  ; BufferLoad(srv,index,wot)
  %329 = extractvalue %dx.types.ResRet.i32 %328, 0
  %330 = add i32 %52, 172
  %331 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %330, i32 undef)  ; BufferLoad(srv,index,wot)
  %332 = extractvalue %dx.types.ResRet.i32 %331, 0
  %333 = shl i32 %332, 4
  %334 = and i32 %333, 32752
  %335 = call float @dx.op.legacyF16ToF32(i32 131, i32 %334)  ; LegacyF16ToF32(value)
  %336 = lshr i32 %332, 7
  %337 = and i32 %336, 32752
  %338 = call float @dx.op.legacyF16ToF32(i32 131, i32 %337)  ; LegacyF16ToF32(value)
  %339 = lshr i32 %332, 22
  %340 = shl nuw nsw i32 %339, 5
  %341 = call float @dx.op.legacyF16ToF32(i32 131, i32 %340)  ; LegacyF16ToF32(value)
  %342 = add i32 %52, 232
  %343 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %342, i32 undef)  ; BufferLoad(srv,index,wot)
  %344 = extractvalue %dx.types.ResRet.i32 %343, 0
  %345 = and i32 %344, 255
  %346 = uitofp i32 %345 to float
  %347 = fmul fast float %346, 0x3F70101020000000
  %348 = lshr i32 %344, 8
  %349 = and i32 %348, 255
  %350 = uitofp i32 %349 to float
  %351 = fmul fast float %350, 0x3F70101020000000
  %352 = lshr i32 %344, 16
  %353 = and i32 %352, 255
  %354 = uitofp i32 %353 to float
  %355 = fmul fast float %354, 0x3F70101020000000
  %356 = add i32 %52, 52
  %357 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %356, i32 undef)  ; BufferLoad(srv,index,wot)
  %358 = extractvalue %dx.types.ResRet.i32 %357, 0
  %359 = and i32 %358, 65535
  %360 = call float @dx.op.legacyF16ToF32(i32 131, i32 %359)  ; LegacyF16ToF32(value)
  %361 = lshr i32 %358, 16
  %362 = call float @dx.op.legacyF16ToF32(i32 131, i32 %361)  ; LegacyF16ToF32(value)
  %363 = add i32 %52, 304
  %364 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %363, i32 undef)  ; BufferLoad(srv,index,wot)
  %365 = extractvalue %dx.types.ResRet.i32 %364, 0
  %366 = and i32 %365, 65535
  %367 = call float @dx.op.legacyF16ToF32(i32 131, i32 %366)  ; LegacyF16ToF32(value)
  %368 = lshr i32 %365, 16
  %369 = call float @dx.op.legacyF16ToF32(i32 131, i32 %368)  ; LegacyF16ToF32(value)
  %370 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %327, i32 undef)  ; BufferLoad(srv,index,wot)
  %371 = extractvalue %dx.types.ResRet.i32 %370, 0
  %372 = shl i32 %371, 4
  %373 = and i32 %372, 32752
  %374 = call float @dx.op.legacyF16ToF32(i32 131, i32 %373)  ; LegacyF16ToF32(value)
  %375 = lshr i32 %371, 7
  %376 = and i32 %375, 32752
  %377 = call float @dx.op.legacyF16ToF32(i32 131, i32 %376)  ; LegacyF16ToF32(value)
  %378 = lshr i32 %371, 22
  %379 = shl nuw nsw i32 %378, 5
  %380 = call float @dx.op.legacyF16ToF32(i32 131, i32 %379)  ; LegacyF16ToF32(value)
  %381 = and i32 %329, 1
  %382 = icmp ne i32 %381, 0
  %383 = select i1 %382, float %374, float %335
  %384 = select i1 %382, float %377, float %338
  %385 = select i1 %382, float %380, float %341
  %386 = add i32 %325, 44
  %387 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %386, i32 undef)  ; BufferLoad(srv,index,wot)
  %388 = extractvalue %dx.types.ResRet.f32 %387, 0
  %389 = fmul fast float %388, %383
  %390 = fmul fast float %388, %384
  %391 = fmul fast float %388, %385
  %392 = add i32 %325, 48
  %393 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %392, i32 undef)  ; BufferLoad(srv,index,wot)
  %394 = extractvalue %dx.types.ResRet.i32 %393, 0
  %395 = shl i32 %394, 4
  %396 = and i32 %395, 32752
  %397 = call float @dx.op.legacyF16ToF32(i32 131, i32 %396)  ; LegacyF16ToF32(value)
  %398 = lshr i32 %394, 7
  %399 = and i32 %398, 32752
  %400 = call float @dx.op.legacyF16ToF32(i32 131, i32 %399)  ; LegacyF16ToF32(value)
  %401 = lshr i32 %394, 22
  %402 = shl nuw nsw i32 %401, 5
  %403 = call float @dx.op.legacyF16ToF32(i32 131, i32 %402)  ; LegacyF16ToF32(value)
  %404 = and i32 %329, 8
  %405 = icmp ne i32 %404, 0
  %406 = select i1 %405, float %397, float %347
  %407 = select i1 %405, float %400, float %351
  %408 = select i1 %405, float %403, float %355
  %409 = add i32 %325, 52
  %410 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %409, i32 undef)  ; BufferLoad(srv,index,wot)
  %411 = extractvalue %dx.types.ResRet.i32 %410, 0
  %412 = and i32 %411, 65535
  %413 = call float @dx.op.legacyF16ToF32(i32 131, i32 %412)  ; LegacyF16ToF32(value)
  %414 = lshr i32 %411, 16
  %415 = call float @dx.op.legacyF16ToF32(i32 131, i32 %414)  ; LegacyF16ToF32(value)
  %416 = and i32 %329, 2
  %417 = icmp ne i32 %416, 0
  %418 = select i1 %417, float %413, float %360
  %419 = select i1 %417, float %415, float %362
  %420 = add i32 %325, 56
  %421 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %420, i32 undef)  ; BufferLoad(srv,index,wot)
  %422 = extractvalue %dx.types.ResRet.i32 %421, 0
  %423 = and i32 %422, 65535
  %424 = call float @dx.op.legacyF16ToF32(i32 131, i32 %423)  ; LegacyF16ToF32(value)
  %425 = lshr i32 %422, 16
  %426 = call float @dx.op.legacyF16ToF32(i32 131, i32 %425)  ; LegacyF16ToF32(value)
  %427 = and i32 %329, 4
  %428 = icmp ne i32 %427, 0
  %429 = select i1 %428, float %424, float %367
  %430 = fmul float %429, 0x3F50624DE0000000
  %431 = select i1 %428, float %426, float %369
  %432 = fmul float %431, 0x3F50624DE0000000
  %433 = add i32 %325, 60
  %434 = add i32 %325, 32
  %435 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %434, i32 undef)  ; BufferLoad(srv,index,wot)
  %436 = extractvalue %dx.types.ResRet.i32 %435, 0
  %437 = add i32 %52, 188
  %438 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %437, i32 undef)  ; BufferLoad(srv,index,wot)
  %439 = extractvalue %dx.types.ResRet.i32 %438, 0
  %440 = shl i32 %439, 4
  %441 = and i32 %440, 32752
  %442 = call float @dx.op.legacyF16ToF32(i32 131, i32 %441)  ; LegacyF16ToF32(value)
  %443 = lshr i32 %439, 7
  %444 = and i32 %443, 32752
  %445 = call float @dx.op.legacyF16ToF32(i32 131, i32 %444)  ; LegacyF16ToF32(value)
  %446 = lshr i32 %439, 22
  %447 = shl nuw nsw i32 %446, 5
  %448 = call float @dx.op.legacyF16ToF32(i32 131, i32 %447)  ; LegacyF16ToF32(value)
  %449 = add i32 %52, 248
  %450 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %449, i32 undef)  ; BufferLoad(srv,index,wot)
  %451 = extractvalue %dx.types.ResRet.i32 %450, 0
  %452 = and i32 %451, 255
  %453 = uitofp i32 %452 to float
  %454 = fmul fast float %453, 0x3F70101020000000
  %455 = lshr i32 %451, 8
  %456 = and i32 %455, 255
  %457 = uitofp i32 %456 to float
  %458 = fmul fast float %457, 0x3F70101020000000
  %459 = lshr i32 %451, 16
  %460 = and i32 %459, 255
  %461 = uitofp i32 %460 to float
  %462 = fmul fast float %461, 0x3F70101020000000
  %463 = add i32 %52, 68
  %464 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %463, i32 undef)  ; BufferLoad(srv,index,wot)
  %465 = extractvalue %dx.types.ResRet.i32 %464, 0
  %466 = and i32 %465, 65535
  %467 = call float @dx.op.legacyF16ToF32(i32 131, i32 %466)  ; LegacyF16ToF32(value)
  %468 = lshr i32 %465, 16
  %469 = call float @dx.op.legacyF16ToF32(i32 131, i32 %468)  ; LegacyF16ToF32(value)
  %470 = add i32 %52, 320
  %471 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %470, i32 undef)  ; BufferLoad(srv,index,wot)
  %472 = extractvalue %dx.types.ResRet.i32 %471, 0
  %473 = and i32 %472, 65535
  %474 = call float @dx.op.legacyF16ToF32(i32 131, i32 %473)  ; LegacyF16ToF32(value)
  %475 = lshr i32 %472, 16
  %476 = call float @dx.op.legacyF16ToF32(i32 131, i32 %475)  ; LegacyF16ToF32(value)
  %477 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %433, i32 undef)  ; BufferLoad(srv,index,wot)
  %478 = extractvalue %dx.types.ResRet.i32 %477, 0
  %479 = shl i32 %478, 4
  %480 = and i32 %479, 32752
  %481 = call float @dx.op.legacyF16ToF32(i32 131, i32 %480)  ; LegacyF16ToF32(value)
  %482 = lshr i32 %478, 7
  %483 = and i32 %482, 32752
  %484 = call float @dx.op.legacyF16ToF32(i32 131, i32 %483)  ; LegacyF16ToF32(value)
  %485 = lshr i32 %478, 22
  %486 = shl nuw nsw i32 %485, 5
  %487 = call float @dx.op.legacyF16ToF32(i32 131, i32 %486)  ; LegacyF16ToF32(value)
  %488 = and i32 %436, 1
  %489 = icmp ne i32 %488, 0
  %490 = select i1 %489, float %481, float %442
  %491 = select i1 %489, float %484, float %445
  %492 = select i1 %489, float %487, float %448
  %493 = add i32 %325, 64
  %494 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %493, i32 undef)  ; BufferLoad(srv,index,wot)
  %495 = extractvalue %dx.types.ResRet.f32 %494, 0
  %496 = fmul fast float %495, %490
  %497 = fmul fast float %495, %491
  %498 = fmul fast float %495, %492
  %499 = add i32 %325, 68
  %500 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %499, i32 undef)  ; BufferLoad(srv,index,wot)
  %501 = extractvalue %dx.types.ResRet.i32 %500, 0
  %502 = shl i32 %501, 4
  %503 = and i32 %502, 32752
  %504 = call float @dx.op.legacyF16ToF32(i32 131, i32 %503)  ; LegacyF16ToF32(value)
  %505 = lshr i32 %501, 7
  %506 = and i32 %505, 32752
  %507 = call float @dx.op.legacyF16ToF32(i32 131, i32 %506)  ; LegacyF16ToF32(value)
  %508 = lshr i32 %501, 22
  %509 = shl nuw nsw i32 %508, 5
  %510 = call float @dx.op.legacyF16ToF32(i32 131, i32 %509)  ; LegacyF16ToF32(value)
  %511 = and i32 %436, 8
  %512 = icmp ne i32 %511, 0
  %513 = select i1 %512, float %504, float %454
  %514 = select i1 %512, float %507, float %458
  %515 = select i1 %512, float %510, float %462
  %516 = add i32 %325, 72
  %517 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %516, i32 undef)  ; BufferLoad(srv,index,wot)
  %518 = extractvalue %dx.types.ResRet.i32 %517, 0
  %519 = and i32 %518, 65535
  %520 = call float @dx.op.legacyF16ToF32(i32 131, i32 %519)  ; LegacyF16ToF32(value)
  %521 = lshr i32 %518, 16
  %522 = call float @dx.op.legacyF16ToF32(i32 131, i32 %521)  ; LegacyF16ToF32(value)
  %523 = and i32 %436, 2
  %524 = icmp ne i32 %523, 0
  %525 = select i1 %524, float %520, float %467
  %526 = select i1 %524, float %522, float %469
  %527 = add i32 %325, 76
  %528 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %527, i32 undef)  ; BufferLoad(srv,index,wot)
  %529 = extractvalue %dx.types.ResRet.i32 %528, 0
  %530 = and i32 %529, 65535
  %531 = call float @dx.op.legacyF16ToF32(i32 131, i32 %530)  ; LegacyF16ToF32(value)
  %532 = lshr i32 %529, 16
  %533 = call float @dx.op.legacyF16ToF32(i32 131, i32 %532)  ; LegacyF16ToF32(value)
  %534 = and i32 %436, 4
  %535 = icmp ne i32 %534, 0
  %536 = select i1 %535, float %531, float %474
  %537 = fmul float %536, 0x3F50624DE0000000
  %538 = select i1 %535, float %533, float %476
  %539 = fmul float %538, 0x3F50624DE0000000
  %540 = add i32 %325, 80
  %541 = add i32 %325, 36
  %542 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %541, i32 undef)  ; BufferLoad(srv,index,wot)
  %543 = extractvalue %dx.types.ResRet.i32 %542, 0
  %544 = add i32 %52, 204
  %545 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %544, i32 undef)  ; BufferLoad(srv,index,wot)
  %546 = extractvalue %dx.types.ResRet.i32 %545, 0
  %547 = shl i32 %546, 4
  %548 = and i32 %547, 32752
  %549 = call float @dx.op.legacyF16ToF32(i32 131, i32 %548)  ; LegacyF16ToF32(value)
  %550 = lshr i32 %546, 7
  %551 = and i32 %550, 32752
  %552 = call float @dx.op.legacyF16ToF32(i32 131, i32 %551)  ; LegacyF16ToF32(value)
  %553 = lshr i32 %546, 22
  %554 = shl nuw nsw i32 %553, 5
  %555 = call float @dx.op.legacyF16ToF32(i32 131, i32 %554)  ; LegacyF16ToF32(value)
  %556 = add i32 %52, 264
  %557 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %556, i32 undef)  ; BufferLoad(srv,index,wot)
  %558 = extractvalue %dx.types.ResRet.i32 %557, 0
  %559 = and i32 %558, 255
  %560 = uitofp i32 %559 to float
  %561 = fmul fast float %560, 0x3F70101020000000
  %562 = lshr i32 %558, 8
  %563 = and i32 %562, 255
  %564 = uitofp i32 %563 to float
  %565 = fmul fast float %564, 0x3F70101020000000
  %566 = lshr i32 %558, 16
  %567 = and i32 %566, 255
  %568 = uitofp i32 %567 to float
  %569 = fmul fast float %568, 0x3F70101020000000
  %570 = add i32 %52, 84
  %571 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %570, i32 undef)  ; BufferLoad(srv,index,wot)
  %572 = extractvalue %dx.types.ResRet.i32 %571, 0
  %573 = and i32 %572, 65535
  %574 = call float @dx.op.legacyF16ToF32(i32 131, i32 %573)  ; LegacyF16ToF32(value)
  %575 = lshr i32 %572, 16
  %576 = call float @dx.op.legacyF16ToF32(i32 131, i32 %575)  ; LegacyF16ToF32(value)
  %577 = add i32 %52, 336
  %578 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %577, i32 undef)  ; BufferLoad(srv,index,wot)
  %579 = extractvalue %dx.types.ResRet.i32 %578, 0
  %580 = and i32 %579, 65535
  %581 = call float @dx.op.legacyF16ToF32(i32 131, i32 %580)  ; LegacyF16ToF32(value)
  %582 = lshr i32 %579, 16
  %583 = call float @dx.op.legacyF16ToF32(i32 131, i32 %582)  ; LegacyF16ToF32(value)
  %584 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %540, i32 undef)  ; BufferLoad(srv,index,wot)
  %585 = extractvalue %dx.types.ResRet.i32 %584, 0
  %586 = shl i32 %585, 4
  %587 = and i32 %586, 32752
  %588 = call float @dx.op.legacyF16ToF32(i32 131, i32 %587)  ; LegacyF16ToF32(value)
  %589 = lshr i32 %585, 7
  %590 = and i32 %589, 32752
  %591 = call float @dx.op.legacyF16ToF32(i32 131, i32 %590)  ; LegacyF16ToF32(value)
  %592 = lshr i32 %585, 22
  %593 = shl nuw nsw i32 %592, 5
  %594 = call float @dx.op.legacyF16ToF32(i32 131, i32 %593)  ; LegacyF16ToF32(value)
  %595 = and i32 %543, 1
  %596 = icmp ne i32 %595, 0
  %597 = select i1 %596, float %588, float %549
  %598 = select i1 %596, float %591, float %552
  %599 = select i1 %596, float %594, float %555
  %600 = add i32 %325, 84
  %601 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %600, i32 undef)  ; BufferLoad(srv,index,wot)
  %602 = extractvalue %dx.types.ResRet.f32 %601, 0
  %603 = fmul fast float %602, %597
  %604 = fmul fast float %602, %598
  %605 = fmul fast float %602, %599
  %606 = add i32 %325, 88
  %607 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %606, i32 undef)  ; BufferLoad(srv,index,wot)
  %608 = extractvalue %dx.types.ResRet.i32 %607, 0
  %609 = shl i32 %608, 4
  %610 = and i32 %609, 32752
  %611 = call float @dx.op.legacyF16ToF32(i32 131, i32 %610)  ; LegacyF16ToF32(value)
  %612 = lshr i32 %608, 7
  %613 = and i32 %612, 32752
  %614 = call float @dx.op.legacyF16ToF32(i32 131, i32 %613)  ; LegacyF16ToF32(value)
  %615 = lshr i32 %608, 22
  %616 = shl nuw nsw i32 %615, 5
  %617 = call float @dx.op.legacyF16ToF32(i32 131, i32 %616)  ; LegacyF16ToF32(value)
  %618 = and i32 %543, 8
  %619 = icmp ne i32 %618, 0
  %620 = select i1 %619, float %611, float %561
  %621 = select i1 %619, float %614, float %565
  %622 = select i1 %619, float %617, float %569
  %623 = add i32 %325, 92
  %624 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %623, i32 undef)  ; BufferLoad(srv,index,wot)
  %625 = extractvalue %dx.types.ResRet.i32 %624, 0
  %626 = and i32 %625, 65535
  %627 = call float @dx.op.legacyF16ToF32(i32 131, i32 %626)  ; LegacyF16ToF32(value)
  %628 = lshr i32 %625, 16
  %629 = call float @dx.op.legacyF16ToF32(i32 131, i32 %628)  ; LegacyF16ToF32(value)
  %630 = and i32 %543, 2
  %631 = icmp ne i32 %630, 0
  %632 = select i1 %631, float %627, float %574
  %633 = select i1 %631, float %629, float %576
  %634 = add i32 %325, 96
  %635 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %634, i32 undef)  ; BufferLoad(srv,index,wot)
  %636 = extractvalue %dx.types.ResRet.i32 %635, 0
  %637 = and i32 %636, 65535
  %638 = call float @dx.op.legacyF16ToF32(i32 131, i32 %637)  ; LegacyF16ToF32(value)
  %639 = lshr i32 %636, 16
  %640 = call float @dx.op.legacyF16ToF32(i32 131, i32 %639)  ; LegacyF16ToF32(value)
  %641 = and i32 %543, 4
  %642 = icmp ne i32 %641, 0
  %643 = select i1 %642, float %638, float %581
  %644 = fmul float %643, 0x3F50624DE0000000
  %645 = select i1 %642, float %640, float %583
  %646 = fmul float %645, 0x3F50624DE0000000
  %647 = add i32 %52, 348
  %648 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %647, i32 undef)  ; BufferLoad(srv,index,wot)
  %649 = extractvalue %dx.types.ResRet.i32 %648, 0
  %650 = and i32 %649, 32
  %651 = icmp eq i32 %650, 0
  %652 = and i32 %649, 64
  %653 = icmp eq i32 %652, 0
  %654 = and i32 %649, 128
  %655 = icmp eq i32 %654, 0
  %656 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %647, i32 undef)  ; BufferLoad(srv,index,wot)
  %657 = extractvalue %dx.types.ResRet.i32 %656, 0
  %658 = and i32 %657, 2
  %659 = icmp eq i32 %658, 0
  br i1 %659, label %675, label %660

; <label>:660                                     ; preds = %270
  %661 = add i32 %52, 540
  %662 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %661, i32 undef)  ; BufferLoad(srv,index,wot)
  %663 = extractvalue %dx.types.ResRet.i32 %662, 0
  %664 = add i32 %663, 0
  %665 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %664, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %666 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %665, %dx.types.Handle %107, float %88, float %89, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %667 = extractvalue %dx.types.ResRet.f32 %666, 0
  %668 = extractvalue %dx.types.ResRet.f32 %666, 1
  %669 = extractvalue %dx.types.ResRet.f32 %666, 2
  %670 = extractvalue %dx.types.ResRet.f32 %666, 3
  %671 = fmul fast float %670, %90
  %672 = fmul fast float %667, %91
  %673 = fmul fast float %668, %92
  %674 = fmul fast float %669, %93
  br label %675

; <label>:675                                     ; preds = %660, %270
  %676 = phi float [ %93, %270 ], [ %674, %660 ]
  %677 = phi float [ %92, %270 ], [ %673, %660 ]
  %678 = phi float [ %91, %270 ], [ %672, %660 ]
  %679 = phi float [ %90, %270 ], [ %671, %660 ]
  %680 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %647, i32 undef)  ; BufferLoad(srv,index,wot)
  %681 = extractvalue %dx.types.ResRet.i32 %680, 0
  %682 = and i32 %681, 2
  %683 = icmp eq i32 %682, 0
  br i1 %683, label %703, label %684

; <label>:684                                     ; preds = %675
  %685 = add i32 %52, 44
  %686 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %685, i32 undef)  ; BufferLoad(srv,index,wot)
  %687 = extractvalue %dx.types.ResRet.i32 %686, 0
  %688 = and i32 %687, 1
  %689 = icmp ne i32 %688, 0
  %690 = select i1 %689, float %678, float 1.000000e+00
  %691 = add i32 %52, 60
  %692 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %691, i32 undef)  ; BufferLoad(srv,index,wot)
  %693 = extractvalue %dx.types.ResRet.i32 %692, 0
  %694 = and i32 %693, 1
  %695 = icmp ne i32 %694, 0
  %696 = select i1 %695, float %677, float 1.000000e+00
  %697 = add i32 %52, 76
  %698 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %697, i32 undef)  ; BufferLoad(srv,index,wot)
  %699 = extractvalue %dx.types.ResRet.i32 %698, 0
  %700 = and i32 %699, 1
  %701 = icmp ne i32 %700, 0
  %702 = select i1 %701, float %676, float 1.000000e+00
  br label %703

; <label>:703                                     ; preds = %684, %675
  %704 = phi float [ %676, %675 ], [ %702, %684 ]
  %705 = phi float [ %677, %675 ], [ %696, %684 ]
  %706 = phi float [ %678, %675 ], [ %690, %684 ]
  %707 = lshr i32 %681, 20
  %708 = and i32 %707, 3
  %709 = add nuw nsw i32 %708, 1
  %710 = add i32 %52, 24
  %711 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %710, i32 undef)  ; BufferLoad(srv,index,wot)
  %712 = extractvalue %dx.types.ResRet.i32 %711, 0
  %713 = add i32 %52, 28
  %714 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %713, i32 undef)  ; BufferLoad(srv,index,wot)
  %715 = extractvalue %dx.types.ResRet.i32 %714, 0
  %716 = or i32 %715, %712
  %717 = icmp eq i32 %716, 0
  br i1 %717, label %1336, label %718

; <label>:718                                     ; preds = %703
  %719 = and i32 %712, 262144
  %720 = icmp ne i32 %719, 0
  %721 = select i1 %720, float %60, float 1.000000e+00
  %722 = select i1 %720, float %61, float 0.000000e+00
  %723 = select i1 %720, float %62, float 0.000000e+00
  %724 = select i1 %720, float %63, float 1.000000e+00
  %725 = select i1 %720, float %64, float %88
  %726 = select i1 %720, float %65, float %89
  %727 = add i32 %52, 284
  %728 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %727, i32 undef)  ; BufferLoad(srv,index,wot)
  %729 = extractvalue %dx.types.ResRet.i32 %728, 0
  %730 = lshr i32 %729, 16
  %731 = call float @dx.op.legacyF16ToF32(i32 131, i32 %730)  ; LegacyF16ToF32(value)
  %732 = fmul fast float %731, 0x3F50624DE0000000
  %733 = add i32 %52, 88
  %734 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %733, i32 undef)  ; BufferLoad(srv,index,wot)
  %735 = extractvalue %dx.types.ResRet.i32 %734, 0
  %736 = lshr i32 %735, 16
  %737 = and i32 %736, 255
  %738 = lshr i32 %735, 24
  %739 = add i32 %52, 292
  %740 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %739, i32 undef)  ; BufferLoad(srv,index,wot)
  %741 = extractvalue %dx.types.ResRet.i32 %740, 0
  %742 = and i32 %741, 65535
  %743 = call float @dx.op.legacyF16ToF32(i32 131, i32 %742)  ; LegacyF16ToF32(value)
  %744 = lshr i32 %741, 16
  %745 = call float @dx.op.legacyF16ToF32(i32 131, i32 %744)  ; LegacyF16ToF32(value)
  %746 = add i32 %52, 32
  %747 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %746, i32 undef)  ; BufferLoad(srv,index,wot)
  %748 = extractvalue %dx.types.ResRet.i32 %747, 0
  %749 = lshr i32 %748, 22
  %750 = shl nuw nsw i32 %749, 5
  %751 = call float @dx.op.legacyF16ToF32(i32 131, i32 %750)  ; LegacyF16ToF32(value)
  %752 = shl i32 %748, 4
  %753 = and i32 %752, 32752
  %754 = call float @dx.op.legacyF16ToF32(i32 131, i32 %753)  ; LegacyF16ToF32(value)
  %755 = lshr i32 %748, 7
  %756 = and i32 %755, 32752
  %757 = call float @dx.op.legacyF16ToF32(i32 131, i32 %756)  ; LegacyF16ToF32(value)
  %758 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %759 = extractvalue %dx.types.CBufRet.f32 %758, 3
  %760 = fmul fast float %759, 1.000000e+03
  %761 = fmul fast float %323, %760
  %762 = call float @dx.op.unary.f32(i32 22, float %761)  ; Frc(value)
  %763 = fadd fast float %762, %313
  %764 = fmul fast float %324, %760
  %765 = call float @dx.op.unary.f32(i32 22, float %764)  ; Frc(value)
  %766 = fadd fast float %765, %315
  %767 = fmul fast float %732, %760
  %768 = call float @dx.op.unary.f32(i32 22, float %767)  ; Frc(value)
  %769 = fmul fast float %768, 0x401921FB60000000
  %770 = fadd fast float %769, %751
  %771 = call float @dx.op.unary.f32(i32 13, float %770)  ; Sin(value)
  %772 = call float @dx.op.unary.f32(i32 12, float %770)  ; Cos(value)
  %773 = fsub fast float -0.000000e+00, %771
  %774 = fadd fast float %725, -5.000000e-01
  %775 = fadd fast float %726, -5.000000e-01
  %776 = fmul fast float %743, %774
  %777 = fmul fast float %745, %775
  %778 = fadd fast float %776, 5.000000e-01
  %779 = fadd fast float %777, 5.000000e-01
  %780 = fmul fast float %754, %778
  %781 = fmul fast float %757, %779
  %782 = fmul fast float %772, %780
  %783 = call float @dx.op.tertiary.f32(i32 46, float %773, float %781, float %782)  ; FMad(a,b,c)
  %784 = fmul fast float %771, %780
  %785 = call float @dx.op.tertiary.f32(i32 46, float %772, float %781, float %784)  ; FMad(a,b,c)
  %786 = fadd fast float %763, %783
  %787 = fadd fast float %766, %785
  %788 = icmp ugt i32 %737, 1
  %789 = icmp ugt i32 %735, 33554431
  %790 = or i1 %789, %788
  br i1 %790, label %791, label %816

; <label>:791                                     ; preds = %718
  %792 = add i32 %52, 228
  %793 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %792, i32 undef)  ; BufferLoad(srv,index,wot)
  %794 = extractvalue %dx.types.ResRet.i32 %793, 0
  %795 = lshr i32 %794, 16
  %796 = call float @dx.op.legacyF16ToF32(i32 131, i32 %795)  ; LegacyF16ToF32(value)
  %797 = fmul fast float %759, %796
  %798 = call float @dx.op.unary.f32(i32 22, float %797)  ; Frc(value)
  %799 = mul nuw nsw i32 %737, %738
  %800 = uitofp i32 %799 to float
  %801 = fmul fast float %798, %800
  %802 = call float @dx.op.unary.f32(i32 27, float %801)  ; Round_ni(value)
  %803 = fptoui float %802 to i32
  %804 = urem i32 %803, %737
  %805 = udiv i32 %803, %738
  %806 = call float @dx.op.unary.f32(i32 22, float %786)  ; Frc(value)
  %807 = call float @dx.op.unary.f32(i32 22, float %787)  ; Frc(value)
  %808 = uitofp i32 %804 to float
  %809 = uitofp i32 %805 to float
  %810 = fadd fast float %806, %808
  %811 = fadd fast float %807, %809
  %812 = uitofp i32 %737 to float
  %813 = uitofp i32 %738 to float
  %814 = fdiv fast float %810, %812
  %815 = fdiv fast float %811, %813
  br label %816

; <label>:816                                     ; preds = %791, %718
  %817 = phi float [ %814, %791 ], [ %786, %718 ]
  %818 = phi float [ %815, %791 ], [ %787, %718 ]
  %819 = and i32 %712, 256
  %820 = icmp eq i32 %819, 0
  br i1 %820, label %867, label %821

; <label>:821                                     ; preds = %816
  %822 = add i32 %52, 472
  %823 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %822, i32 undef)  ; BufferLoad(srv,index,wot)
  %824 = extractvalue %dx.types.ResRet.i32 %823, 0
  %825 = add i32 %824, 0
  %826 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %825, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %827 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %826, %dx.types.Handle %107, float %817, float %818, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %828 = extractvalue %dx.types.ResRet.f32 %827, 0
  %829 = add i32 %52, 100
  %830 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %829, i32 undef)  ; BufferLoad(srv,index,wot)
  %831 = extractvalue %dx.types.ResRet.i32 %830, 0
  %832 = shl i32 %831, 4
  %833 = and i32 %832, 32752
  %834 = call float @dx.op.legacyF16ToF32(i32 131, i32 %833)  ; LegacyF16ToF32(value)
  %835 = lshr i32 %831, 7
  %836 = and i32 %835, 32752
  %837 = call float @dx.op.legacyF16ToF32(i32 131, i32 %836)  ; LegacyF16ToF32(value)
  %838 = fsub fast float 1.000000e+00, %679
  %839 = call float @dx.op.binary.f32(i32 35, float %838, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %840 = bitcast float %679 to i32
  %841 = sitofp i32 %840 to float
  %842 = fadd fast float %841, 0xC1CFBF8940000000
  %843 = fmul fast float %837, %842
  %844 = fadd fast float %843, 0x41CFBF8940000000
  %845 = fptosi float %844 to i32
  %846 = bitcast i32 %845 to float
  %847 = bitcast float %839 to i32
  %848 = sitofp i32 %847 to float
  %849 = fadd fast float %848, 0xC1CFBF8940000000
  %850 = fmul fast float %849, %837
  %851 = fadd fast float %850, 0x41CFBF8940000000
  %852 = fptosi float %851 to i32
  %853 = bitcast i32 %852 to float
  %854 = fmul fast float %846, %834
  %855 = fmul fast float %853, %834
  %856 = fsub fast float %839, %854
  %857 = fadd fast float %855, %839
  %858 = call float @dx.op.unary.f32(i32 7, float %856)  ; Saturate(value)
  %859 = call float @dx.op.unary.f32(i32 7, float %857)  ; Saturate(value)
  %860 = fsub fast float %828, %858
  %861 = fsub fast float %859, %858
  %862 = bitcast float %861 to i32
  %863 = sub nsw i32 2129859010, %862
  %864 = bitcast i32 %863 to float
  %865 = fmul fast float %864, %860
  %866 = call float @dx.op.unary.f32(i32 7, float %865)  ; Saturate(value)
  br label %867

; <label>:867                                     ; preds = %821, %816
  %868 = phi float [ %866, %821 ], [ %679, %816 ]
  %869 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %710, i32 undef)  ; BufferLoad(srv,index,wot)
  %870 = extractvalue %dx.types.ResRet.i32 %869, 0
  %871 = and i32 %870, 128
  %872 = icmp eq i32 %871, 0
  br i1 %872, label %889, label %873

; <label>:873                                     ; preds = %867
  %874 = add i32 %52, 456
  %875 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %874, i32 undef)  ; BufferLoad(srv,index,wot)
  %876 = extractvalue %dx.types.ResRet.i32 %875, 0
  %877 = add i32 %876, 0
  %878 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %877, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %879 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %878, %dx.types.Handle %107, float %817, float %818, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %880 = extractvalue %dx.types.ResRet.f32 %879, 0
  %881 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %710, i32 undef)  ; BufferLoad(srv,index,wot)
  %882 = extractvalue %dx.types.ResRet.i32 %881, 0
  %883 = and i32 %882, 524288
  %884 = icmp ne i32 %883, 0
  %885 = fcmp fast ogt float %880, 0x3FE0101020000000
  %886 = select i1 %885, float 1.000000e+00, float 0.000000e+00
  %887 = select i1 %884, float %886, float %880
  %888 = fmul fast float %887, %868
  br label %889

; <label>:889                                     ; preds = %873, %867
  %890 = phi float [ %888, %873 ], [ %868, %867 ]
  %891 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %710, i32 undef)  ; BufferLoad(srv,index,wot)
  %892 = extractvalue %dx.types.ResRet.i32 %891, 0
  %893 = and i32 %892, 16
  %894 = icmp eq i32 %893, 0
  br i1 %894, label %1093, label %895

; <label>:895                                     ; preds = %889
  %896 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %733, i32 undef)  ; BufferLoad(srv,index,wot)
  %897 = extractvalue %dx.types.ResRet.i32 %896, 0
  %898 = add i32 %52, 408
  %899 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %898, i32 undef)  ; BufferLoad(srv,index,wot)
  %900 = extractvalue %dx.types.ResRet.i32 %899, 0
  %901 = add i32 %900, 0
  %902 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %901, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %903 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %902, %dx.types.Handle %106, float %817, float %818, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %904 = extractvalue %dx.types.ResRet.f32 %903, 0
  %905 = extractvalue %dx.types.ResRet.f32 %903, 1
  %906 = extractvalue %dx.types.ResRet.f32 %903, 2
  %907 = extractvalue %dx.types.ResRet.f32 %903, 3
  %908 = and i32 %897, 255
  %909 = uitofp i32 %908 to float
  %910 = lshr i32 %897, 8
  %911 = and i32 %910, 255
  %912 = uitofp i32 %911 to float
  %913 = fmul fast float %907, %909
  %914 = fadd fast float %913, %912
  %915 = fmul fast float %914, 0x3F70101000000000
  %916 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %710, i32 undef)  ; BufferLoad(srv,index,wot)
  %917 = extractvalue %dx.types.ResRet.i32 %916, 0
  %918 = and i32 %917, 512
  %919 = icmp eq i32 %918, 0
  br i1 %919, label %928, label %920

; <label>:920                                     ; preds = %895
  %921 = add i32 %52, 492
  %922 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %921, i32 undef)  ; BufferLoad(srv,index,wot)
  %923 = extractvalue %dx.types.ResRet.i32 %922, 0
  %924 = add i32 %923, 0
  %925 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %924, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %926 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %925, %dx.types.Handle %107, float %817, float %818, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %927 = extractvalue %dx.types.ResRet.f32 %926, 0
  br label %928

; <label>:928                                     ; preds = %920, %895
  %929 = phi float [ %927, %920 ], [ 1.000000e+00, %895 ]
  %930 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %710, i32 undef)  ; BufferLoad(srv,index,wot)
  %931 = extractvalue %dx.types.ResRet.i32 %930, 0
  %932 = and i32 %931, 33554432
  %933 = icmp eq i32 %932, 0
  br i1 %933, label %1040, label %934

; <label>:934                                     ; preds = %928
  %935 = add i32 %52, 224
  %936 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %935, i32 undef)  ; BufferLoad(srv,index,wot)
  %937 = extractvalue %dx.types.ResRet.i32 %936, 0
  %938 = and i32 %937, 65535
  %939 = call float @dx.op.legacyF16ToF32(i32 131, i32 %938)  ; LegacyF16ToF32(value)
  %940 = lshr i32 %937, 16
  %941 = call float @dx.op.legacyF16ToF32(i32 131, i32 %940)  ; LegacyF16ToF32(value)
  %942 = add i32 %52, 228
  %943 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %942, i32 undef)  ; BufferLoad(srv,index,wot)
  %944 = extractvalue %dx.types.ResRet.i32 %943, 0
  %945 = and i32 %944, 65535
  %946 = call float @dx.op.legacyF16ToF32(i32 131, i32 %945)  ; LegacyF16ToF32(value)
  %947 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %295, i32 undef)  ; BufferLoad(srv,index,wot)
  %948 = extractvalue %dx.types.ResRet.i32 %947, 0
  %949 = lshr i32 %948, 24
  %950 = uitofp i32 %949 to float
  %951 = fmul fast float %950, 0x3F70101020000000
  %952 = and i32 %948, 255
  %953 = uitofp i32 %952 to float
  %954 = fmul fast float %953, 0x3F70101020000000
  %955 = lshr i32 %948, 8
  %956 = and i32 %955, 255
  %957 = uitofp i32 %956 to float
  %958 = fmul fast float %957, 0x3F70101020000000
  %959 = lshr i32 %948, 16
  %960 = and i32 %959, 255
  %961 = uitofp i32 %960 to float
  %962 = fmul fast float %961, 0x3F70101020000000
  %963 = add i32 %52, 220
  %964 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %963, i32 undef)  ; BufferLoad(srv,index,wot)
  %965 = extractvalue %dx.types.ResRet.i32 %964, 0
  %966 = lshr i32 %965, 24
  %967 = uitofp i32 %966 to float
  %968 = fmul fast float %967, 0x3F70101020000000
  %969 = and i32 %965, 255
  %970 = uitofp i32 %969 to float
  %971 = fmul fast float %970, 0x3F70101020000000
  %972 = lshr i32 %965, 8
  %973 = and i32 %972, 255
  %974 = uitofp i32 %973 to float
  %975 = fmul fast float %974, 0x3F70101020000000
  %976 = lshr i32 %965, 16
  %977 = and i32 %976, 255
  %978 = uitofp i32 %977 to float
  %979 = fmul fast float %978, 0x3F70101020000000
  %980 = bitcast float %904 to i32
  %981 = ashr i32 %980, 1
  %982 = sub nsw i32 1597463174, %981
  %983 = bitcast i32 %982 to float
  %984 = fmul fast float %904, 5.000000e-01
  %985 = fmul fast float %983, %983
  %986 = fmul fast float %985, %984
  %987 = fsub fast float 1.500000e+00, %986
  %988 = fmul fast float %983, %904
  %989 = fmul fast float %988, %987
  %990 = bitcast float %905 to i32
  %991 = ashr i32 %990, 1
  %992 = sub nsw i32 1597463174, %991
  %993 = bitcast i32 %992 to float
  %994 = fmul fast float %905, 5.000000e-01
  %995 = fmul fast float %993, %993
  %996 = fmul fast float %995, %994
  %997 = fsub fast float 1.500000e+00, %996
  %998 = fmul fast float %993, %905
  %999 = fmul fast float %998, %997
  %1000 = bitcast float %906 to i32
  %1001 = ashr i32 %1000, 1
  %1002 = sub nsw i32 1597463174, %1001
  %1003 = bitcast i32 %1002 to float
  %1004 = fmul fast float %906, 5.000000e-01
  %1005 = fmul fast float %1003, %1003
  %1006 = fmul fast float %1005, %1004
  %1007 = fsub fast float 1.500000e+00, %1006
  %1008 = fmul fast float %1003, %906
  %1009 = fmul fast float %1008, %1007
  %1010 = fsub fast float %989, %971
  %1011 = fsub fast float %999, %975
  %1012 = fsub fast float %1009, %979
  %1013 = fmul fast float %1010, %939
  %1014 = fmul fast float %1011, %941
  %1015 = fmul fast float %1012, %946
  %1016 = fadd fast float %1013, %954
  %1017 = fadd fast float %1014, %958
  %1018 = fadd fast float %1015, %962
  %1019 = call float @dx.op.unary.f32(i32 7, float %1016)  ; Saturate(value)
  %1020 = call float @dx.op.unary.f32(i32 7, float %1017)  ; Saturate(value)
  %1021 = call float @dx.op.unary.f32(i32 7, float %1018)  ; Saturate(value)
  %1022 = fmul fast float %1019, %1019
  %1023 = fmul fast float %1020, %1020
  %1024 = fmul fast float %1021, %1021
  %1025 = fsub fast float %1022, %904
  %1026 = fsub fast float %1023, %905
  %1027 = fsub fast float %1024, %906
  %1028 = fmul fast float %1025, %929
  %1029 = fmul fast float %1026, %929
  %1030 = fmul fast float %1027, %929
  %1031 = fadd fast float %1028, %904
  %1032 = fadd fast float %1029, %905
  %1033 = fadd fast float %1030, %906
  %1034 = fadd fast float %951, %915
  %1035 = fsub fast float %1034, %968
  %1036 = call float @dx.op.unary.f32(i32 7, float %1035)  ; Saturate(value)
  %1037 = fsub fast float %1036, %915
  %1038 = fmul fast float %1037, %929
  %1039 = fadd fast float %1038, %915
  br label %1093

; <label>:1040                                    ; preds = %928
  %1041 = and i32 %931, 134217728
  %1042 = icmp eq i32 %1041, 0
  br i1 %1042, label %1077, label %1043

; <label>:1043                                    ; preds = %1040
  %1044 = call float @dx.op.unary.f32(i32 24, float %300)  ; Sqrt(value)
  %1045 = call float @dx.op.unary.f32(i32 24, float %304)  ; Sqrt(value)
  %1046 = call float @dx.op.unary.f32(i32 24, float %308)  ; Sqrt(value)
  %1047 = fadd fast float %1044, -5.000000e-01
  %1048 = fadd fast float %1045, -5.000000e-01
  %1049 = fadd fast float %1046, -5.000000e-01
  %1050 = fmul fast float %1047, %929
  %1051 = fmul fast float %1048, %929
  %1052 = fmul fast float %1049, %929
  %1053 = fadd fast float %1050, 5.000000e-01
  %1054 = fadd fast float %1051, 5.000000e-01
  %1055 = fadd fast float %1052, 5.000000e-01
  %1056 = call float @dx.op.unary.f32(i32 24, float %904)  ; Sqrt(value)
  %1057 = call float @dx.op.unary.f32(i32 24, float %905)  ; Sqrt(value)
  %1058 = call float @dx.op.unary.f32(i32 24, float %906)  ; Sqrt(value)
  %1059 = fmul fast float %1053, 2.000000e+00
  %1060 = fsub fast float 1.000000e+00, %1059
  %1061 = fmul fast float %1060, %1056
  %1062 = fadd fast float %1061, %1059
  %1063 = fmul fast float %1062, %1056
  %1064 = fmul fast float %1054, 2.000000e+00
  %1065 = fsub fast float 1.000000e+00, %1064
  %1066 = fmul fast float %1065, %1057
  %1067 = fadd fast float %1066, %1064
  %1068 = fmul fast float %1067, %1057
  %1069 = fmul fast float %1055, 2.000000e+00
  %1070 = fsub fast float 1.000000e+00, %1069
  %1071 = fmul fast float %1070, %1058
  %1072 = fadd fast float %1071, %1069
  %1073 = fmul fast float %1072, %1058
  %1074 = fmul fast float %1063, %1063
  %1075 = fmul fast float %1068, %1068
  %1076 = fmul fast float %1073, %1073
  br label %1093

; <label>:1077                                    ; preds = %1040
  %1078 = fmul fast float %300, %300
  %1079 = fmul fast float %304, %304
  %1080 = fmul fast float %308, %308
  %1081 = fadd fast float %1078, -1.000000e+00
  %1082 = fadd fast float %1079, -1.000000e+00
  %1083 = fadd fast float %1080, -1.000000e+00
  %1084 = fmul fast float %929, %1081
  %1085 = fmul fast float %929, %1082
  %1086 = fmul fast float %929, %1083
  %1087 = fadd fast float %1084, 1.000000e+00
  %1088 = fadd fast float %1085, 1.000000e+00
  %1089 = fadd fast float %1086, 1.000000e+00
  %1090 = fmul fast float %1087, %904
  %1091 = fmul fast float %1088, %905
  %1092 = fmul fast float %1089, %906
  br label %1093

; <label>:1093                                    ; preds = %1077, %1043, %934, %889
  %1094 = phi float [ %1039, %934 ], [ %915, %1043 ], [ %915, %1077 ], [ 0x3FA23C0BE0000000, %889 ]
  %1095 = phi float [ %1031, %934 ], [ %1074, %1043 ], [ %1090, %1077 ], [ 1.000000e+00, %889 ]
  %1096 = phi float [ %1032, %934 ], [ %1075, %1043 ], [ %1091, %1077 ], [ 1.000000e+00, %889 ]
  %1097 = phi float [ %1033, %934 ], [ %1076, %1043 ], [ %1092, %1077 ], [ 1.000000e+00, %889 ]
  %1098 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1099 = extractvalue %dx.types.CBufRet.i32 %1098, 1
  %1100 = and i32 %1099, 1
  %1101 = icmp ne i32 %1100, 0
  %1102 = add i32 %52, 356
  %1103 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1102, i32 undef)  ; BufferLoad(srv,index,wot)
  %1104 = extractvalue %dx.types.ResRet.i32 %1103, 0
  %1105 = and i32 %1104, 32
  %1106 = icmp ne i32 %1105, 0
  %1107 = and i1 %1101, %1106
  %1108 = select i1 %1107, float 1.000000e+00, float %1095
  %1109 = select i1 %1107, float 0x3FD3333340000000, float %1096
  %1110 = select i1 %1107, float 0x3FD3333340000000, float %1097
  %1111 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %710, i32 undef)  ; BufferLoad(srv,index,wot)
  %1112 = extractvalue %dx.types.ResRet.i32 %1111, 0
  %1113 = and i32 %1112, 32
  %1114 = icmp eq i32 %1113, 0
  br i1 %1114, label %1187, label %1115

; <label>:1115                                    ; preds = %1093
  %1116 = add i32 %52, 92
  %1117 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1116, i32 undef)  ; BufferLoad(srv,index,wot)
  %1118 = extractvalue %dx.types.ResRet.i32 %1117, 0
  %1119 = add i32 %52, 424
  %1120 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1119, i32 undef)  ; BufferLoad(srv,index,wot)
  %1121 = extractvalue %dx.types.ResRet.i32 %1120, 0
  %1122 = add i32 %1121, 0
  %1123 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1122, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1124 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1123, %dx.types.Handle %106, float %817, float %818, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1125 = extractvalue %dx.types.ResRet.f32 %1124, 0
  %1126 = extractvalue %dx.types.ResRet.f32 %1124, 1
  %1127 = extractvalue %dx.types.ResRet.f32 %1124, 2
  %1128 = extractvalue %dx.types.ResRet.f32 %1124, 3
  %1129 = and i32 %1118, 255
  %1130 = uitofp i32 %1129 to float
  %1131 = lshr i32 %1118, 8
  %1132 = and i32 %1131, 255
  %1133 = uitofp i32 %1132 to float
  %1134 = lshr i32 %1118, 16
  %1135 = and i32 %1134, 255
  %1136 = uitofp i32 %1135 to float
  %1137 = fmul fast float %1136, 0x3F70101000000000
  %1138 = fmul fast float %1125, %1130
  %1139 = fadd fast float %1138, %1133
  %1140 = fmul fast float %1139, 0x3F70101000000000
  %1141 = fadd fast float %1126, -5.000000e-01
  %1142 = fadd fast float %1128, -5.000000e-01
  %1143 = fmul fast float %1141, %1137
  %1144 = fmul fast float %1142, %1137
  %1145 = fadd fast float %1143, 5.000000e-01
  %1146 = fadd fast float %1144, 5.000000e-01
  %1147 = fmul fast float %1145, 2.000000e+00
  %1148 = fadd fast float %1147, -1.000000e+00
  %1149 = fmul fast float %1146, 2.000000e+00
  %1150 = fadd fast float %1149, -1.000000e+00
  %1151 = fadd fast float %1148, %1150
  %1152 = fmul fast float %1151, 5.000000e-01
  %1153 = fsub fast float %1148, %1150
  %1154 = fmul fast float %1153, 5.000000e-01
  %1155 = call float @dx.op.unary.f32(i32 6, float %1152)  ; FAbs(value)
  %1156 = fsub fast float 1.000000e+00, %1155
  %1157 = call float @dx.op.unary.f32(i32 6, float %1154)  ; FAbs(value)
  %1158 = fsub fast float %1156, %1157
  %1159 = call float @dx.op.dot3.f32(i32 55, float %1152, float %1154, float %1158, float %1152, float %1154, float %1158)  ; Dot3(ax,ay,az,bx,by,bz)
  %1160 = call float @dx.op.unary.f32(i32 25, float %1159)  ; Rsqrt(value)
  %1161 = fmul fast float %1152, %1160
  %1162 = fmul fast float %1154, %1160
  %1163 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %710, i32 undef)  ; BufferLoad(srv,index,wot)
  %1164 = extractvalue %dx.types.ResRet.i32 %1163, 0
  %1165 = and i32 %1164, 67108864
  %1166 = icmp eq i32 %1165, 0
  br i1 %1166, label %1183, label %1167

; <label>:1167                                    ; preds = %1115
  %1168 = add i32 %52, 280
  %1169 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1168, i32 undef)  ; BufferLoad(srv,index,wot)
  %1170 = extractvalue %dx.types.ResRet.i32 %1169, 0
  %1171 = and i32 %1170, 65535
  %1172 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1171)  ; LegacyF16ToF32(value)
  %1173 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %727, i32 undef)  ; BufferLoad(srv,index,wot)
  %1174 = extractvalue %dx.types.ResRet.i32 %1173, 0
  %1175 = and i32 %1174, 65535
  %1176 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1175)  ; LegacyF16ToF32(value)
  %1177 = lshr i32 %1170, 16
  %1178 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1177)  ; LegacyF16ToF32(value)
  %1179 = fsub fast float %1140, %1178
  %1180 = fmul fast float %1179, %1172
  %1181 = fadd fast float %1180, %1176
  %1182 = call float @dx.op.unary.f32(i32 7, float %1181)  ; Saturate(value)
  br label %1183

; <label>:1183                                    ; preds = %1167, %1115
  %1184 = phi float [ %1182, %1167 ], [ %1140, %1115 ]
  %1185 = call float @dx.op.dot2.f32(i32 54, float %1161, float %1162, float %721, float %722)  ; Dot2(ax,ay,bx,by)
  %1186 = call float @dx.op.dot2.f32(i32 54, float %1161, float %1162, float %723, float %724)  ; Dot2(ax,ay,bx,by)
  br label %1187

; <label>:1187                                    ; preds = %1183, %1093
  %1188 = phi float [ %1184, %1183 ], [ 0x3FD6666660000000, %1093 ]
  %1189 = phi float [ %1185, %1183 ], [ 0.000000e+00, %1093 ]
  %1190 = phi float [ %1186, %1183 ], [ 0.000000e+00, %1093 ]
  %1191 = phi float [ %1127, %1183 ], [ 1.000000e+00, %1093 ]
  %1192 = add i32 %52, 160
  %1193 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1192, i32 undef)  ; BufferLoad(srv,index,wot)
  %1194 = extractvalue %dx.types.ResRet.i32 %1193, 0
  %1195 = lshr i32 %1194, 22
  %1196 = shl nuw nsw i32 %1195, 5
  %1197 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1196)  ; LegacyF16ToF32(value)
  %1198 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %710, i32 undef)  ; BufferLoad(srv,index,wot)
  %1199 = extractvalue %dx.types.ResRet.i32 %1198, 0
  %1200 = and i32 %1199, 64
  %1201 = icmp eq i32 %1200, 0
  br i1 %1201, label %1235, label %1202

; <label>:1202                                    ; preds = %1187
  %1203 = add i32 %52, 440
  %1204 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1203, i32 undef)  ; BufferLoad(srv,index,wot)
  %1205 = extractvalue %dx.types.ResRet.i32 %1204, 0
  %1206 = add i32 %1205, 0
  %1207 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1206, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1208 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %710, i32 undef)  ; BufferLoad(srv,index,wot)
  %1209 = extractvalue %dx.types.ResRet.i32 %1208, 0
  %1210 = and i32 %1209, 131072
  %1211 = icmp eq i32 %1210, 0
  %1212 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1207, %dx.types.Handle %106, float %817, float %818, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1213 = extractvalue %dx.types.ResRet.f32 %1212, 0
  %1214 = extractvalue %dx.types.ResRet.f32 %1212, 1
  %1215 = extractvalue %dx.types.ResRet.f32 %1212, 2
  %1216 = fmul fast float %1213, %288
  %1217 = fmul fast float %1214, %291
  %1218 = fmul fast float %1215, %294
  br i1 %1211, label %1225, label %1219

; <label>:1219                                    ; preds = %1202
  %1220 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1221 = extractvalue %dx.types.CBufRet.f32 %1220, 0
  %1222 = fmul fast float %1221, %1216
  %1223 = fmul fast float %1221, %1217
  %1224 = fmul fast float %1221, %1218
  br label %1225

; <label>:1225                                    ; preds = %1219, %1202
  %1226 = phi float [ %1222, %1219 ], [ %1216, %1202 ]
  %1227 = phi float [ %1223, %1219 ], [ %1217, %1202 ]
  %1228 = phi float [ %1224, %1219 ], [ %1218, %1202 ]
  %1229 = fmul fast float %1226, %1197
  %1230 = select i1 %271, float %1229, float %1226
  %1231 = call float @dx.op.dot3.f32(i32 55, float %1230, float %1227, float %1228, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1232 = select i1 %271, float 0.000000e+00, float %1226
  %1233 = select i1 %271, float %1231, float %1227
  %1234 = select i1 %271, float 0.000000e+00, float %1228
  br label %1235

; <label>:1235                                    ; preds = %1225, %1187
  %1236 = phi float [ %1232, %1225 ], [ 0.000000e+00, %1187 ]
  %1237 = phi float [ %1233, %1225 ], [ 0.000000e+00, %1187 ]
  %1238 = phi float [ %1234, %1225 ], [ 0.000000e+00, %1187 ]
  %1239 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %710, i32 undef)  ; BufferLoad(srv,index,wot)
  %1240 = extractvalue %dx.types.ResRet.i32 %1239, 0
  %1241 = and i32 %1240, 1024
  %1242 = icmp eq i32 %1241, 0
  br i1 %1242, label %1273, label %1243

; <label>:1243                                    ; preds = %1235
  %1244 = add i32 %52, 152
  %1245 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1244, i32 undef)  ; BufferLoad(srv,index,wot)
  %1246 = extractvalue %dx.types.ResRet.i32 %1245, 0
  %1247 = and i32 %1246, 255
  %1248 = uitofp i32 %1247 to float
  %1249 = fmul fast float %1248, 0x3F70101020000000
  %1250 = lshr i32 %1246, 8
  %1251 = and i32 %1250, 255
  %1252 = uitofp i32 %1251 to float
  %1253 = fmul fast float %1252, 0x3F70101020000000
  %1254 = lshr i32 %1246, 16
  %1255 = and i32 %1254, 255
  %1256 = uitofp i32 %1255 to float
  %1257 = fmul fast float %1256, 0x3F70101020000000
  %1258 = fmul fast float %1249, %1249
  %1259 = fmul fast float %1253, %1253
  %1260 = fmul fast float %1257, %1257
  %1261 = add i32 %52, 508
  %1262 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1261, i32 undef)  ; BufferLoad(srv,index,wot)
  %1263 = extractvalue %dx.types.ResRet.i32 %1262, 0
  %1264 = add i32 %1263, 0
  %1265 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1264, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1266 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1265, %dx.types.Handle %107, float %817, float %818, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1267 = extractvalue %dx.types.ResRet.f32 %1266, 0
  %1268 = extractvalue %dx.types.ResRet.f32 %1266, 1
  %1269 = extractvalue %dx.types.ResRet.f32 %1266, 2
  %1270 = fmul fast float %1258, %1267
  %1271 = fmul fast float %1259, %1268
  %1272 = fmul fast float %1260, %1269
  br label %1273

; <label>:1273                                    ; preds = %1243, %1235
  %1274 = phi float [ %1270, %1243 ], [ 0.000000e+00, %1235 ]
  %1275 = phi float [ %1271, %1243 ], [ 0.000000e+00, %1235 ]
  %1276 = phi float [ %1272, %1243 ], [ 0.000000e+00, %1235 ]
  %1277 = fcmp fast ogt float %1274, 0.000000e+00
  %1278 = fcmp fast ogt float %1275, 0.000000e+00
  %1279 = fcmp fast ogt float %1276, 0.000000e+00
  %1280 = call float @dx.op.unary.f32(i32 23, float %1274)  ; Log(value)
  %1281 = call float @dx.op.unary.f32(i32 23, float %1275)  ; Log(value)
  %1282 = call float @dx.op.unary.f32(i32 23, float %1276)  ; Log(value)
  %1283 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1192, i32 undef)  ; BufferLoad(srv,index,wot)
  %1284 = extractvalue %dx.types.ResRet.i32 %1283, 0
  %1285 = lshr i32 %1284, 7
  %1286 = and i32 %1285, 32752
  %1287 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1286)  ; LegacyF16ToF32(value)
  %1288 = fmul fast float %1280, 0xBFE62E4300000000
  %1289 = fmul fast float %1288, %1287
  %1290 = fmul fast float %1281, 0xBFE62E4300000000
  %1291 = fmul fast float %1290, %1287
  %1292 = fmul fast float %1282, 0xBFE62E4300000000
  %1293 = fmul fast float %1292, %1287
  %1294 = select i1 %1277, float %1289, float 1.270000e+02
  %1295 = select i1 %1278, float %1291, float 1.270000e+02
  %1296 = select i1 %1279, float %1293, float 1.270000e+02
  %1297 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %710, i32 undef)  ; BufferLoad(srv,index,wot)
  %1298 = extractvalue %dx.types.ResRet.i32 %1297, 0
  %1299 = and i32 %1298, 10240
  %1300 = icmp eq i32 %1299, 0
  br i1 %1300, label %1321, label %1301

; <label>:1301                                    ; preds = %1273
  %1302 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %710, i32 undef)  ; BufferLoad(srv,index,wot)
  %1303 = extractvalue %dx.types.ResRet.i32 %1302, 0
  %1304 = and i32 %1303, 2048
  %1305 = icmp eq i32 %1304, 0
  br i1 %1305, label %1321, label %1306

; <label>:1306                                    ; preds = %1301
  %1307 = add i32 %52, 524
  %1308 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1307, i32 undef)  ; BufferLoad(srv,index,wot)
  %1309 = extractvalue %dx.types.ResRet.i32 %1308, 0
  %1310 = add i32 %1309, 0
  %1311 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1310, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1312 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1311, %dx.types.Handle %107, float %817, float %818, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1313 = extractvalue %dx.types.ResRet.f32 %1312, 3
  %1314 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1192, i32 undef)  ; BufferLoad(srv,index,wot)
  %1315 = extractvalue %dx.types.ResRet.i32 %1314, 0
  %1316 = shl i32 %1315, 4
  %1317 = and i32 %1316, 32752
  %1318 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1317)  ; LegacyF16ToF32(value)
  %1319 = fmul fast float %1318, %1313
  %1320 = call float @dx.op.binary.f32(i32 35, float %1319, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1321

; <label>:1321                                    ; preds = %1306, %1301, %1273
  %1322 = phi float [ %1320, %1306 ], [ 0x3F70101020000000, %1301 ], [ 0x3F70101020000000, %1273 ]
  %1323 = add i32 %52, 96
  %1324 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1323, i32 undef)  ; BufferLoad(srv,index,wot)
  %1325 = extractvalue %dx.types.ResRet.i32 %1324, 0
  %1326 = and i32 %1325, 255
  %1327 = uitofp i32 %1326 to float
  %1328 = lshr i32 %1325, 8
  %1329 = and i32 %1328, 255
  %1330 = uitofp i32 %1329 to float
  %1331 = call float @dx.op.dot3.f32(i32 55, float %1108, float %1109, float %1110, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1332 = fmul fast float %1330, %1331
  %1333 = fadd fast float %1332, %1327
  %1334 = fmul fast float %1333, 0x3F70101020000000
  %1335 = call float @dx.op.unary.f32(i32 7, float %1334)  ; Saturate(value)
  br label %1336

; <label>:1336                                    ; preds = %1321, %703
  %1337 = phi float [ 0.000000e+00, %703 ], [ %1189, %1321 ]
  %1338 = phi float [ 0.000000e+00, %703 ], [ %1190, %1321 ]
  %1339 = phi float [ 0.000000e+00, %703 ], [ %1108, %1321 ]
  %1340 = phi float [ 0.000000e+00, %703 ], [ %1109, %1321 ]
  %1341 = phi float [ 0.000000e+00, %703 ], [ %1110, %1321 ]
  %1342 = phi float [ 0.000000e+00, %703 ], [ %1236, %1321 ]
  %1343 = phi float [ 0.000000e+00, %703 ], [ %1237, %1321 ]
  %1344 = phi float [ 0.000000e+00, %703 ], [ %1238, %1321 ]
  %1345 = phi float [ 0.000000e+00, %703 ], [ %1294, %1321 ]
  %1346 = phi float [ 0.000000e+00, %703 ], [ %1295, %1321 ]
  %1347 = phi float [ 0.000000e+00, %703 ], [ %1296, %1321 ]
  %1348 = phi float [ 0.000000e+00, %703 ], [ %1094, %1321 ]
  %1349 = phi float [ 0.000000e+00, %703 ], [ %890, %1321 ]
  %1350 = phi float [ 0.000000e+00, %703 ], [ %1188, %1321 ]
  %1351 = phi float [ 0.000000e+00, %703 ], [ %1191, %1321 ]
  %1352 = phi float [ 0.000000e+00, %703 ], [ %1322, %1321 ]
  %1353 = phi float [ 0.000000e+00, %703 ], [ %1335, %1321 ]
  br i1 %651, label %2225, label %1354

; <label>:1354                                    ; preds = %1336
  %1355 = icmp ult i32 %709, 2
  %1356 = add i32 %52, 40
  %1357 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1356, i32 undef)  ; BufferLoad(srv,index,wot)
  %1358 = extractvalue %dx.types.ResRet.i32 %1357, 0
  %1359 = add i32 %52, 44
  %1360 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1359, i32 undef)  ; BufferLoad(srv,index,wot)
  %1361 = extractvalue %dx.types.ResRet.i32 %1360, 0
  %1362 = or i32 %1361, %1358
  %1363 = icmp eq i32 %1362, 0
  br i1 %1363, label %2225, label %1364

; <label>:1364                                    ; preds = %1354
  %1365 = and i32 %1358, 262144
  %1366 = icmp ne i32 %1365, 0
  %1367 = select i1 %1366, float %60, float 1.000000e+00
  %1368 = select i1 %1366, float %61, float 0.000000e+00
  %1369 = select i1 %1366, float %62, float 0.000000e+00
  %1370 = select i1 %1366, float %63, float 1.000000e+00
  %1371 = select i1 %1366, float %64, float %88
  %1372 = select i1 %1366, float %65, float %89
  %1373 = add i32 %52, 300
  %1374 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1373, i32 undef)  ; BufferLoad(srv,index,wot)
  %1375 = extractvalue %dx.types.ResRet.i32 %1374, 0
  %1376 = lshr i32 %1375, 16
  %1377 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1376)  ; LegacyF16ToF32(value)
  %1378 = fmul fast float %1377, 0x3F50624DE0000000
  %1379 = add i32 %52, 104
  %1380 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1379, i32 undef)  ; BufferLoad(srv,index,wot)
  %1381 = extractvalue %dx.types.ResRet.i32 %1380, 0
  %1382 = lshr i32 %1381, 16
  %1383 = and i32 %1382, 255
  %1384 = lshr i32 %1381, 24
  %1385 = add i32 %52, 308
  %1386 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1385, i32 undef)  ; BufferLoad(srv,index,wot)
  %1387 = extractvalue %dx.types.ResRet.i32 %1386, 0
  %1388 = and i32 %1387, 65535
  %1389 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1388)  ; LegacyF16ToF32(value)
  %1390 = lshr i32 %1387, 16
  %1391 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1390)  ; LegacyF16ToF32(value)
  %1392 = add i32 %52, 48
  %1393 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1392, i32 undef)  ; BufferLoad(srv,index,wot)
  %1394 = extractvalue %dx.types.ResRet.i32 %1393, 0
  %1395 = lshr i32 %1394, 22
  %1396 = shl nuw nsw i32 %1395, 5
  %1397 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1396)  ; LegacyF16ToF32(value)
  %1398 = shl i32 %1394, 4
  %1399 = and i32 %1398, 32752
  %1400 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1399)  ; LegacyF16ToF32(value)
  %1401 = lshr i32 %1394, 7
  %1402 = and i32 %1401, 32752
  %1403 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1402)  ; LegacyF16ToF32(value)
  %1404 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1405 = extractvalue %dx.types.CBufRet.f32 %1404, 3
  %1406 = fmul fast float %1405, 1.000000e+03
  %1407 = fmul fast float %1406, %430
  %1408 = call float @dx.op.unary.f32(i32 22, float %1407)  ; Frc(value)
  %1409 = fadd fast float %1408, %418
  %1410 = fmul fast float %1406, %432
  %1411 = call float @dx.op.unary.f32(i32 22, float %1410)  ; Frc(value)
  %1412 = fadd fast float %1411, %419
  %1413 = fmul fast float %1378, %1406
  %1414 = call float @dx.op.unary.f32(i32 22, float %1413)  ; Frc(value)
  %1415 = fmul fast float %1414, 0x401921FB60000000
  %1416 = fadd fast float %1415, %1397
  %1417 = call float @dx.op.unary.f32(i32 13, float %1416)  ; Sin(value)
  %1418 = call float @dx.op.unary.f32(i32 12, float %1416)  ; Cos(value)
  %1419 = fsub fast float -0.000000e+00, %1417
  %1420 = fadd fast float %1371, -5.000000e-01
  %1421 = fadd fast float %1372, -5.000000e-01
  %1422 = fmul fast float %1389, %1420
  %1423 = fmul fast float %1391, %1421
  %1424 = fadd fast float %1422, 5.000000e-01
  %1425 = fadd fast float %1423, 5.000000e-01
  %1426 = fmul fast float %1400, %1424
  %1427 = fmul fast float %1403, %1425
  %1428 = fmul fast float %1418, %1426
  %1429 = call float @dx.op.tertiary.f32(i32 46, float %1419, float %1427, float %1428)  ; FMad(a,b,c)
  %1430 = fmul fast float %1417, %1426
  %1431 = call float @dx.op.tertiary.f32(i32 46, float %1418, float %1427, float %1430)  ; FMad(a,b,c)
  %1432 = fadd fast float %1409, %1429
  %1433 = fadd fast float %1412, %1431
  %1434 = icmp ugt i32 %1383, 1
  %1435 = icmp ugt i32 %1381, 33554431
  %1436 = or i1 %1435, %1434
  br i1 %1436, label %1437, label %1462

; <label>:1437                                    ; preds = %1364
  %1438 = add i32 %52, 244
  %1439 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1438, i32 undef)  ; BufferLoad(srv,index,wot)
  %1440 = extractvalue %dx.types.ResRet.i32 %1439, 0
  %1441 = lshr i32 %1440, 16
  %1442 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1441)  ; LegacyF16ToF32(value)
  %1443 = fmul fast float %1405, %1442
  %1444 = call float @dx.op.unary.f32(i32 22, float %1443)  ; Frc(value)
  %1445 = mul nuw nsw i32 %1383, %1384
  %1446 = uitofp i32 %1445 to float
  %1447 = fmul fast float %1444, %1446
  %1448 = call float @dx.op.unary.f32(i32 27, float %1447)  ; Round_ni(value)
  %1449 = fptoui float %1448 to i32
  %1450 = urem i32 %1449, %1383
  %1451 = udiv i32 %1449, %1384
  %1452 = call float @dx.op.unary.f32(i32 22, float %1432)  ; Frc(value)
  %1453 = call float @dx.op.unary.f32(i32 22, float %1433)  ; Frc(value)
  %1454 = uitofp i32 %1450 to float
  %1455 = uitofp i32 %1451 to float
  %1456 = fadd fast float %1452, %1454
  %1457 = fadd fast float %1453, %1455
  %1458 = uitofp i32 %1383 to float
  %1459 = uitofp i32 %1384 to float
  %1460 = fdiv fast float %1456, %1458
  %1461 = fdiv fast float %1457, %1459
  br label %1462

; <label>:1462                                    ; preds = %1437, %1364
  %1463 = phi float [ %1460, %1437 ], [ %1432, %1364 ]
  %1464 = phi float [ %1461, %1437 ], [ %1433, %1364 ]
  %1465 = and i32 %1358, 256
  %1466 = icmp eq i32 %1465, 0
  br i1 %1466, label %1513, label %1467

; <label>:1467                                    ; preds = %1462
  %1468 = add i32 %52, 476
  %1469 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1468, i32 undef)  ; BufferLoad(srv,index,wot)
  %1470 = extractvalue %dx.types.ResRet.i32 %1469, 0
  %1471 = add i32 %1470, 0
  %1472 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1471, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1473 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1472, %dx.types.Handle %107, float %1463, float %1464, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1474 = extractvalue %dx.types.ResRet.f32 %1473, 0
  %1475 = add i32 %52, 116
  %1476 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1475, i32 undef)  ; BufferLoad(srv,index,wot)
  %1477 = extractvalue %dx.types.ResRet.i32 %1476, 0
  %1478 = shl i32 %1477, 4
  %1479 = and i32 %1478, 32752
  %1480 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1479)  ; LegacyF16ToF32(value)
  %1481 = lshr i32 %1477, 7
  %1482 = and i32 %1481, 32752
  %1483 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1482)  ; LegacyF16ToF32(value)
  %1484 = fsub fast float 1.000000e+00, %706
  %1485 = call float @dx.op.binary.f32(i32 35, float %1484, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1486 = bitcast float %706 to i32
  %1487 = sitofp i32 %1486 to float
  %1488 = fadd fast float %1487, 0xC1CFBF8940000000
  %1489 = fmul fast float %1483, %1488
  %1490 = fadd fast float %1489, 0x41CFBF8940000000
  %1491 = fptosi float %1490 to i32
  %1492 = bitcast i32 %1491 to float
  %1493 = bitcast float %1485 to i32
  %1494 = sitofp i32 %1493 to float
  %1495 = fadd fast float %1494, 0xC1CFBF8940000000
  %1496 = fmul fast float %1495, %1483
  %1497 = fadd fast float %1496, 0x41CFBF8940000000
  %1498 = fptosi float %1497 to i32
  %1499 = bitcast i32 %1498 to float
  %1500 = fmul fast float %1492, %1480
  %1501 = fmul fast float %1499, %1480
  %1502 = fsub fast float %1485, %1500
  %1503 = fadd fast float %1501, %1485
  %1504 = call float @dx.op.unary.f32(i32 7, float %1502)  ; Saturate(value)
  %1505 = call float @dx.op.unary.f32(i32 7, float %1503)  ; Saturate(value)
  %1506 = fsub fast float %1474, %1504
  %1507 = fsub fast float %1505, %1504
  %1508 = bitcast float %1507 to i32
  %1509 = sub nsw i32 2129859010, %1508
  %1510 = bitcast i32 %1509 to float
  %1511 = fmul fast float %1510, %1506
  %1512 = call float @dx.op.unary.f32(i32 7, float %1511)  ; Saturate(value)
  br label %1513

; <label>:1513                                    ; preds = %1467, %1462
  %1514 = phi float [ %1512, %1467 ], [ %706, %1462 ]
  %1515 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1356, i32 undef)  ; BufferLoad(srv,index,wot)
  %1516 = extractvalue %dx.types.ResRet.i32 %1515, 0
  %1517 = and i32 %1516, 128
  %1518 = icmp eq i32 %1517, 0
  br i1 %1518, label %1535, label %1519

; <label>:1519                                    ; preds = %1513
  %1520 = add i32 %52, 460
  %1521 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1520, i32 undef)  ; BufferLoad(srv,index,wot)
  %1522 = extractvalue %dx.types.ResRet.i32 %1521, 0
  %1523 = add i32 %1522, 0
  %1524 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1523, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1525 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1524, %dx.types.Handle %107, float %1463, float %1464, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1526 = extractvalue %dx.types.ResRet.f32 %1525, 0
  %1527 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1356, i32 undef)  ; BufferLoad(srv,index,wot)
  %1528 = extractvalue %dx.types.ResRet.i32 %1527, 0
  %1529 = and i32 %1528, 524288
  %1530 = icmp ne i32 %1529, 0
  %1531 = fcmp fast ogt float %1526, 0x3FE0101020000000
  %1532 = select i1 %1531, float 1.000000e+00, float 0.000000e+00
  %1533 = select i1 %1530, float %1532, float %1526
  %1534 = fmul fast float %1533, %1514
  br label %1535

; <label>:1535                                    ; preds = %1519, %1513
  %1536 = phi float [ %1534, %1519 ], [ %1514, %1513 ]
  %1537 = fcmp fast ult float %1536, 0x3F70101020000000
  br i1 %1537, label %2225, label %1538

; <label>:1538                                    ; preds = %1535
  %1539 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1356, i32 undef)  ; BufferLoad(srv,index,wot)
  %1540 = extractvalue %dx.types.ResRet.i32 %1539, 0
  %1541 = and i32 %1540, 16
  %1542 = icmp eq i32 %1541, 0
  br i1 %1542, label %1741, label %1543

; <label>:1543                                    ; preds = %1538
  %1544 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1379, i32 undef)  ; BufferLoad(srv,index,wot)
  %1545 = extractvalue %dx.types.ResRet.i32 %1544, 0
  %1546 = add i32 %52, 412
  %1547 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1546, i32 undef)  ; BufferLoad(srv,index,wot)
  %1548 = extractvalue %dx.types.ResRet.i32 %1547, 0
  %1549 = add i32 %1548, 0
  %1550 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1549, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1551 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1550, %dx.types.Handle %106, float %1463, float %1464, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1552 = extractvalue %dx.types.ResRet.f32 %1551, 0
  %1553 = extractvalue %dx.types.ResRet.f32 %1551, 1
  %1554 = extractvalue %dx.types.ResRet.f32 %1551, 2
  %1555 = extractvalue %dx.types.ResRet.f32 %1551, 3
  %1556 = and i32 %1545, 255
  %1557 = uitofp i32 %1556 to float
  %1558 = lshr i32 %1545, 8
  %1559 = and i32 %1558, 255
  %1560 = uitofp i32 %1559 to float
  %1561 = fmul fast float %1555, %1557
  %1562 = fadd fast float %1561, %1560
  %1563 = fmul fast float %1562, 0x3F70101000000000
  %1564 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1356, i32 undef)  ; BufferLoad(srv,index,wot)
  %1565 = extractvalue %dx.types.ResRet.i32 %1564, 0
  %1566 = and i32 %1565, 512
  %1567 = icmp eq i32 %1566, 0
  br i1 %1567, label %1576, label %1568

; <label>:1568                                    ; preds = %1543
  %1569 = add i32 %52, 496
  %1570 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1569, i32 undef)  ; BufferLoad(srv,index,wot)
  %1571 = extractvalue %dx.types.ResRet.i32 %1570, 0
  %1572 = add i32 %1571, 0
  %1573 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1572, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1574 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1573, %dx.types.Handle %107, float %1463, float %1464, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1575 = extractvalue %dx.types.ResRet.f32 %1574, 0
  br label %1576

; <label>:1576                                    ; preds = %1568, %1543
  %1577 = phi float [ %1575, %1568 ], [ 1.000000e+00, %1543 ]
  %1578 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1356, i32 undef)  ; BufferLoad(srv,index,wot)
  %1579 = extractvalue %dx.types.ResRet.i32 %1578, 0
  %1580 = and i32 %1579, 33554432
  %1581 = icmp eq i32 %1580, 0
  br i1 %1581, label %1688, label %1582

; <label>:1582                                    ; preds = %1576
  %1583 = add i32 %52, 240
  %1584 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1583, i32 undef)  ; BufferLoad(srv,index,wot)
  %1585 = extractvalue %dx.types.ResRet.i32 %1584, 0
  %1586 = and i32 %1585, 65535
  %1587 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1586)  ; LegacyF16ToF32(value)
  %1588 = lshr i32 %1585, 16
  %1589 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1588)  ; LegacyF16ToF32(value)
  %1590 = add i32 %52, 244
  %1591 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1590, i32 undef)  ; BufferLoad(srv,index,wot)
  %1592 = extractvalue %dx.types.ResRet.i32 %1591, 0
  %1593 = and i32 %1592, 65535
  %1594 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1593)  ; LegacyF16ToF32(value)
  %1595 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %342, i32 undef)  ; BufferLoad(srv,index,wot)
  %1596 = extractvalue %dx.types.ResRet.i32 %1595, 0
  %1597 = lshr i32 %1596, 24
  %1598 = uitofp i32 %1597 to float
  %1599 = fmul fast float %1598, 0x3F70101020000000
  %1600 = and i32 %1596, 255
  %1601 = uitofp i32 %1600 to float
  %1602 = fmul fast float %1601, 0x3F70101020000000
  %1603 = lshr i32 %1596, 8
  %1604 = and i32 %1603, 255
  %1605 = uitofp i32 %1604 to float
  %1606 = fmul fast float %1605, 0x3F70101020000000
  %1607 = lshr i32 %1596, 16
  %1608 = and i32 %1607, 255
  %1609 = uitofp i32 %1608 to float
  %1610 = fmul fast float %1609, 0x3F70101020000000
  %1611 = add i32 %52, 236
  %1612 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1611, i32 undef)  ; BufferLoad(srv,index,wot)
  %1613 = extractvalue %dx.types.ResRet.i32 %1612, 0
  %1614 = lshr i32 %1613, 24
  %1615 = uitofp i32 %1614 to float
  %1616 = fmul fast float %1615, 0x3F70101020000000
  %1617 = and i32 %1613, 255
  %1618 = uitofp i32 %1617 to float
  %1619 = fmul fast float %1618, 0x3F70101020000000
  %1620 = lshr i32 %1613, 8
  %1621 = and i32 %1620, 255
  %1622 = uitofp i32 %1621 to float
  %1623 = fmul fast float %1622, 0x3F70101020000000
  %1624 = lshr i32 %1613, 16
  %1625 = and i32 %1624, 255
  %1626 = uitofp i32 %1625 to float
  %1627 = fmul fast float %1626, 0x3F70101020000000
  %1628 = bitcast float %1552 to i32
  %1629 = ashr i32 %1628, 1
  %1630 = sub nsw i32 1597463174, %1629
  %1631 = bitcast i32 %1630 to float
  %1632 = fmul fast float %1552, 5.000000e-01
  %1633 = fmul fast float %1631, %1631
  %1634 = fmul fast float %1633, %1632
  %1635 = fsub fast float 1.500000e+00, %1634
  %1636 = fmul fast float %1631, %1552
  %1637 = fmul fast float %1636, %1635
  %1638 = bitcast float %1553 to i32
  %1639 = ashr i32 %1638, 1
  %1640 = sub nsw i32 1597463174, %1639
  %1641 = bitcast i32 %1640 to float
  %1642 = fmul fast float %1553, 5.000000e-01
  %1643 = fmul fast float %1641, %1641
  %1644 = fmul fast float %1643, %1642
  %1645 = fsub fast float 1.500000e+00, %1644
  %1646 = fmul fast float %1641, %1553
  %1647 = fmul fast float %1646, %1645
  %1648 = bitcast float %1554 to i32
  %1649 = ashr i32 %1648, 1
  %1650 = sub nsw i32 1597463174, %1649
  %1651 = bitcast i32 %1650 to float
  %1652 = fmul fast float %1554, 5.000000e-01
  %1653 = fmul fast float %1651, %1651
  %1654 = fmul fast float %1653, %1652
  %1655 = fsub fast float 1.500000e+00, %1654
  %1656 = fmul fast float %1651, %1554
  %1657 = fmul fast float %1656, %1655
  %1658 = fsub fast float %1637, %1619
  %1659 = fsub fast float %1647, %1623
  %1660 = fsub fast float %1657, %1627
  %1661 = fmul fast float %1658, %1587
  %1662 = fmul fast float %1659, %1589
  %1663 = fmul fast float %1660, %1594
  %1664 = fadd fast float %1661, %1602
  %1665 = fadd fast float %1662, %1606
  %1666 = fadd fast float %1663, %1610
  %1667 = call float @dx.op.unary.f32(i32 7, float %1664)  ; Saturate(value)
  %1668 = call float @dx.op.unary.f32(i32 7, float %1665)  ; Saturate(value)
  %1669 = call float @dx.op.unary.f32(i32 7, float %1666)  ; Saturate(value)
  %1670 = fmul fast float %1667, %1667
  %1671 = fmul fast float %1668, %1668
  %1672 = fmul fast float %1669, %1669
  %1673 = fsub fast float %1670, %1552
  %1674 = fsub fast float %1671, %1553
  %1675 = fsub fast float %1672, %1554
  %1676 = fmul fast float %1673, %1577
  %1677 = fmul fast float %1674, %1577
  %1678 = fmul fast float %1675, %1577
  %1679 = fadd fast float %1676, %1552
  %1680 = fadd fast float %1677, %1553
  %1681 = fadd fast float %1678, %1554
  %1682 = fadd fast float %1599, %1563
  %1683 = fsub fast float %1682, %1616
  %1684 = call float @dx.op.unary.f32(i32 7, float %1683)  ; Saturate(value)
  %1685 = fsub fast float %1684, %1563
  %1686 = fmul fast float %1685, %1577
  %1687 = fadd fast float %1686, %1563
  br label %1741

; <label>:1688                                    ; preds = %1576
  %1689 = and i32 %1579, 134217728
  %1690 = icmp eq i32 %1689, 0
  br i1 %1690, label %1725, label %1691

; <label>:1691                                    ; preds = %1688
  %1692 = call float @dx.op.unary.f32(i32 24, float %406)  ; Sqrt(value)
  %1693 = call float @dx.op.unary.f32(i32 24, float %407)  ; Sqrt(value)
  %1694 = call float @dx.op.unary.f32(i32 24, float %408)  ; Sqrt(value)
  %1695 = fadd fast float %1692, -5.000000e-01
  %1696 = fadd fast float %1693, -5.000000e-01
  %1697 = fadd fast float %1694, -5.000000e-01
  %1698 = fmul fast float %1695, %1577
  %1699 = fmul fast float %1696, %1577
  %1700 = fmul fast float %1697, %1577
  %1701 = fadd fast float %1698, 5.000000e-01
  %1702 = fadd fast float %1699, 5.000000e-01
  %1703 = fadd fast float %1700, 5.000000e-01
  %1704 = call float @dx.op.unary.f32(i32 24, float %1552)  ; Sqrt(value)
  %1705 = call float @dx.op.unary.f32(i32 24, float %1553)  ; Sqrt(value)
  %1706 = call float @dx.op.unary.f32(i32 24, float %1554)  ; Sqrt(value)
  %1707 = fmul fast float %1701, 2.000000e+00
  %1708 = fsub fast float 1.000000e+00, %1707
  %1709 = fmul fast float %1708, %1704
  %1710 = fadd fast float %1709, %1707
  %1711 = fmul fast float %1710, %1704
  %1712 = fmul fast float %1702, 2.000000e+00
  %1713 = fsub fast float 1.000000e+00, %1712
  %1714 = fmul fast float %1713, %1705
  %1715 = fadd fast float %1714, %1712
  %1716 = fmul fast float %1715, %1705
  %1717 = fmul fast float %1703, 2.000000e+00
  %1718 = fsub fast float 1.000000e+00, %1717
  %1719 = fmul fast float %1718, %1706
  %1720 = fadd fast float %1719, %1717
  %1721 = fmul fast float %1720, %1706
  %1722 = fmul fast float %1711, %1711
  %1723 = fmul fast float %1716, %1716
  %1724 = fmul fast float %1721, %1721
  br label %1741

; <label>:1725                                    ; preds = %1688
  %1726 = fmul fast float %406, %406
  %1727 = fmul fast float %407, %407
  %1728 = fmul fast float %408, %408
  %1729 = fadd fast float %1726, -1.000000e+00
  %1730 = fadd fast float %1727, -1.000000e+00
  %1731 = fadd fast float %1728, -1.000000e+00
  %1732 = fmul fast float %1577, %1729
  %1733 = fmul fast float %1577, %1730
  %1734 = fmul fast float %1577, %1731
  %1735 = fadd fast float %1732, 1.000000e+00
  %1736 = fadd fast float %1733, 1.000000e+00
  %1737 = fadd fast float %1734, 1.000000e+00
  %1738 = fmul fast float %1735, %1552
  %1739 = fmul fast float %1736, %1553
  %1740 = fmul fast float %1737, %1554
  br label %1741

; <label>:1741                                    ; preds = %1725, %1691, %1582, %1538
  %1742 = phi float [ %1687, %1582 ], [ %1563, %1691 ], [ %1563, %1725 ], [ 0x3FA23C0BE0000000, %1538 ]
  %1743 = phi float [ %1679, %1582 ], [ %1722, %1691 ], [ %1738, %1725 ], [ 1.000000e+00, %1538 ]
  %1744 = phi float [ %1680, %1582 ], [ %1723, %1691 ], [ %1739, %1725 ], [ 1.000000e+00, %1538 ]
  %1745 = phi float [ %1681, %1582 ], [ %1724, %1691 ], [ %1740, %1725 ], [ 1.000000e+00, %1538 ]
  %1746 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1747 = extractvalue %dx.types.CBufRet.i32 %1746, 1
  %1748 = and i32 %1747, 1
  %1749 = icmp ne i32 %1748, 0
  %1750 = add i32 %52, 356
  %1751 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1750, i32 undef)  ; BufferLoad(srv,index,wot)
  %1752 = extractvalue %dx.types.ResRet.i32 %1751, 0
  %1753 = and i32 %1752, 32
  %1754 = icmp ne i32 %1753, 0
  %1755 = and i1 %1749, %1754
  %1756 = select i1 %1755, float 1.000000e+00, float %1743
  %1757 = select i1 %1755, float 0x3FD3333340000000, float %1744
  %1758 = select i1 %1755, float 0x3FD3333340000000, float %1745
  %1759 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1356, i32 undef)  ; BufferLoad(srv,index,wot)
  %1760 = extractvalue %dx.types.ResRet.i32 %1759, 0
  %1761 = and i32 %1760, 32
  %1762 = icmp eq i32 %1761, 0
  br i1 %1762, label %1835, label %1763

; <label>:1763                                    ; preds = %1741
  %1764 = add i32 %52, 108
  %1765 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1764, i32 undef)  ; BufferLoad(srv,index,wot)
  %1766 = extractvalue %dx.types.ResRet.i32 %1765, 0
  %1767 = add i32 %52, 428
  %1768 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1767, i32 undef)  ; BufferLoad(srv,index,wot)
  %1769 = extractvalue %dx.types.ResRet.i32 %1768, 0
  %1770 = add i32 %1769, 0
  %1771 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1770, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1772 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1771, %dx.types.Handle %106, float %1463, float %1464, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1773 = extractvalue %dx.types.ResRet.f32 %1772, 0
  %1774 = extractvalue %dx.types.ResRet.f32 %1772, 1
  %1775 = extractvalue %dx.types.ResRet.f32 %1772, 2
  %1776 = extractvalue %dx.types.ResRet.f32 %1772, 3
  %1777 = and i32 %1766, 255
  %1778 = uitofp i32 %1777 to float
  %1779 = lshr i32 %1766, 8
  %1780 = and i32 %1779, 255
  %1781 = uitofp i32 %1780 to float
  %1782 = lshr i32 %1766, 16
  %1783 = and i32 %1782, 255
  %1784 = uitofp i32 %1783 to float
  %1785 = fmul fast float %1784, 0x3F70101000000000
  %1786 = fmul fast float %1773, %1778
  %1787 = fadd fast float %1786, %1781
  %1788 = fmul fast float %1787, 0x3F70101000000000
  %1789 = fadd fast float %1774, -5.000000e-01
  %1790 = fadd fast float %1776, -5.000000e-01
  %1791 = fmul fast float %1789, %1785
  %1792 = fmul fast float %1790, %1785
  %1793 = fadd fast float %1791, 5.000000e-01
  %1794 = fadd fast float %1792, 5.000000e-01
  %1795 = fmul fast float %1793, 2.000000e+00
  %1796 = fadd fast float %1795, -1.000000e+00
  %1797 = fmul fast float %1794, 2.000000e+00
  %1798 = fadd fast float %1797, -1.000000e+00
  %1799 = fadd fast float %1796, %1798
  %1800 = fmul fast float %1799, 5.000000e-01
  %1801 = fsub fast float %1796, %1798
  %1802 = fmul fast float %1801, 5.000000e-01
  %1803 = call float @dx.op.unary.f32(i32 6, float %1800)  ; FAbs(value)
  %1804 = fsub fast float 1.000000e+00, %1803
  %1805 = call float @dx.op.unary.f32(i32 6, float %1802)  ; FAbs(value)
  %1806 = fsub fast float %1804, %1805
  %1807 = call float @dx.op.dot3.f32(i32 55, float %1800, float %1802, float %1806, float %1800, float %1802, float %1806)  ; Dot3(ax,ay,az,bx,by,bz)
  %1808 = call float @dx.op.unary.f32(i32 25, float %1807)  ; Rsqrt(value)
  %1809 = fmul fast float %1800, %1808
  %1810 = fmul fast float %1802, %1808
  %1811 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1356, i32 undef)  ; BufferLoad(srv,index,wot)
  %1812 = extractvalue %dx.types.ResRet.i32 %1811, 0
  %1813 = and i32 %1812, 67108864
  %1814 = icmp eq i32 %1813, 0
  br i1 %1814, label %1831, label %1815

; <label>:1815                                    ; preds = %1763
  %1816 = add i32 %52, 296
  %1817 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1816, i32 undef)  ; BufferLoad(srv,index,wot)
  %1818 = extractvalue %dx.types.ResRet.i32 %1817, 0
  %1819 = and i32 %1818, 65535
  %1820 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1819)  ; LegacyF16ToF32(value)
  %1821 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1373, i32 undef)  ; BufferLoad(srv,index,wot)
  %1822 = extractvalue %dx.types.ResRet.i32 %1821, 0
  %1823 = and i32 %1822, 65535
  %1824 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1823)  ; LegacyF16ToF32(value)
  %1825 = lshr i32 %1818, 16
  %1826 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1825)  ; LegacyF16ToF32(value)
  %1827 = fsub fast float %1788, %1826
  %1828 = fmul fast float %1827, %1820
  %1829 = fadd fast float %1828, %1824
  %1830 = call float @dx.op.unary.f32(i32 7, float %1829)  ; Saturate(value)
  br label %1831

; <label>:1831                                    ; preds = %1815, %1763
  %1832 = phi float [ %1830, %1815 ], [ %1788, %1763 ]
  %1833 = call float @dx.op.dot2.f32(i32 54, float %1809, float %1810, float %1367, float %1368)  ; Dot2(ax,ay,bx,by)
  %1834 = call float @dx.op.dot2.f32(i32 54, float %1809, float %1810, float %1369, float %1370)  ; Dot2(ax,ay,bx,by)
  br label %1835

; <label>:1835                                    ; preds = %1831, %1741
  %1836 = phi float [ %1832, %1831 ], [ 0x3FD6666660000000, %1741 ]
  %1837 = phi float [ %1833, %1831 ], [ 0.000000e+00, %1741 ]
  %1838 = phi float [ %1834, %1831 ], [ 0.000000e+00, %1741 ]
  %1839 = phi float [ %1775, %1831 ], [ 1.000000e+00, %1741 ]
  %1840 = add i32 %52, 176
  %1841 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1840, i32 undef)  ; BufferLoad(srv,index,wot)
  %1842 = extractvalue %dx.types.ResRet.i32 %1841, 0
  %1843 = lshr i32 %1842, 22
  %1844 = shl nuw nsw i32 %1843, 5
  %1845 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1844)  ; LegacyF16ToF32(value)
  %1846 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1356, i32 undef)  ; BufferLoad(srv,index,wot)
  %1847 = extractvalue %dx.types.ResRet.i32 %1846, 0
  %1848 = and i32 %1847, 64
  %1849 = icmp eq i32 %1848, 0
  br i1 %1849, label %1883, label %1850

; <label>:1850                                    ; preds = %1835
  %1851 = add i32 %52, 444
  %1852 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1851, i32 undef)  ; BufferLoad(srv,index,wot)
  %1853 = extractvalue %dx.types.ResRet.i32 %1852, 0
  %1854 = add i32 %1853, 0
  %1855 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1854, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1856 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1356, i32 undef)  ; BufferLoad(srv,index,wot)
  %1857 = extractvalue %dx.types.ResRet.i32 %1856, 0
  %1858 = and i32 %1857, 131072
  %1859 = icmp eq i32 %1858, 0
  %1860 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1855, %dx.types.Handle %106, float %1463, float %1464, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1861 = extractvalue %dx.types.ResRet.f32 %1860, 0
  %1862 = extractvalue %dx.types.ResRet.f32 %1860, 1
  %1863 = extractvalue %dx.types.ResRet.f32 %1860, 2
  %1864 = fmul fast float %389, %1861
  %1865 = fmul fast float %390, %1862
  %1866 = fmul fast float %391, %1863
  br i1 %1859, label %1873, label %1867

; <label>:1867                                    ; preds = %1850
  %1868 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1869 = extractvalue %dx.types.CBufRet.f32 %1868, 0
  %1870 = fmul fast float %1869, %1864
  %1871 = fmul fast float %1869, %1865
  %1872 = fmul fast float %1869, %1866
  br label %1873

; <label>:1873                                    ; preds = %1867, %1850
  %1874 = phi float [ %1870, %1867 ], [ %1864, %1850 ]
  %1875 = phi float [ %1871, %1867 ], [ %1865, %1850 ]
  %1876 = phi float [ %1872, %1867 ], [ %1866, %1850 ]
  %1877 = fmul fast float %1874, %1845
  %1878 = select i1 %271, float %1877, float %1874
  %1879 = call float @dx.op.dot3.f32(i32 55, float %1878, float %1875, float %1876, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1880 = select i1 %271, float 0.000000e+00, float %1874
  %1881 = select i1 %271, float %1879, float %1875
  %1882 = select i1 %271, float 0.000000e+00, float %1876
  br label %1883

; <label>:1883                                    ; preds = %1873, %1835
  %1884 = phi float [ %1880, %1873 ], [ 0.000000e+00, %1835 ]
  %1885 = phi float [ %1881, %1873 ], [ 0.000000e+00, %1835 ]
  %1886 = phi float [ %1882, %1873 ], [ 0.000000e+00, %1835 ]
  %1887 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1356, i32 undef)  ; BufferLoad(srv,index,wot)
  %1888 = extractvalue %dx.types.ResRet.i32 %1887, 0
  %1889 = and i32 %1888, 1024
  %1890 = icmp eq i32 %1889, 0
  br i1 %1890, label %1921, label %1891

; <label>:1891                                    ; preds = %1883
  %1892 = add i32 %52, 168
  %1893 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1892, i32 undef)  ; BufferLoad(srv,index,wot)
  %1894 = extractvalue %dx.types.ResRet.i32 %1893, 0
  %1895 = and i32 %1894, 255
  %1896 = uitofp i32 %1895 to float
  %1897 = fmul fast float %1896, 0x3F70101020000000
  %1898 = lshr i32 %1894, 8
  %1899 = and i32 %1898, 255
  %1900 = uitofp i32 %1899 to float
  %1901 = fmul fast float %1900, 0x3F70101020000000
  %1902 = lshr i32 %1894, 16
  %1903 = and i32 %1902, 255
  %1904 = uitofp i32 %1903 to float
  %1905 = fmul fast float %1904, 0x3F70101020000000
  %1906 = fmul fast float %1897, %1897
  %1907 = fmul fast float %1901, %1901
  %1908 = fmul fast float %1905, %1905
  %1909 = add i32 %52, 512
  %1910 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1909, i32 undef)  ; BufferLoad(srv,index,wot)
  %1911 = extractvalue %dx.types.ResRet.i32 %1910, 0
  %1912 = add i32 %1911, 0
  %1913 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1912, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1914 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1913, %dx.types.Handle %107, float %1463, float %1464, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1915 = extractvalue %dx.types.ResRet.f32 %1914, 0
  %1916 = extractvalue %dx.types.ResRet.f32 %1914, 1
  %1917 = extractvalue %dx.types.ResRet.f32 %1914, 2
  %1918 = fmul fast float %1906, %1915
  %1919 = fmul fast float %1907, %1916
  %1920 = fmul fast float %1908, %1917
  br label %1921

; <label>:1921                                    ; preds = %1891, %1883
  %1922 = phi float [ %1918, %1891 ], [ 0.000000e+00, %1883 ]
  %1923 = phi float [ %1919, %1891 ], [ 0.000000e+00, %1883 ]
  %1924 = phi float [ %1920, %1891 ], [ 0.000000e+00, %1883 ]
  %1925 = fcmp fast ogt float %1922, 0.000000e+00
  %1926 = fcmp fast ogt float %1923, 0.000000e+00
  %1927 = fcmp fast ogt float %1924, 0.000000e+00
  %1928 = call float @dx.op.unary.f32(i32 23, float %1922)  ; Log(value)
  %1929 = call float @dx.op.unary.f32(i32 23, float %1923)  ; Log(value)
  %1930 = call float @dx.op.unary.f32(i32 23, float %1924)  ; Log(value)
  %1931 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1840, i32 undef)  ; BufferLoad(srv,index,wot)
  %1932 = extractvalue %dx.types.ResRet.i32 %1931, 0
  %1933 = lshr i32 %1932, 7
  %1934 = and i32 %1933, 32752
  %1935 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1934)  ; LegacyF16ToF32(value)
  %1936 = fmul fast float %1928, 0xBFE62E4300000000
  %1937 = fmul fast float %1936, %1935
  %1938 = fmul fast float %1929, 0xBFE62E4300000000
  %1939 = fmul fast float %1938, %1935
  %1940 = fmul fast float %1930, 0xBFE62E4300000000
  %1941 = fmul fast float %1940, %1935
  %1942 = select i1 %1925, float %1937, float 1.270000e+02
  %1943 = select i1 %1926, float %1939, float 1.270000e+02
  %1944 = select i1 %1927, float %1941, float 1.270000e+02
  %1945 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1356, i32 undef)  ; BufferLoad(srv,index,wot)
  %1946 = extractvalue %dx.types.ResRet.i32 %1945, 0
  %1947 = and i32 %1946, 10240
  %1948 = icmp eq i32 %1947, 0
  br i1 %1948, label %1969, label %1949

; <label>:1949                                    ; preds = %1921
  %1950 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1356, i32 undef)  ; BufferLoad(srv,index,wot)
  %1951 = extractvalue %dx.types.ResRet.i32 %1950, 0
  %1952 = and i32 %1951, 2048
  %1953 = icmp eq i32 %1952, 0
  br i1 %1953, label %1969, label %1954

; <label>:1954                                    ; preds = %1949
  %1955 = add i32 %52, 528
  %1956 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1955, i32 undef)  ; BufferLoad(srv,index,wot)
  %1957 = extractvalue %dx.types.ResRet.i32 %1956, 0
  %1958 = add i32 %1957, 0
  %1959 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1958, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1960 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1959, %dx.types.Handle %107, float %1463, float %1464, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1961 = extractvalue %dx.types.ResRet.f32 %1960, 3
  %1962 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1840, i32 undef)  ; BufferLoad(srv,index,wot)
  %1963 = extractvalue %dx.types.ResRet.i32 %1962, 0
  %1964 = shl i32 %1963, 4
  %1965 = and i32 %1964, 32752
  %1966 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1965)  ; LegacyF16ToF32(value)
  %1967 = fmul fast float %1966, %1961
  %1968 = call float @dx.op.binary.f32(i32 35, float %1967, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1969

; <label>:1969                                    ; preds = %1954, %1949, %1921
  %1970 = phi float [ %1968, %1954 ], [ 0x3F70101020000000, %1949 ], [ 0x3F70101020000000, %1921 ]
  %1971 = add i32 %52, 112
  %1972 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1971, i32 undef)  ; BufferLoad(srv,index,wot)
  %1973 = extractvalue %dx.types.ResRet.i32 %1972, 0
  %1974 = and i32 %1973, 255
  %1975 = uitofp i32 %1974 to float
  %1976 = lshr i32 %1973, 8
  %1977 = and i32 %1976, 255
  %1978 = uitofp i32 %1977 to float
  %1979 = call float @dx.op.dot3.f32(i32 55, float %1756, float %1757, float %1758, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1980 = fmul fast float %1978, %1979
  %1981 = fadd fast float %1980, %1975
  %1982 = fmul fast float %1981, 0x3F70101020000000
  %1983 = call float @dx.op.unary.f32(i32 7, float %1982)  ; Saturate(value)
  br i1 %1355, label %1984, label %2019

; <label>:1984                                    ; preds = %1969
  %1985 = fmul fast float %1970, 2.000000e+00
  %1986 = fcmp fast olt float %1942, 1.270000e+02
  %1987 = fcmp fast olt float %1943, 1.270000e+02
  %1988 = fcmp fast olt float %1944, 1.270000e+02
  %1989 = fmul fast float %1942, 0xBFF7154760000000
  %1990 = fmul fast float %1989, %1985
  %1991 = fmul fast float %1943, 0xBFF7154760000000
  %1992 = fmul fast float %1991, %1985
  %1993 = fmul fast float %1944, 0xBFF7154760000000
  %1994 = fmul fast float %1993, %1985
  %1995 = call float @dx.op.unary.f32(i32 21, float %1990)  ; Exp(value)
  %1996 = call float @dx.op.unary.f32(i32 21, float %1992)  ; Exp(value)
  %1997 = call float @dx.op.unary.f32(i32 21, float %1994)  ; Exp(value)
  %1998 = call float @dx.op.unary.f32(i32 7, float %1995)  ; Saturate(value)
  %1999 = call float @dx.op.unary.f32(i32 7, float %1996)  ; Saturate(value)
  %2000 = call float @dx.op.unary.f32(i32 7, float %1997)  ; Saturate(value)
  %2001 = fadd fast float %1998, -1.000000e+00
  %2002 = select i1 %1986, float %2001, float -1.000000e+00
  %2003 = fadd fast float %1999, -1.000000e+00
  %2004 = select i1 %1987, float %2003, float -1.000000e+00
  %2005 = fadd fast float %2000, -1.000000e+00
  %2006 = select i1 %1988, float %2005, float -1.000000e+00
  %2007 = fmul fast float %2002, %1536
  %2008 = fmul fast float %2004, %1536
  %2009 = fmul fast float %2006, %1536
  %2010 = fadd fast float %2007, 1.000000e+00
  %2011 = fadd fast float %2008, 1.000000e+00
  %2012 = fadd fast float %2009, 1.000000e+00
  %2013 = fmul fast float %2010, %1339
  %2014 = fmul fast float %2011, %1340
  %2015 = fmul fast float %2012, %1341
  %2016 = fmul fast float %2010, %1342
  %2017 = fmul fast float %2011, %1343
  %2018 = fmul fast float %2012, %1344
  br label %2019

; <label>:2019                                    ; preds = %1984, %1969
  %2020 = phi float [ %2013, %1984 ], [ %1339, %1969 ]
  %2021 = phi float [ %2014, %1984 ], [ %1340, %1969 ]
  %2022 = phi float [ %2015, %1984 ], [ %1341, %1969 ]
  %2023 = phi float [ %2016, %1984 ], [ %1342, %1969 ]
  %2024 = phi float [ %2017, %1984 ], [ %1343, %1969 ]
  %2025 = phi float [ %2018, %1984 ], [ %1344, %1969 ]
  %2026 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1356, i32 undef)  ; BufferLoad(srv,index,wot)
  %2027 = extractvalue %dx.types.ResRet.i32 %2026, 0
  %2028 = and i32 %2027, 3
  %2029 = icmp eq i32 %2028, 3
  br i1 %2029, label %2108, label %2030

; <label>:2030                                    ; preds = %2019
  %2031 = and i32 %2027, 16
  %2032 = icmp ne i32 %2031, 0
  %2033 = select i1 %2032, float %1536, float 0.000000e+00
  %2034 = icmp eq i32 %2028, 0
  br i1 %2034, label %2035, label %2063

; <label>:2035                                    ; preds = %2030
  %2036 = and i32 %2027, 64
  %2037 = icmp ne i32 %2036, 0
  %2038 = select i1 %2037, float %1536, float 0.000000e+00
  %2039 = fsub fast float %1756, %2020
  %2040 = fsub fast float %1757, %2021
  %2041 = fsub fast float %1758, %2022
  %2042 = fmul fast float %2033, %2039
  %2043 = fmul fast float %2033, %2040
  %2044 = fmul fast float %2033, %2041
  %2045 = fadd fast float %2042, %2020
  %2046 = fadd fast float %2043, %2021
  %2047 = fadd fast float %2044, %2022
  %2048 = fsub fast float %1742, %1348
  %2049 = fmul fast float %2033, %2048
  %2050 = fadd fast float %2049, %1348
  %2051 = fsub fast float %1884, %2023
  %2052 = fsub fast float %1885, %2024
  %2053 = fsub fast float %1886, %2025
  %2054 = fmul fast float %2038, %2051
  %2055 = fmul fast float %2038, %2052
  %2056 = fmul fast float %2038, %2053
  %2057 = fadd fast float %2054, %2023
  %2058 = fadd fast float %2055, %2024
  %2059 = fadd fast float %2056, %2025
  %2060 = fsub fast float %1983, %1353
  %2061 = fmul fast float %2033, %2060
  %2062 = fadd fast float %2061, %1353
  br label %2108

; <label>:2063                                    ; preds = %2030
  %2064 = icmp eq i32 %2028, 1
  br i1 %2064, label %2065, label %2078

; <label>:2065                                    ; preds = %2063
  %2066 = fadd fast float %1756, -1.000000e+00
  %2067 = fadd fast float %1757, -1.000000e+00
  %2068 = fadd fast float %1758, -1.000000e+00
  %2069 = fmul fast float %2033, %2066
  %2070 = fmul fast float %2033, %2067
  %2071 = fmul fast float %2033, %2068
  %2072 = fadd fast float %2069, 1.000000e+00
  %2073 = fadd fast float %2070, 1.000000e+00
  %2074 = fadd fast float %2071, 1.000000e+00
  %2075 = fmul fast float %2072, %2020
  %2076 = fmul fast float %2073, %2021
  %2077 = fmul fast float %2074, %2022
  br label %2108

; <label>:2078                                    ; preds = %2063
  %2079 = icmp eq i32 %2028, 2
  br i1 %2079, label %2080, label %2108

; <label>:2080                                    ; preds = %2078
  %2081 = call float @dx.op.unary.f32(i32 24, float %1756)  ; Sqrt(value)
  %2082 = call float @dx.op.unary.f32(i32 24, float %1757)  ; Sqrt(value)
  %2083 = call float @dx.op.unary.f32(i32 24, float %1758)  ; Sqrt(value)
  %2084 = fadd fast float %2081, -5.000000e-01
  %2085 = fadd fast float %2082, -5.000000e-01
  %2086 = fadd fast float %2083, -5.000000e-01
  %2087 = fmul fast float %2084, %2033
  %2088 = fmul fast float %2085, %2033
  %2089 = fmul fast float %2086, %2033
  %2090 = fadd fast float %2087, 5.000000e-01
  %2091 = fadd fast float %2088, 5.000000e-01
  %2092 = fadd fast float %2089, 5.000000e-01
  %2093 = fmul fast float %2090, 2.000000e+00
  %2094 = fsub fast float 1.000000e+00, %2093
  %2095 = fmul fast float %2094, %2020
  %2096 = fadd fast float %2095, %2093
  %2097 = fmul fast float %2096, %2020
  %2098 = fmul fast float %2091, 2.000000e+00
  %2099 = fsub fast float 1.000000e+00, %2098
  %2100 = fmul fast float %2099, %2021
  %2101 = fadd fast float %2100, %2098
  %2102 = fmul fast float %2101, %2021
  %2103 = fmul fast float %2092, 2.000000e+00
  %2104 = fsub fast float 1.000000e+00, %2103
  %2105 = fmul fast float %2104, %2022
  %2106 = fadd fast float %2105, %2103
  %2107 = fmul fast float %2106, %2022
  br label %2108

; <label>:2108                                    ; preds = %2080, %2078, %2065, %2035, %2019
  %2109 = phi float [ %2020, %2019 ], [ %2097, %2080 ], [ %2020, %2078 ], [ %2075, %2065 ], [ %2045, %2035 ]
  %2110 = phi float [ %2021, %2019 ], [ %2102, %2080 ], [ %2021, %2078 ], [ %2076, %2065 ], [ %2046, %2035 ]
  %2111 = phi float [ %2022, %2019 ], [ %2107, %2080 ], [ %2022, %2078 ], [ %2077, %2065 ], [ %2047, %2035 ]
  %2112 = phi float [ %2023, %2019 ], [ %2023, %2080 ], [ %2023, %2078 ], [ %2023, %2065 ], [ %2057, %2035 ]
  %2113 = phi float [ %2024, %2019 ], [ %2024, %2080 ], [ %2024, %2078 ], [ %2024, %2065 ], [ %2058, %2035 ]
  %2114 = phi float [ %2025, %2019 ], [ %2025, %2080 ], [ %2025, %2078 ], [ %2025, %2065 ], [ %2059, %2035 ]
  %2115 = phi float [ %1348, %2019 ], [ %1348, %2080 ], [ %1348, %2078 ], [ %1348, %2065 ], [ %2050, %2035 ]
  %2116 = phi float [ %1353, %2019 ], [ %1353, %2080 ], [ %1353, %2078 ], [ %1353, %2065 ], [ %2062, %2035 ]
  %2117 = and i32 %2027, 12
  %2118 = icmp eq i32 %2117, 12
  br i1 %2118, label %2225, label %2119

; <label>:2119                                    ; preds = %2108
  %2120 = and i32 %2027, 2097184
  %2121 = icmp eq i32 %2120, 2097184
  %2122 = select i1 %2121, float %1536, float 0.000000e+00
  %2123 = and i32 %2027, 4194336
  %2124 = icmp eq i32 %2123, 4194336
  %2125 = select i1 %2124, float %1536, float 0.000000e+00
  %2126 = and i32 %2027, 8388640
  %2127 = icmp eq i32 %2126, 8388640
  %2128 = select i1 %2127, float %1536, float 0.000000e+00
  %2129 = and i32 %2027, 1024
  %2130 = icmp ne i32 %2129, 0
  %2131 = select i1 %2130, float %1536, float 0.000000e+00
  %2132 = and i32 %2027, 2048
  %2133 = icmp ne i32 %2132, 0
  %2134 = select i1 %2133, float %1536, float 0.000000e+00
  %2135 = icmp eq i32 %2117, 0
  br i1 %2135, label %2136, label %2161

; <label>:2136                                    ; preds = %2119
  %2137 = fsub fast float %1837, %1337
  %2138 = fsub fast float %1838, %1338
  %2139 = fmul fast float %2122, %2137
  %2140 = fmul fast float %2122, %2138
  %2141 = fadd fast float %2139, %1337
  %2142 = fadd fast float %2140, %1338
  %2143 = fsub fast float %1839, %1351
  %2144 = fmul fast float %2125, %2143
  %2145 = fadd fast float %2144, %1351
  %2146 = fsub fast float %1836, %1350
  %2147 = fmul fast float %2128, %2146
  %2148 = fadd fast float %2147, %1350
  %2149 = fsub fast float %1942, %1345
  %2150 = fsub fast float %1943, %1346
  %2151 = fsub fast float %1944, %1347
  %2152 = fmul fast float %2131, %2149
  %2153 = fmul fast float %2131, %2150
  %2154 = fmul fast float %2131, %2151
  %2155 = fadd fast float %2152, %1345
  %2156 = fadd fast float %2153, %1346
  %2157 = fadd fast float %2154, %1347
  %2158 = fsub fast float %1970, %1352
  %2159 = fmul fast float %2134, %2158
  %2160 = fadd fast float %2159, %1352
  br label %2225

; <label>:2161                                    ; preds = %2119
  %2162 = icmp eq i32 %2117, 4
  br i1 %2162, label %2163, label %2203

; <label>:2163                                    ; preds = %2161
  %2164 = fmul fast float %2122, %1837
  %2165 = fmul fast float %2122, %1838
  %2166 = fadd fast float %2164, %1337
  %2167 = fadd fast float %2165, %1338
  %2168 = call float @dx.op.binary.f32(i32 36, float %1351, float %1839)  ; FMin(a,b)
  %2169 = fsub fast float %2168, %1351
  %2170 = fmul fast float %2169, %2125
  %2171 = fadd fast float %2170, %1351
  %2172 = fadd fast float %1836, %1350
  %2173 = fmul fast float %2172, 0x3FF337FAE0000000
  %2174 = fmul fast float %1350, %1350
  %2175 = fmul fast float %1836, %1836
  %2176 = fadd fast float %2175, %2174
  %2177 = fmul fast float %2176, 0x3FE5152B00000000
  %2178 = fmul fast float %1350, 0xBFCC1F85E0000000
  %2179 = fmul fast float %2178, %1836
  %2180 = fadd fast float %2179, 0xBFE1363700000000
  %2181 = fadd fast float %2180, %2173
  %2182 = fsub fast float %2181, %2177
  %2183 = fmul fast float %2172, 0x3FBA6F0D00000000
  %2184 = fmul fast float %2176, 0x3FD0432880000000
  %2185 = fmul fast float %1350, 0xBFEF110800000000
  %2186 = fmul fast float %2185, %1836
  %2187 = fadd fast float %2186, 1.000000e+00
  %2188 = fsub fast float %2187, %2183
  %2189 = fadd fast float %2188, %2184
  %2190 = fdiv fast float %2182, %2189
  %2191 = call float @dx.op.unary.f32(i32 7, float %2190)  ; Saturate(value)
  %2192 = fsub fast float %2191, %1350
  %2193 = fmul fast float %2192, %2128
  %2194 = fadd fast float %2193, %1350
  %2195 = fmul fast float %2131, %1942
  %2196 = fmul fast float %2131, %1943
  %2197 = fmul fast float %2131, %1944
  %2198 = fadd fast float %2195, %1345
  %2199 = fadd fast float %2196, %1346
  %2200 = fadd fast float %2197, %1347
  %2201 = fmul fast float %2134, %1970
  %2202 = fadd fast float %2201, %1352
  br label %2225

; <label>:2203                                    ; preds = %2161
  %2204 = icmp eq i32 %2117, 8
  br i1 %2204, label %2205, label %2225

; <label>:2205                                    ; preds = %2203
  %2206 = fmul fast float %2122, %1837
  %2207 = fmul fast float %2122, %1838
  %2208 = fadd fast float %2206, %1337
  %2209 = fadd fast float %2207, %1338
  %2210 = call float @dx.op.binary.f32(i32 36, float %1351, float %1839)  ; FMin(a,b)
  %2211 = fsub fast float %2210, %1351
  %2212 = fmul fast float %2211, %2125
  %2213 = fadd fast float %2212, %1351
  %2214 = fsub fast float %1836, %1350
  %2215 = fmul fast float %2128, %2214
  %2216 = fadd fast float %2215, %1350
  %2217 = fmul fast float %2131, %1942
  %2218 = fmul fast float %2131, %1943
  %2219 = fmul fast float %2131, %1944
  %2220 = fadd fast float %2217, %1345
  %2221 = fadd fast float %2218, %1346
  %2222 = fadd fast float %2219, %1347
  %2223 = fmul fast float %2134, %1970
  %2224 = fadd fast float %2223, %1352
  br label %2225

; <label>:2225                                    ; preds = %2205, %2203, %2163, %2136, %2108, %1535, %1354, %1336
  %2226 = phi float [ %1337, %2108 ], [ %1337, %1535 ], [ %1337, %1336 ], [ %2208, %2205 ], [ %1337, %2203 ], [ %2166, %2163 ], [ %2141, %2136 ], [ %1337, %1354 ]
  %2227 = phi float [ %1338, %2108 ], [ %1338, %1535 ], [ %1338, %1336 ], [ %2209, %2205 ], [ %1338, %2203 ], [ %2167, %2163 ], [ %2142, %2136 ], [ %1338, %1354 ]
  %2228 = phi float [ %2109, %2108 ], [ %1339, %1535 ], [ %1339, %1336 ], [ %2109, %2205 ], [ %2109, %2203 ], [ %2109, %2163 ], [ %2109, %2136 ], [ %1339, %1354 ]
  %2229 = phi float [ %2110, %2108 ], [ %1340, %1535 ], [ %1340, %1336 ], [ %2110, %2205 ], [ %2110, %2203 ], [ %2110, %2163 ], [ %2110, %2136 ], [ %1340, %1354 ]
  %2230 = phi float [ %2111, %2108 ], [ %1341, %1535 ], [ %1341, %1336 ], [ %2111, %2205 ], [ %2111, %2203 ], [ %2111, %2163 ], [ %2111, %2136 ], [ %1341, %1354 ]
  %2231 = phi float [ %2112, %2108 ], [ %1342, %1535 ], [ %1342, %1336 ], [ %2112, %2205 ], [ %2112, %2203 ], [ %2112, %2163 ], [ %2112, %2136 ], [ %1342, %1354 ]
  %2232 = phi float [ %2113, %2108 ], [ %1343, %1535 ], [ %1343, %1336 ], [ %2113, %2205 ], [ %2113, %2203 ], [ %2113, %2163 ], [ %2113, %2136 ], [ %1343, %1354 ]
  %2233 = phi float [ %2114, %2108 ], [ %1344, %1535 ], [ %1344, %1336 ], [ %2114, %2205 ], [ %2114, %2203 ], [ %2114, %2163 ], [ %2114, %2136 ], [ %1344, %1354 ]
  %2234 = phi float [ %1345, %2108 ], [ %1345, %1535 ], [ %1345, %1336 ], [ %2220, %2205 ], [ %1345, %2203 ], [ %2198, %2163 ], [ %2155, %2136 ], [ %1345, %1354 ]
  %2235 = phi float [ %1346, %2108 ], [ %1346, %1535 ], [ %1346, %1336 ], [ %2221, %2205 ], [ %1346, %2203 ], [ %2199, %2163 ], [ %2156, %2136 ], [ %1346, %1354 ]
  %2236 = phi float [ %1347, %2108 ], [ %1347, %1535 ], [ %1347, %1336 ], [ %2222, %2205 ], [ %1347, %2203 ], [ %2200, %2163 ], [ %2157, %2136 ], [ %1347, %1354 ]
  %2237 = phi float [ %2115, %2108 ], [ %1348, %1535 ], [ %1348, %1336 ], [ %2115, %2205 ], [ %2115, %2203 ], [ %2115, %2163 ], [ %2115, %2136 ], [ %1348, %1354 ]
  %2238 = phi float [ %1350, %2108 ], [ %1350, %1535 ], [ %1350, %1336 ], [ %2216, %2205 ], [ %1350, %2203 ], [ %2194, %2163 ], [ %2148, %2136 ], [ %1350, %1354 ]
  %2239 = phi float [ %1351, %2108 ], [ %1351, %1535 ], [ %1351, %1336 ], [ %2213, %2205 ], [ %1351, %2203 ], [ %2171, %2163 ], [ %2145, %2136 ], [ %1351, %1354 ]
  %2240 = phi float [ %1352, %2108 ], [ %1352, %1535 ], [ %1352, %1336 ], [ %2224, %2205 ], [ %1352, %2203 ], [ %2202, %2163 ], [ %2160, %2136 ], [ %1352, %1354 ]
  %2241 = phi float [ %2116, %2108 ], [ %1353, %1535 ], [ %1353, %1336 ], [ %2116, %2205 ], [ %2116, %2203 ], [ %2116, %2163 ], [ %2116, %2136 ], [ %1353, %1354 ]
  br i1 %653, label %3113, label %2242

; <label>:2242                                    ; preds = %2225
  %2243 = icmp ult i32 %709, 3
  %2244 = add i32 %52, 56
  %2245 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2244, i32 undef)  ; BufferLoad(srv,index,wot)
  %2246 = extractvalue %dx.types.ResRet.i32 %2245, 0
  %2247 = add i32 %52, 60
  %2248 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2247, i32 undef)  ; BufferLoad(srv,index,wot)
  %2249 = extractvalue %dx.types.ResRet.i32 %2248, 0
  %2250 = or i32 %2249, %2246
  %2251 = icmp eq i32 %2250, 0
  br i1 %2251, label %3113, label %2252

; <label>:2252                                    ; preds = %2242
  %2253 = and i32 %2246, 262144
  %2254 = icmp ne i32 %2253, 0
  %2255 = select i1 %2254, float %60, float 1.000000e+00
  %2256 = select i1 %2254, float %61, float 0.000000e+00
  %2257 = select i1 %2254, float %62, float 0.000000e+00
  %2258 = select i1 %2254, float %63, float 1.000000e+00
  %2259 = select i1 %2254, float %64, float %88
  %2260 = select i1 %2254, float %65, float %89
  %2261 = add i32 %52, 316
  %2262 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2261, i32 undef)  ; BufferLoad(srv,index,wot)
  %2263 = extractvalue %dx.types.ResRet.i32 %2262, 0
  %2264 = lshr i32 %2263, 16
  %2265 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2264)  ; LegacyF16ToF32(value)
  %2266 = fmul fast float %2265, 0x3F50624DE0000000
  %2267 = add i32 %52, 120
  %2268 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2267, i32 undef)  ; BufferLoad(srv,index,wot)
  %2269 = extractvalue %dx.types.ResRet.i32 %2268, 0
  %2270 = lshr i32 %2269, 16
  %2271 = and i32 %2270, 255
  %2272 = lshr i32 %2269, 24
  %2273 = add i32 %52, 324
  %2274 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2273, i32 undef)  ; BufferLoad(srv,index,wot)
  %2275 = extractvalue %dx.types.ResRet.i32 %2274, 0
  %2276 = and i32 %2275, 65535
  %2277 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2276)  ; LegacyF16ToF32(value)
  %2278 = lshr i32 %2275, 16
  %2279 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2278)  ; LegacyF16ToF32(value)
  %2280 = add i32 %52, 64
  %2281 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2280, i32 undef)  ; BufferLoad(srv,index,wot)
  %2282 = extractvalue %dx.types.ResRet.i32 %2281, 0
  %2283 = lshr i32 %2282, 22
  %2284 = shl nuw nsw i32 %2283, 5
  %2285 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2284)  ; LegacyF16ToF32(value)
  %2286 = shl i32 %2282, 4
  %2287 = and i32 %2286, 32752
  %2288 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2287)  ; LegacyF16ToF32(value)
  %2289 = lshr i32 %2282, 7
  %2290 = and i32 %2289, 32752
  %2291 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2290)  ; LegacyF16ToF32(value)
  %2292 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2293 = extractvalue %dx.types.CBufRet.f32 %2292, 3
  %2294 = fmul fast float %2293, 1.000000e+03
  %2295 = fmul fast float %2294, %537
  %2296 = call float @dx.op.unary.f32(i32 22, float %2295)  ; Frc(value)
  %2297 = fadd fast float %2296, %525
  %2298 = fmul fast float %2294, %539
  %2299 = call float @dx.op.unary.f32(i32 22, float %2298)  ; Frc(value)
  %2300 = fadd fast float %2299, %526
  %2301 = fmul fast float %2266, %2294
  %2302 = call float @dx.op.unary.f32(i32 22, float %2301)  ; Frc(value)
  %2303 = fmul fast float %2302, 0x401921FB60000000
  %2304 = fadd fast float %2303, %2285
  %2305 = call float @dx.op.unary.f32(i32 13, float %2304)  ; Sin(value)
  %2306 = call float @dx.op.unary.f32(i32 12, float %2304)  ; Cos(value)
  %2307 = fsub fast float -0.000000e+00, %2305
  %2308 = fadd fast float %2259, -5.000000e-01
  %2309 = fadd fast float %2260, -5.000000e-01
  %2310 = fmul fast float %2277, %2308
  %2311 = fmul fast float %2279, %2309
  %2312 = fadd fast float %2310, 5.000000e-01
  %2313 = fadd fast float %2311, 5.000000e-01
  %2314 = fmul fast float %2288, %2312
  %2315 = fmul fast float %2291, %2313
  %2316 = fmul fast float %2306, %2314
  %2317 = call float @dx.op.tertiary.f32(i32 46, float %2307, float %2315, float %2316)  ; FMad(a,b,c)
  %2318 = fmul fast float %2305, %2314
  %2319 = call float @dx.op.tertiary.f32(i32 46, float %2306, float %2315, float %2318)  ; FMad(a,b,c)
  %2320 = fadd fast float %2297, %2317
  %2321 = fadd fast float %2300, %2319
  %2322 = icmp ugt i32 %2271, 1
  %2323 = icmp ugt i32 %2269, 33554431
  %2324 = or i1 %2323, %2322
  br i1 %2324, label %2325, label %2350

; <label>:2325                                    ; preds = %2252
  %2326 = add i32 %52, 260
  %2327 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2326, i32 undef)  ; BufferLoad(srv,index,wot)
  %2328 = extractvalue %dx.types.ResRet.i32 %2327, 0
  %2329 = lshr i32 %2328, 16
  %2330 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2329)  ; LegacyF16ToF32(value)
  %2331 = fmul fast float %2293, %2330
  %2332 = call float @dx.op.unary.f32(i32 22, float %2331)  ; Frc(value)
  %2333 = mul nuw nsw i32 %2271, %2272
  %2334 = uitofp i32 %2333 to float
  %2335 = fmul fast float %2332, %2334
  %2336 = call float @dx.op.unary.f32(i32 27, float %2335)  ; Round_ni(value)
  %2337 = fptoui float %2336 to i32
  %2338 = urem i32 %2337, %2271
  %2339 = udiv i32 %2337, %2272
  %2340 = call float @dx.op.unary.f32(i32 22, float %2320)  ; Frc(value)
  %2341 = call float @dx.op.unary.f32(i32 22, float %2321)  ; Frc(value)
  %2342 = uitofp i32 %2338 to float
  %2343 = uitofp i32 %2339 to float
  %2344 = fadd fast float %2340, %2342
  %2345 = fadd fast float %2341, %2343
  %2346 = uitofp i32 %2271 to float
  %2347 = uitofp i32 %2272 to float
  %2348 = fdiv fast float %2344, %2346
  %2349 = fdiv fast float %2345, %2347
  br label %2350

; <label>:2350                                    ; preds = %2325, %2252
  %2351 = phi float [ %2348, %2325 ], [ %2320, %2252 ]
  %2352 = phi float [ %2349, %2325 ], [ %2321, %2252 ]
  %2353 = and i32 %2246, 256
  %2354 = icmp eq i32 %2353, 0
  br i1 %2354, label %2401, label %2355

; <label>:2355                                    ; preds = %2350
  %2356 = add i32 %52, 480
  %2357 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2356, i32 undef)  ; BufferLoad(srv,index,wot)
  %2358 = extractvalue %dx.types.ResRet.i32 %2357, 0
  %2359 = add i32 %2358, 0
  %2360 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2359, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2361 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2360, %dx.types.Handle %107, float %2351, float %2352, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2362 = extractvalue %dx.types.ResRet.f32 %2361, 0
  %2363 = add i32 %52, 132
  %2364 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2363, i32 undef)  ; BufferLoad(srv,index,wot)
  %2365 = extractvalue %dx.types.ResRet.i32 %2364, 0
  %2366 = shl i32 %2365, 4
  %2367 = and i32 %2366, 32752
  %2368 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2367)  ; LegacyF16ToF32(value)
  %2369 = lshr i32 %2365, 7
  %2370 = and i32 %2369, 32752
  %2371 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2370)  ; LegacyF16ToF32(value)
  %2372 = fsub fast float 1.000000e+00, %705
  %2373 = call float @dx.op.binary.f32(i32 35, float %2372, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2374 = bitcast float %705 to i32
  %2375 = sitofp i32 %2374 to float
  %2376 = fadd fast float %2375, 0xC1CFBF8940000000
  %2377 = fmul fast float %2371, %2376
  %2378 = fadd fast float %2377, 0x41CFBF8940000000
  %2379 = fptosi float %2378 to i32
  %2380 = bitcast i32 %2379 to float
  %2381 = bitcast float %2373 to i32
  %2382 = sitofp i32 %2381 to float
  %2383 = fadd fast float %2382, 0xC1CFBF8940000000
  %2384 = fmul fast float %2383, %2371
  %2385 = fadd fast float %2384, 0x41CFBF8940000000
  %2386 = fptosi float %2385 to i32
  %2387 = bitcast i32 %2386 to float
  %2388 = fmul fast float %2380, %2368
  %2389 = fmul fast float %2387, %2368
  %2390 = fsub fast float %2373, %2388
  %2391 = fadd fast float %2389, %2373
  %2392 = call float @dx.op.unary.f32(i32 7, float %2390)  ; Saturate(value)
  %2393 = call float @dx.op.unary.f32(i32 7, float %2391)  ; Saturate(value)
  %2394 = fsub fast float %2362, %2392
  %2395 = fsub fast float %2393, %2392
  %2396 = bitcast float %2395 to i32
  %2397 = sub nsw i32 2129859010, %2396
  %2398 = bitcast i32 %2397 to float
  %2399 = fmul fast float %2398, %2394
  %2400 = call float @dx.op.unary.f32(i32 7, float %2399)  ; Saturate(value)
  br label %2401

; <label>:2401                                    ; preds = %2355, %2350
  %2402 = phi float [ %2400, %2355 ], [ %705, %2350 ]
  %2403 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2244, i32 undef)  ; BufferLoad(srv,index,wot)
  %2404 = extractvalue %dx.types.ResRet.i32 %2403, 0
  %2405 = and i32 %2404, 128
  %2406 = icmp eq i32 %2405, 0
  br i1 %2406, label %2423, label %2407

; <label>:2407                                    ; preds = %2401
  %2408 = add i32 %52, 464
  %2409 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2408, i32 undef)  ; BufferLoad(srv,index,wot)
  %2410 = extractvalue %dx.types.ResRet.i32 %2409, 0
  %2411 = add i32 %2410, 0
  %2412 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2411, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2413 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2412, %dx.types.Handle %107, float %2351, float %2352, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2414 = extractvalue %dx.types.ResRet.f32 %2413, 0
  %2415 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2244, i32 undef)  ; BufferLoad(srv,index,wot)
  %2416 = extractvalue %dx.types.ResRet.i32 %2415, 0
  %2417 = and i32 %2416, 524288
  %2418 = icmp ne i32 %2417, 0
  %2419 = fcmp fast ogt float %2414, 0x3FE0101020000000
  %2420 = select i1 %2419, float 1.000000e+00, float 0.000000e+00
  %2421 = select i1 %2418, float %2420, float %2414
  %2422 = fmul fast float %2421, %2402
  br label %2423

; <label>:2423                                    ; preds = %2407, %2401
  %2424 = phi float [ %2422, %2407 ], [ %2402, %2401 ]
  %2425 = fcmp fast ult float %2424, 0x3F70101020000000
  br i1 %2425, label %3113, label %2426

; <label>:2426                                    ; preds = %2423
  %2427 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2244, i32 undef)  ; BufferLoad(srv,index,wot)
  %2428 = extractvalue %dx.types.ResRet.i32 %2427, 0
  %2429 = and i32 %2428, 16
  %2430 = icmp eq i32 %2429, 0
  br i1 %2430, label %2629, label %2431

; <label>:2431                                    ; preds = %2426
  %2432 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2267, i32 undef)  ; BufferLoad(srv,index,wot)
  %2433 = extractvalue %dx.types.ResRet.i32 %2432, 0
  %2434 = add i32 %52, 416
  %2435 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2434, i32 undef)  ; BufferLoad(srv,index,wot)
  %2436 = extractvalue %dx.types.ResRet.i32 %2435, 0
  %2437 = add i32 %2436, 0
  %2438 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2437, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2439 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2438, %dx.types.Handle %106, float %2351, float %2352, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2440 = extractvalue %dx.types.ResRet.f32 %2439, 0
  %2441 = extractvalue %dx.types.ResRet.f32 %2439, 1
  %2442 = extractvalue %dx.types.ResRet.f32 %2439, 2
  %2443 = extractvalue %dx.types.ResRet.f32 %2439, 3
  %2444 = and i32 %2433, 255
  %2445 = uitofp i32 %2444 to float
  %2446 = lshr i32 %2433, 8
  %2447 = and i32 %2446, 255
  %2448 = uitofp i32 %2447 to float
  %2449 = fmul fast float %2443, %2445
  %2450 = fadd fast float %2449, %2448
  %2451 = fmul fast float %2450, 0x3F70101000000000
  %2452 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2244, i32 undef)  ; BufferLoad(srv,index,wot)
  %2453 = extractvalue %dx.types.ResRet.i32 %2452, 0
  %2454 = and i32 %2453, 512
  %2455 = icmp eq i32 %2454, 0
  br i1 %2455, label %2464, label %2456

; <label>:2456                                    ; preds = %2431
  %2457 = add i32 %52, 500
  %2458 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2457, i32 undef)  ; BufferLoad(srv,index,wot)
  %2459 = extractvalue %dx.types.ResRet.i32 %2458, 0
  %2460 = add i32 %2459, 0
  %2461 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2460, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2462 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2461, %dx.types.Handle %107, float %2351, float %2352, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2463 = extractvalue %dx.types.ResRet.f32 %2462, 0
  br label %2464

; <label>:2464                                    ; preds = %2456, %2431
  %2465 = phi float [ %2463, %2456 ], [ 1.000000e+00, %2431 ]
  %2466 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2244, i32 undef)  ; BufferLoad(srv,index,wot)
  %2467 = extractvalue %dx.types.ResRet.i32 %2466, 0
  %2468 = and i32 %2467, 33554432
  %2469 = icmp eq i32 %2468, 0
  br i1 %2469, label %2576, label %2470

; <label>:2470                                    ; preds = %2464
  %2471 = add i32 %52, 256
  %2472 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2471, i32 undef)  ; BufferLoad(srv,index,wot)
  %2473 = extractvalue %dx.types.ResRet.i32 %2472, 0
  %2474 = and i32 %2473, 65535
  %2475 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2474)  ; LegacyF16ToF32(value)
  %2476 = lshr i32 %2473, 16
  %2477 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2476)  ; LegacyF16ToF32(value)
  %2478 = add i32 %52, 260
  %2479 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2478, i32 undef)  ; BufferLoad(srv,index,wot)
  %2480 = extractvalue %dx.types.ResRet.i32 %2479, 0
  %2481 = and i32 %2480, 65535
  %2482 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2481)  ; LegacyF16ToF32(value)
  %2483 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %449, i32 undef)  ; BufferLoad(srv,index,wot)
  %2484 = extractvalue %dx.types.ResRet.i32 %2483, 0
  %2485 = lshr i32 %2484, 24
  %2486 = uitofp i32 %2485 to float
  %2487 = fmul fast float %2486, 0x3F70101020000000
  %2488 = and i32 %2484, 255
  %2489 = uitofp i32 %2488 to float
  %2490 = fmul fast float %2489, 0x3F70101020000000
  %2491 = lshr i32 %2484, 8
  %2492 = and i32 %2491, 255
  %2493 = uitofp i32 %2492 to float
  %2494 = fmul fast float %2493, 0x3F70101020000000
  %2495 = lshr i32 %2484, 16
  %2496 = and i32 %2495, 255
  %2497 = uitofp i32 %2496 to float
  %2498 = fmul fast float %2497, 0x3F70101020000000
  %2499 = add i32 %52, 252
  %2500 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2499, i32 undef)  ; BufferLoad(srv,index,wot)
  %2501 = extractvalue %dx.types.ResRet.i32 %2500, 0
  %2502 = lshr i32 %2501, 24
  %2503 = uitofp i32 %2502 to float
  %2504 = fmul fast float %2503, 0x3F70101020000000
  %2505 = and i32 %2501, 255
  %2506 = uitofp i32 %2505 to float
  %2507 = fmul fast float %2506, 0x3F70101020000000
  %2508 = lshr i32 %2501, 8
  %2509 = and i32 %2508, 255
  %2510 = uitofp i32 %2509 to float
  %2511 = fmul fast float %2510, 0x3F70101020000000
  %2512 = lshr i32 %2501, 16
  %2513 = and i32 %2512, 255
  %2514 = uitofp i32 %2513 to float
  %2515 = fmul fast float %2514, 0x3F70101020000000
  %2516 = bitcast float %2440 to i32
  %2517 = ashr i32 %2516, 1
  %2518 = sub nsw i32 1597463174, %2517
  %2519 = bitcast i32 %2518 to float
  %2520 = fmul fast float %2440, 5.000000e-01
  %2521 = fmul fast float %2519, %2519
  %2522 = fmul fast float %2521, %2520
  %2523 = fsub fast float 1.500000e+00, %2522
  %2524 = fmul fast float %2519, %2440
  %2525 = fmul fast float %2524, %2523
  %2526 = bitcast float %2441 to i32
  %2527 = ashr i32 %2526, 1
  %2528 = sub nsw i32 1597463174, %2527
  %2529 = bitcast i32 %2528 to float
  %2530 = fmul fast float %2441, 5.000000e-01
  %2531 = fmul fast float %2529, %2529
  %2532 = fmul fast float %2531, %2530
  %2533 = fsub fast float 1.500000e+00, %2532
  %2534 = fmul fast float %2529, %2441
  %2535 = fmul fast float %2534, %2533
  %2536 = bitcast float %2442 to i32
  %2537 = ashr i32 %2536, 1
  %2538 = sub nsw i32 1597463174, %2537
  %2539 = bitcast i32 %2538 to float
  %2540 = fmul fast float %2442, 5.000000e-01
  %2541 = fmul fast float %2539, %2539
  %2542 = fmul fast float %2541, %2540
  %2543 = fsub fast float 1.500000e+00, %2542
  %2544 = fmul fast float %2539, %2442
  %2545 = fmul fast float %2544, %2543
  %2546 = fsub fast float %2525, %2507
  %2547 = fsub fast float %2535, %2511
  %2548 = fsub fast float %2545, %2515
  %2549 = fmul fast float %2546, %2475
  %2550 = fmul fast float %2547, %2477
  %2551 = fmul fast float %2548, %2482
  %2552 = fadd fast float %2549, %2490
  %2553 = fadd fast float %2550, %2494
  %2554 = fadd fast float %2551, %2498
  %2555 = call float @dx.op.unary.f32(i32 7, float %2552)  ; Saturate(value)
  %2556 = call float @dx.op.unary.f32(i32 7, float %2553)  ; Saturate(value)
  %2557 = call float @dx.op.unary.f32(i32 7, float %2554)  ; Saturate(value)
  %2558 = fmul fast float %2555, %2555
  %2559 = fmul fast float %2556, %2556
  %2560 = fmul fast float %2557, %2557
  %2561 = fsub fast float %2558, %2440
  %2562 = fsub fast float %2559, %2441
  %2563 = fsub fast float %2560, %2442
  %2564 = fmul fast float %2561, %2465
  %2565 = fmul fast float %2562, %2465
  %2566 = fmul fast float %2563, %2465
  %2567 = fadd fast float %2564, %2440
  %2568 = fadd fast float %2565, %2441
  %2569 = fadd fast float %2566, %2442
  %2570 = fadd fast float %2487, %2451
  %2571 = fsub fast float %2570, %2504
  %2572 = call float @dx.op.unary.f32(i32 7, float %2571)  ; Saturate(value)
  %2573 = fsub fast float %2572, %2451
  %2574 = fmul fast float %2573, %2465
  %2575 = fadd fast float %2574, %2451
  br label %2629

; <label>:2576                                    ; preds = %2464
  %2577 = and i32 %2467, 134217728
  %2578 = icmp eq i32 %2577, 0
  br i1 %2578, label %2613, label %2579

; <label>:2579                                    ; preds = %2576
  %2580 = call float @dx.op.unary.f32(i32 24, float %513)  ; Sqrt(value)
  %2581 = call float @dx.op.unary.f32(i32 24, float %514)  ; Sqrt(value)
  %2582 = call float @dx.op.unary.f32(i32 24, float %515)  ; Sqrt(value)
  %2583 = fadd fast float %2580, -5.000000e-01
  %2584 = fadd fast float %2581, -5.000000e-01
  %2585 = fadd fast float %2582, -5.000000e-01
  %2586 = fmul fast float %2583, %2465
  %2587 = fmul fast float %2584, %2465
  %2588 = fmul fast float %2585, %2465
  %2589 = fadd fast float %2586, 5.000000e-01
  %2590 = fadd fast float %2587, 5.000000e-01
  %2591 = fadd fast float %2588, 5.000000e-01
  %2592 = call float @dx.op.unary.f32(i32 24, float %2440)  ; Sqrt(value)
  %2593 = call float @dx.op.unary.f32(i32 24, float %2441)  ; Sqrt(value)
  %2594 = call float @dx.op.unary.f32(i32 24, float %2442)  ; Sqrt(value)
  %2595 = fmul fast float %2589, 2.000000e+00
  %2596 = fsub fast float 1.000000e+00, %2595
  %2597 = fmul fast float %2596, %2592
  %2598 = fadd fast float %2597, %2595
  %2599 = fmul fast float %2598, %2592
  %2600 = fmul fast float %2590, 2.000000e+00
  %2601 = fsub fast float 1.000000e+00, %2600
  %2602 = fmul fast float %2601, %2593
  %2603 = fadd fast float %2602, %2600
  %2604 = fmul fast float %2603, %2593
  %2605 = fmul fast float %2591, 2.000000e+00
  %2606 = fsub fast float 1.000000e+00, %2605
  %2607 = fmul fast float %2606, %2594
  %2608 = fadd fast float %2607, %2605
  %2609 = fmul fast float %2608, %2594
  %2610 = fmul fast float %2599, %2599
  %2611 = fmul fast float %2604, %2604
  %2612 = fmul fast float %2609, %2609
  br label %2629

; <label>:2613                                    ; preds = %2576
  %2614 = fmul fast float %513, %513
  %2615 = fmul fast float %514, %514
  %2616 = fmul fast float %515, %515
  %2617 = fadd fast float %2614, -1.000000e+00
  %2618 = fadd fast float %2615, -1.000000e+00
  %2619 = fadd fast float %2616, -1.000000e+00
  %2620 = fmul fast float %2465, %2617
  %2621 = fmul fast float %2465, %2618
  %2622 = fmul fast float %2465, %2619
  %2623 = fadd fast float %2620, 1.000000e+00
  %2624 = fadd fast float %2621, 1.000000e+00
  %2625 = fadd fast float %2622, 1.000000e+00
  %2626 = fmul fast float %2623, %2440
  %2627 = fmul fast float %2624, %2441
  %2628 = fmul fast float %2625, %2442
  br label %2629

; <label>:2629                                    ; preds = %2613, %2579, %2470, %2426
  %2630 = phi float [ %2575, %2470 ], [ %2451, %2579 ], [ %2451, %2613 ], [ 0x3FA23C0BE0000000, %2426 ]
  %2631 = phi float [ %2567, %2470 ], [ %2610, %2579 ], [ %2626, %2613 ], [ 1.000000e+00, %2426 ]
  %2632 = phi float [ %2568, %2470 ], [ %2611, %2579 ], [ %2627, %2613 ], [ 1.000000e+00, %2426 ]
  %2633 = phi float [ %2569, %2470 ], [ %2612, %2579 ], [ %2628, %2613 ], [ 1.000000e+00, %2426 ]
  %2634 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2635 = extractvalue %dx.types.CBufRet.i32 %2634, 1
  %2636 = and i32 %2635, 1
  %2637 = icmp ne i32 %2636, 0
  %2638 = add i32 %52, 356
  %2639 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2638, i32 undef)  ; BufferLoad(srv,index,wot)
  %2640 = extractvalue %dx.types.ResRet.i32 %2639, 0
  %2641 = and i32 %2640, 32
  %2642 = icmp ne i32 %2641, 0
  %2643 = and i1 %2637, %2642
  %2644 = select i1 %2643, float 1.000000e+00, float %2631
  %2645 = select i1 %2643, float 0x3FD3333340000000, float %2632
  %2646 = select i1 %2643, float 0x3FD3333340000000, float %2633
  %2647 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2244, i32 undef)  ; BufferLoad(srv,index,wot)
  %2648 = extractvalue %dx.types.ResRet.i32 %2647, 0
  %2649 = and i32 %2648, 32
  %2650 = icmp eq i32 %2649, 0
  br i1 %2650, label %2723, label %2651

; <label>:2651                                    ; preds = %2629
  %2652 = add i32 %52, 124
  %2653 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2652, i32 undef)  ; BufferLoad(srv,index,wot)
  %2654 = extractvalue %dx.types.ResRet.i32 %2653, 0
  %2655 = add i32 %52, 432
  %2656 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2655, i32 undef)  ; BufferLoad(srv,index,wot)
  %2657 = extractvalue %dx.types.ResRet.i32 %2656, 0
  %2658 = add i32 %2657, 0
  %2659 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2658, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2660 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2659, %dx.types.Handle %106, float %2351, float %2352, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2661 = extractvalue %dx.types.ResRet.f32 %2660, 0
  %2662 = extractvalue %dx.types.ResRet.f32 %2660, 1
  %2663 = extractvalue %dx.types.ResRet.f32 %2660, 2
  %2664 = extractvalue %dx.types.ResRet.f32 %2660, 3
  %2665 = and i32 %2654, 255
  %2666 = uitofp i32 %2665 to float
  %2667 = lshr i32 %2654, 8
  %2668 = and i32 %2667, 255
  %2669 = uitofp i32 %2668 to float
  %2670 = lshr i32 %2654, 16
  %2671 = and i32 %2670, 255
  %2672 = uitofp i32 %2671 to float
  %2673 = fmul fast float %2672, 0x3F70101000000000
  %2674 = fmul fast float %2661, %2666
  %2675 = fadd fast float %2674, %2669
  %2676 = fmul fast float %2675, 0x3F70101000000000
  %2677 = fadd fast float %2662, -5.000000e-01
  %2678 = fadd fast float %2664, -5.000000e-01
  %2679 = fmul fast float %2677, %2673
  %2680 = fmul fast float %2678, %2673
  %2681 = fadd fast float %2679, 5.000000e-01
  %2682 = fadd fast float %2680, 5.000000e-01
  %2683 = fmul fast float %2681, 2.000000e+00
  %2684 = fadd fast float %2683, -1.000000e+00
  %2685 = fmul fast float %2682, 2.000000e+00
  %2686 = fadd fast float %2685, -1.000000e+00
  %2687 = fadd fast float %2684, %2686
  %2688 = fmul fast float %2687, 5.000000e-01
  %2689 = fsub fast float %2684, %2686
  %2690 = fmul fast float %2689, 5.000000e-01
  %2691 = call float @dx.op.unary.f32(i32 6, float %2688)  ; FAbs(value)
  %2692 = fsub fast float 1.000000e+00, %2691
  %2693 = call float @dx.op.unary.f32(i32 6, float %2690)  ; FAbs(value)
  %2694 = fsub fast float %2692, %2693
  %2695 = call float @dx.op.dot3.f32(i32 55, float %2688, float %2690, float %2694, float %2688, float %2690, float %2694)  ; Dot3(ax,ay,az,bx,by,bz)
  %2696 = call float @dx.op.unary.f32(i32 25, float %2695)  ; Rsqrt(value)
  %2697 = fmul fast float %2688, %2696
  %2698 = fmul fast float %2690, %2696
  %2699 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2244, i32 undef)  ; BufferLoad(srv,index,wot)
  %2700 = extractvalue %dx.types.ResRet.i32 %2699, 0
  %2701 = and i32 %2700, 67108864
  %2702 = icmp eq i32 %2701, 0
  br i1 %2702, label %2719, label %2703

; <label>:2703                                    ; preds = %2651
  %2704 = add i32 %52, 312
  %2705 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2704, i32 undef)  ; BufferLoad(srv,index,wot)
  %2706 = extractvalue %dx.types.ResRet.i32 %2705, 0
  %2707 = and i32 %2706, 65535
  %2708 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2707)  ; LegacyF16ToF32(value)
  %2709 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2261, i32 undef)  ; BufferLoad(srv,index,wot)
  %2710 = extractvalue %dx.types.ResRet.i32 %2709, 0
  %2711 = and i32 %2710, 65535
  %2712 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2711)  ; LegacyF16ToF32(value)
  %2713 = lshr i32 %2706, 16
  %2714 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2713)  ; LegacyF16ToF32(value)
  %2715 = fsub fast float %2676, %2714
  %2716 = fmul fast float %2715, %2708
  %2717 = fadd fast float %2716, %2712
  %2718 = call float @dx.op.unary.f32(i32 7, float %2717)  ; Saturate(value)
  br label %2719

; <label>:2719                                    ; preds = %2703, %2651
  %2720 = phi float [ %2718, %2703 ], [ %2676, %2651 ]
  %2721 = call float @dx.op.dot2.f32(i32 54, float %2697, float %2698, float %2255, float %2256)  ; Dot2(ax,ay,bx,by)
  %2722 = call float @dx.op.dot2.f32(i32 54, float %2697, float %2698, float %2257, float %2258)  ; Dot2(ax,ay,bx,by)
  br label %2723

; <label>:2723                                    ; preds = %2719, %2629
  %2724 = phi float [ %2720, %2719 ], [ 0x3FD6666660000000, %2629 ]
  %2725 = phi float [ %2721, %2719 ], [ 0.000000e+00, %2629 ]
  %2726 = phi float [ %2722, %2719 ], [ 0.000000e+00, %2629 ]
  %2727 = phi float [ %2663, %2719 ], [ 1.000000e+00, %2629 ]
  %2728 = add i32 %52, 192
  %2729 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2728, i32 undef)  ; BufferLoad(srv,index,wot)
  %2730 = extractvalue %dx.types.ResRet.i32 %2729, 0
  %2731 = lshr i32 %2730, 22
  %2732 = shl nuw nsw i32 %2731, 5
  %2733 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2732)  ; LegacyF16ToF32(value)
  %2734 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2244, i32 undef)  ; BufferLoad(srv,index,wot)
  %2735 = extractvalue %dx.types.ResRet.i32 %2734, 0
  %2736 = and i32 %2735, 64
  %2737 = icmp eq i32 %2736, 0
  br i1 %2737, label %2771, label %2738

; <label>:2738                                    ; preds = %2723
  %2739 = add i32 %52, 448
  %2740 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2739, i32 undef)  ; BufferLoad(srv,index,wot)
  %2741 = extractvalue %dx.types.ResRet.i32 %2740, 0
  %2742 = add i32 %2741, 0
  %2743 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2742, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2744 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2244, i32 undef)  ; BufferLoad(srv,index,wot)
  %2745 = extractvalue %dx.types.ResRet.i32 %2744, 0
  %2746 = and i32 %2745, 131072
  %2747 = icmp eq i32 %2746, 0
  %2748 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2743, %dx.types.Handle %106, float %2351, float %2352, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2749 = extractvalue %dx.types.ResRet.f32 %2748, 0
  %2750 = extractvalue %dx.types.ResRet.f32 %2748, 1
  %2751 = extractvalue %dx.types.ResRet.f32 %2748, 2
  %2752 = fmul fast float %496, %2749
  %2753 = fmul fast float %497, %2750
  %2754 = fmul fast float %498, %2751
  br i1 %2747, label %2761, label %2755

; <label>:2755                                    ; preds = %2738
  %2756 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2757 = extractvalue %dx.types.CBufRet.f32 %2756, 0
  %2758 = fmul fast float %2757, %2752
  %2759 = fmul fast float %2757, %2753
  %2760 = fmul fast float %2757, %2754
  br label %2761

; <label>:2761                                    ; preds = %2755, %2738
  %2762 = phi float [ %2758, %2755 ], [ %2752, %2738 ]
  %2763 = phi float [ %2759, %2755 ], [ %2753, %2738 ]
  %2764 = phi float [ %2760, %2755 ], [ %2754, %2738 ]
  %2765 = fmul fast float %2762, %2733
  %2766 = select i1 %271, float %2765, float %2762
  %2767 = call float @dx.op.dot3.f32(i32 55, float %2766, float %2763, float %2764, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2768 = select i1 %271, float 0.000000e+00, float %2762
  %2769 = select i1 %271, float %2767, float %2763
  %2770 = select i1 %271, float 0.000000e+00, float %2764
  br label %2771

; <label>:2771                                    ; preds = %2761, %2723
  %2772 = phi float [ %2768, %2761 ], [ 0.000000e+00, %2723 ]
  %2773 = phi float [ %2769, %2761 ], [ 0.000000e+00, %2723 ]
  %2774 = phi float [ %2770, %2761 ], [ 0.000000e+00, %2723 ]
  %2775 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2244, i32 undef)  ; BufferLoad(srv,index,wot)
  %2776 = extractvalue %dx.types.ResRet.i32 %2775, 0
  %2777 = and i32 %2776, 1024
  %2778 = icmp eq i32 %2777, 0
  br i1 %2778, label %2809, label %2779

; <label>:2779                                    ; preds = %2771
  %2780 = add i32 %52, 184
  %2781 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2780, i32 undef)  ; BufferLoad(srv,index,wot)
  %2782 = extractvalue %dx.types.ResRet.i32 %2781, 0
  %2783 = and i32 %2782, 255
  %2784 = uitofp i32 %2783 to float
  %2785 = fmul fast float %2784, 0x3F70101020000000
  %2786 = lshr i32 %2782, 8
  %2787 = and i32 %2786, 255
  %2788 = uitofp i32 %2787 to float
  %2789 = fmul fast float %2788, 0x3F70101020000000
  %2790 = lshr i32 %2782, 16
  %2791 = and i32 %2790, 255
  %2792 = uitofp i32 %2791 to float
  %2793 = fmul fast float %2792, 0x3F70101020000000
  %2794 = fmul fast float %2785, %2785
  %2795 = fmul fast float %2789, %2789
  %2796 = fmul fast float %2793, %2793
  %2797 = add i32 %52, 516
  %2798 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2797, i32 undef)  ; BufferLoad(srv,index,wot)
  %2799 = extractvalue %dx.types.ResRet.i32 %2798, 0
  %2800 = add i32 %2799, 0
  %2801 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2800, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2802 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2801, %dx.types.Handle %107, float %2351, float %2352, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2803 = extractvalue %dx.types.ResRet.f32 %2802, 0
  %2804 = extractvalue %dx.types.ResRet.f32 %2802, 1
  %2805 = extractvalue %dx.types.ResRet.f32 %2802, 2
  %2806 = fmul fast float %2794, %2803
  %2807 = fmul fast float %2795, %2804
  %2808 = fmul fast float %2796, %2805
  br label %2809

; <label>:2809                                    ; preds = %2779, %2771
  %2810 = phi float [ %2806, %2779 ], [ 0.000000e+00, %2771 ]
  %2811 = phi float [ %2807, %2779 ], [ 0.000000e+00, %2771 ]
  %2812 = phi float [ %2808, %2779 ], [ 0.000000e+00, %2771 ]
  %2813 = fcmp fast ogt float %2810, 0.000000e+00
  %2814 = fcmp fast ogt float %2811, 0.000000e+00
  %2815 = fcmp fast ogt float %2812, 0.000000e+00
  %2816 = call float @dx.op.unary.f32(i32 23, float %2810)  ; Log(value)
  %2817 = call float @dx.op.unary.f32(i32 23, float %2811)  ; Log(value)
  %2818 = call float @dx.op.unary.f32(i32 23, float %2812)  ; Log(value)
  %2819 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2728, i32 undef)  ; BufferLoad(srv,index,wot)
  %2820 = extractvalue %dx.types.ResRet.i32 %2819, 0
  %2821 = lshr i32 %2820, 7
  %2822 = and i32 %2821, 32752
  %2823 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2822)  ; LegacyF16ToF32(value)
  %2824 = fmul fast float %2816, 0xBFE62E4300000000
  %2825 = fmul fast float %2824, %2823
  %2826 = fmul fast float %2817, 0xBFE62E4300000000
  %2827 = fmul fast float %2826, %2823
  %2828 = fmul fast float %2818, 0xBFE62E4300000000
  %2829 = fmul fast float %2828, %2823
  %2830 = select i1 %2813, float %2825, float 1.270000e+02
  %2831 = select i1 %2814, float %2827, float 1.270000e+02
  %2832 = select i1 %2815, float %2829, float 1.270000e+02
  %2833 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2244, i32 undef)  ; BufferLoad(srv,index,wot)
  %2834 = extractvalue %dx.types.ResRet.i32 %2833, 0
  %2835 = and i32 %2834, 10240
  %2836 = icmp eq i32 %2835, 0
  br i1 %2836, label %2857, label %2837

; <label>:2837                                    ; preds = %2809
  %2838 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2244, i32 undef)  ; BufferLoad(srv,index,wot)
  %2839 = extractvalue %dx.types.ResRet.i32 %2838, 0
  %2840 = and i32 %2839, 2048
  %2841 = icmp eq i32 %2840, 0
  br i1 %2841, label %2857, label %2842

; <label>:2842                                    ; preds = %2837
  %2843 = add i32 %52, 532
  %2844 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2843, i32 undef)  ; BufferLoad(srv,index,wot)
  %2845 = extractvalue %dx.types.ResRet.i32 %2844, 0
  %2846 = add i32 %2845, 0
  %2847 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2846, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2848 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2847, %dx.types.Handle %107, float %2351, float %2352, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2849 = extractvalue %dx.types.ResRet.f32 %2848, 3
  %2850 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2728, i32 undef)  ; BufferLoad(srv,index,wot)
  %2851 = extractvalue %dx.types.ResRet.i32 %2850, 0
  %2852 = shl i32 %2851, 4
  %2853 = and i32 %2852, 32752
  %2854 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2853)  ; LegacyF16ToF32(value)
  %2855 = fmul fast float %2854, %2849
  %2856 = call float @dx.op.binary.f32(i32 35, float %2855, float 0x3F70101020000000)  ; FMax(a,b)
  br label %2857

; <label>:2857                                    ; preds = %2842, %2837, %2809
  %2858 = phi float [ %2856, %2842 ], [ 0x3F70101020000000, %2837 ], [ 0x3F70101020000000, %2809 ]
  %2859 = add i32 %52, 128
  %2860 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2859, i32 undef)  ; BufferLoad(srv,index,wot)
  %2861 = extractvalue %dx.types.ResRet.i32 %2860, 0
  %2862 = and i32 %2861, 255
  %2863 = uitofp i32 %2862 to float
  %2864 = lshr i32 %2861, 8
  %2865 = and i32 %2864, 255
  %2866 = uitofp i32 %2865 to float
  %2867 = call float @dx.op.dot3.f32(i32 55, float %2644, float %2645, float %2646, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2868 = fmul fast float %2866, %2867
  %2869 = fadd fast float %2868, %2863
  %2870 = fmul fast float %2869, 0x3F70101020000000
  %2871 = call float @dx.op.unary.f32(i32 7, float %2870)  ; Saturate(value)
  br i1 %2243, label %2872, label %2907

; <label>:2872                                    ; preds = %2857
  %2873 = fmul fast float %2858, 2.000000e+00
  %2874 = fcmp fast olt float %2830, 1.270000e+02
  %2875 = fcmp fast olt float %2831, 1.270000e+02
  %2876 = fcmp fast olt float %2832, 1.270000e+02
  %2877 = fmul fast float %2830, 0xBFF7154760000000
  %2878 = fmul fast float %2877, %2873
  %2879 = fmul fast float %2831, 0xBFF7154760000000
  %2880 = fmul fast float %2879, %2873
  %2881 = fmul fast float %2832, 0xBFF7154760000000
  %2882 = fmul fast float %2881, %2873
  %2883 = call float @dx.op.unary.f32(i32 21, float %2878)  ; Exp(value)
  %2884 = call float @dx.op.unary.f32(i32 21, float %2880)  ; Exp(value)
  %2885 = call float @dx.op.unary.f32(i32 21, float %2882)  ; Exp(value)
  %2886 = call float @dx.op.unary.f32(i32 7, float %2883)  ; Saturate(value)
  %2887 = call float @dx.op.unary.f32(i32 7, float %2884)  ; Saturate(value)
  %2888 = call float @dx.op.unary.f32(i32 7, float %2885)  ; Saturate(value)
  %2889 = fadd fast float %2886, -1.000000e+00
  %2890 = select i1 %2874, float %2889, float -1.000000e+00
  %2891 = fadd fast float %2887, -1.000000e+00
  %2892 = select i1 %2875, float %2891, float -1.000000e+00
  %2893 = fadd fast float %2888, -1.000000e+00
  %2894 = select i1 %2876, float %2893, float -1.000000e+00
  %2895 = fmul fast float %2890, %2424
  %2896 = fmul fast float %2892, %2424
  %2897 = fmul fast float %2894, %2424
  %2898 = fadd fast float %2895, 1.000000e+00
  %2899 = fadd fast float %2896, 1.000000e+00
  %2900 = fadd fast float %2897, 1.000000e+00
  %2901 = fmul fast float %2898, %2228
  %2902 = fmul fast float %2899, %2229
  %2903 = fmul fast float %2900, %2230
  %2904 = fmul fast float %2898, %2231
  %2905 = fmul fast float %2899, %2232
  %2906 = fmul fast float %2900, %2233
  br label %2907

; <label>:2907                                    ; preds = %2872, %2857
  %2908 = phi float [ %2901, %2872 ], [ %2228, %2857 ]
  %2909 = phi float [ %2902, %2872 ], [ %2229, %2857 ]
  %2910 = phi float [ %2903, %2872 ], [ %2230, %2857 ]
  %2911 = phi float [ %2904, %2872 ], [ %2231, %2857 ]
  %2912 = phi float [ %2905, %2872 ], [ %2232, %2857 ]
  %2913 = phi float [ %2906, %2872 ], [ %2233, %2857 ]
  %2914 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2244, i32 undef)  ; BufferLoad(srv,index,wot)
  %2915 = extractvalue %dx.types.ResRet.i32 %2914, 0
  %2916 = and i32 %2915, 3
  %2917 = icmp eq i32 %2916, 3
  br i1 %2917, label %2996, label %2918

; <label>:2918                                    ; preds = %2907
  %2919 = and i32 %2915, 16
  %2920 = icmp ne i32 %2919, 0
  %2921 = select i1 %2920, float %2424, float 0.000000e+00
  %2922 = icmp eq i32 %2916, 0
  br i1 %2922, label %2923, label %2951

; <label>:2923                                    ; preds = %2918
  %2924 = and i32 %2915, 64
  %2925 = icmp ne i32 %2924, 0
  %2926 = select i1 %2925, float %2424, float 0.000000e+00
  %2927 = fsub fast float %2644, %2908
  %2928 = fsub fast float %2645, %2909
  %2929 = fsub fast float %2646, %2910
  %2930 = fmul fast float %2921, %2927
  %2931 = fmul fast float %2921, %2928
  %2932 = fmul fast float %2921, %2929
  %2933 = fadd fast float %2930, %2908
  %2934 = fadd fast float %2931, %2909
  %2935 = fadd fast float %2932, %2910
  %2936 = fsub fast float %2630, %2237
  %2937 = fmul fast float %2921, %2936
  %2938 = fadd fast float %2937, %2237
  %2939 = fsub fast float %2772, %2911
  %2940 = fsub fast float %2773, %2912
  %2941 = fsub fast float %2774, %2913
  %2942 = fmul fast float %2926, %2939
  %2943 = fmul fast float %2926, %2940
  %2944 = fmul fast float %2926, %2941
  %2945 = fadd fast float %2942, %2911
  %2946 = fadd fast float %2943, %2912
  %2947 = fadd fast float %2944, %2913
  %2948 = fsub fast float %2871, %2241
  %2949 = fmul fast float %2921, %2948
  %2950 = fadd fast float %2949, %2241
  br label %2996

; <label>:2951                                    ; preds = %2918
  %2952 = icmp eq i32 %2916, 1
  br i1 %2952, label %2953, label %2966

; <label>:2953                                    ; preds = %2951
  %2954 = fadd fast float %2644, -1.000000e+00
  %2955 = fadd fast float %2645, -1.000000e+00
  %2956 = fadd fast float %2646, -1.000000e+00
  %2957 = fmul fast float %2921, %2954
  %2958 = fmul fast float %2921, %2955
  %2959 = fmul fast float %2921, %2956
  %2960 = fadd fast float %2957, 1.000000e+00
  %2961 = fadd fast float %2958, 1.000000e+00
  %2962 = fadd fast float %2959, 1.000000e+00
  %2963 = fmul fast float %2960, %2908
  %2964 = fmul fast float %2961, %2909
  %2965 = fmul fast float %2962, %2910
  br label %2996

; <label>:2966                                    ; preds = %2951
  %2967 = icmp eq i32 %2916, 2
  br i1 %2967, label %2968, label %2996

; <label>:2968                                    ; preds = %2966
  %2969 = call float @dx.op.unary.f32(i32 24, float %2644)  ; Sqrt(value)
  %2970 = call float @dx.op.unary.f32(i32 24, float %2645)  ; Sqrt(value)
  %2971 = call float @dx.op.unary.f32(i32 24, float %2646)  ; Sqrt(value)
  %2972 = fadd fast float %2969, -5.000000e-01
  %2973 = fadd fast float %2970, -5.000000e-01
  %2974 = fadd fast float %2971, -5.000000e-01
  %2975 = fmul fast float %2972, %2921
  %2976 = fmul fast float %2973, %2921
  %2977 = fmul fast float %2974, %2921
  %2978 = fadd fast float %2975, 5.000000e-01
  %2979 = fadd fast float %2976, 5.000000e-01
  %2980 = fadd fast float %2977, 5.000000e-01
  %2981 = fmul fast float %2978, 2.000000e+00
  %2982 = fsub fast float 1.000000e+00, %2981
  %2983 = fmul fast float %2982, %2908
  %2984 = fadd fast float %2983, %2981
  %2985 = fmul fast float %2984, %2908
  %2986 = fmul fast float %2979, 2.000000e+00
  %2987 = fsub fast float 1.000000e+00, %2986
  %2988 = fmul fast float %2987, %2909
  %2989 = fadd fast float %2988, %2986
  %2990 = fmul fast float %2989, %2909
  %2991 = fmul fast float %2980, 2.000000e+00
  %2992 = fsub fast float 1.000000e+00, %2991
  %2993 = fmul fast float %2992, %2910
  %2994 = fadd fast float %2993, %2991
  %2995 = fmul fast float %2994, %2910
  br label %2996

; <label>:2996                                    ; preds = %2968, %2966, %2953, %2923, %2907
  %2997 = phi float [ %2908, %2907 ], [ %2985, %2968 ], [ %2908, %2966 ], [ %2963, %2953 ], [ %2933, %2923 ]
  %2998 = phi float [ %2909, %2907 ], [ %2990, %2968 ], [ %2909, %2966 ], [ %2964, %2953 ], [ %2934, %2923 ]
  %2999 = phi float [ %2910, %2907 ], [ %2995, %2968 ], [ %2910, %2966 ], [ %2965, %2953 ], [ %2935, %2923 ]
  %3000 = phi float [ %2911, %2907 ], [ %2911, %2968 ], [ %2911, %2966 ], [ %2911, %2953 ], [ %2945, %2923 ]
  %3001 = phi float [ %2912, %2907 ], [ %2912, %2968 ], [ %2912, %2966 ], [ %2912, %2953 ], [ %2946, %2923 ]
  %3002 = phi float [ %2913, %2907 ], [ %2913, %2968 ], [ %2913, %2966 ], [ %2913, %2953 ], [ %2947, %2923 ]
  %3003 = phi float [ %2237, %2907 ], [ %2237, %2968 ], [ %2237, %2966 ], [ %2237, %2953 ], [ %2938, %2923 ]
  %3004 = phi float [ %2241, %2907 ], [ %2241, %2968 ], [ %2241, %2966 ], [ %2241, %2953 ], [ %2950, %2923 ]
  %3005 = and i32 %2915, 12
  %3006 = icmp eq i32 %3005, 12
  br i1 %3006, label %3113, label %3007

; <label>:3007                                    ; preds = %2996
  %3008 = and i32 %2915, 2097184
  %3009 = icmp eq i32 %3008, 2097184
  %3010 = select i1 %3009, float %2424, float 0.000000e+00
  %3011 = and i32 %2915, 4194336
  %3012 = icmp eq i32 %3011, 4194336
  %3013 = select i1 %3012, float %2424, float 0.000000e+00
  %3014 = and i32 %2915, 8388640
  %3015 = icmp eq i32 %3014, 8388640
  %3016 = select i1 %3015, float %2424, float 0.000000e+00
  %3017 = and i32 %2915, 1024
  %3018 = icmp ne i32 %3017, 0
  %3019 = select i1 %3018, float %2424, float 0.000000e+00
  %3020 = and i32 %2915, 2048
  %3021 = icmp ne i32 %3020, 0
  %3022 = select i1 %3021, float %2424, float 0.000000e+00
  %3023 = icmp eq i32 %3005, 0
  br i1 %3023, label %3024, label %3049

; <label>:3024                                    ; preds = %3007
  %3025 = fsub fast float %2725, %2226
  %3026 = fsub fast float %2726, %2227
  %3027 = fmul fast float %3010, %3025
  %3028 = fmul fast float %3010, %3026
  %3029 = fadd fast float %3027, %2226
  %3030 = fadd fast float %3028, %2227
  %3031 = fsub fast float %2727, %2239
  %3032 = fmul fast float %3013, %3031
  %3033 = fadd fast float %3032, %2239
  %3034 = fsub fast float %2724, %2238
  %3035 = fmul fast float %3016, %3034
  %3036 = fadd fast float %3035, %2238
  %3037 = fsub fast float %2830, %2234
  %3038 = fsub fast float %2831, %2235
  %3039 = fsub fast float %2832, %2236
  %3040 = fmul fast float %3019, %3037
  %3041 = fmul fast float %3019, %3038
  %3042 = fmul fast float %3019, %3039
  %3043 = fadd fast float %3040, %2234
  %3044 = fadd fast float %3041, %2235
  %3045 = fadd fast float %3042, %2236
  %3046 = fsub fast float %2858, %2240
  %3047 = fmul fast float %3022, %3046
  %3048 = fadd fast float %3047, %2240
  br label %3113

; <label>:3049                                    ; preds = %3007
  %3050 = icmp eq i32 %3005, 4
  br i1 %3050, label %3051, label %3091

; <label>:3051                                    ; preds = %3049
  %3052 = fmul fast float %3010, %2725
  %3053 = fmul fast float %3010, %2726
  %3054 = fadd fast float %3052, %2226
  %3055 = fadd fast float %3053, %2227
  %3056 = call float @dx.op.binary.f32(i32 36, float %2239, float %2727)  ; FMin(a,b)
  %3057 = fsub fast float %3056, %2239
  %3058 = fmul fast float %3057, %3013
  %3059 = fadd fast float %3058, %2239
  %3060 = fadd fast float %2724, %2238
  %3061 = fmul fast float %3060, 0x3FF337FAE0000000
  %3062 = fmul fast float %2238, %2238
  %3063 = fmul fast float %2724, %2724
  %3064 = fadd fast float %3063, %3062
  %3065 = fmul fast float %3064, 0x3FE5152B00000000
  %3066 = fmul fast float %2238, 0xBFCC1F85E0000000
  %3067 = fmul fast float %3066, %2724
  %3068 = fadd fast float %3067, 0xBFE1363700000000
  %3069 = fadd fast float %3068, %3061
  %3070 = fsub fast float %3069, %3065
  %3071 = fmul fast float %3060, 0x3FBA6F0D00000000
  %3072 = fmul fast float %3064, 0x3FD0432880000000
  %3073 = fmul fast float %2238, 0xBFEF110800000000
  %3074 = fmul fast float %3073, %2724
  %3075 = fadd fast float %3074, 1.000000e+00
  %3076 = fsub fast float %3075, %3071
  %3077 = fadd fast float %3076, %3072
  %3078 = fdiv fast float %3070, %3077
  %3079 = call float @dx.op.unary.f32(i32 7, float %3078)  ; Saturate(value)
  %3080 = fsub fast float %3079, %2238
  %3081 = fmul fast float %3080, %3016
  %3082 = fadd fast float %3081, %2238
  %3083 = fmul fast float %3019, %2830
  %3084 = fmul fast float %3019, %2831
  %3085 = fmul fast float %3019, %2832
  %3086 = fadd fast float %3083, %2234
  %3087 = fadd fast float %3084, %2235
  %3088 = fadd fast float %3085, %2236
  %3089 = fmul fast float %3022, %2858
  %3090 = fadd fast float %3089, %2240
  br label %3113

; <label>:3091                                    ; preds = %3049
  %3092 = icmp eq i32 %3005, 8
  br i1 %3092, label %3093, label %3113

; <label>:3093                                    ; preds = %3091
  %3094 = fmul fast float %3010, %2725
  %3095 = fmul fast float %3010, %2726
  %3096 = fadd fast float %3094, %2226
  %3097 = fadd fast float %3095, %2227
  %3098 = call float @dx.op.binary.f32(i32 36, float %2239, float %2727)  ; FMin(a,b)
  %3099 = fsub fast float %3098, %2239
  %3100 = fmul fast float %3099, %3013
  %3101 = fadd fast float %3100, %2239
  %3102 = fsub fast float %2724, %2238
  %3103 = fmul fast float %3016, %3102
  %3104 = fadd fast float %3103, %2238
  %3105 = fmul fast float %3019, %2830
  %3106 = fmul fast float %3019, %2831
  %3107 = fmul fast float %3019, %2832
  %3108 = fadd fast float %3105, %2234
  %3109 = fadd fast float %3106, %2235
  %3110 = fadd fast float %3107, %2236
  %3111 = fmul fast float %3022, %2858
  %3112 = fadd fast float %3111, %2240
  br label %3113

; <label>:3113                                    ; preds = %3093, %3091, %3051, %3024, %2996, %2423, %2242, %2225
  %3114 = phi float [ %2226, %2996 ], [ %2226, %2423 ], [ %2226, %2225 ], [ %3096, %3093 ], [ %2226, %3091 ], [ %3054, %3051 ], [ %3029, %3024 ], [ %2226, %2242 ]
  %3115 = phi float [ %2227, %2996 ], [ %2227, %2423 ], [ %2227, %2225 ], [ %3097, %3093 ], [ %2227, %3091 ], [ %3055, %3051 ], [ %3030, %3024 ], [ %2227, %2242 ]
  %3116 = phi float [ %2997, %2996 ], [ %2228, %2423 ], [ %2228, %2225 ], [ %2997, %3093 ], [ %2997, %3091 ], [ %2997, %3051 ], [ %2997, %3024 ], [ %2228, %2242 ]
  %3117 = phi float [ %2998, %2996 ], [ %2229, %2423 ], [ %2229, %2225 ], [ %2998, %3093 ], [ %2998, %3091 ], [ %2998, %3051 ], [ %2998, %3024 ], [ %2229, %2242 ]
  %3118 = phi float [ %2999, %2996 ], [ %2230, %2423 ], [ %2230, %2225 ], [ %2999, %3093 ], [ %2999, %3091 ], [ %2999, %3051 ], [ %2999, %3024 ], [ %2230, %2242 ]
  %3119 = phi float [ %3000, %2996 ], [ %2231, %2423 ], [ %2231, %2225 ], [ %3000, %3093 ], [ %3000, %3091 ], [ %3000, %3051 ], [ %3000, %3024 ], [ %2231, %2242 ]
  %3120 = phi float [ %3001, %2996 ], [ %2232, %2423 ], [ %2232, %2225 ], [ %3001, %3093 ], [ %3001, %3091 ], [ %3001, %3051 ], [ %3001, %3024 ], [ %2232, %2242 ]
  %3121 = phi float [ %3002, %2996 ], [ %2233, %2423 ], [ %2233, %2225 ], [ %3002, %3093 ], [ %3002, %3091 ], [ %3002, %3051 ], [ %3002, %3024 ], [ %2233, %2242 ]
  %3122 = phi float [ %2234, %2996 ], [ %2234, %2423 ], [ %2234, %2225 ], [ %3108, %3093 ], [ %2234, %3091 ], [ %3086, %3051 ], [ %3043, %3024 ], [ %2234, %2242 ]
  %3123 = phi float [ %2235, %2996 ], [ %2235, %2423 ], [ %2235, %2225 ], [ %3109, %3093 ], [ %2235, %3091 ], [ %3087, %3051 ], [ %3044, %3024 ], [ %2235, %2242 ]
  %3124 = phi float [ %2236, %2996 ], [ %2236, %2423 ], [ %2236, %2225 ], [ %3110, %3093 ], [ %2236, %3091 ], [ %3088, %3051 ], [ %3045, %3024 ], [ %2236, %2242 ]
  %3125 = phi float [ %3003, %2996 ], [ %2237, %2423 ], [ %2237, %2225 ], [ %3003, %3093 ], [ %3003, %3091 ], [ %3003, %3051 ], [ %3003, %3024 ], [ %2237, %2242 ]
  %3126 = phi float [ %2238, %2996 ], [ %2238, %2423 ], [ %2238, %2225 ], [ %3104, %3093 ], [ %2238, %3091 ], [ %3082, %3051 ], [ %3036, %3024 ], [ %2238, %2242 ]
  %3127 = phi float [ %2239, %2996 ], [ %2239, %2423 ], [ %2239, %2225 ], [ %3101, %3093 ], [ %2239, %3091 ], [ %3059, %3051 ], [ %3033, %3024 ], [ %2239, %2242 ]
  %3128 = phi float [ %2240, %2996 ], [ %2240, %2423 ], [ %2240, %2225 ], [ %3112, %3093 ], [ %2240, %3091 ], [ %3090, %3051 ], [ %3048, %3024 ], [ %2240, %2242 ]
  %3129 = phi float [ %3004, %2996 ], [ %2241, %2423 ], [ %2241, %2225 ], [ %3004, %3093 ], [ %3004, %3091 ], [ %3004, %3051 ], [ %3004, %3024 ], [ %2241, %2242 ]
  br i1 %655, label %4001, label %3130

; <label>:3130                                    ; preds = %3113
  %3131 = icmp ult i32 %709, 4
  %3132 = add i32 %52, 72
  %3133 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3132, i32 undef)  ; BufferLoad(srv,index,wot)
  %3134 = extractvalue %dx.types.ResRet.i32 %3133, 0
  %3135 = add i32 %52, 76
  %3136 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3135, i32 undef)  ; BufferLoad(srv,index,wot)
  %3137 = extractvalue %dx.types.ResRet.i32 %3136, 0
  %3138 = or i32 %3137, %3134
  %3139 = icmp eq i32 %3138, 0
  br i1 %3139, label %4001, label %3140

; <label>:3140                                    ; preds = %3130
  %3141 = and i32 %3134, 262144
  %3142 = icmp ne i32 %3141, 0
  %3143 = select i1 %3142, float %60, float 1.000000e+00
  %3144 = select i1 %3142, float %61, float 0.000000e+00
  %3145 = select i1 %3142, float %62, float 0.000000e+00
  %3146 = select i1 %3142, float %63, float 1.000000e+00
  %3147 = select i1 %3142, float %64, float %88
  %3148 = select i1 %3142, float %65, float %89
  %3149 = add i32 %52, 332
  %3150 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3149, i32 undef)  ; BufferLoad(srv,index,wot)
  %3151 = extractvalue %dx.types.ResRet.i32 %3150, 0
  %3152 = lshr i32 %3151, 16
  %3153 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3152)  ; LegacyF16ToF32(value)
  %3154 = fmul fast float %3153, 0x3F50624DE0000000
  %3155 = add i32 %52, 136
  %3156 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3155, i32 undef)  ; BufferLoad(srv,index,wot)
  %3157 = extractvalue %dx.types.ResRet.i32 %3156, 0
  %3158 = lshr i32 %3157, 16
  %3159 = and i32 %3158, 255
  %3160 = lshr i32 %3157, 24
  %3161 = add i32 %52, 340
  %3162 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3161, i32 undef)  ; BufferLoad(srv,index,wot)
  %3163 = extractvalue %dx.types.ResRet.i32 %3162, 0
  %3164 = and i32 %3163, 65535
  %3165 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3164)  ; LegacyF16ToF32(value)
  %3166 = lshr i32 %3163, 16
  %3167 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3166)  ; LegacyF16ToF32(value)
  %3168 = add i32 %52, 80
  %3169 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3168, i32 undef)  ; BufferLoad(srv,index,wot)
  %3170 = extractvalue %dx.types.ResRet.i32 %3169, 0
  %3171 = lshr i32 %3170, 22
  %3172 = shl nuw nsw i32 %3171, 5
  %3173 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3172)  ; LegacyF16ToF32(value)
  %3174 = shl i32 %3170, 4
  %3175 = and i32 %3174, 32752
  %3176 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3175)  ; LegacyF16ToF32(value)
  %3177 = lshr i32 %3170, 7
  %3178 = and i32 %3177, 32752
  %3179 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3178)  ; LegacyF16ToF32(value)
  %3180 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %3181 = extractvalue %dx.types.CBufRet.f32 %3180, 3
  %3182 = fmul fast float %3181, 1.000000e+03
  %3183 = fmul fast float %3182, %644
  %3184 = call float @dx.op.unary.f32(i32 22, float %3183)  ; Frc(value)
  %3185 = fadd fast float %3184, %632
  %3186 = fmul fast float %3182, %646
  %3187 = call float @dx.op.unary.f32(i32 22, float %3186)  ; Frc(value)
  %3188 = fadd fast float %3187, %633
  %3189 = fmul fast float %3154, %3182
  %3190 = call float @dx.op.unary.f32(i32 22, float %3189)  ; Frc(value)
  %3191 = fmul fast float %3190, 0x401921FB60000000
  %3192 = fadd fast float %3191, %3173
  %3193 = call float @dx.op.unary.f32(i32 13, float %3192)  ; Sin(value)
  %3194 = call float @dx.op.unary.f32(i32 12, float %3192)  ; Cos(value)
  %3195 = fsub fast float -0.000000e+00, %3193
  %3196 = fadd fast float %3147, -5.000000e-01
  %3197 = fadd fast float %3148, -5.000000e-01
  %3198 = fmul fast float %3165, %3196
  %3199 = fmul fast float %3167, %3197
  %3200 = fadd fast float %3198, 5.000000e-01
  %3201 = fadd fast float %3199, 5.000000e-01
  %3202 = fmul fast float %3176, %3200
  %3203 = fmul fast float %3179, %3201
  %3204 = fmul fast float %3194, %3202
  %3205 = call float @dx.op.tertiary.f32(i32 46, float %3195, float %3203, float %3204)  ; FMad(a,b,c)
  %3206 = fmul fast float %3193, %3202
  %3207 = call float @dx.op.tertiary.f32(i32 46, float %3194, float %3203, float %3206)  ; FMad(a,b,c)
  %3208 = fadd fast float %3185, %3205
  %3209 = fadd fast float %3188, %3207
  %3210 = icmp ugt i32 %3159, 1
  %3211 = icmp ugt i32 %3157, 33554431
  %3212 = or i1 %3211, %3210
  br i1 %3212, label %3213, label %3238

; <label>:3213                                    ; preds = %3140
  %3214 = add i32 %52, 276
  %3215 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3214, i32 undef)  ; BufferLoad(srv,index,wot)
  %3216 = extractvalue %dx.types.ResRet.i32 %3215, 0
  %3217 = lshr i32 %3216, 16
  %3218 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3217)  ; LegacyF16ToF32(value)
  %3219 = fmul fast float %3181, %3218
  %3220 = call float @dx.op.unary.f32(i32 22, float %3219)  ; Frc(value)
  %3221 = mul nuw nsw i32 %3159, %3160
  %3222 = uitofp i32 %3221 to float
  %3223 = fmul fast float %3220, %3222
  %3224 = call float @dx.op.unary.f32(i32 27, float %3223)  ; Round_ni(value)
  %3225 = fptoui float %3224 to i32
  %3226 = urem i32 %3225, %3159
  %3227 = udiv i32 %3225, %3160
  %3228 = call float @dx.op.unary.f32(i32 22, float %3208)  ; Frc(value)
  %3229 = call float @dx.op.unary.f32(i32 22, float %3209)  ; Frc(value)
  %3230 = uitofp i32 %3226 to float
  %3231 = uitofp i32 %3227 to float
  %3232 = fadd fast float %3228, %3230
  %3233 = fadd fast float %3229, %3231
  %3234 = uitofp i32 %3159 to float
  %3235 = uitofp i32 %3160 to float
  %3236 = fdiv fast float %3232, %3234
  %3237 = fdiv fast float %3233, %3235
  br label %3238

; <label>:3238                                    ; preds = %3213, %3140
  %3239 = phi float [ %3236, %3213 ], [ %3208, %3140 ]
  %3240 = phi float [ %3237, %3213 ], [ %3209, %3140 ]
  %3241 = and i32 %3134, 256
  %3242 = icmp eq i32 %3241, 0
  br i1 %3242, label %3289, label %3243

; <label>:3243                                    ; preds = %3238
  %3244 = add i32 %52, 484
  %3245 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3244, i32 undef)  ; BufferLoad(srv,index,wot)
  %3246 = extractvalue %dx.types.ResRet.i32 %3245, 0
  %3247 = add i32 %3246, 0
  %3248 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3247, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3249 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3248, %dx.types.Handle %107, float %3239, float %3240, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3250 = extractvalue %dx.types.ResRet.f32 %3249, 0
  %3251 = add i32 %52, 148
  %3252 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3251, i32 undef)  ; BufferLoad(srv,index,wot)
  %3253 = extractvalue %dx.types.ResRet.i32 %3252, 0
  %3254 = shl i32 %3253, 4
  %3255 = and i32 %3254, 32752
  %3256 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3255)  ; LegacyF16ToF32(value)
  %3257 = lshr i32 %3253, 7
  %3258 = and i32 %3257, 32752
  %3259 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3258)  ; LegacyF16ToF32(value)
  %3260 = fsub fast float 1.000000e+00, %704
  %3261 = call float @dx.op.binary.f32(i32 35, float %3260, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %3262 = bitcast float %704 to i32
  %3263 = sitofp i32 %3262 to float
  %3264 = fadd fast float %3263, 0xC1CFBF8940000000
  %3265 = fmul fast float %3259, %3264
  %3266 = fadd fast float %3265, 0x41CFBF8940000000
  %3267 = fptosi float %3266 to i32
  %3268 = bitcast i32 %3267 to float
  %3269 = bitcast float %3261 to i32
  %3270 = sitofp i32 %3269 to float
  %3271 = fadd fast float %3270, 0xC1CFBF8940000000
  %3272 = fmul fast float %3271, %3259
  %3273 = fadd fast float %3272, 0x41CFBF8940000000
  %3274 = fptosi float %3273 to i32
  %3275 = bitcast i32 %3274 to float
  %3276 = fmul fast float %3268, %3256
  %3277 = fmul fast float %3275, %3256
  %3278 = fsub fast float %3261, %3276
  %3279 = fadd fast float %3277, %3261
  %3280 = call float @dx.op.unary.f32(i32 7, float %3278)  ; Saturate(value)
  %3281 = call float @dx.op.unary.f32(i32 7, float %3279)  ; Saturate(value)
  %3282 = fsub fast float %3250, %3280
  %3283 = fsub fast float %3281, %3280
  %3284 = bitcast float %3283 to i32
  %3285 = sub nsw i32 2129859010, %3284
  %3286 = bitcast i32 %3285 to float
  %3287 = fmul fast float %3286, %3282
  %3288 = call float @dx.op.unary.f32(i32 7, float %3287)  ; Saturate(value)
  br label %3289

; <label>:3289                                    ; preds = %3243, %3238
  %3290 = phi float [ %3288, %3243 ], [ %704, %3238 ]
  %3291 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3132, i32 undef)  ; BufferLoad(srv,index,wot)
  %3292 = extractvalue %dx.types.ResRet.i32 %3291, 0
  %3293 = and i32 %3292, 128
  %3294 = icmp eq i32 %3293, 0
  br i1 %3294, label %3311, label %3295

; <label>:3295                                    ; preds = %3289
  %3296 = add i32 %52, 468
  %3297 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3296, i32 undef)  ; BufferLoad(srv,index,wot)
  %3298 = extractvalue %dx.types.ResRet.i32 %3297, 0
  %3299 = add i32 %3298, 0
  %3300 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3299, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3301 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3300, %dx.types.Handle %107, float %3239, float %3240, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3302 = extractvalue %dx.types.ResRet.f32 %3301, 0
  %3303 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3132, i32 undef)  ; BufferLoad(srv,index,wot)
  %3304 = extractvalue %dx.types.ResRet.i32 %3303, 0
  %3305 = and i32 %3304, 524288
  %3306 = icmp ne i32 %3305, 0
  %3307 = fcmp fast ogt float %3302, 0x3FE0101020000000
  %3308 = select i1 %3307, float 1.000000e+00, float 0.000000e+00
  %3309 = select i1 %3306, float %3308, float %3302
  %3310 = fmul fast float %3309, %3290
  br label %3311

; <label>:3311                                    ; preds = %3295, %3289
  %3312 = phi float [ %3310, %3295 ], [ %3290, %3289 ]
  %3313 = fcmp fast ult float %3312, 0x3F70101020000000
  br i1 %3313, label %4001, label %3314

; <label>:3314                                    ; preds = %3311
  %3315 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3132, i32 undef)  ; BufferLoad(srv,index,wot)
  %3316 = extractvalue %dx.types.ResRet.i32 %3315, 0
  %3317 = and i32 %3316, 16
  %3318 = icmp eq i32 %3317, 0
  br i1 %3318, label %3517, label %3319

; <label>:3319                                    ; preds = %3314
  %3320 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3155, i32 undef)  ; BufferLoad(srv,index,wot)
  %3321 = extractvalue %dx.types.ResRet.i32 %3320, 0
  %3322 = add i32 %52, 420
  %3323 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3322, i32 undef)  ; BufferLoad(srv,index,wot)
  %3324 = extractvalue %dx.types.ResRet.i32 %3323, 0
  %3325 = add i32 %3324, 0
  %3326 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3325, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3327 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3326, %dx.types.Handle %106, float %3239, float %3240, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3328 = extractvalue %dx.types.ResRet.f32 %3327, 0
  %3329 = extractvalue %dx.types.ResRet.f32 %3327, 1
  %3330 = extractvalue %dx.types.ResRet.f32 %3327, 2
  %3331 = extractvalue %dx.types.ResRet.f32 %3327, 3
  %3332 = and i32 %3321, 255
  %3333 = uitofp i32 %3332 to float
  %3334 = lshr i32 %3321, 8
  %3335 = and i32 %3334, 255
  %3336 = uitofp i32 %3335 to float
  %3337 = fmul fast float %3331, %3333
  %3338 = fadd fast float %3337, %3336
  %3339 = fmul fast float %3338, 0x3F70101000000000
  %3340 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3132, i32 undef)  ; BufferLoad(srv,index,wot)
  %3341 = extractvalue %dx.types.ResRet.i32 %3340, 0
  %3342 = and i32 %3341, 512
  %3343 = icmp eq i32 %3342, 0
  br i1 %3343, label %3352, label %3344

; <label>:3344                                    ; preds = %3319
  %3345 = add i32 %52, 504
  %3346 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3345, i32 undef)  ; BufferLoad(srv,index,wot)
  %3347 = extractvalue %dx.types.ResRet.i32 %3346, 0
  %3348 = add i32 %3347, 0
  %3349 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3348, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3350 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3349, %dx.types.Handle %107, float %3239, float %3240, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3351 = extractvalue %dx.types.ResRet.f32 %3350, 0
  br label %3352

; <label>:3352                                    ; preds = %3344, %3319
  %3353 = phi float [ %3351, %3344 ], [ 1.000000e+00, %3319 ]
  %3354 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3132, i32 undef)  ; BufferLoad(srv,index,wot)
  %3355 = extractvalue %dx.types.ResRet.i32 %3354, 0
  %3356 = and i32 %3355, 33554432
  %3357 = icmp eq i32 %3356, 0
  br i1 %3357, label %3464, label %3358

; <label>:3358                                    ; preds = %3352
  %3359 = add i32 %52, 272
  %3360 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3359, i32 undef)  ; BufferLoad(srv,index,wot)
  %3361 = extractvalue %dx.types.ResRet.i32 %3360, 0
  %3362 = and i32 %3361, 65535
  %3363 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3362)  ; LegacyF16ToF32(value)
  %3364 = lshr i32 %3361, 16
  %3365 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3364)  ; LegacyF16ToF32(value)
  %3366 = add i32 %52, 276
  %3367 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3366, i32 undef)  ; BufferLoad(srv,index,wot)
  %3368 = extractvalue %dx.types.ResRet.i32 %3367, 0
  %3369 = and i32 %3368, 65535
  %3370 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3369)  ; LegacyF16ToF32(value)
  %3371 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %556, i32 undef)  ; BufferLoad(srv,index,wot)
  %3372 = extractvalue %dx.types.ResRet.i32 %3371, 0
  %3373 = lshr i32 %3372, 24
  %3374 = uitofp i32 %3373 to float
  %3375 = fmul fast float %3374, 0x3F70101020000000
  %3376 = and i32 %3372, 255
  %3377 = uitofp i32 %3376 to float
  %3378 = fmul fast float %3377, 0x3F70101020000000
  %3379 = lshr i32 %3372, 8
  %3380 = and i32 %3379, 255
  %3381 = uitofp i32 %3380 to float
  %3382 = fmul fast float %3381, 0x3F70101020000000
  %3383 = lshr i32 %3372, 16
  %3384 = and i32 %3383, 255
  %3385 = uitofp i32 %3384 to float
  %3386 = fmul fast float %3385, 0x3F70101020000000
  %3387 = add i32 %52, 268
  %3388 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3387, i32 undef)  ; BufferLoad(srv,index,wot)
  %3389 = extractvalue %dx.types.ResRet.i32 %3388, 0
  %3390 = lshr i32 %3389, 24
  %3391 = uitofp i32 %3390 to float
  %3392 = fmul fast float %3391, 0x3F70101020000000
  %3393 = and i32 %3389, 255
  %3394 = uitofp i32 %3393 to float
  %3395 = fmul fast float %3394, 0x3F70101020000000
  %3396 = lshr i32 %3389, 8
  %3397 = and i32 %3396, 255
  %3398 = uitofp i32 %3397 to float
  %3399 = fmul fast float %3398, 0x3F70101020000000
  %3400 = lshr i32 %3389, 16
  %3401 = and i32 %3400, 255
  %3402 = uitofp i32 %3401 to float
  %3403 = fmul fast float %3402, 0x3F70101020000000
  %3404 = bitcast float %3328 to i32
  %3405 = ashr i32 %3404, 1
  %3406 = sub nsw i32 1597463174, %3405
  %3407 = bitcast i32 %3406 to float
  %3408 = fmul fast float %3328, 5.000000e-01
  %3409 = fmul fast float %3407, %3407
  %3410 = fmul fast float %3409, %3408
  %3411 = fsub fast float 1.500000e+00, %3410
  %3412 = fmul fast float %3407, %3328
  %3413 = fmul fast float %3412, %3411
  %3414 = bitcast float %3329 to i32
  %3415 = ashr i32 %3414, 1
  %3416 = sub nsw i32 1597463174, %3415
  %3417 = bitcast i32 %3416 to float
  %3418 = fmul fast float %3329, 5.000000e-01
  %3419 = fmul fast float %3417, %3417
  %3420 = fmul fast float %3419, %3418
  %3421 = fsub fast float 1.500000e+00, %3420
  %3422 = fmul fast float %3417, %3329
  %3423 = fmul fast float %3422, %3421
  %3424 = bitcast float %3330 to i32
  %3425 = ashr i32 %3424, 1
  %3426 = sub nsw i32 1597463174, %3425
  %3427 = bitcast i32 %3426 to float
  %3428 = fmul fast float %3330, 5.000000e-01
  %3429 = fmul fast float %3427, %3427
  %3430 = fmul fast float %3429, %3428
  %3431 = fsub fast float 1.500000e+00, %3430
  %3432 = fmul fast float %3427, %3330
  %3433 = fmul fast float %3432, %3431
  %3434 = fsub fast float %3413, %3395
  %3435 = fsub fast float %3423, %3399
  %3436 = fsub fast float %3433, %3403
  %3437 = fmul fast float %3434, %3363
  %3438 = fmul fast float %3435, %3365
  %3439 = fmul fast float %3436, %3370
  %3440 = fadd fast float %3437, %3378
  %3441 = fadd fast float %3438, %3382
  %3442 = fadd fast float %3439, %3386
  %3443 = call float @dx.op.unary.f32(i32 7, float %3440)  ; Saturate(value)
  %3444 = call float @dx.op.unary.f32(i32 7, float %3441)  ; Saturate(value)
  %3445 = call float @dx.op.unary.f32(i32 7, float %3442)  ; Saturate(value)
  %3446 = fmul fast float %3443, %3443
  %3447 = fmul fast float %3444, %3444
  %3448 = fmul fast float %3445, %3445
  %3449 = fsub fast float %3446, %3328
  %3450 = fsub fast float %3447, %3329
  %3451 = fsub fast float %3448, %3330
  %3452 = fmul fast float %3449, %3353
  %3453 = fmul fast float %3450, %3353
  %3454 = fmul fast float %3451, %3353
  %3455 = fadd fast float %3452, %3328
  %3456 = fadd fast float %3453, %3329
  %3457 = fadd fast float %3454, %3330
  %3458 = fadd fast float %3375, %3339
  %3459 = fsub fast float %3458, %3392
  %3460 = call float @dx.op.unary.f32(i32 7, float %3459)  ; Saturate(value)
  %3461 = fsub fast float %3460, %3339
  %3462 = fmul fast float %3461, %3353
  %3463 = fadd fast float %3462, %3339
  br label %3517

; <label>:3464                                    ; preds = %3352
  %3465 = and i32 %3355, 134217728
  %3466 = icmp eq i32 %3465, 0
  br i1 %3466, label %3501, label %3467

; <label>:3467                                    ; preds = %3464
  %3468 = call float @dx.op.unary.f32(i32 24, float %620)  ; Sqrt(value)
  %3469 = call float @dx.op.unary.f32(i32 24, float %621)  ; Sqrt(value)
  %3470 = call float @dx.op.unary.f32(i32 24, float %622)  ; Sqrt(value)
  %3471 = fadd fast float %3468, -5.000000e-01
  %3472 = fadd fast float %3469, -5.000000e-01
  %3473 = fadd fast float %3470, -5.000000e-01
  %3474 = fmul fast float %3471, %3353
  %3475 = fmul fast float %3472, %3353
  %3476 = fmul fast float %3473, %3353
  %3477 = fadd fast float %3474, 5.000000e-01
  %3478 = fadd fast float %3475, 5.000000e-01
  %3479 = fadd fast float %3476, 5.000000e-01
  %3480 = call float @dx.op.unary.f32(i32 24, float %3328)  ; Sqrt(value)
  %3481 = call float @dx.op.unary.f32(i32 24, float %3329)  ; Sqrt(value)
  %3482 = call float @dx.op.unary.f32(i32 24, float %3330)  ; Sqrt(value)
  %3483 = fmul fast float %3477, 2.000000e+00
  %3484 = fsub fast float 1.000000e+00, %3483
  %3485 = fmul fast float %3484, %3480
  %3486 = fadd fast float %3485, %3483
  %3487 = fmul fast float %3486, %3480
  %3488 = fmul fast float %3478, 2.000000e+00
  %3489 = fsub fast float 1.000000e+00, %3488
  %3490 = fmul fast float %3489, %3481
  %3491 = fadd fast float %3490, %3488
  %3492 = fmul fast float %3491, %3481
  %3493 = fmul fast float %3479, 2.000000e+00
  %3494 = fsub fast float 1.000000e+00, %3493
  %3495 = fmul fast float %3494, %3482
  %3496 = fadd fast float %3495, %3493
  %3497 = fmul fast float %3496, %3482
  %3498 = fmul fast float %3487, %3487
  %3499 = fmul fast float %3492, %3492
  %3500 = fmul fast float %3497, %3497
  br label %3517

; <label>:3501                                    ; preds = %3464
  %3502 = fmul fast float %620, %620
  %3503 = fmul fast float %621, %621
  %3504 = fmul fast float %622, %622
  %3505 = fadd fast float %3502, -1.000000e+00
  %3506 = fadd fast float %3503, -1.000000e+00
  %3507 = fadd fast float %3504, -1.000000e+00
  %3508 = fmul fast float %3353, %3505
  %3509 = fmul fast float %3353, %3506
  %3510 = fmul fast float %3353, %3507
  %3511 = fadd fast float %3508, 1.000000e+00
  %3512 = fadd fast float %3509, 1.000000e+00
  %3513 = fadd fast float %3510, 1.000000e+00
  %3514 = fmul fast float %3511, %3328
  %3515 = fmul fast float %3512, %3329
  %3516 = fmul fast float %3513, %3330
  br label %3517

; <label>:3517                                    ; preds = %3501, %3467, %3358, %3314
  %3518 = phi float [ %3463, %3358 ], [ %3339, %3467 ], [ %3339, %3501 ], [ 0x3FA23C0BE0000000, %3314 ]
  %3519 = phi float [ %3455, %3358 ], [ %3498, %3467 ], [ %3514, %3501 ], [ 1.000000e+00, %3314 ]
  %3520 = phi float [ %3456, %3358 ], [ %3499, %3467 ], [ %3515, %3501 ], [ 1.000000e+00, %3314 ]
  %3521 = phi float [ %3457, %3358 ], [ %3500, %3467 ], [ %3516, %3501 ], [ 1.000000e+00, %3314 ]
  %3522 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3523 = extractvalue %dx.types.CBufRet.i32 %3522, 1
  %3524 = and i32 %3523, 1
  %3525 = icmp ne i32 %3524, 0
  %3526 = add i32 %52, 356
  %3527 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3526, i32 undef)  ; BufferLoad(srv,index,wot)
  %3528 = extractvalue %dx.types.ResRet.i32 %3527, 0
  %3529 = and i32 %3528, 32
  %3530 = icmp ne i32 %3529, 0
  %3531 = and i1 %3525, %3530
  %3532 = select i1 %3531, float 1.000000e+00, float %3519
  %3533 = select i1 %3531, float 0x3FD3333340000000, float %3520
  %3534 = select i1 %3531, float 0x3FD3333340000000, float %3521
  %3535 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3132, i32 undef)  ; BufferLoad(srv,index,wot)
  %3536 = extractvalue %dx.types.ResRet.i32 %3535, 0
  %3537 = and i32 %3536, 32
  %3538 = icmp eq i32 %3537, 0
  br i1 %3538, label %3611, label %3539

; <label>:3539                                    ; preds = %3517
  %3540 = add i32 %52, 140
  %3541 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3540, i32 undef)  ; BufferLoad(srv,index,wot)
  %3542 = extractvalue %dx.types.ResRet.i32 %3541, 0
  %3543 = add i32 %52, 436
  %3544 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3543, i32 undef)  ; BufferLoad(srv,index,wot)
  %3545 = extractvalue %dx.types.ResRet.i32 %3544, 0
  %3546 = add i32 %3545, 0
  %3547 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3546, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3548 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3547, %dx.types.Handle %106, float %3239, float %3240, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3549 = extractvalue %dx.types.ResRet.f32 %3548, 0
  %3550 = extractvalue %dx.types.ResRet.f32 %3548, 1
  %3551 = extractvalue %dx.types.ResRet.f32 %3548, 2
  %3552 = extractvalue %dx.types.ResRet.f32 %3548, 3
  %3553 = and i32 %3542, 255
  %3554 = uitofp i32 %3553 to float
  %3555 = lshr i32 %3542, 8
  %3556 = and i32 %3555, 255
  %3557 = uitofp i32 %3556 to float
  %3558 = lshr i32 %3542, 16
  %3559 = and i32 %3558, 255
  %3560 = uitofp i32 %3559 to float
  %3561 = fmul fast float %3560, 0x3F70101000000000
  %3562 = fmul fast float %3549, %3554
  %3563 = fadd fast float %3562, %3557
  %3564 = fmul fast float %3563, 0x3F70101000000000
  %3565 = fadd fast float %3550, -5.000000e-01
  %3566 = fadd fast float %3552, -5.000000e-01
  %3567 = fmul fast float %3565, %3561
  %3568 = fmul fast float %3566, %3561
  %3569 = fadd fast float %3567, 5.000000e-01
  %3570 = fadd fast float %3568, 5.000000e-01
  %3571 = fmul fast float %3569, 2.000000e+00
  %3572 = fadd fast float %3571, -1.000000e+00
  %3573 = fmul fast float %3570, 2.000000e+00
  %3574 = fadd fast float %3573, -1.000000e+00
  %3575 = fadd fast float %3572, %3574
  %3576 = fmul fast float %3575, 5.000000e-01
  %3577 = fsub fast float %3572, %3574
  %3578 = fmul fast float %3577, 5.000000e-01
  %3579 = call float @dx.op.unary.f32(i32 6, float %3576)  ; FAbs(value)
  %3580 = fsub fast float 1.000000e+00, %3579
  %3581 = call float @dx.op.unary.f32(i32 6, float %3578)  ; FAbs(value)
  %3582 = fsub fast float %3580, %3581
  %3583 = call float @dx.op.dot3.f32(i32 55, float %3576, float %3578, float %3582, float %3576, float %3578, float %3582)  ; Dot3(ax,ay,az,bx,by,bz)
  %3584 = call float @dx.op.unary.f32(i32 25, float %3583)  ; Rsqrt(value)
  %3585 = fmul fast float %3576, %3584
  %3586 = fmul fast float %3578, %3584
  %3587 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3132, i32 undef)  ; BufferLoad(srv,index,wot)
  %3588 = extractvalue %dx.types.ResRet.i32 %3587, 0
  %3589 = and i32 %3588, 67108864
  %3590 = icmp eq i32 %3589, 0
  br i1 %3590, label %3607, label %3591

; <label>:3591                                    ; preds = %3539
  %3592 = add i32 %52, 328
  %3593 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3592, i32 undef)  ; BufferLoad(srv,index,wot)
  %3594 = extractvalue %dx.types.ResRet.i32 %3593, 0
  %3595 = and i32 %3594, 65535
  %3596 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3595)  ; LegacyF16ToF32(value)
  %3597 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3149, i32 undef)  ; BufferLoad(srv,index,wot)
  %3598 = extractvalue %dx.types.ResRet.i32 %3597, 0
  %3599 = and i32 %3598, 65535
  %3600 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3599)  ; LegacyF16ToF32(value)
  %3601 = lshr i32 %3594, 16
  %3602 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3601)  ; LegacyF16ToF32(value)
  %3603 = fsub fast float %3564, %3602
  %3604 = fmul fast float %3603, %3596
  %3605 = fadd fast float %3604, %3600
  %3606 = call float @dx.op.unary.f32(i32 7, float %3605)  ; Saturate(value)
  br label %3607

; <label>:3607                                    ; preds = %3591, %3539
  %3608 = phi float [ %3606, %3591 ], [ %3564, %3539 ]
  %3609 = call float @dx.op.dot2.f32(i32 54, float %3585, float %3586, float %3143, float %3144)  ; Dot2(ax,ay,bx,by)
  %3610 = call float @dx.op.dot2.f32(i32 54, float %3585, float %3586, float %3145, float %3146)  ; Dot2(ax,ay,bx,by)
  br label %3611

; <label>:3611                                    ; preds = %3607, %3517
  %3612 = phi float [ %3608, %3607 ], [ 0x3FD6666660000000, %3517 ]
  %3613 = phi float [ %3609, %3607 ], [ 0.000000e+00, %3517 ]
  %3614 = phi float [ %3610, %3607 ], [ 0.000000e+00, %3517 ]
  %3615 = phi float [ %3551, %3607 ], [ 1.000000e+00, %3517 ]
  %3616 = add i32 %52, 208
  %3617 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3616, i32 undef)  ; BufferLoad(srv,index,wot)
  %3618 = extractvalue %dx.types.ResRet.i32 %3617, 0
  %3619 = lshr i32 %3618, 22
  %3620 = shl nuw nsw i32 %3619, 5
  %3621 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3620)  ; LegacyF16ToF32(value)
  %3622 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3132, i32 undef)  ; BufferLoad(srv,index,wot)
  %3623 = extractvalue %dx.types.ResRet.i32 %3622, 0
  %3624 = and i32 %3623, 64
  %3625 = icmp eq i32 %3624, 0
  br i1 %3625, label %3659, label %3626

; <label>:3626                                    ; preds = %3611
  %3627 = add i32 %52, 452
  %3628 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3627, i32 undef)  ; BufferLoad(srv,index,wot)
  %3629 = extractvalue %dx.types.ResRet.i32 %3628, 0
  %3630 = add i32 %3629, 0
  %3631 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3630, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3632 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3132, i32 undef)  ; BufferLoad(srv,index,wot)
  %3633 = extractvalue %dx.types.ResRet.i32 %3632, 0
  %3634 = and i32 %3633, 131072
  %3635 = icmp eq i32 %3634, 0
  %3636 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3631, %dx.types.Handle %106, float %3239, float %3240, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3637 = extractvalue %dx.types.ResRet.f32 %3636, 0
  %3638 = extractvalue %dx.types.ResRet.f32 %3636, 1
  %3639 = extractvalue %dx.types.ResRet.f32 %3636, 2
  %3640 = fmul fast float %603, %3637
  %3641 = fmul fast float %604, %3638
  %3642 = fmul fast float %605, %3639
  br i1 %3635, label %3649, label %3643

; <label>:3643                                    ; preds = %3626
  %3644 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3645 = extractvalue %dx.types.CBufRet.f32 %3644, 0
  %3646 = fmul fast float %3645, %3640
  %3647 = fmul fast float %3645, %3641
  %3648 = fmul fast float %3645, %3642
  br label %3649

; <label>:3649                                    ; preds = %3643, %3626
  %3650 = phi float [ %3646, %3643 ], [ %3640, %3626 ]
  %3651 = phi float [ %3647, %3643 ], [ %3641, %3626 ]
  %3652 = phi float [ %3648, %3643 ], [ %3642, %3626 ]
  %3653 = fmul fast float %3650, %3621
  %3654 = select i1 %271, float %3653, float %3650
  %3655 = call float @dx.op.dot3.f32(i32 55, float %3654, float %3651, float %3652, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3656 = select i1 %271, float 0.000000e+00, float %3650
  %3657 = select i1 %271, float %3655, float %3651
  %3658 = select i1 %271, float 0.000000e+00, float %3652
  br label %3659

; <label>:3659                                    ; preds = %3649, %3611
  %3660 = phi float [ %3656, %3649 ], [ 0.000000e+00, %3611 ]
  %3661 = phi float [ %3657, %3649 ], [ 0.000000e+00, %3611 ]
  %3662 = phi float [ %3658, %3649 ], [ 0.000000e+00, %3611 ]
  %3663 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3132, i32 undef)  ; BufferLoad(srv,index,wot)
  %3664 = extractvalue %dx.types.ResRet.i32 %3663, 0
  %3665 = and i32 %3664, 1024
  %3666 = icmp eq i32 %3665, 0
  br i1 %3666, label %3697, label %3667

; <label>:3667                                    ; preds = %3659
  %3668 = add i32 %52, 200
  %3669 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3668, i32 undef)  ; BufferLoad(srv,index,wot)
  %3670 = extractvalue %dx.types.ResRet.i32 %3669, 0
  %3671 = and i32 %3670, 255
  %3672 = uitofp i32 %3671 to float
  %3673 = fmul fast float %3672, 0x3F70101020000000
  %3674 = lshr i32 %3670, 8
  %3675 = and i32 %3674, 255
  %3676 = uitofp i32 %3675 to float
  %3677 = fmul fast float %3676, 0x3F70101020000000
  %3678 = lshr i32 %3670, 16
  %3679 = and i32 %3678, 255
  %3680 = uitofp i32 %3679 to float
  %3681 = fmul fast float %3680, 0x3F70101020000000
  %3682 = fmul fast float %3673, %3673
  %3683 = fmul fast float %3677, %3677
  %3684 = fmul fast float %3681, %3681
  %3685 = add i32 %52, 520
  %3686 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3685, i32 undef)  ; BufferLoad(srv,index,wot)
  %3687 = extractvalue %dx.types.ResRet.i32 %3686, 0
  %3688 = add i32 %3687, 0
  %3689 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3688, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3690 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3689, %dx.types.Handle %107, float %3239, float %3240, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3691 = extractvalue %dx.types.ResRet.f32 %3690, 0
  %3692 = extractvalue %dx.types.ResRet.f32 %3690, 1
  %3693 = extractvalue %dx.types.ResRet.f32 %3690, 2
  %3694 = fmul fast float %3682, %3691
  %3695 = fmul fast float %3683, %3692
  %3696 = fmul fast float %3684, %3693
  br label %3697

; <label>:3697                                    ; preds = %3667, %3659
  %3698 = phi float [ %3694, %3667 ], [ 0.000000e+00, %3659 ]
  %3699 = phi float [ %3695, %3667 ], [ 0.000000e+00, %3659 ]
  %3700 = phi float [ %3696, %3667 ], [ 0.000000e+00, %3659 ]
  %3701 = fcmp fast ogt float %3698, 0.000000e+00
  %3702 = fcmp fast ogt float %3699, 0.000000e+00
  %3703 = fcmp fast ogt float %3700, 0.000000e+00
  %3704 = call float @dx.op.unary.f32(i32 23, float %3698)  ; Log(value)
  %3705 = call float @dx.op.unary.f32(i32 23, float %3699)  ; Log(value)
  %3706 = call float @dx.op.unary.f32(i32 23, float %3700)  ; Log(value)
  %3707 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3616, i32 undef)  ; BufferLoad(srv,index,wot)
  %3708 = extractvalue %dx.types.ResRet.i32 %3707, 0
  %3709 = lshr i32 %3708, 7
  %3710 = and i32 %3709, 32752
  %3711 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3710)  ; LegacyF16ToF32(value)
  %3712 = fmul fast float %3704, 0xBFE62E4300000000
  %3713 = fmul fast float %3712, %3711
  %3714 = fmul fast float %3705, 0xBFE62E4300000000
  %3715 = fmul fast float %3714, %3711
  %3716 = fmul fast float %3706, 0xBFE62E4300000000
  %3717 = fmul fast float %3716, %3711
  %3718 = select i1 %3701, float %3713, float 1.270000e+02
  %3719 = select i1 %3702, float %3715, float 1.270000e+02
  %3720 = select i1 %3703, float %3717, float 1.270000e+02
  %3721 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3132, i32 undef)  ; BufferLoad(srv,index,wot)
  %3722 = extractvalue %dx.types.ResRet.i32 %3721, 0
  %3723 = and i32 %3722, 10240
  %3724 = icmp eq i32 %3723, 0
  br i1 %3724, label %3745, label %3725

; <label>:3725                                    ; preds = %3697
  %3726 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3132, i32 undef)  ; BufferLoad(srv,index,wot)
  %3727 = extractvalue %dx.types.ResRet.i32 %3726, 0
  %3728 = and i32 %3727, 2048
  %3729 = icmp eq i32 %3728, 0
  br i1 %3729, label %3745, label %3730

; <label>:3730                                    ; preds = %3725
  %3731 = add i32 %52, 536
  %3732 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3731, i32 undef)  ; BufferLoad(srv,index,wot)
  %3733 = extractvalue %dx.types.ResRet.i32 %3732, 0
  %3734 = add i32 %3733, 0
  %3735 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3734, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3736 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3735, %dx.types.Handle %107, float %3239, float %3240, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3737 = extractvalue %dx.types.ResRet.f32 %3736, 3
  %3738 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3616, i32 undef)  ; BufferLoad(srv,index,wot)
  %3739 = extractvalue %dx.types.ResRet.i32 %3738, 0
  %3740 = shl i32 %3739, 4
  %3741 = and i32 %3740, 32752
  %3742 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3741)  ; LegacyF16ToF32(value)
  %3743 = fmul fast float %3742, %3737
  %3744 = call float @dx.op.binary.f32(i32 35, float %3743, float 0x3F70101020000000)  ; FMax(a,b)
  br label %3745

; <label>:3745                                    ; preds = %3730, %3725, %3697
  %3746 = phi float [ %3744, %3730 ], [ 0x3F70101020000000, %3725 ], [ 0x3F70101020000000, %3697 ]
  %3747 = add i32 %52, 144
  %3748 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3747, i32 undef)  ; BufferLoad(srv,index,wot)
  %3749 = extractvalue %dx.types.ResRet.i32 %3748, 0
  %3750 = and i32 %3749, 255
  %3751 = uitofp i32 %3750 to float
  %3752 = lshr i32 %3749, 8
  %3753 = and i32 %3752, 255
  %3754 = uitofp i32 %3753 to float
  %3755 = call float @dx.op.dot3.f32(i32 55, float %3532, float %3533, float %3534, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3756 = fmul fast float %3754, %3755
  %3757 = fadd fast float %3756, %3751
  %3758 = fmul fast float %3757, 0x3F70101020000000
  %3759 = call float @dx.op.unary.f32(i32 7, float %3758)  ; Saturate(value)
  br i1 %3131, label %3760, label %3795

; <label>:3760                                    ; preds = %3745
  %3761 = fmul fast float %3746, 2.000000e+00
  %3762 = fcmp fast olt float %3718, 1.270000e+02
  %3763 = fcmp fast olt float %3719, 1.270000e+02
  %3764 = fcmp fast olt float %3720, 1.270000e+02
  %3765 = fmul fast float %3718, 0xBFF7154760000000
  %3766 = fmul fast float %3765, %3761
  %3767 = fmul fast float %3719, 0xBFF7154760000000
  %3768 = fmul fast float %3767, %3761
  %3769 = fmul fast float %3720, 0xBFF7154760000000
  %3770 = fmul fast float %3769, %3761
  %3771 = call float @dx.op.unary.f32(i32 21, float %3766)  ; Exp(value)
  %3772 = call float @dx.op.unary.f32(i32 21, float %3768)  ; Exp(value)
  %3773 = call float @dx.op.unary.f32(i32 21, float %3770)  ; Exp(value)
  %3774 = call float @dx.op.unary.f32(i32 7, float %3771)  ; Saturate(value)
  %3775 = call float @dx.op.unary.f32(i32 7, float %3772)  ; Saturate(value)
  %3776 = call float @dx.op.unary.f32(i32 7, float %3773)  ; Saturate(value)
  %3777 = fadd fast float %3774, -1.000000e+00
  %3778 = select i1 %3762, float %3777, float -1.000000e+00
  %3779 = fadd fast float %3775, -1.000000e+00
  %3780 = select i1 %3763, float %3779, float -1.000000e+00
  %3781 = fadd fast float %3776, -1.000000e+00
  %3782 = select i1 %3764, float %3781, float -1.000000e+00
  %3783 = fmul fast float %3778, %3312
  %3784 = fmul fast float %3780, %3312
  %3785 = fmul fast float %3782, %3312
  %3786 = fadd fast float %3783, 1.000000e+00
  %3787 = fadd fast float %3784, 1.000000e+00
  %3788 = fadd fast float %3785, 1.000000e+00
  %3789 = fmul fast float %3786, %3116
  %3790 = fmul fast float %3787, %3117
  %3791 = fmul fast float %3788, %3118
  %3792 = fmul fast float %3786, %3119
  %3793 = fmul fast float %3787, %3120
  %3794 = fmul fast float %3788, %3121
  br label %3795

; <label>:3795                                    ; preds = %3760, %3745
  %3796 = phi float [ %3789, %3760 ], [ %3116, %3745 ]
  %3797 = phi float [ %3790, %3760 ], [ %3117, %3745 ]
  %3798 = phi float [ %3791, %3760 ], [ %3118, %3745 ]
  %3799 = phi float [ %3792, %3760 ], [ %3119, %3745 ]
  %3800 = phi float [ %3793, %3760 ], [ %3120, %3745 ]
  %3801 = phi float [ %3794, %3760 ], [ %3121, %3745 ]
  %3802 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3132, i32 undef)  ; BufferLoad(srv,index,wot)
  %3803 = extractvalue %dx.types.ResRet.i32 %3802, 0
  %3804 = and i32 %3803, 3
  %3805 = icmp eq i32 %3804, 3
  br i1 %3805, label %3884, label %3806

; <label>:3806                                    ; preds = %3795
  %3807 = and i32 %3803, 16
  %3808 = icmp ne i32 %3807, 0
  %3809 = select i1 %3808, float %3312, float 0.000000e+00
  %3810 = icmp eq i32 %3804, 0
  br i1 %3810, label %3811, label %3839

; <label>:3811                                    ; preds = %3806
  %3812 = and i32 %3803, 64
  %3813 = icmp ne i32 %3812, 0
  %3814 = select i1 %3813, float %3312, float 0.000000e+00
  %3815 = fsub fast float %3532, %3796
  %3816 = fsub fast float %3533, %3797
  %3817 = fsub fast float %3534, %3798
  %3818 = fmul fast float %3809, %3815
  %3819 = fmul fast float %3809, %3816
  %3820 = fmul fast float %3809, %3817
  %3821 = fadd fast float %3818, %3796
  %3822 = fadd fast float %3819, %3797
  %3823 = fadd fast float %3820, %3798
  %3824 = fsub fast float %3518, %3125
  %3825 = fmul fast float %3809, %3824
  %3826 = fadd fast float %3825, %3125
  %3827 = fsub fast float %3660, %3799
  %3828 = fsub fast float %3661, %3800
  %3829 = fsub fast float %3662, %3801
  %3830 = fmul fast float %3814, %3827
  %3831 = fmul fast float %3814, %3828
  %3832 = fmul fast float %3814, %3829
  %3833 = fadd fast float %3830, %3799
  %3834 = fadd fast float %3831, %3800
  %3835 = fadd fast float %3832, %3801
  %3836 = fsub fast float %3759, %3129
  %3837 = fmul fast float %3809, %3836
  %3838 = fadd fast float %3837, %3129
  br label %3884

; <label>:3839                                    ; preds = %3806
  %3840 = icmp eq i32 %3804, 1
  br i1 %3840, label %3841, label %3854

; <label>:3841                                    ; preds = %3839
  %3842 = fadd fast float %3532, -1.000000e+00
  %3843 = fadd fast float %3533, -1.000000e+00
  %3844 = fadd fast float %3534, -1.000000e+00
  %3845 = fmul fast float %3809, %3842
  %3846 = fmul fast float %3809, %3843
  %3847 = fmul fast float %3809, %3844
  %3848 = fadd fast float %3845, 1.000000e+00
  %3849 = fadd fast float %3846, 1.000000e+00
  %3850 = fadd fast float %3847, 1.000000e+00
  %3851 = fmul fast float %3848, %3796
  %3852 = fmul fast float %3849, %3797
  %3853 = fmul fast float %3850, %3798
  br label %3884

; <label>:3854                                    ; preds = %3839
  %3855 = icmp eq i32 %3804, 2
  br i1 %3855, label %3856, label %3884

; <label>:3856                                    ; preds = %3854
  %3857 = call float @dx.op.unary.f32(i32 24, float %3532)  ; Sqrt(value)
  %3858 = call float @dx.op.unary.f32(i32 24, float %3533)  ; Sqrt(value)
  %3859 = call float @dx.op.unary.f32(i32 24, float %3534)  ; Sqrt(value)
  %3860 = fadd fast float %3857, -5.000000e-01
  %3861 = fadd fast float %3858, -5.000000e-01
  %3862 = fadd fast float %3859, -5.000000e-01
  %3863 = fmul fast float %3860, %3809
  %3864 = fmul fast float %3861, %3809
  %3865 = fmul fast float %3862, %3809
  %3866 = fadd fast float %3863, 5.000000e-01
  %3867 = fadd fast float %3864, 5.000000e-01
  %3868 = fadd fast float %3865, 5.000000e-01
  %3869 = fmul fast float %3866, 2.000000e+00
  %3870 = fsub fast float 1.000000e+00, %3869
  %3871 = fmul fast float %3870, %3796
  %3872 = fadd fast float %3871, %3869
  %3873 = fmul fast float %3872, %3796
  %3874 = fmul fast float %3867, 2.000000e+00
  %3875 = fsub fast float 1.000000e+00, %3874
  %3876 = fmul fast float %3875, %3797
  %3877 = fadd fast float %3876, %3874
  %3878 = fmul fast float %3877, %3797
  %3879 = fmul fast float %3868, 2.000000e+00
  %3880 = fsub fast float 1.000000e+00, %3879
  %3881 = fmul fast float %3880, %3798
  %3882 = fadd fast float %3881, %3879
  %3883 = fmul fast float %3882, %3798
  br label %3884

; <label>:3884                                    ; preds = %3856, %3854, %3841, %3811, %3795
  %3885 = phi float [ %3796, %3795 ], [ %3873, %3856 ], [ %3796, %3854 ], [ %3851, %3841 ], [ %3821, %3811 ]
  %3886 = phi float [ %3797, %3795 ], [ %3878, %3856 ], [ %3797, %3854 ], [ %3852, %3841 ], [ %3822, %3811 ]
  %3887 = phi float [ %3798, %3795 ], [ %3883, %3856 ], [ %3798, %3854 ], [ %3853, %3841 ], [ %3823, %3811 ]
  %3888 = phi float [ %3799, %3795 ], [ %3799, %3856 ], [ %3799, %3854 ], [ %3799, %3841 ], [ %3833, %3811 ]
  %3889 = phi float [ %3800, %3795 ], [ %3800, %3856 ], [ %3800, %3854 ], [ %3800, %3841 ], [ %3834, %3811 ]
  %3890 = phi float [ %3801, %3795 ], [ %3801, %3856 ], [ %3801, %3854 ], [ %3801, %3841 ], [ %3835, %3811 ]
  %3891 = phi float [ %3125, %3795 ], [ %3125, %3856 ], [ %3125, %3854 ], [ %3125, %3841 ], [ %3826, %3811 ]
  %3892 = phi float [ %3129, %3795 ], [ %3129, %3856 ], [ %3129, %3854 ], [ %3129, %3841 ], [ %3838, %3811 ]
  %3893 = and i32 %3803, 12
  %3894 = icmp eq i32 %3893, 12
  br i1 %3894, label %4001, label %3895

; <label>:3895                                    ; preds = %3884
  %3896 = and i32 %3803, 2097184
  %3897 = icmp eq i32 %3896, 2097184
  %3898 = select i1 %3897, float %3312, float 0.000000e+00
  %3899 = and i32 %3803, 4194336
  %3900 = icmp eq i32 %3899, 4194336
  %3901 = select i1 %3900, float %3312, float 0.000000e+00
  %3902 = and i32 %3803, 8388640
  %3903 = icmp eq i32 %3902, 8388640
  %3904 = select i1 %3903, float %3312, float 0.000000e+00
  %3905 = and i32 %3803, 1024
  %3906 = icmp ne i32 %3905, 0
  %3907 = select i1 %3906, float %3312, float 0.000000e+00
  %3908 = and i32 %3803, 2048
  %3909 = icmp ne i32 %3908, 0
  %3910 = select i1 %3909, float %3312, float 0.000000e+00
  %3911 = icmp eq i32 %3893, 0
  br i1 %3911, label %3912, label %3937

; <label>:3912                                    ; preds = %3895
  %3913 = fsub fast float %3613, %3114
  %3914 = fsub fast float %3614, %3115
  %3915 = fmul fast float %3898, %3913
  %3916 = fmul fast float %3898, %3914
  %3917 = fadd fast float %3915, %3114
  %3918 = fadd fast float %3916, %3115
  %3919 = fsub fast float %3615, %3127
  %3920 = fmul fast float %3901, %3919
  %3921 = fadd fast float %3920, %3127
  %3922 = fsub fast float %3612, %3126
  %3923 = fmul fast float %3904, %3922
  %3924 = fadd fast float %3923, %3126
  %3925 = fsub fast float %3718, %3122
  %3926 = fsub fast float %3719, %3123
  %3927 = fsub fast float %3720, %3124
  %3928 = fmul fast float %3907, %3925
  %3929 = fmul fast float %3907, %3926
  %3930 = fmul fast float %3907, %3927
  %3931 = fadd fast float %3928, %3122
  %3932 = fadd fast float %3929, %3123
  %3933 = fadd fast float %3930, %3124
  %3934 = fsub fast float %3746, %3128
  %3935 = fmul fast float %3910, %3934
  %3936 = fadd fast float %3935, %3128
  br label %4001

; <label>:3937                                    ; preds = %3895
  %3938 = icmp eq i32 %3893, 4
  br i1 %3938, label %3939, label %3979

; <label>:3939                                    ; preds = %3937
  %3940 = fmul fast float %3898, %3613
  %3941 = fmul fast float %3898, %3614
  %3942 = fadd fast float %3940, %3114
  %3943 = fadd fast float %3941, %3115
  %3944 = call float @dx.op.binary.f32(i32 36, float %3127, float %3615)  ; FMin(a,b)
  %3945 = fsub fast float %3944, %3127
  %3946 = fmul fast float %3945, %3901
  %3947 = fadd fast float %3946, %3127
  %3948 = fadd fast float %3612, %3126
  %3949 = fmul fast float %3948, 0x3FF337FAE0000000
  %3950 = fmul fast float %3126, %3126
  %3951 = fmul fast float %3612, %3612
  %3952 = fadd fast float %3951, %3950
  %3953 = fmul fast float %3952, 0x3FE5152B00000000
  %3954 = fmul fast float %3126, 0xBFCC1F85E0000000
  %3955 = fmul fast float %3954, %3612
  %3956 = fadd fast float %3955, 0xBFE1363700000000
  %3957 = fadd fast float %3956, %3949
  %3958 = fsub fast float %3957, %3953
  %3959 = fmul fast float %3948, 0x3FBA6F0D00000000
  %3960 = fmul fast float %3952, 0x3FD0432880000000
  %3961 = fmul fast float %3126, 0xBFEF110800000000
  %3962 = fmul fast float %3961, %3612
  %3963 = fadd fast float %3962, 1.000000e+00
  %3964 = fsub fast float %3963, %3959
  %3965 = fadd fast float %3964, %3960
  %3966 = fdiv fast float %3958, %3965
  %3967 = call float @dx.op.unary.f32(i32 7, float %3966)  ; Saturate(value)
  %3968 = fsub fast float %3967, %3126
  %3969 = fmul fast float %3968, %3904
  %3970 = fadd fast float %3969, %3126
  %3971 = fmul fast float %3907, %3718
  %3972 = fmul fast float %3907, %3719
  %3973 = fmul fast float %3907, %3720
  %3974 = fadd fast float %3971, %3122
  %3975 = fadd fast float %3972, %3123
  %3976 = fadd fast float %3973, %3124
  %3977 = fmul fast float %3910, %3746
  %3978 = fadd fast float %3977, %3128
  br label %4001

; <label>:3979                                    ; preds = %3937
  %3980 = icmp eq i32 %3893, 8
  br i1 %3980, label %3981, label %4001

; <label>:3981                                    ; preds = %3979
  %3982 = fmul fast float %3898, %3613
  %3983 = fmul fast float %3898, %3614
  %3984 = fadd fast float %3982, %3114
  %3985 = fadd fast float %3983, %3115
  %3986 = call float @dx.op.binary.f32(i32 36, float %3127, float %3615)  ; FMin(a,b)
  %3987 = fsub fast float %3986, %3127
  %3988 = fmul fast float %3987, %3901
  %3989 = fadd fast float %3988, %3127
  %3990 = fsub fast float %3612, %3126
  %3991 = fmul fast float %3904, %3990
  %3992 = fadd fast float %3991, %3126
  %3993 = fmul fast float %3907, %3718
  %3994 = fmul fast float %3907, %3719
  %3995 = fmul fast float %3907, %3720
  %3996 = fadd fast float %3993, %3122
  %3997 = fadd fast float %3994, %3123
  %3998 = fadd fast float %3995, %3124
  %3999 = fmul fast float %3910, %3746
  %4000 = fadd fast float %3999, %3128
  br label %4001

; <label>:4001                                    ; preds = %3981, %3979, %3939, %3912, %3884, %3311, %3130, %3113
  %4002 = phi float [ %3114, %3884 ], [ %3114, %3311 ], [ %3114, %3113 ], [ %3114, %3130 ], [ %3917, %3912 ], [ %3942, %3939 ], [ %3114, %3979 ], [ %3984, %3981 ]
  %4003 = phi float [ %3115, %3884 ], [ %3115, %3311 ], [ %3115, %3113 ], [ %3115, %3130 ], [ %3918, %3912 ], [ %3943, %3939 ], [ %3115, %3979 ], [ %3985, %3981 ]
  %4004 = phi float [ %3885, %3884 ], [ %3116, %3311 ], [ %3116, %3113 ], [ %3116, %3130 ], [ %3885, %3912 ], [ %3885, %3939 ], [ %3885, %3979 ], [ %3885, %3981 ]
  %4005 = phi float [ %3886, %3884 ], [ %3117, %3311 ], [ %3117, %3113 ], [ %3117, %3130 ], [ %3886, %3912 ], [ %3886, %3939 ], [ %3886, %3979 ], [ %3886, %3981 ]
  %4006 = phi float [ %3887, %3884 ], [ %3118, %3311 ], [ %3118, %3113 ], [ %3118, %3130 ], [ %3887, %3912 ], [ %3887, %3939 ], [ %3887, %3979 ], [ %3887, %3981 ]
  %4007 = phi float [ %3888, %3884 ], [ %3119, %3311 ], [ %3119, %3113 ], [ %3119, %3130 ], [ %3888, %3912 ], [ %3888, %3939 ], [ %3888, %3979 ], [ %3888, %3981 ]
  %4008 = phi float [ %3889, %3884 ], [ %3120, %3311 ], [ %3120, %3113 ], [ %3120, %3130 ], [ %3889, %3912 ], [ %3889, %3939 ], [ %3889, %3979 ], [ %3889, %3981 ]
  %4009 = phi float [ %3890, %3884 ], [ %3121, %3311 ], [ %3121, %3113 ], [ %3121, %3130 ], [ %3890, %3912 ], [ %3890, %3939 ], [ %3890, %3979 ], [ %3890, %3981 ]
  %4010 = phi float [ %3122, %3884 ], [ %3122, %3311 ], [ %3122, %3113 ], [ %3122, %3130 ], [ %3931, %3912 ], [ %3974, %3939 ], [ %3122, %3979 ], [ %3996, %3981 ]
  %4011 = phi float [ %3123, %3884 ], [ %3123, %3311 ], [ %3123, %3113 ], [ %3123, %3130 ], [ %3932, %3912 ], [ %3975, %3939 ], [ %3123, %3979 ], [ %3997, %3981 ]
  %4012 = phi float [ %3124, %3884 ], [ %3124, %3311 ], [ %3124, %3113 ], [ %3124, %3130 ], [ %3933, %3912 ], [ %3976, %3939 ], [ %3124, %3979 ], [ %3998, %3981 ]
  %4013 = phi float [ %3891, %3884 ], [ %3125, %3311 ], [ %3125, %3113 ], [ %3125, %3130 ], [ %3891, %3912 ], [ %3891, %3939 ], [ %3891, %3979 ], [ %3891, %3981 ]
  %4014 = phi float [ %3126, %3884 ], [ %3126, %3311 ], [ %3126, %3113 ], [ %3126, %3130 ], [ %3924, %3912 ], [ %3970, %3939 ], [ %3126, %3979 ], [ %3992, %3981 ]
  %4015 = phi float [ %3127, %3884 ], [ %3127, %3311 ], [ %3127, %3113 ], [ %3127, %3130 ], [ %3921, %3912 ], [ %3947, %3939 ], [ %3127, %3979 ], [ %3989, %3981 ]
  %4016 = phi float [ %3128, %3884 ], [ %3128, %3311 ], [ %3128, %3113 ], [ %3128, %3130 ], [ %3936, %3912 ], [ %3978, %3939 ], [ %3128, %3979 ], [ %4000, %3981 ]
  %4017 = phi float [ %3892, %3884 ], [ %3129, %3311 ], [ %3129, %3113 ], [ %3129, %3130 ], [ %3892, %3912 ], [ %3892, %3939 ], [ %3892, %3979 ], [ %3892, %3981 ]
  %4018 = add i32 %52, 360
  %4019 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %4018, i32 undef)  ; BufferLoad(srv,index,wot)
  %4020 = extractvalue %dx.types.ResRet.i32 %4019, 0
  %4021 = extractvalue %dx.types.ResRet.i32 %4019, 1
  %4022 = bitcast i32 %4020 to float
  %4023 = bitcast i32 %4021 to float
  %4024 = fcmp fast oge float %4022, 0.000000e+00
  %4025 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4026 = extractvalue %dx.types.CBufRet.f32 %4025, 0
  %4027 = select i1 %4024, float %4022, float %4026
  %4028 = fadd fast float %4027, %211
  %4029 = fmul fast float %4023, %212
  %4030 = add i32 %52, 488
  %4031 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %4030, i32 undef)  ; BufferLoad(srv,index,wot)
  %4032 = extractvalue %dx.types.ResRet.i32 %4031, 0
  %4033 = add i32 %4032, 0
  %4034 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %4033, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4035 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %4034, %dx.types.Handle %107, float %88, float %89, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %4036 = extractvalue %dx.types.ResRet.f32 %4035, 0
  %4037 = fmul fast float %4029, %4036
  %4038 = fadd fast float %4028, %4037
  %4039 = and i32 %203, 65535
  %4040 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4039)  ; LegacyF16ToF32(value)
  %4041 = lshr i32 %203, 16
  %4042 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4041)  ; LegacyF16ToF32(value)
  %4043 = and i32 %204, 65535
  %4044 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4043)  ; LegacyF16ToF32(value)
  %4045 = fmul fast float %4040, %4004
  %4046 = fmul fast float %4042, %4005
  %4047 = fmul fast float %4044, %4006
  %4048 = shl i32 %205, 4
  %4049 = and i32 %4048, 32752
  %4050 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4049)  ; LegacyF16ToF32(value)
  %4051 = lshr i32 %205, 7
  %4052 = and i32 %4051, 32752
  %4053 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4052)  ; LegacyF16ToF32(value)
  %4054 = lshr i32 %205, 22
  %4055 = shl nuw nsw i32 %4054, 5
  %4056 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4055)  ; LegacyF16ToF32(value)
  %4057 = and i32 %206, 65535
  %4058 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4057)  ; LegacyF16ToF32(value)
  %4059 = fmul fast float %4050, %4007
  %4060 = fmul fast float %4059, %4058
  %4061 = fmul fast float %4053, %4008
  %4062 = fmul fast float %4061, %4058
  %4063 = fmul fast float %4056, %4009
  %4064 = fmul fast float %4063, %4058
  %4065 = call float @dx.op.dot2.f32(i32 54, float %4002, float %4003, float %4002, float %4003)  ; Dot2(ax,ay,bx,by)
  %4066 = fmul fast float %4065, 0x3FE3333340000000
  %4067 = fsub fast float 1.000000e+00, %4066
  %4068 = call float @dx.op.dot3.f32(i32 55, float %4002, float %4003, float %4067, float %4002, float %4003, float %4067)  ; Dot3(ax,ay,az,bx,by,bz)
  %4069 = call float @dx.op.unary.f32(i32 25, float %4068)  ; Rsqrt(value)
  %4070 = fmul fast float %4069, %4002
  %4071 = fmul fast float %4069, %4003
  %4072 = fmul fast float %4067, %4069
  %4073 = fmul fast float %4072, %117
  %4074 = fmul fast float %4072, %118
  %4075 = fmul fast float %4072, %119
  %4076 = fmul fast float %4070, %81
  %4077 = fmul fast float %4070, %82
  %4078 = fmul fast float %4070, %83
  %4079 = fadd fast float %4073, %4076
  %4080 = fadd fast float %4074, %4077
  %4081 = fadd fast float %4075, %4078
  %4082 = fmul fast float %129, %4071
  %4083 = fmul fast float %130, %4071
  %4084 = fmul fast float %131, %4071
  %4085 = fadd fast float %4079, %4082
  %4086 = fadd fast float %4080, %4083
  %4087 = fadd fast float %4081, %4084
  %4088 = call float @dx.op.dot3.f32(i32 55, float %4085, float %4086, float %4087, float %4085, float %4086, float %4087)  ; Dot3(ax,ay,az,bx,by,bz)
  %4089 = call float @dx.op.unary.f32(i32 25, float %4088)  ; Rsqrt(value)
  %4090 = fmul fast float %4085, %4089
  %4091 = fmul fast float %4086, %4089
  %4092 = fmul fast float %4087, %4089
  %4093 = icmp eq i32 %55, 65535
  br i1 %4093, label %4639, label %4094

; <label>:4094                                    ; preds = %4001
  %4095 = call float @dx.op.unary.f32(i32 83, float %56)  ; DerivCoarseX(value)
  %4096 = call float @dx.op.unary.f32(i32 83, float %57)  ; DerivCoarseX(value)
  %4097 = call float @dx.op.unary.f32(i32 83, float %58)  ; DerivCoarseX(value)
  %4098 = call float @dx.op.unary.f32(i32 84, float %56)  ; DerivCoarseY(value)
  %4099 = call float @dx.op.unary.f32(i32 84, float %57)  ; DerivCoarseY(value)
  %4100 = call float @dx.op.unary.f32(i32 84, float %58)  ; DerivCoarseY(value)
  %4101 = fadd fast float %4095, %56
  %4102 = fadd fast float %4096, %57
  %4103 = fadd fast float %4097, %58
  %4104 = fadd fast float %4098, %56
  %4105 = fadd fast float %4099, %57
  %4106 = fadd fast float %4100, %58
  %4107 = mul i32 %55, 48
  %4108 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4107, i32 undef)  ; BufferLoad(srv,index,wot)
  %4109 = extractvalue %dx.types.ResRet.f32 %4108, 0
  %4110 = extractvalue %dx.types.ResRet.f32 %4108, 1
  %4111 = extractvalue %dx.types.ResRet.f32 %4108, 2
  %4112 = add i32 %4107, 16
  %4113 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4112, i32 undef)  ; BufferLoad(srv,index,wot)
  %4114 = extractvalue %dx.types.ResRet.f32 %4113, 0
  %4115 = extractvalue %dx.types.ResRet.f32 %4113, 1
  %4116 = extractvalue %dx.types.ResRet.f32 %4113, 2
  %4117 = add i32 %4107, 32
  %4118 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4117, i32 undef)  ; BufferLoad(srv,index,wot)
  %4119 = extractvalue %dx.types.ResRet.f32 %4118, 0
  %4120 = extractvalue %dx.types.ResRet.f32 %4118, 1
  %4121 = extractvalue %dx.types.ResRet.f32 %4118, 2
  %4122 = extractvalue %dx.types.ResRet.f32 %4118, 3
  %4123 = bitcast float %4122 to i32
  %4124 = fmul fast float %4109, %56
  %4125 = fmul fast float %4110, %57
  %4126 = fmul fast float %4111, %58
  %4127 = fsub fast float %4124, %4114
  %4128 = fsub fast float %4125, %4115
  %4129 = fsub fast float %4126, %4116
  %4130 = call float @dx.op.unary.f32(i32 7, float %4127)  ; Saturate(value)
  %4131 = call float @dx.op.unary.f32(i32 7, float %4128)  ; Saturate(value)
  %4132 = call float @dx.op.unary.f32(i32 7, float %4129)  ; Saturate(value)
  %4133 = fmul fast float %4130, %4119
  %4134 = fmul fast float %4131, %4120
  %4135 = fmul fast float %4132, %4121
  %4136 = fadd fast float %4119, -1.000000e+00
  %4137 = fadd fast float %4120, -1.000000e+00
  %4138 = fadd fast float %4121, -1.000000e+00
  %4139 = call float @dx.op.unary.f32(i32 27, float %4133)  ; Round_ni(value)
  %4140 = call float @dx.op.unary.f32(i32 27, float %4134)  ; Round_ni(value)
  %4141 = call float @dx.op.unary.f32(i32 27, float %4135)  ; Round_ni(value)
  %4142 = call float @dx.op.binary.f32(i32 36, float %4139, float %4136)  ; FMin(a,b)
  %4143 = call float @dx.op.binary.f32(i32 36, float %4140, float %4137)  ; FMin(a,b)
  %4144 = call float @dx.op.binary.f32(i32 36, float %4141, float %4138)  ; FMin(a,b)
  %4145 = fmul fast float %4144, %4120
  %4146 = fadd fast float %4145, %4143
  %4147 = fmul fast float %4146, %4119
  %4148 = fadd fast float %4147, %4142
  %4149 = fptosi float %4148 to i32
  %4150 = add nsw i32 %4149, %4123
  %4151 = shl nsw i32 %4150, 2
  %4152 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %4151, i32 undef)  ; BufferLoad(srv,index,wot)
  %4153 = extractvalue %dx.types.ResRet.i32 %4152, 0
  %4154 = lshr i32 %4153, 16
  %4155 = icmp eq i32 %4154, 0
  br i1 %4155, label %4605, label %4156

; <label>:4156                                    ; preds = %4094
  br label %4157

; <label>:4157                                    ; preds = %4281, %4156
  %4158 = phi i32 [ %4183, %4281 ], [ %4154, %4156 ]
  %4159 = phi float [ %4282, %4281 ], [ 0.000000e+00, %4156 ]
  %4160 = phi float [ %4283, %4281 ], [ %4038, %4156 ]
  %4161 = phi float [ %4284, %4281 ], [ %4017, %4156 ]
  %4162 = phi float [ %4285, %4281 ], [ %4010, %4156 ]
  %4163 = phi float [ %4286, %4281 ], [ %4011, %4156 ]
  %4164 = phi float [ %4287, %4281 ], [ %4012, %4156 ]
  %4165 = phi float [ %4288, %4281 ], [ 0.000000e+00, %4156 ]
  %4166 = phi float [ %4289, %4281 ], [ 0.000000e+00, %4156 ]
  %4167 = phi float [ %4290, %4281 ], [ %4060, %4156 ]
  %4168 = phi float [ %4291, %4281 ], [ %4062, %4156 ]
  %4169 = phi float [ %4292, %4281 ], [ %4064, %4156 ]
  %4170 = phi float [ %4293, %4281 ], [ %4090, %4156 ]
  %4171 = phi float [ %4294, %4281 ], [ %4091, %4156 ]
  %4172 = phi float [ %4295, %4281 ], [ %4092, %4156 ]
  %4173 = phi float [ %4296, %4281 ], [ %4015, %4156 ]
  %4174 = phi float [ %4297, %4281 ], [ %4014, %4156 ]
  %4175 = phi float [ %4298, %4281 ], [ 0.000000e+00, %4156 ]
  %4176 = phi float [ %4299, %4281 ], [ %4013, %4156 ]
  %4177 = phi float [ %4300, %4281 ], [ %4045, %4156 ]
  %4178 = phi float [ %4301, %4281 ], [ %4046, %4156 ]
  %4179 = phi float [ %4302, %4281 ], [ %4047, %4156 ]
  %4180 = shl nuw nsw i32 %4158, 2
  %4181 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %4180, i32 undef)  ; BufferLoad(srv,index,wot)
  %4182 = extractvalue %dx.types.ResRet.i32 %4181, 0
  %4183 = lshr i32 %4182, 16
  %4184 = shl i32 %4182, 8
  %4185 = and i32 %4184, 16776960
  %4186 = or i32 %4185, 48
  %4187 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %4186, i32 undef)  ; BufferLoad(srv,index,wot)
  %4188 = extractvalue %dx.types.ResRet.f32 %4187, 0
  %4189 = extractvalue %dx.types.ResRet.f32 %4187, 1
  %4190 = extractvalue %dx.types.ResRet.f32 %4187, 2
  %4191 = or i32 %4185, 64
  %4192 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %4191, i32 undef)  ; BufferLoad(srv,index,wot)
  %4193 = extractvalue %dx.types.ResRet.i32 %4192, 0
  %4194 = extractvalue %dx.types.ResRet.i32 %4192, 1
  %4195 = or i32 %4185, 80
  %4196 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %4195, i32 undef)  ; BufferLoad(srv,index,wot)
  %4197 = extractvalue %dx.types.ResRet.f32 %4196, 2
  %4198 = extractvalue %dx.types.ResRet.f32 %4196, 3
  %4199 = or i32 %4185, 96
  %4200 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %4199, i32 undef)  ; BufferLoad(srv,index,wot)
  %4201 = extractvalue %dx.types.ResRet.f32 %4200, 0
  %4202 = extractvalue %dx.types.ResRet.f32 %4200, 1
  %4203 = extractvalue %dx.types.ResRet.f32 %4200, 2
  %4204 = extractvalue %dx.types.ResRet.f32 %4200, 3
  %4205 = or i32 %4185, 112
  %4206 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %4205, i32 undef)  ; BufferLoad(srv,index,wot)
  %4207 = extractvalue %dx.types.ResRet.f32 %4206, 2
  %4208 = or i32 %4185, 128
  %4209 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %4208, i32 undef)  ; BufferLoad(srv,index,wot)
  %4210 = extractvalue %dx.types.ResRet.f32 %4209, 0
  %4211 = extractvalue %dx.types.ResRet.f32 %4209, 1
  %4212 = extractvalue %dx.types.ResRet.f32 %4209, 2
  %4213 = extractvalue %dx.types.ResRet.f32 %4209, 3
  %4214 = or i32 %4185, 144
  %4215 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %4214, i32 undef)  ; BufferLoad(srv,index,wot)
  %4216 = extractvalue %dx.types.ResRet.f32 %4215, 0
  %4217 = extractvalue %dx.types.ResRet.f32 %4215, 1
  %4218 = extractvalue %dx.types.ResRet.f32 %4215, 2
  %4219 = extractvalue %dx.types.ResRet.f32 %4215, 3
  %4220 = or i32 %4185, 160
  %4221 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %4220, i32 undef)  ; BufferLoad(srv,index,wot)
  %4222 = extractvalue %dx.types.ResRet.f32 %4221, 0
  %4223 = extractvalue %dx.types.ResRet.f32 %4221, 1
  %4224 = extractvalue %dx.types.ResRet.f32 %4221, 2
  %4225 = extractvalue %dx.types.ResRet.f32 %4221, 3
  %4226 = or i32 %4185, 192
  %4227 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %4226, i32 undef)  ; BufferLoad(srv,index,wot)
  %4228 = extractvalue %dx.types.ResRet.i32 %4227, 0
  %4229 = or i32 %4185, 208
  %4230 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %4229, i32 undef)  ; BufferLoad(srv,index,wot)
  %4231 = extractvalue %dx.types.ResRet.f32 %4230, 0
  %4232 = or i32 %4185, 248
  %4233 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %4232, i32 undef)  ; BufferLoad(srv,index,wot)
  %4234 = extractvalue %dx.types.ResRet.f32 %4233, 0
  %4235 = extractvalue %dx.types.ResRet.f32 %4233, 1
  %4236 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %4185, i32 undef)  ; BufferLoad(srv,index,wot)
  %4237 = extractvalue %dx.types.ResRet.f32 %4236, 0
  %4238 = extractvalue %dx.types.ResRet.f32 %4236, 1
  %4239 = extractvalue %dx.types.ResRet.f32 %4236, 2
  %4240 = extractvalue %dx.types.ResRet.f32 %4236, 3
  %4241 = call float @dx.op.dot4.f32(i32 56, float %4237, float %4238, float %4239, float %4240, float %56, float %57, float %58, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4242 = or i32 %4185, 16
  %4243 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %4242, i32 undef)  ; BufferLoad(srv,index,wot)
  %4244 = extractvalue %dx.types.ResRet.f32 %4243, 0
  %4245 = extractvalue %dx.types.ResRet.f32 %4243, 1
  %4246 = extractvalue %dx.types.ResRet.f32 %4243, 2
  %4247 = extractvalue %dx.types.ResRet.f32 %4243, 3
  %4248 = call float @dx.op.dot4.f32(i32 56, float %4244, float %4245, float %4246, float %4247, float %56, float %57, float %58, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4249 = or i32 %4185, 32
  %4250 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %4249, i32 undef)  ; BufferLoad(srv,index,wot)
  %4251 = extractvalue %dx.types.ResRet.f32 %4250, 0
  %4252 = extractvalue %dx.types.ResRet.f32 %4250, 1
  %4253 = extractvalue %dx.types.ResRet.f32 %4250, 2
  %4254 = extractvalue %dx.types.ResRet.f32 %4250, 3
  %4255 = call float @dx.op.dot4.f32(i32 56, float %4251, float %4252, float %4253, float %4254, float %56, float %57, float %58, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4256 = call float @dx.op.unary.f32(i32 27, float %4241)  ; Round_ni(value)
  %4257 = call float @dx.op.unary.f32(i32 6, float %4256)  ; FAbs(value)
  %4258 = call float @dx.op.unary.f32(i32 27, float %4248)  ; Round_ni(value)
  %4259 = call float @dx.op.unary.f32(i32 6, float %4258)  ; FAbs(value)
  %4260 = call float @dx.op.unary.f32(i32 6, float %4255)  ; FAbs(value)
  %4261 = call float @dx.op.unary.f32(i32 27, float %4260)  ; Round_ni(value)
  %4262 = fadd fast float %4259, %4257
  %4263 = fadd fast float %4262, %4261
  %4264 = fcmp fast oeq float %4263, 0.000000e+00
  %4265 = call float @dx.op.dot4.f32(i32 56, float %4237, float %4238, float %4239, float %4240, float %4101, float %4102, float %4103, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4266 = call float @dx.op.dot4.f32(i32 56, float %4244, float %4245, float %4246, float %4247, float %4101, float %4102, float %4103, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4267 = call float @dx.op.dot4.f32(i32 56, float %4237, float %4238, float %4239, float %4240, float %4104, float %4105, float %4106, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4268 = call float @dx.op.dot4.f32(i32 56, float %4244, float %4245, float %4246, float %4247, float %4104, float %4105, float %4106, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4269 = fsub fast float %4265, %4241
  %4270 = fsub fast float %4267, %4241
  %4271 = fsub fast float %4266, %4248
  %4272 = fsub fast float %4268, %4248
  %4273 = call float @dx.op.dot3.f32(i32 55, float %4188, float %4189, float %4190, float %117, float %118, float %119)  ; Dot3(ax,ay,az,bx,by,bz)
  %4274 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4275 = extractvalue %dx.types.CBufRet.f32 %4274, 2
  %4276 = fadd fast float %4275, %4273
  %4277 = call float @dx.op.unary.f32(i32 7, float %4276)  ; Saturate(value)
  %4278 = extractvalue %dx.types.CBufRet.f32 %4274, 0
  %4279 = fcmp fast ogt float %4277, %4278
  %4280 = and i1 %4264, %4279
  br i1 %4280, label %4304, label %4281

; <label>:4281                                    ; preds = %4591, %4387, %4304, %4157
  %4282 = phi float [ %4159, %4304 ], [ %4390, %4387 ], [ %4390, %4591 ], [ %4159, %4157 ]
  %4283 = phi float [ %4160, %4304 ], [ %4160, %4387 ], [ %4567, %4591 ], [ %4160, %4157 ]
  %4284 = phi float [ %4161, %4304 ], [ %4161, %4387 ], [ %4565, %4591 ], [ %4161, %4157 ]
  %4285 = phi float [ %4162, %4304 ], [ %4162, %4387 ], [ %4543, %4591 ], [ %4162, %4157 ]
  %4286 = phi float [ %4163, %4304 ], [ %4163, %4387 ], [ %4544, %4591 ], [ %4163, %4157 ]
  %4287 = phi float [ %4164, %4304 ], [ %4164, %4387 ], [ %4545, %4591 ], [ %4164, %4157 ]
  %4288 = phi float [ %4165, %4304 ], [ %4165, %4387 ], [ %4514, %4591 ], [ %4165, %4157 ]
  %4289 = phi float [ %4166, %4304 ], [ %4166, %4387 ], [ %4512, %4591 ], [ %4166, %4157 ]
  %4290 = phi float [ %4167, %4304 ], [ %4167, %4387 ], [ %4601, %4591 ], [ %4167, %4157 ]
  %4291 = phi float [ %4168, %4304 ], [ %4168, %4387 ], [ %4602, %4591 ], [ %4168, %4157 ]
  %4292 = phi float [ %4169, %4304 ], [ %4169, %4387 ], [ %4603, %4591 ], [ %4169, %4157 ]
  %4293 = phi float [ %4170, %4304 ], [ %4170, %4387 ], [ %4493, %4591 ], [ %4170, %4157 ]
  %4294 = phi float [ %4171, %4304 ], [ %4171, %4387 ], [ %4494, %4591 ], [ %4171, %4157 ]
  %4295 = phi float [ %4172, %4304 ], [ %4172, %4387 ], [ %4495, %4591 ], [ %4172, %4157 ]
  %4296 = phi float [ %4173, %4304 ], [ %4173, %4387 ], [ %4523, %4591 ], [ %4173, %4157 ]
  %4297 = phi float [ %4174, %4304 ], [ %4174, %4387 ], [ %4520, %4591 ], [ %4174, %4157 ]
  %4298 = phi float [ %4175, %4304 ], [ %4175, %4387 ], [ %4517, %4591 ], [ %4175, %4157 ]
  %4299 = phi float [ %4176, %4304 ], [ %4176, %4387 ], [ %4510, %4591 ], [ %4176, %4157 ]
  %4300 = phi float [ %4177, %4304 ], [ %4177, %4387 ], [ %4505, %4591 ], [ %4177, %4157 ]
  %4301 = phi float [ %4178, %4304 ], [ %4178, %4387 ], [ %4506, %4591 ], [ %4178, %4157 ]
  %4302 = phi float [ %4179, %4304 ], [ %4179, %4387 ], [ %4507, %4591 ], [ %4179, %4157 ]
  %4303 = icmp eq i32 %4183, 0
  br i1 %4303, label %4604, label %4157

; <label>:4304                                    ; preds = %4157
  %4305 = extractvalue %dx.types.ResRet.f32 %4187, 3
  %4306 = extractvalue %dx.types.ResRet.f32 %4206, 3
  %4307 = extractvalue %dx.types.ResRet.f32 %4206, 1
  %4308 = extractvalue %dx.types.ResRet.f32 %4206, 0
  %4309 = extractvalue %dx.types.ResRet.f32 %4196, 1
  %4310 = extractvalue %dx.types.ResRet.f32 %4196, 0
  %4311 = extractvalue %dx.types.ResRet.i32 %4192, 3
  %4312 = extractvalue %dx.types.ResRet.i32 %4192, 2
  %4313 = bitcast float %4305 to i32
  %4314 = add i32 %4311, 0
  %4315 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4314, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4316 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4317 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4315, %dx.types.Handle %4316, float %4241, float %4248, float undef, float undef, i32 0, i32 0, i32 undef, float %4269, float %4271, float undef, float %4270, float %4272, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4318 = extractvalue %dx.types.ResRet.f32 %4317, 0
  %4319 = fmul fast float %4318, %4310
  %4320 = fadd fast float %4319, %4309
  %4321 = call float @dx.op.unary.f32(i32 7, float %4320)  ; Saturate(value)
  %4322 = fmul fast float %4241, %4201
  %4323 = call float @dx.op.tertiary.f32(i32 46, float %4202, float %4248, float %4322)  ; FMad(a,b,c)
  %4324 = fadd fast float %4323, %4308
  %4325 = fmul fast float %4241, %4203
  %4326 = call float @dx.op.tertiary.f32(i32 46, float %4204, float %4248, float %4325)  ; FMad(a,b,c)
  %4327 = fadd fast float %4326, %4307
  %4328 = fmul fast float %4269, %4201
  %4329 = call float @dx.op.tertiary.f32(i32 46, float %4202, float %4271, float %4328)  ; FMad(a,b,c)
  %4330 = fmul fast float %4269, %4203
  %4331 = call float @dx.op.tertiary.f32(i32 46, float %4204, float %4271, float %4330)  ; FMad(a,b,c)
  %4332 = fmul fast float %4270, %4201
  %4333 = call float @dx.op.tertiary.f32(i32 46, float %4202, float %4272, float %4332)  ; FMad(a,b,c)
  %4334 = fmul fast float %4270, %4203
  %4335 = call float @dx.op.tertiary.f32(i32 46, float %4204, float %4272, float %4334)  ; FMad(a,b,c)
  %4336 = add i32 %4312, 0
  %4337 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4336, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4338 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4337, %dx.types.Handle %4316, float %4324, float %4327, float undef, float undef, i32 0, i32 0, i32 undef, float %4329, float %4331, float undef, float %4333, float %4335, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4339 = extractvalue %dx.types.ResRet.f32 %4338, 0
  %4340 = and i32 %4313, 1024
  %4341 = icmp ne i32 %4340, 0
  %4342 = fcmp fast ogt float %4339, 0x3FE0101020000000
  %4343 = uitofp i1 %4342 to float
  %4344 = select i1 %4341, float %4343, float %4339
  %4345 = and i32 %4313, 8192
  %4346 = icmp ne i32 %4345, 0
  %4347 = select i1 %4346, float %4306, float 1.000000e+00
  %4348 = fmul fast float %4241, 2.000000e+00
  %4349 = fadd fast float %4348, -1.000000e+00
  %4350 = call float @dx.op.unary.f32(i32 6, float %4349)  ; FAbs(value)
  %4351 = fmul fast float %4350, %4234
  %4352 = fsub fast float %4351, %4234
  %4353 = call float @dx.op.unary.f32(i32 7, float %4352)  ; Saturate(value)
  %4354 = fmul fast float %4248, 2.000000e+00
  %4355 = fadd fast float %4354, -1.000000e+00
  %4356 = call float @dx.op.unary.f32(i32 6, float %4355)  ; FAbs(value)
  %4357 = fmul fast float %4356, %4235
  %4358 = fsub fast float %4357, %4235
  %4359 = call float @dx.op.unary.f32(i32 7, float %4358)  ; Saturate(value)
  %4360 = fmul fast float %4260, %4197
  %4361 = fsub fast float %4360, %4197
  %4362 = call float @dx.op.unary.f32(i32 7, float %4361)  ; Saturate(value)
  %4363 = fmul fast float %4321, %4347
  %4364 = fmul fast float %4363, %4318
  %4365 = fmul fast float %4364, %4353
  %4366 = fmul fast float %4365, %4344
  %4367 = fmul fast float %4366, %4359
  %4368 = fmul fast float %4367, %4362
  %4369 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4370 = extractvalue %dx.types.CBufRet.f32 %4369, 1
  %4371 = extractvalue %dx.types.CBufRet.f32 %4369, 0
  %4372 = fsub fast float %4277, %4371
  %4373 = fmul fast float %4372, %4370
  %4374 = call float @dx.op.unary.f32(i32 7, float %4373)  ; Saturate(value)
  %4375 = fmul fast float %4368, %4198
  %4376 = fadd fast float %4368, %4198
  %4377 = fmul fast float %4376, %4207
  %4378 = fsub fast float %4377, %4207
  %4379 = call float @dx.op.unary.f32(i32 7, float %4378)  ; Saturate(value)
  %4380 = and i32 %4313, 128
  %4381 = icmp ne i32 %4380, 0
  %4382 = select i1 %4381, float %4379, float %4375
  %4383 = fmul fast float %4382, %4374
  %4384 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4385 = extractvalue %dx.types.CBufRet.f32 %4384, 0
  %4386 = fcmp fast ugt float %4383, %4385
  br i1 %4386, label %4387, label %4281

; <label>:4387                                    ; preds = %4304
  %4388 = select i1 %4346, float %4383, float 0.000000e+00
  %4389 = fadd fast float %4388, %4159
  %4390 = call float @dx.op.unary.f32(i32 7, float %4389)  ; Saturate(value)
  br i1 %4346, label %4281, label %4391

; <label>:4391                                    ; preds = %4387
  %4392 = and i32 %4313, 4
  %4393 = and i32 %4313, 8
  %4394 = add i32 %4193, 0
  %4395 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4394, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4396 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4397 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4395, %dx.types.Handle %4396, float %4324, float %4327, float undef, float undef, i32 0, i32 0, i32 undef, float %4329, float %4331, float undef, float %4333, float %4335, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4398 = extractvalue %dx.types.ResRet.f32 %4397, 0
  %4399 = extractvalue %dx.types.ResRet.f32 %4397, 1
  %4400 = extractvalue %dx.types.ResRet.f32 %4397, 2
  %4401 = extractvalue %dx.types.ResRet.f32 %4397, 3
  %4402 = bitcast float %4219 to i32
  %4403 = and i32 %4402, 255
  %4404 = uitofp i32 %4403 to float
  %4405 = lshr i32 %4402, 8
  %4406 = and i32 %4405, 255
  %4407 = uitofp i32 %4406 to float
  %4408 = fmul fast float %4401, %4404
  %4409 = fadd fast float %4408, %4407
  %4410 = fmul fast float %4409, 0x3F70101000000000
  %4411 = add i32 %4194, 0
  %4412 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4411, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4413 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4412, %dx.types.Handle %4396, float %4324, float %4327, float undef, float undef, i32 0, i32 0, i32 undef, float %4329, float %4331, float undef, float %4333, float %4335, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4414 = extractvalue %dx.types.ResRet.f32 %4413, 0
  %4415 = extractvalue %dx.types.ResRet.f32 %4413, 1
  %4416 = extractvalue %dx.types.ResRet.f32 %4413, 2
  %4417 = extractvalue %dx.types.ResRet.f32 %4413, 3
  %4418 = bitcast float %4213 to i32
  %4419 = and i32 %4418, 255
  %4420 = uitofp i32 %4419 to float
  %4421 = lshr i32 %4418, 8
  %4422 = and i32 %4421, 255
  %4423 = uitofp i32 %4422 to float
  %4424 = lshr i32 %4418, 16
  %4425 = and i32 %4424, 255
  %4426 = uitofp i32 %4425 to float
  %4427 = fmul fast float %4426, 0x3F70101000000000
  %4428 = fmul fast float %4414, %4420
  %4429 = fadd fast float %4428, %4423
  %4430 = fmul fast float %4429, 0x3F70101000000000
  %4431 = fadd fast float %4415, -5.000000e-01
  %4432 = fadd fast float %4417, -5.000000e-01
  %4433 = fmul fast float %4431, %4427
  %4434 = fmul fast float %4432, %4427
  %4435 = fadd fast float %4433, 5.000000e-01
  %4436 = fadd fast float %4434, 5.000000e-01
  %4437 = fmul fast float %4398, %4222
  %4438 = fmul fast float %4399, %4223
  %4439 = fmul fast float %4400, %4224
  %4440 = fmul fast float %4435, 2.000000e+00
  %4441 = fadd fast float %4440, -1.000000e+00
  %4442 = fmul fast float %4436, 2.000000e+00
  %4443 = fadd fast float %4442, -1.000000e+00
  %4444 = fadd fast float %4441, %4443
  %4445 = fmul fast float %4444, 5.000000e-01
  %4446 = fsub fast float %4441, %4443
  %4447 = fmul fast float %4446, 5.000000e-01
  %4448 = call float @dx.op.unary.f32(i32 6, float %4445)  ; FAbs(value)
  %4449 = fsub fast float 1.000000e+00, %4448
  %4450 = call float @dx.op.unary.f32(i32 6, float %4447)  ; FAbs(value)
  %4451 = fsub fast float %4449, %4450
  %4452 = call float @dx.op.dot3.f32(i32 55, float %4445, float %4447, float %4451, float %4445, float %4447, float %4451)  ; Dot3(ax,ay,az,bx,by,bz)
  %4453 = call float @dx.op.unary.f32(i32 25, float %4452)  ; Rsqrt(value)
  %4454 = fmul fast float %4445, %4453
  %4455 = fmul fast float %4447, %4453
  %4456 = fmul fast float %4453, %4451
  %4457 = fmul fast float %4456, %4188
  %4458 = fmul fast float %4456, %4189
  %4459 = fmul fast float %4456, %4190
  %4460 = fmul fast float %4454, %4210
  %4461 = fmul fast float %4454, %4211
  %4462 = fmul fast float %4454, %4212
  %4463 = fadd fast float %4460, %4457
  %4464 = fadd fast float %4461, %4458
  %4465 = fadd fast float %4462, %4459
  %4466 = fmul fast float %4455, %4216
  %4467 = fmul fast float %4455, %4217
  %4468 = fmul fast float %4455, %4218
  %4469 = fadd fast float %4463, %4466
  %4470 = fadd fast float %4464, %4467
  %4471 = fadd fast float %4465, %4468
  %4472 = call float @dx.op.dot3.f32(i32 55, float %4469, float %4470, float %4471, float %4469, float %4470, float %4471)  ; Dot3(ax,ay,az,bx,by,bz)
  %4473 = call float @dx.op.unary.f32(i32 25, float %4472)  ; Rsqrt(value)
  %4474 = fmul fast float %4469, %4473
  %4475 = fmul fast float %4470, %4473
  %4476 = fmul fast float %4471, %4473
  %4477 = icmp ne i32 %4393, 0
  %4478 = select i1 %4477, float 1.000000e+00, float 0.000000e+00
  %4479 = fmul fast float %4383, %4478
  %4480 = and i32 %4313, 1
  %4481 = icmp eq i32 %4480, 0
  br i1 %4481, label %4482, label %4486

; <label>:4482                                    ; preds = %4391
  %4483 = fsub fast float %4474, %4170
  %4484 = fsub fast float %4475, %4171
  %4485 = fsub fast float %4476, %4172
  br label %4486

; <label>:4486                                    ; preds = %4482, %4391
  %4487 = phi float [ %4483, %4482 ], [ %4474, %4391 ]
  %4488 = phi float [ %4484, %4482 ], [ %4475, %4391 ]
  %4489 = phi float [ %4485, %4482 ], [ %4476, %4391 ]
  %4490 = fmul float %4489, %4479
  %4491 = fmul float %4488, %4479
  %4492 = fmul float %4487, %4479
  %4493 = fadd fast float %4492, %4170
  %4494 = fadd fast float %4491, %4171
  %4495 = fadd fast float %4490, %4172
  %4496 = icmp ne i32 %4392, 0
  %4497 = select i1 %4496, float 1.000000e+00, float 0.000000e+00
  %4498 = fmul fast float %4383, %4497
  %4499 = fsub fast float %4437, %4177
  %4500 = fsub fast float %4438, %4178
  %4501 = fsub fast float %4439, %4179
  %4502 = fmul fast float %4499, %4498
  %4503 = fmul fast float %4500, %4498
  %4504 = fmul fast float %4501, %4498
  %4505 = fadd fast float %4502, %4177
  %4506 = fadd fast float %4503, %4178
  %4507 = fadd fast float %4504, %4179
  %4508 = fsub fast float %4410, %4176
  %4509 = fmul fast float %4508, %4498
  %4510 = fadd fast float %4509, %4176
  %4511 = fmul fast float %4498, %4166
  %4512 = fsub fast float %4166, %4511
  %4513 = fmul fast float %4498, %4165
  %4514 = fsub fast float %4165, %4513
  %4515 = bitcast float %4231 to i32
  %4516 = fadd fast float %4383, %4175
  %4517 = call float @dx.op.unary.f32(i32 7, float %4516)  ; Saturate(value)
  %4518 = fsub fast float %4430, %4174
  %4519 = fmul fast float %4518, %4479
  %4520 = fadd fast float %4519, %4174
  %4521 = fsub fast float %4416, %4173
  %4522 = fmul fast float %4521, %4479
  %4523 = fadd fast float %4522, %4173
  br i1 %4481, label %4532, label %4524

; <label>:4524                                    ; preds = %4486
  %4525 = and i32 %4313, 32768
  %4526 = icmp eq i32 %4525, 0
  br i1 %4526, label %4542, label %4527

; <label>:4527                                    ; preds = %4524
  %4528 = fmul fast float %4479, 1.270000e+02
  %4529 = fadd fast float %4528, %4162
  %4530 = fadd fast float %4528, %4163
  %4531 = fadd fast float %4528, %4164
  br label %4542

; <label>:4532                                    ; preds = %4486
  %4533 = fsub fast float 1.270000e+02, %4162
  %4534 = fsub fast float 1.270000e+02, %4163
  %4535 = fsub fast float 1.270000e+02, %4164
  %4536 = fmul fast float %4479, %4533
  %4537 = fmul fast float %4479, %4534
  %4538 = fmul fast float %4479, %4535
  %4539 = fadd fast float %4536, %4162
  %4540 = fadd fast float %4537, %4163
  %4541 = fadd fast float %4538, %4164
  br label %4542

; <label>:4542                                    ; preds = %4532, %4527, %4524
  %4543 = phi float [ %4529, %4527 ], [ %4162, %4524 ], [ %4539, %4532 ]
  %4544 = phi float [ %4530, %4527 ], [ %4163, %4524 ], [ %4540, %4532 ]
  %4545 = phi float [ %4531, %4527 ], [ %4164, %4524 ], [ %4541, %4532 ]
  %4546 = call float @dx.op.dot3.f32(i32 55, float %4437, float %4438, float %4439, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4547 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %4548 = extractvalue %dx.types.CBufRet.f32 %4547, 0
  %4549 = extractvalue %dx.types.CBufRet.f32 %4547, 1
  %4550 = fmul fast float %4549, %4546
  %4551 = fadd fast float %4550, %4548
  %4552 = call float @dx.op.unary.f32(i32 7, float %4551)  ; Saturate(value)
  %4553 = bitcast float %4225 to i32
  %4554 = and i32 %4553, 65535
  %4555 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4554)  ; LegacyF16ToF32(value)
  %4556 = lshr i32 %4553, 16
  %4557 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4556)  ; LegacyF16ToF32(value)
  %4558 = fcmp fast oge float %4555, 0.000000e+00
  %4559 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4560 = extractvalue %dx.types.CBufRet.f32 %4559, 0
  %4561 = select i1 %4558, float %4555, float %4560
  %4562 = fadd fast float %4561, %4557
  %4563 = fsub fast float %4552, %4161
  %4564 = fmul fast float %4563, %4383
  %4565 = fadd fast float %4564, %4161
  %4566 = fmul fast float %4562, %4383
  %4567 = call float @dx.op.binary.f32(i32 35, float %4160, float %4566)  ; FMax(a,b)
  %4568 = and i32 %4313, 16
  %4569 = icmp eq i32 %4568, 0
  br i1 %4569, label %4591, label %4570

; <label>:4570                                    ; preds = %4542
  %4571 = add i32 %4228, 0
  %4572 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4571, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4573 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4572, %dx.types.Handle %4396, float %4324, float %4327, float undef, float undef, i32 0, i32 0, i32 undef, float %4329, float %4331, float undef, float %4333, float %4335, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4574 = extractvalue %dx.types.ResRet.f32 %4573, 0
  %4575 = extractvalue %dx.types.ResRet.f32 %4573, 1
  %4576 = extractvalue %dx.types.ResRet.f32 %4573, 2
  %4577 = and i32 %4515, 65535
  %4578 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4577)  ; LegacyF16ToF32(value)
  %4579 = fmul fast float %4574, %4222
  %4580 = fmul fast float %4575, %4223
  %4581 = fmul fast float %4576, %4224
  %4582 = and i32 %4313, 16384
  %4583 = icmp ne i32 %4582, 0
  %4584 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4585 = extractvalue %dx.types.CBufRet.f32 %4584, 0
  %4586 = select i1 %4583, float %4585, float 1.000000e+00
  %4587 = fmul fast float %4586, %4578
  %4588 = fmul fast float %4579, %4587
  %4589 = fmul fast float %4580, %4587
  %4590 = fmul fast float %4581, %4587
  br label %4591

; <label>:4591                                    ; preds = %4570, %4542
  %4592 = phi float [ %4588, %4570 ], [ 0.000000e+00, %4542 ]
  %4593 = phi float [ %4589, %4570 ], [ 0.000000e+00, %4542 ]
  %4594 = phi float [ %4590, %4570 ], [ 0.000000e+00, %4542 ]
  %4595 = fsub fast float %4592, %4167
  %4596 = fsub fast float %4593, %4168
  %4597 = fsub fast float %4594, %4169
  %4598 = fmul fast float %4595, %4383
  %4599 = fmul fast float %4596, %4383
  %4600 = fmul fast float %4597, %4383
  %4601 = fadd fast float %4598, %4167
  %4602 = fadd fast float %4599, %4168
  %4603 = fadd fast float %4600, %4169
  br label %4281

; <label>:4604                                    ; preds = %4281
  br label %4605

; <label>:4605                                    ; preds = %4604, %4094
  %4606 = phi float [ 0.000000e+00, %4094 ], [ %4282, %4604 ]
  %4607 = phi float [ %4038, %4094 ], [ %4283, %4604 ]
  %4608 = phi float [ %4017, %4094 ], [ %4284, %4604 ]
  %4609 = phi float [ %4010, %4094 ], [ %4285, %4604 ]
  %4610 = phi float [ %4011, %4094 ], [ %4286, %4604 ]
  %4611 = phi float [ %4012, %4094 ], [ %4287, %4604 ]
  %4612 = phi float [ 0.000000e+00, %4094 ], [ %4288, %4604 ]
  %4613 = phi float [ 0.000000e+00, %4094 ], [ %4289, %4604 ]
  %4614 = phi float [ %4060, %4094 ], [ %4290, %4604 ]
  %4615 = phi float [ %4062, %4094 ], [ %4291, %4604 ]
  %4616 = phi float [ %4064, %4094 ], [ %4292, %4604 ]
  %4617 = phi float [ %4090, %4094 ], [ %4293, %4604 ]
  %4618 = phi float [ %4091, %4094 ], [ %4294, %4604 ]
  %4619 = phi float [ %4092, %4094 ], [ %4295, %4604 ]
  %4620 = phi float [ %4015, %4094 ], [ %4296, %4604 ]
  %4621 = phi float [ %4014, %4094 ], [ %4297, %4604 ]
  %4622 = phi float [ 0.000000e+00, %4094 ], [ %4298, %4604 ]
  %4623 = phi float [ %4013, %4094 ], [ %4299, %4604 ]
  %4624 = phi float [ %4045, %4094 ], [ %4300, %4604 ]
  %4625 = phi float [ %4046, %4094 ], [ %4301, %4604 ]
  %4626 = phi float [ %4047, %4094 ], [ %4302, %4604 ]
  %4627 = call float @dx.op.dot3.f32(i32 55, float %4617, float %4618, float %4619, float %4617, float %4618, float %4619)  ; Dot3(ax,ay,az,bx,by,bz)
  %4628 = call float @dx.op.unary.f32(i32 25, float %4627)  ; Rsqrt(value)
  %4629 = fmul fast float %4628, %4617
  %4630 = fmul fast float %4628, %4618
  %4631 = fmul fast float %4628, %4619
  %4632 = fadd fast float %4622, %1349
  %4633 = call float @dx.op.unary.f32(i32 7, float %4632)  ; Saturate(value)
  %4634 = call float @dx.op.dot3.f32(i32 55, float %4629, float %4630, float %4631, float %4629, float %4630, float %4631)  ; Dot3(ax,ay,az,bx,by,bz)
  %4635 = call float @dx.op.unary.f32(i32 25, float %4634)  ; Rsqrt(value)
  %4636 = fmul fast float %4635, %4629
  %4637 = fmul fast float %4635, %4630
  %4638 = fmul fast float %4635, %4631
  br label %4639

; <label>:4639                                    ; preds = %4605, %4001
  %4640 = phi float [ %4636, %4605 ], [ %4090, %4001 ]
  %4641 = phi float [ %4637, %4605 ], [ %4091, %4001 ]
  %4642 = phi float [ %4638, %4605 ], [ %4092, %4001 ]
  %4643 = phi float [ %4624, %4605 ], [ %4045, %4001 ]
  %4644 = phi float [ %4625, %4605 ], [ %4046, %4001 ]
  %4645 = phi float [ %4626, %4605 ], [ %4047, %4001 ]
  %4646 = phi float [ %4614, %4605 ], [ %4060, %4001 ]
  %4647 = phi float [ %4615, %4605 ], [ %4062, %4001 ]
  %4648 = phi float [ %4616, %4605 ], [ %4064, %4001 ]
  %4649 = phi float [ %4609, %4605 ], [ %4010, %4001 ]
  %4650 = phi float [ %4610, %4605 ], [ %4011, %4001 ]
  %4651 = phi float [ %4611, %4605 ], [ %4012, %4001 ]
  %4652 = phi float [ %4623, %4605 ], [ %4013, %4001 ]
  %4653 = phi float [ %4633, %4605 ], [ %1349, %4001 ]
  %4654 = phi float [ %4621, %4605 ], [ %4014, %4001 ]
  %4655 = phi float [ %4620, %4605 ], [ %4015, %4001 ]
  %4656 = phi float [ %4613, %4605 ], [ 0.000000e+00, %4001 ]
  %4657 = phi float [ %4612, %4605 ], [ 0.000000e+00, %4001 ]
  %4658 = phi float [ %4606, %4605 ], [ 0.000000e+00, %4001 ]
  %4659 = phi float [ %4607, %4605 ], [ %4038, %4001 ]
  %4660 = phi float [ %4608, %4605 ], [ %4017, %4001 ]
  %4661 = fadd fast float %4652, 0xBFB99999A0000000
  %4662 = call float @dx.op.unary.f32(i32 7, float %4661)  ; Saturate(value)
  %4663 = fmul fast float %4662, 0x3FF1C71C80000000
  %4664 = call float @dx.op.binary.f32(i32 36, float %4652, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4665 = fsub fast float 1.000000e+00, %4663
  %4666 = call float @dx.op.unary.f32(i32 7, float %4665)  ; Saturate(value)
  %4667 = fmul fast float %4666, %4643
  %4668 = fmul fast float %4666, %4644
  %4669 = fmul fast float %4666, %4645
  %4670 = call float @dx.op.unary.f32(i32 7, float %4667)  ; Saturate(value)
  %4671 = call float @dx.op.unary.f32(i32 7, float %4668)  ; Saturate(value)
  %4672 = call float @dx.op.unary.f32(i32 7, float %4669)  ; Saturate(value)
  %4673 = fmul fast float %4663, %4643
  %4674 = fmul fast float %4663, %4644
  %4675 = fmul fast float %4663, %4645
  %4676 = fadd fast float %4673, %4664
  %4677 = fadd fast float %4674, %4664
  %4678 = fadd fast float %4675, %4664
  %4679 = call float @dx.op.unary.f32(i32 7, float %4676)  ; Saturate(value)
  %4680 = call float @dx.op.unary.f32(i32 7, float %4677)  ; Saturate(value)
  %4681 = call float @dx.op.unary.f32(i32 7, float %4678)  ; Saturate(value)
  %4682 = call float @dx.op.unary.f32(i32 7, float %4654)  ; Saturate(value)
  %4683 = call float @dx.op.binary.f32(i32 36, float %4649, float 1.270000e+02)  ; FMin(a,b)
  %4684 = call float @dx.op.binary.f32(i32 36, float %4650, float 1.270000e+02)  ; FMin(a,b)
  %4685 = call float @dx.op.binary.f32(i32 36, float %4651, float 1.270000e+02)  ; FMin(a,b)
  %4686 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4687 = extractvalue %dx.types.CBufRet.i32 %4686, 3
  %4688 = and i32 %4687, 8
  %4689 = icmp ne i32 %4688, 0
  %4690 = call float @dx.op.binary.f32(i32 35, float %4670, float %4643)  ; FMax(a,b)
  %4691 = call float @dx.op.binary.f32(i32 35, float %4671, float %4643)  ; FMax(a,b)
  %4692 = call float @dx.op.binary.f32(i32 35, float %4672, float %4643)  ; FMax(a,b)
  %4693 = call float @dx.op.dot3.f32(i32 55, float %4670, float %4671, float %4672, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4694 = select i1 %271, float %4643, float %4670
  %4695 = select i1 %271, float %4693, float %4671
  %4696 = select i1 %271, float 1.000000e+00, float %4672
  %4697 = select i1 %4689, float %4690, float %4694
  %4698 = select i1 %4689, float %4691, float %4695
  %4699 = select i1 %4689, float %4692, float %4696
  %4700 = and i32 %247, 3
  %4701 = select i1 %241, i32 %4700, i32 0
  %4702 = icmp eq i32 %4701, 1
  br i1 %4702, label %4703, label %4779

; <label>:4703                                    ; preds = %4639
  %4704 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4705 = extractvalue %dx.types.CBufRet.f32 %4704, 0
  %4706 = extractvalue %dx.types.CBufRet.f32 %4704, 1
  %4707 = fadd fast float %4705, %197
  %4708 = fadd fast float %4706, %198
  %4709 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4710 = extractvalue %dx.types.CBufRet.f32 %4709, 0
  %4711 = extractvalue %dx.types.CBufRet.f32 %4709, 1
  %4712 = fsub fast float %4707, %4710
  %4713 = fsub fast float %4708, %4711
  %4714 = fmul fast float %4712, %4712
  %4715 = fmul fast float %4713, %4713
  %4716 = fadd fast float %4714, %4715
  %4717 = call float @dx.op.unary.f32(i32 24, float %4716)  ; Sqrt(value)
  %4718 = extractvalue %dx.types.CBufRet.f32 %4709, 2
  %4719 = fcmp fast olt float %4717, %4718
  br i1 %4719, label %4720, label %4773

; <label>:4720                                    ; preds = %4703
  %4721 = extractvalue %dx.types.CBufRet.f32 %4704, 2
  %4722 = fadd fast float %4721, %199
  %4723 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4724 = extractvalue %dx.types.CBufRet.f32 %4723, 0
  %4725 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4726 = extractvalue %dx.types.CBufRet.f32 %4725, 0
  %4727 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4728 = extractvalue %dx.types.CBufRet.f32 %4727, 0
  %4729 = extractvalue %dx.types.CBufRet.f32 %4723, 1
  %4730 = extractvalue %dx.types.CBufRet.f32 %4725, 1
  %4731 = extractvalue %dx.types.CBufRet.f32 %4727, 1
  %4732 = extractvalue %dx.types.CBufRet.f32 %4723, 3
  %4733 = extractvalue %dx.types.CBufRet.f32 %4725, 3
  %4734 = extractvalue %dx.types.CBufRet.f32 %4727, 3
  %4735 = fadd fast float %4732, %4707
  %4736 = fadd fast float %4733, %4708
  %4737 = fadd fast float %4722, %4734
  %4738 = fmul fast float %4735, %4724
  %4739 = call float @dx.op.tertiary.f32(i32 46, float %4736, float %4726, float %4738)  ; FMad(a,b,c)
  %4740 = call float @dx.op.tertiary.f32(i32 46, float %4737, float %4728, float %4739)  ; FMad(a,b,c)
  %4741 = fmul fast float %4735, %4729
  %4742 = call float @dx.op.tertiary.f32(i32 46, float %4736, float %4730, float %4741)  ; FMad(a,b,c)
  %4743 = call float @dx.op.tertiary.f32(i32 46, float %4737, float %4731, float %4742)  ; FMad(a,b,c)
  %4744 = fsub fast float %4740, %4732
  %4745 = fsub fast float %4743, %4733
  %4746 = fsub fast float %4744, %4710
  %4747 = fadd fast float %4746, %4718
  %4748 = fsub fast float %4745, %4711
  %4749 = fadd fast float %4748, %4718
  %4750 = extractvalue %dx.types.CBufRet.f32 %4709, 3
  %4751 = fmul fast float %4747, %4750
  %4752 = fmul fast float %4749, %4750
  %4753 = call float @dx.op.unary.f32(i32 7, float %4751)  ; Saturate(value)
  %4754 = call float @dx.op.unary.f32(i32 7, float %4752)  ; Saturate(value)
  %4755 = fsub fast float 1.000000e+00, %4753
  %4756 = fsub fast float 1.000000e+00, %4754
  %4757 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %46, float %4755, float %4756, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4758 = extractvalue %dx.types.ResRet.f32 %4757, 0
  %4759 = fcmp fast ugt float %4758, 0.000000e+00
  br i1 %4759, label %4760, label %4773

; <label>:4760                                    ; preds = %4720
  %4761 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4762 = extractvalue %dx.types.CBufRet.f32 %4761, 2
  %4763 = fmul fast float %4762, %4758
  %4764 = extractvalue %dx.types.CBufRet.f32 %4761, 3
  %4765 = fadd fast float %4764, %4763
  %4766 = extractvalue %dx.types.CBufRet.f32 %4727, 2
  %4767 = fadd fast float %4765, %4734
  %4768 = fmul fast float %4740, %4728
  %4769 = call float @dx.op.tertiary.f32(i32 46, float %4743, float %4731, float %4768)  ; FMad(a,b,c)
  %4770 = call float @dx.op.tertiary.f32(i32 46, float %4767, float %4766, float %4769)  ; FMad(a,b,c)
  %4771 = fsub fast float %4770, %4734
  %4772 = fsub fast float %4771, %4721
  br label %4773

; <label>:4773                                    ; preds = %4760, %4720, %4703
  %4774 = phi i1 [ true, %4760 ], [ false, %4720 ], [ false, %4703 ]
  %4775 = phi float [ %4772, %4760 ], [ -1.310720e+05, %4720 ], [ -1.310720e+05, %4703 ]
  %4776 = fsub fast float %4775, %199
  %4777 = call float @dx.op.unary.f32(i32 7, float %4776)  ; Saturate(value)
  %4778 = select i1 %4774, float %4777, float 1.000000e+00
  br label %4779

; <label>:4779                                    ; preds = %4773, %4639
  %4780 = phi float [ %4778, %4773 ], [ 0.000000e+00, %4639 ]
  %4781 = icmp eq i32 %4701, 3
  %4782 = select i1 %4781, float 1.000000e+00, float %4780
  %4783 = call float @dx.op.binary.f32(i32 35, float %4658, float %4782)  ; FMax(a,b)
  %4784 = fcmp fast olt float %4782, 1.000000e+00
  br i1 %4784, label %4785, label %4958

; <label>:4785                                    ; preds = %4779
  %4786 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 369)  ; CBufferLoadLegacy(handle,regIndex)
  %4787 = extractvalue %dx.types.CBufRet.i32 %4786, 0
  %4788 = and i32 %4787, 7
  %4789 = icmp eq i32 %4788, 0
  br i1 %4789, label %4861, label %4790

; <label>:4790                                    ; preds = %4785
  %4791 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %4792 = extractvalue %dx.types.CBufRet.f32 %4791, 0
  %4793 = extractvalue %dx.types.CBufRet.f32 %4791, 1
  %4794 = extractvalue %dx.types.CBufRet.f32 %4791, 2
  %4795 = fadd fast float %4792, %197
  %4796 = fadd fast float %4793, %198
  %4797 = fadd fast float %4794, %199
  %4798 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 151)  ; CBufferLoadLegacy(handle,regIndex)
  %4799 = extractvalue %dx.types.CBufRet.f32 %4798, 0
  %4800 = extractvalue %dx.types.CBufRet.f32 %4798, 1
  %4801 = extractvalue %dx.types.CBufRet.f32 %4798, 2
  %4802 = extractvalue %dx.types.CBufRet.f32 %4798, 3
  %4803 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 152)  ; CBufferLoadLegacy(handle,regIndex)
  %4804 = extractvalue %dx.types.CBufRet.f32 %4803, 0
  %4805 = extractvalue %dx.types.CBufRet.f32 %4803, 1
  %4806 = extractvalue %dx.types.CBufRet.f32 %4803, 2
  %4807 = extractvalue %dx.types.CBufRet.f32 %4803, 3
  %4808 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 153)  ; CBufferLoadLegacy(handle,regIndex)
  %4809 = extractvalue %dx.types.CBufRet.f32 %4808, 0
  %4810 = extractvalue %dx.types.CBufRet.f32 %4808, 1
  %4811 = extractvalue %dx.types.CBufRet.f32 %4808, 2
  %4812 = extractvalue %dx.types.CBufRet.f32 %4808, 3
  %4813 = fmul fast float %4795, %4799
  %4814 = call float @dx.op.tertiary.f32(i32 46, float %4796, float %4800, float %4813)  ; FMad(a,b,c)
  %4815 = call float @dx.op.tertiary.f32(i32 46, float %4797, float %4801, float %4814)  ; FMad(a,b,c)
  %4816 = fadd fast float %4815, %4802
  %4817 = fmul fast float %4804, %4795
  %4818 = call float @dx.op.tertiary.f32(i32 46, float %4796, float %4805, float %4817)  ; FMad(a,b,c)
  %4819 = call float @dx.op.tertiary.f32(i32 46, float %4797, float %4806, float %4818)  ; FMad(a,b,c)
  %4820 = fadd fast float %4819, %4807
  %4821 = fmul fast float %4809, %4795
  %4822 = call float @dx.op.tertiary.f32(i32 46, float %4796, float %4810, float %4821)  ; FMad(a,b,c)
  %4823 = call float @dx.op.tertiary.f32(i32 46, float %4797, float %4811, float %4822)  ; FMad(a,b,c)
  %4824 = fadd fast float %4823, %4812
  %4825 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 155)  ; CBufferLoadLegacy(handle,regIndex)
  %4826 = extractvalue %dx.types.CBufRet.f32 %4825, 1
  %4827 = extractvalue %dx.types.CBufRet.f32 %4825, 0
  %4828 = fmul fast float %4827, %282
  %4829 = fadd fast float %4824, %4828
  %4830 = fmul fast float %282, 0x401921FB60000000
  %4831 = call float @dx.op.unary.f32(i32 13, float %4830)  ; Sin(value)
  %4832 = call float @dx.op.unary.f32(i32 12, float %4830)  ; Cos(value)
  %4833 = fmul fast float %4832, %4826
  %4834 = call float @dx.op.tertiary.f32(i32 46, float %4831, float %4826, float 0.000000e+00)  ; FMad(a,b,c)
  %4835 = fmul fast float %4826, %4831
  %4836 = fsub fast float -0.000000e+00, %4835
  %4837 = call float @dx.op.tertiary.f32(i32 46, float %4832, float %4826, float 0.000000e+00)  ; FMad(a,b,c)
  br label %4838

; <label>:4838                                    ; preds = %4838, %4790
  %4839 = phi float [ 0.000000e+00, %4790 ], [ %4853, %4838 ]
  %4840 = phi i32 [ 0, %4790 ], [ %4854, %4838 ]
  %4841 = getelementptr [4 x float], [4 x float]* @PCF_OFFSETS_4.0, i32 0, i32 %4840
  %4842 = getelementptr [4 x float], [4 x float]* @PCF_OFFSETS_4.1, i32 0, i32 %4840
  %4843 = load float, float* %4841, align 4
  %4844 = load float, float* %4842, align 4
  %4845 = fmul fast float %4833, %4843
  %4846 = call float @dx.op.tertiary.f32(i32 46, float %4844, float %4836, float %4845)  ; FMad(a,b,c)
  %4847 = fmul fast float %4843, %4834
  %4848 = call float @dx.op.tertiary.f32(i32 46, float %4844, float %4837, float %4847)  ; FMad(a,b,c)
  %4849 = fadd fast float %4816, %4846
  %4850 = fadd fast float %4820, %4848
  %4851 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %2, %dx.types.Handle %48, float %4849, float %4850, float undef, float undef, i32 0, i32 0, i32 undef, float %4829)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4852 = extractvalue %dx.types.ResRet.f32 %4851, 0
  %4853 = fadd fast float %4852, %4839
  %4854 = add nuw nsw i32 %4840, 1
  %4855 = icmp eq i32 %4854, 4
  br i1 %4855, label %4856, label %4838

; <label>:4856                                    ; preds = %4838
  %4857 = fmul fast float %4853, 2.500000e-01
  %4858 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 370)  ; CBufferLoadLegacy(handle,regIndex)
  %4859 = extractvalue %dx.types.CBufRet.f32 %4858, 1
  %4860 = fmul fast float %4859, %4857
  br label %4861

; <label>:4861                                    ; preds = %4856, %4785
  %4862 = phi float [ %4857, %4856 ], [ 0.000000e+00, %4785 ]
  %4863 = phi float [ %4860, %4856 ], [ 0.000000e+00, %4785 ]
  %4864 = fcmp uge float %70, 0.000000e+00
  br i1 %4864, label %4865, label %4876

; <label>:4865                                    ; preds = %4861
  %4866 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %39, %dx.types.Handle %44, float %70, float %71, float %72, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4867 = extractvalue %dx.types.ResRet.f32 %4866, 0
  %4868 = extractvalue %dx.types.ResRet.f32 %4866, 1
  %4869 = extractvalue %dx.types.ResRet.f32 %4866, 2
  %4870 = fadd fast float %4867, %4783
  %4871 = fcmp fast ogt float %69, 0.000000e+00
  %4872 = call float @dx.op.dot3.f32(i32 55, float %66, float %67, float %68, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4873 = select i1 %4871, float 1.000000e+00, float %4872
  %4874 = fmul fast float %4873, %4869
  %4875 = select i1 %4871, float 0.000000e+00, float %4863
  br label %4958

; <label>:4876                                    ; preds = %4861
  %4877 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 369)  ; CBufferLoadLegacy(handle,regIndex)
  %4878 = extractvalue %dx.types.CBufRet.i32 %4877, 0
  %4879 = and i32 %4878, 7
  %4880 = icmp eq i32 %4879, 0
  br i1 %4880, label %4958, label %4881

; <label>:4881                                    ; preds = %4876
  %4882 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 370)  ; CBufferLoadLegacy(handle,regIndex)
  %4883 = extractvalue %dx.types.CBufRet.f32 %4882, 0
  %4884 = fmul fast float %4883, %4862
  %4885 = fadd fast float %4884, %4783
  %4886 = extractvalue %dx.types.CBufRet.f32 %4882, 2
  %4887 = fmul fast float %4886, %4862
  %4888 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 371)  ; CBufferLoadLegacy(handle,regIndex)
  %4889 = extractvalue %dx.types.CBufRet.f32 %4888, 0
  %4890 = fmul fast float %4889, %4862
  %4891 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %4892 = and i32 %4878, 8
  %4893 = icmp eq i32 %4892, 0
  br i1 %4893, label %4958, label %4894

; <label>:4894                                    ; preds = %4881
  %4895 = extractvalue %dx.types.CBufRet.f32 %4891, 2
  %4896 = fadd fast float %4895, %199
  %4897 = extractvalue %dx.types.CBufRet.f32 %4891, 1
  %4898 = fadd fast float %4897, %198
  %4899 = extractvalue %dx.types.CBufRet.f32 %4891, 0
  %4900 = fadd fast float %4899, %197
  %4901 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 377)  ; CBufferLoadLegacy(handle,regIndex)
  %4902 = extractvalue %dx.types.CBufRet.f32 %4901, 0
  %4903 = extractvalue %dx.types.CBufRet.f32 %4901, 1
  %4904 = extractvalue %dx.types.CBufRet.f32 %4901, 2
  %4905 = fsub fast float %4900, %4902
  %4906 = fsub fast float %4898, %4903
  %4907 = fsub fast float %4896, %4904
  %4908 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 378)  ; CBufferLoadLegacy(handle,regIndex)
  %4909 = extractvalue %dx.types.CBufRet.f32 %4908, 0
  %4910 = extractvalue %dx.types.CBufRet.f32 %4908, 1
  %4911 = extractvalue %dx.types.CBufRet.f32 %4908, 2
  %4912 = fmul fast float %4905, %4909
  %4913 = fmul fast float %4906, %4910
  %4914 = fmul fast float %4907, %4911
  %4915 = fcmp fast oge float %4912, 0.000000e+00
  %4916 = fcmp fast oge float %4913, 0.000000e+00
  %4917 = fcmp fast oge float %4914, 0.000000e+00
  %4918 = and i1 %4915, %4916
  %4919 = and i1 %4917, %4918
  %4920 = fcmp fast ole float %4912, 1.000000e+00
  %4921 = fcmp fast ole float %4913, 1.000000e+00
  %4922 = fcmp fast ole float %4914, 1.000000e+00
  %4923 = and i1 %4920, %4921
  %4924 = and i1 %4922, %4923
  %4925 = and i1 %4919, %4924
  br i1 %4925, label %4926, label %4958

; <label>:4926                                    ; preds = %4894
  %4927 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 379)  ; CBufferLoadLegacy(handle,regIndex)
  %4928 = extractvalue %dx.types.CBufRet.i32 %4927, 0
  %4929 = icmp eq i32 %4928, 0
  br i1 %4929, label %4936, label %4930

; <label>:4930                                    ; preds = %4926
  %4931 = add i32 %4928, 0
  %4932 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4931, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4933 = fsub fast float -0.000000e+00, %4913
  %4934 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %4932, %dx.types.Handle %107, float %4912, float %4933, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %4935 = extractvalue %dx.types.ResRet.f32 %4934, 0
  br label %4936

; <label>:4936                                    ; preds = %4930, %4926
  %4937 = phi float [ %4935, %4930 ], [ 1.000000e+00, %4926 ]
  %4938 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 369)  ; CBufferLoadLegacy(handle,regIndex)
  %4939 = extractvalue %dx.types.CBufRet.i32 %4938, 0
  %4940 = and i32 %4939, 32
  %4941 = icmp ne i32 %4940, 0
  %4942 = fmul fast float %4937, %4862
  %4943 = select i1 %4941, float %4937, float %4942
  %4944 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 379)  ; CBufferLoadLegacy(handle,regIndex)
  %4945 = extractvalue %dx.types.CBufRet.f32 %4944, 1
  %4946 = fmul fast float %4943, %4945
  %4947 = fadd fast float %4946, %4885
  %4948 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 380)  ; CBufferLoadLegacy(handle,regIndex)
  %4949 = extractvalue %dx.types.CBufRet.f32 %4948, 0
  %4950 = fmul fast float %4943, %4949
  %4951 = fadd fast float %4950, %4863
  %4952 = extractvalue %dx.types.CBufRet.f32 %4948, 1
  %4953 = fmul fast float %4943, %4952
  %4954 = fadd fast float %4953, %4887
  %4955 = extractvalue %dx.types.CBufRet.f32 %4948, 2
  %4956 = fmul fast float %4955, %4943
  %4957 = fadd fast float %4956, %4890
  br label %4958

; <label>:4958                                    ; preds = %4936, %4894, %4881, %4876, %4865, %4779
  %4959 = phi float [ %4783, %4876 ], [ %4783, %4779 ], [ %4870, %4865 ], [ %4947, %4936 ], [ %4885, %4894 ], [ %4885, %4881 ]
  %4960 = phi float [ %4863, %4876 ], [ 0.000000e+00, %4779 ], [ %4875, %4865 ], [ %4951, %4936 ], [ %4863, %4894 ], [ %4863, %4881 ]
  %4961 = phi float [ 0.000000e+00, %4876 ], [ 0.000000e+00, %4779 ], [ %4868, %4865 ], [ %4954, %4936 ], [ %4887, %4894 ], [ %4887, %4881 ]
  %4962 = phi float [ 0.000000e+00, %4876 ], [ 0.000000e+00, %4779 ], [ %4874, %4865 ], [ %4957, %4936 ], [ %4890, %4894 ], [ %4890, %4881 ]
  %4963 = call float @dx.op.unary.f32(i32 7, float %4959)  ; Saturate(value)
  %4964 = call float @dx.op.unary.f32(i32 7, float %4960)  ; Saturate(value)
  %4965 = call float @dx.op.unary.f32(i32 7, float %4961)  ; Saturate(value)
  %4966 = call float @dx.op.unary.f32(i32 7, float %4962)  ; Saturate(value)
  %4967 = fcmp fast une float %4965, 0.000000e+00
  %4968 = fcmp fast une float %4966, 0.000000e+00
  %4969 = or i1 %4967, %4968
  br i1 %4969, label %4970, label %5529

; <label>:4970                                    ; preds = %4958
  br i1 %4967, label %4971, label %5244

; <label>:4971                                    ; preds = %4970
  %4972 = call float @dx.op.unary.f32(i32 23, float %4655)  ; Log(value)
  %4973 = fmul fast float %4972, 4.000000e+00
  %4974 = call float @dx.op.unary.f32(i32 21, float %4973)  ; Exp(value)
  %4975 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4976 = extractvalue %dx.types.CBufRet.f32 %4975, 0
  %4977 = fmul fast float %4976, %56
  %4978 = fmul fast float %4976, %57
  %4979 = fmul fast float %4976, %58
  %4980 = call float @dx.op.unary.f32(i32 6, float %66)  ; FAbs(value)
  %4981 = call float @dx.op.unary.f32(i32 6, float %67)  ; FAbs(value)
  %4982 = call float @dx.op.unary.f32(i32 6, float %68)  ; FAbs(value)
  %4983 = call float @dx.op.unary.f32(i32 23, float %4980)  ; Log(value)
  %4984 = call float @dx.op.unary.f32(i32 23, float %4981)  ; Log(value)
  %4985 = call float @dx.op.unary.f32(i32 23, float %4982)  ; Log(value)
  %4986 = fmul fast float %4983, 4.000000e+00
  %4987 = fmul fast float %4984, 4.000000e+00
  %4988 = fmul fast float %4985, 4.000000e+00
  %4989 = call float @dx.op.unary.f32(i32 21, float %4986)  ; Exp(value)
  %4990 = call float @dx.op.unary.f32(i32 21, float %4987)  ; Exp(value)
  %4991 = call float @dx.op.unary.f32(i32 21, float %4988)  ; Exp(value)
  %4992 = fadd fast float %4990, %4989
  %4993 = fadd fast float %4992, %4991
  %4994 = fdiv fast float 1.000000e+00, %4993
  %4995 = fmul fast float %4994, %4989
  %4996 = fcmp fast ogt float %66, 0.000000e+00
  %4997 = fcmp fast ogt float %67, 0.000000e+00
  %4998 = fcmp fast ogt float %68, 0.000000e+00
  %4999 = fcmp fast olt float %66, 0.000000e+00
  %5000 = fcmp fast olt float %67, 0.000000e+00
  %5001 = fcmp fast olt float %68, 0.000000e+00
  %5002 = zext i1 %4996 to i32
  %5003 = zext i1 %4997 to i32
  %5004 = zext i1 %4998 to i32
  %5005 = zext i1 %4999 to i32
  %5006 = zext i1 %5000 to i32
  %5007 = zext i1 %5001 to i32
  %5008 = sub nsw i32 %5002, %5005
  %5009 = sub nsw i32 %5003, %5006
  %5010 = sub nsw i32 %5004, %5007
  %5011 = call float @dx.op.unary.f32(i32 83, float %4977)  ; DerivCoarseX(value)
  %5012 = call float @dx.op.unary.f32(i32 83, float %4978)  ; DerivCoarseX(value)
  %5013 = call float @dx.op.unary.f32(i32 83, float %4979)  ; DerivCoarseX(value)
  %5014 = call float @dx.op.unary.f32(i32 84, float %4977)  ; DerivCoarseY(value)
  %5015 = call float @dx.op.unary.f32(i32 84, float %4978)  ; DerivCoarseY(value)
  %5016 = call float @dx.op.unary.f32(i32 84, float %4979)  ; DerivCoarseY(value)
  %5017 = fcmp fast ole float %282, %4995
  %5018 = fmul fast float %4994, %4992
  %5019 = fcmp fast ole float %282, %5018
  %5020 = select i1 %5019, float %4979, float %4977
  %5021 = select i1 %5019, float %4977, float %4978
  %5022 = select i1 %5017, float %4978, float %5020
  %5023 = select i1 %5017, float %4979, float %5021
  %5024 = select i1 %5019, float %5013, float %5011
  %5025 = select i1 %5019, float %5011, float %5012
  %5026 = select i1 %5017, float %5012, float %5024
  %5027 = select i1 %5017, float %5013, float %5025
  %5028 = select i1 %5019, float %5016, float %5014
  %5029 = select i1 %5019, float %5014, float %5015
  %5030 = select i1 %5017, float %5015, float %5028
  %5031 = select i1 %5017, float %5016, float %5029
  %5032 = call float @dx.op.unary.f32(i32 27, float %5022)  ; Round_ni(value)
  %5033 = call float @dx.op.unary.f32(i32 27, float %5023)  ; Round_ni(value)
  %5034 = fptosi float %5032 to i32
  %5035 = fptosi float %5033 to i32
  %5036 = xor i32 %5035, %5034
  %5037 = sitofp i32 %5036 to float
  %5038 = fptosi float %5037 to i32
  %5039 = sitofp i32 %5038 to float
  %5040 = fmul fast float %5039, 0x3FE3C6EF40000000
  %5041 = frem fast float %5032, 2.560000e+02
  %5042 = frem fast float %5033, 2.560000e+02
  %5043 = fptoui float %5041 to i32
  %5044 = fptoui float %5042 to i32
  %5045 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %28, i32 0, i32 %5043, i32 %5044, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5046 = extractvalue %dx.types.ResRet.f32 %5045, 0
  %5047 = extractvalue %dx.types.ResRet.f32 %5045, 1
  %5048 = extractvalue %dx.types.ResRet.f32 %5045, 2
  %5049 = fadd fast float %5046, %5040
  %5050 = fadd fast float %5047, %5040
  %5051 = fadd fast float %5048, %5040
  %5052 = call float @dx.op.unary.f32(i32 22, float %5049)  ; Frc(value)
  %5053 = call float @dx.op.unary.f32(i32 22, float %5050)  ; Frc(value)
  %5054 = call float @dx.op.unary.f32(i32 22, float %5051)  ; Frc(value)
  %5055 = fmul fast float %5054, 0x401921FB60000000
  %5056 = call float @dx.op.unary.f32(i32 13, float %5055)  ; Sin(value)
  %5057 = call float @dx.op.unary.f32(i32 12, float %5055)  ; Cos(value)
  %5058 = fsub fast float -0.000000e+00, %5057
  %5059 = fmul fast float %5057, %5022
  %5060 = call float @dx.op.tertiary.f32(i32 46, float %5056, float %5023, float %5059)  ; FMad(a,b,c)
  %5061 = fmul fast float %5056, %5022
  %5062 = call float @dx.op.tertiary.f32(i32 46, float %5058, float %5023, float %5061)  ; FMad(a,b,c)
  %5063 = fadd fast float %5060, %5052
  %5064 = fadd fast float %5062, %5053
  %5065 = extractvalue %dx.types.CBufRet.f32 %4975, 3
  %5066 = bitcast float %5065 to i32
  %5067 = icmp eq i32 %5066, 0
  br i1 %5067, label %5106, label %5068

; <label>:5068                                    ; preds = %4971
  %5069 = add i32 %5066, 0
  %5070 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5069, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5071 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5070, %dx.types.Handle %107, float %5063, float %5064, float undef, float undef, i32 0, i32 0, i32 undef, float %5026, float %5027, float undef, float %5030, float %5031, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5072 = extractvalue %dx.types.ResRet.f32 %5071, 0
  %5073 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %5074 = extractvalue %dx.types.CBufRet.f32 %5073, 1
  %5075 = extractvalue %dx.types.CBufRet.f32 %5073, 2
  %5076 = fsub fast float 1.000000e+00, %4965
  %5077 = call float @dx.op.binary.f32(i32 35, float %5076, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %5078 = bitcast float %4965 to i32
  %5079 = sitofp i32 %5078 to float
  %5080 = fadd fast float %5079, 0xC1CFBF8940000000
  %5081 = fmul fast float %5075, %5080
  %5082 = fadd fast float %5081, 0x41CFBF8940000000
  %5083 = fptosi float %5082 to i32
  %5084 = bitcast i32 %5083 to float
  %5085 = bitcast float %5077 to i32
  %5086 = sitofp i32 %5085 to float
  %5087 = fadd fast float %5086, 0xC1CFBF8940000000
  %5088 = fmul fast float %5087, %5075
  %5089 = fadd fast float %5088, 0x41CFBF8940000000
  %5090 = fptosi float %5089 to i32
  %5091 = bitcast i32 %5090 to float
  %5092 = fmul fast float %5084, %5074
  %5093 = fmul fast float %5091, %5074
  %5094 = fsub fast float %5077, %5092
  %5095 = fadd fast float %5093, %5077
  %5096 = call float @dx.op.unary.f32(i32 7, float %5094)  ; Saturate(value)
  %5097 = call float @dx.op.unary.f32(i32 7, float %5095)  ; Saturate(value)
  %5098 = fsub fast float %5072, %5096
  %5099 = fsub fast float %5097, %5096
  %5100 = bitcast float %5099 to i32
  %5101 = sub nsw i32 2129859010, %5100
  %5102 = bitcast i32 %5101 to float
  %5103 = fmul fast float %5102, %5098
  %5104 = call float @dx.op.unary.f32(i32 7, float %5103)  ; Saturate(value)
  %5105 = fcmp fast olt float %5104, 0x3F70101020000000
  br i1 %5105, label %5244, label %5106

; <label>:5106                                    ; preds = %5068, %4971
  %5107 = phi float [ %5104, %5068 ], [ %4965, %4971 ]
  %5108 = fmul fast float %5107, %4974
  %5109 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %5110 = extractvalue %dx.types.CBufRet.i32 %5109, 1
  %5111 = extractvalue %dx.types.CBufRet.i32 %5109, 0
  %5112 = add i32 %5111, 0
  %5113 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5112, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5114 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5113, %dx.types.Handle %106, float %5063, float %5064, float undef, float undef, i32 0, i32 0, i32 undef, float %5026, float %5027, float undef, float %5030, float %5031, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5115 = extractvalue %dx.types.ResRet.f32 %5114, 0
  %5116 = extractvalue %dx.types.ResRet.f32 %5114, 1
  %5117 = extractvalue %dx.types.ResRet.f32 %5114, 2
  %5118 = extractvalue %dx.types.ResRet.f32 %5114, 3
  %5119 = and i32 %5110, 255
  %5120 = uitofp i32 %5119 to float
  %5121 = lshr i32 %5110, 8
  %5122 = and i32 %5121, 255
  %5123 = uitofp i32 %5122 to float
  %5124 = fmul fast float %5118, %5120
  %5125 = fadd fast float %5124, %5123
  %5126 = fmul fast float %5125, 0x3F70101000000000
  %5127 = fadd fast float %5126, 0xBFB99999A0000000
  %5128 = call float @dx.op.unary.f32(i32 7, float %5127)  ; Saturate(value)
  %5129 = fmul fast float %5128, 0x3FF1C71C80000000
  %5130 = call float @dx.op.binary.f32(i32 36, float %5126, float 0x3FB99999A0000000)  ; FMin(a,b)
  %5131 = fsub fast float 1.000000e+00, %5129
  %5132 = call float @dx.op.unary.f32(i32 7, float %5131)  ; Saturate(value)
  %5133 = fmul fast float %5132, %5115
  %5134 = fmul fast float %5132, %5116
  %5135 = fmul fast float %5132, %5117
  %5136 = call float @dx.op.unary.f32(i32 7, float %5133)  ; Saturate(value)
  %5137 = call float @dx.op.unary.f32(i32 7, float %5134)  ; Saturate(value)
  %5138 = call float @dx.op.unary.f32(i32 7, float %5135)  ; Saturate(value)
  %5139 = fmul fast float %5129, %5115
  %5140 = fmul fast float %5129, %5116
  %5141 = fmul fast float %5129, %5117
  %5142 = fadd fast float %5139, %5130
  %5143 = fadd fast float %5140, %5130
  %5144 = fadd fast float %5141, %5130
  %5145 = call float @dx.op.unary.f32(i32 7, float %5142)  ; Saturate(value)
  %5146 = call float @dx.op.unary.f32(i32 7, float %5143)  ; Saturate(value)
  %5147 = call float @dx.op.unary.f32(i32 7, float %5144)  ; Saturate(value)
  %5148 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %5149 = extractvalue %dx.types.CBufRet.i32 %5148, 3
  %5150 = extractvalue %dx.types.CBufRet.i32 %5148, 2
  %5151 = add i32 %5150, 0
  %5152 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5151, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5153 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5152, %dx.types.Handle %106, float %5063, float %5064, float undef, float undef, i32 0, i32 0, i32 undef, float %5026, float %5027, float undef, float %5030, float %5031, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5154 = extractvalue %dx.types.ResRet.f32 %5153, 0
  %5155 = extractvalue %dx.types.ResRet.f32 %5153, 1
  %5156 = extractvalue %dx.types.ResRet.f32 %5153, 2
  %5157 = extractvalue %dx.types.ResRet.f32 %5153, 3
  %5158 = and i32 %5149, 255
  %5159 = uitofp i32 %5158 to float
  %5160 = lshr i32 %5149, 8
  %5161 = and i32 %5160, 255
  %5162 = uitofp i32 %5161 to float
  %5163 = lshr i32 %5149, 16
  %5164 = and i32 %5163, 255
  %5165 = uitofp i32 %5164 to float
  %5166 = fmul fast float %5165, 0x3F70101000000000
  %5167 = fmul fast float %5154, %5159
  %5168 = fadd fast float %5167, %5162
  %5169 = fmul fast float %5168, 0x3F70101000000000
  %5170 = fadd fast float %5155, -5.000000e-01
  %5171 = fadd fast float %5157, -5.000000e-01
  %5172 = fmul fast float %5170, %5166
  %5173 = fmul fast float %5171, %5166
  %5174 = fadd fast float %5172, 5.000000e-01
  %5175 = fadd fast float %5173, 5.000000e-01
  %5176 = fmul fast float %5174, 2.000000e+00
  %5177 = fadd fast float %5176, -1.000000e+00
  %5178 = fmul fast float %5175, 2.000000e+00
  %5179 = fadd fast float %5178, -1.000000e+00
  %5180 = fadd fast float %5177, %5179
  %5181 = fmul fast float %5180, 5.000000e-01
  %5182 = fsub fast float %5177, %5179
  %5183 = fmul fast float %5182, 5.000000e-01
  %5184 = call float @dx.op.unary.f32(i32 6, float %5181)  ; FAbs(value)
  %5185 = fsub fast float 1.000000e+00, %5184
  %5186 = call float @dx.op.unary.f32(i32 6, float %5183)  ; FAbs(value)
  %5187 = fsub fast float %5185, %5186
  %5188 = call float @dx.op.dot3.f32(i32 55, float %5181, float %5183, float %5187, float %5181, float %5183, float %5187)  ; Dot3(ax,ay,az,bx,by,bz)
  %5189 = call float @dx.op.unary.f32(i32 25, float %5188)  ; Rsqrt(value)
  %5190 = fmul fast float %5181, %5189
  %5191 = fmul fast float %5183, %5189
  %5192 = select i1 %5019, i32 %5009, i32 %5010
  %5193 = select i1 %5017, i32 %5008, i32 %5192
  %5194 = sitofp i32 %5193 to float
  %5195 = fmul fast float %5187, %5194
  %5196 = fmul fast float %5195, %5189
  %5197 = select i1 %5019, float %5196, float %5191
  %5198 = select i1 %5019, float %5191, float %5196
  %5199 = select i1 %5017, float %5196, float %5190
  %5200 = select i1 %5017, float %5191, float %5197
  %5201 = select i1 %5017, float %5190, float %5198
  %5202 = fsub fast float %5136, %4697
  %5203 = fsub fast float %5137, %4698
  %5204 = fsub fast float %5138, %4699
  %5205 = fmul fast float %5202, %5108
  %5206 = fmul fast float %5203, %5108
  %5207 = fmul fast float %5204, %5108
  %5208 = fadd fast float %5205, %4697
  %5209 = fadd fast float %5206, %4698
  %5210 = fadd fast float %5207, %4699
  %5211 = fsub fast float %5145, %4679
  %5212 = fsub fast float %5146, %4680
  %5213 = fsub fast float %5147, %4681
  %5214 = fmul fast float %5211, %5108
  %5215 = fmul fast float %5212, %5108
  %5216 = fmul fast float %5213, %5108
  %5217 = fadd fast float %5214, %4679
  %5218 = fadd fast float %5215, %4680
  %5219 = fadd fast float %5216, %4681
  %5220 = fadd fast float %5199, %4640
  %5221 = fadd fast float %5200, %4641
  %5222 = fadd fast float %5201, %4642
  %5223 = call float @dx.op.dot3.f32(i32 55, float %5220, float %5221, float %5222, float %5220, float %5221, float %5222)  ; Dot3(ax,ay,az,bx,by,bz)
  %5224 = call float @dx.op.unary.f32(i32 25, float %5223)  ; Rsqrt(value)
  %5225 = fmul fast float %5220, %5224
  %5226 = fmul fast float %5221, %5224
  %5227 = fmul fast float %5222, %5224
  %5228 = fsub fast float %5225, %4640
  %5229 = fsub fast float %5226, %4641
  %5230 = fsub fast float %5227, %4642
  %5231 = fmul fast float %5228, %5108
  %5232 = fmul fast float %5229, %5108
  %5233 = fmul fast float %5230, %5108
  %5234 = fadd fast float %5231, %4640
  %5235 = fadd fast float %5232, %4641
  %5236 = fadd fast float %5233, %4642
  %5237 = call float @dx.op.binary.f32(i32 36, float %4655, float %5156)  ; FMin(a,b)
  %5238 = fsub fast float %5237, %4655
  %5239 = fmul fast float %5238, %5108
  %5240 = fadd fast float %5239, %4655
  %5241 = fsub fast float %5169, %4682
  %5242 = fmul fast float %5241, %5108
  %5243 = fadd fast float %5242, %4682
  br label %5244

; <label>:5244                                    ; preds = %5106, %5068, %4970
  %5245 = phi float [ %5208, %5106 ], [ %4697, %5068 ], [ %4697, %4970 ]
  %5246 = phi float [ %5209, %5106 ], [ %4698, %5068 ], [ %4698, %4970 ]
  %5247 = phi float [ %5210, %5106 ], [ %4699, %5068 ], [ %4699, %4970 ]
  %5248 = phi float [ %5234, %5106 ], [ %4640, %5068 ], [ %4640, %4970 ]
  %5249 = phi float [ %5235, %5106 ], [ %4641, %5068 ], [ %4641, %4970 ]
  %5250 = phi float [ %5236, %5106 ], [ %4642, %5068 ], [ %4642, %4970 ]
  %5251 = phi float [ %5217, %5106 ], [ %4679, %5068 ], [ %4679, %4970 ]
  %5252 = phi float [ %5218, %5106 ], [ %4680, %5068 ], [ %4680, %4970 ]
  %5253 = phi float [ %5219, %5106 ], [ %4681, %5068 ], [ %4681, %4970 ]
  %5254 = phi float [ %5243, %5106 ], [ %4682, %5068 ], [ %4682, %4970 ]
  %5255 = phi float [ %5240, %5106 ], [ %4655, %5068 ], [ %4655, %4970 ]
  br i1 %4968, label %5256, label %5529

; <label>:5256                                    ; preds = %5244
  %5257 = call float @dx.op.unary.f32(i32 23, float %5255)  ; Log(value)
  %5258 = fmul fast float %5257, 4.000000e+00
  %5259 = call float @dx.op.unary.f32(i32 21, float %5258)  ; Exp(value)
  %5260 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %5261 = extractvalue %dx.types.CBufRet.f32 %5260, 0
  %5262 = fmul fast float %5261, %56
  %5263 = fmul fast float %5261, %57
  %5264 = fmul fast float %5261, %58
  %5265 = call float @dx.op.unary.f32(i32 6, float %66)  ; FAbs(value)
  %5266 = call float @dx.op.unary.f32(i32 6, float %67)  ; FAbs(value)
  %5267 = call float @dx.op.unary.f32(i32 6, float %68)  ; FAbs(value)
  %5268 = call float @dx.op.unary.f32(i32 23, float %5265)  ; Log(value)
  %5269 = call float @dx.op.unary.f32(i32 23, float %5266)  ; Log(value)
  %5270 = call float @dx.op.unary.f32(i32 23, float %5267)  ; Log(value)
  %5271 = fmul fast float %5268, 4.000000e+00
  %5272 = fmul fast float %5269, 4.000000e+00
  %5273 = fmul fast float %5270, 4.000000e+00
  %5274 = call float @dx.op.unary.f32(i32 21, float %5271)  ; Exp(value)
  %5275 = call float @dx.op.unary.f32(i32 21, float %5272)  ; Exp(value)
  %5276 = call float @dx.op.unary.f32(i32 21, float %5273)  ; Exp(value)
  %5277 = fadd fast float %5275, %5274
  %5278 = fadd fast float %5277, %5276
  %5279 = fdiv fast float 1.000000e+00, %5278
  %5280 = fmul fast float %5279, %5274
  %5281 = fcmp fast ogt float %66, 0.000000e+00
  %5282 = fcmp fast ogt float %67, 0.000000e+00
  %5283 = fcmp fast ogt float %68, 0.000000e+00
  %5284 = fcmp fast olt float %66, 0.000000e+00
  %5285 = fcmp fast olt float %67, 0.000000e+00
  %5286 = fcmp fast olt float %68, 0.000000e+00
  %5287 = zext i1 %5281 to i32
  %5288 = zext i1 %5282 to i32
  %5289 = zext i1 %5283 to i32
  %5290 = zext i1 %5284 to i32
  %5291 = zext i1 %5285 to i32
  %5292 = zext i1 %5286 to i32
  %5293 = sub nsw i32 %5287, %5290
  %5294 = sub nsw i32 %5288, %5291
  %5295 = sub nsw i32 %5289, %5292
  %5296 = call float @dx.op.unary.f32(i32 83, float %5262)  ; DerivCoarseX(value)
  %5297 = call float @dx.op.unary.f32(i32 83, float %5263)  ; DerivCoarseX(value)
  %5298 = call float @dx.op.unary.f32(i32 83, float %5264)  ; DerivCoarseX(value)
  %5299 = call float @dx.op.unary.f32(i32 84, float %5262)  ; DerivCoarseY(value)
  %5300 = call float @dx.op.unary.f32(i32 84, float %5263)  ; DerivCoarseY(value)
  %5301 = call float @dx.op.unary.f32(i32 84, float %5264)  ; DerivCoarseY(value)
  %5302 = fcmp fast ole float %282, %5280
  %5303 = fmul fast float %5279, %5277
  %5304 = fcmp fast ole float %282, %5303
  %5305 = select i1 %5304, float %5264, float %5262
  %5306 = select i1 %5304, float %5262, float %5263
  %5307 = select i1 %5302, float %5263, float %5305
  %5308 = select i1 %5302, float %5264, float %5306
  %5309 = select i1 %5304, float %5298, float %5296
  %5310 = select i1 %5304, float %5296, float %5297
  %5311 = select i1 %5302, float %5297, float %5309
  %5312 = select i1 %5302, float %5298, float %5310
  %5313 = select i1 %5304, float %5301, float %5299
  %5314 = select i1 %5304, float %5299, float %5300
  %5315 = select i1 %5302, float %5300, float %5313
  %5316 = select i1 %5302, float %5301, float %5314
  %5317 = call float @dx.op.unary.f32(i32 27, float %5307)  ; Round_ni(value)
  %5318 = call float @dx.op.unary.f32(i32 27, float %5308)  ; Round_ni(value)
  %5319 = fptosi float %5317 to i32
  %5320 = fptosi float %5318 to i32
  %5321 = xor i32 %5320, %5319
  %5322 = sitofp i32 %5321 to float
  %5323 = fptosi float %5322 to i32
  %5324 = sitofp i32 %5323 to float
  %5325 = fmul fast float %5324, 0x3FE3C6EF40000000
  %5326 = frem fast float %5317, 2.560000e+02
  %5327 = frem fast float %5318, 2.560000e+02
  %5328 = fptoui float %5326 to i32
  %5329 = fptoui float %5327 to i32
  %5330 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %28, i32 0, i32 %5328, i32 %5329, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5331 = extractvalue %dx.types.ResRet.f32 %5330, 0
  %5332 = extractvalue %dx.types.ResRet.f32 %5330, 1
  %5333 = extractvalue %dx.types.ResRet.f32 %5330, 2
  %5334 = fadd fast float %5331, %5325
  %5335 = fadd fast float %5332, %5325
  %5336 = fadd fast float %5333, %5325
  %5337 = call float @dx.op.unary.f32(i32 22, float %5334)  ; Frc(value)
  %5338 = call float @dx.op.unary.f32(i32 22, float %5335)  ; Frc(value)
  %5339 = call float @dx.op.unary.f32(i32 22, float %5336)  ; Frc(value)
  %5340 = fmul fast float %5339, 0x401921FB60000000
  %5341 = call float @dx.op.unary.f32(i32 13, float %5340)  ; Sin(value)
  %5342 = call float @dx.op.unary.f32(i32 12, float %5340)  ; Cos(value)
  %5343 = fsub fast float -0.000000e+00, %5342
  %5344 = fmul fast float %5342, %5307
  %5345 = call float @dx.op.tertiary.f32(i32 46, float %5341, float %5308, float %5344)  ; FMad(a,b,c)
  %5346 = fmul fast float %5341, %5307
  %5347 = call float @dx.op.tertiary.f32(i32 46, float %5343, float %5308, float %5346)  ; FMad(a,b,c)
  %5348 = fadd fast float %5345, %5337
  %5349 = fadd fast float %5347, %5338
  %5350 = extractvalue %dx.types.CBufRet.f32 %5260, 3
  %5351 = bitcast float %5350 to i32
  %5352 = icmp eq i32 %5351, 0
  br i1 %5352, label %5391, label %5353

; <label>:5353                                    ; preds = %5256
  %5354 = add i32 %5351, 0
  %5355 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5354, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5356 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5355, %dx.types.Handle %107, float %5348, float %5349, float undef, float undef, i32 0, i32 0, i32 undef, float %5311, float %5312, float undef, float %5315, float %5316, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5357 = extractvalue %dx.types.ResRet.f32 %5356, 0
  %5358 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %5359 = extractvalue %dx.types.CBufRet.f32 %5358, 1
  %5360 = extractvalue %dx.types.CBufRet.f32 %5358, 2
  %5361 = fsub fast float 1.000000e+00, %4966
  %5362 = call float @dx.op.binary.f32(i32 35, float %5361, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %5363 = bitcast float %4966 to i32
  %5364 = sitofp i32 %5363 to float
  %5365 = fadd fast float %5364, 0xC1CFBF8940000000
  %5366 = fmul fast float %5360, %5365
  %5367 = fadd fast float %5366, 0x41CFBF8940000000
  %5368 = fptosi float %5367 to i32
  %5369 = bitcast i32 %5368 to float
  %5370 = bitcast float %5362 to i32
  %5371 = sitofp i32 %5370 to float
  %5372 = fadd fast float %5371, 0xC1CFBF8940000000
  %5373 = fmul fast float %5372, %5360
  %5374 = fadd fast float %5373, 0x41CFBF8940000000
  %5375 = fptosi float %5374 to i32
  %5376 = bitcast i32 %5375 to float
  %5377 = fmul fast float %5369, %5359
  %5378 = fmul fast float %5376, %5359
  %5379 = fsub fast float %5362, %5377
  %5380 = fadd fast float %5378, %5362
  %5381 = call float @dx.op.unary.f32(i32 7, float %5379)  ; Saturate(value)
  %5382 = call float @dx.op.unary.f32(i32 7, float %5380)  ; Saturate(value)
  %5383 = fsub fast float %5357, %5381
  %5384 = fsub fast float %5382, %5381
  %5385 = bitcast float %5384 to i32
  %5386 = sub nsw i32 2129859010, %5385
  %5387 = bitcast i32 %5386 to float
  %5388 = fmul fast float %5387, %5383
  %5389 = call float @dx.op.unary.f32(i32 7, float %5388)  ; Saturate(value)
  %5390 = fcmp fast olt float %5389, 0x3F70101020000000
  br i1 %5390, label %5529, label %5391

; <label>:5391                                    ; preds = %5353, %5256
  %5392 = phi float [ %5389, %5353 ], [ %4966, %5256 ]
  %5393 = fmul fast float %5392, %5259
  %5394 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %5395 = extractvalue %dx.types.CBufRet.i32 %5394, 1
  %5396 = extractvalue %dx.types.CBufRet.i32 %5394, 0
  %5397 = add i32 %5396, 0
  %5398 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5397, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5399 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5398, %dx.types.Handle %106, float %5348, float %5349, float undef, float undef, i32 0, i32 0, i32 undef, float %5311, float %5312, float undef, float %5315, float %5316, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5400 = extractvalue %dx.types.ResRet.f32 %5399, 0
  %5401 = extractvalue %dx.types.ResRet.f32 %5399, 1
  %5402 = extractvalue %dx.types.ResRet.f32 %5399, 2
  %5403 = extractvalue %dx.types.ResRet.f32 %5399, 3
  %5404 = and i32 %5395, 255
  %5405 = uitofp i32 %5404 to float
  %5406 = lshr i32 %5395, 8
  %5407 = and i32 %5406, 255
  %5408 = uitofp i32 %5407 to float
  %5409 = fmul fast float %5403, %5405
  %5410 = fadd fast float %5409, %5408
  %5411 = fmul fast float %5410, 0x3F70101000000000
  %5412 = fadd fast float %5411, 0xBFB99999A0000000
  %5413 = call float @dx.op.unary.f32(i32 7, float %5412)  ; Saturate(value)
  %5414 = fmul fast float %5413, 0x3FF1C71C80000000
  %5415 = call float @dx.op.binary.f32(i32 36, float %5411, float 0x3FB99999A0000000)  ; FMin(a,b)
  %5416 = fsub fast float 1.000000e+00, %5414
  %5417 = call float @dx.op.unary.f32(i32 7, float %5416)  ; Saturate(value)
  %5418 = fmul fast float %5417, %5400
  %5419 = fmul fast float %5417, %5401
  %5420 = fmul fast float %5417, %5402
  %5421 = call float @dx.op.unary.f32(i32 7, float %5418)  ; Saturate(value)
  %5422 = call float @dx.op.unary.f32(i32 7, float %5419)  ; Saturate(value)
  %5423 = call float @dx.op.unary.f32(i32 7, float %5420)  ; Saturate(value)
  %5424 = fmul fast float %5414, %5400
  %5425 = fmul fast float %5414, %5401
  %5426 = fmul fast float %5414, %5402
  %5427 = fadd fast float %5424, %5415
  %5428 = fadd fast float %5425, %5415
  %5429 = fadd fast float %5426, %5415
  %5430 = call float @dx.op.unary.f32(i32 7, float %5427)  ; Saturate(value)
  %5431 = call float @dx.op.unary.f32(i32 7, float %5428)  ; Saturate(value)
  %5432 = call float @dx.op.unary.f32(i32 7, float %5429)  ; Saturate(value)
  %5433 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %5434 = extractvalue %dx.types.CBufRet.i32 %5433, 3
  %5435 = extractvalue %dx.types.CBufRet.i32 %5433, 2
  %5436 = add i32 %5435, 0
  %5437 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5436, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5438 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5437, %dx.types.Handle %106, float %5348, float %5349, float undef, float undef, i32 0, i32 0, i32 undef, float %5311, float %5312, float undef, float %5315, float %5316, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5439 = extractvalue %dx.types.ResRet.f32 %5438, 0
  %5440 = extractvalue %dx.types.ResRet.f32 %5438, 1
  %5441 = extractvalue %dx.types.ResRet.f32 %5438, 2
  %5442 = extractvalue %dx.types.ResRet.f32 %5438, 3
  %5443 = and i32 %5434, 255
  %5444 = uitofp i32 %5443 to float
  %5445 = lshr i32 %5434, 8
  %5446 = and i32 %5445, 255
  %5447 = uitofp i32 %5446 to float
  %5448 = lshr i32 %5434, 16
  %5449 = and i32 %5448, 255
  %5450 = uitofp i32 %5449 to float
  %5451 = fmul fast float %5450, 0x3F70101000000000
  %5452 = fmul fast float %5439, %5444
  %5453 = fadd fast float %5452, %5447
  %5454 = fmul fast float %5453, 0x3F70101000000000
  %5455 = fadd fast float %5440, -5.000000e-01
  %5456 = fadd fast float %5442, -5.000000e-01
  %5457 = fmul fast float %5455, %5451
  %5458 = fmul fast float %5456, %5451
  %5459 = fadd fast float %5457, 5.000000e-01
  %5460 = fadd fast float %5458, 5.000000e-01
  %5461 = fmul fast float %5459, 2.000000e+00
  %5462 = fadd fast float %5461, -1.000000e+00
  %5463 = fmul fast float %5460, 2.000000e+00
  %5464 = fadd fast float %5463, -1.000000e+00
  %5465 = fadd fast float %5462, %5464
  %5466 = fmul fast float %5465, 5.000000e-01
  %5467 = fsub fast float %5462, %5464
  %5468 = fmul fast float %5467, 5.000000e-01
  %5469 = call float @dx.op.unary.f32(i32 6, float %5466)  ; FAbs(value)
  %5470 = fsub fast float 1.000000e+00, %5469
  %5471 = call float @dx.op.unary.f32(i32 6, float %5468)  ; FAbs(value)
  %5472 = fsub fast float %5470, %5471
  %5473 = call float @dx.op.dot3.f32(i32 55, float %5466, float %5468, float %5472, float %5466, float %5468, float %5472)  ; Dot3(ax,ay,az,bx,by,bz)
  %5474 = call float @dx.op.unary.f32(i32 25, float %5473)  ; Rsqrt(value)
  %5475 = fmul fast float %5466, %5474
  %5476 = fmul fast float %5468, %5474
  %5477 = select i1 %5304, i32 %5294, i32 %5295
  %5478 = select i1 %5302, i32 %5293, i32 %5477
  %5479 = sitofp i32 %5478 to float
  %5480 = fmul fast float %5472, %5479
  %5481 = fmul fast float %5480, %5474
  %5482 = select i1 %5304, float %5481, float %5476
  %5483 = select i1 %5304, float %5476, float %5481
  %5484 = select i1 %5302, float %5481, float %5475
  %5485 = select i1 %5302, float %5476, float %5482
  %5486 = select i1 %5302, float %5475, float %5483
  %5487 = fsub fast float %5421, %5245
  %5488 = fsub fast float %5422, %5246
  %5489 = fsub fast float %5423, %5247
  %5490 = fmul fast float %5487, %5393
  %5491 = fmul fast float %5488, %5393
  %5492 = fmul fast float %5489, %5393
  %5493 = fadd fast float %5490, %5245
  %5494 = fadd fast float %5491, %5246
  %5495 = fadd fast float %5492, %5247
  %5496 = fsub fast float %5430, %5251
  %5497 = fsub fast float %5431, %5252
  %5498 = fsub fast float %5432, %5253
  %5499 = fmul fast float %5496, %5393
  %5500 = fmul fast float %5497, %5393
  %5501 = fmul fast float %5498, %5393
  %5502 = fadd fast float %5499, %5251
  %5503 = fadd fast float %5500, %5252
  %5504 = fadd fast float %5501, %5253
  %5505 = fadd fast float %5484, %5248
  %5506 = fadd fast float %5485, %5249
  %5507 = fadd fast float %5486, %5250
  %5508 = call float @dx.op.dot3.f32(i32 55, float %5505, float %5506, float %5507, float %5505, float %5506, float %5507)  ; Dot3(ax,ay,az,bx,by,bz)
  %5509 = call float @dx.op.unary.f32(i32 25, float %5508)  ; Rsqrt(value)
  %5510 = fmul fast float %5505, %5509
  %5511 = fmul fast float %5506, %5509
  %5512 = fmul fast float %5507, %5509
  %5513 = fsub fast float %5510, %5248
  %5514 = fsub fast float %5511, %5249
  %5515 = fsub fast float %5512, %5250
  %5516 = fmul fast float %5513, %5393
  %5517 = fmul fast float %5514, %5393
  %5518 = fmul fast float %5515, %5393
  %5519 = fadd fast float %5516, %5248
  %5520 = fadd fast float %5517, %5249
  %5521 = fadd fast float %5518, %5250
  %5522 = call float @dx.op.binary.f32(i32 36, float %5255, float %5441)  ; FMin(a,b)
  %5523 = fsub fast float %5522, %5255
  %5524 = fmul fast float %5523, %5393
  %5525 = fadd fast float %5524, %5255
  %5526 = fsub fast float %5454, %5254
  %5527 = fmul fast float %5526, %5393
  %5528 = fadd fast float %5527, %5254
  br label %5529

; <label>:5529                                    ; preds = %5391, %5353, %5244, %4958
  %5530 = phi float [ %5493, %5391 ], [ %5245, %5353 ], [ %5245, %5244 ], [ %4697, %4958 ]
  %5531 = phi float [ %5494, %5391 ], [ %5246, %5353 ], [ %5246, %5244 ], [ %4698, %4958 ]
  %5532 = phi float [ %5495, %5391 ], [ %5247, %5353 ], [ %5247, %5244 ], [ %4699, %4958 ]
  %5533 = phi float [ %5519, %5391 ], [ %5248, %5353 ], [ %5248, %5244 ], [ %4640, %4958 ]
  %5534 = phi float [ %5520, %5391 ], [ %5249, %5353 ], [ %5249, %5244 ], [ %4641, %4958 ]
  %5535 = phi float [ %5521, %5391 ], [ %5250, %5353 ], [ %5250, %5244 ], [ %4642, %4958 ]
  %5536 = phi float [ %5502, %5391 ], [ %5251, %5353 ], [ %5251, %5244 ], [ %4679, %4958 ]
  %5537 = phi float [ %5503, %5391 ], [ %5252, %5353 ], [ %5252, %5244 ], [ %4680, %4958 ]
  %5538 = phi float [ %5504, %5391 ], [ %5253, %5353 ], [ %5253, %5244 ], [ %4681, %4958 ]
  %5539 = phi float [ %5528, %5391 ], [ %5254, %5353 ], [ %5254, %5244 ], [ %4682, %4958 ]
  %5540 = phi float [ %5525, %5391 ], [ %5255, %5353 ], [ %5255, %5244 ], [ %4655, %4958 ]
  %5541 = fcmp fast une float %4963, 0.000000e+00
  br i1 %5541, label %5542, label %5904

; <label>:5542                                    ; preds = %5529
  %5543 = call float @dx.op.dot3.f32(i32 55, float %197, float %198, float %199, float %197, float %198, float %199)  ; Dot3(ax,ay,az,bx,by,bz)
  %5544 = call float @dx.op.unary.f32(i32 25, float %5543)  ; Rsqrt(value)
  %5545 = fmul fast float %197, %5544
  %5546 = fsub fast float -0.000000e+00, %5545
  %5547 = fmul fast float %198, %5544
  %5548 = fsub fast float -0.000000e+00, %5547
  %5549 = fmul fast float %199, %5544
  %5550 = fsub fast float -0.000000e+00, %5549
  %5551 = call float @dx.op.dot3.f32(i32 55, float %5546, float %5548, float %5550, float %117, float %118, float %119)  ; Dot3(ax,ay,az,bx,by,bz)
  %5552 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %5553 = fmul fast float %4963, 2.500000e+00
  %5554 = call float @dx.op.unary.f32(i32 7, float %5553)  ; Saturate(value)
  %5555 = fmul fast float %4963, 0x4013FFFFE0000000
  %5556 = fadd fast float %5555, 0xBFFFFFFFE0000000
  %5557 = call float @dx.op.unary.f32(i32 7, float %5556)  ; Saturate(value)
  %5558 = fmul fast float %4963, 0x4004000020000000
  %5559 = fadd fast float %5558, 0xBFF8000040000000
  %5560 = call float @dx.op.unary.f32(i32 7, float %5559)  ; Saturate(value)
  %5561 = fmul fast float %4661, 1.000000e+01
  %5562 = call float @dx.op.unary.f32(i32 7, float %5561)  ; Saturate(value)
  %5563 = fmul fast float %5562, 2.000000e+00
  %5564 = fsub fast float 3.000000e+00, %5563
  %5565 = fmul fast float %5562, %5562
  %5566 = fmul fast float %5565, %5564
  %5567 = fsub fast float 1.000000e+00, %5566
  %5568 = fsub fast float 0x3FE3333340000000, %5539
  %5569 = fmul fast float %5568, 0x400AAAAAA0000000
  %5570 = call float @dx.op.unary.f32(i32 7, float %5569)  ; Saturate(value)
  %5571 = fmul fast float %5567, %5570
  %5572 = fmul fast float %5530, 0x3FEA2B8620000000
  %5573 = fmul fast float %5531, 0x3FEA2B8620000000
  %5574 = fmul fast float %5532, 0x3FEA2B8620000000
  %5575 = fadd fast float %5572, 0x3FC81DFBA0000000
  %5576 = fmul fast float %5575, %5530
  %5577 = fadd fast float %5576, 0x3F910E6020000000
  %5578 = fadd fast float %5573, 0x3FC81DFBA0000000
  %5579 = fmul fast float %5578, %5531
  %5580 = fadd fast float %5579, 0x3F910E6020000000
  %5581 = fadd fast float %5574, 0x3FC81DFBA0000000
  %5582 = fmul fast float %5581, %5532
  %5583 = fadd fast float %5582, 0x3F910E6020000000
  %5584 = call float @dx.op.unary.f32(i32 7, float %5577)  ; Saturate(value)
  %5585 = call float @dx.op.unary.f32(i32 7, float %5580)  ; Saturate(value)
  %5586 = call float @dx.op.unary.f32(i32 7, float %5583)  ; Saturate(value)
  %5587 = fsub fast float %5584, %5530
  %5588 = fsub fast float %5585, %5531
  %5589 = fsub fast float %5586, %5532
  %5590 = fmul fast float %5587, %5554
  %5591 = fmul fast float %5590, %5571
  %5592 = fmul fast float %5588, %5554
  %5593 = fmul fast float %5592, %5571
  %5594 = fmul fast float %5589, %5554
  %5595 = fmul fast float %5594, %5571
  %5596 = fadd fast float %5591, %5530
  %5597 = fadd fast float %5593, %5531
  %5598 = fadd fast float %5595, %5532
  %5599 = fmul fast float %5540, %5540
  %5600 = fmul fast float %5599, %5599
  %5601 = fadd fast float %5557, 1.000000e+00
  %5602 = fsub fast float %5601, %5571
  %5603 = call float @dx.op.unary.f32(i32 7, float %5602)  ; Saturate(value)
  %5604 = call float @dx.op.dot3.f32(i32 55, float %117, float %118, float %119, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5605 = call float @dx.op.unary.f32(i32 7, float %5604)  ; Saturate(value)
  %5606 = fsub fast float 1.000000e+00, %5600
  %5607 = call float @dx.op.binary.f32(i32 36, float %5603, float %5606)  ; FMin(a,b)
  %5608 = call float @dx.op.unary.f32(i32 7, float %5560)  ; Saturate(value)
  %5609 = call float @dx.op.binary.f32(i32 35, float %5607, float %5608)  ; FMax(a,b)
  %5610 = fadd fast float %5605, 0xBFE4CCCCC0000000
  %5611 = fmul fast float %5610, 0x4006DB6DA0000000
  %5612 = call float @dx.op.unary.f32(i32 7, float %5611)  ; Saturate(value)
  %5613 = fmul fast float %5612, 2.000000e+00
  %5614 = fsub fast float 3.000000e+00, %5613
  %5615 = bitcast float %5536 to i32
  %5616 = ashr i32 %5615, 1
  %5617 = add nsw i32 %5616, 532487669
  %5618 = bitcast i32 %5617 to float
  %5619 = fsub fast float 1.000000e+00, %5618
  %5620 = bitcast float %5619 to i32
  %5621 = sub nsw i32 2129859010, %5620
  %5622 = bitcast i32 %5621 to float
  %5623 = fmul fast float %5622, 2.000000e+00
  %5624 = bitcast float %5537 to i32
  %5625 = ashr i32 %5624, 1
  %5626 = add nsw i32 %5625, 532487669
  %5627 = bitcast i32 %5626 to float
  %5628 = fsub fast float 1.000000e+00, %5627
  %5629 = bitcast float %5628 to i32
  %5630 = sub nsw i32 2129859010, %5629
  %5631 = bitcast i32 %5630 to float
  %5632 = fmul fast float %5631, 2.000000e+00
  %5633 = bitcast float %5538 to i32
  %5634 = ashr i32 %5633, 1
  %5635 = add nsw i32 %5634, 532487669
  %5636 = bitcast i32 %5635 to float
  %5637 = fsub fast float 1.000000e+00, %5636
  %5638 = bitcast float %5637 to i32
  %5639 = sub nsw i32 2129859010, %5638
  %5640 = bitcast i32 %5639 to float
  %5641 = fmul fast float %5640, 2.000000e+00
  %5642 = fsub fast float 0x4002A9FBE0000000, %5623
  %5643 = fadd fast float %5623, 0x3FD54FDF00000000
  %5644 = bitcast float %5643 to i32
  %5645 = sub nsw i32 2129859010, %5644
  %5646 = bitcast i32 %5645 to float
  %5647 = fmul fast float %5646, %5642
  %5648 = fmul fast float %5647, %5647
  %5649 = fsub fast float 0x4002A9FBE0000000, %5632
  %5650 = fadd fast float %5632, 0x3FD54FDF00000000
  %5651 = bitcast float %5650 to i32
  %5652 = sub nsw i32 2129859010, %5651
  %5653 = bitcast i32 %5652 to float
  %5654 = fmul fast float %5653, %5649
  %5655 = fmul fast float %5654, %5654
  %5656 = fsub fast float 0x4002A9FBE0000000, %5641
  %5657 = fadd fast float %5641, 0x3FD54FDF00000000
  %5658 = bitcast float %5657 to i32
  %5659 = sub nsw i32 2129859010, %5658
  %5660 = bitcast i32 %5659 to float
  %5661 = fmul fast float %5660, %5656
  %5662 = fmul fast float %5661, %5661
  %5663 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5648)  ; FMax(a,b)
  %5664 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5655)  ; FMax(a,b)
  %5665 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5662)  ; FMax(a,b)
  %5666 = fsub fast float 1.000000e+00, %5551
  %5667 = fadd fast float %5666, %5567
  %5668 = call float @dx.op.unary.f32(i32 7, float %5667)  ; Saturate(value)
  %5669 = fsub fast float 1.000000e+00, %4782
  %5670 = fmul fast float %5609, %5669
  %5671 = fmul fast float %5612, %5612
  %5672 = fmul fast float %5671, %5670
  %5673 = fmul fast float %5672, %5614
  %5674 = fmul fast float %5669, 0xBFE99999A0000000
  %5675 = fmul fast float %5674, %5554
  %5676 = fmul fast float %5675, %5571
  %5677 = fadd fast float %5676, 1.000000e+00
  %5678 = fadd fast float %5539, -1.000000e+00
  %5679 = fmul fast float %5677, %5678
  %5680 = fadd fast float %5679, 1.000000e+00
  %5681 = fsub fast float %5663, %5536
  %5682 = fsub fast float %5664, %5537
  %5683 = fsub fast float %5665, %5538
  %5684 = fmul fast float %5673, %5681
  %5685 = fmul fast float %5673, %5682
  %5686 = fmul fast float %5673, %5683
  %5687 = fadd fast float %5684, %5536
  %5688 = fadd fast float %5685, %5537
  %5689 = fadd fast float %5686, %5538
  %5690 = fsub fast float %117, %5533
  %5691 = fsub fast float %118, %5534
  %5692 = fsub fast float %119, %5535
  %5693 = fmul fast float %5673, %5690
  %5694 = fmul fast float %5673, %5691
  %5695 = fmul fast float %5673, %5692
  %5696 = fadd fast float %5693, %5533
  %5697 = fadd fast float %5694, %5534
  %5698 = fadd fast float %5695, %5535
  %5699 = fmul fast float %5673, %5668
  %5700 = call float @dx.op.unary.f32(i32 7, float %5680)  ; Saturate(value)
  %5701 = fsub fast float 1.000000e+00, %5700
  %5702 = fmul fast float %5699, %5701
  %5703 = fadd fast float %5702, %5700
  %5704 = fsub fast float 1.000000e+00, %5540
  %5705 = fmul fast float %5673, %5704
  %5706 = fadd fast float %5705, %5540
  %5707 = fcmp fast une float %4964, 0.000000e+00
  %5708 = fcmp fast ogt float %5605, 0x3FE4CCCCC0000000
  %5709 = and i1 %5707, %5708
  br i1 %5709, label %5710, label %5896

; <label>:5710                                    ; preds = %5542
  %5711 = extractvalue %dx.types.CBufRet.f32 %5552, 1
  %5712 = fadd fast float %5711, %198
  %5713 = extractvalue %dx.types.CBufRet.f32 %5552, 0
  %5714 = fadd fast float %5713, %197
  %5715 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %5716 = extractvalue %dx.types.CBufRet.f32 %5715, 3
  %5717 = fadd fast float %5716, 0x3FC0A3D700000000
  %5718 = fmul fast float %5717, 0x3FF6666660000000
  %5719 = fmul fast float %5716, 0x3FF2978D40000000
  %5720 = fmul fast float %5716, 0x3FF5BA5E40000000
  %5721 = fmul fast float %5716, 0x3FF94FDF40000000
  %5722 = call float @dx.op.unary.f32(i32 6, float %5714)  ; FAbs(value)
  %5723 = call float @dx.op.unary.f32(i32 6, float %5712)  ; FAbs(value)
  %5724 = fmul fast float %5722, 0x3F8EB851E0000000
  %5725 = fmul fast float %5723, 0x3F8EB851E0000000
  %5726 = fmul fast float %4964, 4.000000e+00
  %5727 = call float @dx.op.unary.f32(i32 7, float %5726)  ; Saturate(value)
  %5728 = fadd fast float %5724, 2.500000e-01
  %5729 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %45, float %5728, float %5725, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5730 = extractvalue %dx.types.ResRet.f32 %5729, 0
  %5731 = extractvalue %dx.types.ResRet.f32 %5729, 1
  %5732 = extractvalue %dx.types.ResRet.f32 %5729, 2
  %5733 = extractvalue %dx.types.ResRet.f32 %5729, 3
  %5734 = fmul fast float %5731, 2.000000e+00
  %5735 = fmul fast float %5732, 2.000000e+00
  %5736 = fadd fast float %5734, -1.000000e+00
  %5737 = fadd fast float %5735, -1.000000e+00
  %5738 = fsub fast float 1.000000e+00, %5727
  %5739 = fmul fast float %5738, 8.000000e+00
  %5740 = call float @dx.op.unary.f32(i32 21, float %5739)  ; Exp(value)
  %5741 = fmul fast float %5733, %5740
  %5742 = fadd fast float %5718, -1.000000e+00
  %5743 = fadd fast float %5742, %5733
  %5744 = fadd fast float %5743, %5741
  %5745 = frem fast float %5744, %5740
  %5746 = fcmp fast ole float %5745, 1.000000e+00
  %5747 = call float @dx.op.unary.f32(i32 22, float %5745)  ; Frc(value)
  %5748 = select i1 %5746, float %5747, float 0.000000e+00
  %5749 = fadd fast float %5730, -1.000000e+00
  %5750 = fadd fast float %5749, %5748
  %5751 = fsub fast float 1.000000e+00, %5748
  %5752 = call float @dx.op.unary.f32(i32 7, float %5751)  ; Saturate(value)
  %5753 = fmul fast float %5752, %5730
  %5754 = fmul fast float %5750, 8.000000e+00
  %5755 = call float @dx.op.binary.f32(i32 35, float %5754, float 0.000000e+00)  ; FMax(a,b)
  %5756 = call float @dx.op.binary.f32(i32 36, float %5755, float 4.000000e+00)  ; FMin(a,b)
  %5757 = fmul fast float %5756, 0x400921FB60000000
  %5758 = call float @dx.op.unary.f32(i32 13, float %5757)  ; Sin(value)
  %5759 = fadd fast float %5748, -1.000000e+00
  %5760 = fmul fast float %5753, %5759
  %5761 = fmul fast float %5760, %5758
  %5762 = fmul fast float %5761, %5736
  %5763 = fmul fast float %5761, %5737
  %5764 = fadd fast float %5726, -1.000000e+00
  %5765 = call float @dx.op.unary.f32(i32 7, float %5764)  ; Saturate(value)
  %5766 = fadd fast float %5724, 0xBFE19999A0000000
  %5767 = fadd fast float %5725, 0x3FD3D70A40000000
  %5768 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %45, float %5766, float %5767, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5769 = extractvalue %dx.types.ResRet.f32 %5768, 0
  %5770 = extractvalue %dx.types.ResRet.f32 %5768, 1
  %5771 = extractvalue %dx.types.ResRet.f32 %5768, 2
  %5772 = extractvalue %dx.types.ResRet.f32 %5768, 3
  %5773 = fmul fast float %5770, 2.000000e+00
  %5774 = fmul fast float %5771, 2.000000e+00
  %5775 = fadd fast float %5773, -1.000000e+00
  %5776 = fadd fast float %5774, -1.000000e+00
  %5777 = fsub fast float 1.000000e+00, %5765
  %5778 = fmul fast float %5777, 8.000000e+00
  %5779 = call float @dx.op.unary.f32(i32 21, float %5778)  ; Exp(value)
  %5780 = fmul fast float %5772, %5779
  %5781 = fadd fast float %5719, 0xBFE5B22D00000000
  %5782 = fadd fast float %5781, %5772
  %5783 = fadd fast float %5782, %5780
  %5784 = frem fast float %5783, %5779
  %5785 = fcmp fast ole float %5784, 1.000000e+00
  %5786 = call float @dx.op.unary.f32(i32 22, float %5784)  ; Frc(value)
  %5787 = select i1 %5785, float %5786, float 0.000000e+00
  %5788 = fadd fast float %5769, -1.000000e+00
  %5789 = fadd fast float %5788, %5787
  %5790 = fsub fast float 1.000000e+00, %5787
  %5791 = call float @dx.op.unary.f32(i32 7, float %5790)  ; Saturate(value)
  %5792 = fmul fast float %5791, %5769
  %5793 = fmul fast float %5789, 8.000000e+00
  %5794 = call float @dx.op.binary.f32(i32 35, float %5793, float 0.000000e+00)  ; FMax(a,b)
  %5795 = call float @dx.op.binary.f32(i32 36, float %5794, float 4.000000e+00)  ; FMin(a,b)
  %5796 = fmul fast float %5795, 0x400921FB60000000
  %5797 = call float @dx.op.unary.f32(i32 13, float %5796)  ; Sin(value)
  %5798 = fadd fast float %5787, -1.000000e+00
  %5799 = fmul fast float %5792, %5798
  %5800 = fmul fast float %5799, %5797
  %5801 = fmul fast float %5800, %5775
  %5802 = fmul fast float %5800, %5776
  %5803 = fadd fast float %5726, -2.000000e+00
  %5804 = call float @dx.op.unary.f32(i32 7, float %5803)  ; Saturate(value)
  %5805 = fadd fast float %5724, 0x3FE3333340000000
  %5806 = fadd fast float %5725, 0x3FEB333340000000
  %5807 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %45, float %5805, float %5806, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5808 = extractvalue %dx.types.ResRet.f32 %5807, 0
  %5809 = extractvalue %dx.types.ResRet.f32 %5807, 1
  %5810 = extractvalue %dx.types.ResRet.f32 %5807, 2
  %5811 = extractvalue %dx.types.ResRet.f32 %5807, 3
  %5812 = fmul fast float %5809, 2.000000e+00
  %5813 = fmul fast float %5810, 2.000000e+00
  %5814 = fadd fast float %5812, -1.000000e+00
  %5815 = fadd fast float %5813, -1.000000e+00
  %5816 = fsub fast float 1.000000e+00, %5804
  %5817 = fmul fast float %5816, 8.000000e+00
  %5818 = call float @dx.op.unary.f32(i32 21, float %5817)  ; Exp(value)
  %5819 = fmul fast float %5811, %5818
  %5820 = fadd fast float %5720, 0xBFD5E35400000000
  %5821 = fadd fast float %5820, %5811
  %5822 = fadd fast float %5821, %5819
  %5823 = frem fast float %5822, %5818
  %5824 = fcmp fast ole float %5823, 1.000000e+00
  %5825 = call float @dx.op.unary.f32(i32 22, float %5823)  ; Frc(value)
  %5826 = select i1 %5824, float %5825, float 0.000000e+00
  %5827 = fadd fast float %5808, -1.000000e+00
  %5828 = fadd fast float %5827, %5826
  %5829 = fsub fast float 1.000000e+00, %5826
  %5830 = call float @dx.op.unary.f32(i32 7, float %5829)  ; Saturate(value)
  %5831 = fmul fast float %5830, %5808
  %5832 = fmul fast float %5828, 8.000000e+00
  %5833 = call float @dx.op.binary.f32(i32 35, float %5832, float 0.000000e+00)  ; FMax(a,b)
  %5834 = call float @dx.op.binary.f32(i32 36, float %5833, float 4.000000e+00)  ; FMin(a,b)
  %5835 = fmul fast float %5834, 0x400921FB60000000
  %5836 = call float @dx.op.unary.f32(i32 13, float %5835)  ; Sin(value)
  %5837 = fadd fast float %5826, -1.000000e+00
  %5838 = fmul fast float %5831, %5837
  %5839 = fmul fast float %5838, %5836
  %5840 = fmul fast float %5839, %5814
  %5841 = fmul fast float %5839, %5815
  %5842 = fadd fast float %5726, -3.000000e+00
  %5843 = call float @dx.op.unary.f32(i32 7, float %5842)  ; Saturate(value)
  %5844 = fadd fast float %5724, 5.000000e-01
  %5845 = fadd fast float %5725, -7.500000e-01
  %5846 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %45, float %5844, float %5845, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5847 = extractvalue %dx.types.ResRet.f32 %5846, 0
  %5848 = extractvalue %dx.types.ResRet.f32 %5846, 1
  %5849 = extractvalue %dx.types.ResRet.f32 %5846, 2
  %5850 = extractvalue %dx.types.ResRet.f32 %5846, 3
  %5851 = fmul fast float %5848, 2.000000e+00
  %5852 = fmul fast float %5849, 2.000000e+00
  %5853 = fadd fast float %5851, -1.000000e+00
  %5854 = fadd fast float %5852, -1.000000e+00
  %5855 = fsub fast float 1.000000e+00, %5843
  %5856 = fmul fast float %5855, 8.000000e+00
  %5857 = call float @dx.op.unary.f32(i32 21, float %5856)  ; Exp(value)
  %5858 = fmul fast float %5850, %5857
  %5859 = fadd fast float %5721, 0xBF78938000000000
  %5860 = fadd fast float %5859, %5850
  %5861 = fadd fast float %5860, %5858
  %5862 = frem fast float %5861, %5857
  %5863 = fcmp fast ole float %5862, 1.000000e+00
  %5864 = call float @dx.op.unary.f32(i32 22, float %5862)  ; Frc(value)
  %5865 = select i1 %5863, float %5864, float 0.000000e+00
  %5866 = fadd fast float %5847, -1.000000e+00
  %5867 = fadd fast float %5866, %5865
  %5868 = fsub fast float 1.000000e+00, %5865
  %5869 = call float @dx.op.unary.f32(i32 7, float %5868)  ; Saturate(value)
  %5870 = fmul fast float %5869, %5847
  %5871 = fmul fast float %5867, 8.000000e+00
  %5872 = call float @dx.op.binary.f32(i32 35, float %5871, float 0.000000e+00)  ; FMax(a,b)
  %5873 = call float @dx.op.binary.f32(i32 36, float %5872, float 4.000000e+00)  ; FMin(a,b)
  %5874 = fmul fast float %5873, 0x400921FB60000000
  %5875 = call float @dx.op.unary.f32(i32 13, float %5874)  ; Sin(value)
  %5876 = fadd fast float %5865, -1.000000e+00
  %5877 = fmul fast float %5870, %5876
  %5878 = fmul fast float %5877, %5875
  %5879 = fmul fast float %5878, %5853
  %5880 = fmul fast float %5878, %5854
  %5881 = fadd fast float %5801, %5762
  %5882 = fadd fast float %5802, %5763
  %5883 = fadd fast float %5881, %5840
  %5884 = fadd fast float %5882, %5841
  %5885 = fadd fast float %5883, %5879
  %5886 = fadd fast float %5884, %5880
  %5887 = fmul fast float %5605, 0x4006DB6DA0000000
  %5888 = fadd fast float %5887, 0xBFFDB6DB40000000
  %5889 = call float @dx.op.unary.f32(i32 7, float %5888)  ; Saturate(value)
  %5890 = fmul fast float %5889, %5554
  %5891 = fmul fast float %5890, %5669
  %5892 = fmul fast float %5891, %5885
  %5893 = fmul fast float %5891, %5886
  %5894 = fadd fast float %5892, %5696
  %5895 = fadd fast float %5893, %5697
  br label %5896

; <label>:5896                                    ; preds = %5710, %5542
  %5897 = phi float [ %5696, %5542 ], [ %5894, %5710 ]
  %5898 = phi float [ %5697, %5542 ], [ %5895, %5710 ]
  %5899 = call float @dx.op.dot3.f32(i32 55, float %5897, float %5898, float %5698, float %5897, float %5898, float %5698)  ; Dot3(ax,ay,az,bx,by,bz)
  %5900 = call float @dx.op.unary.f32(i32 25, float %5899)  ; Rsqrt(value)
  %5901 = fmul fast float %5900, %5897
  %5902 = fmul fast float %5900, %5898
  %5903 = fmul fast float %5900, %5698
  br label %5904

; <label>:5904                                    ; preds = %5896, %5529
  %5905 = phi float [ %5596, %5896 ], [ %5530, %5529 ]
  %5906 = phi float [ %5597, %5896 ], [ %5531, %5529 ]
  %5907 = phi float [ %5598, %5896 ], [ %5532, %5529 ]
  %5908 = phi float [ %5901, %5896 ], [ %5533, %5529 ]
  %5909 = phi float [ %5902, %5896 ], [ %5534, %5529 ]
  %5910 = phi float [ %5903, %5896 ], [ %5535, %5529 ]
  %5911 = phi float [ %5687, %5896 ], [ %5536, %5529 ]
  %5912 = phi float [ %5688, %5896 ], [ %5537, %5529 ]
  %5913 = phi float [ %5689, %5896 ], [ %5538, %5529 ]
  %5914 = phi float [ %5703, %5896 ], [ %5539, %5529 ]
  %5915 = phi float [ %5706, %5896 ], [ %5540, %5529 ]
  %5916 = icmp eq i32 %54, 0
  br i1 %5916, label %5947, label %5917

; <label>:5917                                    ; preds = %5904
  %5918 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %5919 = extractvalue %dx.types.CBufRet.f32 %5918, 2
  %5920 = extractvalue %dx.types.CBufRet.f32 %5918, 3
  %5921 = fmul fast float %5919, %110
  %5922 = fmul fast float %5920, %111
  %5923 = fmul fast float %5921, 1.024000e+03
  %5924 = fmul fast float %5922, 1.024000e+03
  %5925 = fadd fast float %5923, -5.120000e+02
  %5926 = fadd fast float %5924, -5.120000e+02
  %5927 = fmul fast float %5921, 0x4081BEDF00000000
  %5928 = fadd fast float %5927, 0xC071BEDF00000000
  %5929 = call float @dx.op.unary.f32(i32 22, float %5928)  ; Frc(value)
  %5930 = fmul fast float %5925, %5929
  %5931 = fadd fast float %5930, %5926
  %5932 = fmul fast float %5922, 0x4073BEBE20000000
  %5933 = fadd fast float %5932, 0xC063BEBE20000000
  %5934 = call float @dx.op.unary.f32(i32 22, float %5933)  ; Frc(value)
  %5935 = fmul fast float %5926, %5934
  %5936 = fadd fast float %5935, %5925
  %5937 = fmul fast float %5931, %5936
  %5938 = call float @dx.op.unary.f32(i32 22, float %5937)  ; Frc(value)
  %5939 = add i32 %325, 12
  %5940 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %5939, i32 undef)  ; BufferLoad(srv,index,wot)
  %5941 = extractvalue %dx.types.ResRet.i32 %5940, 0
  %5942 = and i32 %5941, 255
  %5943 = uitofp i32 %5942 to float
  %5944 = fmul fast float %5943, 0x3F70101020000000
  %5945 = fcmp fast olt float %5938, %5944
  br i1 %5945, label %5946, label %5947

; <label>:5946                                    ; preds = %5917
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %5947

; <label>:5947                                    ; preds = %5946, %5917, %5904
  %5948 = call float @dx.op.dot3.f32(i32 55, float %197, float %198, float %199, float %197, float %198, float %199)  ; Dot3(ax,ay,az,bx,by,bz)
  %5949 = call float @dx.op.unary.f32(i32 25, float %5948)  ; Rsqrt(value)
  %5950 = fmul fast float %5949, %197
  %5951 = fmul fast float %5949, %198
  %5952 = fmul fast float %5949, %199
  %5953 = fsub fast float -0.000000e+00, %5950
  %5954 = fsub fast float -0.000000e+00, %5951
  %5955 = fsub fast float -0.000000e+00, %5952
  %5956 = select i1 %271, float 0.000000e+00, float %5913
  %5957 = call float @dx.op.dot3.f32(i32 55, float %5908, float %5909, float %5910, float %5953, float %5954, float %5955)  ; Dot3(ax,ay,az,bx,by,bz)
  %5958 = call float @dx.op.unary.f32(i32 7, float %5957)  ; Saturate(value)
  %5959 = call float @dx.op.dot3.f32(i32 55, float %5950, float %5951, float %5952, float %5908, float %5909, float %5910)  ; Dot3(ax,ay,az,bx,by,bz)
  %5960 = fmul fast float %5959, 2.000000e+00
  %5961 = fmul fast float %5960, %5908
  %5962 = fmul fast float %5960, %5909
  %5963 = fmul fast float %5960, %5910
  %5964 = fsub fast float %5950, %5961
  %5965 = fsub fast float %5951, %5962
  %5966 = fsub fast float %5952, %5963
  %5967 = call float @dx.op.binary.f32(i32 36, float %5915, float 1.000000e+00)  ; FMin(a,b)
  %5968 = fsub fast float 1.000000e+00, %5967
  %5969 = bitcast float %5968 to i32
  %5970 = ashr i32 %5969, 1
  %5971 = add nsw i32 %5970, 532487669
  %5972 = bitcast i32 %5971 to float
  %5973 = fsub fast float 1.000000e+00, %5914
  %5974 = call float @dx.op.binary.f32(i32 35, float %5973, float 0x3F847AE140000000)  ; FMax(a,b)
  %5975 = fmul fast float %5974, %5974
  %5976 = fmul fast float %5975, %5975
  %5977 = call float @dx.op.unary.f32(i32 7, float %5958)  ; Saturate(value)
  %5978 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %46, float %5972, float %5976, float %5977, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5979 = extractvalue %dx.types.ResRet.f32 %5978, 0
  %5980 = fsub fast float 1.000000e+00, %5915
  %5981 = bitcast float %5980 to i32
  %5982 = sub nsw i32 2129859010, %5981
  %5983 = bitcast i32 %5982 to float
  %5984 = fsub fast float 1.000000e+00, %77
  %5985 = call float @dx.op.dot3.f32(i32 55, float %137, float %138, float %139, float %117, float %118, float %119)  ; Dot3(ax,ay,az,bx,by,bz)
  %5986 = call float @dx.op.binary.f32(i32 35, float %5985, float 0x3FA99999A0000000)  ; FMax(a,b)
  %5987 = fdiv fast float %5984, %5986
  %5988 = call float @dx.op.dot3.f32(i32 55, float %5908, float %5909, float %5910, float %117, float %118, float %119)  ; Dot3(ax,ay,az,bx,by,bz)
  %5989 = call float @dx.op.unary.f32(i32 7, float %5988)  ; Saturate(value)
  %5990 = fmul fast float %5989, 5.000000e-01
  %5991 = fadd fast float %5990, 5.000000e-01
  %5992 = fmul fast float %5991, %77
  %5993 = call float @dx.op.dot3.f32(i32 55, float %5908, float %5909, float %5910, float %137, float %138, float %139)  ; Dot3(ax,ay,az,bx,by,bz)
  %5994 = call float @dx.op.unary.f32(i32 7, float %5993)  ; Saturate(value)
  %5995 = fmul fast float %5994, %5987
  %5996 = fadd fast float %5992, %5995
  %5997 = fsub fast float 5.000000e-01, %5990
  %5998 = fmul fast float %5997, %5905
  %5999 = fmul fast float %5997, %5906
  %6000 = fmul fast float %5997, %5907
  %6001 = fadd fast float %5996, %5998
  %6002 = fadd fast float %5996, %5999
  %6003 = fadd fast float %5996, %6000
  %6004 = call float @dx.op.dot3.f32(i32 55, float %5964, float %5965, float %5966, float %117, float %118, float %119)  ; Dot3(ax,ay,az,bx,by,bz)
  %6005 = call float @dx.op.unary.f32(i32 7, float %6004)  ; Saturate(value)
  %6006 = fmul fast float %6005, 5.000000e-01
  %6007 = fadd fast float %6006, 5.000000e-01
  %6008 = fmul fast float %6007, %77
  %6009 = call float @dx.op.dot3.f32(i32 55, float %5964, float %5965, float %5966, float %137, float %138, float %139)  ; Dot3(ax,ay,az,bx,by,bz)
  %6010 = call float @dx.op.unary.f32(i32 7, float %6009)  ; Saturate(value)
  %6011 = fmul fast float %6010, %5987
  %6012 = fadd fast float %6008, %6011
  %6013 = fsub fast float 5.000000e-01, %6006
  %6014 = fmul fast float %6013, %5905
  %6015 = fmul fast float %6013, %5906
  %6016 = fmul fast float %6013, %5907
  %6017 = fadd fast float %6012, %6014
  %6018 = fadd fast float %6012, %6015
  %6019 = fadd fast float %6012, %6016
  %6020 = call float @dx.op.dot3.f32(i32 55, float %78, float %79, float %80, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6021 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %6022 = extractvalue %dx.types.CBufRet.f32 %6021, 0
  %6023 = call float @dx.op.binary.f32(i32 36, float %5905, float %6022)  ; FMin(a,b)
  %6024 = fmul fast float %6023, %5968
  %6025 = fsub fast float 1.000000e+00, %6024
  %6026 = bitcast float %6025 to i32
  %6027 = sub nsw i32 2129859010, %6026
  %6028 = bitcast i32 %6027 to float
  %6029 = call float @dx.op.binary.f32(i32 36, float %5906, float %6022)  ; FMin(a,b)
  %6030 = fmul fast float %6029, %5968
  %6031 = fsub fast float 1.000000e+00, %6030
  %6032 = bitcast float %6031 to i32
  %6033 = sub nsw i32 2129859010, %6032
  %6034 = bitcast i32 %6033 to float
  %6035 = call float @dx.op.binary.f32(i32 36, float %5907, float %6022)  ; FMin(a,b)
  %6036 = fmul fast float %6035, %5968
  %6037 = fsub fast float 1.000000e+00, %6036
  %6038 = bitcast float %6037 to i32
  %6039 = sub nsw i32 2129859010, %6038
  %6040 = bitcast i32 %6039 to float
  %6041 = fmul fast float %5967, %78
  %6042 = fmul fast float %6041, %6001
  %6043 = fmul fast float %6042, %6028
  %6044 = fmul fast float %5967, %79
  %6045 = fmul fast float %6044, %6002
  %6046 = fmul fast float %6045, %6034
  %6047 = fmul fast float %5967, %80
  %6048 = fmul fast float %6047, %6003
  %6049 = fmul fast float %6048, %6040
  %6050 = call float @dx.op.binary.f32(i32 36, float %5911, float %6022)  ; FMin(a,b)
  %6051 = fmul fast float %6050, %5968
  %6052 = fsub fast float 1.000000e+00, %6051
  %6053 = bitcast float %6052 to i32
  %6054 = sub nsw i32 2129859010, %6053
  %6055 = bitcast i32 %6054 to float
  %6056 = call float @dx.op.binary.f32(i32 36, float %5912, float %6022)  ; FMin(a,b)
  %6057 = fmul fast float %6056, %5968
  %6058 = fsub fast float 1.000000e+00, %6057
  %6059 = bitcast float %6058 to i32
  %6060 = sub nsw i32 2129859010, %6059
  %6061 = bitcast i32 %6060 to float
  %6062 = call float @dx.op.binary.f32(i32 36, float %5956, float %6022)  ; FMin(a,b)
  %6063 = fmul fast float %6062, %5968
  %6064 = fsub fast float 1.000000e+00, %6063
  %6065 = bitcast float %6064 to i32
  %6066 = sub nsw i32 2129859010, %6065
  %6067 = bitcast i32 %6066 to float
  %6068 = fmul fast float %6041, %6017
  %6069 = fmul fast float %6068, %6055
  %6070 = fmul fast float %6044, %6018
  %6071 = fmul fast float %6070, %6061
  %6072 = fmul fast float %6047, %6019
  %6073 = fmul fast float %6072, %6067
  %6074 = call float @dx.op.dot3.f32(i32 55, float %6043, float %6046, float %6049, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6075 = select i1 %271, float 0.000000e+00, float %6043
  %6076 = select i1 %271, float %6074, float %6046
  %6077 = select i1 %271, float 0.000000e+00, float %6049
  %6078 = call float @dx.op.dot3.f32(i32 55, float %6069, float %6071, float %6073, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6079 = select i1 %271, float 0.000000e+00, float %6069
  %6080 = select i1 %271, float %6078, float %6071
  %6081 = select i1 %271, float 0.000000e+00, float %6073
  %6082 = call float @dx.op.unary.f32(i32 6, float %73)  ; FAbs(value)
  %6083 = fmul fast float %6082, %6075
  %6084 = fmul fast float %6082, %6076
  %6085 = fmul fast float %6077, %6082
  %6086 = fmul fast float %4016, %4016
  %6087 = call float @dx.op.unary.f32(i32 7, float %6086)  ; Saturate(value)
  %6088 = fmul fast float %5958, 9.843750e-01
  %6089 = fmul fast float %5914, 9.843750e-01
  %6090 = fadd fast float %6088, 7.812500e-03
  %6091 = fadd fast float %6089, 7.812500e-03
  %6092 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %38, %dx.types.Handle %46, float %6090, float %6091, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6093 = extractvalue %dx.types.ResRet.f32 %6092, 0
  %6094 = extractvalue %dx.types.ResRet.f32 %6092, 1
  %6095 = extractvalue %dx.types.ResRet.f32 %6092, 2
  %6096 = extractvalue %dx.types.ResRet.f32 %6092, 3
  %6097 = fsub fast float 1.000000e+00, %6087
  %6098 = fsub fast float %6095, %6093
  %6099 = fsub fast float %6096, %6094
  %6100 = fmul fast float %6098, %6097
  %6101 = fmul fast float %6099, %6097
  %6102 = fadd fast float %6100, %6093
  %6103 = fadd fast float %6101, %6094
  %6104 = fmul fast float %6102, %5911
  %6105 = fmul fast float %6102, %5912
  %6106 = fmul fast float %6102, %5956
  %6107 = fadd fast float %6104, %6103
  %6108 = fadd fast float %6105, %6103
  %6109 = fadd fast float %6106, %6103
  %6110 = fcmp fast ogt float %4656, 0.000000e+00
  br i1 %6110, label %6111, label %6137

; <label>:6111                                    ; preds = %5947
  %6112 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %46, float %4656, float %5958, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6113 = extractvalue %dx.types.ResRet.f32 %6112, 0
  %6114 = extractvalue %dx.types.ResRet.f32 %6112, 1
  %6115 = extractvalue %dx.types.ResRet.f32 %6112, 2
  %6116 = fadd fast float %6113, -5.000000e-01
  %6117 = fadd fast float %6114, -5.000000e-01
  %6118 = fadd fast float %6115, -5.000000e-01
  %6119 = fsub fast float 1.000000e+00, %5911
  %6120 = fsub fast float 1.000000e+00, %5912
  %6121 = fsub fast float 1.000000e+00, %5956
  %6122 = fmul fast float %5911, 4.000000e+00
  %6123 = fmul fast float %6122, %6119
  %6124 = fmul fast float %6123, %6116
  %6125 = fmul fast float %5912, 4.000000e+00
  %6126 = fmul fast float %6125, %6120
  %6127 = fmul fast float %6126, %6117
  %6128 = fmul fast float %5956, 4.000000e+00
  %6129 = fmul fast float %6128, %6121
  %6130 = fmul fast float %6129, %6118
  %6131 = fadd fast float %6124, %6107
  %6132 = fadd fast float %6127, %6108
  %6133 = fadd fast float %6130, %6109
  %6134 = call float @dx.op.unary.f32(i32 7, float %6131)  ; Saturate(value)
  %6135 = call float @dx.op.unary.f32(i32 7, float %6132)  ; Saturate(value)
  %6136 = call float @dx.op.unary.f32(i32 7, float %6133)  ; Saturate(value)
  br label %6137

; <label>:6137                                    ; preds = %6111, %5947
  %6138 = phi float [ %6134, %6111 ], [ %6107, %5947 ]
  %6139 = phi float [ %6135, %6111 ], [ %6108, %5947 ]
  %6140 = phi float [ %6136, %6111 ], [ %6109, %5947 ]
  %6141 = call float @dx.op.binary.f32(i32 35, float %6139, float %6140)  ; FMax(a,b)
  %6142 = call float @dx.op.binary.f32(i32 35, float %6138, float %6141)  ; FMax(a,b)
  %6143 = fsub fast float 1.000000e+00, %6142
  %6144 = fmul fast float %6142, %5914
  %6145 = fadd fast float %6144, %5914
  %6146 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 252)  ; CBufferLoadLegacy(handle,regIndex)
  %6147 = extractvalue %dx.types.CBufRet.f32 %6146, 2
  %6148 = extractvalue %dx.types.CBufRet.f32 %6146, 3
  %6149 = fmul fast float %6145, %6147
  %6150 = fadd fast float %6149, %6148
  %6151 = call float @dx.op.unary.f32(i32 7, float %6150)  ; Saturate(value)
  %6152 = fsub fast float 1.000000e+00, %5979
  %6153 = fadd fast float %6152, %6151
  %6154 = call float @dx.op.unary.f32(i32 7, float %6153)  ; Saturate(value)
  %6155 = fcmp fast olt float %6154, 1.000000e+00
  br i1 %6155, label %6156, label %6604

; <label>:6156                                    ; preds = %6137
  %6157 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %6158 = extractvalue %dx.types.CBufRet.f32 %6157, 2
  %6159 = extractvalue %dx.types.CBufRet.f32 %6157, 3
  %6160 = fmul fast float %6158, %110
  %6161 = fmul fast float %6159, %111
  %6162 = fptoui float %6160 to i32
  %6163 = fptoui float %6161 to i32
  %6164 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %6165 = extractvalue %dx.types.CBufRet.f32 %6164, 0
  %6166 = extractvalue %dx.types.CBufRet.f32 %6164, 2
  %6167 = extractvalue %dx.types.CBufRet.f32 %6164, 3
  %6168 = fadd fast float %97, -4.000000e+00
  %6169 = call float @dx.op.binary.f32(i32 35, float %6168, float 0.000000e+00)  ; FMax(a,b)
  %6170 = fadd fast float %6169, %6165
  %6171 = fmul fast float %6170, %6166
  %6172 = call float @dx.op.unary.f32(i32 23, float %6171)  ; Log(value)
  %6173 = fmul fast float %6172, %6167
  %6174 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6175 = extractvalue %dx.types.CBufRet.f32 %6174, 2
  %6176 = fmul fast float %6173, %6175
  %6177 = call float @dx.op.unary.f32(i32 7, float %6176)  ; Saturate(value)
  %6178 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6179 = extractvalue %dx.types.CBufRet.i32 %6178, 1
  %6180 = add i32 %6179, -1
  %6181 = uitofp i32 %6179 to float
  %6182 = fmul fast float %6181, %6177
  %6183 = fptoui float %6182 to i32
  %6184 = call i32 @dx.op.binary.i32(i32 40, i32 %6183, i32 %6180)  ; UMin(a,b)
  %6185 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %6186 = extractvalue %dx.types.CBufRet.i32 %6185, 2
  %6187 = extractvalue %dx.types.CBufRet.i32 %6185, 3
  %6188 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6163, i32 %6186, i32 %6162)  ; UMad(a,b,c)
  %6189 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6184, i32 %6187, i32 %6188)  ; UMad(a,b,c)
  %6190 = call float @dx.op.binary.f32(i32 35, float %97, float 0.000000e+00)  ; FMax(a,b)
  %6191 = fptoui float %6190 to i32
  %6192 = lshr i32 %6191, 5
  %6193 = call i32 @dx.op.binary.i32(i32 40, i32 %6192, i32 8191)  ; UMin(a,b)
  br i1 false, label %6194, label %6201

; <label>:6194                                    ; preds = %6156
  %6195 = fadd fast float 0.000000e+00, %5966
  %6196 = call float @dx.op.dot3.f32(i32 55, float %5964, float %5965, float %6195, float %5964, float %5965, float %6195)  ; Dot3(ax,ay,az,bx,by,bz)
  %6197 = call float @dx.op.unary.f32(i32 25, float %6196)  ; Rsqrt(value)
  %6198 = fmul fast float %6197, %5964
  %6199 = fmul fast float %6197, %5965
  %6200 = fmul fast float %6195, %6197
  br label %6201

; <label>:6201                                    ; preds = %6194, %6156
  %6202 = phi float [ %6198, %6194 ], [ %5964, %6156 ]
  %6203 = phi float [ %6199, %6194 ], [ %5965, %6156 ]
  %6204 = phi float [ %6200, %6194 ], [ %5966, %6156 ]
  %6205 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6206 = extractvalue %dx.types.CBufRet.i32 %6205, 2
  %6207 = add nsw i32 %6206, -1
  %6208 = call i32 @dx.op.binary.i32(i32 37, i32 %6207, i32 0)  ; IMax(a,b)
  %6209 = shl i32 %6193, 2
  %6210 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %6209, i32 undef)  ; BufferLoad(srv,index,wot)
  %6211 = extractvalue %dx.types.ResRet.i32 %6210, 0
  %6212 = lshr i32 %6211, 16
  %6213 = and i32 %6211, 65535
  %6214 = lshr i32 %6211, 21
  %6215 = lshr i32 %6213, 5
  %6216 = call i32 @dx.op.binary.i32(i32 40, i32 %6215, i32 %6208)  ; UMin(a,b)
  %6217 = icmp ugt i32 %6214, %6216
  br i1 %6217, label %6580, label %6218

; <label>:6218                                    ; preds = %6201
  br label %6219

; <label>:6219                                    ; preds = %6572, %6218
  %6220 = phi float [ %6573, %6572 ], [ 0.000000e+00, %6218 ]
  %6221 = phi float [ %6574, %6572 ], [ 0.000000e+00, %6218 ]
  %6222 = phi float [ %6575, %6572 ], [ 0.000000e+00, %6218 ]
  %6223 = phi float [ %6576, %6572 ], [ 1.000000e+00, %6218 ]
  %6224 = phi i32 [ %6577, %6572 ], [ %6214, %6218 ]
  %6225 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6226 = extractvalue %dx.types.CBufRet.i32 %6225, 2
  %6227 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6189, i32 %6226, i32 %6224)  ; UMad(a,b,c)
  %6228 = shl i32 %6227, 2
  %6229 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 %6228, i32 undef)  ; BufferLoad(srv,index,wot)
  %6230 = extractvalue %dx.types.ResRet.i32 %6229, 0
  %6231 = shl i32 %6224, 5
  %6232 = sub nsw i32 %6212, %6231
  %6233 = call i32 @dx.op.binary.i32(i32 37, i32 %6232, i32 0)  ; IMax(a,b)
  %6234 = call i32 @dx.op.binary.i32(i32 38, i32 %6233, i32 31)  ; IMin(a,b)
  %6235 = sub nsw i32 1, %6212
  %6236 = add nsw i32 %6235, %6213
  %6237 = call i32 @dx.op.binary.i32(i32 37, i32 %6236, i32 0)  ; IMax(a,b)
  %6238 = call i32 @dx.op.binary.i32(i32 38, i32 %6237, i32 32)  ; IMin(a,b)
  %6239 = and i32 %6238, 31
  %6240 = shl i32 -1, %6239
  %6241 = xor i32 %6240, -1
  %6242 = and i32 %6234, 31
  %6243 = shl i32 %6241, %6242
  %6244 = icmp eq i32 %6238, 32
  %6245 = select i1 %6244, i32 -1, i32 %6243
  %6246 = and i32 %6245, %6230
  %6247 = icmp eq i32 %6246, 0
  br i1 %6247, label %6572, label %6248

; <label>:6248                                    ; preds = %6219
  br label %6249

; <label>:6249                                    ; preds = %6355, %6248
  %6250 = phi float [ %6356, %6355 ], [ %6220, %6248 ]
  %6251 = phi float [ %6357, %6355 ], [ %6221, %6248 ]
  %6252 = phi float [ %6358, %6355 ], [ %6222, %6248 ]
  %6253 = phi float [ %6359, %6355 ], [ %6223, %6248 ]
  %6254 = phi i32 [ %6259, %6355 ], [ %6246, %6248 ]
  %6255 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %6254)  ; FirstbitLo(value)
  %6256 = add i32 %6255, %6231
  %6257 = and i32 %6255, 31
  %6258 = shl i32 1, %6257
  %6259 = xor i32 %6258, %6254
  %6260 = mul i32 %6256, 72
  %6261 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %6260, i32 undef)  ; BufferLoad(srv,index,wot)
  %6262 = extractvalue %dx.types.ResRet.f32 %6261, 0
  %6263 = extractvalue %dx.types.ResRet.f32 %6261, 1
  %6264 = extractvalue %dx.types.ResRet.f32 %6261, 2
  %6265 = add i32 %6260, 12
  %6266 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %6265, i32 undef)  ; BufferLoad(srv,index,wot)
  %6267 = extractvalue %dx.types.ResRet.i32 %6266, 0
  %6268 = add i32 %6260, 16
  %6269 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %6268, i32 undef)  ; BufferLoad(srv,index,wot)
  %6270 = extractvalue %dx.types.ResRet.f32 %6269, 0
  %6271 = extractvalue %dx.types.ResRet.f32 %6269, 1
  %6272 = extractvalue %dx.types.ResRet.f32 %6269, 2
  %6273 = add i32 %6260, 28
  %6274 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %6273, i32 undef)  ; BufferLoad(srv,index,wot)
  %6275 = extractvalue %dx.types.ResRet.f32 %6274, 0
  %6276 = add i32 %6260, 32
  %6277 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %6276, i32 undef)  ; BufferLoad(srv,index,wot)
  %6278 = extractvalue %dx.types.ResRet.f32 %6277, 0
  %6279 = extractvalue %dx.types.ResRet.f32 %6277, 1
  %6280 = extractvalue %dx.types.ResRet.f32 %6277, 2
  %6281 = extractvalue %dx.types.ResRet.f32 %6277, 3
  %6282 = add i32 %6260, 48
  %6283 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %6282, i32 undef)  ; BufferLoad(srv,index,wot)
  %6284 = extractvalue %dx.types.ResRet.f32 %6283, 0
  %6285 = extractvalue %dx.types.ResRet.f32 %6283, 1
  %6286 = add i32 %6260, 56
  %6287 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %6286, i32 undef)  ; BufferLoad(srv,index,wot)
  %6288 = extractvalue %dx.types.ResRet.f32 %6287, 0
  %6289 = extractvalue %dx.types.ResRet.f32 %6287, 1
  %6290 = add i32 %6260, 64
  %6291 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %6290, i32 undef)  ; BufferLoad(srv,index,wot)
  %6292 = extractvalue %dx.types.ResRet.f32 %6291, 0
  %6293 = extractvalue %dx.types.ResRet.f32 %6291, 1
  %6294 = mul i32 %6256, 60
  %6295 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %36, i32 %6294, i32 undef)  ; BufferLoad(srv,index,wot)
  %6296 = extractvalue %dx.types.ResRet.f32 %6295, 0
  %6297 = extractvalue %dx.types.ResRet.f32 %6295, 1
  %6298 = extractvalue %dx.types.ResRet.f32 %6295, 2
  %6299 = add i32 %6294, 12
  %6300 = add i32 %6294, 48
  %6301 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %36, i32 %6300, i32 undef)  ; BufferLoad(srv,index,wot)
  %6302 = extractvalue %dx.types.ResRet.f32 %6301, 0
  %6303 = extractvalue %dx.types.ResRet.f32 %6301, 1
  %6304 = extractvalue %dx.types.ResRet.f32 %6301, 2
  %6305 = and i32 %6267, 32767
  %6306 = bitcast float %6262 to i32
  %6307 = icmp eq i32 %6306, -1
  %6308 = bitcast float %6263 to i32
  %6309 = and i32 %6267, 32768
  %6310 = icmp ne i32 %6309, 0
  %6311 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %6312 = extractvalue %dx.types.CBufRet.f32 %6311, 0
  %6313 = extractvalue %dx.types.CBufRet.f32 %6311, 1
  %6314 = extractvalue %dx.types.CBufRet.f32 %6311, 2
  %6315 = fsub fast float %6296, %6312
  %6316 = fsub fast float %6297, %6313
  %6317 = fsub fast float %6298, %6314
  %6318 = fsub fast float %197, %6315
  %6319 = fsub fast float %198, %6316
  %6320 = fsub fast float %199, %6317
  %6321 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %36, i32 %6299, i32 undef)  ; BufferLoad(srv,index,wot)
  %6322 = extractvalue %dx.types.ResRet.f32 %6321, 0
  %6323 = extractvalue %dx.types.ResRet.f32 %6321, 1
  %6324 = extractvalue %dx.types.ResRet.f32 %6321, 2
  %6325 = call float @dx.op.dot3.f32(i32 55, float %6318, float %6319, float %6320, float %6322, float %6323, float %6324)  ; Dot3(ax,ay,az,bx,by,bz)
  %6326 = add i32 %6294, 24
  %6327 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %36, i32 %6326, i32 undef)  ; BufferLoad(srv,index,wot)
  %6328 = extractvalue %dx.types.ResRet.f32 %6327, 0
  %6329 = extractvalue %dx.types.ResRet.f32 %6327, 1
  %6330 = extractvalue %dx.types.ResRet.f32 %6327, 2
  %6331 = call float @dx.op.dot3.f32(i32 55, float %6318, float %6319, float %6320, float %6328, float %6329, float %6330)  ; Dot3(ax,ay,az,bx,by,bz)
  %6332 = add i32 %6294, 36
  %6333 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %36, i32 %6332, i32 undef)  ; BufferLoad(srv,index,wot)
  %6334 = extractvalue %dx.types.ResRet.f32 %6333, 0
  %6335 = extractvalue %dx.types.ResRet.f32 %6333, 1
  %6336 = extractvalue %dx.types.ResRet.f32 %6333, 2
  %6337 = call float @dx.op.dot3.f32(i32 55, float %6318, float %6319, float %6320, float %6334, float %6335, float %6336)  ; Dot3(ax,ay,az,bx,by,bz)
  %6338 = call float @dx.op.unary.f32(i32 6, float %6325)  ; FAbs(value)
  %6339 = call float @dx.op.unary.f32(i32 6, float %6331)  ; FAbs(value)
  %6340 = call float @dx.op.unary.f32(i32 6, float %6337)  ; FAbs(value)
  %6341 = fsub fast float %6302, %6338
  %6342 = fsub fast float %6303, %6339
  %6343 = fsub fast float %6304, %6340
  %6344 = fmul fast float %6341, %6270
  %6345 = fmul fast float %6342, %6271
  %6346 = fmul fast float %6343, %6272
  %6347 = call float @dx.op.binary.f32(i32 36, float %6345, float %6346)  ; FMin(a,b)
  %6348 = call float @dx.op.binary.f32(i32 36, float %6344, float %6347)  ; FMin(a,b)
  %6349 = call float @dx.op.unary.f32(i32 7, float %6348)  ; Saturate(value)
  %6350 = call float @dx.op.binary.f32(i32 36, float %6253, float %6349)  ; FMin(a,b)
  %6351 = uitofp i1 %6310 to float
  %6352 = fsub fast float 1.000000e+00, %6351
  %6353 = fmul fast float %6350, %6352
  %6354 = fcmp fast ogt float %6353, 0.000000e+00
  br i1 %6354, label %6361, label %6355

; <label>:6355                                    ; preds = %6503, %6249
  %6356 = phi float [ %6567, %6503 ], [ %6250, %6249 ]
  %6357 = phi float [ %6568, %6503 ], [ %6251, %6249 ]
  %6358 = phi float [ %6569, %6503 ], [ %6252, %6249 ]
  %6359 = phi float [ %6570, %6503 ], [ %6253, %6249 ]
  %6360 = icmp eq i32 %6254, %6258
  br i1 %6360, label %6571, label %6249

; <label>:6361                                    ; preds = %6249
  br i1 %6307, label %6419, label %6362

; <label>:6362                                    ; preds = %6361
  %6363 = fsub fast float -0.000000e+00, %6322
  %6364 = fsub fast float -0.000000e+00, %6323
  %6365 = fsub fast float -0.000000e+00, %6324
  %6366 = call float @dx.op.dot3.f32(i32 55, float %6202, float %6203, float %6204, float %6363, float %6364, float %6365)  ; Dot3(ax,ay,az,bx,by,bz)
  %6367 = fsub fast float -0.000000e+00, %6366
  %6368 = call float @dx.op.dot3.f32(i32 55, float %6318, float %6319, float %6320, float %6363, float %6364, float %6365)  ; Dot3(ax,ay,az,bx,by,bz)
  %6369 = fadd fast float %6368, %6285
  %6370 = fadd fast float %6284, %6368
  %6371 = fsub fast float -0.000000e+00, %6370
  %6372 = fcmp ogt float %6366, -0.000000e+00
  %6373 = select i1 %6372, float %6371, float %6369
  %6374 = call float @dx.op.unary.f32(i32 6, float %6367)  ; FAbs(value)
  %6375 = fdiv fast float 1.000000e+00, %6374
  %6376 = fmul fast float %6373, %6375
  %6377 = call float @dx.op.binary.f32(i32 35, float %6376, float 0.000000e+00)  ; FMax(a,b)
  %6378 = fsub fast float -0.000000e+00, %6328
  %6379 = fsub fast float -0.000000e+00, %6329
  %6380 = fsub fast float -0.000000e+00, %6330
  %6381 = call float @dx.op.dot3.f32(i32 55, float %6202, float %6203, float %6204, float %6378, float %6379, float %6380)  ; Dot3(ax,ay,az,bx,by,bz)
  %6382 = fsub fast float -0.000000e+00, %6381
  %6383 = call float @dx.op.dot3.f32(i32 55, float %6318, float %6319, float %6320, float %6378, float %6379, float %6380)  ; Dot3(ax,ay,az,bx,by,bz)
  %6384 = fadd fast float %6383, %6289
  %6385 = fadd fast float %6288, %6383
  %6386 = fsub fast float -0.000000e+00, %6385
  %6387 = fcmp ogt float %6381, -0.000000e+00
  %6388 = select i1 %6387, float %6386, float %6384
  %6389 = call float @dx.op.unary.f32(i32 6, float %6382)  ; FAbs(value)
  %6390 = fdiv fast float 1.000000e+00, %6389
  %6391 = fmul fast float %6388, %6390
  %6392 = call float @dx.op.binary.f32(i32 35, float %6391, float 0.000000e+00)  ; FMax(a,b)
  %6393 = fsub fast float -0.000000e+00, %6334
  %6394 = fsub fast float -0.000000e+00, %6335
  %6395 = fsub fast float -0.000000e+00, %6336
  %6396 = call float @dx.op.dot3.f32(i32 55, float %6202, float %6203, float %6204, float %6393, float %6394, float %6395)  ; Dot3(ax,ay,az,bx,by,bz)
  %6397 = fsub fast float -0.000000e+00, %6396
  %6398 = call float @dx.op.dot3.f32(i32 55, float %6318, float %6319, float %6320, float %6393, float %6394, float %6395)  ; Dot3(ax,ay,az,bx,by,bz)
  %6399 = fadd fast float %6398, %6293
  %6400 = fadd fast float %6292, %6398
  %6401 = fsub fast float -0.000000e+00, %6400
  %6402 = fcmp ogt float %6396, -0.000000e+00
  %6403 = select i1 %6402, float %6401, float %6399
  %6404 = call float @dx.op.unary.f32(i32 6, float %6397)  ; FAbs(value)
  %6405 = fdiv fast float 1.000000e+00, %6404
  %6406 = fmul fast float %6403, %6405
  %6407 = call float @dx.op.binary.f32(i32 35, float %6406, float 0.000000e+00)  ; FMax(a,b)
  %6408 = call float @dx.op.binary.f32(i32 36, float %6392, float %6407)  ; FMin(a,b)
  %6409 = call float @dx.op.binary.f32(i32 36, float %6377, float %6408)  ; FMin(a,b)
  %6410 = fmul fast float %6409, %6202
  %6411 = fmul fast float %6409, %6203
  %6412 = fmul fast float %6409, %6204
  %6413 = fadd fast float %6410, %197
  %6414 = fadd fast float %6411, %198
  %6415 = fadd fast float %6412, %199
  %6416 = fsub fast float %6413, %6262
  %6417 = fsub fast float %6414, %6263
  %6418 = fsub fast float %6415, %6264
  br label %6426

; <label>:6419                                    ; preds = %6361
  %6420 = fmul fast float %6202, 8.096000e+03
  %6421 = fmul fast float %6203, 8.096000e+03
  %6422 = fmul fast float %6204, 8.096000e+03
  %6423 = fadd fast float %6420, %197
  %6424 = fadd fast float %6421, %198
  %6425 = fadd fast float %6422, %199
  br label %6426

; <label>:6426                                    ; preds = %6419, %6362
  %6427 = phi float [ %6202, %6419 ], [ %6416, %6362 ]
  %6428 = phi float [ %6203, %6419 ], [ %6417, %6362 ]
  %6429 = phi float [ %6204, %6419 ], [ %6418, %6362 ]
  %6430 = phi float [ %6423, %6419 ], [ %6413, %6362 ]
  %6431 = phi float [ %6424, %6419 ], [ %6414, %6362 ]
  %6432 = phi float [ %6425, %6419 ], [ %6415, %6362 ]
  %6433 = fcmp fast olt float %6281, 1.000000e+00
  br i1 %6433, label %6434, label %6465, !dx.controlflow.hints !95

; <label>:6434                                    ; preds = %6426
  %6435 = fmul fast float %6429, %6279
  %6436 = fmul fast float %6428, %6280
  %6437 = fsub fast float %6435, %6436
  %6438 = fmul fast float %6427, %6280
  %6439 = fmul fast float %6429, %6278
  %6440 = fsub fast float %6438, %6439
  %6441 = fmul fast float %6428, %6278
  %6442 = fmul fast float %6427, %6279
  %6443 = fsub fast float %6441, %6442
  %6444 = fmul fast float %6437, 2.000000e+00
  %6445 = fmul fast float %6440, 2.000000e+00
  %6446 = fmul fast float %6443, 2.000000e+00
  %6447 = fmul fast float %6444, %6281
  %6448 = fmul fast float %6445, %6281
  %6449 = fmul fast float %6446, %6281
  %6450 = fmul fast float %6446, %6279
  %6451 = fmul fast float %6445, %6280
  %6452 = fmul fast float %6444, %6280
  %6453 = fmul fast float %6446, %6278
  %6454 = fmul fast float %6445, %6278
  %6455 = fmul fast float %6444, %6279
  %6456 = fadd fast float %6450, %6427
  %6457 = fadd fast float %6456, %6447
  %6458 = fsub fast float %6457, %6451
  %6459 = fsub fast float %6428, %6453
  %6460 = fadd fast float %6459, %6448
  %6461 = fadd fast float %6460, %6452
  %6462 = fadd fast float %6449, %6429
  %6463 = fsub fast float %6462, %6455
  %6464 = fadd fast float %6463, %6454
  br label %6465

; <label>:6465                                    ; preds = %6434, %6426
  %6466 = phi float [ %6458, %6434 ], [ %6427, %6426 ]
  %6467 = phi float [ %6461, %6434 ], [ %6428, %6426 ]
  %6468 = phi float [ %6464, %6434 ], [ %6429, %6426 ]
  br i1 %6307, label %6500, label %6469

; <label>:6469                                    ; preds = %6465
  %6470 = fmul fast float %5914, 0x400187C840000000
  %6471 = fadd fast float %6470, 0xC00EFC2120000000
  %6472 = fmul fast float %6471, %5914
  %6473 = fadd fast float %6472, 0x3FE5D16340000000
  %6474 = fmul fast float %6473, %5914
  %6475 = fadd fast float %6474, 1.000000e+00
  %6476 = call float @dx.op.unary.f32(i32 7, float %6475)  ; Saturate(value)
  %6477 = fsub fast float %6430, %197
  %6478 = fsub fast float %6431, %198
  %6479 = fsub fast float %6432, %199
  %6480 = fsub fast float %6430, %6262
  %6481 = fsub fast float %6431, %6263
  %6482 = fsub fast float %6432, %6264
  %6483 = call float @dx.op.dot3.f32(i32 55, float %6477, float %6478, float %6479, float %6477, float %6478, float %6479)  ; Dot3(ax,ay,az,bx,by,bz)
  %6484 = call float @dx.op.dot3.f32(i32 55, float %6480, float %6481, float %6482, float %6480, float %6481, float %6482)  ; Dot3(ax,ay,az,bx,by,bz)
  %6485 = fadd fast float %6484, 0x3EE4F8B580000000
  %6486 = fdiv fast float %6483, %6485
  %6487 = bitcast float %6486 to i32
  %6488 = ashr i32 %6487, 1
  %6489 = add nsw i32 %6488, 532487669
  %6490 = bitcast i32 %6489 to float
  %6491 = fmul fast float %6490, %6476
  %6492 = call float @dx.op.unary.f32(i32 7, float %6491)  ; Saturate(value)
  %6493 = fmul fast float %6492, 0x4009981AE0000000
  %6494 = fsub fast float 0x40111BBD80000000, %6493
  %6495 = fmul fast float %6494, %6492
  %6496 = fadd fast float %6495, 0xC0009F6020000000
  %6497 = fmul fast float %6496, %6492
  %6498 = fadd fast float %6497, 1.000000e+00
  %6499 = call float @dx.op.unary.f32(i32 7, float %6498)  ; Saturate(value)
  br label %6503

; <label>:6500                                    ; preds = %6465
  %6501 = icmp ne i32 %6308, -1
  %6502 = zext i1 %6501 to i32
  br label %6503

; <label>:6503                                    ; preds = %6500, %6469
  %6504 = phi float [ %5914, %6500 ], [ %6499, %6469 ]
  %6505 = phi i32 [ %6502, %6500 ], [ 0, %6469 ]
  %6506 = fmul float %6504, 5.000000e+00
  %6507 = fsub float 5.000000e+00, %6506
  %6508 = icmp ne i32 %6505, 0
  %6509 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %6510 = extractvalue %dx.types.CBufRet.f32 %6509, 3
  %6511 = fadd fast float %6510, %6507
  %6512 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6511)  ; FMax(a,b)
  %6513 = call float @dx.op.unary.f32(i32 6, float %6466)  ; FAbs(value)
  %6514 = call float @dx.op.unary.f32(i32 6, float %6467)  ; FAbs(value)
  %6515 = fadd fast float %6514, %6513
  %6516 = call float @dx.op.unary.f32(i32 6, float %6468)  ; FAbs(value)
  %6517 = fadd fast float %6515, %6516
  %6518 = fcmp fast oeq float %6517, 0.000000e+00
  %6519 = fdiv fast float 1.000000e+00, %6517
  %6520 = select i1 %6518, float 1.000000e+00, float %6519
  %6521 = fmul fast float %6520, %6466
  %6522 = fmul fast float %6520, %6467
  %6523 = call float @dx.op.unary.f32(i32 6, float %6522)  ; FAbs(value)
  %6524 = call float @dx.op.unary.f32(i32 6, float %6521)  ; FAbs(value)
  %6525 = fsub fast float 1.000000e+00, %6523
  %6526 = fsub fast float 1.000000e+00, %6524
  %6527 = fcmp fast oge float %6521, 0.000000e+00
  %6528 = fcmp fast oge float %6522, 0.000000e+00
  %6529 = select i1 %6527, float 1.000000e+00, float -1.000000e+00
  %6530 = select i1 %6528, float 1.000000e+00, float -1.000000e+00
  %6531 = fcmp fast ole float %6468, 0.000000e+00
  %6532 = fmul fast float %6529, %6525
  %6533 = fmul fast float %6530, %6526
  %6534 = select i1 %6531, float %6532, float %6521
  %6535 = select i1 %6531, float %6533, float %6522
  %6536 = fmul fast float %6534, 5.000000e-01
  %6537 = fmul fast float %6535, 5.000000e-01
  %6538 = fadd fast float %6536, 5.000000e-01
  %6539 = fadd fast float %6537, 5.000000e-01
  %6540 = uitofp i32 %6305 to float
  %6541 = call float @dx.op.binary.f32(i32 36, float %6512, float 3.000000e+00)  ; FMin(a,b)
  %6542 = fadd fast float %6541, 2.000000e+00
  %6543 = call float @dx.op.unary.f32(i32 21, float %6542)  ; Exp(value)
  %6544 = extractvalue %dx.types.CBufRet.f32 %6509, 1
  %6545 = fmul fast float %6544, %6543
  %6546 = fmul fast float %6545, 2.000000e+00
  %6547 = fsub fast float 1.000000e+00, %6546
  %6548 = fmul fast float %6538, %6547
  %6549 = fmul fast float %6539, %6547
  %6550 = fadd fast float %6548, %6545
  %6551 = fadd fast float %6549, %6545
  %6552 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %44, float %6550, float %6551, float %6540, float undef, i32 0, i32 0, i32 undef, float %6512)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6553 = extractvalue %dx.types.ResRet.f32 %6552, 0
  %6554 = extractvalue %dx.types.ResRet.f32 %6552, 1
  %6555 = extractvalue %dx.types.ResRet.f32 %6552, 2
  %6556 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6557 = extractvalue %dx.types.CBufRet.f32 %6556, 3
  %6558 = fmul fast float %6557, %6275
  %6559 = call float @dx.op.binary.f32(i32 36, float %6020, float %6558)  ; FMin(a,b)
  %6560 = select i1 %6508, float %6559, float %6558
  %6561 = fmul fast float %6553, %6353
  %6562 = fmul fast float %6561, %6560
  %6563 = fmul fast float %6554, %6353
  %6564 = fmul fast float %6563, %6560
  %6565 = fmul fast float %6555, %6353
  %6566 = fmul fast float %6565, %6560
  %6567 = fadd fast float %6562, %6250
  %6568 = fadd fast float %6564, %6251
  %6569 = fadd fast float %6566, %6252
  %6570 = fsub fast float %6253, %6353
  br label %6355

; <label>:6571                                    ; preds = %6355
  br label %6572

; <label>:6572                                    ; preds = %6571, %6219
  %6573 = phi float [ %6220, %6219 ], [ %6356, %6571 ]
  %6574 = phi float [ %6221, %6219 ], [ %6357, %6571 ]
  %6575 = phi float [ %6222, %6219 ], [ %6358, %6571 ]
  %6576 = phi float [ %6223, %6219 ], [ %6359, %6571 ]
  %6577 = add i32 %6224, 1
  %6578 = icmp ugt i32 %6577, %6216
  br i1 %6578, label %6579, label %6219, !llvm.loop !96

; <label>:6579                                    ; preds = %6572
  br label %6580

; <label>:6580                                    ; preds = %6579, %6201
  %6581 = phi float [ 0.000000e+00, %6201 ], [ %6573, %6579 ]
  %6582 = phi float [ 0.000000e+00, %6201 ], [ %6574, %6579 ]
  %6583 = phi float [ 0.000000e+00, %6201 ], [ %6575, %6579 ]
  %6584 = call float @dx.op.dot3.f32(i32 55, float %6581, float %6582, float %6583, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6585 = select i1 %271, float 0.000000e+00, float %6581
  %6586 = select i1 %271, float %6584, float %6582
  %6587 = select i1 %271, float 0.000000e+00, float %6583
  %6588 = fcmp fast olt float %6154, 0.000000e+00
  %6589 = call float @dx.op.unary.f32(i32 6, float %6154)  ; FAbs(value)
  %6590 = fmul fast float %6589, %6079
  %6591 = fmul fast float %6589, %6080
  %6592 = fmul fast float %6589, %6081
  %6593 = select i1 %6588, float %6079, float %6590
  %6594 = select i1 %6588, float %6080, float %6591
  %6595 = select i1 %6588, float %6081, float %6592
  %6596 = fsub fast float 1.000000e+00, %6589
  %6597 = call float @dx.op.unary.f32(i32 7, float %6596)  ; Saturate(value)
  %6598 = fmul fast float %6597, %6585
  %6599 = fmul fast float %6597, %6586
  %6600 = fmul fast float %6597, %6587
  %6601 = fadd fast float %6593, %6598
  %6602 = fadd fast float %6594, %6599
  %6603 = fadd fast float %6595, %6600
  br label %6604

; <label>:6604                                    ; preds = %6580, %6137
  %6605 = phi float [ %6601, %6580 ], [ %6079, %6137 ]
  %6606 = phi float [ %6602, %6580 ], [ %6080, %6137 ]
  %6607 = phi float [ %6603, %6580 ], [ %6081, %6137 ]
  %6608 = fmul fast float %197, %197
  %6609 = fmul fast float %198, %198
  %6610 = fadd fast float %6609, %6608
  %6611 = fmul fast float %199, %199
  %6612 = fadd fast float %6610, %6611
  %6613 = call float @dx.op.unary.f32(i32 24, float %6612)  ; Sqrt(value)
  %6614 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %6615 = extractvalue %dx.types.CBufRet.f32 %6614, 1
  %6616 = fsub fast float %6613, %6615
  %6617 = extractvalue %dx.types.CBufRet.f32 %6614, 2
  %6618 = fmul fast float %6616, %6617
  %6619 = call float @dx.op.unary.f32(i32 7, float %6618)  ; Saturate(value)
  %6620 = extractvalue %dx.types.CBufRet.f32 %6614, 0
  %6621 = extractvalue %dx.types.CBufRet.f32 %6614, 3
  %6622 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %325, i32 undef)  ; BufferLoad(srv,index,wot)
  %6623 = extractvalue %dx.types.ResRet.i32 %6622, 0
  %6624 = and i32 %6623, 4194304
  %6625 = icmp ne i32 %6624, 0
  %6626 = and i32 %6623, 8388608
  %6627 = icmp ne i32 %6626, 0
  %6628 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %6629 = extractvalue %dx.types.CBufRet.f32 %6628, 0
  %6630 = extractvalue %dx.types.CBufRet.f32 %6628, 1
  %6631 = extractvalue %dx.types.CBufRet.f32 %6628, 2
  %6632 = extractvalue %dx.types.CBufRet.f32 %6628, 3
  %6633 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %6634 = extractvalue %dx.types.CBufRet.f32 %6633, 0
  %6635 = extractvalue %dx.types.CBufRet.f32 %6633, 1
  %6636 = extractvalue %dx.types.CBufRet.f32 %6633, 2
  %6637 = extractvalue %dx.types.CBufRet.f32 %6633, 3
  %6638 = select i1 %6625, float %6629, float %6634
  %6639 = select i1 %6625, float %6630, float %6635
  %6640 = select i1 %6625, float %6631, float %6636
  %6641 = select i1 %6625, float %6632, float %6637
  %6642 = select i1 %6627, float 0.000000e+00, float %6641
  %6643 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
  %6644 = extractvalue %dx.types.CBufRet.f32 %6643, 0
  %6645 = extractvalue %dx.types.CBufRet.f32 %6643, 1
  %6646 = select i1 %6625, float %6644, float %6645
  %6647 = select i1 %6627, float 0.000000e+00, float %6646
  %6648 = extractvalue %dx.types.CBufRet.f32 %6643, 2
  %6649 = extractvalue %dx.types.CBufRet.f32 %6643, 3
  %6650 = select i1 %6625, float %6648, float %6649
  %6651 = select i1 %6627, float 0.000000e+00, float %6650
  %6652 = fmul fast float %6619, %59
  %6653 = fmul fast float %6652, %6620
  %6654 = fmul fast float %6653, %6647
  %6655 = fmul fast float %6652, %6621
  %6656 = fmul fast float %6655, %6651
  %6657 = fadd fast float %6656, 1.000000e+00
  %6658 = fmul fast float %6143, %6083
  %6659 = fmul fast float %6658, %6657
  %6660 = fmul fast float %6143, %6084
  %6661 = fmul fast float %6660, %6657
  %6662 = fmul fast float %6143, %6085
  %6663 = fmul fast float %6662, %6657
  %6664 = call float @dx.op.dot3.f32(i32 55, float %5905, float %5906, float %5907, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6665 = fcmp fast ogt float %6664, 0x3E7FF19E20000000
  %6666 = fdiv fast float 1.000000e+00, %6664
  %6667 = select i1 %6665, float %6666, float 0.000000e+00
  %6668 = fmul fast float %6667, %5905
  %6669 = fmul fast float %6667, %5906
  %6670 = fmul fast float %6667, %5907
  %6671 = fadd fast float %6668, -1.000000e+00
  %6672 = fadd fast float %6669, -1.000000e+00
  %6673 = fadd fast float %6670, -1.000000e+00
  %6674 = fmul fast float %6671, 5.000000e-01
  %6675 = fmul fast float %6672, 5.000000e-01
  %6676 = fmul fast float %6673, 5.000000e-01
  %6677 = fadd fast float %6674, 1.000000e+00
  %6678 = fadd fast float %6675, 1.000000e+00
  %6679 = fadd fast float %6676, 1.000000e+00
  %6680 = fadd fast float %6654, %4657
  %6681 = fsub fast float %6638, %6677
  %6682 = fsub fast float %6639, %6678
  %6683 = fsub fast float %6640, %6679
  %6684 = fmul fast float %6681, %6642
  %6685 = fmul fast float %6682, %6642
  %6686 = fmul fast float %6683, %6642
  %6687 = fadd fast float %6684, %6677
  %6688 = fadd fast float %6685, %6678
  %6689 = fadd fast float %6686, %6679
  %6690 = call float @dx.op.binary.f32(i32 35, float %5958, float 0x3F50624DE0000000)  ; FMax(a,b)
  %6691 = fdiv fast float %4016, %6690
  %6692 = fcmp fast olt float %4683, 1.270000e+02
  %6693 = fcmp fast olt float %4684, 1.270000e+02
  %6694 = fcmp fast olt float %4685, 1.270000e+02
  %6695 = fmul fast float %4683, 0xBFF7154760000000
  %6696 = fmul fast float %6695, %6691
  %6697 = fmul fast float %4684, 0xBFF7154760000000
  %6698 = fmul fast float %6697, %6691
  %6699 = fmul fast float %4685, 0xBFF7154760000000
  %6700 = fmul fast float %6699, %6691
  %6701 = call float @dx.op.unary.f32(i32 21, float %6696)  ; Exp(value)
  %6702 = call float @dx.op.unary.f32(i32 21, float %6698)  ; Exp(value)
  %6703 = call float @dx.op.unary.f32(i32 21, float %6700)  ; Exp(value)
  %6704 = call float @dx.op.unary.f32(i32 7, float %6701)  ; Saturate(value)
  %6705 = call float @dx.op.unary.f32(i32 7, float %6702)  ; Saturate(value)
  %6706 = call float @dx.op.unary.f32(i32 7, float %6703)  ; Saturate(value)
  %6707 = select i1 %6692, float %6704, float 0.000000e+00
  %6708 = select i1 %6693, float %6705, float 0.000000e+00
  %6709 = select i1 %6694, float %6706, float 0.000000e+00
  %6710 = fmul fast float %6707, %6143
  %6711 = fmul fast float %6708, %6143
  %6712 = fmul fast float %6709, %6143
  %6713 = fadd fast float %6710, -1.000000e+00
  %6714 = fadd fast float %6711, -1.000000e+00
  %6715 = fadd fast float %6712, -1.000000e+00
  %6716 = fmul fast float %6605, %6138
  %6717 = fmul fast float %6606, %6139
  %6718 = fmul fast float %6607, %6140
  %6719 = fsub fast float 1.000000e+00, %5958
  %6720 = bitcast float %6719 to i32
  %6721 = sitofp i32 %6720 to float
  %6722 = fmul fast float %6721, 5.000000e+00
  %6723 = fadd fast float %6722, 0xC1EFBF8940000000
  %6724 = fptosi float %6723 to i32
  %6725 = bitcast i32 %6724 to float
  %6726 = fmul fast float %6680, %6725
  %6727 = fmul fast float %6658, %6726
  %6728 = fmul fast float %6727, %6687
  %6729 = fmul fast float %6660, %6726
  %6730 = fmul fast float %6729, %6688
  %6731 = fmul fast float %6662, %6726
  %6732 = fmul fast float %6731, %6689
  %6733 = fmul fast float %6659, %4653
  %6734 = fmul fast float %6661, %4653
  %6735 = fmul fast float %6663, %4653
  %6736 = fadd fast float %6716, %4646
  %6737 = fadd fast float %6736, %6728
  %6738 = fmul fast float %6737, %4653
  %6739 = fadd fast float %6717, %4647
  %6740 = fadd fast float %6739, %6730
  %6741 = fmul fast float %6740, %4653
  %6742 = fadd fast float %6718, %4648
  %6743 = fadd fast float %6742, %6732
  %6744 = fmul fast float %6743, %4653
  %6745 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %6746 = extractvalue %dx.types.CBufRet.f32 %6745, 3
  %6747 = fcmp fast oeq float %6746, 0.000000e+00
  br i1 %6747, label %8388, label %6748

; <label>:6748                                    ; preds = %6604
  %6749 = extractvalue %dx.types.CBufRet.f32 %6745, 0
  %6750 = extractvalue %dx.types.CBufRet.f32 %6745, 1
  %6751 = extractvalue %dx.types.CBufRet.f32 %6745, 2
  %6752 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %6753 = extractvalue %dx.types.CBufRet.f32 %6752, 0
  %6754 = extractvalue %dx.types.CBufRet.f32 %6752, 1
  %6755 = extractvalue %dx.types.CBufRet.f32 %6752, 2
  %6756 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %6757 = extractvalue %dx.types.CBufRet.f32 %6756, 0
  %6758 = extractvalue %dx.types.CBufRet.f32 %6756, 1
  %6759 = call float @dx.op.dot3.f32(i32 55, float %6753, float %6754, float %6755, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6760 = select i1 %271, float %6757, float %6753
  %6761 = select i1 %271, float %6759, float %6754
  %6762 = select i1 %271, float %6758, float %6755
  %6763 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %6764 = extractvalue %dx.types.CBufRet.f32 %6763, 2
  %6765 = fmul fast float %6764, %117
  %6766 = fmul fast float %6764, %118
  %6767 = fmul fast float %6764, %119
  %6768 = fadd fast float %6765, %197
  %6769 = fadd fast float %6766, %198
  %6770 = fadd fast float %6767, %199
  %6771 = fcmp fast olt float %6746, 0.000000e+00
  br i1 %6771, label %8029, label %6772

; <label>:6772                                    ; preds = %6748
  %6773 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6774 = extractvalue %dx.types.CBufRet.f32 %6773, 0
  %6775 = extractvalue %dx.types.CBufRet.f32 %6773, 1
  %6776 = extractvalue %dx.types.CBufRet.f32 %6773, 2
  %6777 = extractvalue %dx.types.CBufRet.f32 %6773, 3
  %6778 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %6779 = extractvalue %dx.types.CBufRet.f32 %6778, 0
  %6780 = extractvalue %dx.types.CBufRet.f32 %6778, 1
  %6781 = extractvalue %dx.types.CBufRet.f32 %6778, 2
  %6782 = extractvalue %dx.types.CBufRet.f32 %6778, 3
  %6783 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %6784 = extractvalue %dx.types.CBufRet.f32 %6783, 0
  %6785 = extractvalue %dx.types.CBufRet.f32 %6783, 1
  %6786 = extractvalue %dx.types.CBufRet.f32 %6783, 2
  %6787 = extractvalue %dx.types.CBufRet.f32 %6783, 3
  %6788 = fmul fast float %6774, %6768
  %6789 = call float @dx.op.tertiary.f32(i32 46, float %6769, float %6775, float %6788)  ; FMad(a,b,c)
  %6790 = call float @dx.op.tertiary.f32(i32 46, float %6770, float %6776, float %6789)  ; FMad(a,b,c)
  %6791 = fadd fast float %6790, %6777
  %6792 = fmul fast float %6779, %6768
  %6793 = call float @dx.op.tertiary.f32(i32 46, float %6769, float %6780, float %6792)  ; FMad(a,b,c)
  %6794 = call float @dx.op.tertiary.f32(i32 46, float %6770, float %6781, float %6793)  ; FMad(a,b,c)
  %6795 = fadd fast float %6794, %6782
  %6796 = fmul fast float %6784, %6768
  %6797 = call float @dx.op.tertiary.f32(i32 46, float %6769, float %6785, float %6796)  ; FMad(a,b,c)
  %6798 = call float @dx.op.tertiary.f32(i32 46, float %6770, float %6786, float %6797)  ; FMad(a,b,c)
  %6799 = fadd fast float %6798, %6787
  %6800 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %6801 = extractvalue %dx.types.CBufRet.f32 %6800, 0
  %6802 = fcmp fast une float %6801, 0.000000e+00
  %6803 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %6804 = extractvalue %dx.types.CBufRet.f32 %6803, 0
  %6805 = extractvalue %dx.types.CBufRet.f32 %6803, 1
  %6806 = extractvalue %dx.types.CBufRet.f32 %6803, 3
  %6807 = fmul fast float %6806, %6791
  %6808 = fmul fast float %6806, %6795
  %6809 = fadd fast float %6807, %6804
  %6810 = fadd fast float %6808, %6805
  %6811 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %6812 = extractvalue %dx.types.CBufRet.f32 %6811, 0
  %6813 = extractvalue %dx.types.CBufRet.f32 %6811, 1
  %6814 = extractvalue %dx.types.CBufRet.f32 %6811, 3
  %6815 = fmul fast float %6814, %6791
  %6816 = fmul fast float %6814, %6795
  %6817 = fadd fast float %6815, %6812
  %6818 = fadd fast float %6816, %6813
  %6819 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %6820 = extractvalue %dx.types.CBufRet.f32 %6819, 1
  %6821 = fsub fast float %6820, %6799
  %6822 = extractvalue %dx.types.CBufRet.f32 %6819, 2
  %6823 = fmul fast float %6821, %6822
  %6824 = fsub fast float 1.000000e+00, %6823
  %6825 = call float @dx.op.unary.f32(i32 7, float %6824)  ; Saturate(value)
  br i1 %6802, label %6886, label %6826

; <label>:6826                                    ; preds = %6772
  %6827 = extractvalue %dx.types.CBufRet.f32 %6811, 2
  %6828 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6829 = extractvalue %dx.types.CBufRet.f32 %6828, 2
  %6830 = fadd fast float %6829, %6827
  %6831 = fcmp fast ogt float %6830, 0.000000e+00
  br i1 %6831, label %6832, label %6856

; <label>:6832                                    ; preds = %6826
  %6833 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %6834 = extractvalue %dx.types.CBufRet.f32 %6833, 0
  %6835 = extractvalue %dx.types.CBufRet.f32 %6833, 1
  %6836 = fsub fast float %6817, %6834
  %6837 = fsub fast float %6818, %6835
  %6838 = fcmp fast olt float %6836, 0.000000e+00
  %6839 = fcmp fast olt float %6837, 0.000000e+00
  %6840 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %6841 = extractvalue %dx.types.CBufRet.f32 %6840, 0
  %6842 = extractvalue %dx.types.CBufRet.f32 %6840, 1
  %6843 = extractvalue %dx.types.CBufRet.f32 %6840, 2
  %6844 = extractvalue %dx.types.CBufRet.f32 %6840, 3
  %6845 = select i1 %6838, float %6841, float %6843
  %6846 = select i1 %6839, float %6842, float %6844
  %6847 = fmul fast float %6845, %6836
  %6848 = fmul fast float %6846, %6837
  %6849 = call float @dx.op.unary.f32(i32 6, float %6847)  ; FAbs(value)
  %6850 = call float @dx.op.unary.f32(i32 6, float %6848)  ; FAbs(value)
  %6851 = extractvalue %dx.types.CBufRet.f32 %6763, 0
  %6852 = call float @dx.op.binary.f32(i32 35, float %6849, float %6850)  ; FMax(a,b)
  %6853 = fsub fast float %6851, %6852
  %6854 = call float @dx.op.unary.f32(i32 7, float %6853)  ; Saturate(value)
  %6855 = fmul fast float %6854, %6825
  br label %6856

; <label>:6856                                    ; preds = %6832, %6826
  %6857 = phi float [ %6855, %6832 ], [ 0.000000e+00, %6826 ]
  %6858 = extractvalue %dx.types.CBufRet.f32 %6803, 2
  %6859 = extractvalue %dx.types.CBufRet.f32 %6828, 1
  %6860 = fadd fast float %6859, %6858
  %6861 = fcmp fast ogt float %6860, 0.000000e+00
  br i1 %6861, label %6862, label %6886

; <label>:6862                                    ; preds = %6856
  %6863 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %6864 = extractvalue %dx.types.CBufRet.f32 %6863, 0
  %6865 = extractvalue %dx.types.CBufRet.f32 %6863, 1
  %6866 = fsub fast float %6809, %6864
  %6867 = fsub fast float %6810, %6865
  %6868 = fcmp fast olt float %6866, 0.000000e+00
  %6869 = fcmp fast olt float %6867, 0.000000e+00
  %6870 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %6871 = extractvalue %dx.types.CBufRet.f32 %6870, 0
  %6872 = extractvalue %dx.types.CBufRet.f32 %6870, 1
  %6873 = extractvalue %dx.types.CBufRet.f32 %6870, 2
  %6874 = extractvalue %dx.types.CBufRet.f32 %6870, 3
  %6875 = select i1 %6868, float %6871, float %6873
  %6876 = select i1 %6869, float %6872, float %6874
  %6877 = fmul fast float %6875, %6866
  %6878 = fmul fast float %6876, %6867
  %6879 = call float @dx.op.unary.f32(i32 6, float %6877)  ; FAbs(value)
  %6880 = call float @dx.op.unary.f32(i32 6, float %6878)  ; FAbs(value)
  %6881 = extractvalue %dx.types.CBufRet.f32 %6763, 0
  %6882 = call float @dx.op.binary.f32(i32 35, float %6879, float %6880)  ; FMax(a,b)
  %6883 = fsub fast float %6881, %6882
  %6884 = call float @dx.op.unary.f32(i32 7, float %6883)  ; Saturate(value)
  %6885 = fmul fast float %6884, %6825
  br label %6886

; <label>:6886                                    ; preds = %6862, %6856, %6772
  %6887 = phi float [ 0.000000e+00, %6772 ], [ %6885, %6862 ], [ 0.000000e+00, %6856 ]
  %6888 = phi float [ 0.000000e+00, %6772 ], [ %6857, %6862 ], [ %6857, %6856 ]
  %6889 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %6890 = extractvalue %dx.types.CBufRet.f32 %6889, 1
  %6891 = call float @dx.op.unary.f32(i32 7, float %6890)  ; Saturate(value)
  %6892 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %6893 = extractvalue %dx.types.CBufRet.f32 %6892, 0
  %6894 = extractvalue %dx.types.CBufRet.f32 %6892, 1
  %6895 = fsub fast float %6791, %6893
  %6896 = fsub fast float %6795, %6894
  %6897 = fcmp fast olt float %6895, 0.000000e+00
  %6898 = fcmp fast olt float %6896, 0.000000e+00
  %6899 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %6900 = extractvalue %dx.types.CBufRet.f32 %6899, 0
  %6901 = extractvalue %dx.types.CBufRet.f32 %6899, 1
  %6902 = extractvalue %dx.types.CBufRet.f32 %6899, 2
  %6903 = extractvalue %dx.types.CBufRet.f32 %6899, 3
  %6904 = select i1 %6897, float %6900, float %6902
  %6905 = select i1 %6898, float %6901, float %6903
  %6906 = fmul fast float %6904, %6895
  %6907 = fmul fast float %6905, %6896
  %6908 = call float @dx.op.unary.f32(i32 6, float %6906)  ; FAbs(value)
  %6909 = call float @dx.op.unary.f32(i32 6, float %6907)  ; FAbs(value)
  %6910 = extractvalue %dx.types.CBufRet.f32 %6763, 0
  %6911 = call float @dx.op.binary.f32(i32 35, float %6908, float %6909)  ; FMax(a,b)
  %6912 = fsub fast float %6910, %6911
  %6913 = call float @dx.op.unary.f32(i32 7, float %6912)  ; Saturate(value)
  %6914 = call float @dx.op.binary.f32(i32 36, float %6913, float %6891)  ; FMin(a,b)
  %6915 = fmul fast float %6914, %6825
  %6916 = fsub fast float %6887, %6915
  %6917 = fsub fast float %6888, %6887
  %6918 = fsub fast float %6917, %6915
  %6919 = call float @dx.op.binary.f32(i32 35, float %6887, float %6888)  ; FMax(a,b)
  %6920 = call float @dx.op.binary.f32(i32 35, float %6915, float %6919)  ; FMax(a,b)
  %6921 = fcmp fast olt float %6920, 1.000000e+00
  br i1 %6921, label %6922, label %7320, !dx.controlflow.hints !98

; <label>:6922                                    ; preds = %6886
  %6923 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %6924 = extractvalue %dx.types.CBufRet.f32 %6923, 0
  %6925 = fcmp fast une float %6924, 0.000000e+00
  br i1 %6925, label %6926, label %7320, !dx.controlflow.hints !99

; <label>:6926                                    ; preds = %6922
  %6927 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %6928 = extractvalue %dx.types.CBufRet.f32 %6927, 0
  %6929 = extractvalue %dx.types.CBufRet.f32 %6927, 1
  %6930 = extractvalue %dx.types.CBufRet.f32 %6927, 2
  %6931 = extractvalue %dx.types.CBufRet.f32 %6927, 3
  %6932 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %6933 = extractvalue %dx.types.CBufRet.f32 %6932, 0
  %6934 = extractvalue %dx.types.CBufRet.f32 %6932, 1
  %6935 = extractvalue %dx.types.CBufRet.f32 %6932, 2
  %6936 = extractvalue %dx.types.CBufRet.f32 %6932, 3
  %6937 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %6938 = extractvalue %dx.types.CBufRet.f32 %6937, 0
  %6939 = extractvalue %dx.types.CBufRet.f32 %6937, 1
  %6940 = extractvalue %dx.types.CBufRet.f32 %6937, 2
  %6941 = extractvalue %dx.types.CBufRet.f32 %6937, 3
  %6942 = fmul fast float %6928, %6768
  %6943 = call float @dx.op.tertiary.f32(i32 46, float %6769, float %6929, float %6942)  ; FMad(a,b,c)
  %6944 = call float @dx.op.tertiary.f32(i32 46, float %6770, float %6930, float %6943)  ; FMad(a,b,c)
  %6945 = fadd fast float %6944, %6931
  %6946 = fmul fast float %6933, %6768
  %6947 = call float @dx.op.tertiary.f32(i32 46, float %6769, float %6934, float %6946)  ; FMad(a,b,c)
  %6948 = call float @dx.op.tertiary.f32(i32 46, float %6770, float %6935, float %6947)  ; FMad(a,b,c)
  %6949 = fadd fast float %6948, %6936
  %6950 = fmul fast float %6938, %6768
  %6951 = call float @dx.op.tertiary.f32(i32 46, float %6769, float %6939, float %6950)  ; FMad(a,b,c)
  %6952 = call float @dx.op.tertiary.f32(i32 46, float %6770, float %6940, float %6951)  ; FMad(a,b,c)
  %6953 = fadd fast float %6952, %6941
  %6954 = fcmp fast oge float %6945, 1.000000e+00
  %6955 = fcmp fast oge float %6949, 1.000000e+00
  %6956 = or i1 %6954, %6955
  %6957 = fcmp fast olt float %6945, 0.000000e+00
  %6958 = fcmp fast olt float %6949, 0.000000e+00
  %6959 = or i1 %6957, %6958
  %6960 = or i1 %6956, %6959
  br i1 %6960, label %7320, label %6961, !dx.controlflow.hints !100

; <label>:6961                                    ; preds = %6926
  %6962 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %6963 = extractvalue %dx.types.CBufRet.f32 %6962, 0
  %6964 = extractvalue %dx.types.CBufRet.f32 %6962, 1
  %6965 = extractvalue %dx.types.CBufRet.f32 %6962, 2
  %6966 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %6967 = extractvalue %dx.types.CBufRet.i32 %6966, 2
  %6968 = uitofp i32 %6967 to float
  %6969 = extractvalue %dx.types.CBufRet.i32 %6966, 3
  %6970 = uitofp i32 %6969 to float
  %6971 = extractvalue %dx.types.CBufRet.f32 %6962, 3
  %6972 = fmul fast float %6971, 2.000000e+00
  %6973 = fsub fast float %6945, %6963
  %6974 = fsub fast float %6949, %6964
  %6975 = fmul fast float %6972, %6973
  %6976 = fmul fast float %6972, %6974
  %6977 = fdiv fast float 1.000000e+00, %6751
  %6978 = fmul fast float %6976, %6977
  %6979 = call float @dx.op.unary.f32(i32 6, float %6978)  ; FAbs(value)
  %6980 = fmul fast float %6965, %6770
  %6981 = fmul fast float %6980, %6972
  %6982 = call float @dx.op.unary.f32(i32 6, float %6981)  ; FAbs(value)
  %6983 = call float @dx.op.unary.f32(i32 6, float %6975)  ; FAbs(value)
  %6984 = call float @dx.op.binary.f32(i32 35, float %6982, float %6979)  ; FMax(a,b)
  %6985 = call float @dx.op.binary.f32(i32 35, float %6983, float %6984)  ; FMax(a,b)
  %6986 = fmul fast float %6985, 2.000000e+00
  %6987 = call float @dx.op.unary.f32(i32 23, float %6986)  ; Log(value)
  %6988 = call float @dx.op.binary.f32(i32 35, float %6987, float %6968)  ; FMax(a,b)
  %6989 = call float @dx.op.unary.f32(i32 22, float %6988)  ; Frc(value)
  %6990 = fadd fast float %6989, 0xBFEA666660000000
  %6991 = fmul fast float %6990, 8.000000e+00
  %6992 = call float @dx.op.unary.f32(i32 7, float %6991)  ; Saturate(value)
  %6993 = call float @dx.op.unary.f32(i32 27, float %6988)  ; Round_ni(value)
  %6994 = fadd fast float %6993, %6992
  %6995 = call float @dx.op.binary.f32(i32 36, float %6994, float %6970)  ; FMin(a,b)
  %6996 = call float @dx.op.unary.f32(i32 27, float %6995)  ; Round_ni(value)
  %6997 = fsub fast float -0.000000e+00, %6996
  %6998 = call float @dx.op.unary.f32(i32 21, float %6997)  ; Exp(value)
  %6999 = fmul fast float %6998, %6972
  %7000 = fmul fast float %6999, %6945
  %7001 = fmul fast float %6999, %6949
  %7002 = fmul fast float %7000, 2.500000e-01
  %7003 = fmul fast float %7001, 2.500000e-01
  %7004 = fadd fast float %7002, 5.000000e-01
  %7005 = fadd fast float %7003, 5.000000e-01
  %7006 = fsub fast float %6970, %6968
  %7007 = fptoui float %7006 to i32
  %7008 = add i32 %7007, 320
  %7009 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 %7008)  ; CBufferLoadLegacy(handle,regIndex)
  %7010 = extractvalue %dx.types.CBufRet.f32 %7009, 0
  %7011 = extractvalue %dx.types.CBufRet.f32 %7009, 1
  %7012 = fcmp fast une float %6995, %6970
  %7013 = fsub fast float %6945, %7010
  %7014 = fsub fast float %6949, %7011
  %7015 = call float @dx.op.unary.f32(i32 6, float %7013)  ; FAbs(value)
  %7016 = call float @dx.op.unary.f32(i32 6, float %7014)  ; FAbs(value)
  %7017 = fmul fast float %7015, %6999
  %7018 = fmul fast float %7016, %6999
  %7019 = fcmp fast olt float %7017, 1.000000e+00
  %7020 = fcmp fast olt float %7018, 1.000000e+00
  %7021 = and i1 %7019, %7020
  %7022 = or i1 %7012, %7021
  br i1 %7022, label %7023, label %7320, !dx.controlflow.hints !101

; <label>:7023                                    ; preds = %6961
  %7024 = fmul fast float %7001, 5.000000e-01
  %7025 = fmul fast float %7000, 5.000000e-01
  %7026 = fadd fast float %7024, 5.000000e-01
  %7027 = fadd fast float %7025, 5.000000e-01
  %7028 = sitofp i32 %6967 to float
  %7029 = fsub fast float %6995, %7028
  %7030 = call float @dx.op.unary.f32(i32 27, float %7029)  ; Round_ni(value)
  %7031 = call float @dx.op.unary.f32(i32 22, float %6995)  ; Frc(value)
  %7032 = call float @dx.op.unary.f32(i32 22, float %7027)  ; Frc(value)
  %7033 = call float @dx.op.unary.f32(i32 22, float %7026)  ; Frc(value)
  %7034 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %45, float %7032, float %7033, float %7030, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7035 = extractvalue %dx.types.ResRet.f32 %7034, 0
  %7036 = extractvalue %dx.types.ResRet.f32 %7034, 1
  %7037 = extractvalue %dx.types.ResRet.f32 %7034, 2
  %7038 = extractvalue %dx.types.ResRet.f32 %7034, 3
  %7039 = fcmp fast ogt float %7031, 0.000000e+00
  br i1 %7039, label %7040, label %7061, !dx.controlflow.hints !102

; <label>:7040                                    ; preds = %7023
  %7041 = fadd fast float %7030, 1.000000e+00
  %7042 = call float @dx.op.unary.f32(i32 22, float %7004)  ; Frc(value)
  %7043 = call float @dx.op.unary.f32(i32 22, float %7005)  ; Frc(value)
  %7044 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %45, float %7042, float %7043, float %7041, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7045 = extractvalue %dx.types.ResRet.f32 %7044, 0
  %7046 = extractvalue %dx.types.ResRet.f32 %7044, 1
  %7047 = extractvalue %dx.types.ResRet.f32 %7044, 2
  %7048 = extractvalue %dx.types.ResRet.f32 %7044, 3
  %7049 = fsub fast float %7045, %7035
  %7050 = fsub fast float %7046, %7036
  %7051 = fsub fast float %7047, %7037
  %7052 = fsub fast float %7048, %7038
  %7053 = fmul fast float %7049, %7031
  %7054 = fmul fast float %7050, %7031
  %7055 = fmul fast float %7051, %7031
  %7056 = fmul fast float %7052, %7031
  %7057 = fadd fast float %7053, %7035
  %7058 = fadd fast float %7054, %7036
  %7059 = fadd fast float %7055, %7037
  %7060 = fadd fast float %7056, %7038
  br label %7061

; <label>:7061                                    ; preds = %7040, %7023
  %7062 = phi float [ %7057, %7040 ], [ %7035, %7023 ]
  %7063 = phi float [ %7058, %7040 ], [ %7036, %7023 ]
  %7064 = phi float [ %7059, %7040 ], [ %7037, %7023 ]
  %7065 = phi float [ %7060, %7040 ], [ %7038, %7023 ]
  %7066 = fadd fast float %7062, -5.000000e-01
  %7067 = fadd fast float %7064, -5.000000e-01
  %7068 = fmul fast float %7066, 0xBFD5555560000000
  %7069 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %7067, float %7068)  ; FMad(a,b,c)
  %7070 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %7063, float 0.000000e+00)  ; FMad(a,b,c)
  %7071 = fadd fast float %7070, %7065
  %7072 = fmul fast float %7066, -7.500000e-01
  %7073 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %7067, float %7072)  ; FMad(a,b,c)
  %7074 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %7063, float 0.000000e+00)  ; FMad(a,b,c)
  %7075 = fadd fast float %7074, %7065
  %7076 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %7077 = extractvalue %dx.types.CBufRet.f32 %7076, 0
  %7078 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %7079 = extractvalue %dx.types.CBufRet.f32 %7078, 0
  %7080 = extractvalue %dx.types.CBufRet.f32 %7078, 1
  %7081 = extractvalue %dx.types.CBufRet.f32 %7078, 2
  %7082 = extractvalue %dx.types.CBufRet.f32 %7078, 3
  %7083 = fsub fast float %7079, %7069
  %7084 = fsub fast float %7080, %7071
  %7085 = fsub fast float %7081, %7073
  %7086 = fsub fast float %7082, %7075
  %7087 = fmul fast float %7083, %7077
  %7088 = fmul fast float %7084, %7077
  %7089 = fmul fast float %7085, %7077
  %7090 = fmul fast float %7086, %7077
  %7091 = fadd fast float %7087, %7069
  %7092 = fadd fast float %7088, %7071
  %7093 = fadd fast float %7089, %7073
  %7094 = fadd fast float %7090, %7075
  %7095 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %7096 = extractvalue %dx.types.ResRet.i32 %7095, 0
  %7097 = and i32 %7096, 536870911
  %7098 = uitofp i32 %7097 to float
  %7099 = fmul fast float %7098, %6945
  %7100 = fmul fast float %7098, %6949
  %7101 = fptoui float %7099 to i32
  %7102 = fptoui float %7100 to i32
  %7103 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %7104 = extractvalue %dx.types.ResRet.i32 %7103, 0
  %7105 = and i32 %7104, 31
  %7106 = lshr i32 %7101, %7105
  %7107 = lshr i32 %7102, %7105
  %7108 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %7109 = extractvalue %dx.types.ResRet.i32 %7108, 0
  %7110 = and i32 %7109, 31
  %7111 = shl i32 1, %7110
  %7112 = call i32 @dx.op.binary.i32(i32 40, i32 %7111, i32 4)  ; UMin(a,b)
  %7113 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %7114 = extractvalue %dx.types.ResRet.i32 %7113, 0
  %7115 = extractvalue %dx.types.ResRet.i32 %7113, 1
  %7116 = icmp eq i32 %7112, 0
  br i1 %7116, label %7158, label %7117

; <label>:7117                                    ; preds = %7061
  br label %7118

; <label>:7118                                    ; preds = %7146, %7117
  %7119 = phi i32 [ %7149, %7146 ], [ 0, %7117 ]
  %7120 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %7121 = extractvalue %dx.types.ResRet.i32 %7120, 0
  %7122 = lshr i32 %7121, 16
  %7123 = and i32 %7122, 31
  %7124 = shl i32 %7107, %7123
  %7125 = add i32 %7124, %7106
  %7126 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %7127 = extractvalue %dx.types.ResRet.i32 %7126, 0
  %7128 = and i32 %7127, 31
  %7129 = shl i32 %7125, %7128
  %7130 = add i32 %7129, %7119
  %7131 = shl i32 %7130, 2
  %7132 = add i32 %7131, 32
  %7133 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %7132, i32 undef)  ; BufferLoad(srv,index,wot)
  %7134 = extractvalue %dx.types.ResRet.i32 %7133, 0
  %7135 = icmp slt i32 %7134, 0
  %7136 = getelementptr [12 x float], [12 x float]* %98, i32 0, i32 %7119
  %7137 = getelementptr [12 x float], [12 x float]* %99, i32 0, i32 %7119
  %7138 = bitcast float* %7136 to i32*
  %7139 = bitcast float* %7137 to i32*
  br i1 %7135, label %7140, label %7146

; <label>:7140                                    ; preds = %7118
  %7141 = and i32 %7134, 1073741823
  %7142 = add nuw nsw i32 %7141, 20
  %7143 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %7142, i32 undef)  ; BufferLoad(srv,index,wot)
  %7144 = extractvalue %dx.types.ResRet.i32 %7143, 0
  %7145 = extractvalue %dx.types.ResRet.i32 %7143, 1
  br label %7146

; <label>:7146                                    ; preds = %7140, %7118
  %7147 = phi i32 [ %7144, %7140 ], [ %7114, %7118 ]
  %7148 = phi i32 [ %7145, %7140 ], [ %7115, %7118 ]
  store i32 %7147, i32* %7138, align 4
  store i32 %7148, i32* %7139, align 4
  %7149 = add nuw i32 %7119, 1
  %7150 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %7151 = extractvalue %dx.types.CBufRet.i32 %7150, 2
  %7152 = icmp eq i32 %7151, 0
  %7153 = icmp ugt i32 %7134, -1073741825
  %7154 = and i1 %7153, %7152
  %7155 = icmp ult i32 %7149, %7112
  %7156 = and i1 %7154, %7155
  br i1 %7156, label %7118, label %7157

; <label>:7157                                    ; preds = %7146
  br label %7158

; <label>:7158                                    ; preds = %7157, %7061
  %7159 = phi i32 [ 0, %7061 ], [ %7149, %7157 ]
  %7160 = extractvalue %dx.types.CBufRet.f32 %6923, 2
  %7161 = fptoui float %7160 to i32
  %7162 = icmp eq i32 %7161, 0
  br i1 %7162, label %7214, label %7163

; <label>:7163                                    ; preds = %7158
  br label %7164

; <label>:7164                                    ; preds = %7209, %7163
  %7165 = phi i32 [ %7210, %7209 ], [ %7159, %7163 ]
  %7166 = phi i32 [ %7211, %7209 ], [ 0, %7163 ]
  %7167 = lshr i32 %7166, 2
  %7168 = and i32 %7166, 3
  %7169 = add nuw nsw i32 %7167, 83
  %7170 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 %7169)  ; CBufferLoadLegacy(handle,regIndex)
  %7171 = extractvalue %dx.types.CBufRet.i32 %7170, 0
  %7172 = extractvalue %dx.types.CBufRet.i32 %7170, 1
  %7173 = extractvalue %dx.types.CBufRet.i32 %7170, 2
  %7174 = extractvalue %dx.types.CBufRet.i32 %7170, 3
  %7175 = getelementptr inbounds [4 x i32], [4 x i32]* %51, i32 0, i32 0
  store i32 %7171, i32* %7175, align 4
  %7176 = getelementptr inbounds [4 x i32], [4 x i32]* %51, i32 0, i32 1
  store i32 %7172, i32* %7176, align 4
  %7177 = getelementptr inbounds [4 x i32], [4 x i32]* %51, i32 0, i32 2
  store i32 %7173, i32* %7177, align 4
  %7178 = getelementptr inbounds [4 x i32], [4 x i32]* %51, i32 0, i32 3
  store i32 %7174, i32* %7178, align 4
  %7179 = getelementptr inbounds [4 x i32], [4 x i32]* %51, i32 0, i32 %7168
  %7180 = load i32, i32* %7179, align 4, !tbaa !103, !noalias !107
  %7181 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %7182 = extractvalue %dx.types.ResRet.i32 %7181, 0
  %7183 = lshr i32 %7182, 16
  %7184 = and i32 %7183, 31
  %7185 = shl i32 %7107, %7184
  %7186 = add i32 %7185, %7106
  %7187 = shl i32 %7186, 2
  %7188 = add i32 %7187, %7180
  %7189 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %7188, i32 undef)  ; BufferLoad(srv,index,wot)
  %7190 = extractvalue %dx.types.ResRet.i32 %7189, 0
  %7191 = icmp eq i32 %7190, 0
  br i1 %7191, label %7209, label %7192

; <label>:7192                                    ; preds = %7164
  %7193 = icmp slt i32 %7190, 0
  %7194 = getelementptr [12 x float], [12 x float]* %98, i32 0, i32 %7165
  %7195 = getelementptr [12 x float], [12 x float]* %99, i32 0, i32 %7165
  %7196 = bitcast float* %7194 to i32*
  %7197 = bitcast float* %7195 to i32*
  br i1 %7193, label %7198, label %7205

; <label>:7198                                    ; preds = %7192
  %7199 = and i32 %7190, 1073741823
  %7200 = add i32 %7180, 20
  %7201 = add i32 %7200, %7199
  %7202 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %7201, i32 undef)  ; BufferLoad(srv,index,wot)
  %7203 = extractvalue %dx.types.ResRet.i32 %7202, 0
  %7204 = extractvalue %dx.types.ResRet.i32 %7202, 1
  br label %7205

; <label>:7205                                    ; preds = %7198, %7192
  %7206 = phi i32 [ %7203, %7198 ], [ %7114, %7192 ]
  %7207 = phi i32 [ %7204, %7198 ], [ %7115, %7192 ]
  store i32 %7206, i32* %7196, align 4
  store i32 %7207, i32* %7197, align 4
  %7208 = add i32 %7165, 1
  br label %7209

; <label>:7209                                    ; preds = %7205, %7164
  %7210 = phi i32 [ %7165, %7164 ], [ %7208, %7205 ]
  %7211 = add nuw i32 %7166, 1
  %7212 = icmp eq i32 %7211, %7161
  br i1 %7212, label %7213, label %7164

; <label>:7213                                    ; preds = %7209
  br label %7214

; <label>:7214                                    ; preds = %7213, %7158
  %7215 = phi i32 [ %7159, %7158 ], [ %7210, %7213 ]
  %7216 = icmp eq i32 %7215, 1
  %7217 = getelementptr [12 x float], [12 x float]* %98, i32 0, i32 0
  %7218 = getelementptr [12 x float], [12 x float]* %99, i32 0, i32 0
  br i1 %7216, label %7219, label %7222

; <label>:7219                                    ; preds = %7214
  %7220 = load float, float* %7217, align 4
  %7221 = load float, float* %7218, align 4
  br label %7249

; <label>:7222                                    ; preds = %7214
  %7223 = load float, float* %7217, align 4
  %7224 = load float, float* %7218, align 4
  %7225 = fdiv fast float 1.000000e+00, %7224
  %7226 = fsub fast float %7223, %7225
  %7227 = icmp ugt i32 %7215, 1
  br i1 %7227, label %7228, label %7244

; <label>:7228                                    ; preds = %7222
  br label %7229

; <label>:7229                                    ; preds = %7229, %7228
  %7230 = phi float [ %7239, %7229 ], [ %7226, %7228 ]
  %7231 = phi float [ %7240, %7229 ], [ %7223, %7228 ]
  %7232 = phi i32 [ %7241, %7229 ], [ 1, %7228 ]
  %7233 = getelementptr [12 x float], [12 x float]* %98, i32 0, i32 %7232
  %7234 = load float, float* %7233, align 4
  %7235 = getelementptr [12 x float], [12 x float]* %99, i32 0, i32 %7232
  %7236 = load float, float* %7235, align 4
  %7237 = fdiv fast float 1.000000e+00, %7236
  %7238 = fsub fast float %7234, %7237
  %7239 = call float @dx.op.binary.f32(i32 36, float %7230, float %7238)  ; FMin(a,b)
  %7240 = call float @dx.op.binary.f32(i32 35, float %7231, float %7234)  ; FMax(a,b)
  %7241 = add nuw i32 %7232, 1
  %7242 = icmp eq i32 %7241, %7215
  br i1 %7242, label %7243, label %7229

; <label>:7243                                    ; preds = %7229
  br label %7244

; <label>:7244                                    ; preds = %7243, %7222
  %7245 = phi float [ %7226, %7222 ], [ %7239, %7243 ]
  %7246 = phi float [ %7223, %7222 ], [ %7240, %7243 ]
  %7247 = fsub fast float %7246, %7245
  %7248 = fdiv fast float 1.000000e+00, %7247
  br label %7249

; <label>:7249                                    ; preds = %7244, %7219
  %7250 = phi float [ %7220, %7219 ], [ %7246, %7244 ]
  %7251 = phi float [ %7221, %7219 ], [ %7248, %7244 ]
  %7252 = fadd fast float %6953, %7250
  %7253 = fmul fast float %7252, %7251
  %7254 = call float @dx.op.unary.f32(i32 7, float %7253)  ; Saturate(value)
  %7255 = fmul fast float %7254, 2.000000e+00
  %7256 = fsub fast float 1.000000e+00, %7255
  %7257 = fmul fast float %7091, %7091
  %7258 = fsub fast float %7092, %7257
  %7259 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %7258)  ; FMax(a,b)
  %7260 = fdiv fast float 1.000000e+00, %7259
  %7261 = fmul fast float %7092, %7091
  %7262 = fsub fast float %7093, %7261
  %7263 = fsub fast float %7256, %7091
  %7264 = fmul fast float %7256, %7256
  %7265 = fsub fast float %7264, %7092
  %7266 = fmul fast float %7260, %7262
  %7267 = fmul fast float %7266, %7263
  %7268 = fsub fast float %7265, %7267
  %7269 = fmul fast float %7092, %7092
  %7270 = fsub fast float %7094, %7269
  %7271 = fmul fast float %7262, %7262
  %7272 = fmul fast float %7271, %7260
  %7273 = fsub fast float %7270, %7272
  %7274 = fdiv fast float %7268, %7273
  %7275 = fmul fast float %7274, %7262
  %7276 = fsub fast float %7263, %7275
  %7277 = fmul fast float %7276, %7260
  %7278 = fmul fast float %7277, %7091
  %7279 = fsub fast float 1.000000e+00, %7278
  %7280 = fmul fast float %7274, %7092
  %7281 = fsub fast float %7279, %7280
  %7282 = fmul fast float %7277, %7277
  %7283 = fmul fast float %7274, 4.000000e+00
  %7284 = fmul fast float %7283, %7281
  %7285 = fsub fast float %7282, %7284
  %7286 = call float @dx.op.unary.f32(i32 24, float %7285)  ; Sqrt(value)
  %7287 = fcmp fast oge float %7277, 0.000000e+00
  %7288 = fsub fast float -0.000000e+00, %7286
  %7289 = select i1 %7287, float %7288, float %7286
  %7290 = fsub fast float %7289, %7277
  %7291 = fdiv fast float %7290, %7274
  %7292 = fdiv fast float %7281, %7290
  %7293 = fmul fast float %7291, 5.000000e-01
  %7294 = fmul fast float %7292, 2.000000e+00
  %7295 = select i1 %7287, float %7293, float %7294
  %7296 = select i1 %7287, float %7294, float %7293
  %7297 = call float @dx.op.binary.f32(i32 35, float %7295, float %7296)  ; FMax(a,b)
  %7298 = call float @dx.op.binary.f32(i32 36, float %7295, float %7296)  ; FMin(a,b)
  %7299 = fcmp fast ogt float %7256, %7297
  %7300 = fsub fast float %7256, %7298
  %7301 = fsub fast float %7256, %7297
  %7302 = fsub fast float %7297, %7298
  %7303 = select i1 %7299, float %7301, float %7302
  %7304 = fmul float %7300, %7303
  %7305 = select i1 %7299, float %7298, float %7256
  %7306 = fcmp fast ogt float %7256, %7298
  %7307 = fmul fast float %7305, %7297
  %7308 = fadd fast float %7305, %7297
  %7309 = fmul fast float %7308, %7091
  %7310 = fadd fast float %7307, %7092
  %7311 = fsub fast float %7310, %7309
  %7312 = fdiv fast float %7311, %7304
  %7313 = select i1 %7306, float %7312, float 0.000000e+00
  %7314 = fsub fast float 1.000000e+00, %7313
  %7315 = select i1 %7299, float %7314, float %7313
  %7316 = call float @dx.op.unary.f32(i32 7, float %7315)  ; Saturate(value)
  %7317 = extractvalue %dx.types.CBufRet.f32 %7076, 3
  %7318 = fmul fast float %7317, %7316
  %7319 = fsub fast float 1.000000e+00, %7318
  br label %7320

; <label>:7320                                    ; preds = %7249, %6961, %6926, %6922, %6886
  %7321 = phi float [ 1.000000e+00, %6886 ], [ %7319, %7249 ], [ 1.000000e+00, %6926 ], [ 1.000000e+00, %6961 ], [ 1.000000e+00, %6922 ]
  %7322 = fcmp fast ogt float %6918, 0.000000e+00
  br i1 %7322, label %7323, label %7487, !dx.controlflow.hints !116

; <label>:7323                                    ; preds = %7320
  %7324 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %7325 = extractvalue %dx.types.CBufRet.f32 %7324, 2
  %7326 = fadd fast float %7325, %6799
  %7327 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %7328 = extractvalue %dx.types.CBufRet.f32 %7327, 2
  %7329 = extractvalue %dx.types.CBufRet.f32 %7327, 3
  %7330 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %7331 = extractvalue %dx.types.CBufRet.f32 %7330, 2
  %7332 = call float @dx.op.binary.f32(i32 35, float %7326, float 0.000000e+00)  ; FMax(a,b)
  %7333 = fadd fast float %7332, 0x3F10000000000000
  %7334 = fcmp fast oeq float %7331, 0.000000e+00
  br i1 %7334, label %7335, label %7402

; <label>:7335                                    ; preds = %7323
  %7336 = extractvalue %dx.types.CBufRet.f32 %7327, 1
  %7337 = extractvalue %dx.types.CBufRet.f32 %7327, 0
  %7338 = fmul fast float %7337, %6817
  %7339 = fmul fast float %7336, %6818
  %7340 = fadd fast float %7338, 5.000000e-01
  %7341 = call float @dx.op.unary.f32(i32 27, float %7340)  ; Round_ni(value)
  %7342 = fadd fast float %7339, 5.000000e-01
  %7343 = call float @dx.op.unary.f32(i32 27, float %7342)  ; Round_ni(value)
  %7344 = fsub fast float %7340, %7341
  %7345 = fsub fast float %7342, %7343
  %7346 = fadd fast float %7341, -5.000000e-01
  %7347 = fadd fast float %7343, -5.000000e-01
  %7348 = fmul fast float %7344, 2.000000e+00
  %7349 = fsub fast float 3.000000e+00, %7348
  %7350 = fadd fast float %7348, 1.000000e+00
  %7351 = fsub fast float 2.000000e+00, %7344
  %7352 = bitcast float %7349 to i32
  %7353 = sub nsw i32 2129859010, %7352
  %7354 = bitcast i32 %7353 to float
  %7355 = fmul fast float %7354, %7351
  %7356 = fadd fast float %7355, -1.000000e+00
  %7357 = bitcast float %7350 to i32
  %7358 = sub nsw i32 2129859010, %7357
  %7359 = bitcast i32 %7358 to float
  %7360 = fmul fast float %7359, %7344
  %7361 = fadd fast float %7360, 1.000000e+00
  %7362 = fmul fast float %7345, 2.000000e+00
  %7363 = fsub fast float 3.000000e+00, %7362
  %7364 = fadd fast float %7362, 1.000000e+00
  %7365 = fsub fast float 2.000000e+00, %7345
  %7366 = bitcast float %7363 to i32
  %7367 = sub nsw i32 2129859010, %7366
  %7368 = bitcast i32 %7367 to float
  %7369 = fmul fast float %7368, %7365
  %7370 = fadd fast float %7369, -1.000000e+00
  %7371 = bitcast float %7364 to i32
  %7372 = sub nsw i32 2129859010, %7371
  %7373 = bitcast i32 %7372 to float
  %7374 = fmul fast float %7373, %7345
  %7375 = fadd fast float %7374, 1.000000e+00
  %7376 = fadd fast float %7356, %7346
  %7377 = fmul fast float %7376, %7328
  %7378 = fadd fast float %7370, %7347
  %7379 = fmul fast float %7378, %7329
  %7380 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %48, float %7377, float %7379, float undef, float undef, i32 0, i32 0, i32 undef, float %7333)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7381 = extractvalue %dx.types.ResRet.f32 %7380, 0
  %7382 = fmul fast float %7381, %7349
  %7383 = fadd fast float %7361, %7346
  %7384 = fmul fast float %7383, %7328
  %7385 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %48, float %7384, float %7379, float undef, float undef, i32 0, i32 0, i32 undef, float %7333)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7386 = extractvalue %dx.types.ResRet.f32 %7385, 0
  %7387 = fmul fast float %7386, %7350
  %7388 = fadd fast float %7375, %7347
  %7389 = fmul fast float %7388, %7329
  %7390 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %48, float %7377, float %7389, float undef, float undef, i32 0, i32 0, i32 undef, float %7333)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7391 = extractvalue %dx.types.ResRet.f32 %7390, 0
  %7392 = fmul fast float %7391, %7349
  %7393 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %48, float %7384, float %7389, float undef, float undef, i32 0, i32 0, i32 undef, float %7333)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7394 = extractvalue %dx.types.ResRet.f32 %7393, 0
  %7395 = fmul fast float %7394, %7350
  %7396 = fadd fast float %7395, %7392
  %7397 = fmul fast float %7396, %7364
  %7398 = fadd fast float %7387, %7382
  %7399 = fmul fast float %7398, %7363
  %7400 = fadd fast float %7399, %7397
  %7401 = fmul fast float %7400, 6.250000e-02
  br label %7487

; <label>:7402                                    ; preds = %7323
  %7403 = fmul fast float %282, 0x401921FB60000000
  %7404 = call float @dx.op.unary.f32(i32 13, float %7403)  ; Sin(value)
  %7405 = call float @dx.op.unary.f32(i32 12, float %7403)  ; Cos(value)
  %7406 = fsub fast float -0.000000e+00, %7404
  br label %7407

; <label>:7407                                    ; preds = %7456, %7402
  %7408 = phi float [ 0.000000e+00, %7402 ], [ %7451, %7456 ]
  %7409 = phi float [ 0.000000e+00, %7402 ], [ %7453, %7456 ]
  %7410 = phi i32 [ 0, %7402 ], [ %7457, %7456 ]
  %7411 = mul i32 %7410, 2
  %7412 = add i32 0, %7411
  %7413 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7412
  %7414 = load float, float* %7413, align 4
  %7415 = mul i32 %7410, 2
  %7416 = add i32 1, %7415
  %7417 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7416
  %7418 = load float, float* %7417, align 4
  %7419 = fmul fast float %7414, %7405
  %7420 = call float @dx.op.tertiary.f32(i32 46, float %7418, float %7406, float %7419)  ; FMad(a,b,c)
  %7421 = fmul fast float %7414, %7404
  %7422 = call float @dx.op.tertiary.f32(i32 46, float %7418, float %7405, float %7421)  ; FMad(a,b,c)
  %7423 = fmul fast float %7420, %7331
  %7424 = fmul fast float %7422, %7331
  %7425 = fadd fast float %7423, %6817
  %7426 = fadd fast float %7424, %6818
  %7427 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %16, %dx.types.Handle %47, float %7425, float %7426, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7428 = extractvalue %dx.types.ResRet.f32 %7427, 0
  %7429 = extractvalue %dx.types.ResRet.f32 %7427, 1
  %7430 = extractvalue %dx.types.ResRet.f32 %7427, 2
  %7431 = extractvalue %dx.types.ResRet.f32 %7427, 3
  %7432 = getelementptr inbounds [4 x float], [4 x float]* %103, i32 0, i32 0
  store float %7428, float* %7432, align 4
  %7433 = getelementptr inbounds [4 x float], [4 x float]* %103, i32 0, i32 1
  store float %7429, float* %7433, align 4
  %7434 = getelementptr inbounds [4 x float], [4 x float]* %103, i32 0, i32 2
  store float %7430, float* %7434, align 4
  %7435 = getelementptr inbounds [4 x float], [4 x float]* %103, i32 0, i32 3
  store float %7431, float* %7435, align 4
  %7436 = fsub fast float %7428, %7333
  %7437 = fcmp fast olt float %7436, 0.000000e+00
  %7438 = select i1 %7437, float 0.000000e+00, float 1.000000e+00
  %7439 = fadd fast float %7438, %7408
  %7440 = fmul fast float %7438, %7436
  %7441 = fadd fast float %7440, %7409
  br label %7442

; <label>:7442                                    ; preds = %7442, %7407
  %7443 = phi i32 [ 1, %7407 ], [ %7454, %7442 ]
  %7444 = phi float [ %7441, %7407 ], [ %7453, %7442 ]
  %7445 = phi float [ %7439, %7407 ], [ %7451, %7442 ]
  %7446 = getelementptr [4 x float], [4 x float]* %103, i32 0, i32 %7443
  %7447 = load float, float* %7446, align 4, !tbaa !117, !noalias !107
  %7448 = fsub fast float %7447, %7333
  %7449 = fcmp fast olt float %7448, 0.000000e+00
  %7450 = select i1 %7449, float 0.000000e+00, float 1.000000e+00
  %7451 = fadd fast float %7450, %7445
  %7452 = fmul fast float %7450, %7448
  %7453 = fadd fast float %7452, %7444
  %7454 = add nuw nsw i32 %7443, 1
  %7455 = icmp eq i32 %7454, 4
  br i1 %7455, label %7456, label %7442, !llvm.loop !119

; <label>:7456                                    ; preds = %7442
  %7457 = add nuw nsw i32 %7410, 1
  %7458 = icmp eq i32 %7457, 8
  br i1 %7458, label %7459, label %7407, !llvm.loop !120

; <label>:7459                                    ; preds = %7456
  %7460 = fdiv fast float 1.000000e+00, %7451
  %7461 = fmul fast float %7460, %7453
  %7462 = fdiv fast float 1.000000e+00, %7333
  %7463 = fmul fast float %7461, %7462
  %7464 = call float @dx.op.unary.f32(i32 7, float %7463)  ; Saturate(value)
  %7465 = call float @dx.op.binary.f32(i32 35, float %7464, float 0.000000e+00)  ; FMax(a,b)
  %7466 = fmul fast float %7451, 3.125000e-02
  %7467 = call float @dx.op.unary.f32(i32 7, float %7466)  ; Saturate(value)
  %7468 = fmul fast float %7467, 2.000000e+00
  %7469 = fadd fast float %7468, -1.000000e+00
  %7470 = fcmp fast ogt float %7469, 0.000000e+00
  %7471 = fcmp fast olt float %7469, 0.000000e+00
  %7472 = zext i1 %7470 to i32
  %7473 = zext i1 %7471 to i32
  %7474 = sub nsw i32 %7472, %7473
  %7475 = sitofp i32 %7474 to float
  %7476 = fmul fast float %7475, %7469
  %7477 = fsub fast float 1.000000e+00, %7476
  %7478 = fmul fast float %7477, %7477
  %7479 = fmul fast float %7478, %7477
  %7480 = fsub fast float %7477, %7479
  %7481 = fmul fast float %7480, %7465
  %7482 = fsub fast float 1.000000e+00, %7479
  %7483 = fsub fast float %7482, %7481
  %7484 = fmul fast float %7475, 5.000000e-01
  %7485 = fmul fast float %7484, %7483
  %7486 = fsub fast float 5.000000e-01, %7485
  br label %7487

; <label>:7487                                    ; preds = %7459, %7335, %7320
  %7488 = phi float [ 1.000000e+00, %7320 ], [ %7401, %7335 ], [ %7486, %7459 ]
  %7489 = fcmp fast ogt float %6916, 0.000000e+00
  br i1 %7489, label %7490, label %7654, !dx.controlflow.hints !121

; <label>:7490                                    ; preds = %7487
  %7491 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %7492 = extractvalue %dx.types.CBufRet.f32 %7491, 1
  %7493 = fadd fast float %7492, %6799
  %7494 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %7495 = extractvalue %dx.types.CBufRet.f32 %7494, 2
  %7496 = extractvalue %dx.types.CBufRet.f32 %7494, 3
  %7497 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %7498 = extractvalue %dx.types.CBufRet.f32 %7497, 1
  %7499 = call float @dx.op.binary.f32(i32 35, float %7493, float 0.000000e+00)  ; FMax(a,b)
  %7500 = fadd fast float %7499, 0x3F10000000000000
  %7501 = fcmp fast oeq float %7498, 0.000000e+00
  br i1 %7501, label %7502, label %7569

; <label>:7502                                    ; preds = %7490
  %7503 = extractvalue %dx.types.CBufRet.f32 %7494, 1
  %7504 = extractvalue %dx.types.CBufRet.f32 %7494, 0
  %7505 = fmul fast float %7504, %6809
  %7506 = fmul fast float %7503, %6810
  %7507 = fadd fast float %7505, 5.000000e-01
  %7508 = call float @dx.op.unary.f32(i32 27, float %7507)  ; Round_ni(value)
  %7509 = fadd fast float %7506, 5.000000e-01
  %7510 = call float @dx.op.unary.f32(i32 27, float %7509)  ; Round_ni(value)
  %7511 = fsub fast float %7507, %7508
  %7512 = fsub fast float %7509, %7510
  %7513 = fadd fast float %7508, -5.000000e-01
  %7514 = fadd fast float %7510, -5.000000e-01
  %7515 = fmul fast float %7511, 2.000000e+00
  %7516 = fsub fast float 3.000000e+00, %7515
  %7517 = fadd fast float %7515, 1.000000e+00
  %7518 = fsub fast float 2.000000e+00, %7511
  %7519 = bitcast float %7516 to i32
  %7520 = sub nsw i32 2129859010, %7519
  %7521 = bitcast i32 %7520 to float
  %7522 = fmul fast float %7521, %7518
  %7523 = fadd fast float %7522, -1.000000e+00
  %7524 = bitcast float %7517 to i32
  %7525 = sub nsw i32 2129859010, %7524
  %7526 = bitcast i32 %7525 to float
  %7527 = fmul fast float %7526, %7511
  %7528 = fadd fast float %7527, 1.000000e+00
  %7529 = fmul fast float %7512, 2.000000e+00
  %7530 = fsub fast float 3.000000e+00, %7529
  %7531 = fadd fast float %7529, 1.000000e+00
  %7532 = fsub fast float 2.000000e+00, %7512
  %7533 = bitcast float %7530 to i32
  %7534 = sub nsw i32 2129859010, %7533
  %7535 = bitcast i32 %7534 to float
  %7536 = fmul fast float %7535, %7532
  %7537 = fadd fast float %7536, -1.000000e+00
  %7538 = bitcast float %7531 to i32
  %7539 = sub nsw i32 2129859010, %7538
  %7540 = bitcast i32 %7539 to float
  %7541 = fmul fast float %7540, %7512
  %7542 = fadd fast float %7541, 1.000000e+00
  %7543 = fadd fast float %7523, %7513
  %7544 = fmul fast float %7543, %7495
  %7545 = fadd fast float %7537, %7514
  %7546 = fmul fast float %7545, %7496
  %7547 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %48, float %7544, float %7546, float undef, float undef, i32 0, i32 0, i32 undef, float %7500)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7548 = extractvalue %dx.types.ResRet.f32 %7547, 0
  %7549 = fmul fast float %7548, %7516
  %7550 = fadd fast float %7528, %7513
  %7551 = fmul fast float %7550, %7495
  %7552 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %48, float %7551, float %7546, float undef, float undef, i32 0, i32 0, i32 undef, float %7500)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7553 = extractvalue %dx.types.ResRet.f32 %7552, 0
  %7554 = fmul fast float %7553, %7517
  %7555 = fadd fast float %7542, %7514
  %7556 = fmul fast float %7555, %7496
  %7557 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %48, float %7544, float %7556, float undef, float undef, i32 0, i32 0, i32 undef, float %7500)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7558 = extractvalue %dx.types.ResRet.f32 %7557, 0
  %7559 = fmul fast float %7558, %7516
  %7560 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %48, float %7551, float %7556, float undef, float undef, i32 0, i32 0, i32 undef, float %7500)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7561 = extractvalue %dx.types.ResRet.f32 %7560, 0
  %7562 = fmul fast float %7561, %7517
  %7563 = fadd fast float %7562, %7559
  %7564 = fmul fast float %7563, %7531
  %7565 = fadd fast float %7554, %7549
  %7566 = fmul fast float %7565, %7530
  %7567 = fadd fast float %7566, %7564
  %7568 = fmul fast float %7567, 6.250000e-02
  br label %7654

; <label>:7569                                    ; preds = %7490
  %7570 = fmul fast float %282, 0x401921FB60000000
  %7571 = call float @dx.op.unary.f32(i32 13, float %7570)  ; Sin(value)
  %7572 = call float @dx.op.unary.f32(i32 12, float %7570)  ; Cos(value)
  %7573 = fsub fast float -0.000000e+00, %7571
  br label %7574

; <label>:7574                                    ; preds = %7623, %7569
  %7575 = phi float [ 0.000000e+00, %7569 ], [ %7618, %7623 ]
  %7576 = phi float [ 0.000000e+00, %7569 ], [ %7620, %7623 ]
  %7577 = phi i32 [ 0, %7569 ], [ %7624, %7623 ]
  %7578 = mul i32 %7577, 2
  %7579 = add i32 0, %7578
  %7580 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7579
  %7581 = load float, float* %7580, align 4
  %7582 = mul i32 %7577, 2
  %7583 = add i32 1, %7582
  %7584 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7583
  %7585 = load float, float* %7584, align 4
  %7586 = fmul fast float %7581, %7572
  %7587 = call float @dx.op.tertiary.f32(i32 46, float %7585, float %7573, float %7586)  ; FMad(a,b,c)
  %7588 = fmul fast float %7581, %7571
  %7589 = call float @dx.op.tertiary.f32(i32 46, float %7585, float %7572, float %7588)  ; FMad(a,b,c)
  %7590 = fmul fast float %7587, %7498
  %7591 = fmul fast float %7589, %7498
  %7592 = fadd fast float %7590, %6809
  %7593 = fadd fast float %7591, %6810
  %7594 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %17, %dx.types.Handle %47, float %7592, float %7593, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7595 = extractvalue %dx.types.ResRet.f32 %7594, 0
  %7596 = extractvalue %dx.types.ResRet.f32 %7594, 1
  %7597 = extractvalue %dx.types.ResRet.f32 %7594, 2
  %7598 = extractvalue %dx.types.ResRet.f32 %7594, 3
  %7599 = getelementptr inbounds [4 x float], [4 x float]* %102, i32 0, i32 0
  store float %7595, float* %7599, align 4
  %7600 = getelementptr inbounds [4 x float], [4 x float]* %102, i32 0, i32 1
  store float %7596, float* %7600, align 4
  %7601 = getelementptr inbounds [4 x float], [4 x float]* %102, i32 0, i32 2
  store float %7597, float* %7601, align 4
  %7602 = getelementptr inbounds [4 x float], [4 x float]* %102, i32 0, i32 3
  store float %7598, float* %7602, align 4
  %7603 = fsub fast float %7595, %7500
  %7604 = fcmp fast olt float %7603, 0.000000e+00
  %7605 = select i1 %7604, float 0.000000e+00, float 1.000000e+00
  %7606 = fadd fast float %7605, %7575
  %7607 = fmul fast float %7605, %7603
  %7608 = fadd fast float %7607, %7576
  br label %7609

; <label>:7609                                    ; preds = %7609, %7574
  %7610 = phi i32 [ 1, %7574 ], [ %7621, %7609 ]
  %7611 = phi float [ %7608, %7574 ], [ %7620, %7609 ]
  %7612 = phi float [ %7606, %7574 ], [ %7618, %7609 ]
  %7613 = getelementptr [4 x float], [4 x float]* %102, i32 0, i32 %7610
  %7614 = load float, float* %7613, align 4, !tbaa !117, !noalias !107
  %7615 = fsub fast float %7614, %7500
  %7616 = fcmp fast olt float %7615, 0.000000e+00
  %7617 = select i1 %7616, float 0.000000e+00, float 1.000000e+00
  %7618 = fadd fast float %7617, %7612
  %7619 = fmul fast float %7617, %7615
  %7620 = fadd fast float %7619, %7611
  %7621 = add nuw nsw i32 %7610, 1
  %7622 = icmp eq i32 %7621, 4
  br i1 %7622, label %7623, label %7609, !llvm.loop !119

; <label>:7623                                    ; preds = %7609
  %7624 = add nuw nsw i32 %7577, 1
  %7625 = icmp eq i32 %7624, 8
  br i1 %7625, label %7626, label %7574, !llvm.loop !120

; <label>:7626                                    ; preds = %7623
  %7627 = fdiv fast float 1.000000e+00, %7618
  %7628 = fmul fast float %7627, %7620
  %7629 = fdiv fast float 1.000000e+00, %7500
  %7630 = fmul fast float %7628, %7629
  %7631 = call float @dx.op.unary.f32(i32 7, float %7630)  ; Saturate(value)
  %7632 = call float @dx.op.binary.f32(i32 35, float %7631, float 0.000000e+00)  ; FMax(a,b)
  %7633 = fmul fast float %7618, 3.125000e-02
  %7634 = call float @dx.op.unary.f32(i32 7, float %7633)  ; Saturate(value)
  %7635 = fmul fast float %7634, 2.000000e+00
  %7636 = fadd fast float %7635, -1.000000e+00
  %7637 = fcmp fast ogt float %7636, 0.000000e+00
  %7638 = fcmp fast olt float %7636, 0.000000e+00
  %7639 = zext i1 %7637 to i32
  %7640 = zext i1 %7638 to i32
  %7641 = sub nsw i32 %7639, %7640
  %7642 = sitofp i32 %7641 to float
  %7643 = fmul fast float %7642, %7636
  %7644 = fsub fast float 1.000000e+00, %7643
  %7645 = fmul fast float %7644, %7644
  %7646 = fmul fast float %7645, %7644
  %7647 = fsub fast float %7644, %7646
  %7648 = fmul fast float %7647, %7632
  %7649 = fsub fast float 1.000000e+00, %7646
  %7650 = fsub fast float %7649, %7648
  %7651 = fmul fast float %7642, 5.000000e-01
  %7652 = fmul fast float %7651, %7650
  %7653 = fsub fast float 5.000000e-01, %7652
  br label %7654

; <label>:7654                                    ; preds = %7626, %7502, %7487
  %7655 = phi float [ 1.000000e+00, %7487 ], [ %7568, %7502 ], [ %7653, %7626 ]
  %7656 = fcmp fast ogt float %6915, 0.000000e+00
  br i1 %7656, label %7657, label %7975, !dx.controlflow.hints !122

; <label>:7657                                    ; preds = %7654
  %7658 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %7659 = extractvalue %dx.types.CBufRet.f32 %7658, 0
  %7660 = fadd fast float %7659, %6799
  %7661 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %7662 = extractvalue %dx.types.CBufRet.f32 %7661, 2
  %7663 = extractvalue %dx.types.CBufRet.f32 %7661, 3
  %7664 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %7665 = extractvalue %dx.types.CBufRet.f32 %7664, 0
  %7666 = call float @dx.op.binary.f32(i32 35, float %7660, float 0.000000e+00)  ; FMax(a,b)
  %7667 = fadd fast float %7666, 0x3F10000000000000
  %7668 = fcmp fast oeq float %7665, 0.000000e+00
  br i1 %6802, label %7669, label %7822, !dx.controlflow.hints !123

; <label>:7669                                    ; preds = %7657
  br i1 %7668, label %7670, label %7737

; <label>:7670                                    ; preds = %7669
  %7671 = extractvalue %dx.types.CBufRet.f32 %7661, 1
  %7672 = extractvalue %dx.types.CBufRet.f32 %7661, 0
  %7673 = fmul fast float %7672, %6791
  %7674 = fmul fast float %7671, %6795
  %7675 = fadd fast float %7673, 5.000000e-01
  %7676 = call float @dx.op.unary.f32(i32 27, float %7675)  ; Round_ni(value)
  %7677 = fadd fast float %7674, 5.000000e-01
  %7678 = call float @dx.op.unary.f32(i32 27, float %7677)  ; Round_ni(value)
  %7679 = fsub fast float %7675, %7676
  %7680 = fsub fast float %7677, %7678
  %7681 = fadd fast float %7676, -5.000000e-01
  %7682 = fadd fast float %7678, -5.000000e-01
  %7683 = fmul fast float %7679, 2.000000e+00
  %7684 = fsub fast float 3.000000e+00, %7683
  %7685 = fadd fast float %7683, 1.000000e+00
  %7686 = fsub fast float 2.000000e+00, %7679
  %7687 = bitcast float %7684 to i32
  %7688 = sub nsw i32 2129859010, %7687
  %7689 = bitcast i32 %7688 to float
  %7690 = fmul fast float %7689, %7686
  %7691 = fadd fast float %7690, -1.000000e+00
  %7692 = bitcast float %7685 to i32
  %7693 = sub nsw i32 2129859010, %7692
  %7694 = bitcast i32 %7693 to float
  %7695 = fmul fast float %7694, %7679
  %7696 = fadd fast float %7695, 1.000000e+00
  %7697 = fmul fast float %7680, 2.000000e+00
  %7698 = fsub fast float 3.000000e+00, %7697
  %7699 = fadd fast float %7697, 1.000000e+00
  %7700 = fsub fast float 2.000000e+00, %7680
  %7701 = bitcast float %7698 to i32
  %7702 = sub nsw i32 2129859010, %7701
  %7703 = bitcast i32 %7702 to float
  %7704 = fmul fast float %7703, %7700
  %7705 = fadd fast float %7704, -1.000000e+00
  %7706 = bitcast float %7699 to i32
  %7707 = sub nsw i32 2129859010, %7706
  %7708 = bitcast i32 %7707 to float
  %7709 = fmul fast float %7708, %7680
  %7710 = fadd fast float %7709, 1.000000e+00
  %7711 = fadd fast float %7691, %7681
  %7712 = fmul fast float %7711, %7662
  %7713 = fadd fast float %7705, %7682
  %7714 = fmul fast float %7713, %7663
  %7715 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %48, float %7712, float %7714, float undef, float undef, i32 0, i32 0, i32 undef, float %7667)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7716 = extractvalue %dx.types.ResRet.f32 %7715, 0
  %7717 = fmul fast float %7716, %7684
  %7718 = fadd fast float %7696, %7681
  %7719 = fmul fast float %7718, %7662
  %7720 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %48, float %7719, float %7714, float undef, float undef, i32 0, i32 0, i32 undef, float %7667)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7721 = extractvalue %dx.types.ResRet.f32 %7720, 0
  %7722 = fmul fast float %7721, %7685
  %7723 = fadd fast float %7710, %7682
  %7724 = fmul fast float %7723, %7663
  %7725 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %48, float %7712, float %7724, float undef, float undef, i32 0, i32 0, i32 undef, float %7667)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7726 = extractvalue %dx.types.ResRet.f32 %7725, 0
  %7727 = fmul fast float %7726, %7684
  %7728 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %48, float %7719, float %7724, float undef, float undef, i32 0, i32 0, i32 undef, float %7667)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7729 = extractvalue %dx.types.ResRet.f32 %7728, 0
  %7730 = fmul fast float %7729, %7685
  %7731 = fadd fast float %7730, %7727
  %7732 = fmul fast float %7731, %7699
  %7733 = fadd fast float %7722, %7717
  %7734 = fmul fast float %7733, %7698
  %7735 = fadd fast float %7734, %7732
  %7736 = fmul fast float %7735, 6.250000e-02
  br label %7975

; <label>:7737                                    ; preds = %7669
  %7738 = fmul fast float %282, 0x401921FB60000000
  %7739 = call float @dx.op.unary.f32(i32 13, float %7738)  ; Sin(value)
  %7740 = call float @dx.op.unary.f32(i32 12, float %7738)  ; Cos(value)
  %7741 = fsub fast float -0.000000e+00, %7739
  br label %7742

; <label>:7742                                    ; preds = %7791, %7737
  %7743 = phi float [ 0.000000e+00, %7737 ], [ %7786, %7791 ]
  %7744 = phi float [ 0.000000e+00, %7737 ], [ %7788, %7791 ]
  %7745 = phi i32 [ 0, %7737 ], [ %7792, %7791 ]
  %7746 = mul i32 %7745, 2
  %7747 = add i32 0, %7746
  %7748 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7747
  %7749 = load float, float* %7748, align 4
  %7750 = mul i32 %7745, 2
  %7751 = add i32 1, %7750
  %7752 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7751
  %7753 = load float, float* %7752, align 4
  %7754 = fmul fast float %7749, %7740
  %7755 = call float @dx.op.tertiary.f32(i32 46, float %7753, float %7741, float %7754)  ; FMad(a,b,c)
  %7756 = fmul fast float %7749, %7739
  %7757 = call float @dx.op.tertiary.f32(i32 46, float %7753, float %7740, float %7756)  ; FMad(a,b,c)
  %7758 = fmul fast float %7755, %7665
  %7759 = fmul fast float %7757, %7665
  %7760 = fadd fast float %7758, %6791
  %7761 = fadd fast float %7759, %6795
  %7762 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %19, %dx.types.Handle %47, float %7760, float %7761, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7763 = extractvalue %dx.types.ResRet.f32 %7762, 0
  %7764 = extractvalue %dx.types.ResRet.f32 %7762, 1
  %7765 = extractvalue %dx.types.ResRet.f32 %7762, 2
  %7766 = extractvalue %dx.types.ResRet.f32 %7762, 3
  %7767 = getelementptr inbounds [4 x float], [4 x float]* %101, i32 0, i32 0
  store float %7763, float* %7767, align 4
  %7768 = getelementptr inbounds [4 x float], [4 x float]* %101, i32 0, i32 1
  store float %7764, float* %7768, align 4
  %7769 = getelementptr inbounds [4 x float], [4 x float]* %101, i32 0, i32 2
  store float %7765, float* %7769, align 4
  %7770 = getelementptr inbounds [4 x float], [4 x float]* %101, i32 0, i32 3
  store float %7766, float* %7770, align 4
  %7771 = fsub fast float %7763, %7667
  %7772 = fcmp fast olt float %7771, 0.000000e+00
  %7773 = select i1 %7772, float 0.000000e+00, float 1.000000e+00
  %7774 = fadd fast float %7773, %7743
  %7775 = fmul fast float %7773, %7771
  %7776 = fadd fast float %7775, %7744
  br label %7777

; <label>:7777                                    ; preds = %7777, %7742
  %7778 = phi i32 [ 1, %7742 ], [ %7789, %7777 ]
  %7779 = phi float [ %7776, %7742 ], [ %7788, %7777 ]
  %7780 = phi float [ %7774, %7742 ], [ %7786, %7777 ]
  %7781 = getelementptr [4 x float], [4 x float]* %101, i32 0, i32 %7778
  %7782 = load float, float* %7781, align 4, !tbaa !117, !noalias !107
  %7783 = fsub fast float %7782, %7667
  %7784 = fcmp fast olt float %7783, 0.000000e+00
  %7785 = select i1 %7784, float 0.000000e+00, float 1.000000e+00
  %7786 = fadd fast float %7785, %7780
  %7787 = fmul fast float %7785, %7783
  %7788 = fadd fast float %7787, %7779
  %7789 = add nuw nsw i32 %7778, 1
  %7790 = icmp eq i32 %7789, 4
  br i1 %7790, label %7791, label %7777, !llvm.loop !119

; <label>:7791                                    ; preds = %7777
  %7792 = add nuw nsw i32 %7745, 1
  %7793 = icmp eq i32 %7792, 8
  br i1 %7793, label %7794, label %7742, !llvm.loop !120

; <label>:7794                                    ; preds = %7791
  %7795 = fdiv fast float 1.000000e+00, %7786
  %7796 = fmul fast float %7795, %7788
  %7797 = fdiv fast float 1.000000e+00, %7667
  %7798 = fmul fast float %7796, %7797
  %7799 = call float @dx.op.unary.f32(i32 7, float %7798)  ; Saturate(value)
  %7800 = call float @dx.op.binary.f32(i32 35, float %7799, float 0.000000e+00)  ; FMax(a,b)
  %7801 = fmul fast float %7786, 3.125000e-02
  %7802 = call float @dx.op.unary.f32(i32 7, float %7801)  ; Saturate(value)
  %7803 = fmul fast float %7802, 2.000000e+00
  %7804 = fadd fast float %7803, -1.000000e+00
  %7805 = fcmp fast ogt float %7804, 0.000000e+00
  %7806 = fcmp fast olt float %7804, 0.000000e+00
  %7807 = zext i1 %7805 to i32
  %7808 = zext i1 %7806 to i32
  %7809 = sub nsw i32 %7807, %7808
  %7810 = sitofp i32 %7809 to float
  %7811 = fmul fast float %7810, %7804
  %7812 = fsub fast float 1.000000e+00, %7811
  %7813 = fmul fast float %7812, %7812
  %7814 = fmul fast float %7813, %7812
  %7815 = fsub fast float %7812, %7814
  %7816 = fmul fast float %7815, %7800
  %7817 = fsub fast float 1.000000e+00, %7814
  %7818 = fsub fast float %7817, %7816
  %7819 = fmul fast float %7810, 5.000000e-01
  %7820 = fmul fast float %7819, %7818
  %7821 = fsub fast float 5.000000e-01, %7820
  br label %7975

; <label>:7822                                    ; preds = %7657
  br i1 %7668, label %7823, label %7890

; <label>:7823                                    ; preds = %7822
  %7824 = extractvalue %dx.types.CBufRet.f32 %7661, 1
  %7825 = extractvalue %dx.types.CBufRet.f32 %7661, 0
  %7826 = fmul fast float %7825, %6791
  %7827 = fmul fast float %7824, %6795
  %7828 = fadd fast float %7826, 5.000000e-01
  %7829 = call float @dx.op.unary.f32(i32 27, float %7828)  ; Round_ni(value)
  %7830 = fadd fast float %7827, 5.000000e-01
  %7831 = call float @dx.op.unary.f32(i32 27, float %7830)  ; Round_ni(value)
  %7832 = fsub fast float %7828, %7829
  %7833 = fsub fast float %7830, %7831
  %7834 = fadd fast float %7829, -5.000000e-01
  %7835 = fadd fast float %7831, -5.000000e-01
  %7836 = fmul fast float %7832, 2.000000e+00
  %7837 = fsub fast float 3.000000e+00, %7836
  %7838 = fadd fast float %7836, 1.000000e+00
  %7839 = fsub fast float 2.000000e+00, %7832
  %7840 = bitcast float %7837 to i32
  %7841 = sub nsw i32 2129859010, %7840
  %7842 = bitcast i32 %7841 to float
  %7843 = fmul fast float %7842, %7839
  %7844 = fadd fast float %7843, -1.000000e+00
  %7845 = bitcast float %7838 to i32
  %7846 = sub nsw i32 2129859010, %7845
  %7847 = bitcast i32 %7846 to float
  %7848 = fmul fast float %7847, %7832
  %7849 = fadd fast float %7848, 1.000000e+00
  %7850 = fmul fast float %7833, 2.000000e+00
  %7851 = fsub fast float 3.000000e+00, %7850
  %7852 = fadd fast float %7850, 1.000000e+00
  %7853 = fsub fast float 2.000000e+00, %7833
  %7854 = bitcast float %7851 to i32
  %7855 = sub nsw i32 2129859010, %7854
  %7856 = bitcast i32 %7855 to float
  %7857 = fmul fast float %7856, %7853
  %7858 = fadd fast float %7857, -1.000000e+00
  %7859 = bitcast float %7852 to i32
  %7860 = sub nsw i32 2129859010, %7859
  %7861 = bitcast i32 %7860 to float
  %7862 = fmul fast float %7861, %7833
  %7863 = fadd fast float %7862, 1.000000e+00
  %7864 = fadd fast float %7844, %7834
  %7865 = fmul fast float %7864, %7662
  %7866 = fadd fast float %7858, %7835
  %7867 = fmul fast float %7866, %7663
  %7868 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %48, float %7865, float %7867, float undef, float undef, i32 0, i32 0, i32 undef, float %7667)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7869 = extractvalue %dx.types.ResRet.f32 %7868, 0
  %7870 = fmul fast float %7869, %7837
  %7871 = fadd fast float %7849, %7834
  %7872 = fmul fast float %7871, %7662
  %7873 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %48, float %7872, float %7867, float undef, float undef, i32 0, i32 0, i32 undef, float %7667)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7874 = extractvalue %dx.types.ResRet.f32 %7873, 0
  %7875 = fmul fast float %7874, %7838
  %7876 = fadd fast float %7863, %7835
  %7877 = fmul fast float %7876, %7663
  %7878 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %48, float %7865, float %7877, float undef, float undef, i32 0, i32 0, i32 undef, float %7667)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7879 = extractvalue %dx.types.ResRet.f32 %7878, 0
  %7880 = fmul fast float %7879, %7837
  %7881 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %48, float %7872, float %7877, float undef, float undef, i32 0, i32 0, i32 undef, float %7667)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7882 = extractvalue %dx.types.ResRet.f32 %7881, 0
  %7883 = fmul fast float %7882, %7838
  %7884 = fadd fast float %7883, %7880
  %7885 = fmul fast float %7884, %7852
  %7886 = fadd fast float %7875, %7870
  %7887 = fmul fast float %7886, %7851
  %7888 = fadd fast float %7887, %7885
  %7889 = fmul fast float %7888, 6.250000e-02
  br label %7975

; <label>:7890                                    ; preds = %7822
  %7891 = fmul fast float %282, 0x401921FB60000000
  %7892 = call float @dx.op.unary.f32(i32 13, float %7891)  ; Sin(value)
  %7893 = call float @dx.op.unary.f32(i32 12, float %7891)  ; Cos(value)
  %7894 = fsub fast float -0.000000e+00, %7892
  br label %7895

; <label>:7895                                    ; preds = %7944, %7890
  %7896 = phi float [ 0.000000e+00, %7890 ], [ %7939, %7944 ]
  %7897 = phi float [ 0.000000e+00, %7890 ], [ %7941, %7944 ]
  %7898 = phi i32 [ 0, %7890 ], [ %7945, %7944 ]
  %7899 = mul i32 %7898, 2
  %7900 = add i32 0, %7899
  %7901 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7900
  %7902 = load float, float* %7901, align 4
  %7903 = mul i32 %7898, 2
  %7904 = add i32 1, %7903
  %7905 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7904
  %7906 = load float, float* %7905, align 4
  %7907 = fmul fast float %7902, %7893
  %7908 = call float @dx.op.tertiary.f32(i32 46, float %7906, float %7894, float %7907)  ; FMad(a,b,c)
  %7909 = fmul fast float %7902, %7892
  %7910 = call float @dx.op.tertiary.f32(i32 46, float %7906, float %7893, float %7909)  ; FMad(a,b,c)
  %7911 = fmul fast float %7908, %7665
  %7912 = fmul fast float %7910, %7665
  %7913 = fadd fast float %7911, %6791
  %7914 = fadd fast float %7912, %6795
  %7915 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %18, %dx.types.Handle %47, float %7913, float %7914, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7916 = extractvalue %dx.types.ResRet.f32 %7915, 0
  %7917 = extractvalue %dx.types.ResRet.f32 %7915, 1
  %7918 = extractvalue %dx.types.ResRet.f32 %7915, 2
  %7919 = extractvalue %dx.types.ResRet.f32 %7915, 3
  %7920 = getelementptr inbounds [4 x float], [4 x float]* %100, i32 0, i32 0
  store float %7916, float* %7920, align 4
  %7921 = getelementptr inbounds [4 x float], [4 x float]* %100, i32 0, i32 1
  store float %7917, float* %7921, align 4
  %7922 = getelementptr inbounds [4 x float], [4 x float]* %100, i32 0, i32 2
  store float %7918, float* %7922, align 4
  %7923 = getelementptr inbounds [4 x float], [4 x float]* %100, i32 0, i32 3
  store float %7919, float* %7923, align 4
  %7924 = fsub fast float %7916, %7667
  %7925 = fcmp fast olt float %7924, 0.000000e+00
  %7926 = select i1 %7925, float 0.000000e+00, float 1.000000e+00
  %7927 = fadd fast float %7926, %7896
  %7928 = fmul fast float %7926, %7924
  %7929 = fadd fast float %7928, %7897
  br label %7930

; <label>:7930                                    ; preds = %7930, %7895
  %7931 = phi i32 [ 1, %7895 ], [ %7942, %7930 ]
  %7932 = phi float [ %7929, %7895 ], [ %7941, %7930 ]
  %7933 = phi float [ %7927, %7895 ], [ %7939, %7930 ]
  %7934 = getelementptr [4 x float], [4 x float]* %100, i32 0, i32 %7931
  %7935 = load float, float* %7934, align 4, !tbaa !117, !noalias !107
  %7936 = fsub fast float %7935, %7667
  %7937 = fcmp fast olt float %7936, 0.000000e+00
  %7938 = select i1 %7937, float 0.000000e+00, float 1.000000e+00
  %7939 = fadd fast float %7938, %7933
  %7940 = fmul fast float %7938, %7936
  %7941 = fadd fast float %7940, %7932
  %7942 = add nuw nsw i32 %7931, 1
  %7943 = icmp eq i32 %7942, 4
  br i1 %7943, label %7944, label %7930, !llvm.loop !119

; <label>:7944                                    ; preds = %7930
  %7945 = add nuw nsw i32 %7898, 1
  %7946 = icmp eq i32 %7945, 8
  br i1 %7946, label %7947, label %7895, !llvm.loop !120

; <label>:7947                                    ; preds = %7944
  %7948 = fdiv fast float 1.000000e+00, %7939
  %7949 = fmul fast float %7948, %7941
  %7950 = fdiv fast float 1.000000e+00, %7667
  %7951 = fmul fast float %7949, %7950
  %7952 = call float @dx.op.unary.f32(i32 7, float %7951)  ; Saturate(value)
  %7953 = call float @dx.op.binary.f32(i32 35, float %7952, float 0.000000e+00)  ; FMax(a,b)
  %7954 = fmul fast float %7939, 3.125000e-02
  %7955 = call float @dx.op.unary.f32(i32 7, float %7954)  ; Saturate(value)
  %7956 = fmul fast float %7955, 2.000000e+00
  %7957 = fadd fast float %7956, -1.000000e+00
  %7958 = fcmp fast ogt float %7957, 0.000000e+00
  %7959 = fcmp fast olt float %7957, 0.000000e+00
  %7960 = zext i1 %7958 to i32
  %7961 = zext i1 %7959 to i32
  %7962 = sub nsw i32 %7960, %7961
  %7963 = sitofp i32 %7962 to float
  %7964 = fmul fast float %7963, %7957
  %7965 = fsub fast float 1.000000e+00, %7964
  %7966 = fmul fast float %7965, %7965
  %7967 = fmul fast float %7966, %7965
  %7968 = fsub fast float %7965, %7967
  %7969 = fmul fast float %7968, %7953
  %7970 = fsub fast float 1.000000e+00, %7967
  %7971 = fsub fast float %7970, %7969
  %7972 = fmul fast float %7963, 5.000000e-01
  %7973 = fmul fast float %7972, %7971
  %7974 = fsub fast float 5.000000e-01, %7973
  br label %7975

; <label>:7975                                    ; preds = %7947, %7823, %7794, %7670, %7654
  %7976 = phi float [ 1.000000e+00, %7654 ], [ %7736, %7670 ], [ %7821, %7794 ], [ %7889, %7823 ], [ %7974, %7947 ]
  %7977 = fsub fast float %7488, %7321
  %7978 = fmul fast float %7977, %6888
  %7979 = fadd fast float %7978, %7321
  %7980 = fsub fast float %7655, %7979
  %7981 = fmul fast float %7980, %6887
  %7982 = fadd fast float %7981, %7979
  %7983 = fsub fast float %7976, %7982
  %7984 = fmul fast float %7983, %6915
  %7985 = fadd fast float %7984, %7982
  %7986 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %7987 = extractvalue %dx.types.CBufRet.f32 %7986, 2
  %7988 = fcmp fast ogt float %7987, 0.000000e+00
  br i1 %7988, label %7989, label %8029, !dx.controlflow.hints !124

; <label>:7989                                    ; preds = %7975
  %7990 = fcmp fast ugt float %7987, 0.000000e+00
  br i1 %7990, label %7991, label %8026

; <label>:7991                                    ; preds = %7989
  %7992 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %7993 = extractvalue %dx.types.CBufRet.f32 %7992, 0
  %7994 = extractvalue %dx.types.CBufRet.f32 %7992, 1
  %7995 = extractvalue %dx.types.CBufRet.f32 %7992, 2
  %7996 = extractvalue %dx.types.CBufRet.f32 %7992, 3
  %7997 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %7998 = extractvalue %dx.types.CBufRet.f32 %7997, 0
  %7999 = extractvalue %dx.types.CBufRet.f32 %7997, 1
  %8000 = extractvalue %dx.types.CBufRet.f32 %7997, 2
  %8001 = extractvalue %dx.types.CBufRet.f32 %7997, 3
  %8002 = extractvalue %dx.types.CBufRet.f32 %7986, 0
  %8003 = extractvalue %dx.types.CBufRet.f32 %7986, 1
  %8004 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %8005 = extractvalue %dx.types.CBufRet.f32 %8004, 0
  %8006 = extractvalue %dx.types.CBufRet.f32 %8004, 1
  %8007 = extractvalue %dx.types.CBufRet.f32 %8004, 2
  %8008 = fadd fast float %8005, %6768
  %8009 = fadd fast float %8006, %6769
  %8010 = fadd fast float %8007, %6770
  %8011 = fmul fast float %8008, %7993
  %8012 = call float @dx.op.tertiary.f32(i32 46, float %7994, float %8009, float %8011)  ; FMad(a,b,c)
  %8013 = call float @dx.op.tertiary.f32(i32 46, float %7995, float %8010, float %8012)  ; FMad(a,b,c)
  %8014 = fadd fast float %8013, %7996
  %8015 = fmul fast float %8008, %7998
  %8016 = call float @dx.op.tertiary.f32(i32 46, float %7999, float %8009, float %8015)  ; FMad(a,b,c)
  %8017 = call float @dx.op.tertiary.f32(i32 46, float %8000, float %8010, float %8016)  ; FMad(a,b,c)
  %8018 = fadd fast float %8017, %8001
  %8019 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %43, float %8014, float %8018, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %8020 = extractvalue %dx.types.ResRet.f32 %8019, 0
  %8021 = fmul fast float %8020, %8003
  %8022 = fadd fast float %8021, %8002
  %8023 = call float @dx.op.unary.f32(i32 7, float %8022)  ; Saturate(value)
  %8024 = fmul fast float %8023, %7987
  %8025 = fsub fast float 1.000000e+00, %8024
  br label %8026

; <label>:8026                                    ; preds = %7991, %7989
  %8027 = phi float [ %8025, %7991 ], [ 1.000000e+00, %7989 ]
  %8028 = fmul fast float %8027, %7985
  br label %8029

; <label>:8029                                    ; preds = %8026, %7975, %6748
  %8030 = phi float [ 1.000000e+00, %6748 ], [ %8028, %8026 ], [ %7985, %7975 ]
  %8031 = call float @dx.op.binary.f32(i32 36, float %8030, float %8030)  ; FMin(a,b)
  %8032 = call float @dx.op.binary.f32(i32 36, float %8030, float %8031)  ; FMin(a,b)
  %8033 = fcmp fast ogt float %8032, 0.000000e+00
  br i1 %8033, label %8034, label %8200, !dx.controlflow.hints !125

; <label>:8034                                    ; preds = %8029
  %8035 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %8036 = extractvalue %dx.types.CBufRet.f32 %8035, 0
  %8037 = extractvalue %dx.types.CBufRet.f32 %8035, 1
  %8038 = extractvalue %dx.types.CBufRet.f32 %8035, 2
  %8039 = extractvalue %dx.types.CBufRet.f32 %8035, 3
  %8040 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %8041 = extractvalue %dx.types.CBufRet.f32 %8040, 0
  %8042 = extractvalue %dx.types.CBufRet.f32 %8040, 1
  %8043 = extractvalue %dx.types.CBufRet.f32 %8040, 2
  %8044 = extractvalue %dx.types.CBufRet.f32 %8040, 3
  %8045 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %8046 = extractvalue %dx.types.CBufRet.f32 %8045, 0
  %8047 = extractvalue %dx.types.CBufRet.f32 %8045, 1
  %8048 = extractvalue %dx.types.CBufRet.f32 %8045, 2
  %8049 = extractvalue %dx.types.CBufRet.f32 %8045, 3
  %8050 = fmul fast float %8036, %6768
  %8051 = call float @dx.op.tertiary.f32(i32 46, float %6769, float %8037, float %8050)  ; FMad(a,b,c)
  %8052 = call float @dx.op.tertiary.f32(i32 46, float %6770, float %8038, float %8051)  ; FMad(a,b,c)
  %8053 = fadd fast float %8052, %8039
  %8054 = fmul fast float %8041, %6768
  %8055 = call float @dx.op.tertiary.f32(i32 46, float %6769, float %8042, float %8054)  ; FMad(a,b,c)
  %8056 = call float @dx.op.tertiary.f32(i32 46, float %6770, float %8043, float %8055)  ; FMad(a,b,c)
  %8057 = fadd fast float %8056, %8044
  %8058 = fmul fast float %8046, %6768
  %8059 = call float @dx.op.tertiary.f32(i32 46, float %6769, float %8047, float %8058)  ; FMad(a,b,c)
  %8060 = call float @dx.op.tertiary.f32(i32 46, float %6770, float %8048, float %8059)  ; FMad(a,b,c)
  %8061 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %8062 = extractvalue %dx.types.CBufRet.f32 %8061, 0
  %8063 = extractvalue %dx.types.CBufRet.f32 %8061, 1
  %8064 = extractvalue %dx.types.CBufRet.f32 %8061, 3
  %8065 = fmul fast float %8064, %8053
  %8066 = fmul fast float %8064, %8057
  %8067 = fadd fast float %8065, %8062
  %8068 = fadd fast float %8066, %8063
  %8069 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %8070 = extractvalue %dx.types.CBufRet.f32 %8069, 0
  %8071 = extractvalue %dx.types.CBufRet.f32 %8069, 1
  %8072 = fsub fast float %8067, %8070
  %8073 = fsub fast float %8068, %8071
  %8074 = fcmp fast olt float %8072, 0.000000e+00
  %8075 = fcmp fast olt float %8073, 0.000000e+00
  %8076 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %8077 = extractvalue %dx.types.CBufRet.f32 %8076, 0
  %8078 = extractvalue %dx.types.CBufRet.f32 %8076, 1
  %8079 = extractvalue %dx.types.CBufRet.f32 %8076, 2
  %8080 = extractvalue %dx.types.CBufRet.f32 %8076, 3
  %8081 = select i1 %8074, float %8077, float %8079
  %8082 = select i1 %8075, float %8078, float %8080
  %8083 = fmul fast float %8081, %8072
  %8084 = fmul fast float %8082, %8073
  %8085 = call float @dx.op.unary.f32(i32 6, float %8083)  ; FAbs(value)
  %8086 = call float @dx.op.unary.f32(i32 6, float %8084)  ; FAbs(value)
  %8087 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %8088 = extractvalue %dx.types.CBufRet.f32 %8087, 0
  %8089 = call float @dx.op.binary.f32(i32 35, float %8085, float %8086)  ; FMax(a,b)
  %8090 = fsub fast float %8088, %8089
  %8091 = call float @dx.op.unary.f32(i32 7, float %8090)  ; Saturate(value)
  %8092 = fcmp fast ogt float %8091, 0.000000e+00
  br i1 %8092, label %8093, label %8134, !dx.controlflow.hints !126

; <label>:8093                                    ; preds = %8034
  %8094 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %46, float %8067, float %8068, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8095 = extractvalue %dx.types.ResRet.f32 %8094, 1
  %8096 = fcmp fast ogt float %8095, 0.000000e+00
  br i1 %8096, label %8097, label %8129

; <label>:8097                                    ; preds = %8093
  %8098 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %46, float %8067, float %8068, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8099 = extractvalue %dx.types.ResRet.f32 %8098, 0
  %8100 = extractvalue %dx.types.ResRet.f32 %8098, 1
  %8101 = extractvalue %dx.types.ResRet.f32 %8098, 2
  %8102 = extractvalue %dx.types.ResRet.f32 %8098, 3
  %8103 = fsub fast float 1.000000e+00, %8049
  %8104 = fsub fast float %8103, %8060
  %8105 = fmul fast float %8104, 0x400921FB60000000
  %8106 = fadd fast float %8105, 0x3FF921FB60000000
  %8107 = call float @dx.op.unary.f32(i32 13, float %8106)  ; Sin(value)
  %8108 = fadd fast float %8107, -1.000000e+00
  %8109 = fmul fast float %8108, 0x3FD45F3060000000
  %8110 = fmul fast float %8104, 0x401921FB60000000
  %8111 = fadd fast float %8110, 0x400921FB60000000
  %8112 = call float @dx.op.unary.f32(i32 13, float %8111)  ; Sin(value)
  %8113 = fadd fast float %8112, 0x3E7777A5C0000000
  %8114 = fmul fast float %8113, 0x3FC45F3060000000
  %8115 = fmul fast float %8104, 0x4022D97C80000000
  %8116 = fadd fast float %8115, 0x4012D97C80000000
  %8117 = call float @dx.op.unary.f32(i32 13, float %8116)  ; Sin(value)
  %8118 = fadd fast float %8117, 1.000000e+00
  %8119 = fmul fast float %8118, 0x3FBB2995E0000000
  %8120 = fmul fast float %8104, 0x402921FB60000000
  %8121 = fadd fast float %8120, 0x401921FB60000000
  %8122 = call float @dx.op.unary.f32(i32 13, float %8121)  ; Sin(value)
  %8123 = fadd fast float %8122, 0xBE8777A5C0000000
  %8124 = fmul fast float %8123, 0x3FB45F3060000000
  %8125 = call float @dx.op.dot4.f32(i32 56, float %8099, float %8100, float %8101, float %8102, float %8109, float %8114, float %8119, float %8124)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %8126 = fmul fast float %8125, 0xBFF7154760000000
  %8127 = call float @dx.op.unary.f32(i32 21, float %8126)  ; Exp(value)
  %8128 = call float @dx.op.unary.f32(i32 7, float %8127)  ; Saturate(value)
  br label %8129

; <label>:8129                                    ; preds = %8097, %8093
  %8130 = phi float [ %8128, %8097 ], [ 1.000000e+00, %8093 ]
  %8131 = fadd fast float %8130, -1.000000e+00
  %8132 = fmul fast float %8131, %8091
  %8133 = fadd fast float %8132, 1.000000e+00
  br label %8134

; <label>:8134                                    ; preds = %8129, %8034
  %8135 = phi float [ %8133, %8129 ], [ 1.000000e+00, %8034 ]
  %8136 = fmul fast float %8135, %8030
  %8137 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %8138 = extractvalue %dx.types.CBufRet.f32 %8137, 0
  %8139 = extractvalue %dx.types.CBufRet.f32 %8137, 1
  %8140 = extractvalue %dx.types.CBufRet.f32 %8137, 2
  %8141 = fadd fast float %8138, %197
  %8142 = fadd fast float %8139, %198
  %8143 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %8144 = extractvalue %dx.types.CBufRet.f32 %8143, 1
  %8145 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %8146 = extractvalue %dx.types.CBufRet.f32 %8145, 0
  %8147 = extractvalue %dx.types.CBufRet.f32 %8145, 1
  %8148 = extractvalue %dx.types.CBufRet.f32 %8145, 2
  %8149 = fsub fast float -0.000000e+00, %8141
  %8150 = fsub fast float -0.000000e+00, %8142
  %8151 = fsub fast float -0.000000e+00, %199
  %8152 = fsub fast float %8151, %8140
  %8153 = fadd fast float %8152, %8144
  %8154 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %8149, float %8150, float %8153)  ; Dot3(ax,ay,az,bx,by,bz)
  %8155 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %8146, float %8147, float %8148)  ; Dot3(ax,ay,az,bx,by,bz)
  %8156 = fdiv fast float 1.000000e+00, %8155
  %8157 = fmul fast float %8156, %8154
  %8158 = fmul fast float %8146, %8157
  %8159 = fmul fast float %8147, %8157
  %8160 = fadd fast float %8158, %8141
  %8161 = fadd fast float %8159, %8142
  %8162 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %8163 = extractvalue %dx.types.CBufRet.f32 %8162, 0
  %8164 = extractvalue %dx.types.CBufRet.f32 %8162, 1
  %8165 = fsub fast float %8160, %8163
  %8166 = fsub fast float %8161, %8164
  %8167 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %8168 = extractvalue %dx.types.CBufRet.f32 %8167, 2
  %8169 = extractvalue %dx.types.CBufRet.f32 %8167, 3
  %8170 = fmul fast float %8165, %8168
  %8171 = fmul fast float %8166, %8169
  %8172 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %8173 = extractvalue %dx.types.CBufRet.i32 %8172, 3
  %8174 = icmp eq i32 %8173, 0
  br i1 %8174, label %8180, label %8175

; <label>:8175                                    ; preds = %8134
  %8176 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %45, float %8170, float %8171, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8177 = extractvalue %dx.types.ResRet.f32 %8176, 0
  %8178 = extractvalue %dx.types.ResRet.f32 %8176, 1
  %8179 = extractvalue %dx.types.ResRet.f32 %8176, 2
  br label %8185

; <label>:8180                                    ; preds = %8134
  %8181 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %46, float %8170, float %8171, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8182 = extractvalue %dx.types.ResRet.f32 %8181, 0
  %8183 = extractvalue %dx.types.ResRet.f32 %8181, 1
  %8184 = extractvalue %dx.types.ResRet.f32 %8181, 2
  br label %8185

; <label>:8185                                    ; preds = %8180, %8175
  %8186 = phi float [ %8177, %8175 ], [ %8182, %8180 ]
  %8187 = phi float [ %8178, %8175 ], [ %8183, %8180 ]
  %8188 = phi float [ %8179, %8175 ], [ %8184, %8180 ]
  %8189 = extractvalue %dx.types.CBufRet.f32 %8143, 2
  %8190 = fmul fast float %8189, %8186
  %8191 = extractvalue %dx.types.CBufRet.f32 %8143, 0
  %8192 = fsub fast float %8157, %8191
  %8193 = fsub fast float %8192, %8190
  %8194 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8193)  ; FMax(a,b)
  %8195 = fmul fast float %8194, %8187
  %8196 = call float @dx.op.binary.f32(i32 36, float %8188, float %8195)  ; FMin(a,b)
  %8197 = fmul fast float %8196, 0xBFF7154760000000
  %8198 = call float @dx.op.unary.f32(i32 21, float %8197)  ; Exp(value)
  %8199 = fmul fast float %8136, %8198
  br label %8200

; <label>:8200                                    ; preds = %8185, %8029
  %8201 = phi float [ %8199, %8185 ], [ %8030, %8029 ]
  %8202 = call float @dx.op.binary.f32(i32 36, float %8201, float %8201)  ; FMin(a,b)
  %8203 = call float @dx.op.binary.f32(i32 36, float %8201, float %8202)  ; FMin(a,b)
  %8204 = fcmp fast ogt float %8203, 0.000000e+00
  br i1 %8204, label %8205, label %8388, !dx.controlflow.hints !127

; <label>:8205                                    ; preds = %8200
  %8206 = fmul fast float %8201, %6760
  %8207 = fmul fast float %8201, %6761
  %8208 = fmul fast float %8201, %6762
  %8209 = fsub fast float %6749, %5950
  %8210 = fsub fast float %6750, %5951
  %8211 = fsub fast float %6751, %5952
  %8212 = call float @dx.op.dot3.f32(i32 55, float %8209, float %8210, float %8211, float %8209, float %8210, float %8211)  ; Dot3(ax,ay,az,bx,by,bz)
  %8213 = call float @dx.op.unary.f32(i32 25, float %8212)  ; Rsqrt(value)
  %8214 = fmul fast float %8213, %8209
  %8215 = fmul fast float %8213, %8210
  %8216 = fmul fast float %8213, %8211
  %8217 = call float @dx.op.dot3.f32(i32 55, float %6749, float %6750, float %6751, float %5908, float %5909, float %5910)  ; Dot3(ax,ay,az,bx,by,bz)
  %8218 = call float @dx.op.dot3.f32(i32 55, float %5953, float %5954, float %5955, float %8214, float %8215, float %8216)  ; Dot3(ax,ay,az,bx,by,bz)
  %8219 = call float @dx.op.unary.f32(i32 7, float %8217)  ; Saturate(value)
  %8220 = fmul fast float %8219, %8219
  %8221 = fmul fast float %8220, %5983
  %8222 = call float @dx.op.unary.f32(i32 7, float %8221)  ; Saturate(value)
  %8223 = fmul fast float %8222, %8219
  %8224 = call float @dx.op.dot3.f32(i32 55, float %5908, float %5909, float %5910, float %8214, float %8215, float %8216)  ; Dot3(ax,ay,az,bx,by,bz)
  %8225 = fmul fast float %8224, %8224
  %8226 = call float @dx.op.unary.f32(i32 6, float %8217)  ; FAbs(value)
  %8227 = fsub fast float 1.000000e+00, %5976
  %8228 = fmul fast float %5958, %5958
  %8229 = fmul fast float %8228, %8227
  %8230 = fadd fast float %8229, %5976
  %8231 = bitcast float %8230 to i32
  %8232 = ashr i32 %8231, 1
  %8233 = add nsw i32 %8232, 532487669
  %8234 = bitcast i32 %8233 to float
  %8235 = fadd fast float %8234, %5958
  %8236 = fmul fast float %5976, %8225
  %8237 = fsub fast float 1.000000e+00, %8225
  %8238 = fadd fast float %8237, %8236
  %8239 = fmul fast float %8226, %8226
  %8240 = fmul fast float %8239, %8227
  %8241 = fadd fast float %8240, %5976
  %8242 = bitcast float %8241 to i32
  %8243 = ashr i32 %8242, 1
  %8244 = add nsw i32 %8243, 532487669
  %8245 = bitcast i32 %8244 to float
  %8246 = fadd fast float %8245, %8226
  %8247 = fmul fast float %8238, %8238
  %8248 = fmul fast float %8247, %8235
  %8249 = fmul fast float %8248, %8246
  %8250 = fdiv fast float 0x3FF0A00000000000, %8249
  %8251 = fmul fast float %8250, %5976
  %8252 = fmul fast float %6087, 0x3FF9999980000000
  %8253 = fsub fast float 5.000000e+00, %8252
  %8254 = call float @dx.op.unary.f32(i32 6, float %8218)  ; FAbs(value)
  %8255 = fsub fast float 1.000000e+00, %8254
  %8256 = fmul fast float %6087, 0x41D9660740000000
  %8257 = fadd fast float %8256, 0xC1EFBF8940000000
  %8258 = bitcast float %8255 to i32
  %8259 = sitofp i32 %8258 to float
  %8260 = fmul fast float %8259, %8253
  %8261 = fadd fast float %8257, %8260
  %8262 = fptosi float %8261 to i32
  %8263 = bitcast i32 %8262 to float
  %8264 = fsub fast float 1.000000e+00, %5911
  %8265 = fsub fast float 1.000000e+00, %5912
  %8266 = fsub fast float 1.000000e+00, %5956
  %8267 = fmul fast float %8263, %8264
  %8268 = fmul fast float %8263, %8265
  %8269 = fmul fast float %8263, %8266
  %8270 = fadd fast float %8267, %5911
  %8271 = fadd fast float %8268, %5912
  %8272 = fadd fast float %8269, %5956
  br i1 %6110, label %8273, label %8296

; <label>:8273                                    ; preds = %8205
  %8274 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %46, float %4656, float %8254, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8275 = extractvalue %dx.types.ResRet.f32 %8274, 0
  %8276 = extractvalue %dx.types.ResRet.f32 %8274, 1
  %8277 = extractvalue %dx.types.ResRet.f32 %8274, 2
  %8278 = fadd fast float %8275, -5.000000e-01
  %8279 = fadd fast float %8276, -5.000000e-01
  %8280 = fadd fast float %8277, -5.000000e-01
  %8281 = fmul fast float %5911, 4.000000e+00
  %8282 = fmul fast float %8281, %8264
  %8283 = fmul fast float %8282, %8278
  %8284 = fmul fast float %5912, 4.000000e+00
  %8285 = fmul fast float %8284, %8265
  %8286 = fmul fast float %8285, %8279
  %8287 = fmul fast float %5956, 4.000000e+00
  %8288 = fmul fast float %8287, %8266
  %8289 = fmul fast float %8288, %8280
  %8290 = fadd fast float %8283, %8270
  %8291 = fadd fast float %8286, %8271
  %8292 = fadd fast float %8289, %8272
  %8293 = call float @dx.op.unary.f32(i32 7, float %8290)  ; Saturate(value)
  %8294 = call float @dx.op.unary.f32(i32 7, float %8291)  ; Saturate(value)
  %8295 = call float @dx.op.unary.f32(i32 7, float %8292)  ; Saturate(value)
  br label %8296

; <label>:8296                                    ; preds = %8273, %8205
  %8297 = phi float [ %8293, %8273 ], [ %8270, %8205 ]
  %8298 = phi float [ %8294, %8273 ], [ %8271, %8205 ]
  %8299 = phi float [ %8295, %8273 ], [ %8272, %8205 ]
  %8300 = fmul fast float %8217, 9.843750e-01
  %8301 = fadd fast float %8300, 7.812500e-03
  %8302 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %38, %dx.types.Handle %46, float %8301, float %6091, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8303 = extractvalue %dx.types.ResRet.f32 %8302, 0
  %8304 = extractvalue %dx.types.ResRet.f32 %8302, 1
  %8305 = extractvalue %dx.types.ResRet.f32 %8302, 2
  %8306 = extractvalue %dx.types.ResRet.f32 %8302, 3
  %8307 = fsub fast float %8305, %8303
  %8308 = fsub fast float %8306, %8304
  %8309 = fmul fast float %8307, %6097
  %8310 = fmul fast float %8308, %6097
  %8311 = fadd fast float %8309, %8303
  %8312 = fadd fast float %8310, %8304
  %8313 = fmul fast float %8311, %5911
  %8314 = fmul fast float %8311, %5912
  %8315 = fmul fast float %8311, %5956
  %8316 = fadd fast float %8313, %8312
  %8317 = fadd fast float %8314, %8312
  %8318 = fadd fast float %8315, %8312
  br i1 %6110, label %8319, label %8342

; <label>:8319                                    ; preds = %8296
  %8320 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %46, float %4656, float %8217, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8321 = extractvalue %dx.types.ResRet.f32 %8320, 0
  %8322 = extractvalue %dx.types.ResRet.f32 %8320, 1
  %8323 = extractvalue %dx.types.ResRet.f32 %8320, 2
  %8324 = fadd fast float %8321, -5.000000e-01
  %8325 = fadd fast float %8322, -5.000000e-01
  %8326 = fadd fast float %8323, -5.000000e-01
  %8327 = fmul fast float %5911, 4.000000e+00
  %8328 = fmul fast float %8327, %8264
  %8329 = fmul fast float %8328, %8324
  %8330 = fmul fast float %5912, 4.000000e+00
  %8331 = fmul fast float %8330, %8265
  %8332 = fmul fast float %8331, %8325
  %8333 = fmul fast float %5956, 4.000000e+00
  %8334 = fmul fast float %8333, %8266
  %8335 = fmul fast float %8334, %8326
  %8336 = fadd fast float %8329, %8316
  %8337 = fadd fast float %8332, %8317
  %8338 = fadd fast float %8335, %8318
  %8339 = call float @dx.op.unary.f32(i32 7, float %8336)  ; Saturate(value)
  %8340 = call float @dx.op.unary.f32(i32 7, float %8337)  ; Saturate(value)
  %8341 = call float @dx.op.unary.f32(i32 7, float %8338)  ; Saturate(value)
  br label %8342

; <label>:8342                                    ; preds = %8319, %8296
  %8343 = phi float [ %8339, %8319 ], [ %8316, %8296 ]
  %8344 = phi float [ %8340, %8319 ], [ %8317, %8296 ]
  %8345 = phi float [ %8341, %8319 ], [ %8318, %8296 ]
  %8346 = call float @dx.op.binary.f32(i32 35, float %8344, float %8345)  ; FMax(a,b)
  %8347 = call float @dx.op.binary.f32(i32 35, float %8343, float %8346)  ; FMax(a,b)
  %8348 = fsub fast float 1.000000e+00, %8347
  %8349 = fmul fast float %8297, %8251
  %8350 = fmul fast float %8298, %8251
  %8351 = fmul fast float %8299, %8251
  %8352 = fsub fast float 1.000000e+00, %8218
  %8353 = bitcast float %8352 to i32
  %8354 = sitofp i32 %8353 to float
  %8355 = fmul fast float %8354, 5.000000e+00
  %8356 = fadd fast float %8355, 0xC1EFBF8940000000
  %8357 = fptosi float %8356 to i32
  %8358 = bitcast i32 %8357 to float
  %8359 = fmul fast float %8358, %4657
  %8360 = fmul fast float %8348, %8359
  %8361 = fmul fast float %8360, %6677
  %8362 = fmul fast float %8360, %6678
  %8363 = fmul fast float %8360, %6679
  %8364 = fadd fast float %8361, %8349
  %8365 = fadd fast float %8362, %8350
  %8366 = fadd fast float %8363, %8351
  %8367 = fmul fast float %8223, %8206
  %8368 = fmul fast float %8367, %8348
  %8369 = fmul fast float %8223, %8207
  %8370 = fmul fast float %8369, %8348
  %8371 = fmul fast float %8223, %8208
  %8372 = fmul fast float %8371, %8348
  %8373 = fmul fast float %8367, %8364
  %8374 = fmul fast float %8369, %8365
  %8375 = fmul fast float %8371, %8366
  %8376 = fadd fast float %8368, %6659
  %8377 = fmul fast float %8376, %4653
  %8378 = fadd fast float %8370, %6661
  %8379 = fmul fast float %8378, %4653
  %8380 = fadd fast float %8372, %6663
  %8381 = fmul fast float %8380, %4653
  %8382 = fadd fast float %8373, %6737
  %8383 = fmul fast float %8382, %4653
  %8384 = fadd fast float %8374, %6740
  %8385 = fmul fast float %8384, %4653
  %8386 = fadd fast float %8375, %6743
  %8387 = fmul fast float %8386, %4653
  br label %8388

; <label>:8388                                    ; preds = %8342, %8200, %6604
  %8389 = phi float [ %6738, %6604 ], [ %6738, %8200 ], [ %8383, %8342 ]
  %8390 = phi float [ %6741, %6604 ], [ %6741, %8200 ], [ %8385, %8342 ]
  %8391 = phi float [ %6744, %6604 ], [ %6744, %8200 ], [ %8387, %8342 ]
  %8392 = phi float [ %6733, %6604 ], [ %6733, %8200 ], [ %8377, %8342 ]
  %8393 = phi float [ %6734, %6604 ], [ %6734, %8200 ], [ %8379, %8342 ]
  %8394 = phi float [ %6735, %6604 ], [ %6735, %8200 ], [ %8381, %8342 ]
  %8395 = fmul fast float %4653, %4653
  %8396 = fmul fast float %8395, %6713
  %8397 = fsub fast float -0.000000e+00, %8396
  %8398 = fmul fast float %8395, %6714
  %8399 = fsub fast float -0.000000e+00, %8398
  %8400 = fmul fast float %8395, %6715
  %8401 = fsub fast float -0.000000e+00, %8400
  %8402 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %8403 = extractvalue %dx.types.CBufRet.f32 %8402, 0
  %8404 = fmul fast float %8403, %6719
  %8405 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %8406 = extractvalue %dx.types.CBufRet.f32 %8405, 3
  %8407 = fsub fast float 1.000000e+00, %4660
  %8408 = call float @dx.op.unary.f32(i32 7, float %8407)  ; Saturate(value)
  %8409 = fadd fast float %8394, %4659
  %8410 = fmul fast float %8409, %4660
  %8411 = fmul fast float %8408, %8406
  %8412 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %8413 = extractvalue %dx.types.CBufRet.f32 %8412, 3
  %8414 = fmul fast float %8392, %5905
  %8415 = fmul fast float %8393, %5906
  %8416 = fmul fast float %8394, %5907
  %8417 = fcmp fast ogt float %97, %232
  %8418 = and i1 %8417, %4702
  %8419 = or i1 %4781, %8418
  %8420 = icmp eq i32 %4701, 2
  %8421 = fcmp fast ole float %97, %232
  %8422 = and i1 %8421, %8420
  %8423 = or i1 %8422, %8419
  br i1 %8418, label %8424, label %8681

; <label>:8424                                    ; preds = %8388
  %8425 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %8426 = extractvalue %dx.types.CBufRet.f32 %8425, 2
  %8427 = extractvalue %dx.types.CBufRet.f32 %8425, 3
  %8428 = fmul fast float %8426, %110
  %8429 = fmul fast float %8427, %111
  %8430 = call float @dx.op.unary.f32(i32 7, float %8428)  ; Saturate(value)
  %8431 = call float @dx.op.unary.f32(i32 7, float %8429)  ; Saturate(value)
  %8432 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %46, float %8430, float %8431, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8433 = extractvalue %dx.types.ResRet.f32 %8432, 0
  %8434 = extractvalue %dx.types.ResRet.f32 %8432, 1
  %8435 = extractvalue %dx.types.ResRet.f32 %8432, 2
  %8436 = extractvalue %dx.types.ResRet.f32 %8432, 3
  %8437 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %46, float %8430, float %8431, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8438 = extractvalue %dx.types.ResRet.f32 %8437, 0
  %8439 = extractvalue %dx.types.ResRet.f32 %8437, 1
  %8440 = extractvalue %dx.types.ResRet.f32 %8437, 2
  %8441 = extractvalue %dx.types.ResRet.f32 %8437, 3
  %8442 = call float @dx.op.binary.f32(i32 35, float %8434, float %8435)  ; FMax(a,b)
  %8443 = call float @dx.op.binary.f32(i32 35, float %8433, float %8442)  ; FMax(a,b)
  %8444 = call float @dx.op.binary.f32(i32 35, float %8443, float %8436)  ; FMax(a,b)
  %8445 = call float @dx.op.binary.f32(i32 36, float %8439, float %8440)  ; FMin(a,b)
  %8446 = call float @dx.op.binary.f32(i32 36, float %8438, float %8445)  ; FMin(a,b)
  %8447 = call float @dx.op.binary.f32(i32 36, float %8446, float %8441)  ; FMin(a,b)
  %8448 = fmul fast float %8444, 2.550000e+02
  %8449 = fadd fast float %8448, 0x3F70101020000000
  %8450 = fptoui float %8449 to i32
  %8451 = fmul fast float %8447, 2.550000e+02
  %8452 = fadd fast float %8451, 0x3F70101020000000
  %8453 = fptoui float %8452 to i32
  %8454 = icmp ult i32 %8450, %8453
  br i1 %8454, label %8455, label %8623

; <label>:8455                                    ; preds = %8424
  %8456 = fcmp fast ogt float %96, 9.843750e-01
  %8457 = fadd fast float %97, -4.000000e+00
  %8458 = select i1 %8456, float -4.000000e+00, float %8457
  %8459 = call float @dx.op.binary.f32(i32 35, float %8458, float 0.000000e+00)  ; FMax(a,b)
  %8460 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %8461 = extractvalue %dx.types.CBufRet.f32 %8460, 0
  %8462 = fadd fast float %8461, %8459
  %8463 = extractvalue %dx.types.CBufRet.f32 %8460, 2
  %8464 = fmul fast float %8462, %8463
  %8465 = call float @dx.op.unary.f32(i32 23, float %8464)  ; Log(value)
  %8466 = extractvalue %dx.types.CBufRet.f32 %8460, 3
  %8467 = fmul fast float %8466, %8465
  %8468 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8469 = extractvalue %dx.types.CBufRet.f32 %8468, 2
  %8470 = fmul fast float %8467, %8469
  %8471 = call float @dx.op.unary.f32(i32 7, float %8470)  ; Saturate(value)
  %8472 = uitofp i32 %8450 to float
  %8473 = uitofp i32 %8453 to float
  %8474 = fadd fast float %8472, 5.000000e-01
  %8475 = fadd fast float %8473, 5.000000e-01
  %8476 = fmul fast float %8469, %8474
  %8477 = fmul fast float %8469, %8475
  %8478 = fadd fast float %8476, 0x3F0FFB4800000000
  %8479 = fadd fast float %8477, 0xBF0FFB4800000000
  %8480 = call float @dx.op.binary.f32(i32 35, float %8471, float %8478)  ; FMax(a,b)
  %8481 = call float @dx.op.binary.f32(i32 36, float %8480, float %8479)  ; FMin(a,b)
  %8482 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %8483 = extractvalue %dx.types.CBufRet.f32 %8482, 1
  %8484 = extractvalue %dx.types.CBufRet.f32 %8482, 2
  %8485 = extractvalue %dx.types.CBufRet.f32 %8482, 0
  %8486 = fmul fast float %8483, %8481
  %8487 = fadd fast float %8485, %8486
  %8488 = fadd fast float %8485, %8484
  %8489 = fsub fast float %8483, %8484
  %8490 = fadd fast float %8489, %8485
  %8491 = call float @dx.op.binary.f32(i32 35, float %8487, float %8488)  ; FMax(a,b)
  %8492 = call float @dx.op.binary.f32(i32 36, float %8491, float %8490)  ; FMin(a,b)
  %8493 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %44, float %8430, float %8431, float %8492, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8494 = extractvalue %dx.types.ResRet.f32 %8493, 0
  %8495 = extractvalue %dx.types.ResRet.f32 %8493, 1
  %8496 = extractvalue %dx.types.ResRet.f32 %8493, 2
  %8497 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %8498 = extractvalue %dx.types.CBufRet.i32 %8497, 0
  %8499 = extractvalue %dx.types.CBufRet.i32 %8497, 1
  %8500 = uitofp i32 %8498 to float
  %8501 = uitofp i32 %8499 to float
  %8502 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %8503 = extractvalue %dx.types.CBufRet.f32 %8502, 0
  %8504 = extractvalue %dx.types.CBufRet.f32 %8502, 1
  %8505 = fmul fast float %8500, %8430
  %8506 = fmul fast float %8501, %8431
  %8507 = fadd fast float %8505, -5.000000e-01
  %8508 = fadd fast float %8506, -5.000000e-01
  %8509 = call float @dx.op.unary.f32(i32 22, float %8507)  ; Frc(value)
  %8510 = call float @dx.op.unary.f32(i32 22, float %8508)  ; Frc(value)
  %8511 = fmul fast float %8509, %8509
  %8512 = fmul fast float %8511, %8509
  %8513 = fsub fast float 3.000000e+00, %8509
  %8514 = fmul fast float %8511, %8513
  %8515 = fmul fast float %8509, 3.000000e+00
  %8516 = fmul fast float %8512, 3.000000e+00
  %8517 = fmul fast float %8511, 6.000000e+00
  %8518 = fsub fast float %8516, %8517
  %8519 = fadd fast float %8518, 4.000000e+00
  %8520 = fmul fast float %8519, 0x3FC5555560000000
  %8521 = fmul fast float %8512, -3.000000e+00
  %8522 = fadd fast float %8511, %8509
  %8523 = fmul fast float %8522, 3.000000e+00
  %8524 = fadd fast float %8521, 1.000000e+00
  %8525 = fadd fast float %8524, %8523
  %8526 = fmul fast float %8512, 0x3FC5555560000000
  %8527 = fmul fast float %8510, %8510
  %8528 = fmul fast float %8527, %8510
  %8529 = fsub fast float 3.000000e+00, %8510
  %8530 = fmul fast float %8527, %8529
  %8531 = fmul fast float %8510, 3.000000e+00
  %8532 = fmul fast float %8528, 3.000000e+00
  %8533 = fmul fast float %8527, 6.000000e+00
  %8534 = fsub fast float %8532, %8533
  %8535 = fadd fast float %8534, 4.000000e+00
  %8536 = fmul fast float %8535, 0x3FC5555560000000
  %8537 = fmul fast float %8528, -3.000000e+00
  %8538 = fadd fast float %8527, %8510
  %8539 = fmul fast float %8538, 3.000000e+00
  %8540 = fadd fast float %8537, 1.000000e+00
  %8541 = fadd fast float %8540, %8539
  %8542 = fmul fast float %8528, 0x3FC5555560000000
  %8543 = fadd fast float %8509, 1.000000e+00
  %8544 = fsub fast float 1.000000e+00, %8515
  %8545 = fadd fast float %8544, %8514
  %8546 = fadd fast float %8545, %8519
  %8547 = fmul fast float %8546, 0x3FC5555560000000
  %8548 = fdiv fast float %8520, %8547
  %8549 = fsub fast float %8543, %8548
  %8550 = fsub fast float 1.000000e+00, %8509
  %8551 = fadd fast float %8525, %8512
  %8552 = fmul fast float %8551, 0x3FC5555560000000
  %8553 = fdiv fast float %8526, %8552
  %8554 = fadd fast float %8550, %8553
  %8555 = fadd fast float %8510, 1.000000e+00
  %8556 = fsub fast float 1.000000e+00, %8531
  %8557 = fadd fast float %8556, %8530
  %8558 = fadd fast float %8557, %8535
  %8559 = fmul fast float %8558, 0x3FC5555560000000
  %8560 = fdiv fast float %8536, %8559
  %8561 = fsub fast float %8555, %8560
  %8562 = fsub fast float 1.000000e+00, %8510
  %8563 = fadd fast float %8541, %8528
  %8564 = fmul fast float %8563, 0x3FC5555560000000
  %8565 = fdiv fast float %8542, %8564
  %8566 = fadd fast float %8565, %8562
  %8567 = fmul fast float %8549, %8503
  %8568 = fsub fast float %8430, %8567
  %8569 = fmul fast float %8554, %8503
  %8570 = fadd fast float %8569, %8430
  %8571 = fmul fast float %8566, %8504
  %8572 = fadd fast float %8571, %8431
  %8573 = fmul fast float %8561, %8504
  %8574 = fsub fast float %8431, %8573
  %8575 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %44, float %8568, float %8574, float %8492, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8576 = extractvalue %dx.types.ResRet.f32 %8575, 0
  %8577 = extractvalue %dx.types.ResRet.f32 %8575, 1
  %8578 = extractvalue %dx.types.ResRet.f32 %8575, 2
  %8579 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %44, float %8570, float %8574, float %8492, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8580 = extractvalue %dx.types.ResRet.f32 %8579, 0
  %8581 = extractvalue %dx.types.ResRet.f32 %8579, 1
  %8582 = extractvalue %dx.types.ResRet.f32 %8579, 2
  %8583 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %44, float %8568, float %8572, float %8492, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8584 = extractvalue %dx.types.ResRet.f32 %8583, 0
  %8585 = extractvalue %dx.types.ResRet.f32 %8583, 1
  %8586 = extractvalue %dx.types.ResRet.f32 %8583, 2
  %8587 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %44, float %8570, float %8572, float %8492, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8588 = extractvalue %dx.types.ResRet.f32 %8587, 0
  %8589 = extractvalue %dx.types.ResRet.f32 %8587, 1
  %8590 = extractvalue %dx.types.ResRet.f32 %8587, 2
  %8591 = fsub fast float %8584, %8576
  %8592 = fsub fast float %8585, %8577
  %8593 = fsub fast float %8586, %8578
  %8594 = fmul fast float %8591, %8564
  %8595 = fmul fast float %8592, %8564
  %8596 = fmul fast float %8593, %8564
  %8597 = fadd fast float %8594, %8576
  %8598 = fadd fast float %8595, %8577
  %8599 = fadd fast float %8596, %8578
  %8600 = fsub fast float %8588, %8580
  %8601 = fsub fast float %8589, %8581
  %8602 = fsub fast float %8590, %8582
  %8603 = fmul fast float %8600, %8564
  %8604 = fmul fast float %8601, %8564
  %8605 = fmul fast float %8602, %8564
  %8606 = fsub fast float %8580, %8597
  %8607 = fadd fast float %8606, %8603
  %8608 = fsub fast float %8581, %8598
  %8609 = fadd fast float %8608, %8604
  %8610 = fsub fast float %8582, %8599
  %8611 = fadd fast float %8610, %8605
  %8612 = fmul fast float %8607, %8552
  %8613 = fmul fast float %8609, %8552
  %8614 = fmul fast float %8611, %8552
  %8615 = fadd fast float %8612, %8597
  %8616 = fadd fast float %8613, %8598
  %8617 = fadd fast float %8614, %8599
  %8618 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8619 = extractvalue %dx.types.CBufRet.f32 %8618, 1
  %8620 = fmul fast float %8615, %8619
  %8621 = fmul fast float %8616, %8619
  %8622 = fmul fast float %8617, %8619
  br label %8623

; <label>:8623                                    ; preds = %8455, %8424
  %8624 = phi float [ %8494, %8455 ], [ 1.000000e+00, %8424 ]
  %8625 = phi float [ %8495, %8455 ], [ 1.000000e+00, %8424 ]
  %8626 = phi float [ %8496, %8455 ], [ 1.000000e+00, %8424 ]
  %8627 = phi float [ %8620, %8455 ], [ 0.000000e+00, %8424 ]
  %8628 = phi float [ %8621, %8455 ], [ 0.000000e+00, %8424 ]
  %8629 = phi float [ %8622, %8455 ], [ 0.000000e+00, %8424 ]
  %8630 = fmul fast float %8627, %8397
  %8631 = fmul fast float %8628, %8399
  %8632 = fmul fast float %8629, %8401
  %8633 = call float @dx.op.dot3.f32(i32 55, float %8624, float %8625, float %8626, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8634 = call float @dx.op.dot3.f32(i32 55, float %8630, float %8631, float %8632, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8635 = select i1 %271, float %8633, float %8624
  %8636 = select i1 %271, float %8633, float %8625
  %8637 = select i1 %271, float 1.000000e+00, float %8626
  %8638 = select i1 %271, float %8634, float %8630
  %8639 = select i1 %271, float 0.000000e+00, float %8631
  %8640 = select i1 %271, float 0.000000e+00, float %8632
  %8641 = fmul fast float %8635, %8414
  %8642 = fmul fast float %8636, %8415
  %8643 = fmul fast float %8637, %8416
  %8644 = fadd fast float %8641, %8638
  %8645 = fadd fast float %8642, %8639
  %8646 = fadd fast float %8640, %8643
  %8647 = fmul fast float %8635, %8389
  %8648 = fmul fast float %8636, %8390
  %8649 = fmul fast float %8637, %8391
  %8650 = fmul fast float %146, %8426
  %8651 = fmul fast float %148, %8427
  %8652 = fsub fast float 1.000000e+00, %8650
  %8653 = fsub fast float 1.000000e+00, %8651
  %8654 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %8655 = extractvalue %dx.types.CBufRet.f32 %8654, 0
  %8656 = extractvalue %dx.types.CBufRet.f32 %8654, 1
  %8657 = extractvalue %dx.types.CBufRet.f32 %8654, 2
  %8658 = fmul fast float %8652, %8655
  %8659 = fmul fast float %8652, %8656
  %8660 = fmul fast float %8652, %8657
  %8661 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %8662 = extractvalue %dx.types.CBufRet.f32 %8661, 0
  %8663 = extractvalue %dx.types.CBufRet.f32 %8661, 1
  %8664 = extractvalue %dx.types.CBufRet.f32 %8661, 2
  %8665 = fmul fast float %8653, %8662
  %8666 = fmul fast float %8653, %8663
  %8667 = fmul fast float %8653, %8664
  %8668 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %8669 = extractvalue %dx.types.CBufRet.f32 %8668, 0
  %8670 = extractvalue %dx.types.CBufRet.f32 %8668, 1
  %8671 = extractvalue %dx.types.CBufRet.f32 %8668, 2
  %8672 = fadd fast float %8665, %8669
  %8673 = fadd fast float %8672, %8658
  %8674 = fadd fast float %8666, %8670
  %8675 = fadd fast float %8674, %8659
  %8676 = fadd fast float %8667, %8671
  %8677 = fadd fast float %8676, %8660
  %8678 = fmul fast float %8673, %232
  %8679 = fmul fast float %8675, %232
  %8680 = fmul fast float %8677, %232
  br label %8681

; <label>:8681                                    ; preds = %8623, %8388
  %8682 = phi float [ %8678, %8623 ], [ %197, %8388 ]
  %8683 = phi float [ %8679, %8623 ], [ %198, %8388 ]
  %8684 = phi float [ %8680, %8623 ], [ %199, %8388 ]
  %8685 = phi float [ %232, %8623 ], [ %97, %8388 ]
  %8686 = phi float [ %8644, %8623 ], [ %8414, %8388 ]
  %8687 = phi float [ %8645, %8623 ], [ %8415, %8388 ]
  %8688 = phi float [ %8646, %8623 ], [ %8416, %8388 ]
  %8689 = phi float [ %8647, %8623 ], [ %8389, %8388 ]
  %8690 = phi float [ %8648, %8623 ], [ %8390, %8388 ]
  %8691 = phi float [ %8649, %8623 ], [ %8391, %8388 ]
  %8692 = phi float [ %8624, %8623 ], [ 1.000000e+00, %8388 ]
  br i1 %8423, label %9847, label %8693

; <label>:8693                                    ; preds = %8681
  %8694 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %8695 = extractvalue %dx.types.CBufRet.f32 %8694, 0
  %8696 = extractvalue %dx.types.CBufRet.f32 %8694, 1
  %8697 = extractvalue %dx.types.CBufRet.f32 %8694, 2
  %8698 = extractvalue %dx.types.CBufRet.f32 %8694, 3
  %8699 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %8700 = extractvalue %dx.types.CBufRet.f32 %8699, 0
  %8701 = extractvalue %dx.types.CBufRet.f32 %8699, 1
  %8702 = extractvalue %dx.types.CBufRet.f32 %8699, 2
  %8703 = extractvalue %dx.types.CBufRet.f32 %8699, 3
  %8704 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %8705 = extractvalue %dx.types.CBufRet.f32 %8704, 0
  %8706 = extractvalue %dx.types.CBufRet.f32 %8704, 1
  %8707 = extractvalue %dx.types.CBufRet.f32 %8704, 2
  %8708 = extractvalue %dx.types.CBufRet.f32 %8704, 3
  %8709 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %8710 = extractvalue %dx.types.CBufRet.f32 %8709, 0
  %8711 = extractvalue %dx.types.CBufRet.f32 %8709, 1
  %8712 = extractvalue %dx.types.CBufRet.f32 %8709, 2
  %8713 = extractvalue %dx.types.CBufRet.f32 %8709, 3
  %8714 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %8715 = extractvalue %dx.types.CBufRet.f32 %8714, 3
  %8716 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %8717 = extractvalue %dx.types.CBufRet.f32 %8716, 3
  %8718 = extractvalue %dx.types.CBufRet.f32 %8716, 0
  %8719 = extractvalue %dx.types.CBufRet.f32 %8716, 1
  %8720 = extractvalue %dx.types.CBufRet.f32 %8716, 2
  %8721 = fcmp fast olt float %8720, -5.000000e-01
  %8722 = call float @dx.op.dot3.f32(i32 55, float %8682, float %8683, float %8684, float %8682, float %8683, float %8684)  ; Dot3(ax,ay,az,bx,by,bz)
  %8723 = call float @dx.op.unary.f32(i32 25, float %8722)  ; Rsqrt(value)
  %8724 = fmul fast float %8723, %8722
  %8725 = fmul fast float %8723, %8682
  %8726 = fmul fast float %8723, %8683
  %8727 = fmul fast float %8723, %8684
  %8728 = fadd fast float %8724, %8698
  %8729 = call float @dx.op.dot3.f32(i32 55, float %8725, float %8726, float %8727, float %8695, float %8696, float %8697)  ; Dot3(ax,ay,az,bx,by,bz)
  %8730 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8731 = extractvalue %dx.types.CBufRet.i32 %8730, 1
  %8732 = and i32 %8731, 1
  %8733 = icmp ne i32 %8732, 0
  %8734 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %8735 = extractvalue %dx.types.CBufRet.f32 %8734, 2
  %8736 = fcmp fast ogt float %8735, 0.000000e+00
  %8737 = and i1 %8733, %8736
  br i1 %8737, label %8738, label %9144, !dx.controlflow.hints !128

; <label>:8738                                    ; preds = %8693
  %8739 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %8740 = extractvalue %dx.types.CBufRet.f32 %8739, 3
  %8741 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8742 = extractvalue %dx.types.CBufRet.f32 %8741, 2
  %8743 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8744 = extractvalue %dx.types.CBufRet.f32 %8743, 2
  %8745 = fsub fast float %8742, %8744
  %8746 = and i32 %8731, 2
  %8747 = extractvalue %dx.types.CBufRet.i32 %8730, 0
  %8748 = call i32 @dx.op.binary.i32(i32 40, i32 %8747, i32 3)  ; UMin(a,b)
  %8749 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %8750 = extractvalue %dx.types.CBufRet.f32 %8749, 0
  %8751 = extractvalue %dx.types.CBufRet.f32 %8749, 1
  %8752 = extractvalue %dx.types.CBufRet.f32 %8743, 0
  %8753 = extractvalue %dx.types.CBufRet.f32 %8743, 1
  %8754 = fsub fast float %8750, %8752
  %8755 = fsub fast float %8751, %8753
  %8756 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %8757 = extractvalue %dx.types.CBufRet.f32 %8756, 0
  %8758 = fcmp fast ogt float %8757, 0.000000e+00
  %8759 = fsub fast float -0.000000e+00, %8754
  %8760 = fsub fast float -0.000000e+00, %8755
  %8761 = call float @dx.op.dot2.f32(i32 54, float %8725, float %8726, float %8725, float %8726)  ; Dot2(ax,ay,bx,by)
  %8762 = call float @dx.op.dot2.f32(i32 54, float %8725, float %8726, float %8759, float %8760)  ; Dot2(ax,ay,bx,by)
  %8763 = fmul fast float %8762, 2.000000e+00
  %8764 = call float @dx.op.dot2.f32(i32 54, float %8759, float %8760, float %8759, float %8760)  ; Dot2(ax,ay,bx,by)
  %8765 = fmul fast float %8757, %8757
  %8766 = fsub fast float %8764, %8765
  %8767 = fmul fast float %8763, %8763
  %8768 = fmul fast float %8761, 4.000000e+00
  %8769 = fmul fast float %8768, %8766
  %8770 = fsub fast float %8767, %8769
  %8771 = fcmp fast ogt float %8770, 0.000000e+00
  br i1 %8771, label %8772, label %8787

; <label>:8772                                    ; preds = %8738
  %8773 = fcmp fast ogt float %8763, 0.000000e+00
  %8774 = call float @dx.op.unary.f32(i32 24, float %8770)  ; Sqrt(value)
  %8775 = fsub fast float -0.000000e+00, %8774
  %8776 = select i1 %8773, float %8774, float %8775
  %8777 = fadd fast float %8776, %8763
  %8778 = fmul float %8777, -5.000000e-01
  %8779 = fdiv fast float %8778, %8761
  %8780 = call float @dx.op.binary.f32(i32 35, float %8779, float 0.000000e+00)  ; FMax(a,b)
  %8781 = call float @dx.op.binary.f32(i32 36, float %8724, float %8780)  ; FMin(a,b)
  %8782 = fdiv fast float %8766, %8778
  %8783 = call float @dx.op.binary.f32(i32 35, float %8782, float 0.000000e+00)  ; FMax(a,b)
  %8784 = call float @dx.op.binary.f32(i32 36, float %8724, float %8783)  ; FMin(a,b)
  %8785 = call float @dx.op.binary.f32(i32 36, float %8781, float %8784)  ; FMin(a,b)
  %8786 = call float @dx.op.binary.f32(i32 35, float %8781, float %8784)  ; FMax(a,b)
  br label %8787

; <label>:8787                                    ; preds = %8772, %8738
  %8788 = phi float [ %8786, %8772 ], [ -1.000000e+00, %8738 ]
  %8789 = phi float [ %8785, %8772 ], [ -1.000000e+00, %8738 ]
  %8790 = phi i1 [ true, %8772 ], [ false, %8738 ]
  %8791 = and i1 %8758, %8790
  br i1 %8791, label %8792, label %8794

; <label>:8792                                    ; preds = %8787
  %8793 = fcmp fast oeq float %8789, %8788
  br i1 %8793, label %9097, label %8795

; <label>:8794                                    ; preds = %8787
  br i1 %8758, label %9097, label %8795

; <label>:8795                                    ; preds = %8794, %8792
  %8796 = phi float [ %8724, %8794 ], [ %8788, %8792 ]
  %8797 = phi float [ 0.000000e+00, %8794 ], [ %8789, %8792 ]
  %8798 = icmp ne i32 %8746, 0
  %8799 = fmul fast float %8796, %8727
  %8800 = fadd fast float %8799, %8740
  %8801 = fmul fast float %8800, %8796
  %8802 = select i1 %8798, float 0.000000e+00, float %8801
  %8803 = fcmp fast oeq float %8727, 0.000000e+00
  %8804 = fdiv fast float %8745, %8727
  %8805 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8804)  ; FMax(a,b)
  %8806 = select i1 %8803, float %8796, float %8805
  %8807 = call float @dx.op.binary.f32(i32 36, float %8796, float %8806)  ; FMin(a,b)
  %8808 = fcmp fast ogt float %8727, 0.000000e+00
  %8809 = fcmp fast olt float %8745, 0.000000e+00
  br i1 %8808, label %8810, label %8867

; <label>:8810                                    ; preds = %8795
  %8811 = icmp eq i32 %8746, 0
  br i1 %8809, label %8812, label %8856

; <label>:8812                                    ; preds = %8810
  %8813 = select i1 %8811, float %8796, float 0.000000e+00
  %8814 = fsub fast float -0.000000e+00, %8813
  %8815 = call float @dx.op.unary.f32(i32 6, float %8814)  ; FAbs(value)
  %8816 = fmul fast float %8813, %8727
  %8817 = fadd fast float %8816, %8740
  %8818 = fmul fast float %8815, %8817
  %8819 = fsub fast float %8802, %8818
  %8820 = fsub fast float %8796, %8815
  %8821 = select i1 %8811, float %8820, float 0.000000e+00
  %8822 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8823 = extractvalue %dx.types.CBufRet.f32 %8822, 0
  %8824 = extractvalue %dx.types.CBufRet.f32 %8822, 1
  %8825 = extractvalue %dx.types.CBufRet.f32 %8822, 2
  %8826 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8827 = extractvalue %dx.types.CBufRet.f32 %8826, 0
  %8828 = extractvalue %dx.types.CBufRet.f32 %8826, 1
  %8829 = extractvalue %dx.types.CBufRet.f32 %8826, 2
  %8830 = extractvalue %dx.types.CBufRet.f32 %8826, 3
  %8831 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8832 = extractvalue %dx.types.CBufRet.f32 %8831, 3
  %8833 = call float @dx.op.binary.f32(i32 36, float %8819, float %8832)  ; FMin(a,b)
  %8834 = fmul fast float %8830, %8821
  %8835 = call float @dx.op.unary.f32(i32 7, float %8834)  ; Saturate(value)
  %8836 = fsub fast float %8827, %8823
  %8837 = fsub fast float %8828, %8824
  %8838 = fsub fast float %8829, %8825
  %8839 = fmul fast float %8835, %8836
  %8840 = fmul fast float %8835, %8837
  %8841 = fmul fast float %8835, %8838
  %8842 = fadd fast float %8839, %8823
  %8843 = fadd fast float %8840, %8824
  %8844 = fadd fast float %8841, %8825
  %8845 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8846 = extractvalue %dx.types.CBufRet.f32 %8845, 0
  %8847 = extractvalue %dx.types.CBufRet.f32 %8845, 1
  %8848 = fadd fast float %8847, %8846
  %8849 = call float @dx.op.unary.f32(i32 7, float %8848)  ; Saturate(value)
  %8850 = extractvalue %dx.types.CBufRet.f32 %8845, 2
  %8851 = extractvalue %dx.types.CBufRet.f32 %8845, 3
  %8852 = fadd fast float %8851, %8850
  %8853 = call float @dx.op.unary.f32(i32 7, float %8852)  ; Saturate(value)
  %8854 = fmul fast float %8849, %8833
  %8855 = fmul fast float %8854, %8853
  br label %9097

; <label>:8856                                    ; preds = %8810
  br i1 %8811, label %8857, label %8878

; <label>:8857                                    ; preds = %8856
  %8858 = call float @dx.op.binary.f32(i32 36, float %8807, float %8797)  ; FMin(a,b)
  %8859 = fsub fast float %8807, %8858
  %8860 = fsub fast float %8859, %8796
  %8861 = call float @dx.op.unary.f32(i32 6, float %8860)  ; FAbs(value)
  %8862 = fadd fast float %8859, %8796
  %8863 = fmul fast float %8862, %8727
  %8864 = fadd fast float %8863, %8740
  %8865 = fmul fast float %8864, %8861
  %8866 = fsub fast float %8802, %8865
  br label %8878

; <label>:8867                                    ; preds = %8795
  br i1 %8809, label %8868, label %8878

; <label>:8868                                    ; preds = %8867
  %8869 = call float @dx.op.binary.f32(i32 35, float %8797, float %8807)  ; FMax(a,b)
  %8870 = icmp eq i32 %8746, 0
  %8871 = select i1 %8870, float %8807, float 0.000000e+00
  %8872 = fsub fast float -0.000000e+00, %8871
  %8873 = call float @dx.op.unary.f32(i32 6, float %8872)  ; FAbs(value)
  %8874 = fmul fast float %8871, %8727
  %8875 = fadd fast float %8874, %8740
  %8876 = fmul fast float %8873, %8875
  %8877 = fsub fast float %8802, %8876
  br label %8878

; <label>:8878                                    ; preds = %8868, %8867, %8857, %8856
  %8879 = phi float [ %8797, %8856 ], [ %8797, %8857 ], [ %8869, %8868 ], [ %8797, %8867 ]
  %8880 = phi float [ 0.000000e+00, %8856 ], [ %8861, %8857 ], [ %8873, %8868 ], [ 0.000000e+00, %8867 ]
  %8881 = phi float [ %8802, %8856 ], [ %8866, %8857 ], [ %8877, %8868 ], [ %8802, %8867 ]
  %8882 = phi float [ %8807, %8856 ], [ %8807, %8857 ], [ %8796, %8868 ], [ %8796, %8867 ]
  %8883 = getelementptr inbounds [3 x float], [3 x float]* %104, i32 0, i32 0
  store float -1.000000e+00, float* %8883, align 4, !tbaa !117, !noalias !129
  %8884 = getelementptr inbounds [3 x float], [3 x float]* %104, i32 0, i32 1
  store float -1.000000e+00, float* %8884, align 4, !tbaa !117, !noalias !129
  %8885 = getelementptr inbounds [3 x float], [3 x float]* %104, i32 0, i32 2
  store float -1.000000e+00, float* %8885, align 4, !tbaa !117, !noalias !129
  %8886 = getelementptr inbounds [3 x float], [3 x float]* %105, i32 0, i32 0
  store float -1.000000e+00, float* %8886, align 4, !tbaa !117, !noalias !129
  %8887 = getelementptr inbounds [3 x float], [3 x float]* %105, i32 0, i32 1
  store float -1.000000e+00, float* %8887, align 4, !tbaa !117, !noalias !129
  %8888 = getelementptr inbounds [3 x float], [3 x float]* %105, i32 0, i32 2
  store float -1.000000e+00, float* %8888, align 4, !tbaa !117, !noalias !129
  %8889 = icmp sgt i32 %8748, 0
  br i1 %8889, label %8890, label %8951

; <label>:8890                                    ; preds = %8878
  br label %8891

; <label>:8891                                    ; preds = %8940, %8890
  %8892 = phi i32 [ %8941, %8940 ], [ 0, %8890 ]
  %8893 = phi i32 [ %8942, %8940 ], [ 0, %8890 ]
  %8894 = add nuw i32 %8893, 171
  %8895 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 %8894)  ; CBufferLoadLegacy(handle,regIndex)
  %8896 = extractvalue %dx.types.CBufRet.f32 %8895, 0
  %8897 = extractvalue %dx.types.CBufRet.f32 %8895, 1
  %8898 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8899 = extractvalue %dx.types.CBufRet.f32 %8898, 0
  %8900 = extractvalue %dx.types.CBufRet.f32 %8898, 1
  %8901 = fsub fast float %8896, %8899
  %8902 = fsub fast float %8897, %8900
  %8903 = extractvalue %dx.types.CBufRet.f32 %8895, 2
  %8904 = fsub fast float -0.000000e+00, %8901
  %8905 = fsub fast float -0.000000e+00, %8902
  %8906 = call float @dx.op.dot2.f32(i32 54, float %8725, float %8726, float %8904, float %8905)  ; Dot2(ax,ay,bx,by)
  %8907 = fmul fast float %8906, 2.000000e+00
  %8908 = call float @dx.op.dot2.f32(i32 54, float %8904, float %8905, float %8904, float %8905)  ; Dot2(ax,ay,bx,by)
  %8909 = fmul fast float %8903, %8903
  %8910 = fsub fast float %8908, %8909
  %8911 = fmul fast float %8907, %8907
  %8912 = fmul fast float %8768, %8910
  %8913 = fsub fast float %8911, %8912
  %8914 = fcmp fast ogt float %8913, 0.000000e+00
  br i1 %8914, label %8915, label %8930

; <label>:8915                                    ; preds = %8891
  %8916 = fcmp fast ogt float %8907, 0.000000e+00
  %8917 = call float @dx.op.unary.f32(i32 24, float %8913)  ; Sqrt(value)
  %8918 = fsub fast float -0.000000e+00, %8917
  %8919 = select i1 %8916, float %8917, float %8918
  %8920 = fadd fast float %8919, %8907
  %8921 = fmul float %8920, -5.000000e-01
  %8922 = fdiv fast float %8921, %8761
  %8923 = call float @dx.op.binary.f32(i32 35, float %8922, float 0.000000e+00)  ; FMax(a,b)
  %8924 = call float @dx.op.binary.f32(i32 36, float %8796, float %8923)  ; FMin(a,b)
  %8925 = fdiv fast float %8910, %8921
  %8926 = call float @dx.op.binary.f32(i32 35, float %8925, float 0.000000e+00)  ; FMax(a,b)
  %8927 = call float @dx.op.binary.f32(i32 36, float %8796, float %8926)  ; FMin(a,b)
  %8928 = call float @dx.op.binary.f32(i32 36, float %8924, float %8927)  ; FMin(a,b)
  %8929 = call float @dx.op.binary.f32(i32 35, float %8924, float %8927)  ; FMax(a,b)
  br label %8930

; <label>:8930                                    ; preds = %8915, %8891
  %8931 = phi float [ %8929, %8915 ], [ -1.000000e+00, %8891 ]
  %8932 = phi float [ %8928, %8915 ], [ -1.000000e+00, %8891 ]
  %8933 = phi i1 [ true, %8915 ], [ false, %8891 ]
  br i1 %8933, label %8934, label %8940

; <label>:8934                                    ; preds = %8930
  %8935 = call float @dx.op.binary.f32(i32 35, float %8879, float %8932)  ; FMax(a,b)
  %8936 = getelementptr inbounds [3 x float], [3 x float]* %104, i32 0, i32 %8893
  store float %8935, float* %8936, align 4, !tbaa !117, !noalias !129
  %8937 = call float @dx.op.binary.f32(i32 35, float %8879, float %8931)  ; FMax(a,b)
  %8938 = getelementptr inbounds [3 x float], [3 x float]* %105, i32 0, i32 %8893
  store float %8937, float* %8938, align 4, !tbaa !117, !noalias !129
  %8939 = add nsw i32 %8892, 1
  br label %8940

; <label>:8940                                    ; preds = %8934, %8930
  %8941 = phi i32 [ %8939, %8934 ], [ %8892, %8930 ]
  %8942 = add nuw nsw i32 %8893, 1
  %8943 = icmp eq i32 %8942, %8748
  br i1 %8943, label %8944, label %8891

; <label>:8944                                    ; preds = %8940
  %8945 = load float, float* %8885, align 4, !tbaa !117, !alias.scope !145, !noalias !148
  %8946 = load float, float* %8884, align 4, !tbaa !117, !alias.scope !151, !noalias !152
  %8947 = load float, float* %8883, align 4, !tbaa !117, !alias.scope !153, !noalias !154
  %8948 = load float, float* %8888, align 4, !tbaa !117, !alias.scope !155, !noalias !158
  %8949 = load float, float* %8887, align 4, !tbaa !117, !alias.scope !161, !noalias !162
  %8950 = load float, float* %8886, align 4, !tbaa !117, !alias.scope !163, !noalias !164
  br label %8951

; <label>:8951                                    ; preds = %8944, %8878
  %8952 = phi float [ -1.000000e+00, %8878 ], [ %8950, %8944 ]
  %8953 = phi float [ -1.000000e+00, %8878 ], [ %8949, %8944 ]
  %8954 = phi float [ -1.000000e+00, %8878 ], [ %8948, %8944 ]
  %8955 = phi float [ -1.000000e+00, %8878 ], [ %8947, %8944 ]
  %8956 = phi float [ -1.000000e+00, %8878 ], [ %8946, %8944 ]
  %8957 = phi float [ -1.000000e+00, %8878 ], [ %8945, %8944 ]
  %8958 = phi i32 [ 0, %8878 ], [ %8941, %8944 ]
  %8959 = call float @dx.op.binary.f32(i32 36, float %8956, float %8957)  ; FMin(a,b)
  %8960 = call float @dx.op.binary.f32(i32 36, float %8955, float %8959)  ; FMin(a,b)
  %8961 = call float @dx.op.binary.f32(i32 35, float %8955, float %8956)  ; FMax(a,b)
  %8962 = call float @dx.op.binary.f32(i32 36, float %8961, float %8957)  ; FMin(a,b)
  %8963 = call float @dx.op.binary.f32(i32 36, float %8955, float %8956)  ; FMin(a,b)
  %8964 = call float @dx.op.binary.f32(i32 35, float %8963, float %8962)  ; FMax(a,b)
  %8965 = call float @dx.op.binary.f32(i32 35, float %8956, float %8957)  ; FMax(a,b)
  %8966 = call float @dx.op.binary.f32(i32 35, float %8955, float %8965)  ; FMax(a,b)
  store float %8960, float* %8883, align 4, !tbaa !117, !alias.scope !153, !noalias !154
  store float %8964, float* %8884, align 4, !tbaa !117, !alias.scope !151, !noalias !152
  store float %8966, float* %8885, align 4, !tbaa !117, !alias.scope !145, !noalias !148
  %8967 = call float @dx.op.binary.f32(i32 36, float %8953, float %8954)  ; FMin(a,b)
  %8968 = call float @dx.op.binary.f32(i32 36, float %8952, float %8967)  ; FMin(a,b)
  %8969 = call float @dx.op.binary.f32(i32 35, float %8952, float %8953)  ; FMax(a,b)
  %8970 = call float @dx.op.binary.f32(i32 36, float %8969, float %8954)  ; FMin(a,b)
  %8971 = call float @dx.op.binary.f32(i32 36, float %8952, float %8953)  ; FMin(a,b)
  %8972 = call float @dx.op.binary.f32(i32 35, float %8971, float %8970)  ; FMax(a,b)
  %8973 = call float @dx.op.binary.f32(i32 35, float %8953, float %8954)  ; FMax(a,b)
  %8974 = call float @dx.op.binary.f32(i32 35, float %8952, float %8973)  ; FMax(a,b)
  store float %8968, float* %8886, align 4, !tbaa !117, !alias.scope !163, !noalias !164
  store float %8972, float* %8887, align 4, !tbaa !117, !alias.scope !161, !noalias !162
  store float %8974, float* %8888, align 4, !tbaa !117, !alias.scope !155, !noalias !158
  %8975 = sub nsw i32 3, %8958
  %8976 = icmp sgt i32 %8975, 2
  br i1 %8976, label %8977, label %9015

; <label>:8977                                    ; preds = %8951
  %8978 = icmp eq i32 %8746, 0
  %8979 = fsub fast float %8796, %8880
  %8980 = select i1 %8978, float %8979, float %8880
  %8981 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8982 = extractvalue %dx.types.CBufRet.f32 %8981, 0
  %8983 = extractvalue %dx.types.CBufRet.f32 %8981, 1
  %8984 = extractvalue %dx.types.CBufRet.f32 %8981, 2
  %8985 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8986 = extractvalue %dx.types.CBufRet.f32 %8985, 0
  %8987 = extractvalue %dx.types.CBufRet.f32 %8985, 1
  %8988 = extractvalue %dx.types.CBufRet.f32 %8985, 2
  %8989 = extractvalue %dx.types.CBufRet.f32 %8985, 3
  %8990 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8991 = extractvalue %dx.types.CBufRet.f32 %8990, 3
  %8992 = call float @dx.op.binary.f32(i32 36, float %8881, float %8991)  ; FMin(a,b)
  %8993 = fmul fast float %8989, %8980
  %8994 = call float @dx.op.unary.f32(i32 7, float %8993)  ; Saturate(value)
  %8995 = fsub fast float %8986, %8982
  %8996 = fsub fast float %8987, %8983
  %8997 = fsub fast float %8988, %8984
  %8998 = fmul fast float %8994, %8995
  %8999 = fmul fast float %8994, %8996
  %9000 = fmul fast float %8994, %8997
  %9001 = fadd fast float %8998, %8982
  %9002 = fadd fast float %8999, %8983
  %9003 = fadd fast float %9000, %8984
  %9004 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %9005 = extractvalue %dx.types.CBufRet.f32 %9004, 0
  %9006 = extractvalue %dx.types.CBufRet.f32 %9004, 1
  %9007 = fadd fast float %9006, %9005
  %9008 = call float @dx.op.unary.f32(i32 7, float %9007)  ; Saturate(value)
  %9009 = extractvalue %dx.types.CBufRet.f32 %9004, 2
  %9010 = extractvalue %dx.types.CBufRet.f32 %9004, 3
  %9011 = fadd fast float %9010, %9009
  %9012 = call float @dx.op.unary.f32(i32 7, float %9011)  ; Saturate(value)
  %9013 = fmul fast float %9008, %8992
  %9014 = fmul fast float %9013, %9012
  br label %9097

; <label>:9015                                    ; preds = %8951
  %9016 = getelementptr inbounds [3 x float], [3 x float]* %104, i32 0, i32 %8975
  %9017 = load float, float* %9016, align 4, !tbaa !117, !noalias !129
  %9018 = fcmp fast olt float %9017, %8882
  %9019 = icmp sgt i32 %8958, 0
  %9020 = and i1 %9019, %9018
  br i1 %9020, label %9021, label %9058

; <label>:9021                                    ; preds = %9015
  br label %9022

; <label>:9022                                    ; preds = %9051, %9021
  %9023 = phi float [ %9052, %9051 ], [ %8880, %9021 ]
  %9024 = phi float [ %9053, %9051 ], [ %8881, %9021 ]
  %9025 = phi float [ %9033, %9051 ], [ %9017, %9021 ]
  %9026 = phi i32 [ %9030, %9051 ], [ %8975, %9021 ]
  %9027 = getelementptr inbounds [3 x float], [3 x float]* %105, i32 0, i32 %9026
  %9028 = load float, float* %9027, align 4, !tbaa !117, !noalias !129
  %9029 = icmp slt i32 %9026, 2
  %9030 = add nsw i32 %9026, 1
  %9031 = getelementptr inbounds [3 x float], [3 x float]* %104, i32 0, i32 %9030
  %9032 = load float, float* %9031, align 4, !tbaa !117, !noalias !129
  %9033 = select i1 %9029, float %9032, float %8796
  %9034 = call float @dx.op.binary.f32(i32 36, float %9033, float %9028)  ; FMin(a,b)
  %9035 = call float @dx.op.binary.f32(i32 36, float %8882, float %9034)  ; FMin(a,b)
  %9036 = icmp eq i32 %8746, 0
  %9037 = fadd fast float %9035, %9025
  %9038 = fmul fast float %9037, %8727
  %9039 = fadd fast float %9038, %8740
  br i1 %9036, label %9045, label %9040

; <label>:9040                                    ; preds = %9022
  %9041 = fsub fast float %9035, %9025
  %9042 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %9041)  ; FMax(a,b)
  %9043 = fmul fast float %9042, %9039
  %9044 = fadd fast float %9043, %9024
  br label %9051

; <label>:9045                                    ; preds = %9022
  %9046 = fsub fast float %9025, %9035
  %9047 = call float @dx.op.unary.f32(i32 6, float %9046)  ; FAbs(value)
  %9048 = fadd fast float %9047, %9023
  %9049 = fmul fast float %9047, %9039
  %9050 = fsub fast float %9024, %9049
  br label %9051

; <label>:9051                                    ; preds = %9045, %9040
  %9052 = phi float [ %9042, %9040 ], [ %9048, %9045 ]
  %9053 = phi float [ %9044, %9040 ], [ %9050, %9045 ]
  %9054 = fcmp fast olt float %9033, %8882
  %9055 = icmp slt i32 %9030, 3
  %9056 = and i1 %9055, %9054
  br i1 %9056, label %9022, label %9057

; <label>:9057                                    ; preds = %9051
  br label %9058

; <label>:9058                                    ; preds = %9057, %9015
  %9059 = phi float [ %8880, %9015 ], [ %9052, %9057 ]
  %9060 = phi float [ %8881, %9015 ], [ %9053, %9057 ]
  %9061 = fsub fast float %8796, %9059
  %9062 = select i1 %8798, float %9059, float %9061
  %9063 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %9064 = extractvalue %dx.types.CBufRet.f32 %9063, 0
  %9065 = extractvalue %dx.types.CBufRet.f32 %9063, 1
  %9066 = extractvalue %dx.types.CBufRet.f32 %9063, 2
  %9067 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %9068 = extractvalue %dx.types.CBufRet.f32 %9067, 0
  %9069 = extractvalue %dx.types.CBufRet.f32 %9067, 1
  %9070 = extractvalue %dx.types.CBufRet.f32 %9067, 2
  %9071 = extractvalue %dx.types.CBufRet.f32 %9067, 3
  %9072 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %9073 = extractvalue %dx.types.CBufRet.f32 %9072, 3
  %9074 = call float @dx.op.binary.f32(i32 36, float %9060, float %9073)  ; FMin(a,b)
  %9075 = fmul fast float %9071, %9062
  %9076 = call float @dx.op.unary.f32(i32 7, float %9075)  ; Saturate(value)
  %9077 = fsub fast float %9068, %9064
  %9078 = fsub fast float %9069, %9065
  %9079 = fsub fast float %9070, %9066
  %9080 = fmul fast float %9076, %9077
  %9081 = fmul fast float %9076, %9078
  %9082 = fmul fast float %9076, %9079
  %9083 = fadd fast float %9080, %9064
  %9084 = fadd fast float %9081, %9065
  %9085 = fadd fast float %9082, %9066
  %9086 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %9087 = extractvalue %dx.types.CBufRet.f32 %9086, 0
  %9088 = extractvalue %dx.types.CBufRet.f32 %9086, 1
  %9089 = fadd fast float %9088, %9087
  %9090 = call float @dx.op.unary.f32(i32 7, float %9089)  ; Saturate(value)
  %9091 = extractvalue %dx.types.CBufRet.f32 %9086, 2
  %9092 = extractvalue %dx.types.CBufRet.f32 %9086, 3
  %9093 = fadd fast float %9092, %9091
  %9094 = call float @dx.op.unary.f32(i32 7, float %9093)  ; Saturate(value)
  %9095 = fmul fast float %9090, %9074
  %9096 = fmul fast float %9095, %9094
  br label %9097

; <label>:9097                                    ; preds = %9058, %8977, %8812, %8794, %8792
  %9098 = phi float [ %8821, %8812 ], [ %8980, %8977 ], [ %9062, %9058 ], [ 0.000000e+00, %8792 ], [ 0.000000e+00, %8794 ]
  %9099 = phi float [ %8855, %8812 ], [ %9014, %8977 ], [ %9096, %9058 ], [ 0.000000e+00, %8792 ], [ 0.000000e+00, %8794 ]
  %9100 = phi float [ %8842, %8812 ], [ %9001, %8977 ], [ %9083, %9058 ], [ 0.000000e+00, %8792 ], [ 0.000000e+00, %8794 ]
  %9101 = phi float [ %8843, %8812 ], [ %9002, %8977 ], [ %9084, %9058 ], [ 0.000000e+00, %8792 ], [ 0.000000e+00, %8794 ]
  %9102 = phi float [ %8844, %8812 ], [ %9003, %8977 ], [ %9085, %9058 ], [ 0.000000e+00, %8792 ], [ 0.000000e+00, %8794 ]
  %9103 = fmul fast float %8735, %9099
  %9104 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %9105 = extractvalue %dx.types.CBufRet.f32 %9104, 2
  %9106 = fsub fast float %8742, %9105
  %9107 = fcmp fast olt float %9103, -2.000000e+01
  %9108 = call float @dx.op.unary.f32(i32 21, float %9103)  ; Exp(value)
  %9109 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %9110 = extractvalue %dx.types.CBufRet.f32 %9109, 2
  %9111 = extractvalue %dx.types.CBufRet.f32 %9109, 3
  %9112 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %9113 = extractvalue %dx.types.CBufRet.f32 %9112, 2
  %9114 = fmul fast float %9111, %9106
  %9115 = call float @dx.op.unary.f32(i32 7, float %9114)  ; Saturate(value)
  %9116 = fsub fast float 1.000000e+00, %9115
  %9117 = fmul fast float %8727, 5.000000e-01
  %9118 = fadd fast float %9117, 5.000000e-01
  %9119 = call float @dx.op.unary.f32(i32 7, float %9118)  ; Saturate(value)
  %9120 = fsub fast float 1.000000e+00, %9119
  %9121 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %9116)  ; FMax(a,b)
  %9122 = fdiv fast float %9120, %9121
  %9123 = fsub fast float %9106, %8684
  %9124 = call float @dx.op.unary.f32(i32 6, float %9123)  ; FAbs(value)
  %9125 = fmul fast float %9124, %9110
  %9126 = call float @dx.op.unary.f32(i32 7, float %9122)  ; Saturate(value)
  %9127 = fsub fast float 1.000000e+00, %9125
  %9128 = fmul fast float %9127, %9126
  %9129 = fadd fast float %9128, %9125
  %9130 = fmul fast float %9113, %9106
  %9131 = call float @dx.op.unary.f32(i32 7, float %9130)  ; Saturate(value)
  %9132 = fsub fast float 1.000000e+00, %9129
  %9133 = fmul fast float %9132, %9131
  %9134 = fadd fast float %9133, %9129
  %9135 = call float @dx.op.unary.f32(i32 7, float %9134)  ; Saturate(value)
  %9136 = fadd fast float %9108, -1.000000e+00
  %9137 = select i1 %9107, float -1.000000e+00, float %9136
  %9138 = fmul fast float %9135, %9137
  %9139 = fadd fast float %9138, 1.000000e+00
  %9140 = fsub fast float -0.000000e+00, %9138
  %9141 = fmul fast float %9100, %9140
  %9142 = fmul fast float %9101, %9140
  %9143 = fmul fast float %9102, %9140
  br label %9144

; <label>:9144                                    ; preds = %9097, %8693
  %9145 = phi float [ %9098, %9097 ], [ 0.000000e+00, %8693 ]
  %9146 = phi float [ %9139, %9097 ], [ 1.000000e+00, %8693 ]
  %9147 = phi float [ %9141, %9097 ], [ 0.000000e+00, %8693 ]
  %9148 = phi float [ %9142, %9097 ], [ 0.000000e+00, %8693 ]
  %9149 = phi float [ %9143, %9097 ], [ 0.000000e+00, %8693 ]
  %9150 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %9151 = extractvalue %dx.types.CBufRet.f32 %9150, 1
  %9152 = fsub fast float 1.000000e+00, %9146
  %9153 = fmul fast float %9152, %8728
  %9154 = fmul fast float %9153, %9151
  %9155 = fsub fast float %8728, %9154
  br i1 %8721, label %9156, label %9185, !dx.controlflow.hints !165

; <label>:9156                                    ; preds = %9144
  %9157 = fmul fast float %8729, %8718
  %9158 = fadd fast float %9157, %8719
  %9159 = call float @dx.op.unary.f32(i32 7, float %9158)  ; Saturate(value)
  %9160 = fmul fast float %8700, %9155
  %9161 = fsub fast float -0.000000e+00, %9160
  %9162 = fmul fast float %8701, %9155
  %9163 = fsub fast float -0.000000e+00, %9162
  %9164 = call float @dx.op.unary.f32(i32 21, float %9161)  ; Exp(value)
  %9165 = call float @dx.op.unary.f32(i32 21, float %9163)  ; Exp(value)
  %9166 = call float @dx.op.binary.f32(i32 35, float %8708, float %9164)  ; FMax(a,b)
  %9167 = call float @dx.op.binary.f32(i32 35, float %8708, float %9165)  ; FMax(a,b)
  %9168 = fsub fast float %9167, %9166
  %9169 = fmul fast float %9168, %9159
  %9170 = fadd fast float %9169, %9166
  %9171 = call float @dx.op.unary.f32(i32 7, float %9170)  ; Saturate(value)
  %9172 = fsub fast float %8705, %8710
  %9173 = fsub fast float %8706, %8711
  %9174 = fsub fast float %8707, %8712
  %9175 = fmul fast float %9159, %9172
  %9176 = fmul fast float %9159, %9173
  %9177 = fmul fast float %9159, %9174
  %9178 = fadd fast float %9175, %8710
  %9179 = fadd fast float %9176, %8711
  %9180 = fadd fast float %9177, %8712
  %9181 = fsub fast float 1.000000e+00, %9171
  %9182 = fmul fast float %9181, %9178
  %9183 = fmul fast float %9181, %9179
  %9184 = fmul fast float %9181, %9180
  br label %9244

; <label>:9185                                    ; preds = %9144
  %9186 = fmul fast float %9155, %8717
  %9187 = call float @dx.op.unary.f32(i32 7, float %9186)  ; Saturate(value)
  %9188 = fsub fast float 2.000000e+00, %9187
  %9189 = fmul fast float %9187, 9.921875e-01
  %9190 = fmul fast float %9189, %9188
  %9191 = fadd fast float %9190, 3.906250e-03
  %9192 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %46, float %9191, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9193 = extractvalue %dx.types.ResRet.f32 %9192, 0
  %9194 = fsub fast float %9187, %9193
  %9195 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %9194)  ; FMax(a,b)
  %9196 = fmul fast float %8703, %8684
  %9197 = call float @dx.op.unary.f32(i32 6, float %9196)  ; FAbs(value)
  %9198 = fcmp fast ogt float %9197, 0x3EB0C6F7A0000000
  br i1 %9198, label %9199, label %9205, !dx.controlflow.hints !166

; <label>:9199                                    ; preds = %9185
  %9200 = fmul fast float %9196, 0xBFF7154760000000
  %9201 = call float @dx.op.unary.f32(i32 21, float %9200)  ; Exp(value)
  %9202 = fsub fast float 1.000000e+00, %9201
  %9203 = fdiv fast float %9202, %9196
  %9204 = fmul fast float %9203, %8713
  br label %9205

; <label>:9205                                    ; preds = %9199, %9185
  %9206 = phi float [ %9204, %9199 ], [ %8713, %9185 ]
  %9207 = fadd fast float %9206, %8715
  %9208 = fmul fast float %9207, %9195
  %9209 = fmul fast float %8700, %9208
  %9210 = fsub fast float -0.000000e+00, %9209
  %9211 = fmul fast float %8701, %9208
  %9212 = fsub fast float -0.000000e+00, %9211
  %9213 = fmul fast float %8702, %9208
  %9214 = fsub fast float -0.000000e+00, %9213
  %9215 = call float @dx.op.unary.f32(i32 21, float %9210)  ; Exp(value)
  %9216 = call float @dx.op.unary.f32(i32 21, float %9212)  ; Exp(value)
  %9217 = call float @dx.op.unary.f32(i32 21, float %9214)  ; Exp(value)
  %9218 = fmul fast float %8729, %8729
  %9219 = fadd fast float %9218, 1.000000e+00
  %9220 = fmul fast float %9219, 0x3FAE8EC8A0000000
  %9221 = fmul fast float %9220, %8710
  %9222 = fmul fast float %9220, %8711
  %9223 = fmul fast float %9220, %8712
  %9224 = fmul fast float %8729, %8708
  %9225 = fsub fast float 1.000000e+00, %9224
  %9226 = fmul fast float %8708, %8708
  %9227 = fsub fast float 1.000000e+00, %9226
  %9228 = fmul fast float %9227, 0x3FB45F3060000000
  %9229 = fmul fast float %9225, %9225
  %9230 = fdiv fast float 1.000000e+00, %9229
  %9231 = fmul fast float %9228, %9230
  %9232 = fmul fast float %9231, %8705
  %9233 = fmul fast float %9231, %8706
  %9234 = fmul fast float %9231, %8707
  %9235 = fadd fast float %9232, %9221
  %9236 = fadd fast float %9233, %9222
  %9237 = fadd fast float %9234, %9223
  %9238 = fsub fast float 1.000000e+00, %9215
  %9239 = fsub fast float 1.000000e+00, %9216
  %9240 = fsub fast float 1.000000e+00, %9217
  %9241 = fmul fast float %9235, %9238
  %9242 = fmul fast float %9236, %9239
  %9243 = fmul fast float %9237, %9240
  br label %9244

; <label>:9244                                    ; preds = %9205, %9156
  %9245 = phi float [ %9182, %9156 ], [ %9241, %9205 ]
  %9246 = phi float [ %9183, %9156 ], [ %9242, %9205 ]
  %9247 = phi float [ %9184, %9156 ], [ %9243, %9205 ]
  %9248 = phi float [ %9171, %9156 ], [ %9215, %9205 ]
  %9249 = phi float [ %9171, %9156 ], [ %9216, %9205 ]
  %9250 = phi float [ %9171, %9156 ], [ %9217, %9205 ]
  br i1 %8737, label %9251, label %9449, !dx.controlflow.hints !167

; <label>:9251                                    ; preds = %9244
  %9252 = extractvalue %dx.types.CBufRet.f32 %9150, 0
  %9253 = fmul fast float %9252, %9152
  %9254 = fsub fast float %9147, %9245
  %9255 = fsub fast float %9148, %9246
  %9256 = fsub fast float %9149, %9247
  %9257 = fmul fast float %9253, %9254
  %9258 = fmul fast float %9253, %9255
  %9259 = fmul fast float %9253, %9256
  %9260 = fadd fast float %9257, %9245
  %9261 = fadd fast float %9258, %9246
  %9262 = fadd fast float %9259, %9247
  %9263 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9248)  ; FMax(a,b)
  %9264 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9249)  ; FMax(a,b)
  %9265 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9250)  ; FMax(a,b)
  %9266 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9146)  ; FMax(a,b)
  %9267 = call float @dx.op.binary.f32(i32 35, float %9145, float %9155)  ; FMax(a,b)
  %9268 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %9267)  ; FMax(a,b)
  %9269 = fdiv fast float %9145, %9268
  %9270 = call float @dx.op.unary.f32(i32 7, float %9269)  ; Saturate(value)
  %9271 = fdiv fast float %9155, %9268
  %9272 = call float @dx.op.unary.f32(i32 7, float %9271)  ; Saturate(value)
  %9273 = fcmp fast une float %9266, 1.000000e+00
  br i1 %9273, label %9274, label %9287, !dx.controlflow.hints !168

; <label>:9274                                    ; preds = %9251
  %9275 = call float @dx.op.unary.f32(i32 23, float %9266)  ; Log(value)
  %9276 = fmul fast float %9275, 0x3FE62E4300000000
  %9277 = fmul fast float %9147, %9276
  %9278 = fsub fast float -0.000000e+00, %9277
  %9279 = fmul fast float %9148, %9276
  %9280 = fsub fast float -0.000000e+00, %9279
  %9281 = fmul fast float %9149, %9276
  %9282 = fsub fast float -0.000000e+00, %9281
  %9283 = fsub fast float 1.000000e+00, %9266
  %9284 = fdiv fast float %9278, %9283
  %9285 = fdiv fast float %9280, %9283
  %9286 = fdiv fast float %9282, %9283
  br label %9287

; <label>:9287                                    ; preds = %9274, %9251
  %9288 = phi float [ %9284, %9274 ], [ %9147, %9251 ]
  %9289 = phi float [ %9285, %9274 ], [ %9148, %9251 ]
  %9290 = phi float [ %9286, %9274 ], [ %9149, %9251 ]
  %9291 = phi float [ %9276, %9274 ], [ 0.000000e+00, %9251 ]
  %9292 = fcmp fast une float %9263, 1.000000e+00
  br i1 %9292, label %9293, label %9300, !dx.controlflow.hints !169

; <label>:9293                                    ; preds = %9287
  %9294 = call float @dx.op.unary.f32(i32 23, float %9263)  ; Log(value)
  %9295 = fmul fast float %9294, 0x3FE62E4300000000
  %9296 = fmul fast float %9260, %9295
  %9297 = fsub fast float -0.000000e+00, %9296
  %9298 = fsub fast float 1.000000e+00, %9263
  %9299 = fdiv fast float %9297, %9298
  br label %9300

; <label>:9300                                    ; preds = %9293, %9287
  %9301 = phi float [ %9299, %9293 ], [ %9260, %9287 ]
  %9302 = phi float [ %9295, %9293 ], [ 0.000000e+00, %9287 ]
  %9303 = fcmp fast une float %9264, 1.000000e+00
  br i1 %9303, label %9304, label %9311, !dx.controlflow.hints !169

; <label>:9304                                    ; preds = %9300
  %9305 = call float @dx.op.unary.f32(i32 23, float %9264)  ; Log(value)
  %9306 = fmul fast float %9305, 0x3FE62E4300000000
  %9307 = fmul fast float %9261, %9306
  %9308 = fsub fast float -0.000000e+00, %9307
  %9309 = fsub fast float 1.000000e+00, %9264
  %9310 = fdiv fast float %9308, %9309
  br label %9311

; <label>:9311                                    ; preds = %9304, %9300
  %9312 = phi float [ %9310, %9304 ], [ %9261, %9300 ]
  %9313 = phi float [ %9306, %9304 ], [ 0.000000e+00, %9300 ]
  %9314 = fcmp fast une float %9265, 1.000000e+00
  br i1 %9314, label %9315, label %9322, !dx.controlflow.hints !169

; <label>:9315                                    ; preds = %9311
  %9316 = call float @dx.op.unary.f32(i32 23, float %9265)  ; Log(value)
  %9317 = fmul fast float %9316, 0x3FE62E4300000000
  %9318 = fmul fast float %9262, %9317
  %9319 = fsub fast float -0.000000e+00, %9318
  %9320 = fsub fast float 1.000000e+00, %9265
  %9321 = fdiv fast float %9319, %9320
  br label %9322

; <label>:9322                                    ; preds = %9315, %9311
  %9323 = phi float [ %9321, %9315 ], [ %9262, %9311 ]
  %9324 = phi float [ %9317, %9315 ], [ 0.000000e+00, %9311 ]
  %9325 = fmul fast float %9288, %9272
  %9326 = fmul fast float %9289, %9272
  %9327 = fmul fast float %9290, %9272
  %9328 = fmul fast float %9291, %9272
  %9329 = fmul fast float %9301, %9270
  %9330 = fmul fast float %9312, %9270
  %9331 = fmul fast float %9323, %9270
  %9332 = fmul fast float %9302, %9270
  %9333 = fmul fast float %9313, %9270
  %9334 = fmul fast float %9324, %9270
  %9335 = fadd fast float %9329, %9325
  %9336 = fadd fast float %9330, %9326
  %9337 = fadd fast float %9331, %9327
  %9338 = fadd fast float %9332, %9328
  %9339 = fadd fast float %9333, %9328
  %9340 = fadd fast float %9334, %9328
  %9341 = fcmp fast une float %9338, 0.000000e+00
  br i1 %9341, label %9342, label %9349, !dx.controlflow.hints !170

; <label>:9342                                    ; preds = %9322
  %9343 = fmul fast float %9338, 0x3FF7154760000000
  %9344 = call float @dx.op.unary.f32(i32 21, float %9343)  ; Exp(value)
  %9345 = fsub fast float 1.000000e+00, %9344
  %9346 = fmul fast float %9335, %9345
  %9347 = fsub fast float -0.000000e+00, %9346
  %9348 = fdiv fast float %9347, %9338
  br label %9349

; <label>:9349                                    ; preds = %9342, %9322
  %9350 = phi float [ %9344, %9342 ], [ 1.000000e+00, %9322 ]
  %9351 = phi float [ %9348, %9342 ], [ %9335, %9322 ]
  %9352 = fcmp fast une float %9339, 0.000000e+00
  br i1 %9352, label %9353, label %9360, !dx.controlflow.hints !170

; <label>:9353                                    ; preds = %9349
  %9354 = fmul fast float %9339, 0x3FF7154760000000
  %9355 = call float @dx.op.unary.f32(i32 21, float %9354)  ; Exp(value)
  %9356 = fsub fast float 1.000000e+00, %9355
  %9357 = fmul fast float %9336, %9356
  %9358 = fsub fast float -0.000000e+00, %9357
  %9359 = fdiv fast float %9358, %9339
  br label %9360

; <label>:9360                                    ; preds = %9353, %9349
  %9361 = phi float [ %9355, %9353 ], [ 1.000000e+00, %9349 ]
  %9362 = phi float [ %9359, %9353 ], [ %9336, %9349 ]
  %9363 = fcmp fast une float %9340, 0.000000e+00
  br i1 %9363, label %9364, label %9371, !dx.controlflow.hints !170

; <label>:9364                                    ; preds = %9360
  %9365 = fmul fast float %9340, 0x3FF7154760000000
  %9366 = call float @dx.op.unary.f32(i32 21, float %9365)  ; Exp(value)
  %9367 = fsub fast float 1.000000e+00, %9366
  %9368 = fmul fast float %9337, %9367
  %9369 = fsub fast float -0.000000e+00, %9368
  %9370 = fdiv fast float %9369, %9340
  br label %9371

; <label>:9371                                    ; preds = %9364, %9360
  %9372 = phi float [ %9366, %9364 ], [ 1.000000e+00, %9360 ]
  %9373 = phi float [ %9370, %9364 ], [ %9337, %9360 ]
  %9374 = fcmp fast ogt float %9270, %9272
  br i1 %9374, label %9375, label %9395

; <label>:9375                                    ; preds = %9371
  %9376 = fsub fast float 1.000000e+00, %9272
  %9377 = fmul fast float %9288, %9376
  %9378 = fmul fast float %9289, %9376
  %9379 = fmul fast float %9290, %9376
  %9380 = fmul fast float %9291, %9376
  %9381 = fcmp fast une float %9380, 0.000000e+00
  br i1 %9381, label %9382, label %9433, !dx.controlflow.hints !171

; <label>:9382                                    ; preds = %9375
  %9383 = fmul fast float %9380, 0x3FF7154760000000
  %9384 = call float @dx.op.unary.f32(i32 21, float %9383)  ; Exp(value)
  %9385 = fsub fast float 1.000000e+00, %9384
  %9386 = fmul fast float %9377, %9385
  %9387 = fsub fast float -0.000000e+00, %9386
  %9388 = fmul fast float %9378, %9385
  %9389 = fsub fast float -0.000000e+00, %9388
  %9390 = fmul fast float %9379, %9385
  %9391 = fsub fast float -0.000000e+00, %9390
  %9392 = fdiv fast float %9387, %9380
  %9393 = fdiv fast float %9389, %9380
  %9394 = fdiv fast float %9391, %9380
  br label %9433

; <label>:9395                                    ; preds = %9371
  %9396 = fsub fast float 1.000000e+00, %9270
  %9397 = fmul fast float %9301, %9396
  %9398 = fmul fast float %9312, %9396
  %9399 = fmul fast float %9323, %9396
  %9400 = fmul fast float %9302, %9396
  %9401 = fmul fast float %9313, %9396
  %9402 = fmul fast float %9324, %9396
  %9403 = fcmp fast une float %9400, 0.000000e+00
  br i1 %9403, label %9404, label %9411, !dx.controlflow.hints !170

; <label>:9404                                    ; preds = %9395
  %9405 = fmul fast float %9400, 0x3FF7154760000000
  %9406 = call float @dx.op.unary.f32(i32 21, float %9405)  ; Exp(value)
  %9407 = fsub fast float 1.000000e+00, %9406
  %9408 = fmul fast float %9397, %9407
  %9409 = fsub fast float -0.000000e+00, %9408
  %9410 = fdiv fast float %9409, %9400
  br label %9411

; <label>:9411                                    ; preds = %9404, %9395
  %9412 = phi float [ %9410, %9404 ], [ %9397, %9395 ]
  %9413 = phi float [ %9406, %9404 ], [ 1.000000e+00, %9395 ]
  %9414 = fcmp fast une float %9401, 0.000000e+00
  br i1 %9414, label %9415, label %9422, !dx.controlflow.hints !170

; <label>:9415                                    ; preds = %9411
  %9416 = fmul fast float %9401, 0x3FF7154760000000
  %9417 = call float @dx.op.unary.f32(i32 21, float %9416)  ; Exp(value)
  %9418 = fsub fast float 1.000000e+00, %9417
  %9419 = fmul fast float %9398, %9418
  %9420 = fsub fast float -0.000000e+00, %9419
  %9421 = fdiv fast float %9420, %9401
  br label %9422

; <label>:9422                                    ; preds = %9415, %9411
  %9423 = phi float [ %9421, %9415 ], [ %9398, %9411 ]
  %9424 = phi float [ %9417, %9415 ], [ 1.000000e+00, %9411 ]
  %9425 = fcmp fast une float %9402, 0.000000e+00
  br i1 %9425, label %9426, label %9433, !dx.controlflow.hints !170

; <label>:9426                                    ; preds = %9422
  %9427 = fmul fast float %9402, 0x3FF7154760000000
  %9428 = call float @dx.op.unary.f32(i32 21, float %9427)  ; Exp(value)
  %9429 = fsub fast float 1.000000e+00, %9428
  %9430 = fmul fast float %9399, %9429
  %9431 = fsub fast float -0.000000e+00, %9430
  %9432 = fdiv fast float %9431, %9402
  br label %9433

; <label>:9433                                    ; preds = %9426, %9422, %9382, %9375
  %9434 = phi float [ %9432, %9426 ], [ %9394, %9382 ], [ %9379, %9375 ], [ %9399, %9422 ]
  %9435 = phi float [ %9423, %9426 ], [ %9393, %9382 ], [ %9378, %9375 ], [ %9423, %9422 ]
  %9436 = phi float [ %9412, %9426 ], [ %9392, %9382 ], [ %9377, %9375 ], [ %9412, %9422 ]
  %9437 = phi float [ %9428, %9426 ], [ %9384, %9382 ], [ 1.000000e+00, %9375 ], [ 1.000000e+00, %9422 ]
  %9438 = phi float [ %9424, %9426 ], [ %9384, %9382 ], [ 1.000000e+00, %9375 ], [ %9424, %9422 ]
  %9439 = phi float [ %9413, %9426 ], [ %9384, %9382 ], [ 1.000000e+00, %9375 ], [ %9413, %9422 ]
  %9440 = fmul fast float %9439, %9351
  %9441 = fmul fast float %9438, %9362
  %9442 = fmul fast float %9437, %9373
  %9443 = fadd fast float %9440, %9436
  %9444 = fadd fast float %9441, %9435
  %9445 = fadd fast float %9442, %9434
  %9446 = fmul fast float %9439, %9350
  %9447 = fmul fast float %9438, %9361
  %9448 = fmul fast float %9437, %9372
  br label %9449

; <label>:9449                                    ; preds = %9433, %9244
  %9450 = phi float [ %9448, %9433 ], [ %9250, %9244 ]
  %9451 = phi float [ %9447, %9433 ], [ %9249, %9244 ]
  %9452 = phi float [ %9446, %9433 ], [ %9248, %9244 ]
  %9453 = phi float [ %9445, %9433 ], [ %9247, %9244 ]
  %9454 = phi float [ %9444, %9433 ], [ %9246, %9244 ]
  %9455 = phi float [ %9443, %9433 ], [ %9245, %9244 ]
  %9456 = fmul fast float %9455, %8397
  %9457 = fmul fast float %9454, %8399
  %9458 = fmul fast float %9453, %8401
  %9459 = fmul fast float %9452, %8692
  %9460 = call float @dx.op.dot3.f32(i32 55, float %9452, float %9451, float %9450, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9461 = call float @dx.op.dot3.f32(i32 55, float %9456, float %9457, float %9458, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9462 = select i1 %271, float %9460, float %9452
  %9463 = select i1 %271, float %9460, float %9451
  %9464 = select i1 %271, float 1.000000e+00, float %9450
  %9465 = select i1 %271, float %9461, float %9456
  %9466 = select i1 %271, float 0.000000e+00, float %9457
  %9467 = select i1 %271, float 0.000000e+00, float %9458
  %9468 = fmul fast float %9462, %8686
  %9469 = fmul fast float %9463, %8687
  %9470 = fmul fast float %9464, %8688
  %9471 = fadd fast float %9468, %9465
  %9472 = fadd fast float %9469, %9466
  %9473 = fadd fast float %9467, %9470
  %9474 = fmul fast float %9462, %8689
  %9475 = fmul fast float %9463, %8690
  %9476 = fmul fast float %9464, %8691
  %9477 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %9478 = extractvalue %dx.types.CBufRet.i32 %9477, 0
  %9479 = icmp eq i32 %9478, 0
  br i1 %9479, label %9847, label %9480, !dx.controlflow.hints !172

; <label>:9480                                    ; preds = %9449
  %9481 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %9482 = extractvalue %dx.types.CBufRet.f32 %9481, 2
  %9483 = extractvalue %dx.types.CBufRet.f32 %9481, 3
  %9484 = fmul fast float %9482, %110
  %9485 = fmul fast float %9483, %111
  %9486 = fmul fast float %9484, 2.000000e+00
  %9487 = fmul fast float %9485, 2.000000e+00
  %9488 = fsub fast float 1.000000e+00, %9486
  %9489 = fsub fast float 1.000000e+00, %9487
  %9490 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %9491 = extractvalue %dx.types.CBufRet.f32 %9490, 0
  %9492 = extractvalue %dx.types.CBufRet.f32 %9490, 1
  %9493 = extractvalue %dx.types.CBufRet.f32 %9490, 2
  %9494 = fmul fast float %9488, %9491
  %9495 = fmul fast float %9488, %9492
  %9496 = fmul fast float %9488, %9493
  %9497 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %9498 = extractvalue %dx.types.CBufRet.f32 %9497, 0
  %9499 = extractvalue %dx.types.CBufRet.f32 %9497, 1
  %9500 = extractvalue %dx.types.CBufRet.f32 %9497, 2
  %9501 = fmul fast float %9489, %9498
  %9502 = fmul fast float %9489, %9499
  %9503 = fmul fast float %9489, %9500
  %9504 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %9505 = extractvalue %dx.types.CBufRet.f32 %9504, 0
  %9506 = extractvalue %dx.types.CBufRet.f32 %9504, 1
  %9507 = extractvalue %dx.types.CBufRet.f32 %9504, 2
  %9508 = fadd fast float %9501, %9505
  %9509 = fadd fast float %9508, %9494
  %9510 = fadd fast float %9502, %9506
  %9511 = fadd fast float %9510, %9495
  %9512 = fadd fast float %9503, %9507
  %9513 = fadd fast float %9512, %9496
  %9514 = fmul fast float %9509, %8685
  %9515 = fmul fast float %9511, %8685
  %9516 = fmul fast float %9513, %8685
  %9517 = fmul fast float %9514, %9514
  %9518 = fmul fast float %9515, %9515
  %9519 = fadd fast float %9517, %9518
  %9520 = fmul fast float %9516, %9516
  %9521 = fadd fast float %9519, %9520
  %9522 = call float @dx.op.unary.f32(i32 24, float %9521)  ; Sqrt(value)
  %9523 = extractvalue %dx.types.CBufRet.f32 %8412, 0
  %9524 = fsub fast float %9522, %9523
  %9525 = extractvalue %dx.types.CBufRet.f32 %8412, 2
  %9526 = fmul fast float %9524, %9525
  %9527 = call float @dx.op.unary.f32(i32 7, float %9526)  ; Saturate(value)
  %9528 = fadd fast float %9527, -5.000000e-01
  %9529 = fmul fast float %9528, 2.000000e+00
  %9530 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %9531 = extractvalue %dx.types.CBufRet.f32 %9530, 2
  %9532 = call float @dx.op.binary.f32(i32 36, float %9531, float %9529)  ; FMin(a,b)
  %9533 = fsub fast float -0.000000e+00, %9531
  %9534 = fcmp fast ogt float %9532, %9533
  br i1 %9534, label %9535, label %9847, !dx.controlflow.hints !173

; <label>:9535                                    ; preds = %9480
  %9536 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %9537 = extractvalue %dx.types.CBufRet.f32 %9536, 3
  %9538 = fcmp fast ogt float %9537, 0.000000e+00
  br i1 %9538, label %9539, label %9614, !dx.controlflow.hints !174

; <label>:9539                                    ; preds = %9535
  %9540 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %27, i32 0)  ; GetDimensions(handle,mipLevel)
  %9541 = extractvalue %dx.types.Dimensions %9540, 0
  %9542 = sitofp i32 %9541 to float
  %9543 = extractvalue %dx.types.Dimensions %9540, 1
  %9544 = sitofp i32 %9543 to float
  %9545 = fmul fast float %9484, %9542
  %9546 = fmul fast float %9485, %9544
  %9547 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %9548 = extractvalue %dx.types.CBufRet.f32 %9547, 1
  %9549 = fsub fast float -0.000000e+00, %9548
  %9550 = fptoui float %9549 to i32
  %9551 = fptoui float %9545 to i32
  %9552 = fptoui float %9546 to i32
  %9553 = and i32 %9550, 31
  %9554 = lshr i32 %9551, %9553
  %9555 = lshr i32 %9552, %9553
  %9556 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %27, i32 %9550, i32 %9554, i32 %9555, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %9557 = extractvalue %dx.types.ResRet.f32 %9556, 0
  %9558 = fcmp fast olt float %9557, -1.000000e+00
  %9559 = fcmp fast ogt float %9557, -1.000000e+00
  %9560 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %9561 = extractvalue %dx.types.CBufRet.f32 %9560, 1
  %9562 = select i1 %9559, float %9561, float 1.000000e+00
  %9563 = fadd fast float %9557, 1.000000e+00
  %9564 = fmul fast float %9562, %9563
  %9565 = call float @dx.op.unary.f32(i32 6, float %9564)  ; FAbs(value)
  %9566 = extractvalue %dx.types.CBufRet.f32 %9560, 3
  %9567 = fcmp fast oge float %9565, %9566
  %9568 = select i1 %9567, float 0x4197782600000000, float %9565
  %9569 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %9570 = extractvalue %dx.types.CBufRet.f32 %9569, 0
  %9571 = extractvalue %dx.types.CBufRet.f32 %9569, 1
  %9572 = extractvalue %dx.types.CBufRet.f32 %9569, 2
  %9573 = select i1 %9558, float %9570, float %9491
  %9574 = select i1 %9558, float %9571, float %9492
  %9575 = select i1 %9558, float %9572, float %9493
  %9576 = fmul fast float %9573, %9488
  %9577 = fmul fast float %9574, %9488
  %9578 = fmul fast float %9575, %9488
  %9579 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %9580 = extractvalue %dx.types.CBufRet.f32 %9579, 0
  %9581 = extractvalue %dx.types.CBufRet.f32 %9579, 1
  %9582 = extractvalue %dx.types.CBufRet.f32 %9579, 2
  %9583 = select i1 %9558, float %9580, float %9498
  %9584 = select i1 %9558, float %9581, float %9499
  %9585 = select i1 %9558, float %9582, float %9500
  %9586 = fmul fast float %9583, %9489
  %9587 = fmul fast float %9584, %9489
  %9588 = fmul fast float %9585, %9489
  %9589 = fadd fast float %9586, %9576
  %9590 = fadd fast float %9587, %9577
  %9591 = fadd fast float %9588, %9578
  %9592 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %9593 = extractvalue %dx.types.CBufRet.f32 %9592, 0
  %9594 = extractvalue %dx.types.CBufRet.f32 %9592, 1
  %9595 = extractvalue %dx.types.CBufRet.f32 %9592, 2
  %9596 = select i1 %9558, float %9593, float %9505
  %9597 = select i1 %9558, float %9594, float %9506
  %9598 = select i1 %9558, float %9595, float %9507
  %9599 = fadd fast float %9589, %9596
  %9600 = fadd fast float %9590, %9597
  %9601 = fadd fast float %9591, %9598
  %9602 = fmul fast float %9599, %9568
  %9603 = fmul fast float %9600, %9568
  %9604 = fmul fast float %9601, %9568
  %9605 = fmul fast float %9602, %9602
  %9606 = fmul fast float %9603, %9603
  %9607 = fadd fast float %9605, %9606
  %9608 = fmul fast float %9604, %9604
  %9609 = fadd fast float %9607, %9608
  %9610 = call float @dx.op.unary.f32(i32 24, float %9609)  ; Sqrt(value)
  %9611 = fsub fast float %9610, %9523
  %9612 = fmul fast float %9611, %9525
  %9613 = call float @dx.op.unary.f32(i32 7, float %9612)  ; Saturate(value)
  br label %9614

; <label>:9614                                    ; preds = %9539, %9535
  %9615 = phi float [ %9613, %9539 ], [ 1.000000e+00, %9535 ]
  %9616 = fmul fast float %9532, 5.000000e-01
  %9617 = fadd fast float %9616, 5.000000e-01
  %9618 = call float @dx.op.unary.f32(i32 22, float %9617)  ; Frc(value)
  %9619 = call float @dx.op.unary.f32(i32 27, float %9618)  ; Round_ni(value)
  %9620 = call float @dx.op.unary.f32(i32 22, float %9618)  ; Frc(value)
  %9621 = fmul fast float %9620, 2.000000e+00
  %9622 = fadd fast float %9621, -1.000000e+00
  %9623 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %46, float %9484, float %9485, float %9619, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9624 = extractvalue %dx.types.ResRet.f32 %9623, 0
  %9625 = extractvalue %dx.types.ResRet.f32 %9623, 1
  %9626 = extractvalue %dx.types.ResRet.f32 %9623, 2
  %9627 = extractvalue %dx.types.ResRet.f32 %9623, 3
  %9628 = fadd fast float %9624, -5.000000e-01
  %9629 = fadd fast float %9626, -5.000000e-01
  %9630 = fmul fast float %9628, 0xBFD5555560000000
  %9631 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %9629, float %9630)  ; FMad(a,b,c)
  %9632 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %9625, float 0.000000e+00)  ; FMad(a,b,c)
  %9633 = fadd fast float %9632, %9627
  %9634 = fmul fast float %9628, -7.500000e-01
  %9635 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %9629, float %9634)  ; FMad(a,b,c)
  %9636 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %9625, float 0.000000e+00)  ; FMad(a,b,c)
  %9637 = fadd fast float %9636, %9627
  %9638 = call float @dx.op.binary.f32(i32 35, float %9631, float -1.000000e+00)  ; FMax(a,b)
  %9639 = call float @dx.op.binary.f32(i32 35, float %9633, float -1.000000e+00)  ; FMax(a,b)
  %9640 = call float @dx.op.binary.f32(i32 35, float %9635, float -1.000000e+00)  ; FMax(a,b)
  %9641 = call float @dx.op.binary.f32(i32 35, float %9637, float -1.000000e+00)  ; FMax(a,b)
  %9642 = call float @dx.op.binary.f32(i32 36, float %9638, float 1.000000e+00)  ; FMin(a,b)
  %9643 = call float @dx.op.binary.f32(i32 36, float %9639, float 1.000000e+00)  ; FMin(a,b)
  %9644 = call float @dx.op.binary.f32(i32 36, float %9640, float 1.000000e+00)  ; FMin(a,b)
  %9645 = call float @dx.op.binary.f32(i32 36, float %9641, float 1.000000e+00)  ; FMin(a,b)
  %9646 = fcmp fast olt float %9642, 0x3FEFFF8020000000
  br i1 %9646, label %9647, label %9762, !dx.controlflow.hints !175

; <label>:9647                                    ; preds = %9614
  %9648 = extractvalue %dx.types.CBufRet.f32 %9530, 3
  %9649 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %9650 = extractvalue %dx.types.CBufRet.f32 %9649, 0
  %9651 = extractvalue %dx.types.CBufRet.f32 %9649, 1
  %9652 = extractvalue %dx.types.CBufRet.f32 %9649, 2
  %9653 = extractvalue %dx.types.CBufRet.f32 %9649, 3
  %9654 = fsub fast float %9650, %9642
  %9655 = fsub fast float %9651, %9643
  %9656 = fsub fast float %9652, %9644
  %9657 = fsub fast float %9653, %9645
  %9658 = fmul fast float %9654, %9648
  %9659 = fmul fast float %9655, %9648
  %9660 = fmul fast float %9656, %9648
  %9661 = fmul fast float %9657, %9648
  %9662 = fadd fast float %9658, %9642
  %9663 = fadd fast float %9659, %9643
  %9664 = fsub fast float -0.000000e+00, %9663
  %9665 = fadd fast float %9660, %9644
  %9666 = fadd fast float %9661, %9645
  %9667 = fmul fast float %9662, %9662
  %9668 = fsub fast float %9663, %9667
  %9669 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %9668)  ; FMax(a,b)
  %9670 = fdiv fast float 1.000000e+00, %9669
  %9671 = fmul fast float %9663, %9662
  %9672 = fsub fast float %9665, %9671
  %9673 = fsub fast float %9622, %9662
  %9674 = fmul fast float %9622, %9622
  %9675 = fsub fast float %9674, %9663
  %9676 = fmul fast float %9673, %9670
  %9677 = fmul fast float %9676, %9672
  %9678 = fsub fast float %9675, %9677
  %9679 = fmul fast float %9663, %9663
  %9680 = fsub fast float %9666, %9679
  %9681 = fmul fast float %9672, %9672
  %9682 = fmul fast float %9681, %9670
  %9683 = fsub fast float %9680, %9682
  %9684 = fdiv fast float %9678, %9683
  %9685 = fmul fast float %9672, %9684
  %9686 = fsub fast float %9673, %9685
  %9687 = fmul fast float %9686, %9670
  %9688 = fmul fast float %9687, %9662
  %9689 = fsub fast float 1.000000e+00, %9688
  %9690 = fmul fast float %9663, %9684
  %9691 = fsub fast float %9689, %9690
  %9692 = fmul fast float %9687, %9687
  %9693 = fmul fast float %9684, 4.000000e+00
  %9694 = fmul fast float %9693, %9691
  %9695 = fsub fast float %9692, %9694
  %9696 = call float @dx.op.unary.f32(i32 24, float %9695)  ; Sqrt(value)
  %9697 = fcmp fast oge float %9687, 0.000000e+00
  %9698 = fsub fast float -0.000000e+00, %9696
  %9699 = select i1 %9697, float %9698, float %9696
  %9700 = fsub fast float %9699, %9687
  %9701 = fdiv fast float %9700, %9684
  %9702 = fdiv fast float %9691, %9700
  %9703 = fmul fast float %9701, 5.000000e-01
  %9704 = fmul fast float %9702, 2.000000e+00
  %9705 = select i1 %9697, float %9703, float %9704
  %9706 = select i1 %9697, float %9704, float %9703
  %9707 = call float @dx.op.binary.f32(i32 35, float %9705, float %9706)  ; FMax(a,b)
  %9708 = call float @dx.op.binary.f32(i32 36, float %9705, float %9706)  ; FMin(a,b)
  %9709 = fcmp fast ogt float %9622, %9708
  br i1 %9709, label %9710, label %9720

; <label>:9710                                    ; preds = %9647
  %9711 = fsub fast float %9622, %9708
  %9712 = fsub fast float %9707, %9708
  %9713 = fmul fast float %9711, %9712
  %9714 = fmul fast float %9707, %9622
  %9715 = fadd fast float %9707, %9622
  %9716 = fmul fast float %9715, %9662
  %9717 = fadd fast float %9714, %9663
  %9718 = fsub fast float %9717, %9716
  %9719 = fdiv fast float %9718, %9713
  br label %9720

; <label>:9720                                    ; preds = %9710, %9647
  %9721 = phi float [ %9719, %9710 ], [ 0.000000e+00, %9647 ]
  %9722 = fcmp fast ogt float %9622, %9707
  %9723 = fsub fast float %9622, %9707
  br i1 %9722, label %9724, label %9734

; <label>:9724                                    ; preds = %9720
  %9725 = fsub fast float %9707, %9708
  %9726 = fmul fast float %9725, %9723
  %9727 = fmul fast float %9708, %9622
  %9728 = fadd fast float %9708, %9622
  %9729 = fmul fast float %9728, %9662
  %9730 = fsub fast float %9664, %9727
  %9731 = fadd fast float %9730, %9729
  %9732 = fdiv fast float %9731, %9726
  %9733 = fadd fast float %9732, %9721
  br label %9734

; <label>:9734                                    ; preds = %9724, %9720
  %9735 = phi float [ %9733, %9724 ], [ %9721, %9720 ]
  %9736 = fsub fast float %9622, %9708
  %9737 = fmul fast float %9736, %9723
  %9738 = fmul fast float %9708, %9707
  %9739 = fadd fast float %9708, %9707
  %9740 = fmul fast float %9739, %9662
  %9741 = fadd fast float %9738, %9663
  %9742 = fsub fast float %9741, %9740
  %9743 = fdiv fast float %9742, %9737
  %9744 = call float @dx.op.unary.f32(i32 7, float %9735)  ; Saturate(value)
  %9745 = fcmp fast oeq float %8413, 0.000000e+00
  %9746 = extractvalue %dx.types.CBufRet.f32 %9530, 0
  %9747 = fcmp fast oeq float %9746, 0.000000e+00
  %9748 = or i1 %9745, %9747
  %9749 = fmul fast float %9746, 2.000000e+00
  %9750 = fadd fast float %9531, %9532
  %9751 = fdiv fast float %9750, %9749
  %9752 = call float @dx.op.unary.f32(i32 7, float %9751)  ; Saturate(value)
  %9753 = fmul fast float %9752, 2.000000e+00
  %9754 = fsub fast float 3.000000e+00, %9753
  %9755 = fmul fast float %9752, %9752
  %9756 = fmul fast float %9755, %9754
  %9757 = select i1 %9748, float 1.000000e+00, float %9756
  %9758 = fmul fast float %9743, %8413
  %9759 = fadd fast float %9744, %9758
  %9760 = call float @dx.op.unary.f32(i32 7, float %9759)  ; Saturate(value)
  %9761 = fmul fast float %9757, %9760
  br label %9762

; <label>:9762                                    ; preds = %9734, %9614
  %9763 = phi float [ %9761, %9734 ], [ 0.000000e+00, %9614 ]
  %9764 = fsub fast float 1.000000e+00, %9763
  %9765 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %46, float %9484, float %9485, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9766 = extractvalue %dx.types.ResRet.f32 %9765, 0
  %9767 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %9768 = extractvalue %dx.types.CBufRet.i32 %9767, 2
  %9769 = icmp eq i32 %9768, 0
  br i1 %9769, label %9775, label %9770

; <label>:9770                                    ; preds = %9762
  %9771 = call float @dx.op.unary.f32(i32 7, float %9763)  ; Saturate(value)
  %9772 = fadd fast float %9766, -1.000000e+00
  %9773 = fmul fast float %9771, %9772
  %9774 = fadd fast float %9773, 1.000000e+00
  br label %9775

; <label>:9775                                    ; preds = %9770, %9762
  %9776 = phi float [ %9774, %9770 ], [ %9764, %9762 ]
  br i1 %9538, label %9777, label %9795

; <label>:9777                                    ; preds = %9775
  %9778 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %9779 = extractvalue %dx.types.CBufRet.f32 %9778, 1
  %9780 = fsub fast float %9615, %9779
  %9781 = call float @dx.op.unary.f32(i32 7, float %9780)  ; Saturate(value)
  %9782 = fsub fast float %9615, %9537
  %9783 = call float @dx.op.unary.f32(i32 7, float %9782)  ; Saturate(value)
  %9784 = fsub fast float %9781, %9783
  %9785 = fsub fast float %9617, %9783
  %9786 = fdiv fast float %9785, %9784
  %9787 = call float @dx.op.unary.f32(i32 7, float %9786)  ; Saturate(value)
  %9788 = fmul fast float %9787, 2.000000e+00
  %9789 = fsub fast float 3.000000e+00, %9788
  %9790 = fsub fast float %9766, %9776
  %9791 = fmul fast float %9787, %9787
  %9792 = fmul fast float %9791, %9790
  %9793 = fmul fast float %9792, %9789
  %9794 = fadd fast float %9793, %9776
  br label %9795

; <label>:9795                                    ; preds = %9777, %9775
  %9796 = phi float [ %9794, %9777 ], [ %9776, %9775 ]
  %9797 = call float @dx.op.binary.f32(i32 35, float %9766, float %9796)  ; FMax(a,b)
  %9798 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %9799 = extractvalue %dx.types.CBufRet.i32 %9798, 2
  %9800 = and i32 %9799, 1
  %9801 = icmp eq i32 %9800, 0
  %9802 = fcmp fast une float %9797, 1.000000e+00
  %9803 = and i1 %9802, %9801
  br i1 %9803, label %9804, label %9823

; <label>:9804                                    ; preds = %9795
  %9805 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %46, float %9484, float %9485, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9806 = extractvalue %dx.types.ResRet.f32 %9805, 0
  %9807 = extractvalue %dx.types.ResRet.f32 %9805, 1
  %9808 = extractvalue %dx.types.ResRet.f32 %9805, 2
  %9809 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9810 = extractvalue %dx.types.CBufRet.f32 %9809, 1
  %9811 = fmul fast float %9810, %9806
  %9812 = fmul fast float %9810, %9807
  %9813 = fmul fast float %9810, %9808
  %9814 = fcmp fast ogt float %9766, 0x3FEFFF2E40000000
  %9815 = fsub fast float 1.000000e+00, %9797
  %9816 = fsub fast float 1.000000e+00, %9766
  %9817 = fdiv fast float %9815, %9816
  %9818 = call float @dx.op.unary.f32(i32 7, float %9817)  ; Saturate(value)
  %9819 = select i1 %9814, float 0.000000e+00, float %9818
  %9820 = fmul fast float %9811, %9819
  %9821 = fmul fast float %9812, %9819
  %9822 = fmul fast float %9813, %9819
  br label %9823

; <label>:9823                                    ; preds = %9804, %9795
  %9824 = phi float [ 0.000000e+00, %9795 ], [ %9820, %9804 ]
  %9825 = phi float [ 0.000000e+00, %9795 ], [ %9821, %9804 ]
  %9826 = phi float [ 0.000000e+00, %9795 ], [ %9822, %9804 ]
  %9827 = fmul fast float %9824, %8397
  %9828 = fmul fast float %9825, %8399
  %9829 = fmul fast float %9826, %8401
  %9830 = fmul fast float %9797, %9459
  %9831 = call float @dx.op.dot3.f32(i32 55, float %9797, float %9797, float %9797, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9832 = call float @dx.op.dot3.f32(i32 55, float %9827, float %9828, float %9829, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9833 = select i1 %271, float %9831, float %9797
  %9834 = select i1 %271, float 1.000000e+00, float %9797
  %9835 = select i1 %271, float %9832, float %9827
  %9836 = select i1 %271, float 0.000000e+00, float %9828
  %9837 = select i1 %271, float 0.000000e+00, float %9829
  %9838 = fmul fast float %9833, %9471
  %9839 = fmul fast float %9833, %9472
  %9840 = fmul fast float %9834, %9473
  %9841 = fadd fast float %9838, %9835
  %9842 = fadd fast float %9839, %9836
  %9843 = fadd fast float %9837, %9840
  %9844 = fmul fast float %9833, %9474
  %9845 = fmul fast float %9833, %9475
  %9846 = fmul fast float %9834, %9476
  br label %9847

; <label>:9847                                    ; preds = %9823, %9480, %9449, %8681
  %9848 = phi float [ %8686, %8681 ], [ %9471, %9449 ], [ %9841, %9823 ], [ %9471, %9480 ]
  %9849 = phi float [ %8687, %8681 ], [ %9472, %9449 ], [ %9842, %9823 ], [ %9472, %9480 ]
  %9850 = phi float [ %8688, %8681 ], [ %9473, %9449 ], [ %9843, %9823 ], [ %9473, %9480 ]
  %9851 = phi float [ %8689, %8681 ], [ %9474, %9449 ], [ %9844, %9823 ], [ %9474, %9480 ]
  %9852 = phi float [ %8690, %8681 ], [ %9475, %9449 ], [ %9845, %9823 ], [ %9475, %9480 ]
  %9853 = phi float [ %8691, %8681 ], [ %9476, %9449 ], [ %9846, %9823 ], [ %9476, %9480 ]
  %9854 = phi float [ %8692, %8681 ], [ %9459, %9449 ], [ %9830, %9823 ], [ %9459, %9480 ]
  %9855 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %9856 = extractvalue %dx.types.CBufRet.f32 %9855, 2
  %9857 = extractvalue %dx.types.CBufRet.f32 %9855, 3
  %9858 = fmul fast float %9856, %110
  %9859 = fmul fast float %9857, %111
  %9860 = call float @dx.op.unary.f32(i32 7, float %9858)  ; Saturate(value)
  %9861 = call float @dx.op.unary.f32(i32 7, float %9859)  ; Saturate(value)
  %9862 = select i1 %8423, i32 2, i32 0
  %9863 = or i32 %9862, 1
  %9864 = uitofp i32 %9863 to float
  %9865 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %46, float %9860, float %9861, float %9864, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9866 = extractvalue %dx.types.ResRet.f32 %9865, 0
  %9867 = extractvalue %dx.types.ResRet.f32 %9865, 1
  %9868 = extractvalue %dx.types.ResRet.f32 %9865, 2
  %9869 = extractvalue %dx.types.ResRet.f32 %9865, 3
  %9870 = add nuw nsw i32 %9862, 2
  %9871 = uitofp i32 %9870 to float
  %9872 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %46, float %9860, float %9861, float %9871, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9873 = extractvalue %dx.types.ResRet.f32 %9872, 0
  %9874 = extractvalue %dx.types.ResRet.f32 %9872, 1
  %9875 = extractvalue %dx.types.ResRet.f32 %9872, 2
  %9876 = extractvalue %dx.types.ResRet.f32 %9872, 3
  %9877 = call float @dx.op.binary.f32(i32 35, float %9867, float %9868)  ; FMax(a,b)
  %9878 = call float @dx.op.binary.f32(i32 35, float %9866, float %9877)  ; FMax(a,b)
  %9879 = call float @dx.op.binary.f32(i32 35, float %9878, float %9869)  ; FMax(a,b)
  %9880 = call float @dx.op.binary.f32(i32 36, float %9874, float %9875)  ; FMin(a,b)
  %9881 = call float @dx.op.binary.f32(i32 36, float %9873, float %9880)  ; FMin(a,b)
  %9882 = call float @dx.op.binary.f32(i32 36, float %9881, float %9876)  ; FMin(a,b)
  %9883 = fmul fast float %9879, 2.550000e+02
  %9884 = fadd fast float %9883, 0x3F70101020000000
  %9885 = fptoui float %9884 to i32
  %9886 = fmul fast float %9882, 2.550000e+02
  %9887 = fadd fast float %9886, 0x3F70101020000000
  %9888 = fptoui float %9887 to i32
  %9889 = icmp ult i32 %9885, %9888
  br i1 %9889, label %9890, label %10059

; <label>:9890                                    ; preds = %9847
  %9891 = fcmp fast ogt float %96, 9.843750e-01
  %9892 = fadd fast float %8685, -4.000000e+00
  %9893 = select i1 %9891, float -4.000000e+00, float %9892
  %9894 = call float @dx.op.binary.f32(i32 35, float %9893, float 0.000000e+00)  ; FMax(a,b)
  %9895 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %9896 = extractvalue %dx.types.CBufRet.f32 %9895, 0
  %9897 = fadd fast float %9896, %9894
  %9898 = extractvalue %dx.types.CBufRet.f32 %9895, 2
  %9899 = fmul fast float %9897, %9898
  %9900 = call float @dx.op.unary.f32(i32 23, float %9899)  ; Log(value)
  %9901 = extractvalue %dx.types.CBufRet.f32 %9895, 3
  %9902 = fmul fast float %9901, %9900
  %9903 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %9904 = extractvalue %dx.types.CBufRet.f32 %9903, 2
  %9905 = fmul fast float %9902, %9904
  %9906 = call float @dx.op.unary.f32(i32 7, float %9905)  ; Saturate(value)
  %9907 = uitofp i32 %9885 to float
  %9908 = uitofp i32 %9888 to float
  %9909 = fadd fast float %9907, 5.000000e-01
  %9910 = fadd fast float %9908, 5.000000e-01
  %9911 = fmul fast float %9904, %9909
  %9912 = fmul fast float %9904, %9910
  %9913 = fadd fast float %9911, 0x3F0FFB4800000000
  %9914 = fadd fast float %9912, 0xBF0FFB4800000000
  %9915 = call float @dx.op.binary.f32(i32 35, float %9906, float %9913)  ; FMax(a,b)
  %9916 = call float @dx.op.binary.f32(i32 36, float %9915, float %9914)  ; FMin(a,b)
  %9917 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %9918 = extractvalue %dx.types.CBufRet.f32 %9917, 1
  %9919 = extractvalue %dx.types.CBufRet.f32 %9917, 2
  %9920 = extractvalue %dx.types.CBufRet.f32 %9917, 0
  %9921 = select i1 %8423, float %9920, float 0.000000e+00
  %9922 = fmul fast float %9918, %9916
  %9923 = fadd fast float %9921, %9922
  %9924 = fadd fast float %9921, %9919
  %9925 = fsub fast float %9918, %9919
  %9926 = fadd fast float %9925, %9921
  %9927 = call float @dx.op.binary.f32(i32 35, float %9923, float %9924)  ; FMax(a,b)
  %9928 = call float @dx.op.binary.f32(i32 36, float %9927, float %9926)  ; FMin(a,b)
  %9929 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %44, float %9860, float %9861, float %9928, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9930 = extractvalue %dx.types.ResRet.f32 %9929, 0
  %9931 = extractvalue %dx.types.ResRet.f32 %9929, 1
  %9932 = extractvalue %dx.types.ResRet.f32 %9929, 2
  %9933 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %9934 = extractvalue %dx.types.CBufRet.i32 %9933, 0
  %9935 = extractvalue %dx.types.CBufRet.i32 %9933, 1
  %9936 = uitofp i32 %9934 to float
  %9937 = uitofp i32 %9935 to float
  %9938 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %9939 = extractvalue %dx.types.CBufRet.f32 %9938, 0
  %9940 = extractvalue %dx.types.CBufRet.f32 %9938, 1
  %9941 = fmul fast float %9936, %9860
  %9942 = fmul fast float %9937, %9861
  %9943 = fadd fast float %9941, -5.000000e-01
  %9944 = fadd fast float %9942, -5.000000e-01
  %9945 = call float @dx.op.unary.f32(i32 22, float %9943)  ; Frc(value)
  %9946 = call float @dx.op.unary.f32(i32 22, float %9944)  ; Frc(value)
  %9947 = fmul fast float %9945, %9945
  %9948 = fmul fast float %9947, %9945
  %9949 = fsub fast float 3.000000e+00, %9945
  %9950 = fmul fast float %9947, %9949
  %9951 = fmul fast float %9945, 3.000000e+00
  %9952 = fmul fast float %9948, 3.000000e+00
  %9953 = fmul fast float %9947, 6.000000e+00
  %9954 = fsub fast float %9952, %9953
  %9955 = fadd fast float %9954, 4.000000e+00
  %9956 = fmul fast float %9955, 0x3FC5555560000000
  %9957 = fmul fast float %9948, -3.000000e+00
  %9958 = fadd fast float %9947, %9945
  %9959 = fmul fast float %9958, 3.000000e+00
  %9960 = fadd fast float %9957, 1.000000e+00
  %9961 = fadd fast float %9960, %9959
  %9962 = fmul fast float %9948, 0x3FC5555560000000
  %9963 = fmul fast float %9946, %9946
  %9964 = fmul fast float %9963, %9946
  %9965 = fsub fast float 3.000000e+00, %9946
  %9966 = fmul fast float %9963, %9965
  %9967 = fmul fast float %9946, 3.000000e+00
  %9968 = fmul fast float %9964, 3.000000e+00
  %9969 = fmul fast float %9963, 6.000000e+00
  %9970 = fsub fast float %9968, %9969
  %9971 = fadd fast float %9970, 4.000000e+00
  %9972 = fmul fast float %9971, 0x3FC5555560000000
  %9973 = fmul fast float %9964, -3.000000e+00
  %9974 = fadd fast float %9963, %9946
  %9975 = fmul fast float %9974, 3.000000e+00
  %9976 = fadd fast float %9973, 1.000000e+00
  %9977 = fadd fast float %9976, %9975
  %9978 = fmul fast float %9964, 0x3FC5555560000000
  %9979 = fadd fast float %9945, 1.000000e+00
  %9980 = fsub fast float 1.000000e+00, %9951
  %9981 = fadd fast float %9980, %9950
  %9982 = fadd fast float %9981, %9955
  %9983 = fmul fast float %9982, 0x3FC5555560000000
  %9984 = fdiv fast float %9956, %9983
  %9985 = fsub fast float %9979, %9984
  %9986 = fsub fast float 1.000000e+00, %9945
  %9987 = fadd fast float %9961, %9948
  %9988 = fmul fast float %9987, 0x3FC5555560000000
  %9989 = fdiv fast float %9962, %9988
  %9990 = fadd fast float %9986, %9989
  %9991 = fadd fast float %9946, 1.000000e+00
  %9992 = fsub fast float 1.000000e+00, %9967
  %9993 = fadd fast float %9992, %9966
  %9994 = fadd fast float %9993, %9971
  %9995 = fmul fast float %9994, 0x3FC5555560000000
  %9996 = fdiv fast float %9972, %9995
  %9997 = fsub fast float %9991, %9996
  %9998 = fsub fast float 1.000000e+00, %9946
  %9999 = fadd fast float %9977, %9964
  %10000 = fmul fast float %9999, 0x3FC5555560000000
  %10001 = fdiv fast float %9978, %10000
  %10002 = fadd fast float %10001, %9998
  %10003 = fmul fast float %9985, %9939
  %10004 = fsub fast float %9860, %10003
  %10005 = fmul fast float %9990, %9939
  %10006 = fadd fast float %10005, %9860
  %10007 = fmul fast float %10002, %9940
  %10008 = fadd fast float %10007, %9861
  %10009 = fmul fast float %9997, %9940
  %10010 = fsub fast float %9861, %10009
  %10011 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %44, float %10004, float %10010, float %9928, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10012 = extractvalue %dx.types.ResRet.f32 %10011, 0
  %10013 = extractvalue %dx.types.ResRet.f32 %10011, 1
  %10014 = extractvalue %dx.types.ResRet.f32 %10011, 2
  %10015 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %44, float %10006, float %10010, float %9928, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10016 = extractvalue %dx.types.ResRet.f32 %10015, 0
  %10017 = extractvalue %dx.types.ResRet.f32 %10015, 1
  %10018 = extractvalue %dx.types.ResRet.f32 %10015, 2
  %10019 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %44, float %10004, float %10008, float %9928, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10020 = extractvalue %dx.types.ResRet.f32 %10019, 0
  %10021 = extractvalue %dx.types.ResRet.f32 %10019, 1
  %10022 = extractvalue %dx.types.ResRet.f32 %10019, 2
  %10023 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %44, float %10006, float %10008, float %9928, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10024 = extractvalue %dx.types.ResRet.f32 %10023, 0
  %10025 = extractvalue %dx.types.ResRet.f32 %10023, 1
  %10026 = extractvalue %dx.types.ResRet.f32 %10023, 2
  %10027 = fsub fast float %10020, %10012
  %10028 = fsub fast float %10021, %10013
  %10029 = fsub fast float %10022, %10014
  %10030 = fmul fast float %10027, %10000
  %10031 = fmul fast float %10028, %10000
  %10032 = fmul fast float %10029, %10000
  %10033 = fadd fast float %10030, %10012
  %10034 = fadd fast float %10031, %10013
  %10035 = fadd fast float %10032, %10014
  %10036 = fsub fast float %10024, %10016
  %10037 = fsub fast float %10025, %10017
  %10038 = fsub fast float %10026, %10018
  %10039 = fmul fast float %10036, %10000
  %10040 = fmul fast float %10037, %10000
  %10041 = fmul fast float %10038, %10000
  %10042 = fsub fast float %10016, %10033
  %10043 = fadd fast float %10042, %10039
  %10044 = fsub fast float %10017, %10034
  %10045 = fadd fast float %10044, %10040
  %10046 = fsub fast float %10018, %10035
  %10047 = fadd fast float %10046, %10041
  %10048 = fmul fast float %10043, %9988
  %10049 = fmul fast float %10045, %9988
  %10050 = fmul fast float %10047, %9988
  %10051 = fadd fast float %10048, %10033
  %10052 = fadd fast float %10049, %10034
  %10053 = fadd fast float %10050, %10035
  %10054 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %10055 = extractvalue %dx.types.CBufRet.f32 %10054, 1
  %10056 = fmul fast float %10051, %10055
  %10057 = fmul fast float %10052, %10055
  %10058 = fmul fast float %10053, %10055
  br label %10059

; <label>:10059                                   ; preds = %9890, %9847
  %10060 = phi float [ %9930, %9890 ], [ 1.000000e+00, %9847 ]
  %10061 = phi float [ %9931, %9890 ], [ 1.000000e+00, %9847 ]
  %10062 = phi float [ %9932, %9890 ], [ 1.000000e+00, %9847 ]
  %10063 = phi float [ %10056, %9890 ], [ 0.000000e+00, %9847 ]
  %10064 = phi float [ %10057, %9890 ], [ 0.000000e+00, %9847 ]
  %10065 = phi float [ %10058, %9890 ], [ 0.000000e+00, %9847 ]
  %10066 = fmul fast float %10063, %8397
  %10067 = fmul fast float %10064, %8399
  %10068 = fmul fast float %10065, %8401
  %10069 = fmul fast float %10060, %9854
  %10070 = call float @dx.op.dot3.f32(i32 55, float %10060, float %10061, float %10062, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10071 = call float @dx.op.dot3.f32(i32 55, float %10066, float %10067, float %10068, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10072 = select i1 %271, float %10070, float %10060
  %10073 = select i1 %271, float %10070, float %10061
  %10074 = select i1 %271, float 1.000000e+00, float %10062
  %10075 = select i1 %271, float %10071, float %10066
  %10076 = select i1 %271, float 0.000000e+00, float %10067
  %10077 = select i1 %271, float 0.000000e+00, float %10068
  %10078 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %10079 = extractvalue %dx.types.CBufRet.i32 %10078, 3
  %10080 = and i32 %10079, 3
  %10081 = icmp ne i32 %10080, 0
  %10082 = and i32 %10079, 4
  %10083 = icmp ne i32 %10082, 0
  %10084 = and i1 %10081, %10083
  %10085 = and i1 %271, %10084
  br i1 %10085, label %10086, label %10092

; <label>:10086                                   ; preds = %10059
  %10087 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %10088 = extractvalue %dx.types.CBufRet.f32 %10087, 1
  %10089 = fadd fast float %10069, -1.000000e+00
  %10090 = fmul fast float %10088, %10089
  %10091 = fadd fast float %10090, 1.000000e+00
  br label %10092

; <label>:10092                                   ; preds = %10086, %10059
  %10093 = phi float [ %10091, %10086 ], [ %10069, %10059 ]
  %10094 = fadd fast float %9851, %9848
  %10095 = fmul fast float %10072, %10094
  %10096 = fadd fast float %10095, %10075
  %10097 = fadd fast float %9852, %9849
  %10098 = fmul fast float %10073, %10097
  %10099 = fadd fast float %10098, %10076
  %10100 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %10101 = extractvalue %dx.types.CBufRet.f32 %10100, 0
  br i1 %271, label %10102, label %10117

; <label>:10102                                   ; preds = %10092
  %10103 = fadd fast float %10096, %10099
  %10104 = fmul fast float %10101, %10103
  %10105 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %10106 = extractvalue %dx.types.CBufRet.f32 %10105, 3
  %10107 = extractvalue %dx.types.CBufRet.f32 %8405, 1
  %10108 = fsub fast float %8410, %8404
  %10109 = fadd fast float %10108, %8411
  %10110 = fsub fast float %10109, %10107
  %10111 = extractvalue %dx.types.CBufRet.f32 %8405, 2
  %10112 = fmul fast float %10110, %10111
  %10113 = call float @dx.op.unary.f32(i32 7, float %10112)  ; Saturate(value)
  %10114 = fsub fast float %10113, %10106
  %10115 = fmul fast float %10114, %10093
  %10116 = fadd fast float %10115, %10106
  br label %10143

; <label>:10117                                   ; preds = %10092
  %10118 = fadd fast float %9853, %9850
  %10119 = fmul fast float %10074, %10118
  %10120 = fadd fast float %10119, %10077
  %10121 = fmul fast float %10101, %10096
  %10122 = fmul fast float %10101, %10099
  %10123 = fmul fast float %10101, %10120
  %10124 = call float @dx.op.binary.f32(i32 35, float %10122, float %10123)  ; FMax(a,b)
  %10125 = call float @dx.op.binary.f32(i32 35, float %10121, float %10124)  ; FMax(a,b)
  %10126 = call float @dx.op.binary.f32(i32 35, float %8399, float %8401)  ; FMax(a,b)
  %10127 = call float @dx.op.binary.f32(i32 35, float %8397, float %10126)  ; FMax(a,b)
  %10128 = call float @dx.op.binary.f32(i32 35, float %10125, float %10127)  ; FMax(a,b)
  %10129 = fcmp fast ugt float %10128, 0x3F10000000000000
  br i1 %10129, label %10131, label %10130

; <label>:10130                                   ; preds = %10117
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %10131

; <label>:10131                                   ; preds = %10130, %10117
  %10132 = add i32 %52, 356
  %10133 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %10132, i32 undef)  ; BufferLoad(srv,index,wot)
  %10134 = extractvalue %dx.types.ResRet.i32 %10133, 0
  %10135 = and i32 %10134, 32
  %10136 = icmp eq i32 %10135, 0
  br i1 %10136, label %10143, label %10137

; <label>:10137                                   ; preds = %10131
  %10138 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %10139 = extractvalue %dx.types.CBufRet.f32 %10138, 0
  %10140 = fmul fast float %10139, 0x3FE99999A0000000
  %10141 = fadd fast float %10139, %10121
  %10142 = fadd fast float %10140, %10123
  br label %10143

; <label>:10143                                   ; preds = %10137, %10131, %10102
  %10144 = phi float [ 1.000000e+00, %10102 ], [ %8399, %10137 ], [ %8399, %10131 ]
  %10145 = phi float [ 1.000000e+00, %10102 ], [ %8401, %10137 ], [ %8401, %10131 ]
  %10146 = phi float [ %10104, %10102 ], [ %10141, %10137 ], [ %10121, %10131 ]
  %10147 = phi float [ %10116, %10102 ], [ %10122, %10137 ], [ %10122, %10131 ]
  %10148 = phi float [ 1.000000e+00, %10102 ], [ %10142, %10137 ], [ %10123, %10131 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %10149 = call float @dx.op.binary.f32(i32 36, float %10146, float 3.225500e+04)  ; FMin(a,b)
  %10150 = call float @dx.op.binary.f32(i32 36, float %10147, float 3.225500e+04)  ; FMin(a,b)
  %10151 = call float @dx.op.binary.f32(i32 36, float %10148, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %10149)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %10150)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %10151)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %10152 = call float @dx.op.binary.f32(i32 36, float %8397, float 3.225500e+04)  ; FMin(a,b)
  %10153 = call float @dx.op.binary.f32(i32 36, float %10144, float 3.225500e+04)  ; FMin(a,b)
  %10154 = call float @dx.op.binary.f32(i32 36, float %10145, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %10152)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %10153)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %10154)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  ret void
}

; Function Attrs: nounwind readnone
declare float @dx.op.loadInput.f32(i32, i32, i32, i8, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.loadInput.i32(i32, i32, i32, i8, i32) #0

; Function Attrs: nounwind
declare void @dx.op.storeOutput.f32(i32, i32, i32, i8, float) #1

; Function Attrs: nounwind
declare void @dx.op.discard(i32, i1) #1

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sample.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.binary.i32(i32, i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot2.f32(i32, float, float, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.legacyF16ToF32(i32, i32) #0

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

; Function Attrs: nounwind readnone
declare i32 @dx.op.unaryBits.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot4.f32(i32, float, float, float, float, float, float, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float, float, float, float, float, float, float) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readnone
declare i32 @dx.op.tertiary.i32(i32, i32, i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32) #2

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
!dx.viewIdState = !{!64}
!dx.entryPoints = !{!65}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !53, !56}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !30, !31, !32, !33, !34, !35, !36, !37, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52}
!6 = !{i32 0, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 3, i32 0, i32 -1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 4, i32 0, i32 -1, i32 2, i32 0, !7}
!9 = !{i32 2, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 9, i32 1, i32 11, i32 0, null}
!10 = !{i32 3, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 37, i32 1, i32 11, i32 0, null}
!11 = !{i32 4, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 22, i32 1, i32 11, i32 0, null}
!12 = !{i32 5, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 52, i32 1, i32 4, i32 0, !7}
!13 = !{i32 6, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 33, i32 1, i32 2, i32 0, !7}
!14 = !{i32 7, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 3, i32 1, i32 11, i32 0, null}
!15 = !{i32 8, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 4, i32 1, i32 11, i32 0, null}
!16 = !{i32 9, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 5, i32 1, i32 11, i32 0, null}
!17 = !{i32 10, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 6, i32 1, i32 11, i32 0, null}
!18 = !{i32 11, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 69, i32 1, i32 2, i32 0, !7}
!19 = !{i32 12, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 18, i32 1, i32 11, i32 0, null}
!20 = !{i32 13, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 19, i32 1, i32 11, i32 0, null}
!21 = !{i32 14, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 20, i32 1, i32 11, i32 0, null}
!22 = !{i32 15, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 21, i32 1, i32 11, i32 0, null}
!23 = !{i32 16, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 37, i32 1, i32 2, i32 0, !7}
!24 = !{i32 17, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!25 = !{i32 18, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 58, i32 1, i32 2, i32 0, !7}
!26 = !{i32 19, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 57, i32 1, i32 2, i32 0, !7}
!27 = !{i32 20, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 69, i32 1, i32 11, i32 0, null}
!28 = !{i32 21, %"class.Texture2D<unsigned int>"* undef, !"", i32 2, i32 56, i32 1, i32 2, i32 0, !29}
!29 = !{i32 0, i32 5}
!30 = !{i32 22, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 35, i32 1, i32 7, i32 0, !7}
!31 = !{i32 23, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 34, i32 1, i32 2, i32 0, !7}
!32 = !{i32 24, %"class.Texture3D<float>"* undef, !"", i32 2, i32 31, i32 1, i32 4, i32 0, !7}
!33 = !{i32 25, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 1, i32 1, i32 2, i32 0, !7}
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
!44 = !{i32 35, %"class.Texture1D<float>"* undef, !"", i32 2, i32 30, i32 1, i32 1, i32 0, !7}
!45 = !{i32 36, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 44, i32 1, i32 4, i32 0, !7}
!46 = !{i32 37, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 45, i32 1, i32 4, i32 0, !7}
!47 = !{i32 38, %"class.Texture2DArray<float>"* undef, !"", i32 2, i32 47, i32 1, i32 7, i32 0, !7}
!48 = !{i32 39, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 85, i32 1, i32 7, i32 0, !38}
!49 = !{i32 40, %"class.Texture2D<float>"* undef, !"", i32 2, i32 83, i32 1, i32 2, i32 0, !7}
!50 = !{i32 41, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 86, i32 1, i32 2, i32 0, !7}
!51 = !{i32 42, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 12, i32 1, i32 2, i32 0, !7}
!52 = !{i32 43, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 55, i32 1, i32 2, i32 0, !7}
!53 = !{!54, !55}
!54 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!55 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 144, null}
!56 = !{!57, !58, !59, !60, !61, !62, !63}
!57 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!58 = !{i32 1, %struct.SamplerComparisonState* undef, !"", i32 0, i32 0, i32 1, i32 1, null}
!59 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!60 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!61 = !{i32 4, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!62 = !{i32 5, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!63 = !{i32 6, %struct.SamplerState* undef, !"", i32 0, i32 5, i32 1, i32 0, null}
!64 = !{[58 x i32] [i32 56, i32 8, i32 119, i32 119, i32 7, i32 119, i32 119, i32 119, i32 119, i32 119, i32 119, i32 119, i32 0, i32 0, i32 119, i32 119, i32 119, i32 7, i32 119, i32 119, i32 119, i32 119, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 119, i32 119, i32 119, i32 0, i32 119, i32 119, i32 119, i32 119, i32 119, i32 119, i32 0, i32 0, i32 119, i32 119, i32 119, i32 119, i32 119, i32 119, i32 119, i32 7, i32 119, i32 119, i32 119, i32 0, i32 119, i32 0, i32 0, i32 0]}
!65 = !{void ()* @ps_main, !"ps_main", !66, !4, !94}
!66 = !{!67, !90, null}
!67 = !{!68, !71, !72, !74, !76, !77, !78, !79, !81, !82, !83, !84, !85, !86, !87, !88, !89}
!68 = !{i32 0, !"SV_Position", i8 9, i8 3, !69, i8 4, i32 1, i8 4, i32 0, i8 0, !70}
!69 = !{i32 0}
!70 = !{i32 3, i32 15}
!71 = !{i32 1, !"COLOR", i8 9, i8 0, !69, i8 2, i32 1, i8 4, i32 1, i8 0, !70}
!72 = !{i32 2, !"TEXCOORDS", i8 9, i8 0, !69, i8 2, i32 1, i8 4, i32 2, i8 0, !73}
!73 = !{i32 3, i32 3}
!74 = !{i32 3, !"NORMAL", i8 9, i8 0, !69, i8 2, i32 1, i8 3, i32 3, i8 0, !75}
!75 = !{i32 3, i32 7}
!76 = !{i32 4, !"TANGENT", i8 9, i8 0, !69, i8 2, i32 1, i8 4, i32 4, i8 0, !70}
!77 = !{i32 5, !"AMBIENT_COLOR", i8 9, i8 0, !69, i8 2, i32 1, i8 3, i32 5, i8 0, !75}
!78 = !{i32 6, !"HIGHLIGHT_DIR_VIS", i8 9, i8 0, !69, i8 2, i32 1, i8 4, i32 6, i8 0, !70}
!79 = !{i32 7, !"COMP_FACTOR", i8 9, i8 0, !69, i8 2, i32 1, i8 1, i32 3, i8 3, !80}
!80 = !{i32 3, i32 1}
!81 = !{i32 8, !"WGV_TEXCOORD", i8 9, i8 0, !69, i8 2, i32 1, i8 3, i32 7, i8 0, !75}
!82 = !{i32 9, !"WGV_NORMAL", i8 9, i8 0, !69, i8 2, i32 1, i8 4, i32 8, i8 0, !70}
!83 = !{i32 10, !"SECONDARY_TEXCOORDS", i8 9, i8 0, !69, i8 2, i32 1, i8 2, i32 9, i8 0, !73}
!84 = !{i32 11, !"SCEONDARY_NORMAL", i8 9, i8 0, !69, i8 2, i32 1, i8 4, i32 10, i8 0, !70}
!85 = !{i32 12, !"OBJECT_POSITION", i8 9, i8 0, !69, i8 2, i32 1, i8 4, i32 11, i8 0, !70}
!86 = !{i32 13, !"DECAL_VOLUME_GRID_INDEX", i8 5, i8 0, !69, i8 1, i32 1, i8 1, i32 12, i8 0, !80}
!87 = !{i32 14, !"ENTITY_IDS", i8 5, i8 0, !69, i8 1, i32 1, i8 2, i32 12, i8 1, !73}
!88 = !{i32 15, !"PACKED_TRI_DATA", i8 5, i8 0, !69, i8 1, i32 1, i8 4, i32 13, i8 0, !80}
!89 = !{i32 16, !"SV_SampleIndex", i8 5, i8 12, !69, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!90 = !{!91, !92}
!91 = !{i32 0, !"SV_Target", i8 9, i8 16, !69, i8 0, i32 1, i8 4, i32 0, i8 0, !70}
!92 = !{i32 1, !"SV_Target", i8 9, i8 16, !93, i8 0, i32 1, i8 4, i32 1, i8 0, !70}
!93 = !{i32 1}
!94 = !{i32 0, i64 16}
!95 = distinct !{!95, !"dx.controlflow.hints", i32 1}
!96 = distinct !{!96, !97}
!97 = !{!"llvm.loop.unroll.disable"}
!98 = distinct !{!98, !"dx.controlflow.hints", i32 1}
!99 = distinct !{!99, !"dx.controlflow.hints", i32 1}
!100 = distinct !{!100, !"dx.controlflow.hints", i32 1}
!101 = distinct !{!101, !"dx.controlflow.hints", i32 1}
!102 = distinct !{!102, !"dx.controlflow.hints", i32 1}
!103 = !{!104, !104, i64 0}
!104 = !{!"int", !105, i64 0}
!105 = !{!"omnipotent char", !106, i64 0}
!106 = !{!"Simple C/C++ TBAA"}
!107 = !{!108, !110, !112, !114}
!108 = distinct !{!108, !109, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!109 = distinct !{!109, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!110 = distinct !{!110, !111, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!111 = distinct !{!111, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!112 = distinct !{!112, !113, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z: %agg.result"}
!113 = distinct !{!113, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z"}
!114 = distinct !{!114, !115, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z: %agg.result"}
!115 = distinct !{!115, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z"}
!116 = distinct !{!116, !"dx.controlflow.hints", i32 1}
!117 = !{!118, !118, i64 0}
!118 = !{!"float", !105, i64 0}
!119 = distinct !{!119, !97}
!120 = distinct !{!120, !97}
!121 = distinct !{!121, !"dx.controlflow.hints", i32 1}
!122 = distinct !{!122, !"dx.controlflow.hints", i32 1}
!123 = distinct !{!123, !"dx.controlflow.hints", i32 1}
!124 = distinct !{!124, !"dx.controlflow.hints", i32 1}
!125 = distinct !{!125, !"dx.controlflow.hints", i32 1}
!126 = distinct !{!126, !"dx.controlflow.hints", i32 1}
!127 = distinct !{!127, !"dx.controlflow.hints", i32 1}
!128 = distinct !{!128, !"dx.controlflow.hints", i32 1}
!129 = !{!130, !132, !134, !135, !137, !138, !139, !141, !142, !143}
!130 = distinct !{!130, !131, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!131 = distinct !{!131, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!132 = distinct !{!132, !133, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!133 = distinct !{!133, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!134 = distinct !{!134, !133, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!135 = distinct !{!135, !136, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %blendColor"}
!136 = distinct !{!136, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z"}
!137 = distinct !{!137, !136, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %addColor"}
!138 = distinct !{!138, !136, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %thermalExtinction"}
!139 = distinct !{!139, !140, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %blendColor"}
!140 = distinct !{!140, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z"}
!141 = distinct !{!141, !140, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %addColor"}
!142 = distinct !{!142, !140, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %thermalExtinction"}
!143 = distinct !{!143, !144, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z: %agg.result"}
!144 = distinct !{!144, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z"}
!145 = !{!146}
!146 = distinct !{!146, !147, !"\01?sort@@YAXAIAM00@Z: %c"}
!147 = distinct !{!147, !"\01?sort@@YAXAIAM00@Z"}
!148 = !{!149, !150, !130, !132, !134, !135, !137, !138, !139, !141, !142, !143}
!149 = distinct !{!149, !147, !"\01?sort@@YAXAIAM00@Z: %a"}
!150 = distinct !{!150, !147, !"\01?sort@@YAXAIAM00@Z: %b"}
!151 = !{!150}
!152 = !{!149, !146, !130, !132, !134, !135, !137, !138, !139, !141, !142, !143}
!153 = !{!149}
!154 = !{!150, !146, !130, !132, !134, !135, !137, !138, !139, !141, !142, !143}
!155 = !{!156}
!156 = distinct !{!156, !157, !"\01?sort@@YAXAIAM00@Z: %c"}
!157 = distinct !{!157, !"\01?sort@@YAXAIAM00@Z"}
!158 = !{!159, !160, !130, !132, !134, !135, !137, !138, !139, !141, !142, !143}
!159 = distinct !{!159, !157, !"\01?sort@@YAXAIAM00@Z: %a"}
!160 = distinct !{!160, !157, !"\01?sort@@YAXAIAM00@Z: %b"}
!161 = !{!160}
!162 = !{!159, !156, !130, !132, !134, !135, !137, !138, !139, !141, !142, !143}
!163 = !{!159}
!164 = !{!160, !156, !130, !132, !134, !135, !137, !138, !139, !141, !142, !143}
!165 = distinct !{!165, !"dx.controlflow.hints", i32 1}
!166 = distinct !{!166, !"dx.controlflow.hints", i32 2}
!167 = distinct !{!167, !"dx.controlflow.hints", i32 1}
!168 = distinct !{!168, !"dx.controlflow.hints", i32 1}
!169 = distinct !{!169, !"dx.controlflow.hints", i32 1}
!170 = distinct !{!170, !"dx.controlflow.hints", i32 1}
!171 = distinct !{!171, !"dx.controlflow.hints", i32 1}
!172 = distinct !{!172, !"dx.controlflow.hints", i32 1}
!173 = distinct !{!173, !"dx.controlflow.hints", i32 1}
!174 = distinct !{!174, !"dx.controlflow.hints", i32 1}
!175 = distinct !{!175, !"dx.controlflow.hints", i32 1}

