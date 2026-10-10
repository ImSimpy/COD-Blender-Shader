;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float   xyzw
; COLOR                    0   xyzw        1     NONE   float   xyzw
; TEXCOORDS                0   xyzw        2     NONE   float   xy  
; NORMAL                   0   xyz         3     NONE   float   xyz 
; TANGENT                  0   xyzw        4     NONE   float   xyzw
; AMBIENT_COLOR            0   xyz         5     NONE   float   xyz 
; HIGHLIGHT_DIR_VIS        0   xyzw        6     NONE   float   xyzw
; WGV_TEXCOORD             0   xyz         7     NONE   float   xyz 
; WGV_NORMAL               0   xyzw        8     NONE   float   xyzw
; SECONDARY_TEXCOORDS      0   xy          9     NONE   float   xy  
; SCEONDARY_NORMAL         0   xyzw       10     NONE   float   xyzw
; OBJECT_POSITION          0   xyzw       11     NONE   float   xyz 
; DECAL_VOLUME_GRID_INDEX     0   x          12     NONE    uint   x   
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
; shader hash: 3bd017f692adda94fc66737b7571c8dc
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
; WGV_TEXCOORD             0                 linear       
; WGV_NORMAL               0                 linear       
; SECONDARY_TEXCOORDS      0                 linear       
; SCEONDARY_NORMAL         0                 linear       
; OBJECT_POSITION          0                 linear       
; DECAL_VOLUME_GRID_INDEX     0        nointerpolation       
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
;                                   texture     f32     2darray      T2      t0,space6unbounded
;                                   texture    byte         r/o      T3     t37,space1     1
;                                   texture     f32          3d      T4     t52,space2     1
;                                   texture     f32          2d      T5     t33,space2     1
;                                   texture    byte         r/o      T6      t3,space1     1
;                                   texture    byte         r/o      T7      t4,space1     1
;                                   texture    byte         r/o      T8      t5,space1     1
;                                   texture    byte         r/o      T9      t6,space1     1
;                                   texture     f32          2d     T10     t69,space2     1
;                                   texture    byte         r/o     T11     t18,space1     1
;                                   texture    byte         r/o     T12     t19,space1     1
;                                   texture    byte         r/o     T13     t20,space1     1
;                                   texture    byte         r/o     T14     t21,space1     1
;                                   texture     f32          2d     T15     t37,space2     1
;                                   texture     f32          2d     T16             t0     1
;                                   texture     f32          2d     T17     t58,space2     1
;                                   texture     f32          2d     T18     t59,space2     1
;                                   texture     f32          2d     T19     t60,space2     1
;                                   texture    byte         r/o     T20     t45,space1     1
;                                   texture    byte         r/o     T21     t46,space1     1
;                                   texture    byte         r/o     T22     t47,space1     1
;                                   texture    byte         r/o     T23     t48,space1     1
;                                   texture     f32          2d     T24     t57,space2     1
;                                   texture    byte         r/o     T25     t69,space1     1
;                                   texture     u32          2d     T26     t56,space2     1
;                                   texture     f32     2darray     T27     t35,space2     1
;                                   texture     f32          2d     T28     t34,space2     1
;                                   texture     f32          3d     T29     t31,space2     1
;                                   texture    byte         r/o     T30     t10,space1     1
;                                   texture    byte         r/o     T31      t1,space1     1
;                                   texture     f32          1d     T32     t32,space2     1
;                                   texture     f32     2darray     T33      t8,space2     1
;                                   texture     f32          2d     T34      t1,space2     1
;                                   texture     f32          2d     T35      t2,space2     1
;                                   texture     f32          2d     T36      t3,space2     1
;                                   texture     f32          2d     T37      t4,space2     1
;                                   textureunorm_f32     2darray     T38     t80,space2     1
;                                   texture    byte         r/o     T39     t67,space1     1
;                                   texture     f32          2d     T40      t7,space2     1
;                                   texture     f32          2d     T41      t6,space2     1
;                                   texture     f32          2d     T42      t5,space2     1
;                                   texture     f32          2d     T43     t38,space2     1
;                                   texture    byte         r/o     T44     t12,space1     1
;                                   texture    byte         r/o     T45     t13,space1     1
;                                   texture     f32          1d     T46     t30,space2     1
;                                   texture     f32          3d     T47     t44,space2     1
;                                   texture     f32          3d     T48     t45,space2     1
;                                   texture     f32     2darray     T49     t47,space2     1
;                                   textureunorm_f32     2darray     T50     t85,space2     1
;                                   texture     f32          2d     T51     t83,space2     1
;                                   texture     f32          2d     T52     t86,space2     1
;
;
; ViewId state:
;
; Number of inputs: 56, outputs: 8
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 24, 25, 26, 27, 28, 29, 30, 32, 33, 34, 35, 36, 37, 40, 41, 42, 43, 44, 45, 46, 48, 52 }
;   output 1 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 24, 25, 26, 27, 28, 29, 30, 32, 33, 34, 35, 36, 37, 40, 41, 42, 43, 44, 45, 46, 48, 52 }
;   output 2 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 24, 25, 26, 27, 28, 29, 30, 32, 33, 34, 35, 36, 37, 40, 41, 42, 43, 44, 45, 46, 48, 52 }
;   output 3 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 22, 24, 25, 26, 27, 28, 29, 30, 32, 33, 34, 35, 36, 37, 40, 41, 42, 43, 44, 45, 46, 48, 52 }
;   output 4 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 22, 24, 25, 26, 27, 28, 29, 30, 32, 33, 34, 35, 36, 37, 40, 41, 42, 43, 44, 45, 46, 48, 52 }
;   output 5 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 22, 24, 25, 26, 27, 28, 29, 30, 32, 33, 34, 35, 36, 37, 40, 41, 42, 43, 44, 45, 46, 48, 52 }
;   output 6 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 22, 24, 25, 26, 27, 28, 29, 30, 32, 33, 34, 35, 36, 37, 40, 41, 42, 43, 44, 45, 46, 48, 52 }
;   output 7 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 22, 24, 25, 26, 27, 28, 29, 30, 32, 33, 34, 35, 36, 37, 40, 41, 42, 43, 44, 45, 46, 48, 52 }
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
%"class.Texture2DArray<vector<float, 4> >" = type { <4 x float>, %"class.Texture2DArray<vector<float, 4> >::mips_type" }
%"class.Texture2DArray<vector<float, 4> >::mips_type" = type { i32 }
%struct.ByteAddressBuffer = type { i32 }
%"class.Texture3D<vector<float, 4> >" = type { <4 x float>, %"class.Texture3D<vector<float, 4> >::mips_type" }
%"class.Texture3D<vector<float, 4> >::mips_type" = type { i32 }
%"class.Texture2D<unsigned int>" = type { i32, %"class.Texture2D<unsigned int>::mips_type" }
%"class.Texture2D<unsigned int>::mips_type" = type { i32 }
%"class.Texture2D<vector<float, 3> >" = type { <3 x float>, %"class.Texture2D<vector<float, 3> >::mips_type" }
%"class.Texture2D<vector<float, 3> >::mips_type" = type { i32 }
%"class.Texture3D<float>" = type { float, %"class.Texture3D<float>::mips_type" }
%"class.Texture3D<float>::mips_type" = type { i32 }
%"class.Texture1D<float>" = type { float, %"class.Texture1D<float>::mips_type" }
%"class.Texture1D<float>::mips_type" = type { i32 }
%"class.Texture2D<float>" = type { float, %"class.Texture2D<float>::mips_type" }
%"class.Texture2D<float>::mips_type" = type { i32 }
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

@PCF_OFFSETS_8.v.1dim = internal constant [16 x float] [float 0xBFE6A09020000000, float 0x3FE6A09020000000, float 0.000000e+00, float -8.750000e-01, float 0x3FE0F837C0000000, float 0x3FE0F837C0000000, float -6.250000e-01, float 0.000000e+00, float 0x3FD6A161E0000000, float 0xBFD6A161E0000000, float 0.000000e+00, float 3.750000e-01, float 0xBFC6A161E0000000, float 0xBFC6A161E0000000, float 1.250000e-01, float 0.000000e+00], align 4

define void @ps_main() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 52, i32 86, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 51, i32 83, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 50, i32 85, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 49, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 48, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 47, i32 44, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 46, i32 30, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 45, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 44, i32 12, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 43, i32 38, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 42, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 41, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 40, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 39, i32 67, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 38, i32 80, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 37, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 36, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 35, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 34, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 33, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 32, i32 32, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 31, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 30, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 29, i32 31, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 28, i32 34, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 27, i32 35, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %27 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 26, i32 56, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %28 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 25, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %29 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 24, i32 57, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %30 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 23, i32 48, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %31 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 22, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %32 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 21, i32 46, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %33 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 20, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %34 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 19, i32 60, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %35 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 18, i32 59, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %36 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 58, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %37 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %38 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %39 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 21, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %40 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 20, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %41 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 19, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %42 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 18, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %43 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %44 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %45 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %46 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %47 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %48 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 33, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %49 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 52, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %50 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %51 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 6, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %52 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 5, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %53 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 4, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %54 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %55 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %56 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %57 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %58 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %59 = alloca [4 x i32], align 4
  %60 = call i32 @dx.op.loadInput.i32(i32 4, i32 13, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %61 = call i32 @dx.op.loadInput.i32(i32 4, i32 12, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %62 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %63 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %64 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %65 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %66 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %67 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %68 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %69 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %70 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %71 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %72 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %73 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %74 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %75 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %76 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %77 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %78 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %79 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %80 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %81 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %82 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %83 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %84 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %85 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %86 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %87 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %88 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %89 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %90 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %91 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %92 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %93 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %94 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %95 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %96 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %97 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %98 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %99 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %100 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %101 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %102 = alloca [12 x float], align 4
  %103 = alloca [12 x float], align 4
  %104 = alloca [4 x float], align 4
  %105 = alloca [4 x float], align 4
  %106 = alloca [4 x float], align 4
  %107 = alloca [4 x float], align 4
  %108 = alloca [3 x float], align 4
  %109 = alloca [3 x float], align 4
  %110 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %111 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %112 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %113 = extractvalue %dx.types.CBufRet.f32 %112, 0
  %114 = fmul fast float %113, %98
  %115 = fmul fast float %113, %99
  %116 = call float @dx.op.dot3.f32(i32 55, float %89, float %90, float %91, float %89, float %90, float %91)  ; Dot3(ax,ay,az,bx,by,bz)
  %117 = bitcast float %116 to i32
  %118 = ashr i32 %117, 1
  %119 = sub nsw i32 1597250115, %118
  %120 = bitcast i32 %119 to float
  %121 = fmul fast float %120, %89
  %122 = fmul fast float %120, %90
  %123 = fmul fast float %120, %91
  %124 = fmul fast float %90, %87
  %125 = fmul fast float %91, %86
  %126 = fsub fast float %124, %125
  %127 = fmul fast float %91, %85
  %128 = fmul fast float %89, %87
  %129 = fsub fast float %127, %128
  %130 = fmul fast float %89, %86
  %131 = fmul fast float %90, %85
  %132 = fsub fast float %130, %131
  %133 = fmul fast float %126, %88
  %134 = fmul fast float %129, %88
  %135 = fmul fast float %132, %88
  %136 = call float @dx.op.dot3.f32(i32 55, float %78, float %79, float %80, float %78, float %79, float %80)  ; Dot3(ax,ay,az,bx,by,bz)
  %137 = bitcast float %136 to i32
  %138 = ashr i32 %137, 1
  %139 = sub nsw i32 1597250115, %138
  %140 = bitcast i32 %139 to float
  %141 = fmul fast float %140, %78
  %142 = fmul fast float %140, %79
  %143 = fmul fast float %140, %80
  %144 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %145 = extractvalue %dx.types.CBufRet.f32 %144, 0
  %146 = fcmp fast une float %145, 0.000000e+00
  %147 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %148 = extractvalue %dx.types.CBufRet.f32 %147, 2
  %149 = extractvalue %dx.types.CBufRet.f32 %147, 3
  %150 = fmul fast float %114, 2.000000e+00
  %151 = fmul fast float %150, %148
  %152 = fmul fast float %115, 2.000000e+00
  %153 = fmul fast float %152, %149
  %154 = fsub fast float 1.000000e+00, %151
  %155 = fsub fast float 1.000000e+00, %153
  %156 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %157 = extractvalue %dx.types.CBufRet.f32 %156, 0
  %158 = extractvalue %dx.types.CBufRet.f32 %156, 1
  %159 = extractvalue %dx.types.CBufRet.f32 %156, 2
  %160 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %161 = extractvalue %dx.types.CBufRet.f32 %160, 0
  %162 = extractvalue %dx.types.CBufRet.f32 %160, 1
  %163 = extractvalue %dx.types.CBufRet.f32 %160, 2
  %164 = select i1 %146, float %157, float %161
  %165 = select i1 %146, float %158, float %162
  %166 = select i1 %146, float %159, float %163
  %167 = fmul fast float %164, %154
  %168 = fmul fast float %165, %154
  %169 = fmul fast float %166, %154
  %170 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %171 = extractvalue %dx.types.CBufRet.f32 %170, 0
  %172 = extractvalue %dx.types.CBufRet.f32 %170, 1
  %173 = extractvalue %dx.types.CBufRet.f32 %170, 2
  %174 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %175 = extractvalue %dx.types.CBufRet.f32 %174, 0
  %176 = extractvalue %dx.types.CBufRet.f32 %174, 1
  %177 = extractvalue %dx.types.CBufRet.f32 %174, 2
  %178 = select i1 %146, float %171, float %175
  %179 = select i1 %146, float %172, float %176
  %180 = select i1 %146, float %173, float %177
  %181 = fmul fast float %178, %155
  %182 = fmul fast float %179, %155
  %183 = fmul fast float %180, %155
  %184 = fadd fast float %181, %167
  %185 = fadd fast float %182, %168
  %186 = fadd fast float %183, %169
  %187 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %188 = extractvalue %dx.types.CBufRet.f32 %187, 0
  %189 = extractvalue %dx.types.CBufRet.f32 %187, 1
  %190 = extractvalue %dx.types.CBufRet.f32 %187, 2
  %191 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %192 = extractvalue %dx.types.CBufRet.f32 %191, 0
  %193 = extractvalue %dx.types.CBufRet.f32 %191, 1
  %194 = extractvalue %dx.types.CBufRet.f32 %191, 2
  %195 = select i1 %146, float %188, float %192
  %196 = select i1 %146, float %189, float %193
  %197 = select i1 %146, float %190, float %194
  %198 = fadd fast float %184, %195
  %199 = fadd fast float %185, %196
  %200 = fadd fast float %186, %197
  %201 = fmul fast float %198, %101
  %202 = fmul fast float %199, %101
  %203 = fmul fast float %200, %101
  %204 = fmul fast float %114, 5.000000e-01
  %205 = fmul fast float %115, 5.000000e-01
  %206 = fptosi float %204 to i32
  %207 = fptosi float %205 to i32
  %208 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %27, i32 0, i32 %206, i32 %207, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %209 = extractvalue %dx.types.ResRet.i32 %208, 0
  %210 = lshr i32 %209, 18
  %211 = uitofp i32 %210 to float
  %212 = fmul fast float %211, 0x3F4C00EBA0000000
  %213 = call float @dx.op.unary.f32(i32 21, float %212)  ; Exp(value)
  %214 = fadd fast float %213, -1.000000e+00
  %215 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %27, i32 0)  ; GetDimensions(handle,mipLevel)
  %216 = extractvalue %dx.types.Dimensions %215, 0
  %217 = sitofp i32 %216 to float
  %218 = extractvalue %dx.types.Dimensions %215, 1
  %219 = sitofp i32 %218 to float
  %220 = fcmp fast oge float %204, %217
  %221 = fcmp fast oge float %205, %219
  %222 = or i1 %220, %221
  %223 = select i1 %222, float 0x4197782600000000, float %214
  %224 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %225 = extractvalue %dx.types.CBufRet.f32 %224, 2
  %226 = extractvalue %dx.types.CBufRet.f32 %224, 3
  %227 = fmul fast float %225, %114
  %228 = fmul fast float %226, %115
  %229 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %230 = extractvalue %dx.types.ResRet.i32 %229, 0
  %231 = and i32 %230, 114688
  %232 = icmp ne i32 %231, 0
  %233 = select i1 %232, float %227, float 0.000000e+00
  %234 = select i1 %232, float %228, float 0.000000e+00
  %235 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %55, float %233, float %234, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %236 = extractvalue %dx.types.ResRet.f32 %235, 0
  %237 = fmul fast float %236, 2.550000e+02
  %238 = fptoui float %237 to i32
  %239 = select i1 %232, i32 %238, i32 0
  %240 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %241 = extractvalue %dx.types.CBufRet.i32 %240, 3
  %242 = and i32 %241, 3
  %243 = icmp ne i32 %242, 0
  %244 = and i32 %241, 4
  %245 = icmp ne i32 %244, 0
  %246 = and i1 %243, %245
  br i1 %246, label %247, label %256

; <label>:247                                     ; preds = %0
  %248 = fmul fast float %149, %115
  %249 = fmul fast float %148, %114
  %250 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %54, float %249, float %248, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %251 = extractvalue %dx.types.ResRet.f32 %250, 0
  %252 = fsub fast float 1.000000e+00, %251
  %253 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %254 = extractvalue %dx.types.CBufRet.f32 %253, 0
  %255 = fcmp fast olt float %252, %254
  br label %259

; <label>:256                                     ; preds = %0
  %257 = icmp eq i32 %244, 0
  %258 = and i1 %243, %257
  br label %259

; <label>:259                                     ; preds = %256, %247
  %260 = phi i1 [ %255, %247 ], [ %258, %256 ]
  %261 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %262 = extractvalue %dx.types.CBufRet.f32 %261, 2
  %263 = fmul fast float %262, 0x3FE3C6EF40000000
  %264 = frem fast float %114, 2.560000e+02
  %265 = frem fast float %115, 2.560000e+02
  %266 = fptoui float %264 to i32
  %267 = fptoui float %265 to i32
  %268 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %38, i32 0, i32 %266, i32 %267, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %269 = extractvalue %dx.types.ResRet.f32 %268, 0
  %270 = fadd fast float %269, %263
  %271 = call float @dx.op.unary.f32(i32 22, float %270)  ; Frc(value)
  %272 = add i32 %60, 156
  %273 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %272, i32 undef)  ; BufferLoad(srv,index,wot)
  %274 = extractvalue %dx.types.ResRet.i32 %273, 0
  %275 = shl i32 %274, 4
  %276 = and i32 %275, 32752
  %277 = call float @dx.op.legacyF16ToF32(i32 131, i32 %276)  ; LegacyF16ToF32(value)
  %278 = lshr i32 %274, 7
  %279 = and i32 %278, 32752
  %280 = call float @dx.op.legacyF16ToF32(i32 131, i32 %279)  ; LegacyF16ToF32(value)
  %281 = lshr i32 %274, 22
  %282 = shl nuw nsw i32 %281, 5
  %283 = call float @dx.op.legacyF16ToF32(i32 131, i32 %282)  ; LegacyF16ToF32(value)
  %284 = add i32 %60, 216
  %285 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %284, i32 undef)  ; BufferLoad(srv,index,wot)
  %286 = extractvalue %dx.types.ResRet.i32 %285, 0
  %287 = and i32 %286, 255
  %288 = uitofp i32 %287 to float
  %289 = fmul fast float %288, 0x3F70101020000000
  %290 = lshr i32 %286, 8
  %291 = and i32 %290, 255
  %292 = uitofp i32 %291 to float
  %293 = fmul fast float %292, 0x3F70101020000000
  %294 = lshr i32 %286, 16
  %295 = and i32 %294, 255
  %296 = uitofp i32 %295 to float
  %297 = fmul fast float %296, 0x3F70101020000000
  %298 = add i32 %60, 36
  %299 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %298, i32 undef)  ; BufferLoad(srv,index,wot)
  %300 = extractvalue %dx.types.ResRet.i32 %299, 0
  %301 = and i32 %300, 65535
  %302 = call float @dx.op.legacyF16ToF32(i32 131, i32 %301)  ; LegacyF16ToF32(value)
  %303 = lshr i32 %300, 16
  %304 = call float @dx.op.legacyF16ToF32(i32 131, i32 %303)  ; LegacyF16ToF32(value)
  %305 = add i32 %60, 288
  %306 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %305, i32 undef)  ; BufferLoad(srv,index,wot)
  %307 = extractvalue %dx.types.ResRet.i32 %306, 0
  %308 = and i32 %307, 65535
  %309 = call float @dx.op.legacyF16ToF32(i32 131, i32 %308)  ; LegacyF16ToF32(value)
  %310 = lshr i32 %307, 16
  %311 = call float @dx.op.legacyF16ToF32(i32 131, i32 %310)  ; LegacyF16ToF32(value)
  %312 = fmul fast float %309, 0x3F50624DE0000000
  %313 = fmul fast float %311, 0x3F50624DE0000000
  %314 = add i32 %60, 172
  %315 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %314, i32 undef)  ; BufferLoad(srv,index,wot)
  %316 = extractvalue %dx.types.ResRet.i32 %315, 0
  %317 = shl i32 %316, 4
  %318 = and i32 %317, 32752
  %319 = call float @dx.op.legacyF16ToF32(i32 131, i32 %318)  ; LegacyF16ToF32(value)
  %320 = lshr i32 %316, 7
  %321 = and i32 %320, 32752
  %322 = call float @dx.op.legacyF16ToF32(i32 131, i32 %321)  ; LegacyF16ToF32(value)
  %323 = lshr i32 %316, 22
  %324 = shl nuw nsw i32 %323, 5
  %325 = call float @dx.op.legacyF16ToF32(i32 131, i32 %324)  ; LegacyF16ToF32(value)
  %326 = add i32 %60, 232
  %327 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %326, i32 undef)  ; BufferLoad(srv,index,wot)
  %328 = extractvalue %dx.types.ResRet.i32 %327, 0
  %329 = and i32 %328, 255
  %330 = uitofp i32 %329 to float
  %331 = fmul fast float %330, 0x3F70101020000000
  %332 = lshr i32 %328, 8
  %333 = and i32 %332, 255
  %334 = uitofp i32 %333 to float
  %335 = fmul fast float %334, 0x3F70101020000000
  %336 = lshr i32 %328, 16
  %337 = and i32 %336, 255
  %338 = uitofp i32 %337 to float
  %339 = fmul fast float %338, 0x3F70101020000000
  %340 = add i32 %60, 52
  %341 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %340, i32 undef)  ; BufferLoad(srv,index,wot)
  %342 = extractvalue %dx.types.ResRet.i32 %341, 0
  %343 = and i32 %342, 65535
  %344 = call float @dx.op.legacyF16ToF32(i32 131, i32 %343)  ; LegacyF16ToF32(value)
  %345 = lshr i32 %342, 16
  %346 = call float @dx.op.legacyF16ToF32(i32 131, i32 %345)  ; LegacyF16ToF32(value)
  %347 = add i32 %60, 304
  %348 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %347, i32 undef)  ; BufferLoad(srv,index,wot)
  %349 = extractvalue %dx.types.ResRet.i32 %348, 0
  %350 = and i32 %349, 65535
  %351 = call float @dx.op.legacyF16ToF32(i32 131, i32 %350)  ; LegacyF16ToF32(value)
  %352 = lshr i32 %349, 16
  %353 = call float @dx.op.legacyF16ToF32(i32 131, i32 %352)  ; LegacyF16ToF32(value)
  %354 = fmul fast float %351, 0x3F50624DE0000000
  %355 = fmul fast float %353, 0x3F50624DE0000000
  %356 = add i32 %60, 188
  %357 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %356, i32 undef)  ; BufferLoad(srv,index,wot)
  %358 = extractvalue %dx.types.ResRet.i32 %357, 0
  %359 = shl i32 %358, 4
  %360 = and i32 %359, 32752
  %361 = call float @dx.op.legacyF16ToF32(i32 131, i32 %360)  ; LegacyF16ToF32(value)
  %362 = lshr i32 %358, 7
  %363 = and i32 %362, 32752
  %364 = call float @dx.op.legacyF16ToF32(i32 131, i32 %363)  ; LegacyF16ToF32(value)
  %365 = lshr i32 %358, 22
  %366 = shl nuw nsw i32 %365, 5
  %367 = call float @dx.op.legacyF16ToF32(i32 131, i32 %366)  ; LegacyF16ToF32(value)
  %368 = add i32 %60, 248
  %369 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %368, i32 undef)  ; BufferLoad(srv,index,wot)
  %370 = extractvalue %dx.types.ResRet.i32 %369, 0
  %371 = and i32 %370, 255
  %372 = uitofp i32 %371 to float
  %373 = fmul fast float %372, 0x3F70101020000000
  %374 = lshr i32 %370, 8
  %375 = and i32 %374, 255
  %376 = uitofp i32 %375 to float
  %377 = fmul fast float %376, 0x3F70101020000000
  %378 = lshr i32 %370, 16
  %379 = and i32 %378, 255
  %380 = uitofp i32 %379 to float
  %381 = fmul fast float %380, 0x3F70101020000000
  %382 = add i32 %60, 68
  %383 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %382, i32 undef)  ; BufferLoad(srv,index,wot)
  %384 = extractvalue %dx.types.ResRet.i32 %383, 0
  %385 = and i32 %384, 65535
  %386 = call float @dx.op.legacyF16ToF32(i32 131, i32 %385)  ; LegacyF16ToF32(value)
  %387 = lshr i32 %384, 16
  %388 = call float @dx.op.legacyF16ToF32(i32 131, i32 %387)  ; LegacyF16ToF32(value)
  %389 = add i32 %60, 320
  %390 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %389, i32 undef)  ; BufferLoad(srv,index,wot)
  %391 = extractvalue %dx.types.ResRet.i32 %390, 0
  %392 = and i32 %391, 65535
  %393 = call float @dx.op.legacyF16ToF32(i32 131, i32 %392)  ; LegacyF16ToF32(value)
  %394 = lshr i32 %391, 16
  %395 = call float @dx.op.legacyF16ToF32(i32 131, i32 %394)  ; LegacyF16ToF32(value)
  %396 = fmul fast float %393, 0x3F50624DE0000000
  %397 = fmul fast float %395, 0x3F50624DE0000000
  %398 = add i32 %60, 204
  %399 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %398, i32 undef)  ; BufferLoad(srv,index,wot)
  %400 = extractvalue %dx.types.ResRet.i32 %399, 0
  %401 = shl i32 %400, 4
  %402 = and i32 %401, 32752
  %403 = call float @dx.op.legacyF16ToF32(i32 131, i32 %402)  ; LegacyF16ToF32(value)
  %404 = lshr i32 %400, 7
  %405 = and i32 %404, 32752
  %406 = call float @dx.op.legacyF16ToF32(i32 131, i32 %405)  ; LegacyF16ToF32(value)
  %407 = lshr i32 %400, 22
  %408 = shl nuw nsw i32 %407, 5
  %409 = call float @dx.op.legacyF16ToF32(i32 131, i32 %408)  ; LegacyF16ToF32(value)
  %410 = add i32 %60, 264
  %411 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %410, i32 undef)  ; BufferLoad(srv,index,wot)
  %412 = extractvalue %dx.types.ResRet.i32 %411, 0
  %413 = and i32 %412, 255
  %414 = uitofp i32 %413 to float
  %415 = fmul fast float %414, 0x3F70101020000000
  %416 = lshr i32 %412, 8
  %417 = and i32 %416, 255
  %418 = uitofp i32 %417 to float
  %419 = fmul fast float %418, 0x3F70101020000000
  %420 = lshr i32 %412, 16
  %421 = and i32 %420, 255
  %422 = uitofp i32 %421 to float
  %423 = fmul fast float %422, 0x3F70101020000000
  %424 = add i32 %60, 84
  %425 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %424, i32 undef)  ; BufferLoad(srv,index,wot)
  %426 = extractvalue %dx.types.ResRet.i32 %425, 0
  %427 = and i32 %426, 65535
  %428 = call float @dx.op.legacyF16ToF32(i32 131, i32 %427)  ; LegacyF16ToF32(value)
  %429 = lshr i32 %426, 16
  %430 = call float @dx.op.legacyF16ToF32(i32 131, i32 %429)  ; LegacyF16ToF32(value)
  %431 = add i32 %60, 336
  %432 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %431, i32 undef)  ; BufferLoad(srv,index,wot)
  %433 = extractvalue %dx.types.ResRet.i32 %432, 0
  %434 = and i32 %433, 65535
  %435 = call float @dx.op.legacyF16ToF32(i32 131, i32 %434)  ; LegacyF16ToF32(value)
  %436 = lshr i32 %433, 16
  %437 = call float @dx.op.legacyF16ToF32(i32 131, i32 %436)  ; LegacyF16ToF32(value)
  %438 = fmul fast float %435, 0x3F50624DE0000000
  %439 = fmul fast float %437, 0x3F50624DE0000000
  %440 = add i32 %60, 348
  %441 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %440, i32 undef)  ; BufferLoad(srv,index,wot)
  %442 = extractvalue %dx.types.ResRet.i32 %441, 0
  %443 = and i32 %442, 32
  %444 = icmp eq i32 %443, 0
  %445 = and i32 %442, 64
  %446 = icmp eq i32 %445, 0
  %447 = and i32 %442, 128
  %448 = icmp eq i32 %447, 0
  %449 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %440, i32 undef)  ; BufferLoad(srv,index,wot)
  %450 = extractvalue %dx.types.ResRet.i32 %449, 0
  %451 = and i32 %450, 2
  %452 = icmp eq i32 %451, 0
  br i1 %452, label %468, label %453

; <label>:453                                     ; preds = %259
  %454 = add i32 %60, 488
  %455 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %454, i32 undef)  ; BufferLoad(srv,index,wot)
  %456 = extractvalue %dx.types.ResRet.i32 %455, 0
  %457 = add i32 %456, 0
  %458 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %457, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %459 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %458, %dx.types.Handle %111, float %92, float %93, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %460 = extractvalue %dx.types.ResRet.f32 %459, 0
  %461 = extractvalue %dx.types.ResRet.f32 %459, 1
  %462 = extractvalue %dx.types.ResRet.f32 %459, 2
  %463 = extractvalue %dx.types.ResRet.f32 %459, 3
  %464 = fmul fast float %463, %94
  %465 = fmul fast float %460, %95
  %466 = fmul fast float %461, %96
  %467 = fmul fast float %462, %97
  br label %468

; <label>:468                                     ; preds = %453, %259
  %469 = phi float [ %97, %259 ], [ %467, %453 ]
  %470 = phi float [ %96, %259 ], [ %466, %453 ]
  %471 = phi float [ %95, %259 ], [ %465, %453 ]
  %472 = phi float [ %94, %259 ], [ %464, %453 ]
  %473 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %440, i32 undef)  ; BufferLoad(srv,index,wot)
  %474 = extractvalue %dx.types.ResRet.i32 %473, 0
  %475 = and i32 %474, 2
  %476 = icmp eq i32 %475, 0
  br i1 %476, label %496, label %477

; <label>:477                                     ; preds = %468
  %478 = add i32 %60, 44
  %479 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %478, i32 undef)  ; BufferLoad(srv,index,wot)
  %480 = extractvalue %dx.types.ResRet.i32 %479, 0
  %481 = and i32 %480, 1
  %482 = icmp ne i32 %481, 0
  %483 = select i1 %482, float %471, float 1.000000e+00
  %484 = add i32 %60, 60
  %485 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %484, i32 undef)  ; BufferLoad(srv,index,wot)
  %486 = extractvalue %dx.types.ResRet.i32 %485, 0
  %487 = and i32 %486, 1
  %488 = icmp ne i32 %487, 0
  %489 = select i1 %488, float %470, float 1.000000e+00
  %490 = add i32 %60, 76
  %491 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %490, i32 undef)  ; BufferLoad(srv,index,wot)
  %492 = extractvalue %dx.types.ResRet.i32 %491, 0
  %493 = and i32 %492, 1
  %494 = icmp ne i32 %493, 0
  %495 = select i1 %494, float %469, float 1.000000e+00
  br label %496

; <label>:496                                     ; preds = %477, %468
  %497 = phi float [ %469, %468 ], [ %495, %477 ]
  %498 = phi float [ %470, %468 ], [ %489, %477 ]
  %499 = phi float [ %471, %468 ], [ %483, %477 ]
  %500 = lshr i32 %474, 20
  %501 = and i32 %500, 3
  %502 = add nuw nsw i32 %501, 1
  %503 = add i32 %60, 24
  %504 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %503, i32 undef)  ; BufferLoad(srv,index,wot)
  %505 = extractvalue %dx.types.ResRet.i32 %504, 0
  %506 = add i32 %60, 28
  %507 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %506, i32 undef)  ; BufferLoad(srv,index,wot)
  %508 = extractvalue %dx.types.ResRet.i32 %507, 0
  %509 = or i32 %508, %505
  %510 = icmp eq i32 %509, 0
  br i1 %510, label %1129, label %511

; <label>:511                                     ; preds = %496
  %512 = and i32 %505, 262144
  %513 = icmp ne i32 %512, 0
  %514 = select i1 %513, float %65, float 1.000000e+00
  %515 = select i1 %513, float %66, float 0.000000e+00
  %516 = select i1 %513, float %67, float 0.000000e+00
  %517 = select i1 %513, float %68, float 1.000000e+00
  %518 = select i1 %513, float %69, float %92
  %519 = select i1 %513, float %70, float %93
  %520 = add i32 %60, 284
  %521 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %520, i32 undef)  ; BufferLoad(srv,index,wot)
  %522 = extractvalue %dx.types.ResRet.i32 %521, 0
  %523 = lshr i32 %522, 16
  %524 = call float @dx.op.legacyF16ToF32(i32 131, i32 %523)  ; LegacyF16ToF32(value)
  %525 = fmul fast float %524, 0x3F50624DE0000000
  %526 = add i32 %60, 88
  %527 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %526, i32 undef)  ; BufferLoad(srv,index,wot)
  %528 = extractvalue %dx.types.ResRet.i32 %527, 0
  %529 = lshr i32 %528, 16
  %530 = and i32 %529, 255
  %531 = lshr i32 %528, 24
  %532 = add i32 %60, 292
  %533 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %532, i32 undef)  ; BufferLoad(srv,index,wot)
  %534 = extractvalue %dx.types.ResRet.i32 %533, 0
  %535 = and i32 %534, 65535
  %536 = call float @dx.op.legacyF16ToF32(i32 131, i32 %535)  ; LegacyF16ToF32(value)
  %537 = lshr i32 %534, 16
  %538 = call float @dx.op.legacyF16ToF32(i32 131, i32 %537)  ; LegacyF16ToF32(value)
  %539 = add i32 %60, 32
  %540 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %539, i32 undef)  ; BufferLoad(srv,index,wot)
  %541 = extractvalue %dx.types.ResRet.i32 %540, 0
  %542 = lshr i32 %541, 22
  %543 = shl nuw nsw i32 %542, 5
  %544 = call float @dx.op.legacyF16ToF32(i32 131, i32 %543)  ; LegacyF16ToF32(value)
  %545 = shl i32 %541, 4
  %546 = and i32 %545, 32752
  %547 = call float @dx.op.legacyF16ToF32(i32 131, i32 %546)  ; LegacyF16ToF32(value)
  %548 = lshr i32 %541, 7
  %549 = and i32 %548, 32752
  %550 = call float @dx.op.legacyF16ToF32(i32 131, i32 %549)  ; LegacyF16ToF32(value)
  %551 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %552 = extractvalue %dx.types.CBufRet.f32 %551, 3
  %553 = fmul fast float %552, 1.000000e+03
  %554 = fmul fast float %312, %553
  %555 = call float @dx.op.unary.f32(i32 22, float %554)  ; Frc(value)
  %556 = fadd fast float %555, %302
  %557 = fmul fast float %313, %553
  %558 = call float @dx.op.unary.f32(i32 22, float %557)  ; Frc(value)
  %559 = fadd fast float %558, %304
  %560 = fmul fast float %525, %553
  %561 = call float @dx.op.unary.f32(i32 22, float %560)  ; Frc(value)
  %562 = fmul fast float %561, 0x401921FB60000000
  %563 = fadd fast float %562, %544
  %564 = call float @dx.op.unary.f32(i32 13, float %563)  ; Sin(value)
  %565 = call float @dx.op.unary.f32(i32 12, float %563)  ; Cos(value)
  %566 = fsub fast float -0.000000e+00, %564
  %567 = fadd fast float %518, -5.000000e-01
  %568 = fadd fast float %519, -5.000000e-01
  %569 = fmul fast float %536, %567
  %570 = fmul fast float %538, %568
  %571 = fadd fast float %569, 5.000000e-01
  %572 = fadd fast float %570, 5.000000e-01
  %573 = fmul fast float %547, %571
  %574 = fmul fast float %550, %572
  %575 = fmul fast float %565, %573
  %576 = call float @dx.op.tertiary.f32(i32 46, float %566, float %574, float %575)  ; FMad(a,b,c)
  %577 = fmul fast float %564, %573
  %578 = call float @dx.op.tertiary.f32(i32 46, float %565, float %574, float %577)  ; FMad(a,b,c)
  %579 = fadd fast float %556, %576
  %580 = fadd fast float %559, %578
  %581 = icmp ugt i32 %530, 1
  %582 = icmp ugt i32 %528, 33554431
  %583 = or i1 %582, %581
  br i1 %583, label %584, label %609

; <label>:584                                     ; preds = %511
  %585 = add i32 %60, 228
  %586 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %585, i32 undef)  ; BufferLoad(srv,index,wot)
  %587 = extractvalue %dx.types.ResRet.i32 %586, 0
  %588 = lshr i32 %587, 16
  %589 = call float @dx.op.legacyF16ToF32(i32 131, i32 %588)  ; LegacyF16ToF32(value)
  %590 = fmul fast float %552, %589
  %591 = call float @dx.op.unary.f32(i32 22, float %590)  ; Frc(value)
  %592 = mul nuw nsw i32 %530, %531
  %593 = uitofp i32 %592 to float
  %594 = fmul fast float %591, %593
  %595 = call float @dx.op.unary.f32(i32 27, float %594)  ; Round_ni(value)
  %596 = fptoui float %595 to i32
  %597 = urem i32 %596, %530
  %598 = udiv i32 %596, %531
  %599 = call float @dx.op.unary.f32(i32 22, float %579)  ; Frc(value)
  %600 = call float @dx.op.unary.f32(i32 22, float %580)  ; Frc(value)
  %601 = uitofp i32 %597 to float
  %602 = uitofp i32 %598 to float
  %603 = fadd fast float %599, %601
  %604 = fadd fast float %600, %602
  %605 = uitofp i32 %530 to float
  %606 = uitofp i32 %531 to float
  %607 = fdiv fast float %603, %605
  %608 = fdiv fast float %604, %606
  br label %609

; <label>:609                                     ; preds = %584, %511
  %610 = phi float [ %607, %584 ], [ %579, %511 ]
  %611 = phi float [ %608, %584 ], [ %580, %511 ]
  %612 = and i32 %505, 256
  %613 = icmp eq i32 %612, 0
  br i1 %613, label %660, label %614

; <label>:614                                     ; preds = %609
  %615 = add i32 %60, 424
  %616 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %615, i32 undef)  ; BufferLoad(srv,index,wot)
  %617 = extractvalue %dx.types.ResRet.i32 %616, 0
  %618 = add i32 %617, 0
  %619 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %618, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %620 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %619, %dx.types.Handle %111, float %610, float %611, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %621 = extractvalue %dx.types.ResRet.f32 %620, 0
  %622 = add i32 %60, 100
  %623 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %622, i32 undef)  ; BufferLoad(srv,index,wot)
  %624 = extractvalue %dx.types.ResRet.i32 %623, 0
  %625 = shl i32 %624, 4
  %626 = and i32 %625, 32752
  %627 = call float @dx.op.legacyF16ToF32(i32 131, i32 %626)  ; LegacyF16ToF32(value)
  %628 = lshr i32 %624, 7
  %629 = and i32 %628, 32752
  %630 = call float @dx.op.legacyF16ToF32(i32 131, i32 %629)  ; LegacyF16ToF32(value)
  %631 = fsub fast float 1.000000e+00, %472
  %632 = call float @dx.op.binary.f32(i32 35, float %631, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %633 = bitcast float %472 to i32
  %634 = sitofp i32 %633 to float
  %635 = fadd fast float %634, 0xC1CFBF8940000000
  %636 = fmul fast float %630, %635
  %637 = fadd fast float %636, 0x41CFBF8940000000
  %638 = fptosi float %637 to i32
  %639 = bitcast i32 %638 to float
  %640 = bitcast float %632 to i32
  %641 = sitofp i32 %640 to float
  %642 = fadd fast float %641, 0xC1CFBF8940000000
  %643 = fmul fast float %642, %630
  %644 = fadd fast float %643, 0x41CFBF8940000000
  %645 = fptosi float %644 to i32
  %646 = bitcast i32 %645 to float
  %647 = fmul fast float %639, %627
  %648 = fmul fast float %646, %627
  %649 = fsub fast float %632, %647
  %650 = fadd fast float %648, %632
  %651 = call float @dx.op.unary.f32(i32 7, float %649)  ; Saturate(value)
  %652 = call float @dx.op.unary.f32(i32 7, float %650)  ; Saturate(value)
  %653 = fsub fast float %621, %651
  %654 = fsub fast float %652, %651
  %655 = bitcast float %654 to i32
  %656 = sub nsw i32 2129859010, %655
  %657 = bitcast i32 %656 to float
  %658 = fmul fast float %657, %653
  %659 = call float @dx.op.unary.f32(i32 7, float %658)  ; Saturate(value)
  br label %660

; <label>:660                                     ; preds = %614, %609
  %661 = phi float [ %659, %614 ], [ %472, %609 ]
  %662 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %503, i32 undef)  ; BufferLoad(srv,index,wot)
  %663 = extractvalue %dx.types.ResRet.i32 %662, 0
  %664 = and i32 %663, 128
  %665 = icmp eq i32 %664, 0
  br i1 %665, label %682, label %666

; <label>:666                                     ; preds = %660
  %667 = add i32 %60, 408
  %668 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %667, i32 undef)  ; BufferLoad(srv,index,wot)
  %669 = extractvalue %dx.types.ResRet.i32 %668, 0
  %670 = add i32 %669, 0
  %671 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %670, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %672 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %671, %dx.types.Handle %111, float %610, float %611, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %673 = extractvalue %dx.types.ResRet.f32 %672, 0
  %674 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %503, i32 undef)  ; BufferLoad(srv,index,wot)
  %675 = extractvalue %dx.types.ResRet.i32 %674, 0
  %676 = and i32 %675, 524288
  %677 = icmp ne i32 %676, 0
  %678 = fcmp fast ogt float %673, 0x3FE0101020000000
  %679 = select i1 %678, float 1.000000e+00, float 0.000000e+00
  %680 = select i1 %677, float %679, float %673
  %681 = fmul fast float %680, %661
  br label %682

; <label>:682                                     ; preds = %666, %660
  %683 = phi float [ %681, %666 ], [ %661, %660 ]
  %684 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %503, i32 undef)  ; BufferLoad(srv,index,wot)
  %685 = extractvalue %dx.types.ResRet.i32 %684, 0
  %686 = and i32 %685, 16
  %687 = icmp eq i32 %686, 0
  br i1 %687, label %886, label %688

; <label>:688                                     ; preds = %682
  %689 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %526, i32 undef)  ; BufferLoad(srv,index,wot)
  %690 = extractvalue %dx.types.ResRet.i32 %689, 0
  %691 = add i32 %60, 360
  %692 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %691, i32 undef)  ; BufferLoad(srv,index,wot)
  %693 = extractvalue %dx.types.ResRet.i32 %692, 0
  %694 = add i32 %693, 0
  %695 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %694, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %696 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %695, %dx.types.Handle %110, float %610, float %611, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %697 = extractvalue %dx.types.ResRet.f32 %696, 0
  %698 = extractvalue %dx.types.ResRet.f32 %696, 1
  %699 = extractvalue %dx.types.ResRet.f32 %696, 2
  %700 = extractvalue %dx.types.ResRet.f32 %696, 3
  %701 = and i32 %690, 255
  %702 = uitofp i32 %701 to float
  %703 = lshr i32 %690, 8
  %704 = and i32 %703, 255
  %705 = uitofp i32 %704 to float
  %706 = fmul fast float %700, %702
  %707 = fadd fast float %706, %705
  %708 = fmul fast float %707, 0x3F70101000000000
  %709 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %503, i32 undef)  ; BufferLoad(srv,index,wot)
  %710 = extractvalue %dx.types.ResRet.i32 %709, 0
  %711 = and i32 %710, 512
  %712 = icmp eq i32 %711, 0
  br i1 %712, label %721, label %713

; <label>:713                                     ; preds = %688
  %714 = add i32 %60, 440
  %715 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %714, i32 undef)  ; BufferLoad(srv,index,wot)
  %716 = extractvalue %dx.types.ResRet.i32 %715, 0
  %717 = add i32 %716, 0
  %718 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %717, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %719 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %718, %dx.types.Handle %111, float %610, float %611, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %720 = extractvalue %dx.types.ResRet.f32 %719, 0
  br label %721

; <label>:721                                     ; preds = %713, %688
  %722 = phi float [ %720, %713 ], [ 1.000000e+00, %688 ]
  %723 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %503, i32 undef)  ; BufferLoad(srv,index,wot)
  %724 = extractvalue %dx.types.ResRet.i32 %723, 0
  %725 = and i32 %724, 33554432
  %726 = icmp eq i32 %725, 0
  br i1 %726, label %833, label %727

; <label>:727                                     ; preds = %721
  %728 = add i32 %60, 224
  %729 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %728, i32 undef)  ; BufferLoad(srv,index,wot)
  %730 = extractvalue %dx.types.ResRet.i32 %729, 0
  %731 = and i32 %730, 65535
  %732 = call float @dx.op.legacyF16ToF32(i32 131, i32 %731)  ; LegacyF16ToF32(value)
  %733 = lshr i32 %730, 16
  %734 = call float @dx.op.legacyF16ToF32(i32 131, i32 %733)  ; LegacyF16ToF32(value)
  %735 = add i32 %60, 228
  %736 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %735, i32 undef)  ; BufferLoad(srv,index,wot)
  %737 = extractvalue %dx.types.ResRet.i32 %736, 0
  %738 = and i32 %737, 65535
  %739 = call float @dx.op.legacyF16ToF32(i32 131, i32 %738)  ; LegacyF16ToF32(value)
  %740 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %284, i32 undef)  ; BufferLoad(srv,index,wot)
  %741 = extractvalue %dx.types.ResRet.i32 %740, 0
  %742 = lshr i32 %741, 24
  %743 = uitofp i32 %742 to float
  %744 = fmul fast float %743, 0x3F70101020000000
  %745 = and i32 %741, 255
  %746 = uitofp i32 %745 to float
  %747 = fmul fast float %746, 0x3F70101020000000
  %748 = lshr i32 %741, 8
  %749 = and i32 %748, 255
  %750 = uitofp i32 %749 to float
  %751 = fmul fast float %750, 0x3F70101020000000
  %752 = lshr i32 %741, 16
  %753 = and i32 %752, 255
  %754 = uitofp i32 %753 to float
  %755 = fmul fast float %754, 0x3F70101020000000
  %756 = add i32 %60, 220
  %757 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %756, i32 undef)  ; BufferLoad(srv,index,wot)
  %758 = extractvalue %dx.types.ResRet.i32 %757, 0
  %759 = lshr i32 %758, 24
  %760 = uitofp i32 %759 to float
  %761 = fmul fast float %760, 0x3F70101020000000
  %762 = and i32 %758, 255
  %763 = uitofp i32 %762 to float
  %764 = fmul fast float %763, 0x3F70101020000000
  %765 = lshr i32 %758, 8
  %766 = and i32 %765, 255
  %767 = uitofp i32 %766 to float
  %768 = fmul fast float %767, 0x3F70101020000000
  %769 = lshr i32 %758, 16
  %770 = and i32 %769, 255
  %771 = uitofp i32 %770 to float
  %772 = fmul fast float %771, 0x3F70101020000000
  %773 = bitcast float %697 to i32
  %774 = ashr i32 %773, 1
  %775 = sub nsw i32 1597463174, %774
  %776 = bitcast i32 %775 to float
  %777 = fmul fast float %697, 5.000000e-01
  %778 = fmul fast float %776, %776
  %779 = fmul fast float %778, %777
  %780 = fsub fast float 1.500000e+00, %779
  %781 = fmul fast float %776, %697
  %782 = fmul fast float %781, %780
  %783 = bitcast float %698 to i32
  %784 = ashr i32 %783, 1
  %785 = sub nsw i32 1597463174, %784
  %786 = bitcast i32 %785 to float
  %787 = fmul fast float %698, 5.000000e-01
  %788 = fmul fast float %786, %786
  %789 = fmul fast float %788, %787
  %790 = fsub fast float 1.500000e+00, %789
  %791 = fmul fast float %786, %698
  %792 = fmul fast float %791, %790
  %793 = bitcast float %699 to i32
  %794 = ashr i32 %793, 1
  %795 = sub nsw i32 1597463174, %794
  %796 = bitcast i32 %795 to float
  %797 = fmul fast float %699, 5.000000e-01
  %798 = fmul fast float %796, %796
  %799 = fmul fast float %798, %797
  %800 = fsub fast float 1.500000e+00, %799
  %801 = fmul fast float %796, %699
  %802 = fmul fast float %801, %800
  %803 = fsub fast float %782, %764
  %804 = fsub fast float %792, %768
  %805 = fsub fast float %802, %772
  %806 = fmul fast float %803, %732
  %807 = fmul fast float %804, %734
  %808 = fmul fast float %805, %739
  %809 = fadd fast float %806, %747
  %810 = fadd fast float %807, %751
  %811 = fadd fast float %808, %755
  %812 = call float @dx.op.unary.f32(i32 7, float %809)  ; Saturate(value)
  %813 = call float @dx.op.unary.f32(i32 7, float %810)  ; Saturate(value)
  %814 = call float @dx.op.unary.f32(i32 7, float %811)  ; Saturate(value)
  %815 = fmul fast float %812, %812
  %816 = fmul fast float %813, %813
  %817 = fmul fast float %814, %814
  %818 = fsub fast float %815, %697
  %819 = fsub fast float %816, %698
  %820 = fsub fast float %817, %699
  %821 = fmul fast float %818, %722
  %822 = fmul fast float %819, %722
  %823 = fmul fast float %820, %722
  %824 = fadd fast float %821, %697
  %825 = fadd fast float %822, %698
  %826 = fadd fast float %823, %699
  %827 = fadd fast float %744, %708
  %828 = fsub fast float %827, %761
  %829 = call float @dx.op.unary.f32(i32 7, float %828)  ; Saturate(value)
  %830 = fsub fast float %829, %708
  %831 = fmul fast float %830, %722
  %832 = fadd fast float %831, %708
  br label %886

; <label>:833                                     ; preds = %721
  %834 = and i32 %724, 134217728
  %835 = icmp eq i32 %834, 0
  br i1 %835, label %870, label %836

; <label>:836                                     ; preds = %833
  %837 = call float @dx.op.unary.f32(i32 24, float %289)  ; Sqrt(value)
  %838 = call float @dx.op.unary.f32(i32 24, float %293)  ; Sqrt(value)
  %839 = call float @dx.op.unary.f32(i32 24, float %297)  ; Sqrt(value)
  %840 = fadd fast float %837, -5.000000e-01
  %841 = fadd fast float %838, -5.000000e-01
  %842 = fadd fast float %839, -5.000000e-01
  %843 = fmul fast float %840, %722
  %844 = fmul fast float %841, %722
  %845 = fmul fast float %842, %722
  %846 = fadd fast float %843, 5.000000e-01
  %847 = fadd fast float %844, 5.000000e-01
  %848 = fadd fast float %845, 5.000000e-01
  %849 = call float @dx.op.unary.f32(i32 24, float %697)  ; Sqrt(value)
  %850 = call float @dx.op.unary.f32(i32 24, float %698)  ; Sqrt(value)
  %851 = call float @dx.op.unary.f32(i32 24, float %699)  ; Sqrt(value)
  %852 = fmul fast float %846, 2.000000e+00
  %853 = fsub fast float 1.000000e+00, %852
  %854 = fmul fast float %853, %849
  %855 = fadd fast float %854, %852
  %856 = fmul fast float %855, %849
  %857 = fmul fast float %847, 2.000000e+00
  %858 = fsub fast float 1.000000e+00, %857
  %859 = fmul fast float %858, %850
  %860 = fadd fast float %859, %857
  %861 = fmul fast float %860, %850
  %862 = fmul fast float %848, 2.000000e+00
  %863 = fsub fast float 1.000000e+00, %862
  %864 = fmul fast float %863, %851
  %865 = fadd fast float %864, %862
  %866 = fmul fast float %865, %851
  %867 = fmul fast float %856, %856
  %868 = fmul fast float %861, %861
  %869 = fmul fast float %866, %866
  br label %886

; <label>:870                                     ; preds = %833
  %871 = fmul fast float %289, %289
  %872 = fmul fast float %293, %293
  %873 = fmul fast float %297, %297
  %874 = fadd fast float %871, -1.000000e+00
  %875 = fadd fast float %872, -1.000000e+00
  %876 = fadd fast float %873, -1.000000e+00
  %877 = fmul fast float %722, %874
  %878 = fmul fast float %722, %875
  %879 = fmul fast float %722, %876
  %880 = fadd fast float %877, 1.000000e+00
  %881 = fadd fast float %878, 1.000000e+00
  %882 = fadd fast float %879, 1.000000e+00
  %883 = fmul fast float %880, %697
  %884 = fmul fast float %881, %698
  %885 = fmul fast float %882, %699
  br label %886

; <label>:886                                     ; preds = %870, %836, %727, %682
  %887 = phi float [ %832, %727 ], [ %708, %836 ], [ %708, %870 ], [ 0x3FA23C0BE0000000, %682 ]
  %888 = phi float [ %824, %727 ], [ %867, %836 ], [ %883, %870 ], [ 1.000000e+00, %682 ]
  %889 = phi float [ %825, %727 ], [ %868, %836 ], [ %884, %870 ], [ 1.000000e+00, %682 ]
  %890 = phi float [ %826, %727 ], [ %869, %836 ], [ %885, %870 ], [ 1.000000e+00, %682 ]
  %891 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %892 = extractvalue %dx.types.CBufRet.i32 %891, 1
  %893 = and i32 %892, 1
  %894 = icmp ne i32 %893, 0
  %895 = add i32 %60, 356
  %896 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %895, i32 undef)  ; BufferLoad(srv,index,wot)
  %897 = extractvalue %dx.types.ResRet.i32 %896, 0
  %898 = and i32 %897, 32
  %899 = icmp ne i32 %898, 0
  %900 = and i1 %894, %899
  %901 = select i1 %900, float 1.000000e+00, float %888
  %902 = select i1 %900, float 0x3FD3333340000000, float %889
  %903 = select i1 %900, float 0x3FD3333340000000, float %890
  %904 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %503, i32 undef)  ; BufferLoad(srv,index,wot)
  %905 = extractvalue %dx.types.ResRet.i32 %904, 0
  %906 = and i32 %905, 32
  %907 = icmp eq i32 %906, 0
  br i1 %907, label %980, label %908

; <label>:908                                     ; preds = %886
  %909 = add i32 %60, 92
  %910 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %909, i32 undef)  ; BufferLoad(srv,index,wot)
  %911 = extractvalue %dx.types.ResRet.i32 %910, 0
  %912 = add i32 %60, 376
  %913 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %912, i32 undef)  ; BufferLoad(srv,index,wot)
  %914 = extractvalue %dx.types.ResRet.i32 %913, 0
  %915 = add i32 %914, 0
  %916 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %915, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %917 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %916, %dx.types.Handle %110, float %610, float %611, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %918 = extractvalue %dx.types.ResRet.f32 %917, 0
  %919 = extractvalue %dx.types.ResRet.f32 %917, 1
  %920 = extractvalue %dx.types.ResRet.f32 %917, 2
  %921 = extractvalue %dx.types.ResRet.f32 %917, 3
  %922 = and i32 %911, 255
  %923 = uitofp i32 %922 to float
  %924 = lshr i32 %911, 8
  %925 = and i32 %924, 255
  %926 = uitofp i32 %925 to float
  %927 = lshr i32 %911, 16
  %928 = and i32 %927, 255
  %929 = uitofp i32 %928 to float
  %930 = fmul fast float %929, 0x3F70101000000000
  %931 = fmul fast float %918, %923
  %932 = fadd fast float %931, %926
  %933 = fmul fast float %932, 0x3F70101000000000
  %934 = fadd fast float %919, -5.000000e-01
  %935 = fadd fast float %921, -5.000000e-01
  %936 = fmul fast float %934, %930
  %937 = fmul fast float %935, %930
  %938 = fadd fast float %936, 5.000000e-01
  %939 = fadd fast float %937, 5.000000e-01
  %940 = fmul fast float %938, 2.000000e+00
  %941 = fadd fast float %940, -1.000000e+00
  %942 = fmul fast float %939, 2.000000e+00
  %943 = fadd fast float %942, -1.000000e+00
  %944 = fadd fast float %941, %943
  %945 = fmul fast float %944, 5.000000e-01
  %946 = fsub fast float %941, %943
  %947 = fmul fast float %946, 5.000000e-01
  %948 = call float @dx.op.unary.f32(i32 6, float %945)  ; FAbs(value)
  %949 = fsub fast float 1.000000e+00, %948
  %950 = call float @dx.op.unary.f32(i32 6, float %947)  ; FAbs(value)
  %951 = fsub fast float %949, %950
  %952 = call float @dx.op.dot3.f32(i32 55, float %945, float %947, float %951, float %945, float %947, float %951)  ; Dot3(ax,ay,az,bx,by,bz)
  %953 = call float @dx.op.unary.f32(i32 25, float %952)  ; Rsqrt(value)
  %954 = fmul fast float %945, %953
  %955 = fmul fast float %947, %953
  %956 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %503, i32 undef)  ; BufferLoad(srv,index,wot)
  %957 = extractvalue %dx.types.ResRet.i32 %956, 0
  %958 = and i32 %957, 67108864
  %959 = icmp eq i32 %958, 0
  br i1 %959, label %976, label %960

; <label>:960                                     ; preds = %908
  %961 = add i32 %60, 280
  %962 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %961, i32 undef)  ; BufferLoad(srv,index,wot)
  %963 = extractvalue %dx.types.ResRet.i32 %962, 0
  %964 = and i32 %963, 65535
  %965 = call float @dx.op.legacyF16ToF32(i32 131, i32 %964)  ; LegacyF16ToF32(value)
  %966 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %520, i32 undef)  ; BufferLoad(srv,index,wot)
  %967 = extractvalue %dx.types.ResRet.i32 %966, 0
  %968 = and i32 %967, 65535
  %969 = call float @dx.op.legacyF16ToF32(i32 131, i32 %968)  ; LegacyF16ToF32(value)
  %970 = lshr i32 %963, 16
  %971 = call float @dx.op.legacyF16ToF32(i32 131, i32 %970)  ; LegacyF16ToF32(value)
  %972 = fsub fast float %933, %971
  %973 = fmul fast float %972, %965
  %974 = fadd fast float %973, %969
  %975 = call float @dx.op.unary.f32(i32 7, float %974)  ; Saturate(value)
  br label %976

; <label>:976                                     ; preds = %960, %908
  %977 = phi float [ %975, %960 ], [ %933, %908 ]
  %978 = call float @dx.op.dot2.f32(i32 54, float %954, float %955, float %514, float %515)  ; Dot2(ax,ay,bx,by)
  %979 = call float @dx.op.dot2.f32(i32 54, float %954, float %955, float %516, float %517)  ; Dot2(ax,ay,bx,by)
  br label %980

; <label>:980                                     ; preds = %976, %886
  %981 = phi float [ %977, %976 ], [ 0x3FD6666660000000, %886 ]
  %982 = phi float [ %978, %976 ], [ 0.000000e+00, %886 ]
  %983 = phi float [ %979, %976 ], [ 0.000000e+00, %886 ]
  %984 = phi float [ %920, %976 ], [ 1.000000e+00, %886 ]
  %985 = add i32 %60, 160
  %986 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %985, i32 undef)  ; BufferLoad(srv,index,wot)
  %987 = extractvalue %dx.types.ResRet.i32 %986, 0
  %988 = lshr i32 %987, 22
  %989 = shl nuw nsw i32 %988, 5
  %990 = call float @dx.op.legacyF16ToF32(i32 131, i32 %989)  ; LegacyF16ToF32(value)
  %991 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %503, i32 undef)  ; BufferLoad(srv,index,wot)
  %992 = extractvalue %dx.types.ResRet.i32 %991, 0
  %993 = and i32 %992, 64
  %994 = icmp eq i32 %993, 0
  br i1 %994, label %1028, label %995

; <label>:995                                     ; preds = %980
  %996 = add i32 %60, 392
  %997 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %996, i32 undef)  ; BufferLoad(srv,index,wot)
  %998 = extractvalue %dx.types.ResRet.i32 %997, 0
  %999 = add i32 %998, 0
  %1000 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %999, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1001 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %503, i32 undef)  ; BufferLoad(srv,index,wot)
  %1002 = extractvalue %dx.types.ResRet.i32 %1001, 0
  %1003 = and i32 %1002, 131072
  %1004 = icmp eq i32 %1003, 0
  %1005 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1000, %dx.types.Handle %110, float %610, float %611, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1006 = extractvalue %dx.types.ResRet.f32 %1005, 0
  %1007 = extractvalue %dx.types.ResRet.f32 %1005, 1
  %1008 = extractvalue %dx.types.ResRet.f32 %1005, 2
  %1009 = fmul fast float %1006, %277
  %1010 = fmul fast float %1007, %280
  %1011 = fmul fast float %1008, %283
  br i1 %1004, label %1018, label %1012

; <label>:1012                                    ; preds = %995
  %1013 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1014 = extractvalue %dx.types.CBufRet.f32 %1013, 0
  %1015 = fmul fast float %1014, %1009
  %1016 = fmul fast float %1014, %1010
  %1017 = fmul fast float %1014, %1011
  br label %1018

; <label>:1018                                    ; preds = %1012, %995
  %1019 = phi float [ %1015, %1012 ], [ %1009, %995 ]
  %1020 = phi float [ %1016, %1012 ], [ %1010, %995 ]
  %1021 = phi float [ %1017, %1012 ], [ %1011, %995 ]
  %1022 = fmul fast float %1019, %990
  %1023 = select i1 %260, float %1022, float %1019
  %1024 = call float @dx.op.dot3.f32(i32 55, float %1023, float %1020, float %1021, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1025 = select i1 %260, float 0.000000e+00, float %1019
  %1026 = select i1 %260, float %1024, float %1020
  %1027 = select i1 %260, float 0.000000e+00, float %1021
  br label %1028

; <label>:1028                                    ; preds = %1018, %980
  %1029 = phi float [ %1025, %1018 ], [ 0.000000e+00, %980 ]
  %1030 = phi float [ %1026, %1018 ], [ 0.000000e+00, %980 ]
  %1031 = phi float [ %1027, %1018 ], [ 0.000000e+00, %980 ]
  %1032 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %503, i32 undef)  ; BufferLoad(srv,index,wot)
  %1033 = extractvalue %dx.types.ResRet.i32 %1032, 0
  %1034 = and i32 %1033, 1024
  %1035 = icmp eq i32 %1034, 0
  br i1 %1035, label %1066, label %1036

; <label>:1036                                    ; preds = %1028
  %1037 = add i32 %60, 152
  %1038 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1037, i32 undef)  ; BufferLoad(srv,index,wot)
  %1039 = extractvalue %dx.types.ResRet.i32 %1038, 0
  %1040 = and i32 %1039, 255
  %1041 = uitofp i32 %1040 to float
  %1042 = fmul fast float %1041, 0x3F70101020000000
  %1043 = lshr i32 %1039, 8
  %1044 = and i32 %1043, 255
  %1045 = uitofp i32 %1044 to float
  %1046 = fmul fast float %1045, 0x3F70101020000000
  %1047 = lshr i32 %1039, 16
  %1048 = and i32 %1047, 255
  %1049 = uitofp i32 %1048 to float
  %1050 = fmul fast float %1049, 0x3F70101020000000
  %1051 = fmul fast float %1042, %1042
  %1052 = fmul fast float %1046, %1046
  %1053 = fmul fast float %1050, %1050
  %1054 = add i32 %60, 456
  %1055 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1054, i32 undef)  ; BufferLoad(srv,index,wot)
  %1056 = extractvalue %dx.types.ResRet.i32 %1055, 0
  %1057 = add i32 %1056, 0
  %1058 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1057, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1059 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1058, %dx.types.Handle %111, float %610, float %611, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1060 = extractvalue %dx.types.ResRet.f32 %1059, 0
  %1061 = extractvalue %dx.types.ResRet.f32 %1059, 1
  %1062 = extractvalue %dx.types.ResRet.f32 %1059, 2
  %1063 = fmul fast float %1051, %1060
  %1064 = fmul fast float %1052, %1061
  %1065 = fmul fast float %1053, %1062
  br label %1066

; <label>:1066                                    ; preds = %1036, %1028
  %1067 = phi float [ %1063, %1036 ], [ 0.000000e+00, %1028 ]
  %1068 = phi float [ %1064, %1036 ], [ 0.000000e+00, %1028 ]
  %1069 = phi float [ %1065, %1036 ], [ 0.000000e+00, %1028 ]
  %1070 = fcmp fast ogt float %1067, 0.000000e+00
  %1071 = fcmp fast ogt float %1068, 0.000000e+00
  %1072 = fcmp fast ogt float %1069, 0.000000e+00
  %1073 = call float @dx.op.unary.f32(i32 23, float %1067)  ; Log(value)
  %1074 = call float @dx.op.unary.f32(i32 23, float %1068)  ; Log(value)
  %1075 = call float @dx.op.unary.f32(i32 23, float %1069)  ; Log(value)
  %1076 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %985, i32 undef)  ; BufferLoad(srv,index,wot)
  %1077 = extractvalue %dx.types.ResRet.i32 %1076, 0
  %1078 = lshr i32 %1077, 7
  %1079 = and i32 %1078, 32752
  %1080 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1079)  ; LegacyF16ToF32(value)
  %1081 = fmul fast float %1073, 0xBFE62E4300000000
  %1082 = fmul fast float %1081, %1080
  %1083 = fmul fast float %1074, 0xBFE62E4300000000
  %1084 = fmul fast float %1083, %1080
  %1085 = fmul fast float %1075, 0xBFE62E4300000000
  %1086 = fmul fast float %1085, %1080
  %1087 = select i1 %1070, float %1082, float 1.270000e+02
  %1088 = select i1 %1071, float %1084, float 1.270000e+02
  %1089 = select i1 %1072, float %1086, float 1.270000e+02
  %1090 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %503, i32 undef)  ; BufferLoad(srv,index,wot)
  %1091 = extractvalue %dx.types.ResRet.i32 %1090, 0
  %1092 = and i32 %1091, 10240
  %1093 = icmp eq i32 %1092, 0
  br i1 %1093, label %1114, label %1094

; <label>:1094                                    ; preds = %1066
  %1095 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %503, i32 undef)  ; BufferLoad(srv,index,wot)
  %1096 = extractvalue %dx.types.ResRet.i32 %1095, 0
  %1097 = and i32 %1096, 2048
  %1098 = icmp eq i32 %1097, 0
  br i1 %1098, label %1114, label %1099

; <label>:1099                                    ; preds = %1094
  %1100 = add i32 %60, 472
  %1101 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1100, i32 undef)  ; BufferLoad(srv,index,wot)
  %1102 = extractvalue %dx.types.ResRet.i32 %1101, 0
  %1103 = add i32 %1102, 0
  %1104 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1103, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1105 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1104, %dx.types.Handle %111, float %610, float %611, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1106 = extractvalue %dx.types.ResRet.f32 %1105, 3
  %1107 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %985, i32 undef)  ; BufferLoad(srv,index,wot)
  %1108 = extractvalue %dx.types.ResRet.i32 %1107, 0
  %1109 = shl i32 %1108, 4
  %1110 = and i32 %1109, 32752
  %1111 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1110)  ; LegacyF16ToF32(value)
  %1112 = fmul fast float %1111, %1106
  %1113 = call float @dx.op.binary.f32(i32 35, float %1112, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1114

; <label>:1114                                    ; preds = %1099, %1094, %1066
  %1115 = phi float [ %1113, %1099 ], [ 0x3F70101020000000, %1094 ], [ 0x3F70101020000000, %1066 ]
  %1116 = add i32 %60, 96
  %1117 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1116, i32 undef)  ; BufferLoad(srv,index,wot)
  %1118 = extractvalue %dx.types.ResRet.i32 %1117, 0
  %1119 = and i32 %1118, 255
  %1120 = uitofp i32 %1119 to float
  %1121 = lshr i32 %1118, 8
  %1122 = and i32 %1121, 255
  %1123 = uitofp i32 %1122 to float
  %1124 = call float @dx.op.dot3.f32(i32 55, float %901, float %902, float %903, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1125 = fmul fast float %1123, %1124
  %1126 = fadd fast float %1125, %1120
  %1127 = fmul fast float %1126, 0x3F70101020000000
  %1128 = call float @dx.op.unary.f32(i32 7, float %1127)  ; Saturate(value)
  br label %1129

; <label>:1129                                    ; preds = %1114, %496
  %1130 = phi float [ 0.000000e+00, %496 ], [ %982, %1114 ]
  %1131 = phi float [ 0.000000e+00, %496 ], [ %983, %1114 ]
  %1132 = phi float [ 0.000000e+00, %496 ], [ %901, %1114 ]
  %1133 = phi float [ 0.000000e+00, %496 ], [ %902, %1114 ]
  %1134 = phi float [ 0.000000e+00, %496 ], [ %903, %1114 ]
  %1135 = phi float [ 0.000000e+00, %496 ], [ %1029, %1114 ]
  %1136 = phi float [ 0.000000e+00, %496 ], [ %1030, %1114 ]
  %1137 = phi float [ 0.000000e+00, %496 ], [ %1031, %1114 ]
  %1138 = phi float [ 0.000000e+00, %496 ], [ %1087, %1114 ]
  %1139 = phi float [ 0.000000e+00, %496 ], [ %1088, %1114 ]
  %1140 = phi float [ 0.000000e+00, %496 ], [ %1089, %1114 ]
  %1141 = phi float [ 0.000000e+00, %496 ], [ %887, %1114 ]
  %1142 = phi float [ 0.000000e+00, %496 ], [ %683, %1114 ]
  %1143 = phi float [ 0.000000e+00, %496 ], [ %981, %1114 ]
  %1144 = phi float [ 0.000000e+00, %496 ], [ %984, %1114 ]
  %1145 = phi float [ 0.000000e+00, %496 ], [ %1115, %1114 ]
  %1146 = phi float [ 0.000000e+00, %496 ], [ %1128, %1114 ]
  br i1 %444, label %2018, label %1147

; <label>:1147                                    ; preds = %1129
  %1148 = icmp ult i32 %502, 2
  %1149 = add i32 %60, 40
  %1150 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1149, i32 undef)  ; BufferLoad(srv,index,wot)
  %1151 = extractvalue %dx.types.ResRet.i32 %1150, 0
  %1152 = add i32 %60, 44
  %1153 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1152, i32 undef)  ; BufferLoad(srv,index,wot)
  %1154 = extractvalue %dx.types.ResRet.i32 %1153, 0
  %1155 = or i32 %1154, %1151
  %1156 = icmp eq i32 %1155, 0
  br i1 %1156, label %2018, label %1157

; <label>:1157                                    ; preds = %1147
  %1158 = and i32 %1151, 262144
  %1159 = icmp ne i32 %1158, 0
  %1160 = select i1 %1159, float %65, float 1.000000e+00
  %1161 = select i1 %1159, float %66, float 0.000000e+00
  %1162 = select i1 %1159, float %67, float 0.000000e+00
  %1163 = select i1 %1159, float %68, float 1.000000e+00
  %1164 = select i1 %1159, float %69, float %92
  %1165 = select i1 %1159, float %70, float %93
  %1166 = add i32 %60, 300
  %1167 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1166, i32 undef)  ; BufferLoad(srv,index,wot)
  %1168 = extractvalue %dx.types.ResRet.i32 %1167, 0
  %1169 = lshr i32 %1168, 16
  %1170 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1169)  ; LegacyF16ToF32(value)
  %1171 = fmul fast float %1170, 0x3F50624DE0000000
  %1172 = add i32 %60, 104
  %1173 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1172, i32 undef)  ; BufferLoad(srv,index,wot)
  %1174 = extractvalue %dx.types.ResRet.i32 %1173, 0
  %1175 = lshr i32 %1174, 16
  %1176 = and i32 %1175, 255
  %1177 = lshr i32 %1174, 24
  %1178 = add i32 %60, 308
  %1179 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1178, i32 undef)  ; BufferLoad(srv,index,wot)
  %1180 = extractvalue %dx.types.ResRet.i32 %1179, 0
  %1181 = and i32 %1180, 65535
  %1182 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1181)  ; LegacyF16ToF32(value)
  %1183 = lshr i32 %1180, 16
  %1184 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1183)  ; LegacyF16ToF32(value)
  %1185 = add i32 %60, 48
  %1186 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1185, i32 undef)  ; BufferLoad(srv,index,wot)
  %1187 = extractvalue %dx.types.ResRet.i32 %1186, 0
  %1188 = lshr i32 %1187, 22
  %1189 = shl nuw nsw i32 %1188, 5
  %1190 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1189)  ; LegacyF16ToF32(value)
  %1191 = shl i32 %1187, 4
  %1192 = and i32 %1191, 32752
  %1193 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1192)  ; LegacyF16ToF32(value)
  %1194 = lshr i32 %1187, 7
  %1195 = and i32 %1194, 32752
  %1196 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1195)  ; LegacyF16ToF32(value)
  %1197 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1198 = extractvalue %dx.types.CBufRet.f32 %1197, 3
  %1199 = fmul fast float %1198, 1.000000e+03
  %1200 = fmul fast float %354, %1199
  %1201 = call float @dx.op.unary.f32(i32 22, float %1200)  ; Frc(value)
  %1202 = fadd fast float %1201, %344
  %1203 = fmul fast float %355, %1199
  %1204 = call float @dx.op.unary.f32(i32 22, float %1203)  ; Frc(value)
  %1205 = fadd fast float %1204, %346
  %1206 = fmul fast float %1171, %1199
  %1207 = call float @dx.op.unary.f32(i32 22, float %1206)  ; Frc(value)
  %1208 = fmul fast float %1207, 0x401921FB60000000
  %1209 = fadd fast float %1208, %1190
  %1210 = call float @dx.op.unary.f32(i32 13, float %1209)  ; Sin(value)
  %1211 = call float @dx.op.unary.f32(i32 12, float %1209)  ; Cos(value)
  %1212 = fsub fast float -0.000000e+00, %1210
  %1213 = fadd fast float %1164, -5.000000e-01
  %1214 = fadd fast float %1165, -5.000000e-01
  %1215 = fmul fast float %1182, %1213
  %1216 = fmul fast float %1184, %1214
  %1217 = fadd fast float %1215, 5.000000e-01
  %1218 = fadd fast float %1216, 5.000000e-01
  %1219 = fmul fast float %1193, %1217
  %1220 = fmul fast float %1196, %1218
  %1221 = fmul fast float %1211, %1219
  %1222 = call float @dx.op.tertiary.f32(i32 46, float %1212, float %1220, float %1221)  ; FMad(a,b,c)
  %1223 = fmul fast float %1210, %1219
  %1224 = call float @dx.op.tertiary.f32(i32 46, float %1211, float %1220, float %1223)  ; FMad(a,b,c)
  %1225 = fadd fast float %1202, %1222
  %1226 = fadd fast float %1205, %1224
  %1227 = icmp ugt i32 %1176, 1
  %1228 = icmp ugt i32 %1174, 33554431
  %1229 = or i1 %1228, %1227
  br i1 %1229, label %1230, label %1255

; <label>:1230                                    ; preds = %1157
  %1231 = add i32 %60, 244
  %1232 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1231, i32 undef)  ; BufferLoad(srv,index,wot)
  %1233 = extractvalue %dx.types.ResRet.i32 %1232, 0
  %1234 = lshr i32 %1233, 16
  %1235 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1234)  ; LegacyF16ToF32(value)
  %1236 = fmul fast float %1198, %1235
  %1237 = call float @dx.op.unary.f32(i32 22, float %1236)  ; Frc(value)
  %1238 = mul nuw nsw i32 %1176, %1177
  %1239 = uitofp i32 %1238 to float
  %1240 = fmul fast float %1237, %1239
  %1241 = call float @dx.op.unary.f32(i32 27, float %1240)  ; Round_ni(value)
  %1242 = fptoui float %1241 to i32
  %1243 = urem i32 %1242, %1176
  %1244 = udiv i32 %1242, %1177
  %1245 = call float @dx.op.unary.f32(i32 22, float %1225)  ; Frc(value)
  %1246 = call float @dx.op.unary.f32(i32 22, float %1226)  ; Frc(value)
  %1247 = uitofp i32 %1243 to float
  %1248 = uitofp i32 %1244 to float
  %1249 = fadd fast float %1245, %1247
  %1250 = fadd fast float %1246, %1248
  %1251 = uitofp i32 %1176 to float
  %1252 = uitofp i32 %1177 to float
  %1253 = fdiv fast float %1249, %1251
  %1254 = fdiv fast float %1250, %1252
  br label %1255

; <label>:1255                                    ; preds = %1230, %1157
  %1256 = phi float [ %1253, %1230 ], [ %1225, %1157 ]
  %1257 = phi float [ %1254, %1230 ], [ %1226, %1157 ]
  %1258 = and i32 %1151, 256
  %1259 = icmp eq i32 %1258, 0
  br i1 %1259, label %1306, label %1260

; <label>:1260                                    ; preds = %1255
  %1261 = add i32 %60, 428
  %1262 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1261, i32 undef)  ; BufferLoad(srv,index,wot)
  %1263 = extractvalue %dx.types.ResRet.i32 %1262, 0
  %1264 = add i32 %1263, 0
  %1265 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1264, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1266 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1265, %dx.types.Handle %111, float %1256, float %1257, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1267 = extractvalue %dx.types.ResRet.f32 %1266, 0
  %1268 = add i32 %60, 116
  %1269 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1268, i32 undef)  ; BufferLoad(srv,index,wot)
  %1270 = extractvalue %dx.types.ResRet.i32 %1269, 0
  %1271 = shl i32 %1270, 4
  %1272 = and i32 %1271, 32752
  %1273 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1272)  ; LegacyF16ToF32(value)
  %1274 = lshr i32 %1270, 7
  %1275 = and i32 %1274, 32752
  %1276 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1275)  ; LegacyF16ToF32(value)
  %1277 = fsub fast float 1.000000e+00, %499
  %1278 = call float @dx.op.binary.f32(i32 35, float %1277, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1279 = bitcast float %499 to i32
  %1280 = sitofp i32 %1279 to float
  %1281 = fadd fast float %1280, 0xC1CFBF8940000000
  %1282 = fmul fast float %1276, %1281
  %1283 = fadd fast float %1282, 0x41CFBF8940000000
  %1284 = fptosi float %1283 to i32
  %1285 = bitcast i32 %1284 to float
  %1286 = bitcast float %1278 to i32
  %1287 = sitofp i32 %1286 to float
  %1288 = fadd fast float %1287, 0xC1CFBF8940000000
  %1289 = fmul fast float %1288, %1276
  %1290 = fadd fast float %1289, 0x41CFBF8940000000
  %1291 = fptosi float %1290 to i32
  %1292 = bitcast i32 %1291 to float
  %1293 = fmul fast float %1285, %1273
  %1294 = fmul fast float %1292, %1273
  %1295 = fsub fast float %1278, %1293
  %1296 = fadd fast float %1294, %1278
  %1297 = call float @dx.op.unary.f32(i32 7, float %1295)  ; Saturate(value)
  %1298 = call float @dx.op.unary.f32(i32 7, float %1296)  ; Saturate(value)
  %1299 = fsub fast float %1267, %1297
  %1300 = fsub fast float %1298, %1297
  %1301 = bitcast float %1300 to i32
  %1302 = sub nsw i32 2129859010, %1301
  %1303 = bitcast i32 %1302 to float
  %1304 = fmul fast float %1303, %1299
  %1305 = call float @dx.op.unary.f32(i32 7, float %1304)  ; Saturate(value)
  br label %1306

; <label>:1306                                    ; preds = %1260, %1255
  %1307 = phi float [ %1305, %1260 ], [ %499, %1255 ]
  %1308 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1149, i32 undef)  ; BufferLoad(srv,index,wot)
  %1309 = extractvalue %dx.types.ResRet.i32 %1308, 0
  %1310 = and i32 %1309, 128
  %1311 = icmp eq i32 %1310, 0
  br i1 %1311, label %1328, label %1312

; <label>:1312                                    ; preds = %1306
  %1313 = add i32 %60, 412
  %1314 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1313, i32 undef)  ; BufferLoad(srv,index,wot)
  %1315 = extractvalue %dx.types.ResRet.i32 %1314, 0
  %1316 = add i32 %1315, 0
  %1317 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1316, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1318 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1317, %dx.types.Handle %111, float %1256, float %1257, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1319 = extractvalue %dx.types.ResRet.f32 %1318, 0
  %1320 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1149, i32 undef)  ; BufferLoad(srv,index,wot)
  %1321 = extractvalue %dx.types.ResRet.i32 %1320, 0
  %1322 = and i32 %1321, 524288
  %1323 = icmp ne i32 %1322, 0
  %1324 = fcmp fast ogt float %1319, 0x3FE0101020000000
  %1325 = select i1 %1324, float 1.000000e+00, float 0.000000e+00
  %1326 = select i1 %1323, float %1325, float %1319
  %1327 = fmul fast float %1326, %1307
  br label %1328

; <label>:1328                                    ; preds = %1312, %1306
  %1329 = phi float [ %1327, %1312 ], [ %1307, %1306 ]
  %1330 = fcmp fast ult float %1329, 0x3F70101020000000
  br i1 %1330, label %2018, label %1331

; <label>:1331                                    ; preds = %1328
  %1332 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1149, i32 undef)  ; BufferLoad(srv,index,wot)
  %1333 = extractvalue %dx.types.ResRet.i32 %1332, 0
  %1334 = and i32 %1333, 16
  %1335 = icmp eq i32 %1334, 0
  br i1 %1335, label %1534, label %1336

; <label>:1336                                    ; preds = %1331
  %1337 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1172, i32 undef)  ; BufferLoad(srv,index,wot)
  %1338 = extractvalue %dx.types.ResRet.i32 %1337, 0
  %1339 = add i32 %60, 364
  %1340 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1339, i32 undef)  ; BufferLoad(srv,index,wot)
  %1341 = extractvalue %dx.types.ResRet.i32 %1340, 0
  %1342 = add i32 %1341, 0
  %1343 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1342, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1344 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1343, %dx.types.Handle %110, float %1256, float %1257, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1345 = extractvalue %dx.types.ResRet.f32 %1344, 0
  %1346 = extractvalue %dx.types.ResRet.f32 %1344, 1
  %1347 = extractvalue %dx.types.ResRet.f32 %1344, 2
  %1348 = extractvalue %dx.types.ResRet.f32 %1344, 3
  %1349 = and i32 %1338, 255
  %1350 = uitofp i32 %1349 to float
  %1351 = lshr i32 %1338, 8
  %1352 = and i32 %1351, 255
  %1353 = uitofp i32 %1352 to float
  %1354 = fmul fast float %1348, %1350
  %1355 = fadd fast float %1354, %1353
  %1356 = fmul fast float %1355, 0x3F70101000000000
  %1357 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1149, i32 undef)  ; BufferLoad(srv,index,wot)
  %1358 = extractvalue %dx.types.ResRet.i32 %1357, 0
  %1359 = and i32 %1358, 512
  %1360 = icmp eq i32 %1359, 0
  br i1 %1360, label %1369, label %1361

; <label>:1361                                    ; preds = %1336
  %1362 = add i32 %60, 444
  %1363 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1362, i32 undef)  ; BufferLoad(srv,index,wot)
  %1364 = extractvalue %dx.types.ResRet.i32 %1363, 0
  %1365 = add i32 %1364, 0
  %1366 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1365, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1367 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1366, %dx.types.Handle %111, float %1256, float %1257, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1368 = extractvalue %dx.types.ResRet.f32 %1367, 0
  br label %1369

; <label>:1369                                    ; preds = %1361, %1336
  %1370 = phi float [ %1368, %1361 ], [ 1.000000e+00, %1336 ]
  %1371 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1149, i32 undef)  ; BufferLoad(srv,index,wot)
  %1372 = extractvalue %dx.types.ResRet.i32 %1371, 0
  %1373 = and i32 %1372, 33554432
  %1374 = icmp eq i32 %1373, 0
  br i1 %1374, label %1481, label %1375

; <label>:1375                                    ; preds = %1369
  %1376 = add i32 %60, 240
  %1377 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1376, i32 undef)  ; BufferLoad(srv,index,wot)
  %1378 = extractvalue %dx.types.ResRet.i32 %1377, 0
  %1379 = and i32 %1378, 65535
  %1380 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1379)  ; LegacyF16ToF32(value)
  %1381 = lshr i32 %1378, 16
  %1382 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1381)  ; LegacyF16ToF32(value)
  %1383 = add i32 %60, 244
  %1384 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1383, i32 undef)  ; BufferLoad(srv,index,wot)
  %1385 = extractvalue %dx.types.ResRet.i32 %1384, 0
  %1386 = and i32 %1385, 65535
  %1387 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1386)  ; LegacyF16ToF32(value)
  %1388 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %326, i32 undef)  ; BufferLoad(srv,index,wot)
  %1389 = extractvalue %dx.types.ResRet.i32 %1388, 0
  %1390 = lshr i32 %1389, 24
  %1391 = uitofp i32 %1390 to float
  %1392 = fmul fast float %1391, 0x3F70101020000000
  %1393 = and i32 %1389, 255
  %1394 = uitofp i32 %1393 to float
  %1395 = fmul fast float %1394, 0x3F70101020000000
  %1396 = lshr i32 %1389, 8
  %1397 = and i32 %1396, 255
  %1398 = uitofp i32 %1397 to float
  %1399 = fmul fast float %1398, 0x3F70101020000000
  %1400 = lshr i32 %1389, 16
  %1401 = and i32 %1400, 255
  %1402 = uitofp i32 %1401 to float
  %1403 = fmul fast float %1402, 0x3F70101020000000
  %1404 = add i32 %60, 236
  %1405 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1404, i32 undef)  ; BufferLoad(srv,index,wot)
  %1406 = extractvalue %dx.types.ResRet.i32 %1405, 0
  %1407 = lshr i32 %1406, 24
  %1408 = uitofp i32 %1407 to float
  %1409 = fmul fast float %1408, 0x3F70101020000000
  %1410 = and i32 %1406, 255
  %1411 = uitofp i32 %1410 to float
  %1412 = fmul fast float %1411, 0x3F70101020000000
  %1413 = lshr i32 %1406, 8
  %1414 = and i32 %1413, 255
  %1415 = uitofp i32 %1414 to float
  %1416 = fmul fast float %1415, 0x3F70101020000000
  %1417 = lshr i32 %1406, 16
  %1418 = and i32 %1417, 255
  %1419 = uitofp i32 %1418 to float
  %1420 = fmul fast float %1419, 0x3F70101020000000
  %1421 = bitcast float %1345 to i32
  %1422 = ashr i32 %1421, 1
  %1423 = sub nsw i32 1597463174, %1422
  %1424 = bitcast i32 %1423 to float
  %1425 = fmul fast float %1345, 5.000000e-01
  %1426 = fmul fast float %1424, %1424
  %1427 = fmul fast float %1426, %1425
  %1428 = fsub fast float 1.500000e+00, %1427
  %1429 = fmul fast float %1424, %1345
  %1430 = fmul fast float %1429, %1428
  %1431 = bitcast float %1346 to i32
  %1432 = ashr i32 %1431, 1
  %1433 = sub nsw i32 1597463174, %1432
  %1434 = bitcast i32 %1433 to float
  %1435 = fmul fast float %1346, 5.000000e-01
  %1436 = fmul fast float %1434, %1434
  %1437 = fmul fast float %1436, %1435
  %1438 = fsub fast float 1.500000e+00, %1437
  %1439 = fmul fast float %1434, %1346
  %1440 = fmul fast float %1439, %1438
  %1441 = bitcast float %1347 to i32
  %1442 = ashr i32 %1441, 1
  %1443 = sub nsw i32 1597463174, %1442
  %1444 = bitcast i32 %1443 to float
  %1445 = fmul fast float %1347, 5.000000e-01
  %1446 = fmul fast float %1444, %1444
  %1447 = fmul fast float %1446, %1445
  %1448 = fsub fast float 1.500000e+00, %1447
  %1449 = fmul fast float %1444, %1347
  %1450 = fmul fast float %1449, %1448
  %1451 = fsub fast float %1430, %1412
  %1452 = fsub fast float %1440, %1416
  %1453 = fsub fast float %1450, %1420
  %1454 = fmul fast float %1451, %1380
  %1455 = fmul fast float %1452, %1382
  %1456 = fmul fast float %1453, %1387
  %1457 = fadd fast float %1454, %1395
  %1458 = fadd fast float %1455, %1399
  %1459 = fadd fast float %1456, %1403
  %1460 = call float @dx.op.unary.f32(i32 7, float %1457)  ; Saturate(value)
  %1461 = call float @dx.op.unary.f32(i32 7, float %1458)  ; Saturate(value)
  %1462 = call float @dx.op.unary.f32(i32 7, float %1459)  ; Saturate(value)
  %1463 = fmul fast float %1460, %1460
  %1464 = fmul fast float %1461, %1461
  %1465 = fmul fast float %1462, %1462
  %1466 = fsub fast float %1463, %1345
  %1467 = fsub fast float %1464, %1346
  %1468 = fsub fast float %1465, %1347
  %1469 = fmul fast float %1466, %1370
  %1470 = fmul fast float %1467, %1370
  %1471 = fmul fast float %1468, %1370
  %1472 = fadd fast float %1469, %1345
  %1473 = fadd fast float %1470, %1346
  %1474 = fadd fast float %1471, %1347
  %1475 = fadd fast float %1392, %1356
  %1476 = fsub fast float %1475, %1409
  %1477 = call float @dx.op.unary.f32(i32 7, float %1476)  ; Saturate(value)
  %1478 = fsub fast float %1477, %1356
  %1479 = fmul fast float %1478, %1370
  %1480 = fadd fast float %1479, %1356
  br label %1534

; <label>:1481                                    ; preds = %1369
  %1482 = and i32 %1372, 134217728
  %1483 = icmp eq i32 %1482, 0
  br i1 %1483, label %1518, label %1484

; <label>:1484                                    ; preds = %1481
  %1485 = call float @dx.op.unary.f32(i32 24, float %331)  ; Sqrt(value)
  %1486 = call float @dx.op.unary.f32(i32 24, float %335)  ; Sqrt(value)
  %1487 = call float @dx.op.unary.f32(i32 24, float %339)  ; Sqrt(value)
  %1488 = fadd fast float %1485, -5.000000e-01
  %1489 = fadd fast float %1486, -5.000000e-01
  %1490 = fadd fast float %1487, -5.000000e-01
  %1491 = fmul fast float %1488, %1370
  %1492 = fmul fast float %1489, %1370
  %1493 = fmul fast float %1490, %1370
  %1494 = fadd fast float %1491, 5.000000e-01
  %1495 = fadd fast float %1492, 5.000000e-01
  %1496 = fadd fast float %1493, 5.000000e-01
  %1497 = call float @dx.op.unary.f32(i32 24, float %1345)  ; Sqrt(value)
  %1498 = call float @dx.op.unary.f32(i32 24, float %1346)  ; Sqrt(value)
  %1499 = call float @dx.op.unary.f32(i32 24, float %1347)  ; Sqrt(value)
  %1500 = fmul fast float %1494, 2.000000e+00
  %1501 = fsub fast float 1.000000e+00, %1500
  %1502 = fmul fast float %1501, %1497
  %1503 = fadd fast float %1502, %1500
  %1504 = fmul fast float %1503, %1497
  %1505 = fmul fast float %1495, 2.000000e+00
  %1506 = fsub fast float 1.000000e+00, %1505
  %1507 = fmul fast float %1506, %1498
  %1508 = fadd fast float %1507, %1505
  %1509 = fmul fast float %1508, %1498
  %1510 = fmul fast float %1496, 2.000000e+00
  %1511 = fsub fast float 1.000000e+00, %1510
  %1512 = fmul fast float %1511, %1499
  %1513 = fadd fast float %1512, %1510
  %1514 = fmul fast float %1513, %1499
  %1515 = fmul fast float %1504, %1504
  %1516 = fmul fast float %1509, %1509
  %1517 = fmul fast float %1514, %1514
  br label %1534

; <label>:1518                                    ; preds = %1481
  %1519 = fmul fast float %331, %331
  %1520 = fmul fast float %335, %335
  %1521 = fmul fast float %339, %339
  %1522 = fadd fast float %1519, -1.000000e+00
  %1523 = fadd fast float %1520, -1.000000e+00
  %1524 = fadd fast float %1521, -1.000000e+00
  %1525 = fmul fast float %1370, %1522
  %1526 = fmul fast float %1370, %1523
  %1527 = fmul fast float %1370, %1524
  %1528 = fadd fast float %1525, 1.000000e+00
  %1529 = fadd fast float %1526, 1.000000e+00
  %1530 = fadd fast float %1527, 1.000000e+00
  %1531 = fmul fast float %1528, %1345
  %1532 = fmul fast float %1529, %1346
  %1533 = fmul fast float %1530, %1347
  br label %1534

; <label>:1534                                    ; preds = %1518, %1484, %1375, %1331
  %1535 = phi float [ %1480, %1375 ], [ %1356, %1484 ], [ %1356, %1518 ], [ 0x3FA23C0BE0000000, %1331 ]
  %1536 = phi float [ %1472, %1375 ], [ %1515, %1484 ], [ %1531, %1518 ], [ 1.000000e+00, %1331 ]
  %1537 = phi float [ %1473, %1375 ], [ %1516, %1484 ], [ %1532, %1518 ], [ 1.000000e+00, %1331 ]
  %1538 = phi float [ %1474, %1375 ], [ %1517, %1484 ], [ %1533, %1518 ], [ 1.000000e+00, %1331 ]
  %1539 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1540 = extractvalue %dx.types.CBufRet.i32 %1539, 1
  %1541 = and i32 %1540, 1
  %1542 = icmp ne i32 %1541, 0
  %1543 = add i32 %60, 356
  %1544 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1543, i32 undef)  ; BufferLoad(srv,index,wot)
  %1545 = extractvalue %dx.types.ResRet.i32 %1544, 0
  %1546 = and i32 %1545, 32
  %1547 = icmp ne i32 %1546, 0
  %1548 = and i1 %1542, %1547
  %1549 = select i1 %1548, float 1.000000e+00, float %1536
  %1550 = select i1 %1548, float 0x3FD3333340000000, float %1537
  %1551 = select i1 %1548, float 0x3FD3333340000000, float %1538
  %1552 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1149, i32 undef)  ; BufferLoad(srv,index,wot)
  %1553 = extractvalue %dx.types.ResRet.i32 %1552, 0
  %1554 = and i32 %1553, 32
  %1555 = icmp eq i32 %1554, 0
  br i1 %1555, label %1628, label %1556

; <label>:1556                                    ; preds = %1534
  %1557 = add i32 %60, 108
  %1558 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1557, i32 undef)  ; BufferLoad(srv,index,wot)
  %1559 = extractvalue %dx.types.ResRet.i32 %1558, 0
  %1560 = add i32 %60, 380
  %1561 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1560, i32 undef)  ; BufferLoad(srv,index,wot)
  %1562 = extractvalue %dx.types.ResRet.i32 %1561, 0
  %1563 = add i32 %1562, 0
  %1564 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1563, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1565 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1564, %dx.types.Handle %110, float %1256, float %1257, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1566 = extractvalue %dx.types.ResRet.f32 %1565, 0
  %1567 = extractvalue %dx.types.ResRet.f32 %1565, 1
  %1568 = extractvalue %dx.types.ResRet.f32 %1565, 2
  %1569 = extractvalue %dx.types.ResRet.f32 %1565, 3
  %1570 = and i32 %1559, 255
  %1571 = uitofp i32 %1570 to float
  %1572 = lshr i32 %1559, 8
  %1573 = and i32 %1572, 255
  %1574 = uitofp i32 %1573 to float
  %1575 = lshr i32 %1559, 16
  %1576 = and i32 %1575, 255
  %1577 = uitofp i32 %1576 to float
  %1578 = fmul fast float %1577, 0x3F70101000000000
  %1579 = fmul fast float %1566, %1571
  %1580 = fadd fast float %1579, %1574
  %1581 = fmul fast float %1580, 0x3F70101000000000
  %1582 = fadd fast float %1567, -5.000000e-01
  %1583 = fadd fast float %1569, -5.000000e-01
  %1584 = fmul fast float %1582, %1578
  %1585 = fmul fast float %1583, %1578
  %1586 = fadd fast float %1584, 5.000000e-01
  %1587 = fadd fast float %1585, 5.000000e-01
  %1588 = fmul fast float %1586, 2.000000e+00
  %1589 = fadd fast float %1588, -1.000000e+00
  %1590 = fmul fast float %1587, 2.000000e+00
  %1591 = fadd fast float %1590, -1.000000e+00
  %1592 = fadd fast float %1589, %1591
  %1593 = fmul fast float %1592, 5.000000e-01
  %1594 = fsub fast float %1589, %1591
  %1595 = fmul fast float %1594, 5.000000e-01
  %1596 = call float @dx.op.unary.f32(i32 6, float %1593)  ; FAbs(value)
  %1597 = fsub fast float 1.000000e+00, %1596
  %1598 = call float @dx.op.unary.f32(i32 6, float %1595)  ; FAbs(value)
  %1599 = fsub fast float %1597, %1598
  %1600 = call float @dx.op.dot3.f32(i32 55, float %1593, float %1595, float %1599, float %1593, float %1595, float %1599)  ; Dot3(ax,ay,az,bx,by,bz)
  %1601 = call float @dx.op.unary.f32(i32 25, float %1600)  ; Rsqrt(value)
  %1602 = fmul fast float %1593, %1601
  %1603 = fmul fast float %1595, %1601
  %1604 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1149, i32 undef)  ; BufferLoad(srv,index,wot)
  %1605 = extractvalue %dx.types.ResRet.i32 %1604, 0
  %1606 = and i32 %1605, 67108864
  %1607 = icmp eq i32 %1606, 0
  br i1 %1607, label %1624, label %1608

; <label>:1608                                    ; preds = %1556
  %1609 = add i32 %60, 296
  %1610 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1609, i32 undef)  ; BufferLoad(srv,index,wot)
  %1611 = extractvalue %dx.types.ResRet.i32 %1610, 0
  %1612 = and i32 %1611, 65535
  %1613 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1612)  ; LegacyF16ToF32(value)
  %1614 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1166, i32 undef)  ; BufferLoad(srv,index,wot)
  %1615 = extractvalue %dx.types.ResRet.i32 %1614, 0
  %1616 = and i32 %1615, 65535
  %1617 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1616)  ; LegacyF16ToF32(value)
  %1618 = lshr i32 %1611, 16
  %1619 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1618)  ; LegacyF16ToF32(value)
  %1620 = fsub fast float %1581, %1619
  %1621 = fmul fast float %1620, %1613
  %1622 = fadd fast float %1621, %1617
  %1623 = call float @dx.op.unary.f32(i32 7, float %1622)  ; Saturate(value)
  br label %1624

; <label>:1624                                    ; preds = %1608, %1556
  %1625 = phi float [ %1623, %1608 ], [ %1581, %1556 ]
  %1626 = call float @dx.op.dot2.f32(i32 54, float %1602, float %1603, float %1160, float %1161)  ; Dot2(ax,ay,bx,by)
  %1627 = call float @dx.op.dot2.f32(i32 54, float %1602, float %1603, float %1162, float %1163)  ; Dot2(ax,ay,bx,by)
  br label %1628

; <label>:1628                                    ; preds = %1624, %1534
  %1629 = phi float [ %1625, %1624 ], [ 0x3FD6666660000000, %1534 ]
  %1630 = phi float [ %1626, %1624 ], [ 0.000000e+00, %1534 ]
  %1631 = phi float [ %1627, %1624 ], [ 0.000000e+00, %1534 ]
  %1632 = phi float [ %1568, %1624 ], [ 1.000000e+00, %1534 ]
  %1633 = add i32 %60, 176
  %1634 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1633, i32 undef)  ; BufferLoad(srv,index,wot)
  %1635 = extractvalue %dx.types.ResRet.i32 %1634, 0
  %1636 = lshr i32 %1635, 22
  %1637 = shl nuw nsw i32 %1636, 5
  %1638 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1637)  ; LegacyF16ToF32(value)
  %1639 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1149, i32 undef)  ; BufferLoad(srv,index,wot)
  %1640 = extractvalue %dx.types.ResRet.i32 %1639, 0
  %1641 = and i32 %1640, 64
  %1642 = icmp eq i32 %1641, 0
  br i1 %1642, label %1676, label %1643

; <label>:1643                                    ; preds = %1628
  %1644 = add i32 %60, 396
  %1645 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1644, i32 undef)  ; BufferLoad(srv,index,wot)
  %1646 = extractvalue %dx.types.ResRet.i32 %1645, 0
  %1647 = add i32 %1646, 0
  %1648 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1647, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1649 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1149, i32 undef)  ; BufferLoad(srv,index,wot)
  %1650 = extractvalue %dx.types.ResRet.i32 %1649, 0
  %1651 = and i32 %1650, 131072
  %1652 = icmp eq i32 %1651, 0
  %1653 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1648, %dx.types.Handle %110, float %1256, float %1257, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1654 = extractvalue %dx.types.ResRet.f32 %1653, 0
  %1655 = extractvalue %dx.types.ResRet.f32 %1653, 1
  %1656 = extractvalue %dx.types.ResRet.f32 %1653, 2
  %1657 = fmul fast float %1654, %319
  %1658 = fmul fast float %1655, %322
  %1659 = fmul fast float %1656, %325
  br i1 %1652, label %1666, label %1660

; <label>:1660                                    ; preds = %1643
  %1661 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1662 = extractvalue %dx.types.CBufRet.f32 %1661, 0
  %1663 = fmul fast float %1662, %1657
  %1664 = fmul fast float %1662, %1658
  %1665 = fmul fast float %1662, %1659
  br label %1666

; <label>:1666                                    ; preds = %1660, %1643
  %1667 = phi float [ %1663, %1660 ], [ %1657, %1643 ]
  %1668 = phi float [ %1664, %1660 ], [ %1658, %1643 ]
  %1669 = phi float [ %1665, %1660 ], [ %1659, %1643 ]
  %1670 = fmul fast float %1667, %1638
  %1671 = select i1 %260, float %1670, float %1667
  %1672 = call float @dx.op.dot3.f32(i32 55, float %1671, float %1668, float %1669, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1673 = select i1 %260, float 0.000000e+00, float %1667
  %1674 = select i1 %260, float %1672, float %1668
  %1675 = select i1 %260, float 0.000000e+00, float %1669
  br label %1676

; <label>:1676                                    ; preds = %1666, %1628
  %1677 = phi float [ %1673, %1666 ], [ 0.000000e+00, %1628 ]
  %1678 = phi float [ %1674, %1666 ], [ 0.000000e+00, %1628 ]
  %1679 = phi float [ %1675, %1666 ], [ 0.000000e+00, %1628 ]
  %1680 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1149, i32 undef)  ; BufferLoad(srv,index,wot)
  %1681 = extractvalue %dx.types.ResRet.i32 %1680, 0
  %1682 = and i32 %1681, 1024
  %1683 = icmp eq i32 %1682, 0
  br i1 %1683, label %1714, label %1684

; <label>:1684                                    ; preds = %1676
  %1685 = add i32 %60, 168
  %1686 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1685, i32 undef)  ; BufferLoad(srv,index,wot)
  %1687 = extractvalue %dx.types.ResRet.i32 %1686, 0
  %1688 = and i32 %1687, 255
  %1689 = uitofp i32 %1688 to float
  %1690 = fmul fast float %1689, 0x3F70101020000000
  %1691 = lshr i32 %1687, 8
  %1692 = and i32 %1691, 255
  %1693 = uitofp i32 %1692 to float
  %1694 = fmul fast float %1693, 0x3F70101020000000
  %1695 = lshr i32 %1687, 16
  %1696 = and i32 %1695, 255
  %1697 = uitofp i32 %1696 to float
  %1698 = fmul fast float %1697, 0x3F70101020000000
  %1699 = fmul fast float %1690, %1690
  %1700 = fmul fast float %1694, %1694
  %1701 = fmul fast float %1698, %1698
  %1702 = add i32 %60, 460
  %1703 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1702, i32 undef)  ; BufferLoad(srv,index,wot)
  %1704 = extractvalue %dx.types.ResRet.i32 %1703, 0
  %1705 = add i32 %1704, 0
  %1706 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1705, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1707 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1706, %dx.types.Handle %111, float %1256, float %1257, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1708 = extractvalue %dx.types.ResRet.f32 %1707, 0
  %1709 = extractvalue %dx.types.ResRet.f32 %1707, 1
  %1710 = extractvalue %dx.types.ResRet.f32 %1707, 2
  %1711 = fmul fast float %1699, %1708
  %1712 = fmul fast float %1700, %1709
  %1713 = fmul fast float %1701, %1710
  br label %1714

; <label>:1714                                    ; preds = %1684, %1676
  %1715 = phi float [ %1711, %1684 ], [ 0.000000e+00, %1676 ]
  %1716 = phi float [ %1712, %1684 ], [ 0.000000e+00, %1676 ]
  %1717 = phi float [ %1713, %1684 ], [ 0.000000e+00, %1676 ]
  %1718 = fcmp fast ogt float %1715, 0.000000e+00
  %1719 = fcmp fast ogt float %1716, 0.000000e+00
  %1720 = fcmp fast ogt float %1717, 0.000000e+00
  %1721 = call float @dx.op.unary.f32(i32 23, float %1715)  ; Log(value)
  %1722 = call float @dx.op.unary.f32(i32 23, float %1716)  ; Log(value)
  %1723 = call float @dx.op.unary.f32(i32 23, float %1717)  ; Log(value)
  %1724 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1633, i32 undef)  ; BufferLoad(srv,index,wot)
  %1725 = extractvalue %dx.types.ResRet.i32 %1724, 0
  %1726 = lshr i32 %1725, 7
  %1727 = and i32 %1726, 32752
  %1728 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1727)  ; LegacyF16ToF32(value)
  %1729 = fmul fast float %1721, 0xBFE62E4300000000
  %1730 = fmul fast float %1729, %1728
  %1731 = fmul fast float %1722, 0xBFE62E4300000000
  %1732 = fmul fast float %1731, %1728
  %1733 = fmul fast float %1723, 0xBFE62E4300000000
  %1734 = fmul fast float %1733, %1728
  %1735 = select i1 %1718, float %1730, float 1.270000e+02
  %1736 = select i1 %1719, float %1732, float 1.270000e+02
  %1737 = select i1 %1720, float %1734, float 1.270000e+02
  %1738 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1149, i32 undef)  ; BufferLoad(srv,index,wot)
  %1739 = extractvalue %dx.types.ResRet.i32 %1738, 0
  %1740 = and i32 %1739, 10240
  %1741 = icmp eq i32 %1740, 0
  br i1 %1741, label %1762, label %1742

; <label>:1742                                    ; preds = %1714
  %1743 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1149, i32 undef)  ; BufferLoad(srv,index,wot)
  %1744 = extractvalue %dx.types.ResRet.i32 %1743, 0
  %1745 = and i32 %1744, 2048
  %1746 = icmp eq i32 %1745, 0
  br i1 %1746, label %1762, label %1747

; <label>:1747                                    ; preds = %1742
  %1748 = add i32 %60, 476
  %1749 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1748, i32 undef)  ; BufferLoad(srv,index,wot)
  %1750 = extractvalue %dx.types.ResRet.i32 %1749, 0
  %1751 = add i32 %1750, 0
  %1752 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1751, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1753 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1752, %dx.types.Handle %111, float %1256, float %1257, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1754 = extractvalue %dx.types.ResRet.f32 %1753, 3
  %1755 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1633, i32 undef)  ; BufferLoad(srv,index,wot)
  %1756 = extractvalue %dx.types.ResRet.i32 %1755, 0
  %1757 = shl i32 %1756, 4
  %1758 = and i32 %1757, 32752
  %1759 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1758)  ; LegacyF16ToF32(value)
  %1760 = fmul fast float %1759, %1754
  %1761 = call float @dx.op.binary.f32(i32 35, float %1760, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1762

; <label>:1762                                    ; preds = %1747, %1742, %1714
  %1763 = phi float [ %1761, %1747 ], [ 0x3F70101020000000, %1742 ], [ 0x3F70101020000000, %1714 ]
  %1764 = add i32 %60, 112
  %1765 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1764, i32 undef)  ; BufferLoad(srv,index,wot)
  %1766 = extractvalue %dx.types.ResRet.i32 %1765, 0
  %1767 = and i32 %1766, 255
  %1768 = uitofp i32 %1767 to float
  %1769 = lshr i32 %1766, 8
  %1770 = and i32 %1769, 255
  %1771 = uitofp i32 %1770 to float
  %1772 = call float @dx.op.dot3.f32(i32 55, float %1549, float %1550, float %1551, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1773 = fmul fast float %1771, %1772
  %1774 = fadd fast float %1773, %1768
  %1775 = fmul fast float %1774, 0x3F70101020000000
  %1776 = call float @dx.op.unary.f32(i32 7, float %1775)  ; Saturate(value)
  br i1 %1148, label %1777, label %1812

; <label>:1777                                    ; preds = %1762
  %1778 = fmul fast float %1763, 2.000000e+00
  %1779 = fcmp fast olt float %1735, 1.270000e+02
  %1780 = fcmp fast olt float %1736, 1.270000e+02
  %1781 = fcmp fast olt float %1737, 1.270000e+02
  %1782 = fmul fast float %1735, 0xBFF7154760000000
  %1783 = fmul fast float %1782, %1778
  %1784 = fmul fast float %1736, 0xBFF7154760000000
  %1785 = fmul fast float %1784, %1778
  %1786 = fmul fast float %1737, 0xBFF7154760000000
  %1787 = fmul fast float %1786, %1778
  %1788 = call float @dx.op.unary.f32(i32 21, float %1783)  ; Exp(value)
  %1789 = call float @dx.op.unary.f32(i32 21, float %1785)  ; Exp(value)
  %1790 = call float @dx.op.unary.f32(i32 21, float %1787)  ; Exp(value)
  %1791 = call float @dx.op.unary.f32(i32 7, float %1788)  ; Saturate(value)
  %1792 = call float @dx.op.unary.f32(i32 7, float %1789)  ; Saturate(value)
  %1793 = call float @dx.op.unary.f32(i32 7, float %1790)  ; Saturate(value)
  %1794 = fadd fast float %1791, -1.000000e+00
  %1795 = select i1 %1779, float %1794, float -1.000000e+00
  %1796 = fadd fast float %1792, -1.000000e+00
  %1797 = select i1 %1780, float %1796, float -1.000000e+00
  %1798 = fadd fast float %1793, -1.000000e+00
  %1799 = select i1 %1781, float %1798, float -1.000000e+00
  %1800 = fmul fast float %1795, %1329
  %1801 = fmul fast float %1797, %1329
  %1802 = fmul fast float %1799, %1329
  %1803 = fadd fast float %1800, 1.000000e+00
  %1804 = fadd fast float %1801, 1.000000e+00
  %1805 = fadd fast float %1802, 1.000000e+00
  %1806 = fmul fast float %1803, %1132
  %1807 = fmul fast float %1804, %1133
  %1808 = fmul fast float %1805, %1134
  %1809 = fmul fast float %1803, %1135
  %1810 = fmul fast float %1804, %1136
  %1811 = fmul fast float %1805, %1137
  br label %1812

; <label>:1812                                    ; preds = %1777, %1762
  %1813 = phi float [ %1806, %1777 ], [ %1132, %1762 ]
  %1814 = phi float [ %1807, %1777 ], [ %1133, %1762 ]
  %1815 = phi float [ %1808, %1777 ], [ %1134, %1762 ]
  %1816 = phi float [ %1809, %1777 ], [ %1135, %1762 ]
  %1817 = phi float [ %1810, %1777 ], [ %1136, %1762 ]
  %1818 = phi float [ %1811, %1777 ], [ %1137, %1762 ]
  %1819 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1149, i32 undef)  ; BufferLoad(srv,index,wot)
  %1820 = extractvalue %dx.types.ResRet.i32 %1819, 0
  %1821 = and i32 %1820, 3
  %1822 = icmp eq i32 %1821, 3
  br i1 %1822, label %1901, label %1823

; <label>:1823                                    ; preds = %1812
  %1824 = and i32 %1820, 16
  %1825 = icmp ne i32 %1824, 0
  %1826 = select i1 %1825, float %1329, float 0.000000e+00
  %1827 = icmp eq i32 %1821, 0
  br i1 %1827, label %1828, label %1856

; <label>:1828                                    ; preds = %1823
  %1829 = and i32 %1820, 64
  %1830 = icmp ne i32 %1829, 0
  %1831 = select i1 %1830, float %1329, float 0.000000e+00
  %1832 = fsub fast float %1549, %1813
  %1833 = fsub fast float %1550, %1814
  %1834 = fsub fast float %1551, %1815
  %1835 = fmul fast float %1826, %1832
  %1836 = fmul fast float %1826, %1833
  %1837 = fmul fast float %1826, %1834
  %1838 = fadd fast float %1835, %1813
  %1839 = fadd fast float %1836, %1814
  %1840 = fadd fast float %1837, %1815
  %1841 = fsub fast float %1535, %1141
  %1842 = fmul fast float %1826, %1841
  %1843 = fadd fast float %1842, %1141
  %1844 = fsub fast float %1677, %1816
  %1845 = fsub fast float %1678, %1817
  %1846 = fsub fast float %1679, %1818
  %1847 = fmul fast float %1831, %1844
  %1848 = fmul fast float %1831, %1845
  %1849 = fmul fast float %1831, %1846
  %1850 = fadd fast float %1847, %1816
  %1851 = fadd fast float %1848, %1817
  %1852 = fadd fast float %1849, %1818
  %1853 = fsub fast float %1776, %1146
  %1854 = fmul fast float %1826, %1853
  %1855 = fadd fast float %1854, %1146
  br label %1901

; <label>:1856                                    ; preds = %1823
  %1857 = icmp eq i32 %1821, 1
  br i1 %1857, label %1858, label %1871

; <label>:1858                                    ; preds = %1856
  %1859 = fadd fast float %1549, -1.000000e+00
  %1860 = fadd fast float %1550, -1.000000e+00
  %1861 = fadd fast float %1551, -1.000000e+00
  %1862 = fmul fast float %1826, %1859
  %1863 = fmul fast float %1826, %1860
  %1864 = fmul fast float %1826, %1861
  %1865 = fadd fast float %1862, 1.000000e+00
  %1866 = fadd fast float %1863, 1.000000e+00
  %1867 = fadd fast float %1864, 1.000000e+00
  %1868 = fmul fast float %1865, %1813
  %1869 = fmul fast float %1866, %1814
  %1870 = fmul fast float %1867, %1815
  br label %1901

; <label>:1871                                    ; preds = %1856
  %1872 = icmp eq i32 %1821, 2
  br i1 %1872, label %1873, label %1901

; <label>:1873                                    ; preds = %1871
  %1874 = call float @dx.op.unary.f32(i32 24, float %1549)  ; Sqrt(value)
  %1875 = call float @dx.op.unary.f32(i32 24, float %1550)  ; Sqrt(value)
  %1876 = call float @dx.op.unary.f32(i32 24, float %1551)  ; Sqrt(value)
  %1877 = fadd fast float %1874, -5.000000e-01
  %1878 = fadd fast float %1875, -5.000000e-01
  %1879 = fadd fast float %1876, -5.000000e-01
  %1880 = fmul fast float %1877, %1826
  %1881 = fmul fast float %1878, %1826
  %1882 = fmul fast float %1879, %1826
  %1883 = fadd fast float %1880, 5.000000e-01
  %1884 = fadd fast float %1881, 5.000000e-01
  %1885 = fadd fast float %1882, 5.000000e-01
  %1886 = fmul fast float %1883, 2.000000e+00
  %1887 = fsub fast float 1.000000e+00, %1886
  %1888 = fmul fast float %1887, %1813
  %1889 = fadd fast float %1888, %1886
  %1890 = fmul fast float %1889, %1813
  %1891 = fmul fast float %1884, 2.000000e+00
  %1892 = fsub fast float 1.000000e+00, %1891
  %1893 = fmul fast float %1892, %1814
  %1894 = fadd fast float %1893, %1891
  %1895 = fmul fast float %1894, %1814
  %1896 = fmul fast float %1885, 2.000000e+00
  %1897 = fsub fast float 1.000000e+00, %1896
  %1898 = fmul fast float %1897, %1815
  %1899 = fadd fast float %1898, %1896
  %1900 = fmul fast float %1899, %1815
  br label %1901

; <label>:1901                                    ; preds = %1873, %1871, %1858, %1828, %1812
  %1902 = phi float [ %1813, %1812 ], [ %1890, %1873 ], [ %1813, %1871 ], [ %1868, %1858 ], [ %1838, %1828 ]
  %1903 = phi float [ %1814, %1812 ], [ %1895, %1873 ], [ %1814, %1871 ], [ %1869, %1858 ], [ %1839, %1828 ]
  %1904 = phi float [ %1815, %1812 ], [ %1900, %1873 ], [ %1815, %1871 ], [ %1870, %1858 ], [ %1840, %1828 ]
  %1905 = phi float [ %1816, %1812 ], [ %1816, %1873 ], [ %1816, %1871 ], [ %1816, %1858 ], [ %1850, %1828 ]
  %1906 = phi float [ %1817, %1812 ], [ %1817, %1873 ], [ %1817, %1871 ], [ %1817, %1858 ], [ %1851, %1828 ]
  %1907 = phi float [ %1818, %1812 ], [ %1818, %1873 ], [ %1818, %1871 ], [ %1818, %1858 ], [ %1852, %1828 ]
  %1908 = phi float [ %1141, %1812 ], [ %1141, %1873 ], [ %1141, %1871 ], [ %1141, %1858 ], [ %1843, %1828 ]
  %1909 = phi float [ %1146, %1812 ], [ %1146, %1873 ], [ %1146, %1871 ], [ %1146, %1858 ], [ %1855, %1828 ]
  %1910 = and i32 %1820, 12
  %1911 = icmp eq i32 %1910, 12
  br i1 %1911, label %2018, label %1912

; <label>:1912                                    ; preds = %1901
  %1913 = and i32 %1820, 2097184
  %1914 = icmp eq i32 %1913, 2097184
  %1915 = select i1 %1914, float %1329, float 0.000000e+00
  %1916 = and i32 %1820, 4194336
  %1917 = icmp eq i32 %1916, 4194336
  %1918 = select i1 %1917, float %1329, float 0.000000e+00
  %1919 = and i32 %1820, 8388640
  %1920 = icmp eq i32 %1919, 8388640
  %1921 = select i1 %1920, float %1329, float 0.000000e+00
  %1922 = and i32 %1820, 1024
  %1923 = icmp ne i32 %1922, 0
  %1924 = select i1 %1923, float %1329, float 0.000000e+00
  %1925 = and i32 %1820, 2048
  %1926 = icmp ne i32 %1925, 0
  %1927 = select i1 %1926, float %1329, float 0.000000e+00
  %1928 = icmp eq i32 %1910, 0
  br i1 %1928, label %1929, label %1954

; <label>:1929                                    ; preds = %1912
  %1930 = fsub fast float %1630, %1130
  %1931 = fsub fast float %1631, %1131
  %1932 = fmul fast float %1915, %1930
  %1933 = fmul fast float %1915, %1931
  %1934 = fadd fast float %1932, %1130
  %1935 = fadd fast float %1933, %1131
  %1936 = fsub fast float %1632, %1144
  %1937 = fmul fast float %1918, %1936
  %1938 = fadd fast float %1937, %1144
  %1939 = fsub fast float %1629, %1143
  %1940 = fmul fast float %1921, %1939
  %1941 = fadd fast float %1940, %1143
  %1942 = fsub fast float %1735, %1138
  %1943 = fsub fast float %1736, %1139
  %1944 = fsub fast float %1737, %1140
  %1945 = fmul fast float %1924, %1942
  %1946 = fmul fast float %1924, %1943
  %1947 = fmul fast float %1924, %1944
  %1948 = fadd fast float %1945, %1138
  %1949 = fadd fast float %1946, %1139
  %1950 = fadd fast float %1947, %1140
  %1951 = fsub fast float %1763, %1145
  %1952 = fmul fast float %1927, %1951
  %1953 = fadd fast float %1952, %1145
  br label %2018

; <label>:1954                                    ; preds = %1912
  %1955 = icmp eq i32 %1910, 4
  br i1 %1955, label %1956, label %1996

; <label>:1956                                    ; preds = %1954
  %1957 = fmul fast float %1915, %1630
  %1958 = fmul fast float %1915, %1631
  %1959 = fadd fast float %1957, %1130
  %1960 = fadd fast float %1958, %1131
  %1961 = call float @dx.op.binary.f32(i32 36, float %1144, float %1632)  ; FMin(a,b)
  %1962 = fsub fast float %1961, %1144
  %1963 = fmul fast float %1962, %1918
  %1964 = fadd fast float %1963, %1144
  %1965 = fadd fast float %1629, %1143
  %1966 = fmul fast float %1965, 0x3FF337FAE0000000
  %1967 = fmul fast float %1143, %1143
  %1968 = fmul fast float %1629, %1629
  %1969 = fadd fast float %1968, %1967
  %1970 = fmul fast float %1969, 0x3FE5152B00000000
  %1971 = fmul fast float %1143, 0xBFCC1F85E0000000
  %1972 = fmul fast float %1971, %1629
  %1973 = fadd fast float %1972, 0xBFE1363700000000
  %1974 = fadd fast float %1973, %1966
  %1975 = fsub fast float %1974, %1970
  %1976 = fmul fast float %1965, 0x3FBA6F0D00000000
  %1977 = fmul fast float %1969, 0x3FD0432880000000
  %1978 = fmul fast float %1143, 0xBFEF110800000000
  %1979 = fmul fast float %1978, %1629
  %1980 = fadd fast float %1979, 1.000000e+00
  %1981 = fsub fast float %1980, %1976
  %1982 = fadd fast float %1981, %1977
  %1983 = fdiv fast float %1975, %1982
  %1984 = call float @dx.op.unary.f32(i32 7, float %1983)  ; Saturate(value)
  %1985 = fsub fast float %1984, %1143
  %1986 = fmul fast float %1985, %1921
  %1987 = fadd fast float %1986, %1143
  %1988 = fmul fast float %1924, %1735
  %1989 = fmul fast float %1924, %1736
  %1990 = fmul fast float %1924, %1737
  %1991 = fadd fast float %1988, %1138
  %1992 = fadd fast float %1989, %1139
  %1993 = fadd fast float %1990, %1140
  %1994 = fmul fast float %1927, %1763
  %1995 = fadd fast float %1994, %1145
  br label %2018

; <label>:1996                                    ; preds = %1954
  %1997 = icmp eq i32 %1910, 8
  br i1 %1997, label %1998, label %2018

; <label>:1998                                    ; preds = %1996
  %1999 = fmul fast float %1915, %1630
  %2000 = fmul fast float %1915, %1631
  %2001 = fadd fast float %1999, %1130
  %2002 = fadd fast float %2000, %1131
  %2003 = call float @dx.op.binary.f32(i32 36, float %1144, float %1632)  ; FMin(a,b)
  %2004 = fsub fast float %2003, %1144
  %2005 = fmul fast float %2004, %1918
  %2006 = fadd fast float %2005, %1144
  %2007 = fsub fast float %1629, %1143
  %2008 = fmul fast float %1921, %2007
  %2009 = fadd fast float %2008, %1143
  %2010 = fmul fast float %1924, %1735
  %2011 = fmul fast float %1924, %1736
  %2012 = fmul fast float %1924, %1737
  %2013 = fadd fast float %2010, %1138
  %2014 = fadd fast float %2011, %1139
  %2015 = fadd fast float %2012, %1140
  %2016 = fmul fast float %1927, %1763
  %2017 = fadd fast float %2016, %1145
  br label %2018

; <label>:2018                                    ; preds = %1998, %1996, %1956, %1929, %1901, %1328, %1147, %1129
  %2019 = phi float [ %1130, %1901 ], [ %1130, %1328 ], [ %1130, %1129 ], [ %2001, %1998 ], [ %1130, %1996 ], [ %1959, %1956 ], [ %1934, %1929 ], [ %1130, %1147 ]
  %2020 = phi float [ %1131, %1901 ], [ %1131, %1328 ], [ %1131, %1129 ], [ %2002, %1998 ], [ %1131, %1996 ], [ %1960, %1956 ], [ %1935, %1929 ], [ %1131, %1147 ]
  %2021 = phi float [ %1902, %1901 ], [ %1132, %1328 ], [ %1132, %1129 ], [ %1902, %1998 ], [ %1902, %1996 ], [ %1902, %1956 ], [ %1902, %1929 ], [ %1132, %1147 ]
  %2022 = phi float [ %1903, %1901 ], [ %1133, %1328 ], [ %1133, %1129 ], [ %1903, %1998 ], [ %1903, %1996 ], [ %1903, %1956 ], [ %1903, %1929 ], [ %1133, %1147 ]
  %2023 = phi float [ %1904, %1901 ], [ %1134, %1328 ], [ %1134, %1129 ], [ %1904, %1998 ], [ %1904, %1996 ], [ %1904, %1956 ], [ %1904, %1929 ], [ %1134, %1147 ]
  %2024 = phi float [ %1905, %1901 ], [ %1135, %1328 ], [ %1135, %1129 ], [ %1905, %1998 ], [ %1905, %1996 ], [ %1905, %1956 ], [ %1905, %1929 ], [ %1135, %1147 ]
  %2025 = phi float [ %1906, %1901 ], [ %1136, %1328 ], [ %1136, %1129 ], [ %1906, %1998 ], [ %1906, %1996 ], [ %1906, %1956 ], [ %1906, %1929 ], [ %1136, %1147 ]
  %2026 = phi float [ %1907, %1901 ], [ %1137, %1328 ], [ %1137, %1129 ], [ %1907, %1998 ], [ %1907, %1996 ], [ %1907, %1956 ], [ %1907, %1929 ], [ %1137, %1147 ]
  %2027 = phi float [ %1138, %1901 ], [ %1138, %1328 ], [ %1138, %1129 ], [ %2013, %1998 ], [ %1138, %1996 ], [ %1991, %1956 ], [ %1948, %1929 ], [ %1138, %1147 ]
  %2028 = phi float [ %1139, %1901 ], [ %1139, %1328 ], [ %1139, %1129 ], [ %2014, %1998 ], [ %1139, %1996 ], [ %1992, %1956 ], [ %1949, %1929 ], [ %1139, %1147 ]
  %2029 = phi float [ %1140, %1901 ], [ %1140, %1328 ], [ %1140, %1129 ], [ %2015, %1998 ], [ %1140, %1996 ], [ %1993, %1956 ], [ %1950, %1929 ], [ %1140, %1147 ]
  %2030 = phi float [ %1908, %1901 ], [ %1141, %1328 ], [ %1141, %1129 ], [ %1908, %1998 ], [ %1908, %1996 ], [ %1908, %1956 ], [ %1908, %1929 ], [ %1141, %1147 ]
  %2031 = phi float [ %1143, %1901 ], [ %1143, %1328 ], [ %1143, %1129 ], [ %2009, %1998 ], [ %1143, %1996 ], [ %1987, %1956 ], [ %1941, %1929 ], [ %1143, %1147 ]
  %2032 = phi float [ %1144, %1901 ], [ %1144, %1328 ], [ %1144, %1129 ], [ %2006, %1998 ], [ %1144, %1996 ], [ %1964, %1956 ], [ %1938, %1929 ], [ %1144, %1147 ]
  %2033 = phi float [ %1145, %1901 ], [ %1145, %1328 ], [ %1145, %1129 ], [ %2017, %1998 ], [ %1145, %1996 ], [ %1995, %1956 ], [ %1953, %1929 ], [ %1145, %1147 ]
  %2034 = phi float [ %1909, %1901 ], [ %1146, %1328 ], [ %1146, %1129 ], [ %1909, %1998 ], [ %1909, %1996 ], [ %1909, %1956 ], [ %1909, %1929 ], [ %1146, %1147 ]
  br i1 %446, label %2906, label %2035

; <label>:2035                                    ; preds = %2018
  %2036 = icmp ult i32 %502, 3
  %2037 = add i32 %60, 56
  %2038 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2037, i32 undef)  ; BufferLoad(srv,index,wot)
  %2039 = extractvalue %dx.types.ResRet.i32 %2038, 0
  %2040 = add i32 %60, 60
  %2041 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2040, i32 undef)  ; BufferLoad(srv,index,wot)
  %2042 = extractvalue %dx.types.ResRet.i32 %2041, 0
  %2043 = or i32 %2042, %2039
  %2044 = icmp eq i32 %2043, 0
  br i1 %2044, label %2906, label %2045

; <label>:2045                                    ; preds = %2035
  %2046 = and i32 %2039, 262144
  %2047 = icmp ne i32 %2046, 0
  %2048 = select i1 %2047, float %65, float 1.000000e+00
  %2049 = select i1 %2047, float %66, float 0.000000e+00
  %2050 = select i1 %2047, float %67, float 0.000000e+00
  %2051 = select i1 %2047, float %68, float 1.000000e+00
  %2052 = select i1 %2047, float %69, float %92
  %2053 = select i1 %2047, float %70, float %93
  %2054 = add i32 %60, 316
  %2055 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2054, i32 undef)  ; BufferLoad(srv,index,wot)
  %2056 = extractvalue %dx.types.ResRet.i32 %2055, 0
  %2057 = lshr i32 %2056, 16
  %2058 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2057)  ; LegacyF16ToF32(value)
  %2059 = fmul fast float %2058, 0x3F50624DE0000000
  %2060 = add i32 %60, 120
  %2061 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2060, i32 undef)  ; BufferLoad(srv,index,wot)
  %2062 = extractvalue %dx.types.ResRet.i32 %2061, 0
  %2063 = lshr i32 %2062, 16
  %2064 = and i32 %2063, 255
  %2065 = lshr i32 %2062, 24
  %2066 = add i32 %60, 324
  %2067 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2066, i32 undef)  ; BufferLoad(srv,index,wot)
  %2068 = extractvalue %dx.types.ResRet.i32 %2067, 0
  %2069 = and i32 %2068, 65535
  %2070 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2069)  ; LegacyF16ToF32(value)
  %2071 = lshr i32 %2068, 16
  %2072 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2071)  ; LegacyF16ToF32(value)
  %2073 = add i32 %60, 64
  %2074 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2073, i32 undef)  ; BufferLoad(srv,index,wot)
  %2075 = extractvalue %dx.types.ResRet.i32 %2074, 0
  %2076 = lshr i32 %2075, 22
  %2077 = shl nuw nsw i32 %2076, 5
  %2078 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2077)  ; LegacyF16ToF32(value)
  %2079 = shl i32 %2075, 4
  %2080 = and i32 %2079, 32752
  %2081 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2080)  ; LegacyF16ToF32(value)
  %2082 = lshr i32 %2075, 7
  %2083 = and i32 %2082, 32752
  %2084 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2083)  ; LegacyF16ToF32(value)
  %2085 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2086 = extractvalue %dx.types.CBufRet.f32 %2085, 3
  %2087 = fmul fast float %2086, 1.000000e+03
  %2088 = fmul fast float %396, %2087
  %2089 = call float @dx.op.unary.f32(i32 22, float %2088)  ; Frc(value)
  %2090 = fadd fast float %2089, %386
  %2091 = fmul fast float %397, %2087
  %2092 = call float @dx.op.unary.f32(i32 22, float %2091)  ; Frc(value)
  %2093 = fadd fast float %2092, %388
  %2094 = fmul fast float %2059, %2087
  %2095 = call float @dx.op.unary.f32(i32 22, float %2094)  ; Frc(value)
  %2096 = fmul fast float %2095, 0x401921FB60000000
  %2097 = fadd fast float %2096, %2078
  %2098 = call float @dx.op.unary.f32(i32 13, float %2097)  ; Sin(value)
  %2099 = call float @dx.op.unary.f32(i32 12, float %2097)  ; Cos(value)
  %2100 = fsub fast float -0.000000e+00, %2098
  %2101 = fadd fast float %2052, -5.000000e-01
  %2102 = fadd fast float %2053, -5.000000e-01
  %2103 = fmul fast float %2070, %2101
  %2104 = fmul fast float %2072, %2102
  %2105 = fadd fast float %2103, 5.000000e-01
  %2106 = fadd fast float %2104, 5.000000e-01
  %2107 = fmul fast float %2081, %2105
  %2108 = fmul fast float %2084, %2106
  %2109 = fmul fast float %2099, %2107
  %2110 = call float @dx.op.tertiary.f32(i32 46, float %2100, float %2108, float %2109)  ; FMad(a,b,c)
  %2111 = fmul fast float %2098, %2107
  %2112 = call float @dx.op.tertiary.f32(i32 46, float %2099, float %2108, float %2111)  ; FMad(a,b,c)
  %2113 = fadd fast float %2090, %2110
  %2114 = fadd fast float %2093, %2112
  %2115 = icmp ugt i32 %2064, 1
  %2116 = icmp ugt i32 %2062, 33554431
  %2117 = or i1 %2116, %2115
  br i1 %2117, label %2118, label %2143

; <label>:2118                                    ; preds = %2045
  %2119 = add i32 %60, 260
  %2120 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2119, i32 undef)  ; BufferLoad(srv,index,wot)
  %2121 = extractvalue %dx.types.ResRet.i32 %2120, 0
  %2122 = lshr i32 %2121, 16
  %2123 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2122)  ; LegacyF16ToF32(value)
  %2124 = fmul fast float %2086, %2123
  %2125 = call float @dx.op.unary.f32(i32 22, float %2124)  ; Frc(value)
  %2126 = mul nuw nsw i32 %2064, %2065
  %2127 = uitofp i32 %2126 to float
  %2128 = fmul fast float %2125, %2127
  %2129 = call float @dx.op.unary.f32(i32 27, float %2128)  ; Round_ni(value)
  %2130 = fptoui float %2129 to i32
  %2131 = urem i32 %2130, %2064
  %2132 = udiv i32 %2130, %2065
  %2133 = call float @dx.op.unary.f32(i32 22, float %2113)  ; Frc(value)
  %2134 = call float @dx.op.unary.f32(i32 22, float %2114)  ; Frc(value)
  %2135 = uitofp i32 %2131 to float
  %2136 = uitofp i32 %2132 to float
  %2137 = fadd fast float %2133, %2135
  %2138 = fadd fast float %2134, %2136
  %2139 = uitofp i32 %2064 to float
  %2140 = uitofp i32 %2065 to float
  %2141 = fdiv fast float %2137, %2139
  %2142 = fdiv fast float %2138, %2140
  br label %2143

; <label>:2143                                    ; preds = %2118, %2045
  %2144 = phi float [ %2141, %2118 ], [ %2113, %2045 ]
  %2145 = phi float [ %2142, %2118 ], [ %2114, %2045 ]
  %2146 = and i32 %2039, 256
  %2147 = icmp eq i32 %2146, 0
  br i1 %2147, label %2194, label %2148

; <label>:2148                                    ; preds = %2143
  %2149 = add i32 %60, 432
  %2150 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2149, i32 undef)  ; BufferLoad(srv,index,wot)
  %2151 = extractvalue %dx.types.ResRet.i32 %2150, 0
  %2152 = add i32 %2151, 0
  %2153 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2152, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2154 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2153, %dx.types.Handle %111, float %2144, float %2145, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2155 = extractvalue %dx.types.ResRet.f32 %2154, 0
  %2156 = add i32 %60, 132
  %2157 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2156, i32 undef)  ; BufferLoad(srv,index,wot)
  %2158 = extractvalue %dx.types.ResRet.i32 %2157, 0
  %2159 = shl i32 %2158, 4
  %2160 = and i32 %2159, 32752
  %2161 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2160)  ; LegacyF16ToF32(value)
  %2162 = lshr i32 %2158, 7
  %2163 = and i32 %2162, 32752
  %2164 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2163)  ; LegacyF16ToF32(value)
  %2165 = fsub fast float 1.000000e+00, %498
  %2166 = call float @dx.op.binary.f32(i32 35, float %2165, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2167 = bitcast float %498 to i32
  %2168 = sitofp i32 %2167 to float
  %2169 = fadd fast float %2168, 0xC1CFBF8940000000
  %2170 = fmul fast float %2164, %2169
  %2171 = fadd fast float %2170, 0x41CFBF8940000000
  %2172 = fptosi float %2171 to i32
  %2173 = bitcast i32 %2172 to float
  %2174 = bitcast float %2166 to i32
  %2175 = sitofp i32 %2174 to float
  %2176 = fadd fast float %2175, 0xC1CFBF8940000000
  %2177 = fmul fast float %2176, %2164
  %2178 = fadd fast float %2177, 0x41CFBF8940000000
  %2179 = fptosi float %2178 to i32
  %2180 = bitcast i32 %2179 to float
  %2181 = fmul fast float %2173, %2161
  %2182 = fmul fast float %2180, %2161
  %2183 = fsub fast float %2166, %2181
  %2184 = fadd fast float %2182, %2166
  %2185 = call float @dx.op.unary.f32(i32 7, float %2183)  ; Saturate(value)
  %2186 = call float @dx.op.unary.f32(i32 7, float %2184)  ; Saturate(value)
  %2187 = fsub fast float %2155, %2185
  %2188 = fsub fast float %2186, %2185
  %2189 = bitcast float %2188 to i32
  %2190 = sub nsw i32 2129859010, %2189
  %2191 = bitcast i32 %2190 to float
  %2192 = fmul fast float %2191, %2187
  %2193 = call float @dx.op.unary.f32(i32 7, float %2192)  ; Saturate(value)
  br label %2194

; <label>:2194                                    ; preds = %2148, %2143
  %2195 = phi float [ %2193, %2148 ], [ %498, %2143 ]
  %2196 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2037, i32 undef)  ; BufferLoad(srv,index,wot)
  %2197 = extractvalue %dx.types.ResRet.i32 %2196, 0
  %2198 = and i32 %2197, 128
  %2199 = icmp eq i32 %2198, 0
  br i1 %2199, label %2216, label %2200

; <label>:2200                                    ; preds = %2194
  %2201 = add i32 %60, 416
  %2202 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2201, i32 undef)  ; BufferLoad(srv,index,wot)
  %2203 = extractvalue %dx.types.ResRet.i32 %2202, 0
  %2204 = add i32 %2203, 0
  %2205 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2204, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2206 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2205, %dx.types.Handle %111, float %2144, float %2145, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2207 = extractvalue %dx.types.ResRet.f32 %2206, 0
  %2208 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2037, i32 undef)  ; BufferLoad(srv,index,wot)
  %2209 = extractvalue %dx.types.ResRet.i32 %2208, 0
  %2210 = and i32 %2209, 524288
  %2211 = icmp ne i32 %2210, 0
  %2212 = fcmp fast ogt float %2207, 0x3FE0101020000000
  %2213 = select i1 %2212, float 1.000000e+00, float 0.000000e+00
  %2214 = select i1 %2211, float %2213, float %2207
  %2215 = fmul fast float %2214, %2195
  br label %2216

; <label>:2216                                    ; preds = %2200, %2194
  %2217 = phi float [ %2215, %2200 ], [ %2195, %2194 ]
  %2218 = fcmp fast ult float %2217, 0x3F70101020000000
  br i1 %2218, label %2906, label %2219

; <label>:2219                                    ; preds = %2216
  %2220 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2037, i32 undef)  ; BufferLoad(srv,index,wot)
  %2221 = extractvalue %dx.types.ResRet.i32 %2220, 0
  %2222 = and i32 %2221, 16
  %2223 = icmp eq i32 %2222, 0
  br i1 %2223, label %2422, label %2224

; <label>:2224                                    ; preds = %2219
  %2225 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2060, i32 undef)  ; BufferLoad(srv,index,wot)
  %2226 = extractvalue %dx.types.ResRet.i32 %2225, 0
  %2227 = add i32 %60, 368
  %2228 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2227, i32 undef)  ; BufferLoad(srv,index,wot)
  %2229 = extractvalue %dx.types.ResRet.i32 %2228, 0
  %2230 = add i32 %2229, 0
  %2231 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2230, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2232 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2231, %dx.types.Handle %110, float %2144, float %2145, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2233 = extractvalue %dx.types.ResRet.f32 %2232, 0
  %2234 = extractvalue %dx.types.ResRet.f32 %2232, 1
  %2235 = extractvalue %dx.types.ResRet.f32 %2232, 2
  %2236 = extractvalue %dx.types.ResRet.f32 %2232, 3
  %2237 = and i32 %2226, 255
  %2238 = uitofp i32 %2237 to float
  %2239 = lshr i32 %2226, 8
  %2240 = and i32 %2239, 255
  %2241 = uitofp i32 %2240 to float
  %2242 = fmul fast float %2236, %2238
  %2243 = fadd fast float %2242, %2241
  %2244 = fmul fast float %2243, 0x3F70101000000000
  %2245 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2037, i32 undef)  ; BufferLoad(srv,index,wot)
  %2246 = extractvalue %dx.types.ResRet.i32 %2245, 0
  %2247 = and i32 %2246, 512
  %2248 = icmp eq i32 %2247, 0
  br i1 %2248, label %2257, label %2249

; <label>:2249                                    ; preds = %2224
  %2250 = add i32 %60, 448
  %2251 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2250, i32 undef)  ; BufferLoad(srv,index,wot)
  %2252 = extractvalue %dx.types.ResRet.i32 %2251, 0
  %2253 = add i32 %2252, 0
  %2254 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2253, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2255 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2254, %dx.types.Handle %111, float %2144, float %2145, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2256 = extractvalue %dx.types.ResRet.f32 %2255, 0
  br label %2257

; <label>:2257                                    ; preds = %2249, %2224
  %2258 = phi float [ %2256, %2249 ], [ 1.000000e+00, %2224 ]
  %2259 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2037, i32 undef)  ; BufferLoad(srv,index,wot)
  %2260 = extractvalue %dx.types.ResRet.i32 %2259, 0
  %2261 = and i32 %2260, 33554432
  %2262 = icmp eq i32 %2261, 0
  br i1 %2262, label %2369, label %2263

; <label>:2263                                    ; preds = %2257
  %2264 = add i32 %60, 256
  %2265 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2264, i32 undef)  ; BufferLoad(srv,index,wot)
  %2266 = extractvalue %dx.types.ResRet.i32 %2265, 0
  %2267 = and i32 %2266, 65535
  %2268 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2267)  ; LegacyF16ToF32(value)
  %2269 = lshr i32 %2266, 16
  %2270 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2269)  ; LegacyF16ToF32(value)
  %2271 = add i32 %60, 260
  %2272 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2271, i32 undef)  ; BufferLoad(srv,index,wot)
  %2273 = extractvalue %dx.types.ResRet.i32 %2272, 0
  %2274 = and i32 %2273, 65535
  %2275 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2274)  ; LegacyF16ToF32(value)
  %2276 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %368, i32 undef)  ; BufferLoad(srv,index,wot)
  %2277 = extractvalue %dx.types.ResRet.i32 %2276, 0
  %2278 = lshr i32 %2277, 24
  %2279 = uitofp i32 %2278 to float
  %2280 = fmul fast float %2279, 0x3F70101020000000
  %2281 = and i32 %2277, 255
  %2282 = uitofp i32 %2281 to float
  %2283 = fmul fast float %2282, 0x3F70101020000000
  %2284 = lshr i32 %2277, 8
  %2285 = and i32 %2284, 255
  %2286 = uitofp i32 %2285 to float
  %2287 = fmul fast float %2286, 0x3F70101020000000
  %2288 = lshr i32 %2277, 16
  %2289 = and i32 %2288, 255
  %2290 = uitofp i32 %2289 to float
  %2291 = fmul fast float %2290, 0x3F70101020000000
  %2292 = add i32 %60, 252
  %2293 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2292, i32 undef)  ; BufferLoad(srv,index,wot)
  %2294 = extractvalue %dx.types.ResRet.i32 %2293, 0
  %2295 = lshr i32 %2294, 24
  %2296 = uitofp i32 %2295 to float
  %2297 = fmul fast float %2296, 0x3F70101020000000
  %2298 = and i32 %2294, 255
  %2299 = uitofp i32 %2298 to float
  %2300 = fmul fast float %2299, 0x3F70101020000000
  %2301 = lshr i32 %2294, 8
  %2302 = and i32 %2301, 255
  %2303 = uitofp i32 %2302 to float
  %2304 = fmul fast float %2303, 0x3F70101020000000
  %2305 = lshr i32 %2294, 16
  %2306 = and i32 %2305, 255
  %2307 = uitofp i32 %2306 to float
  %2308 = fmul fast float %2307, 0x3F70101020000000
  %2309 = bitcast float %2233 to i32
  %2310 = ashr i32 %2309, 1
  %2311 = sub nsw i32 1597463174, %2310
  %2312 = bitcast i32 %2311 to float
  %2313 = fmul fast float %2233, 5.000000e-01
  %2314 = fmul fast float %2312, %2312
  %2315 = fmul fast float %2314, %2313
  %2316 = fsub fast float 1.500000e+00, %2315
  %2317 = fmul fast float %2312, %2233
  %2318 = fmul fast float %2317, %2316
  %2319 = bitcast float %2234 to i32
  %2320 = ashr i32 %2319, 1
  %2321 = sub nsw i32 1597463174, %2320
  %2322 = bitcast i32 %2321 to float
  %2323 = fmul fast float %2234, 5.000000e-01
  %2324 = fmul fast float %2322, %2322
  %2325 = fmul fast float %2324, %2323
  %2326 = fsub fast float 1.500000e+00, %2325
  %2327 = fmul fast float %2322, %2234
  %2328 = fmul fast float %2327, %2326
  %2329 = bitcast float %2235 to i32
  %2330 = ashr i32 %2329, 1
  %2331 = sub nsw i32 1597463174, %2330
  %2332 = bitcast i32 %2331 to float
  %2333 = fmul fast float %2235, 5.000000e-01
  %2334 = fmul fast float %2332, %2332
  %2335 = fmul fast float %2334, %2333
  %2336 = fsub fast float 1.500000e+00, %2335
  %2337 = fmul fast float %2332, %2235
  %2338 = fmul fast float %2337, %2336
  %2339 = fsub fast float %2318, %2300
  %2340 = fsub fast float %2328, %2304
  %2341 = fsub fast float %2338, %2308
  %2342 = fmul fast float %2339, %2268
  %2343 = fmul fast float %2340, %2270
  %2344 = fmul fast float %2341, %2275
  %2345 = fadd fast float %2342, %2283
  %2346 = fadd fast float %2343, %2287
  %2347 = fadd fast float %2344, %2291
  %2348 = call float @dx.op.unary.f32(i32 7, float %2345)  ; Saturate(value)
  %2349 = call float @dx.op.unary.f32(i32 7, float %2346)  ; Saturate(value)
  %2350 = call float @dx.op.unary.f32(i32 7, float %2347)  ; Saturate(value)
  %2351 = fmul fast float %2348, %2348
  %2352 = fmul fast float %2349, %2349
  %2353 = fmul fast float %2350, %2350
  %2354 = fsub fast float %2351, %2233
  %2355 = fsub fast float %2352, %2234
  %2356 = fsub fast float %2353, %2235
  %2357 = fmul fast float %2354, %2258
  %2358 = fmul fast float %2355, %2258
  %2359 = fmul fast float %2356, %2258
  %2360 = fadd fast float %2357, %2233
  %2361 = fadd fast float %2358, %2234
  %2362 = fadd fast float %2359, %2235
  %2363 = fadd fast float %2280, %2244
  %2364 = fsub fast float %2363, %2297
  %2365 = call float @dx.op.unary.f32(i32 7, float %2364)  ; Saturate(value)
  %2366 = fsub fast float %2365, %2244
  %2367 = fmul fast float %2366, %2258
  %2368 = fadd fast float %2367, %2244
  br label %2422

; <label>:2369                                    ; preds = %2257
  %2370 = and i32 %2260, 134217728
  %2371 = icmp eq i32 %2370, 0
  br i1 %2371, label %2406, label %2372

; <label>:2372                                    ; preds = %2369
  %2373 = call float @dx.op.unary.f32(i32 24, float %373)  ; Sqrt(value)
  %2374 = call float @dx.op.unary.f32(i32 24, float %377)  ; Sqrt(value)
  %2375 = call float @dx.op.unary.f32(i32 24, float %381)  ; Sqrt(value)
  %2376 = fadd fast float %2373, -5.000000e-01
  %2377 = fadd fast float %2374, -5.000000e-01
  %2378 = fadd fast float %2375, -5.000000e-01
  %2379 = fmul fast float %2376, %2258
  %2380 = fmul fast float %2377, %2258
  %2381 = fmul fast float %2378, %2258
  %2382 = fadd fast float %2379, 5.000000e-01
  %2383 = fadd fast float %2380, 5.000000e-01
  %2384 = fadd fast float %2381, 5.000000e-01
  %2385 = call float @dx.op.unary.f32(i32 24, float %2233)  ; Sqrt(value)
  %2386 = call float @dx.op.unary.f32(i32 24, float %2234)  ; Sqrt(value)
  %2387 = call float @dx.op.unary.f32(i32 24, float %2235)  ; Sqrt(value)
  %2388 = fmul fast float %2382, 2.000000e+00
  %2389 = fsub fast float 1.000000e+00, %2388
  %2390 = fmul fast float %2389, %2385
  %2391 = fadd fast float %2390, %2388
  %2392 = fmul fast float %2391, %2385
  %2393 = fmul fast float %2383, 2.000000e+00
  %2394 = fsub fast float 1.000000e+00, %2393
  %2395 = fmul fast float %2394, %2386
  %2396 = fadd fast float %2395, %2393
  %2397 = fmul fast float %2396, %2386
  %2398 = fmul fast float %2384, 2.000000e+00
  %2399 = fsub fast float 1.000000e+00, %2398
  %2400 = fmul fast float %2399, %2387
  %2401 = fadd fast float %2400, %2398
  %2402 = fmul fast float %2401, %2387
  %2403 = fmul fast float %2392, %2392
  %2404 = fmul fast float %2397, %2397
  %2405 = fmul fast float %2402, %2402
  br label %2422

; <label>:2406                                    ; preds = %2369
  %2407 = fmul fast float %373, %373
  %2408 = fmul fast float %377, %377
  %2409 = fmul fast float %381, %381
  %2410 = fadd fast float %2407, -1.000000e+00
  %2411 = fadd fast float %2408, -1.000000e+00
  %2412 = fadd fast float %2409, -1.000000e+00
  %2413 = fmul fast float %2258, %2410
  %2414 = fmul fast float %2258, %2411
  %2415 = fmul fast float %2258, %2412
  %2416 = fadd fast float %2413, 1.000000e+00
  %2417 = fadd fast float %2414, 1.000000e+00
  %2418 = fadd fast float %2415, 1.000000e+00
  %2419 = fmul fast float %2416, %2233
  %2420 = fmul fast float %2417, %2234
  %2421 = fmul fast float %2418, %2235
  br label %2422

; <label>:2422                                    ; preds = %2406, %2372, %2263, %2219
  %2423 = phi float [ %2368, %2263 ], [ %2244, %2372 ], [ %2244, %2406 ], [ 0x3FA23C0BE0000000, %2219 ]
  %2424 = phi float [ %2360, %2263 ], [ %2403, %2372 ], [ %2419, %2406 ], [ 1.000000e+00, %2219 ]
  %2425 = phi float [ %2361, %2263 ], [ %2404, %2372 ], [ %2420, %2406 ], [ 1.000000e+00, %2219 ]
  %2426 = phi float [ %2362, %2263 ], [ %2405, %2372 ], [ %2421, %2406 ], [ 1.000000e+00, %2219 ]
  %2427 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2428 = extractvalue %dx.types.CBufRet.i32 %2427, 1
  %2429 = and i32 %2428, 1
  %2430 = icmp ne i32 %2429, 0
  %2431 = add i32 %60, 356
  %2432 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2431, i32 undef)  ; BufferLoad(srv,index,wot)
  %2433 = extractvalue %dx.types.ResRet.i32 %2432, 0
  %2434 = and i32 %2433, 32
  %2435 = icmp ne i32 %2434, 0
  %2436 = and i1 %2430, %2435
  %2437 = select i1 %2436, float 1.000000e+00, float %2424
  %2438 = select i1 %2436, float 0x3FD3333340000000, float %2425
  %2439 = select i1 %2436, float 0x3FD3333340000000, float %2426
  %2440 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2037, i32 undef)  ; BufferLoad(srv,index,wot)
  %2441 = extractvalue %dx.types.ResRet.i32 %2440, 0
  %2442 = and i32 %2441, 32
  %2443 = icmp eq i32 %2442, 0
  br i1 %2443, label %2516, label %2444

; <label>:2444                                    ; preds = %2422
  %2445 = add i32 %60, 124
  %2446 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2445, i32 undef)  ; BufferLoad(srv,index,wot)
  %2447 = extractvalue %dx.types.ResRet.i32 %2446, 0
  %2448 = add i32 %60, 384
  %2449 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2448, i32 undef)  ; BufferLoad(srv,index,wot)
  %2450 = extractvalue %dx.types.ResRet.i32 %2449, 0
  %2451 = add i32 %2450, 0
  %2452 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2451, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2453 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2452, %dx.types.Handle %110, float %2144, float %2145, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2454 = extractvalue %dx.types.ResRet.f32 %2453, 0
  %2455 = extractvalue %dx.types.ResRet.f32 %2453, 1
  %2456 = extractvalue %dx.types.ResRet.f32 %2453, 2
  %2457 = extractvalue %dx.types.ResRet.f32 %2453, 3
  %2458 = and i32 %2447, 255
  %2459 = uitofp i32 %2458 to float
  %2460 = lshr i32 %2447, 8
  %2461 = and i32 %2460, 255
  %2462 = uitofp i32 %2461 to float
  %2463 = lshr i32 %2447, 16
  %2464 = and i32 %2463, 255
  %2465 = uitofp i32 %2464 to float
  %2466 = fmul fast float %2465, 0x3F70101000000000
  %2467 = fmul fast float %2454, %2459
  %2468 = fadd fast float %2467, %2462
  %2469 = fmul fast float %2468, 0x3F70101000000000
  %2470 = fadd fast float %2455, -5.000000e-01
  %2471 = fadd fast float %2457, -5.000000e-01
  %2472 = fmul fast float %2470, %2466
  %2473 = fmul fast float %2471, %2466
  %2474 = fadd fast float %2472, 5.000000e-01
  %2475 = fadd fast float %2473, 5.000000e-01
  %2476 = fmul fast float %2474, 2.000000e+00
  %2477 = fadd fast float %2476, -1.000000e+00
  %2478 = fmul fast float %2475, 2.000000e+00
  %2479 = fadd fast float %2478, -1.000000e+00
  %2480 = fadd fast float %2477, %2479
  %2481 = fmul fast float %2480, 5.000000e-01
  %2482 = fsub fast float %2477, %2479
  %2483 = fmul fast float %2482, 5.000000e-01
  %2484 = call float @dx.op.unary.f32(i32 6, float %2481)  ; FAbs(value)
  %2485 = fsub fast float 1.000000e+00, %2484
  %2486 = call float @dx.op.unary.f32(i32 6, float %2483)  ; FAbs(value)
  %2487 = fsub fast float %2485, %2486
  %2488 = call float @dx.op.dot3.f32(i32 55, float %2481, float %2483, float %2487, float %2481, float %2483, float %2487)  ; Dot3(ax,ay,az,bx,by,bz)
  %2489 = call float @dx.op.unary.f32(i32 25, float %2488)  ; Rsqrt(value)
  %2490 = fmul fast float %2481, %2489
  %2491 = fmul fast float %2483, %2489
  %2492 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2037, i32 undef)  ; BufferLoad(srv,index,wot)
  %2493 = extractvalue %dx.types.ResRet.i32 %2492, 0
  %2494 = and i32 %2493, 67108864
  %2495 = icmp eq i32 %2494, 0
  br i1 %2495, label %2512, label %2496

; <label>:2496                                    ; preds = %2444
  %2497 = add i32 %60, 312
  %2498 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2497, i32 undef)  ; BufferLoad(srv,index,wot)
  %2499 = extractvalue %dx.types.ResRet.i32 %2498, 0
  %2500 = and i32 %2499, 65535
  %2501 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2500)  ; LegacyF16ToF32(value)
  %2502 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2054, i32 undef)  ; BufferLoad(srv,index,wot)
  %2503 = extractvalue %dx.types.ResRet.i32 %2502, 0
  %2504 = and i32 %2503, 65535
  %2505 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2504)  ; LegacyF16ToF32(value)
  %2506 = lshr i32 %2499, 16
  %2507 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2506)  ; LegacyF16ToF32(value)
  %2508 = fsub fast float %2469, %2507
  %2509 = fmul fast float %2508, %2501
  %2510 = fadd fast float %2509, %2505
  %2511 = call float @dx.op.unary.f32(i32 7, float %2510)  ; Saturate(value)
  br label %2512

; <label>:2512                                    ; preds = %2496, %2444
  %2513 = phi float [ %2511, %2496 ], [ %2469, %2444 ]
  %2514 = call float @dx.op.dot2.f32(i32 54, float %2490, float %2491, float %2048, float %2049)  ; Dot2(ax,ay,bx,by)
  %2515 = call float @dx.op.dot2.f32(i32 54, float %2490, float %2491, float %2050, float %2051)  ; Dot2(ax,ay,bx,by)
  br label %2516

; <label>:2516                                    ; preds = %2512, %2422
  %2517 = phi float [ %2513, %2512 ], [ 0x3FD6666660000000, %2422 ]
  %2518 = phi float [ %2514, %2512 ], [ 0.000000e+00, %2422 ]
  %2519 = phi float [ %2515, %2512 ], [ 0.000000e+00, %2422 ]
  %2520 = phi float [ %2456, %2512 ], [ 1.000000e+00, %2422 ]
  %2521 = add i32 %60, 192
  %2522 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2521, i32 undef)  ; BufferLoad(srv,index,wot)
  %2523 = extractvalue %dx.types.ResRet.i32 %2522, 0
  %2524 = lshr i32 %2523, 22
  %2525 = shl nuw nsw i32 %2524, 5
  %2526 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2525)  ; LegacyF16ToF32(value)
  %2527 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2037, i32 undef)  ; BufferLoad(srv,index,wot)
  %2528 = extractvalue %dx.types.ResRet.i32 %2527, 0
  %2529 = and i32 %2528, 64
  %2530 = icmp eq i32 %2529, 0
  br i1 %2530, label %2564, label %2531

; <label>:2531                                    ; preds = %2516
  %2532 = add i32 %60, 400
  %2533 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2532, i32 undef)  ; BufferLoad(srv,index,wot)
  %2534 = extractvalue %dx.types.ResRet.i32 %2533, 0
  %2535 = add i32 %2534, 0
  %2536 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2535, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2537 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2037, i32 undef)  ; BufferLoad(srv,index,wot)
  %2538 = extractvalue %dx.types.ResRet.i32 %2537, 0
  %2539 = and i32 %2538, 131072
  %2540 = icmp eq i32 %2539, 0
  %2541 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2536, %dx.types.Handle %110, float %2144, float %2145, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2542 = extractvalue %dx.types.ResRet.f32 %2541, 0
  %2543 = extractvalue %dx.types.ResRet.f32 %2541, 1
  %2544 = extractvalue %dx.types.ResRet.f32 %2541, 2
  %2545 = fmul fast float %2542, %361
  %2546 = fmul fast float %2543, %364
  %2547 = fmul fast float %2544, %367
  br i1 %2540, label %2554, label %2548

; <label>:2548                                    ; preds = %2531
  %2549 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2550 = extractvalue %dx.types.CBufRet.f32 %2549, 0
  %2551 = fmul fast float %2550, %2545
  %2552 = fmul fast float %2550, %2546
  %2553 = fmul fast float %2550, %2547
  br label %2554

; <label>:2554                                    ; preds = %2548, %2531
  %2555 = phi float [ %2551, %2548 ], [ %2545, %2531 ]
  %2556 = phi float [ %2552, %2548 ], [ %2546, %2531 ]
  %2557 = phi float [ %2553, %2548 ], [ %2547, %2531 ]
  %2558 = fmul fast float %2555, %2526
  %2559 = select i1 %260, float %2558, float %2555
  %2560 = call float @dx.op.dot3.f32(i32 55, float %2559, float %2556, float %2557, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2561 = select i1 %260, float 0.000000e+00, float %2555
  %2562 = select i1 %260, float %2560, float %2556
  %2563 = select i1 %260, float 0.000000e+00, float %2557
  br label %2564

; <label>:2564                                    ; preds = %2554, %2516
  %2565 = phi float [ %2561, %2554 ], [ 0.000000e+00, %2516 ]
  %2566 = phi float [ %2562, %2554 ], [ 0.000000e+00, %2516 ]
  %2567 = phi float [ %2563, %2554 ], [ 0.000000e+00, %2516 ]
  %2568 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2037, i32 undef)  ; BufferLoad(srv,index,wot)
  %2569 = extractvalue %dx.types.ResRet.i32 %2568, 0
  %2570 = and i32 %2569, 1024
  %2571 = icmp eq i32 %2570, 0
  br i1 %2571, label %2602, label %2572

; <label>:2572                                    ; preds = %2564
  %2573 = add i32 %60, 184
  %2574 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2573, i32 undef)  ; BufferLoad(srv,index,wot)
  %2575 = extractvalue %dx.types.ResRet.i32 %2574, 0
  %2576 = and i32 %2575, 255
  %2577 = uitofp i32 %2576 to float
  %2578 = fmul fast float %2577, 0x3F70101020000000
  %2579 = lshr i32 %2575, 8
  %2580 = and i32 %2579, 255
  %2581 = uitofp i32 %2580 to float
  %2582 = fmul fast float %2581, 0x3F70101020000000
  %2583 = lshr i32 %2575, 16
  %2584 = and i32 %2583, 255
  %2585 = uitofp i32 %2584 to float
  %2586 = fmul fast float %2585, 0x3F70101020000000
  %2587 = fmul fast float %2578, %2578
  %2588 = fmul fast float %2582, %2582
  %2589 = fmul fast float %2586, %2586
  %2590 = add i32 %60, 464
  %2591 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2590, i32 undef)  ; BufferLoad(srv,index,wot)
  %2592 = extractvalue %dx.types.ResRet.i32 %2591, 0
  %2593 = add i32 %2592, 0
  %2594 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2593, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2595 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2594, %dx.types.Handle %111, float %2144, float %2145, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2596 = extractvalue %dx.types.ResRet.f32 %2595, 0
  %2597 = extractvalue %dx.types.ResRet.f32 %2595, 1
  %2598 = extractvalue %dx.types.ResRet.f32 %2595, 2
  %2599 = fmul fast float %2587, %2596
  %2600 = fmul fast float %2588, %2597
  %2601 = fmul fast float %2589, %2598
  br label %2602

; <label>:2602                                    ; preds = %2572, %2564
  %2603 = phi float [ %2599, %2572 ], [ 0.000000e+00, %2564 ]
  %2604 = phi float [ %2600, %2572 ], [ 0.000000e+00, %2564 ]
  %2605 = phi float [ %2601, %2572 ], [ 0.000000e+00, %2564 ]
  %2606 = fcmp fast ogt float %2603, 0.000000e+00
  %2607 = fcmp fast ogt float %2604, 0.000000e+00
  %2608 = fcmp fast ogt float %2605, 0.000000e+00
  %2609 = call float @dx.op.unary.f32(i32 23, float %2603)  ; Log(value)
  %2610 = call float @dx.op.unary.f32(i32 23, float %2604)  ; Log(value)
  %2611 = call float @dx.op.unary.f32(i32 23, float %2605)  ; Log(value)
  %2612 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2521, i32 undef)  ; BufferLoad(srv,index,wot)
  %2613 = extractvalue %dx.types.ResRet.i32 %2612, 0
  %2614 = lshr i32 %2613, 7
  %2615 = and i32 %2614, 32752
  %2616 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2615)  ; LegacyF16ToF32(value)
  %2617 = fmul fast float %2609, 0xBFE62E4300000000
  %2618 = fmul fast float %2617, %2616
  %2619 = fmul fast float %2610, 0xBFE62E4300000000
  %2620 = fmul fast float %2619, %2616
  %2621 = fmul fast float %2611, 0xBFE62E4300000000
  %2622 = fmul fast float %2621, %2616
  %2623 = select i1 %2606, float %2618, float 1.270000e+02
  %2624 = select i1 %2607, float %2620, float 1.270000e+02
  %2625 = select i1 %2608, float %2622, float 1.270000e+02
  %2626 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2037, i32 undef)  ; BufferLoad(srv,index,wot)
  %2627 = extractvalue %dx.types.ResRet.i32 %2626, 0
  %2628 = and i32 %2627, 10240
  %2629 = icmp eq i32 %2628, 0
  br i1 %2629, label %2650, label %2630

; <label>:2630                                    ; preds = %2602
  %2631 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2037, i32 undef)  ; BufferLoad(srv,index,wot)
  %2632 = extractvalue %dx.types.ResRet.i32 %2631, 0
  %2633 = and i32 %2632, 2048
  %2634 = icmp eq i32 %2633, 0
  br i1 %2634, label %2650, label %2635

; <label>:2635                                    ; preds = %2630
  %2636 = add i32 %60, 480
  %2637 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2636, i32 undef)  ; BufferLoad(srv,index,wot)
  %2638 = extractvalue %dx.types.ResRet.i32 %2637, 0
  %2639 = add i32 %2638, 0
  %2640 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2639, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2641 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2640, %dx.types.Handle %111, float %2144, float %2145, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2642 = extractvalue %dx.types.ResRet.f32 %2641, 3
  %2643 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2521, i32 undef)  ; BufferLoad(srv,index,wot)
  %2644 = extractvalue %dx.types.ResRet.i32 %2643, 0
  %2645 = shl i32 %2644, 4
  %2646 = and i32 %2645, 32752
  %2647 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2646)  ; LegacyF16ToF32(value)
  %2648 = fmul fast float %2647, %2642
  %2649 = call float @dx.op.binary.f32(i32 35, float %2648, float 0x3F70101020000000)  ; FMax(a,b)
  br label %2650

; <label>:2650                                    ; preds = %2635, %2630, %2602
  %2651 = phi float [ %2649, %2635 ], [ 0x3F70101020000000, %2630 ], [ 0x3F70101020000000, %2602 ]
  %2652 = add i32 %60, 128
  %2653 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2652, i32 undef)  ; BufferLoad(srv,index,wot)
  %2654 = extractvalue %dx.types.ResRet.i32 %2653, 0
  %2655 = and i32 %2654, 255
  %2656 = uitofp i32 %2655 to float
  %2657 = lshr i32 %2654, 8
  %2658 = and i32 %2657, 255
  %2659 = uitofp i32 %2658 to float
  %2660 = call float @dx.op.dot3.f32(i32 55, float %2437, float %2438, float %2439, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2661 = fmul fast float %2659, %2660
  %2662 = fadd fast float %2661, %2656
  %2663 = fmul fast float %2662, 0x3F70101020000000
  %2664 = call float @dx.op.unary.f32(i32 7, float %2663)  ; Saturate(value)
  br i1 %2036, label %2665, label %2700

; <label>:2665                                    ; preds = %2650
  %2666 = fmul fast float %2651, 2.000000e+00
  %2667 = fcmp fast olt float %2623, 1.270000e+02
  %2668 = fcmp fast olt float %2624, 1.270000e+02
  %2669 = fcmp fast olt float %2625, 1.270000e+02
  %2670 = fmul fast float %2623, 0xBFF7154760000000
  %2671 = fmul fast float %2670, %2666
  %2672 = fmul fast float %2624, 0xBFF7154760000000
  %2673 = fmul fast float %2672, %2666
  %2674 = fmul fast float %2625, 0xBFF7154760000000
  %2675 = fmul fast float %2674, %2666
  %2676 = call float @dx.op.unary.f32(i32 21, float %2671)  ; Exp(value)
  %2677 = call float @dx.op.unary.f32(i32 21, float %2673)  ; Exp(value)
  %2678 = call float @dx.op.unary.f32(i32 21, float %2675)  ; Exp(value)
  %2679 = call float @dx.op.unary.f32(i32 7, float %2676)  ; Saturate(value)
  %2680 = call float @dx.op.unary.f32(i32 7, float %2677)  ; Saturate(value)
  %2681 = call float @dx.op.unary.f32(i32 7, float %2678)  ; Saturate(value)
  %2682 = fadd fast float %2679, -1.000000e+00
  %2683 = select i1 %2667, float %2682, float -1.000000e+00
  %2684 = fadd fast float %2680, -1.000000e+00
  %2685 = select i1 %2668, float %2684, float -1.000000e+00
  %2686 = fadd fast float %2681, -1.000000e+00
  %2687 = select i1 %2669, float %2686, float -1.000000e+00
  %2688 = fmul fast float %2683, %2217
  %2689 = fmul fast float %2685, %2217
  %2690 = fmul fast float %2687, %2217
  %2691 = fadd fast float %2688, 1.000000e+00
  %2692 = fadd fast float %2689, 1.000000e+00
  %2693 = fadd fast float %2690, 1.000000e+00
  %2694 = fmul fast float %2691, %2021
  %2695 = fmul fast float %2692, %2022
  %2696 = fmul fast float %2693, %2023
  %2697 = fmul fast float %2691, %2024
  %2698 = fmul fast float %2692, %2025
  %2699 = fmul fast float %2693, %2026
  br label %2700

; <label>:2700                                    ; preds = %2665, %2650
  %2701 = phi float [ %2694, %2665 ], [ %2021, %2650 ]
  %2702 = phi float [ %2695, %2665 ], [ %2022, %2650 ]
  %2703 = phi float [ %2696, %2665 ], [ %2023, %2650 ]
  %2704 = phi float [ %2697, %2665 ], [ %2024, %2650 ]
  %2705 = phi float [ %2698, %2665 ], [ %2025, %2650 ]
  %2706 = phi float [ %2699, %2665 ], [ %2026, %2650 ]
  %2707 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2037, i32 undef)  ; BufferLoad(srv,index,wot)
  %2708 = extractvalue %dx.types.ResRet.i32 %2707, 0
  %2709 = and i32 %2708, 3
  %2710 = icmp eq i32 %2709, 3
  br i1 %2710, label %2789, label %2711

; <label>:2711                                    ; preds = %2700
  %2712 = and i32 %2708, 16
  %2713 = icmp ne i32 %2712, 0
  %2714 = select i1 %2713, float %2217, float 0.000000e+00
  %2715 = icmp eq i32 %2709, 0
  br i1 %2715, label %2716, label %2744

; <label>:2716                                    ; preds = %2711
  %2717 = and i32 %2708, 64
  %2718 = icmp ne i32 %2717, 0
  %2719 = select i1 %2718, float %2217, float 0.000000e+00
  %2720 = fsub fast float %2437, %2701
  %2721 = fsub fast float %2438, %2702
  %2722 = fsub fast float %2439, %2703
  %2723 = fmul fast float %2714, %2720
  %2724 = fmul fast float %2714, %2721
  %2725 = fmul fast float %2714, %2722
  %2726 = fadd fast float %2723, %2701
  %2727 = fadd fast float %2724, %2702
  %2728 = fadd fast float %2725, %2703
  %2729 = fsub fast float %2423, %2030
  %2730 = fmul fast float %2714, %2729
  %2731 = fadd fast float %2730, %2030
  %2732 = fsub fast float %2565, %2704
  %2733 = fsub fast float %2566, %2705
  %2734 = fsub fast float %2567, %2706
  %2735 = fmul fast float %2719, %2732
  %2736 = fmul fast float %2719, %2733
  %2737 = fmul fast float %2719, %2734
  %2738 = fadd fast float %2735, %2704
  %2739 = fadd fast float %2736, %2705
  %2740 = fadd fast float %2737, %2706
  %2741 = fsub fast float %2664, %2034
  %2742 = fmul fast float %2714, %2741
  %2743 = fadd fast float %2742, %2034
  br label %2789

; <label>:2744                                    ; preds = %2711
  %2745 = icmp eq i32 %2709, 1
  br i1 %2745, label %2746, label %2759

; <label>:2746                                    ; preds = %2744
  %2747 = fadd fast float %2437, -1.000000e+00
  %2748 = fadd fast float %2438, -1.000000e+00
  %2749 = fadd fast float %2439, -1.000000e+00
  %2750 = fmul fast float %2714, %2747
  %2751 = fmul fast float %2714, %2748
  %2752 = fmul fast float %2714, %2749
  %2753 = fadd fast float %2750, 1.000000e+00
  %2754 = fadd fast float %2751, 1.000000e+00
  %2755 = fadd fast float %2752, 1.000000e+00
  %2756 = fmul fast float %2753, %2701
  %2757 = fmul fast float %2754, %2702
  %2758 = fmul fast float %2755, %2703
  br label %2789

; <label>:2759                                    ; preds = %2744
  %2760 = icmp eq i32 %2709, 2
  br i1 %2760, label %2761, label %2789

; <label>:2761                                    ; preds = %2759
  %2762 = call float @dx.op.unary.f32(i32 24, float %2437)  ; Sqrt(value)
  %2763 = call float @dx.op.unary.f32(i32 24, float %2438)  ; Sqrt(value)
  %2764 = call float @dx.op.unary.f32(i32 24, float %2439)  ; Sqrt(value)
  %2765 = fadd fast float %2762, -5.000000e-01
  %2766 = fadd fast float %2763, -5.000000e-01
  %2767 = fadd fast float %2764, -5.000000e-01
  %2768 = fmul fast float %2765, %2714
  %2769 = fmul fast float %2766, %2714
  %2770 = fmul fast float %2767, %2714
  %2771 = fadd fast float %2768, 5.000000e-01
  %2772 = fadd fast float %2769, 5.000000e-01
  %2773 = fadd fast float %2770, 5.000000e-01
  %2774 = fmul fast float %2771, 2.000000e+00
  %2775 = fsub fast float 1.000000e+00, %2774
  %2776 = fmul fast float %2775, %2701
  %2777 = fadd fast float %2776, %2774
  %2778 = fmul fast float %2777, %2701
  %2779 = fmul fast float %2772, 2.000000e+00
  %2780 = fsub fast float 1.000000e+00, %2779
  %2781 = fmul fast float %2780, %2702
  %2782 = fadd fast float %2781, %2779
  %2783 = fmul fast float %2782, %2702
  %2784 = fmul fast float %2773, 2.000000e+00
  %2785 = fsub fast float 1.000000e+00, %2784
  %2786 = fmul fast float %2785, %2703
  %2787 = fadd fast float %2786, %2784
  %2788 = fmul fast float %2787, %2703
  br label %2789

; <label>:2789                                    ; preds = %2761, %2759, %2746, %2716, %2700
  %2790 = phi float [ %2701, %2700 ], [ %2778, %2761 ], [ %2701, %2759 ], [ %2756, %2746 ], [ %2726, %2716 ]
  %2791 = phi float [ %2702, %2700 ], [ %2783, %2761 ], [ %2702, %2759 ], [ %2757, %2746 ], [ %2727, %2716 ]
  %2792 = phi float [ %2703, %2700 ], [ %2788, %2761 ], [ %2703, %2759 ], [ %2758, %2746 ], [ %2728, %2716 ]
  %2793 = phi float [ %2704, %2700 ], [ %2704, %2761 ], [ %2704, %2759 ], [ %2704, %2746 ], [ %2738, %2716 ]
  %2794 = phi float [ %2705, %2700 ], [ %2705, %2761 ], [ %2705, %2759 ], [ %2705, %2746 ], [ %2739, %2716 ]
  %2795 = phi float [ %2706, %2700 ], [ %2706, %2761 ], [ %2706, %2759 ], [ %2706, %2746 ], [ %2740, %2716 ]
  %2796 = phi float [ %2030, %2700 ], [ %2030, %2761 ], [ %2030, %2759 ], [ %2030, %2746 ], [ %2731, %2716 ]
  %2797 = phi float [ %2034, %2700 ], [ %2034, %2761 ], [ %2034, %2759 ], [ %2034, %2746 ], [ %2743, %2716 ]
  %2798 = and i32 %2708, 12
  %2799 = icmp eq i32 %2798, 12
  br i1 %2799, label %2906, label %2800

; <label>:2800                                    ; preds = %2789
  %2801 = and i32 %2708, 2097184
  %2802 = icmp eq i32 %2801, 2097184
  %2803 = select i1 %2802, float %2217, float 0.000000e+00
  %2804 = and i32 %2708, 4194336
  %2805 = icmp eq i32 %2804, 4194336
  %2806 = select i1 %2805, float %2217, float 0.000000e+00
  %2807 = and i32 %2708, 8388640
  %2808 = icmp eq i32 %2807, 8388640
  %2809 = select i1 %2808, float %2217, float 0.000000e+00
  %2810 = and i32 %2708, 1024
  %2811 = icmp ne i32 %2810, 0
  %2812 = select i1 %2811, float %2217, float 0.000000e+00
  %2813 = and i32 %2708, 2048
  %2814 = icmp ne i32 %2813, 0
  %2815 = select i1 %2814, float %2217, float 0.000000e+00
  %2816 = icmp eq i32 %2798, 0
  br i1 %2816, label %2817, label %2842

; <label>:2817                                    ; preds = %2800
  %2818 = fsub fast float %2518, %2019
  %2819 = fsub fast float %2519, %2020
  %2820 = fmul fast float %2803, %2818
  %2821 = fmul fast float %2803, %2819
  %2822 = fadd fast float %2820, %2019
  %2823 = fadd fast float %2821, %2020
  %2824 = fsub fast float %2520, %2032
  %2825 = fmul fast float %2806, %2824
  %2826 = fadd fast float %2825, %2032
  %2827 = fsub fast float %2517, %2031
  %2828 = fmul fast float %2809, %2827
  %2829 = fadd fast float %2828, %2031
  %2830 = fsub fast float %2623, %2027
  %2831 = fsub fast float %2624, %2028
  %2832 = fsub fast float %2625, %2029
  %2833 = fmul fast float %2812, %2830
  %2834 = fmul fast float %2812, %2831
  %2835 = fmul fast float %2812, %2832
  %2836 = fadd fast float %2833, %2027
  %2837 = fadd fast float %2834, %2028
  %2838 = fadd fast float %2835, %2029
  %2839 = fsub fast float %2651, %2033
  %2840 = fmul fast float %2815, %2839
  %2841 = fadd fast float %2840, %2033
  br label %2906

; <label>:2842                                    ; preds = %2800
  %2843 = icmp eq i32 %2798, 4
  br i1 %2843, label %2844, label %2884

; <label>:2844                                    ; preds = %2842
  %2845 = fmul fast float %2803, %2518
  %2846 = fmul fast float %2803, %2519
  %2847 = fadd fast float %2845, %2019
  %2848 = fadd fast float %2846, %2020
  %2849 = call float @dx.op.binary.f32(i32 36, float %2032, float %2520)  ; FMin(a,b)
  %2850 = fsub fast float %2849, %2032
  %2851 = fmul fast float %2850, %2806
  %2852 = fadd fast float %2851, %2032
  %2853 = fadd fast float %2517, %2031
  %2854 = fmul fast float %2853, 0x3FF337FAE0000000
  %2855 = fmul fast float %2031, %2031
  %2856 = fmul fast float %2517, %2517
  %2857 = fadd fast float %2856, %2855
  %2858 = fmul fast float %2857, 0x3FE5152B00000000
  %2859 = fmul fast float %2031, 0xBFCC1F85E0000000
  %2860 = fmul fast float %2859, %2517
  %2861 = fadd fast float %2860, 0xBFE1363700000000
  %2862 = fadd fast float %2861, %2854
  %2863 = fsub fast float %2862, %2858
  %2864 = fmul fast float %2853, 0x3FBA6F0D00000000
  %2865 = fmul fast float %2857, 0x3FD0432880000000
  %2866 = fmul fast float %2031, 0xBFEF110800000000
  %2867 = fmul fast float %2866, %2517
  %2868 = fadd fast float %2867, 1.000000e+00
  %2869 = fsub fast float %2868, %2864
  %2870 = fadd fast float %2869, %2865
  %2871 = fdiv fast float %2863, %2870
  %2872 = call float @dx.op.unary.f32(i32 7, float %2871)  ; Saturate(value)
  %2873 = fsub fast float %2872, %2031
  %2874 = fmul fast float %2873, %2809
  %2875 = fadd fast float %2874, %2031
  %2876 = fmul fast float %2812, %2623
  %2877 = fmul fast float %2812, %2624
  %2878 = fmul fast float %2812, %2625
  %2879 = fadd fast float %2876, %2027
  %2880 = fadd fast float %2877, %2028
  %2881 = fadd fast float %2878, %2029
  %2882 = fmul fast float %2815, %2651
  %2883 = fadd fast float %2882, %2033
  br label %2906

; <label>:2884                                    ; preds = %2842
  %2885 = icmp eq i32 %2798, 8
  br i1 %2885, label %2886, label %2906

; <label>:2886                                    ; preds = %2884
  %2887 = fmul fast float %2803, %2518
  %2888 = fmul fast float %2803, %2519
  %2889 = fadd fast float %2887, %2019
  %2890 = fadd fast float %2888, %2020
  %2891 = call float @dx.op.binary.f32(i32 36, float %2032, float %2520)  ; FMin(a,b)
  %2892 = fsub fast float %2891, %2032
  %2893 = fmul fast float %2892, %2806
  %2894 = fadd fast float %2893, %2032
  %2895 = fsub fast float %2517, %2031
  %2896 = fmul fast float %2809, %2895
  %2897 = fadd fast float %2896, %2031
  %2898 = fmul fast float %2812, %2623
  %2899 = fmul fast float %2812, %2624
  %2900 = fmul fast float %2812, %2625
  %2901 = fadd fast float %2898, %2027
  %2902 = fadd fast float %2899, %2028
  %2903 = fadd fast float %2900, %2029
  %2904 = fmul fast float %2815, %2651
  %2905 = fadd fast float %2904, %2033
  br label %2906

; <label>:2906                                    ; preds = %2886, %2884, %2844, %2817, %2789, %2216, %2035, %2018
  %2907 = phi float [ %2019, %2789 ], [ %2019, %2216 ], [ %2019, %2018 ], [ %2889, %2886 ], [ %2019, %2884 ], [ %2847, %2844 ], [ %2822, %2817 ], [ %2019, %2035 ]
  %2908 = phi float [ %2020, %2789 ], [ %2020, %2216 ], [ %2020, %2018 ], [ %2890, %2886 ], [ %2020, %2884 ], [ %2848, %2844 ], [ %2823, %2817 ], [ %2020, %2035 ]
  %2909 = phi float [ %2790, %2789 ], [ %2021, %2216 ], [ %2021, %2018 ], [ %2790, %2886 ], [ %2790, %2884 ], [ %2790, %2844 ], [ %2790, %2817 ], [ %2021, %2035 ]
  %2910 = phi float [ %2791, %2789 ], [ %2022, %2216 ], [ %2022, %2018 ], [ %2791, %2886 ], [ %2791, %2884 ], [ %2791, %2844 ], [ %2791, %2817 ], [ %2022, %2035 ]
  %2911 = phi float [ %2792, %2789 ], [ %2023, %2216 ], [ %2023, %2018 ], [ %2792, %2886 ], [ %2792, %2884 ], [ %2792, %2844 ], [ %2792, %2817 ], [ %2023, %2035 ]
  %2912 = phi float [ %2793, %2789 ], [ %2024, %2216 ], [ %2024, %2018 ], [ %2793, %2886 ], [ %2793, %2884 ], [ %2793, %2844 ], [ %2793, %2817 ], [ %2024, %2035 ]
  %2913 = phi float [ %2794, %2789 ], [ %2025, %2216 ], [ %2025, %2018 ], [ %2794, %2886 ], [ %2794, %2884 ], [ %2794, %2844 ], [ %2794, %2817 ], [ %2025, %2035 ]
  %2914 = phi float [ %2795, %2789 ], [ %2026, %2216 ], [ %2026, %2018 ], [ %2795, %2886 ], [ %2795, %2884 ], [ %2795, %2844 ], [ %2795, %2817 ], [ %2026, %2035 ]
  %2915 = phi float [ %2027, %2789 ], [ %2027, %2216 ], [ %2027, %2018 ], [ %2901, %2886 ], [ %2027, %2884 ], [ %2879, %2844 ], [ %2836, %2817 ], [ %2027, %2035 ]
  %2916 = phi float [ %2028, %2789 ], [ %2028, %2216 ], [ %2028, %2018 ], [ %2902, %2886 ], [ %2028, %2884 ], [ %2880, %2844 ], [ %2837, %2817 ], [ %2028, %2035 ]
  %2917 = phi float [ %2029, %2789 ], [ %2029, %2216 ], [ %2029, %2018 ], [ %2903, %2886 ], [ %2029, %2884 ], [ %2881, %2844 ], [ %2838, %2817 ], [ %2029, %2035 ]
  %2918 = phi float [ %2796, %2789 ], [ %2030, %2216 ], [ %2030, %2018 ], [ %2796, %2886 ], [ %2796, %2884 ], [ %2796, %2844 ], [ %2796, %2817 ], [ %2030, %2035 ]
  %2919 = phi float [ %2031, %2789 ], [ %2031, %2216 ], [ %2031, %2018 ], [ %2897, %2886 ], [ %2031, %2884 ], [ %2875, %2844 ], [ %2829, %2817 ], [ %2031, %2035 ]
  %2920 = phi float [ %2032, %2789 ], [ %2032, %2216 ], [ %2032, %2018 ], [ %2894, %2886 ], [ %2032, %2884 ], [ %2852, %2844 ], [ %2826, %2817 ], [ %2032, %2035 ]
  %2921 = phi float [ %2033, %2789 ], [ %2033, %2216 ], [ %2033, %2018 ], [ %2905, %2886 ], [ %2033, %2884 ], [ %2883, %2844 ], [ %2841, %2817 ], [ %2033, %2035 ]
  %2922 = phi float [ %2797, %2789 ], [ %2034, %2216 ], [ %2034, %2018 ], [ %2797, %2886 ], [ %2797, %2884 ], [ %2797, %2844 ], [ %2797, %2817 ], [ %2034, %2035 ]
  br i1 %448, label %3794, label %2923

; <label>:2923                                    ; preds = %2906
  %2924 = icmp ult i32 %502, 4
  %2925 = add i32 %60, 72
  %2926 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2925, i32 undef)  ; BufferLoad(srv,index,wot)
  %2927 = extractvalue %dx.types.ResRet.i32 %2926, 0
  %2928 = add i32 %60, 76
  %2929 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2928, i32 undef)  ; BufferLoad(srv,index,wot)
  %2930 = extractvalue %dx.types.ResRet.i32 %2929, 0
  %2931 = or i32 %2930, %2927
  %2932 = icmp eq i32 %2931, 0
  br i1 %2932, label %3794, label %2933

; <label>:2933                                    ; preds = %2923
  %2934 = and i32 %2927, 262144
  %2935 = icmp ne i32 %2934, 0
  %2936 = select i1 %2935, float %65, float 1.000000e+00
  %2937 = select i1 %2935, float %66, float 0.000000e+00
  %2938 = select i1 %2935, float %67, float 0.000000e+00
  %2939 = select i1 %2935, float %68, float 1.000000e+00
  %2940 = select i1 %2935, float %69, float %92
  %2941 = select i1 %2935, float %70, float %93
  %2942 = add i32 %60, 332
  %2943 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2942, i32 undef)  ; BufferLoad(srv,index,wot)
  %2944 = extractvalue %dx.types.ResRet.i32 %2943, 0
  %2945 = lshr i32 %2944, 16
  %2946 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2945)  ; LegacyF16ToF32(value)
  %2947 = fmul fast float %2946, 0x3F50624DE0000000
  %2948 = add i32 %60, 136
  %2949 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2948, i32 undef)  ; BufferLoad(srv,index,wot)
  %2950 = extractvalue %dx.types.ResRet.i32 %2949, 0
  %2951 = lshr i32 %2950, 16
  %2952 = and i32 %2951, 255
  %2953 = lshr i32 %2950, 24
  %2954 = add i32 %60, 340
  %2955 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2954, i32 undef)  ; BufferLoad(srv,index,wot)
  %2956 = extractvalue %dx.types.ResRet.i32 %2955, 0
  %2957 = and i32 %2956, 65535
  %2958 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2957)  ; LegacyF16ToF32(value)
  %2959 = lshr i32 %2956, 16
  %2960 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2959)  ; LegacyF16ToF32(value)
  %2961 = add i32 %60, 80
  %2962 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2961, i32 undef)  ; BufferLoad(srv,index,wot)
  %2963 = extractvalue %dx.types.ResRet.i32 %2962, 0
  %2964 = lshr i32 %2963, 22
  %2965 = shl nuw nsw i32 %2964, 5
  %2966 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2965)  ; LegacyF16ToF32(value)
  %2967 = shl i32 %2963, 4
  %2968 = and i32 %2967, 32752
  %2969 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2968)  ; LegacyF16ToF32(value)
  %2970 = lshr i32 %2963, 7
  %2971 = and i32 %2970, 32752
  %2972 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2971)  ; LegacyF16ToF32(value)
  %2973 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2974 = extractvalue %dx.types.CBufRet.f32 %2973, 3
  %2975 = fmul fast float %2974, 1.000000e+03
  %2976 = fmul fast float %438, %2975
  %2977 = call float @dx.op.unary.f32(i32 22, float %2976)  ; Frc(value)
  %2978 = fadd fast float %2977, %428
  %2979 = fmul fast float %439, %2975
  %2980 = call float @dx.op.unary.f32(i32 22, float %2979)  ; Frc(value)
  %2981 = fadd fast float %2980, %430
  %2982 = fmul fast float %2947, %2975
  %2983 = call float @dx.op.unary.f32(i32 22, float %2982)  ; Frc(value)
  %2984 = fmul fast float %2983, 0x401921FB60000000
  %2985 = fadd fast float %2984, %2966
  %2986 = call float @dx.op.unary.f32(i32 13, float %2985)  ; Sin(value)
  %2987 = call float @dx.op.unary.f32(i32 12, float %2985)  ; Cos(value)
  %2988 = fsub fast float -0.000000e+00, %2986
  %2989 = fadd fast float %2940, -5.000000e-01
  %2990 = fadd fast float %2941, -5.000000e-01
  %2991 = fmul fast float %2958, %2989
  %2992 = fmul fast float %2960, %2990
  %2993 = fadd fast float %2991, 5.000000e-01
  %2994 = fadd fast float %2992, 5.000000e-01
  %2995 = fmul fast float %2969, %2993
  %2996 = fmul fast float %2972, %2994
  %2997 = fmul fast float %2987, %2995
  %2998 = call float @dx.op.tertiary.f32(i32 46, float %2988, float %2996, float %2997)  ; FMad(a,b,c)
  %2999 = fmul fast float %2986, %2995
  %3000 = call float @dx.op.tertiary.f32(i32 46, float %2987, float %2996, float %2999)  ; FMad(a,b,c)
  %3001 = fadd fast float %2978, %2998
  %3002 = fadd fast float %2981, %3000
  %3003 = icmp ugt i32 %2952, 1
  %3004 = icmp ugt i32 %2950, 33554431
  %3005 = or i1 %3004, %3003
  br i1 %3005, label %3006, label %3031

; <label>:3006                                    ; preds = %2933
  %3007 = add i32 %60, 276
  %3008 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3007, i32 undef)  ; BufferLoad(srv,index,wot)
  %3009 = extractvalue %dx.types.ResRet.i32 %3008, 0
  %3010 = lshr i32 %3009, 16
  %3011 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3010)  ; LegacyF16ToF32(value)
  %3012 = fmul fast float %2974, %3011
  %3013 = call float @dx.op.unary.f32(i32 22, float %3012)  ; Frc(value)
  %3014 = mul nuw nsw i32 %2952, %2953
  %3015 = uitofp i32 %3014 to float
  %3016 = fmul fast float %3013, %3015
  %3017 = call float @dx.op.unary.f32(i32 27, float %3016)  ; Round_ni(value)
  %3018 = fptoui float %3017 to i32
  %3019 = urem i32 %3018, %2952
  %3020 = udiv i32 %3018, %2953
  %3021 = call float @dx.op.unary.f32(i32 22, float %3001)  ; Frc(value)
  %3022 = call float @dx.op.unary.f32(i32 22, float %3002)  ; Frc(value)
  %3023 = uitofp i32 %3019 to float
  %3024 = uitofp i32 %3020 to float
  %3025 = fadd fast float %3021, %3023
  %3026 = fadd fast float %3022, %3024
  %3027 = uitofp i32 %2952 to float
  %3028 = uitofp i32 %2953 to float
  %3029 = fdiv fast float %3025, %3027
  %3030 = fdiv fast float %3026, %3028
  br label %3031

; <label>:3031                                    ; preds = %3006, %2933
  %3032 = phi float [ %3029, %3006 ], [ %3001, %2933 ]
  %3033 = phi float [ %3030, %3006 ], [ %3002, %2933 ]
  %3034 = and i32 %2927, 256
  %3035 = icmp eq i32 %3034, 0
  br i1 %3035, label %3082, label %3036

; <label>:3036                                    ; preds = %3031
  %3037 = add i32 %60, 436
  %3038 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3037, i32 undef)  ; BufferLoad(srv,index,wot)
  %3039 = extractvalue %dx.types.ResRet.i32 %3038, 0
  %3040 = add i32 %3039, 0
  %3041 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3040, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3042 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3041, %dx.types.Handle %111, float %3032, float %3033, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3043 = extractvalue %dx.types.ResRet.f32 %3042, 0
  %3044 = add i32 %60, 148
  %3045 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3044, i32 undef)  ; BufferLoad(srv,index,wot)
  %3046 = extractvalue %dx.types.ResRet.i32 %3045, 0
  %3047 = shl i32 %3046, 4
  %3048 = and i32 %3047, 32752
  %3049 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3048)  ; LegacyF16ToF32(value)
  %3050 = lshr i32 %3046, 7
  %3051 = and i32 %3050, 32752
  %3052 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3051)  ; LegacyF16ToF32(value)
  %3053 = fsub fast float 1.000000e+00, %497
  %3054 = call float @dx.op.binary.f32(i32 35, float %3053, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %3055 = bitcast float %497 to i32
  %3056 = sitofp i32 %3055 to float
  %3057 = fadd fast float %3056, 0xC1CFBF8940000000
  %3058 = fmul fast float %3052, %3057
  %3059 = fadd fast float %3058, 0x41CFBF8940000000
  %3060 = fptosi float %3059 to i32
  %3061 = bitcast i32 %3060 to float
  %3062 = bitcast float %3054 to i32
  %3063 = sitofp i32 %3062 to float
  %3064 = fadd fast float %3063, 0xC1CFBF8940000000
  %3065 = fmul fast float %3064, %3052
  %3066 = fadd fast float %3065, 0x41CFBF8940000000
  %3067 = fptosi float %3066 to i32
  %3068 = bitcast i32 %3067 to float
  %3069 = fmul fast float %3061, %3049
  %3070 = fmul fast float %3068, %3049
  %3071 = fsub fast float %3054, %3069
  %3072 = fadd fast float %3070, %3054
  %3073 = call float @dx.op.unary.f32(i32 7, float %3071)  ; Saturate(value)
  %3074 = call float @dx.op.unary.f32(i32 7, float %3072)  ; Saturate(value)
  %3075 = fsub fast float %3043, %3073
  %3076 = fsub fast float %3074, %3073
  %3077 = bitcast float %3076 to i32
  %3078 = sub nsw i32 2129859010, %3077
  %3079 = bitcast i32 %3078 to float
  %3080 = fmul fast float %3079, %3075
  %3081 = call float @dx.op.unary.f32(i32 7, float %3080)  ; Saturate(value)
  br label %3082

; <label>:3082                                    ; preds = %3036, %3031
  %3083 = phi float [ %3081, %3036 ], [ %497, %3031 ]
  %3084 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2925, i32 undef)  ; BufferLoad(srv,index,wot)
  %3085 = extractvalue %dx.types.ResRet.i32 %3084, 0
  %3086 = and i32 %3085, 128
  %3087 = icmp eq i32 %3086, 0
  br i1 %3087, label %3104, label %3088

; <label>:3088                                    ; preds = %3082
  %3089 = add i32 %60, 420
  %3090 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3089, i32 undef)  ; BufferLoad(srv,index,wot)
  %3091 = extractvalue %dx.types.ResRet.i32 %3090, 0
  %3092 = add i32 %3091, 0
  %3093 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3092, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3094 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3093, %dx.types.Handle %111, float %3032, float %3033, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3095 = extractvalue %dx.types.ResRet.f32 %3094, 0
  %3096 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2925, i32 undef)  ; BufferLoad(srv,index,wot)
  %3097 = extractvalue %dx.types.ResRet.i32 %3096, 0
  %3098 = and i32 %3097, 524288
  %3099 = icmp ne i32 %3098, 0
  %3100 = fcmp fast ogt float %3095, 0x3FE0101020000000
  %3101 = select i1 %3100, float 1.000000e+00, float 0.000000e+00
  %3102 = select i1 %3099, float %3101, float %3095
  %3103 = fmul fast float %3102, %3083
  br label %3104

; <label>:3104                                    ; preds = %3088, %3082
  %3105 = phi float [ %3103, %3088 ], [ %3083, %3082 ]
  %3106 = fcmp fast ult float %3105, 0x3F70101020000000
  br i1 %3106, label %3794, label %3107

; <label>:3107                                    ; preds = %3104
  %3108 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2925, i32 undef)  ; BufferLoad(srv,index,wot)
  %3109 = extractvalue %dx.types.ResRet.i32 %3108, 0
  %3110 = and i32 %3109, 16
  %3111 = icmp eq i32 %3110, 0
  br i1 %3111, label %3310, label %3112

; <label>:3112                                    ; preds = %3107
  %3113 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2948, i32 undef)  ; BufferLoad(srv,index,wot)
  %3114 = extractvalue %dx.types.ResRet.i32 %3113, 0
  %3115 = add i32 %60, 372
  %3116 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3115, i32 undef)  ; BufferLoad(srv,index,wot)
  %3117 = extractvalue %dx.types.ResRet.i32 %3116, 0
  %3118 = add i32 %3117, 0
  %3119 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3118, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3120 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3119, %dx.types.Handle %110, float %3032, float %3033, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3121 = extractvalue %dx.types.ResRet.f32 %3120, 0
  %3122 = extractvalue %dx.types.ResRet.f32 %3120, 1
  %3123 = extractvalue %dx.types.ResRet.f32 %3120, 2
  %3124 = extractvalue %dx.types.ResRet.f32 %3120, 3
  %3125 = and i32 %3114, 255
  %3126 = uitofp i32 %3125 to float
  %3127 = lshr i32 %3114, 8
  %3128 = and i32 %3127, 255
  %3129 = uitofp i32 %3128 to float
  %3130 = fmul fast float %3124, %3126
  %3131 = fadd fast float %3130, %3129
  %3132 = fmul fast float %3131, 0x3F70101000000000
  %3133 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2925, i32 undef)  ; BufferLoad(srv,index,wot)
  %3134 = extractvalue %dx.types.ResRet.i32 %3133, 0
  %3135 = and i32 %3134, 512
  %3136 = icmp eq i32 %3135, 0
  br i1 %3136, label %3145, label %3137

; <label>:3137                                    ; preds = %3112
  %3138 = add i32 %60, 452
  %3139 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3138, i32 undef)  ; BufferLoad(srv,index,wot)
  %3140 = extractvalue %dx.types.ResRet.i32 %3139, 0
  %3141 = add i32 %3140, 0
  %3142 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3141, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3143 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3142, %dx.types.Handle %111, float %3032, float %3033, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3144 = extractvalue %dx.types.ResRet.f32 %3143, 0
  br label %3145

; <label>:3145                                    ; preds = %3137, %3112
  %3146 = phi float [ %3144, %3137 ], [ 1.000000e+00, %3112 ]
  %3147 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2925, i32 undef)  ; BufferLoad(srv,index,wot)
  %3148 = extractvalue %dx.types.ResRet.i32 %3147, 0
  %3149 = and i32 %3148, 33554432
  %3150 = icmp eq i32 %3149, 0
  br i1 %3150, label %3257, label %3151

; <label>:3151                                    ; preds = %3145
  %3152 = add i32 %60, 272
  %3153 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3152, i32 undef)  ; BufferLoad(srv,index,wot)
  %3154 = extractvalue %dx.types.ResRet.i32 %3153, 0
  %3155 = and i32 %3154, 65535
  %3156 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3155)  ; LegacyF16ToF32(value)
  %3157 = lshr i32 %3154, 16
  %3158 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3157)  ; LegacyF16ToF32(value)
  %3159 = add i32 %60, 276
  %3160 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3159, i32 undef)  ; BufferLoad(srv,index,wot)
  %3161 = extractvalue %dx.types.ResRet.i32 %3160, 0
  %3162 = and i32 %3161, 65535
  %3163 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3162)  ; LegacyF16ToF32(value)
  %3164 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %410, i32 undef)  ; BufferLoad(srv,index,wot)
  %3165 = extractvalue %dx.types.ResRet.i32 %3164, 0
  %3166 = lshr i32 %3165, 24
  %3167 = uitofp i32 %3166 to float
  %3168 = fmul fast float %3167, 0x3F70101020000000
  %3169 = and i32 %3165, 255
  %3170 = uitofp i32 %3169 to float
  %3171 = fmul fast float %3170, 0x3F70101020000000
  %3172 = lshr i32 %3165, 8
  %3173 = and i32 %3172, 255
  %3174 = uitofp i32 %3173 to float
  %3175 = fmul fast float %3174, 0x3F70101020000000
  %3176 = lshr i32 %3165, 16
  %3177 = and i32 %3176, 255
  %3178 = uitofp i32 %3177 to float
  %3179 = fmul fast float %3178, 0x3F70101020000000
  %3180 = add i32 %60, 268
  %3181 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3180, i32 undef)  ; BufferLoad(srv,index,wot)
  %3182 = extractvalue %dx.types.ResRet.i32 %3181, 0
  %3183 = lshr i32 %3182, 24
  %3184 = uitofp i32 %3183 to float
  %3185 = fmul fast float %3184, 0x3F70101020000000
  %3186 = and i32 %3182, 255
  %3187 = uitofp i32 %3186 to float
  %3188 = fmul fast float %3187, 0x3F70101020000000
  %3189 = lshr i32 %3182, 8
  %3190 = and i32 %3189, 255
  %3191 = uitofp i32 %3190 to float
  %3192 = fmul fast float %3191, 0x3F70101020000000
  %3193 = lshr i32 %3182, 16
  %3194 = and i32 %3193, 255
  %3195 = uitofp i32 %3194 to float
  %3196 = fmul fast float %3195, 0x3F70101020000000
  %3197 = bitcast float %3121 to i32
  %3198 = ashr i32 %3197, 1
  %3199 = sub nsw i32 1597463174, %3198
  %3200 = bitcast i32 %3199 to float
  %3201 = fmul fast float %3121, 5.000000e-01
  %3202 = fmul fast float %3200, %3200
  %3203 = fmul fast float %3202, %3201
  %3204 = fsub fast float 1.500000e+00, %3203
  %3205 = fmul fast float %3200, %3121
  %3206 = fmul fast float %3205, %3204
  %3207 = bitcast float %3122 to i32
  %3208 = ashr i32 %3207, 1
  %3209 = sub nsw i32 1597463174, %3208
  %3210 = bitcast i32 %3209 to float
  %3211 = fmul fast float %3122, 5.000000e-01
  %3212 = fmul fast float %3210, %3210
  %3213 = fmul fast float %3212, %3211
  %3214 = fsub fast float 1.500000e+00, %3213
  %3215 = fmul fast float %3210, %3122
  %3216 = fmul fast float %3215, %3214
  %3217 = bitcast float %3123 to i32
  %3218 = ashr i32 %3217, 1
  %3219 = sub nsw i32 1597463174, %3218
  %3220 = bitcast i32 %3219 to float
  %3221 = fmul fast float %3123, 5.000000e-01
  %3222 = fmul fast float %3220, %3220
  %3223 = fmul fast float %3222, %3221
  %3224 = fsub fast float 1.500000e+00, %3223
  %3225 = fmul fast float %3220, %3123
  %3226 = fmul fast float %3225, %3224
  %3227 = fsub fast float %3206, %3188
  %3228 = fsub fast float %3216, %3192
  %3229 = fsub fast float %3226, %3196
  %3230 = fmul fast float %3227, %3156
  %3231 = fmul fast float %3228, %3158
  %3232 = fmul fast float %3229, %3163
  %3233 = fadd fast float %3230, %3171
  %3234 = fadd fast float %3231, %3175
  %3235 = fadd fast float %3232, %3179
  %3236 = call float @dx.op.unary.f32(i32 7, float %3233)  ; Saturate(value)
  %3237 = call float @dx.op.unary.f32(i32 7, float %3234)  ; Saturate(value)
  %3238 = call float @dx.op.unary.f32(i32 7, float %3235)  ; Saturate(value)
  %3239 = fmul fast float %3236, %3236
  %3240 = fmul fast float %3237, %3237
  %3241 = fmul fast float %3238, %3238
  %3242 = fsub fast float %3239, %3121
  %3243 = fsub fast float %3240, %3122
  %3244 = fsub fast float %3241, %3123
  %3245 = fmul fast float %3242, %3146
  %3246 = fmul fast float %3243, %3146
  %3247 = fmul fast float %3244, %3146
  %3248 = fadd fast float %3245, %3121
  %3249 = fadd fast float %3246, %3122
  %3250 = fadd fast float %3247, %3123
  %3251 = fadd fast float %3168, %3132
  %3252 = fsub fast float %3251, %3185
  %3253 = call float @dx.op.unary.f32(i32 7, float %3252)  ; Saturate(value)
  %3254 = fsub fast float %3253, %3132
  %3255 = fmul fast float %3254, %3146
  %3256 = fadd fast float %3255, %3132
  br label %3310

; <label>:3257                                    ; preds = %3145
  %3258 = and i32 %3148, 134217728
  %3259 = icmp eq i32 %3258, 0
  br i1 %3259, label %3294, label %3260

; <label>:3260                                    ; preds = %3257
  %3261 = call float @dx.op.unary.f32(i32 24, float %415)  ; Sqrt(value)
  %3262 = call float @dx.op.unary.f32(i32 24, float %419)  ; Sqrt(value)
  %3263 = call float @dx.op.unary.f32(i32 24, float %423)  ; Sqrt(value)
  %3264 = fadd fast float %3261, -5.000000e-01
  %3265 = fadd fast float %3262, -5.000000e-01
  %3266 = fadd fast float %3263, -5.000000e-01
  %3267 = fmul fast float %3264, %3146
  %3268 = fmul fast float %3265, %3146
  %3269 = fmul fast float %3266, %3146
  %3270 = fadd fast float %3267, 5.000000e-01
  %3271 = fadd fast float %3268, 5.000000e-01
  %3272 = fadd fast float %3269, 5.000000e-01
  %3273 = call float @dx.op.unary.f32(i32 24, float %3121)  ; Sqrt(value)
  %3274 = call float @dx.op.unary.f32(i32 24, float %3122)  ; Sqrt(value)
  %3275 = call float @dx.op.unary.f32(i32 24, float %3123)  ; Sqrt(value)
  %3276 = fmul fast float %3270, 2.000000e+00
  %3277 = fsub fast float 1.000000e+00, %3276
  %3278 = fmul fast float %3277, %3273
  %3279 = fadd fast float %3278, %3276
  %3280 = fmul fast float %3279, %3273
  %3281 = fmul fast float %3271, 2.000000e+00
  %3282 = fsub fast float 1.000000e+00, %3281
  %3283 = fmul fast float %3282, %3274
  %3284 = fadd fast float %3283, %3281
  %3285 = fmul fast float %3284, %3274
  %3286 = fmul fast float %3272, 2.000000e+00
  %3287 = fsub fast float 1.000000e+00, %3286
  %3288 = fmul fast float %3287, %3275
  %3289 = fadd fast float %3288, %3286
  %3290 = fmul fast float %3289, %3275
  %3291 = fmul fast float %3280, %3280
  %3292 = fmul fast float %3285, %3285
  %3293 = fmul fast float %3290, %3290
  br label %3310

; <label>:3294                                    ; preds = %3257
  %3295 = fmul fast float %415, %415
  %3296 = fmul fast float %419, %419
  %3297 = fmul fast float %423, %423
  %3298 = fadd fast float %3295, -1.000000e+00
  %3299 = fadd fast float %3296, -1.000000e+00
  %3300 = fadd fast float %3297, -1.000000e+00
  %3301 = fmul fast float %3146, %3298
  %3302 = fmul fast float %3146, %3299
  %3303 = fmul fast float %3146, %3300
  %3304 = fadd fast float %3301, 1.000000e+00
  %3305 = fadd fast float %3302, 1.000000e+00
  %3306 = fadd fast float %3303, 1.000000e+00
  %3307 = fmul fast float %3304, %3121
  %3308 = fmul fast float %3305, %3122
  %3309 = fmul fast float %3306, %3123
  br label %3310

; <label>:3310                                    ; preds = %3294, %3260, %3151, %3107
  %3311 = phi float [ %3256, %3151 ], [ %3132, %3260 ], [ %3132, %3294 ], [ 0x3FA23C0BE0000000, %3107 ]
  %3312 = phi float [ %3248, %3151 ], [ %3291, %3260 ], [ %3307, %3294 ], [ 1.000000e+00, %3107 ]
  %3313 = phi float [ %3249, %3151 ], [ %3292, %3260 ], [ %3308, %3294 ], [ 1.000000e+00, %3107 ]
  %3314 = phi float [ %3250, %3151 ], [ %3293, %3260 ], [ %3309, %3294 ], [ 1.000000e+00, %3107 ]
  %3315 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3316 = extractvalue %dx.types.CBufRet.i32 %3315, 1
  %3317 = and i32 %3316, 1
  %3318 = icmp ne i32 %3317, 0
  %3319 = add i32 %60, 356
  %3320 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3319, i32 undef)  ; BufferLoad(srv,index,wot)
  %3321 = extractvalue %dx.types.ResRet.i32 %3320, 0
  %3322 = and i32 %3321, 32
  %3323 = icmp ne i32 %3322, 0
  %3324 = and i1 %3318, %3323
  %3325 = select i1 %3324, float 1.000000e+00, float %3312
  %3326 = select i1 %3324, float 0x3FD3333340000000, float %3313
  %3327 = select i1 %3324, float 0x3FD3333340000000, float %3314
  %3328 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2925, i32 undef)  ; BufferLoad(srv,index,wot)
  %3329 = extractvalue %dx.types.ResRet.i32 %3328, 0
  %3330 = and i32 %3329, 32
  %3331 = icmp eq i32 %3330, 0
  br i1 %3331, label %3404, label %3332

; <label>:3332                                    ; preds = %3310
  %3333 = add i32 %60, 140
  %3334 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3333, i32 undef)  ; BufferLoad(srv,index,wot)
  %3335 = extractvalue %dx.types.ResRet.i32 %3334, 0
  %3336 = add i32 %60, 388
  %3337 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3336, i32 undef)  ; BufferLoad(srv,index,wot)
  %3338 = extractvalue %dx.types.ResRet.i32 %3337, 0
  %3339 = add i32 %3338, 0
  %3340 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3339, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3341 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3340, %dx.types.Handle %110, float %3032, float %3033, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3342 = extractvalue %dx.types.ResRet.f32 %3341, 0
  %3343 = extractvalue %dx.types.ResRet.f32 %3341, 1
  %3344 = extractvalue %dx.types.ResRet.f32 %3341, 2
  %3345 = extractvalue %dx.types.ResRet.f32 %3341, 3
  %3346 = and i32 %3335, 255
  %3347 = uitofp i32 %3346 to float
  %3348 = lshr i32 %3335, 8
  %3349 = and i32 %3348, 255
  %3350 = uitofp i32 %3349 to float
  %3351 = lshr i32 %3335, 16
  %3352 = and i32 %3351, 255
  %3353 = uitofp i32 %3352 to float
  %3354 = fmul fast float %3353, 0x3F70101000000000
  %3355 = fmul fast float %3342, %3347
  %3356 = fadd fast float %3355, %3350
  %3357 = fmul fast float %3356, 0x3F70101000000000
  %3358 = fadd fast float %3343, -5.000000e-01
  %3359 = fadd fast float %3345, -5.000000e-01
  %3360 = fmul fast float %3358, %3354
  %3361 = fmul fast float %3359, %3354
  %3362 = fadd fast float %3360, 5.000000e-01
  %3363 = fadd fast float %3361, 5.000000e-01
  %3364 = fmul fast float %3362, 2.000000e+00
  %3365 = fadd fast float %3364, -1.000000e+00
  %3366 = fmul fast float %3363, 2.000000e+00
  %3367 = fadd fast float %3366, -1.000000e+00
  %3368 = fadd fast float %3365, %3367
  %3369 = fmul fast float %3368, 5.000000e-01
  %3370 = fsub fast float %3365, %3367
  %3371 = fmul fast float %3370, 5.000000e-01
  %3372 = call float @dx.op.unary.f32(i32 6, float %3369)  ; FAbs(value)
  %3373 = fsub fast float 1.000000e+00, %3372
  %3374 = call float @dx.op.unary.f32(i32 6, float %3371)  ; FAbs(value)
  %3375 = fsub fast float %3373, %3374
  %3376 = call float @dx.op.dot3.f32(i32 55, float %3369, float %3371, float %3375, float %3369, float %3371, float %3375)  ; Dot3(ax,ay,az,bx,by,bz)
  %3377 = call float @dx.op.unary.f32(i32 25, float %3376)  ; Rsqrt(value)
  %3378 = fmul fast float %3369, %3377
  %3379 = fmul fast float %3371, %3377
  %3380 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2925, i32 undef)  ; BufferLoad(srv,index,wot)
  %3381 = extractvalue %dx.types.ResRet.i32 %3380, 0
  %3382 = and i32 %3381, 67108864
  %3383 = icmp eq i32 %3382, 0
  br i1 %3383, label %3400, label %3384

; <label>:3384                                    ; preds = %3332
  %3385 = add i32 %60, 328
  %3386 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3385, i32 undef)  ; BufferLoad(srv,index,wot)
  %3387 = extractvalue %dx.types.ResRet.i32 %3386, 0
  %3388 = and i32 %3387, 65535
  %3389 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3388)  ; LegacyF16ToF32(value)
  %3390 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2942, i32 undef)  ; BufferLoad(srv,index,wot)
  %3391 = extractvalue %dx.types.ResRet.i32 %3390, 0
  %3392 = and i32 %3391, 65535
  %3393 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3392)  ; LegacyF16ToF32(value)
  %3394 = lshr i32 %3387, 16
  %3395 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3394)  ; LegacyF16ToF32(value)
  %3396 = fsub fast float %3357, %3395
  %3397 = fmul fast float %3396, %3389
  %3398 = fadd fast float %3397, %3393
  %3399 = call float @dx.op.unary.f32(i32 7, float %3398)  ; Saturate(value)
  br label %3400

; <label>:3400                                    ; preds = %3384, %3332
  %3401 = phi float [ %3399, %3384 ], [ %3357, %3332 ]
  %3402 = call float @dx.op.dot2.f32(i32 54, float %3378, float %3379, float %2936, float %2937)  ; Dot2(ax,ay,bx,by)
  %3403 = call float @dx.op.dot2.f32(i32 54, float %3378, float %3379, float %2938, float %2939)  ; Dot2(ax,ay,bx,by)
  br label %3404

; <label>:3404                                    ; preds = %3400, %3310
  %3405 = phi float [ %3401, %3400 ], [ 0x3FD6666660000000, %3310 ]
  %3406 = phi float [ %3402, %3400 ], [ 0.000000e+00, %3310 ]
  %3407 = phi float [ %3403, %3400 ], [ 0.000000e+00, %3310 ]
  %3408 = phi float [ %3344, %3400 ], [ 1.000000e+00, %3310 ]
  %3409 = add i32 %60, 208
  %3410 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3409, i32 undef)  ; BufferLoad(srv,index,wot)
  %3411 = extractvalue %dx.types.ResRet.i32 %3410, 0
  %3412 = lshr i32 %3411, 22
  %3413 = shl nuw nsw i32 %3412, 5
  %3414 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3413)  ; LegacyF16ToF32(value)
  %3415 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2925, i32 undef)  ; BufferLoad(srv,index,wot)
  %3416 = extractvalue %dx.types.ResRet.i32 %3415, 0
  %3417 = and i32 %3416, 64
  %3418 = icmp eq i32 %3417, 0
  br i1 %3418, label %3452, label %3419

; <label>:3419                                    ; preds = %3404
  %3420 = add i32 %60, 404
  %3421 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3420, i32 undef)  ; BufferLoad(srv,index,wot)
  %3422 = extractvalue %dx.types.ResRet.i32 %3421, 0
  %3423 = add i32 %3422, 0
  %3424 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3423, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3425 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2925, i32 undef)  ; BufferLoad(srv,index,wot)
  %3426 = extractvalue %dx.types.ResRet.i32 %3425, 0
  %3427 = and i32 %3426, 131072
  %3428 = icmp eq i32 %3427, 0
  %3429 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3424, %dx.types.Handle %110, float %3032, float %3033, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3430 = extractvalue %dx.types.ResRet.f32 %3429, 0
  %3431 = extractvalue %dx.types.ResRet.f32 %3429, 1
  %3432 = extractvalue %dx.types.ResRet.f32 %3429, 2
  %3433 = fmul fast float %3430, %403
  %3434 = fmul fast float %3431, %406
  %3435 = fmul fast float %3432, %409
  br i1 %3428, label %3442, label %3436

; <label>:3436                                    ; preds = %3419
  %3437 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3438 = extractvalue %dx.types.CBufRet.f32 %3437, 0
  %3439 = fmul fast float %3438, %3433
  %3440 = fmul fast float %3438, %3434
  %3441 = fmul fast float %3438, %3435
  br label %3442

; <label>:3442                                    ; preds = %3436, %3419
  %3443 = phi float [ %3439, %3436 ], [ %3433, %3419 ]
  %3444 = phi float [ %3440, %3436 ], [ %3434, %3419 ]
  %3445 = phi float [ %3441, %3436 ], [ %3435, %3419 ]
  %3446 = fmul fast float %3443, %3414
  %3447 = select i1 %260, float %3446, float %3443
  %3448 = call float @dx.op.dot3.f32(i32 55, float %3447, float %3444, float %3445, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3449 = select i1 %260, float 0.000000e+00, float %3443
  %3450 = select i1 %260, float %3448, float %3444
  %3451 = select i1 %260, float 0.000000e+00, float %3445
  br label %3452

; <label>:3452                                    ; preds = %3442, %3404
  %3453 = phi float [ %3449, %3442 ], [ 0.000000e+00, %3404 ]
  %3454 = phi float [ %3450, %3442 ], [ 0.000000e+00, %3404 ]
  %3455 = phi float [ %3451, %3442 ], [ 0.000000e+00, %3404 ]
  %3456 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2925, i32 undef)  ; BufferLoad(srv,index,wot)
  %3457 = extractvalue %dx.types.ResRet.i32 %3456, 0
  %3458 = and i32 %3457, 1024
  %3459 = icmp eq i32 %3458, 0
  br i1 %3459, label %3490, label %3460

; <label>:3460                                    ; preds = %3452
  %3461 = add i32 %60, 200
  %3462 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3461, i32 undef)  ; BufferLoad(srv,index,wot)
  %3463 = extractvalue %dx.types.ResRet.i32 %3462, 0
  %3464 = and i32 %3463, 255
  %3465 = uitofp i32 %3464 to float
  %3466 = fmul fast float %3465, 0x3F70101020000000
  %3467 = lshr i32 %3463, 8
  %3468 = and i32 %3467, 255
  %3469 = uitofp i32 %3468 to float
  %3470 = fmul fast float %3469, 0x3F70101020000000
  %3471 = lshr i32 %3463, 16
  %3472 = and i32 %3471, 255
  %3473 = uitofp i32 %3472 to float
  %3474 = fmul fast float %3473, 0x3F70101020000000
  %3475 = fmul fast float %3466, %3466
  %3476 = fmul fast float %3470, %3470
  %3477 = fmul fast float %3474, %3474
  %3478 = add i32 %60, 468
  %3479 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3478, i32 undef)  ; BufferLoad(srv,index,wot)
  %3480 = extractvalue %dx.types.ResRet.i32 %3479, 0
  %3481 = add i32 %3480, 0
  %3482 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3481, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3483 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3482, %dx.types.Handle %111, float %3032, float %3033, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3484 = extractvalue %dx.types.ResRet.f32 %3483, 0
  %3485 = extractvalue %dx.types.ResRet.f32 %3483, 1
  %3486 = extractvalue %dx.types.ResRet.f32 %3483, 2
  %3487 = fmul fast float %3475, %3484
  %3488 = fmul fast float %3476, %3485
  %3489 = fmul fast float %3477, %3486
  br label %3490

; <label>:3490                                    ; preds = %3460, %3452
  %3491 = phi float [ %3487, %3460 ], [ 0.000000e+00, %3452 ]
  %3492 = phi float [ %3488, %3460 ], [ 0.000000e+00, %3452 ]
  %3493 = phi float [ %3489, %3460 ], [ 0.000000e+00, %3452 ]
  %3494 = fcmp fast ogt float %3491, 0.000000e+00
  %3495 = fcmp fast ogt float %3492, 0.000000e+00
  %3496 = fcmp fast ogt float %3493, 0.000000e+00
  %3497 = call float @dx.op.unary.f32(i32 23, float %3491)  ; Log(value)
  %3498 = call float @dx.op.unary.f32(i32 23, float %3492)  ; Log(value)
  %3499 = call float @dx.op.unary.f32(i32 23, float %3493)  ; Log(value)
  %3500 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3409, i32 undef)  ; BufferLoad(srv,index,wot)
  %3501 = extractvalue %dx.types.ResRet.i32 %3500, 0
  %3502 = lshr i32 %3501, 7
  %3503 = and i32 %3502, 32752
  %3504 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3503)  ; LegacyF16ToF32(value)
  %3505 = fmul fast float %3497, 0xBFE62E4300000000
  %3506 = fmul fast float %3505, %3504
  %3507 = fmul fast float %3498, 0xBFE62E4300000000
  %3508 = fmul fast float %3507, %3504
  %3509 = fmul fast float %3499, 0xBFE62E4300000000
  %3510 = fmul fast float %3509, %3504
  %3511 = select i1 %3494, float %3506, float 1.270000e+02
  %3512 = select i1 %3495, float %3508, float 1.270000e+02
  %3513 = select i1 %3496, float %3510, float 1.270000e+02
  %3514 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2925, i32 undef)  ; BufferLoad(srv,index,wot)
  %3515 = extractvalue %dx.types.ResRet.i32 %3514, 0
  %3516 = and i32 %3515, 10240
  %3517 = icmp eq i32 %3516, 0
  br i1 %3517, label %3538, label %3518

; <label>:3518                                    ; preds = %3490
  %3519 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2925, i32 undef)  ; BufferLoad(srv,index,wot)
  %3520 = extractvalue %dx.types.ResRet.i32 %3519, 0
  %3521 = and i32 %3520, 2048
  %3522 = icmp eq i32 %3521, 0
  br i1 %3522, label %3538, label %3523

; <label>:3523                                    ; preds = %3518
  %3524 = add i32 %60, 484
  %3525 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3524, i32 undef)  ; BufferLoad(srv,index,wot)
  %3526 = extractvalue %dx.types.ResRet.i32 %3525, 0
  %3527 = add i32 %3526, 0
  %3528 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3527, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3529 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3528, %dx.types.Handle %111, float %3032, float %3033, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3530 = extractvalue %dx.types.ResRet.f32 %3529, 3
  %3531 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3409, i32 undef)  ; BufferLoad(srv,index,wot)
  %3532 = extractvalue %dx.types.ResRet.i32 %3531, 0
  %3533 = shl i32 %3532, 4
  %3534 = and i32 %3533, 32752
  %3535 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3534)  ; LegacyF16ToF32(value)
  %3536 = fmul fast float %3535, %3530
  %3537 = call float @dx.op.binary.f32(i32 35, float %3536, float 0x3F70101020000000)  ; FMax(a,b)
  br label %3538

; <label>:3538                                    ; preds = %3523, %3518, %3490
  %3539 = phi float [ %3537, %3523 ], [ 0x3F70101020000000, %3518 ], [ 0x3F70101020000000, %3490 ]
  %3540 = add i32 %60, 144
  %3541 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3540, i32 undef)  ; BufferLoad(srv,index,wot)
  %3542 = extractvalue %dx.types.ResRet.i32 %3541, 0
  %3543 = and i32 %3542, 255
  %3544 = uitofp i32 %3543 to float
  %3545 = lshr i32 %3542, 8
  %3546 = and i32 %3545, 255
  %3547 = uitofp i32 %3546 to float
  %3548 = call float @dx.op.dot3.f32(i32 55, float %3325, float %3326, float %3327, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3549 = fmul fast float %3547, %3548
  %3550 = fadd fast float %3549, %3544
  %3551 = fmul fast float %3550, 0x3F70101020000000
  %3552 = call float @dx.op.unary.f32(i32 7, float %3551)  ; Saturate(value)
  br i1 %2924, label %3553, label %3588

; <label>:3553                                    ; preds = %3538
  %3554 = fmul fast float %3539, 2.000000e+00
  %3555 = fcmp fast olt float %3511, 1.270000e+02
  %3556 = fcmp fast olt float %3512, 1.270000e+02
  %3557 = fcmp fast olt float %3513, 1.270000e+02
  %3558 = fmul fast float %3511, 0xBFF7154760000000
  %3559 = fmul fast float %3558, %3554
  %3560 = fmul fast float %3512, 0xBFF7154760000000
  %3561 = fmul fast float %3560, %3554
  %3562 = fmul fast float %3513, 0xBFF7154760000000
  %3563 = fmul fast float %3562, %3554
  %3564 = call float @dx.op.unary.f32(i32 21, float %3559)  ; Exp(value)
  %3565 = call float @dx.op.unary.f32(i32 21, float %3561)  ; Exp(value)
  %3566 = call float @dx.op.unary.f32(i32 21, float %3563)  ; Exp(value)
  %3567 = call float @dx.op.unary.f32(i32 7, float %3564)  ; Saturate(value)
  %3568 = call float @dx.op.unary.f32(i32 7, float %3565)  ; Saturate(value)
  %3569 = call float @dx.op.unary.f32(i32 7, float %3566)  ; Saturate(value)
  %3570 = fadd fast float %3567, -1.000000e+00
  %3571 = select i1 %3555, float %3570, float -1.000000e+00
  %3572 = fadd fast float %3568, -1.000000e+00
  %3573 = select i1 %3556, float %3572, float -1.000000e+00
  %3574 = fadd fast float %3569, -1.000000e+00
  %3575 = select i1 %3557, float %3574, float -1.000000e+00
  %3576 = fmul fast float %3571, %3105
  %3577 = fmul fast float %3573, %3105
  %3578 = fmul fast float %3575, %3105
  %3579 = fadd fast float %3576, 1.000000e+00
  %3580 = fadd fast float %3577, 1.000000e+00
  %3581 = fadd fast float %3578, 1.000000e+00
  %3582 = fmul fast float %3579, %2909
  %3583 = fmul fast float %3580, %2910
  %3584 = fmul fast float %3581, %2911
  %3585 = fmul fast float %3579, %2912
  %3586 = fmul fast float %3580, %2913
  %3587 = fmul fast float %3581, %2914
  br label %3588

; <label>:3588                                    ; preds = %3553, %3538
  %3589 = phi float [ %3582, %3553 ], [ %2909, %3538 ]
  %3590 = phi float [ %3583, %3553 ], [ %2910, %3538 ]
  %3591 = phi float [ %3584, %3553 ], [ %2911, %3538 ]
  %3592 = phi float [ %3585, %3553 ], [ %2912, %3538 ]
  %3593 = phi float [ %3586, %3553 ], [ %2913, %3538 ]
  %3594 = phi float [ %3587, %3553 ], [ %2914, %3538 ]
  %3595 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2925, i32 undef)  ; BufferLoad(srv,index,wot)
  %3596 = extractvalue %dx.types.ResRet.i32 %3595, 0
  %3597 = and i32 %3596, 3
  %3598 = icmp eq i32 %3597, 3
  br i1 %3598, label %3677, label %3599

; <label>:3599                                    ; preds = %3588
  %3600 = and i32 %3596, 16
  %3601 = icmp ne i32 %3600, 0
  %3602 = select i1 %3601, float %3105, float 0.000000e+00
  %3603 = icmp eq i32 %3597, 0
  br i1 %3603, label %3604, label %3632

; <label>:3604                                    ; preds = %3599
  %3605 = and i32 %3596, 64
  %3606 = icmp ne i32 %3605, 0
  %3607 = select i1 %3606, float %3105, float 0.000000e+00
  %3608 = fsub fast float %3325, %3589
  %3609 = fsub fast float %3326, %3590
  %3610 = fsub fast float %3327, %3591
  %3611 = fmul fast float %3602, %3608
  %3612 = fmul fast float %3602, %3609
  %3613 = fmul fast float %3602, %3610
  %3614 = fadd fast float %3611, %3589
  %3615 = fadd fast float %3612, %3590
  %3616 = fadd fast float %3613, %3591
  %3617 = fsub fast float %3311, %2918
  %3618 = fmul fast float %3602, %3617
  %3619 = fadd fast float %3618, %2918
  %3620 = fsub fast float %3453, %3592
  %3621 = fsub fast float %3454, %3593
  %3622 = fsub fast float %3455, %3594
  %3623 = fmul fast float %3607, %3620
  %3624 = fmul fast float %3607, %3621
  %3625 = fmul fast float %3607, %3622
  %3626 = fadd fast float %3623, %3592
  %3627 = fadd fast float %3624, %3593
  %3628 = fadd fast float %3625, %3594
  %3629 = fsub fast float %3552, %2922
  %3630 = fmul fast float %3602, %3629
  %3631 = fadd fast float %3630, %2922
  br label %3677

; <label>:3632                                    ; preds = %3599
  %3633 = icmp eq i32 %3597, 1
  br i1 %3633, label %3634, label %3647

; <label>:3634                                    ; preds = %3632
  %3635 = fadd fast float %3325, -1.000000e+00
  %3636 = fadd fast float %3326, -1.000000e+00
  %3637 = fadd fast float %3327, -1.000000e+00
  %3638 = fmul fast float %3602, %3635
  %3639 = fmul fast float %3602, %3636
  %3640 = fmul fast float %3602, %3637
  %3641 = fadd fast float %3638, 1.000000e+00
  %3642 = fadd fast float %3639, 1.000000e+00
  %3643 = fadd fast float %3640, 1.000000e+00
  %3644 = fmul fast float %3641, %3589
  %3645 = fmul fast float %3642, %3590
  %3646 = fmul fast float %3643, %3591
  br label %3677

; <label>:3647                                    ; preds = %3632
  %3648 = icmp eq i32 %3597, 2
  br i1 %3648, label %3649, label %3677

; <label>:3649                                    ; preds = %3647
  %3650 = call float @dx.op.unary.f32(i32 24, float %3325)  ; Sqrt(value)
  %3651 = call float @dx.op.unary.f32(i32 24, float %3326)  ; Sqrt(value)
  %3652 = call float @dx.op.unary.f32(i32 24, float %3327)  ; Sqrt(value)
  %3653 = fadd fast float %3650, -5.000000e-01
  %3654 = fadd fast float %3651, -5.000000e-01
  %3655 = fadd fast float %3652, -5.000000e-01
  %3656 = fmul fast float %3653, %3602
  %3657 = fmul fast float %3654, %3602
  %3658 = fmul fast float %3655, %3602
  %3659 = fadd fast float %3656, 5.000000e-01
  %3660 = fadd fast float %3657, 5.000000e-01
  %3661 = fadd fast float %3658, 5.000000e-01
  %3662 = fmul fast float %3659, 2.000000e+00
  %3663 = fsub fast float 1.000000e+00, %3662
  %3664 = fmul fast float %3663, %3589
  %3665 = fadd fast float %3664, %3662
  %3666 = fmul fast float %3665, %3589
  %3667 = fmul fast float %3660, 2.000000e+00
  %3668 = fsub fast float 1.000000e+00, %3667
  %3669 = fmul fast float %3668, %3590
  %3670 = fadd fast float %3669, %3667
  %3671 = fmul fast float %3670, %3590
  %3672 = fmul fast float %3661, 2.000000e+00
  %3673 = fsub fast float 1.000000e+00, %3672
  %3674 = fmul fast float %3673, %3591
  %3675 = fadd fast float %3674, %3672
  %3676 = fmul fast float %3675, %3591
  br label %3677

; <label>:3677                                    ; preds = %3649, %3647, %3634, %3604, %3588
  %3678 = phi float [ %3589, %3588 ], [ %3666, %3649 ], [ %3589, %3647 ], [ %3644, %3634 ], [ %3614, %3604 ]
  %3679 = phi float [ %3590, %3588 ], [ %3671, %3649 ], [ %3590, %3647 ], [ %3645, %3634 ], [ %3615, %3604 ]
  %3680 = phi float [ %3591, %3588 ], [ %3676, %3649 ], [ %3591, %3647 ], [ %3646, %3634 ], [ %3616, %3604 ]
  %3681 = phi float [ %3592, %3588 ], [ %3592, %3649 ], [ %3592, %3647 ], [ %3592, %3634 ], [ %3626, %3604 ]
  %3682 = phi float [ %3593, %3588 ], [ %3593, %3649 ], [ %3593, %3647 ], [ %3593, %3634 ], [ %3627, %3604 ]
  %3683 = phi float [ %3594, %3588 ], [ %3594, %3649 ], [ %3594, %3647 ], [ %3594, %3634 ], [ %3628, %3604 ]
  %3684 = phi float [ %2918, %3588 ], [ %2918, %3649 ], [ %2918, %3647 ], [ %2918, %3634 ], [ %3619, %3604 ]
  %3685 = phi float [ %2922, %3588 ], [ %2922, %3649 ], [ %2922, %3647 ], [ %2922, %3634 ], [ %3631, %3604 ]
  %3686 = and i32 %3596, 12
  %3687 = icmp eq i32 %3686, 12
  br i1 %3687, label %3794, label %3688

; <label>:3688                                    ; preds = %3677
  %3689 = and i32 %3596, 2097184
  %3690 = icmp eq i32 %3689, 2097184
  %3691 = select i1 %3690, float %3105, float 0.000000e+00
  %3692 = and i32 %3596, 4194336
  %3693 = icmp eq i32 %3692, 4194336
  %3694 = select i1 %3693, float %3105, float 0.000000e+00
  %3695 = and i32 %3596, 8388640
  %3696 = icmp eq i32 %3695, 8388640
  %3697 = select i1 %3696, float %3105, float 0.000000e+00
  %3698 = and i32 %3596, 1024
  %3699 = icmp ne i32 %3698, 0
  %3700 = select i1 %3699, float %3105, float 0.000000e+00
  %3701 = and i32 %3596, 2048
  %3702 = icmp ne i32 %3701, 0
  %3703 = select i1 %3702, float %3105, float 0.000000e+00
  %3704 = icmp eq i32 %3686, 0
  br i1 %3704, label %3705, label %3730

; <label>:3705                                    ; preds = %3688
  %3706 = fsub fast float %3406, %2907
  %3707 = fsub fast float %3407, %2908
  %3708 = fmul fast float %3691, %3706
  %3709 = fmul fast float %3691, %3707
  %3710 = fadd fast float %3708, %2907
  %3711 = fadd fast float %3709, %2908
  %3712 = fsub fast float %3408, %2920
  %3713 = fmul fast float %3694, %3712
  %3714 = fadd fast float %3713, %2920
  %3715 = fsub fast float %3405, %2919
  %3716 = fmul fast float %3697, %3715
  %3717 = fadd fast float %3716, %2919
  %3718 = fsub fast float %3511, %2915
  %3719 = fsub fast float %3512, %2916
  %3720 = fsub fast float %3513, %2917
  %3721 = fmul fast float %3700, %3718
  %3722 = fmul fast float %3700, %3719
  %3723 = fmul fast float %3700, %3720
  %3724 = fadd fast float %3721, %2915
  %3725 = fadd fast float %3722, %2916
  %3726 = fadd fast float %3723, %2917
  %3727 = fsub fast float %3539, %2921
  %3728 = fmul fast float %3703, %3727
  %3729 = fadd fast float %3728, %2921
  br label %3794

; <label>:3730                                    ; preds = %3688
  %3731 = icmp eq i32 %3686, 4
  br i1 %3731, label %3732, label %3772

; <label>:3732                                    ; preds = %3730
  %3733 = fmul fast float %3691, %3406
  %3734 = fmul fast float %3691, %3407
  %3735 = fadd fast float %3733, %2907
  %3736 = fadd fast float %3734, %2908
  %3737 = call float @dx.op.binary.f32(i32 36, float %2920, float %3408)  ; FMin(a,b)
  %3738 = fsub fast float %3737, %2920
  %3739 = fmul fast float %3738, %3694
  %3740 = fadd fast float %3739, %2920
  %3741 = fadd fast float %3405, %2919
  %3742 = fmul fast float %3741, 0x3FF337FAE0000000
  %3743 = fmul fast float %2919, %2919
  %3744 = fmul fast float %3405, %3405
  %3745 = fadd fast float %3744, %3743
  %3746 = fmul fast float %3745, 0x3FE5152B00000000
  %3747 = fmul fast float %2919, 0xBFCC1F85E0000000
  %3748 = fmul fast float %3747, %3405
  %3749 = fadd fast float %3748, 0xBFE1363700000000
  %3750 = fadd fast float %3749, %3742
  %3751 = fsub fast float %3750, %3746
  %3752 = fmul fast float %3741, 0x3FBA6F0D00000000
  %3753 = fmul fast float %3745, 0x3FD0432880000000
  %3754 = fmul fast float %2919, 0xBFEF110800000000
  %3755 = fmul fast float %3754, %3405
  %3756 = fadd fast float %3755, 1.000000e+00
  %3757 = fsub fast float %3756, %3752
  %3758 = fadd fast float %3757, %3753
  %3759 = fdiv fast float %3751, %3758
  %3760 = call float @dx.op.unary.f32(i32 7, float %3759)  ; Saturate(value)
  %3761 = fsub fast float %3760, %2919
  %3762 = fmul fast float %3761, %3697
  %3763 = fadd fast float %3762, %2919
  %3764 = fmul fast float %3700, %3511
  %3765 = fmul fast float %3700, %3512
  %3766 = fmul fast float %3700, %3513
  %3767 = fadd fast float %3764, %2915
  %3768 = fadd fast float %3765, %2916
  %3769 = fadd fast float %3766, %2917
  %3770 = fmul fast float %3703, %3539
  %3771 = fadd fast float %3770, %2921
  br label %3794

; <label>:3772                                    ; preds = %3730
  %3773 = icmp eq i32 %3686, 8
  br i1 %3773, label %3774, label %3794

; <label>:3774                                    ; preds = %3772
  %3775 = fmul fast float %3691, %3406
  %3776 = fmul fast float %3691, %3407
  %3777 = fadd fast float %3775, %2907
  %3778 = fadd fast float %3776, %2908
  %3779 = call float @dx.op.binary.f32(i32 36, float %2920, float %3408)  ; FMin(a,b)
  %3780 = fsub fast float %3779, %2920
  %3781 = fmul fast float %3780, %3694
  %3782 = fadd fast float %3781, %2920
  %3783 = fsub fast float %3405, %2919
  %3784 = fmul fast float %3697, %3783
  %3785 = fadd fast float %3784, %2919
  %3786 = fmul fast float %3700, %3511
  %3787 = fmul fast float %3700, %3512
  %3788 = fmul fast float %3700, %3513
  %3789 = fadd fast float %3786, %2915
  %3790 = fadd fast float %3787, %2916
  %3791 = fadd fast float %3788, %2917
  %3792 = fmul fast float %3703, %3539
  %3793 = fadd fast float %3792, %2921
  br label %3794

; <label>:3794                                    ; preds = %3774, %3772, %3732, %3705, %3677, %3104, %2923, %2906
  %3795 = phi float [ %2907, %3677 ], [ %2907, %3104 ], [ %2907, %2906 ], [ %2907, %2923 ], [ %3710, %3705 ], [ %3735, %3732 ], [ %2907, %3772 ], [ %3777, %3774 ]
  %3796 = phi float [ %2908, %3677 ], [ %2908, %3104 ], [ %2908, %2906 ], [ %2908, %2923 ], [ %3711, %3705 ], [ %3736, %3732 ], [ %2908, %3772 ], [ %3778, %3774 ]
  %3797 = phi float [ %3678, %3677 ], [ %2909, %3104 ], [ %2909, %2906 ], [ %2909, %2923 ], [ %3678, %3705 ], [ %3678, %3732 ], [ %3678, %3772 ], [ %3678, %3774 ]
  %3798 = phi float [ %3679, %3677 ], [ %2910, %3104 ], [ %2910, %2906 ], [ %2910, %2923 ], [ %3679, %3705 ], [ %3679, %3732 ], [ %3679, %3772 ], [ %3679, %3774 ]
  %3799 = phi float [ %3680, %3677 ], [ %2911, %3104 ], [ %2911, %2906 ], [ %2911, %2923 ], [ %3680, %3705 ], [ %3680, %3732 ], [ %3680, %3772 ], [ %3680, %3774 ]
  %3800 = phi float [ %3681, %3677 ], [ %2912, %3104 ], [ %2912, %2906 ], [ %2912, %2923 ], [ %3681, %3705 ], [ %3681, %3732 ], [ %3681, %3772 ], [ %3681, %3774 ]
  %3801 = phi float [ %3682, %3677 ], [ %2913, %3104 ], [ %2913, %2906 ], [ %2913, %2923 ], [ %3682, %3705 ], [ %3682, %3732 ], [ %3682, %3772 ], [ %3682, %3774 ]
  %3802 = phi float [ %3683, %3677 ], [ %2914, %3104 ], [ %2914, %2906 ], [ %2914, %2923 ], [ %3683, %3705 ], [ %3683, %3732 ], [ %3683, %3772 ], [ %3683, %3774 ]
  %3803 = phi float [ %2915, %3677 ], [ %2915, %3104 ], [ %2915, %2906 ], [ %2915, %2923 ], [ %3724, %3705 ], [ %3767, %3732 ], [ %2915, %3772 ], [ %3789, %3774 ]
  %3804 = phi float [ %2916, %3677 ], [ %2916, %3104 ], [ %2916, %2906 ], [ %2916, %2923 ], [ %3725, %3705 ], [ %3768, %3732 ], [ %2916, %3772 ], [ %3790, %3774 ]
  %3805 = phi float [ %2917, %3677 ], [ %2917, %3104 ], [ %2917, %2906 ], [ %2917, %2923 ], [ %3726, %3705 ], [ %3769, %3732 ], [ %2917, %3772 ], [ %3791, %3774 ]
  %3806 = phi float [ %3684, %3677 ], [ %2918, %3104 ], [ %2918, %2906 ], [ %2918, %2923 ], [ %3684, %3705 ], [ %3684, %3732 ], [ %3684, %3772 ], [ %3684, %3774 ]
  %3807 = phi float [ %2919, %3677 ], [ %2919, %3104 ], [ %2919, %2906 ], [ %2919, %2923 ], [ %3717, %3705 ], [ %3763, %3732 ], [ %2919, %3772 ], [ %3785, %3774 ]
  %3808 = phi float [ %2920, %3677 ], [ %2920, %3104 ], [ %2920, %2906 ], [ %2920, %2923 ], [ %3714, %3705 ], [ %3740, %3732 ], [ %2920, %3772 ], [ %3782, %3774 ]
  %3809 = phi float [ %2921, %3677 ], [ %2921, %3104 ], [ %2921, %2906 ], [ %2921, %2923 ], [ %3729, %3705 ], [ %3771, %3732 ], [ %2921, %3772 ], [ %3793, %3774 ]
  %3810 = phi float [ %3685, %3677 ], [ %2922, %3104 ], [ %2922, %2906 ], [ %2922, %2923 ], [ %3685, %3705 ], [ %3685, %3732 ], [ %3685, %3772 ], [ %3685, %3774 ]
  %3811 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3812 = extractvalue %dx.types.CBufRet.f32 %3811, 0
  %3813 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3814 = extractvalue %dx.types.CBufRet.f32 %3813, 0
  %3815 = fmul fast float %3814, %3800
  %3816 = fmul fast float %3814, %3801
  %3817 = fmul fast float %3814, %3802
  %3818 = call float @dx.op.dot2.f32(i32 54, float %3795, float %3796, float %3795, float %3796)  ; Dot2(ax,ay,bx,by)
  %3819 = fmul fast float %3818, 0x3FE3333340000000
  %3820 = fsub fast float 1.000000e+00, %3819
  %3821 = call float @dx.op.dot3.f32(i32 55, float %3795, float %3796, float %3820, float %3795, float %3796, float %3820)  ; Dot3(ax,ay,az,bx,by,bz)
  %3822 = call float @dx.op.unary.f32(i32 25, float %3821)  ; Rsqrt(value)
  %3823 = fmul fast float %3822, %3795
  %3824 = fmul fast float %3822, %3796
  %3825 = fmul fast float %3820, %3822
  %3826 = fmul fast float %3825, %121
  %3827 = fmul fast float %3825, %122
  %3828 = fmul fast float %3825, %123
  %3829 = fmul fast float %3823, %85
  %3830 = fmul fast float %3823, %86
  %3831 = fmul fast float %3823, %87
  %3832 = fadd fast float %3826, %3829
  %3833 = fadd fast float %3827, %3830
  %3834 = fadd fast float %3828, %3831
  %3835 = fmul fast float %133, %3824
  %3836 = fmul fast float %134, %3824
  %3837 = fmul fast float %135, %3824
  %3838 = fadd fast float %3832, %3835
  %3839 = fadd fast float %3833, %3836
  %3840 = fadd fast float %3834, %3837
  %3841 = call float @dx.op.dot3.f32(i32 55, float %3838, float %3839, float %3840, float %3838, float %3839, float %3840)  ; Dot3(ax,ay,az,bx,by,bz)
  %3842 = call float @dx.op.unary.f32(i32 25, float %3841)  ; Rsqrt(value)
  %3843 = fmul fast float %3838, %3842
  %3844 = fmul fast float %3839, %3842
  %3845 = fmul fast float %3840, %3842
  %3846 = icmp eq i32 %61, 65535
  br i1 %3846, label %4396, label %3847

; <label>:3847                                    ; preds = %3794
  %3848 = call float @dx.op.unary.f32(i32 83, float %62)  ; DerivCoarseX(value)
  %3849 = call float @dx.op.unary.f32(i32 83, float %63)  ; DerivCoarseX(value)
  %3850 = call float @dx.op.unary.f32(i32 83, float %64)  ; DerivCoarseX(value)
  %3851 = call float @dx.op.unary.f32(i32 84, float %62)  ; DerivCoarseY(value)
  %3852 = call float @dx.op.unary.f32(i32 84, float %63)  ; DerivCoarseY(value)
  %3853 = call float @dx.op.unary.f32(i32 84, float %64)  ; DerivCoarseY(value)
  %3854 = fadd fast float %3848, %62
  %3855 = fadd fast float %3849, %63
  %3856 = fadd fast float %3850, %64
  %3857 = fadd fast float %3851, %62
  %3858 = fadd fast float %3852, %63
  %3859 = fadd fast float %3853, %64
  %3860 = mul i32 %61, 48
  %3861 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %3860, i32 undef)  ; BufferLoad(srv,index,wot)
  %3862 = extractvalue %dx.types.ResRet.f32 %3861, 0
  %3863 = extractvalue %dx.types.ResRet.f32 %3861, 1
  %3864 = extractvalue %dx.types.ResRet.f32 %3861, 2
  %3865 = add i32 %3860, 16
  %3866 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %3865, i32 undef)  ; BufferLoad(srv,index,wot)
  %3867 = extractvalue %dx.types.ResRet.f32 %3866, 0
  %3868 = extractvalue %dx.types.ResRet.f32 %3866, 1
  %3869 = extractvalue %dx.types.ResRet.f32 %3866, 2
  %3870 = add i32 %3860, 32
  %3871 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %3870, i32 undef)  ; BufferLoad(srv,index,wot)
  %3872 = extractvalue %dx.types.ResRet.f32 %3871, 0
  %3873 = extractvalue %dx.types.ResRet.f32 %3871, 1
  %3874 = extractvalue %dx.types.ResRet.f32 %3871, 2
  %3875 = extractvalue %dx.types.ResRet.f32 %3871, 3
  %3876 = bitcast float %3875 to i32
  %3877 = fmul fast float %3862, %62
  %3878 = fmul fast float %3863, %63
  %3879 = fmul fast float %3864, %64
  %3880 = fsub fast float %3877, %3867
  %3881 = fsub fast float %3878, %3868
  %3882 = fsub fast float %3879, %3869
  %3883 = call float @dx.op.unary.f32(i32 7, float %3880)  ; Saturate(value)
  %3884 = call float @dx.op.unary.f32(i32 7, float %3881)  ; Saturate(value)
  %3885 = call float @dx.op.unary.f32(i32 7, float %3882)  ; Saturate(value)
  %3886 = fmul fast float %3883, %3872
  %3887 = fmul fast float %3884, %3873
  %3888 = fmul fast float %3885, %3874
  %3889 = fadd fast float %3872, -1.000000e+00
  %3890 = fadd fast float %3873, -1.000000e+00
  %3891 = fadd fast float %3874, -1.000000e+00
  %3892 = call float @dx.op.unary.f32(i32 27, float %3886)  ; Round_ni(value)
  %3893 = call float @dx.op.unary.f32(i32 27, float %3887)  ; Round_ni(value)
  %3894 = call float @dx.op.unary.f32(i32 27, float %3888)  ; Round_ni(value)
  %3895 = call float @dx.op.binary.f32(i32 36, float %3892, float %3889)  ; FMin(a,b)
  %3896 = call float @dx.op.binary.f32(i32 36, float %3893, float %3890)  ; FMin(a,b)
  %3897 = call float @dx.op.binary.f32(i32 36, float %3894, float %3891)  ; FMin(a,b)
  %3898 = fmul fast float %3897, %3873
  %3899 = fadd fast float %3898, %3896
  %3900 = fmul fast float %3899, %3872
  %3901 = fadd fast float %3900, %3895
  %3902 = fptosi float %3901 to i32
  %3903 = add nsw i32 %3902, %3876
  %3904 = shl nsw i32 %3903, 2
  %3905 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3904, i32 undef)  ; BufferLoad(srv,index,wot)
  %3906 = extractvalue %dx.types.ResRet.i32 %3905, 0
  %3907 = lshr i32 %3906, 16
  %3908 = icmp eq i32 %3907, 0
  br i1 %3908, label %4361, label %3909

; <label>:3909                                    ; preds = %3847
  br label %3910

; <label>:3910                                    ; preds = %4035, %3909
  %3911 = phi i32 [ %3937, %4035 ], [ %3907, %3909 ]
  %3912 = phi float [ %4036, %4035 ], [ 0.000000e+00, %3909 ]
  %3913 = phi float [ %4037, %4035 ], [ %1142, %3909 ]
  %3914 = phi float [ %4038, %4035 ], [ %3812, %3909 ]
  %3915 = phi float [ %4039, %4035 ], [ %3810, %3909 ]
  %3916 = phi float [ %4040, %4035 ], [ %3803, %3909 ]
  %3917 = phi float [ %4041, %4035 ], [ %3804, %3909 ]
  %3918 = phi float [ %4042, %4035 ], [ %3805, %3909 ]
  %3919 = phi float [ %4043, %4035 ], [ 0.000000e+00, %3909 ]
  %3920 = phi float [ %4044, %4035 ], [ 0.000000e+00, %3909 ]
  %3921 = phi float [ %4045, %4035 ], [ %3815, %3909 ]
  %3922 = phi float [ %4046, %4035 ], [ %3816, %3909 ]
  %3923 = phi float [ %4047, %4035 ], [ %3817, %3909 ]
  %3924 = phi float [ %4048, %4035 ], [ %3843, %3909 ]
  %3925 = phi float [ %4049, %4035 ], [ %3844, %3909 ]
  %3926 = phi float [ %4050, %4035 ], [ %3845, %3909 ]
  %3927 = phi float [ %4051, %4035 ], [ %3808, %3909 ]
  %3928 = phi float [ %4052, %4035 ], [ %3807, %3909 ]
  %3929 = phi float [ %4053, %4035 ], [ 0.000000e+00, %3909 ]
  %3930 = phi float [ %4054, %4035 ], [ %3806, %3909 ]
  %3931 = phi float [ %4055, %4035 ], [ %3797, %3909 ]
  %3932 = phi float [ %4056, %4035 ], [ %3798, %3909 ]
  %3933 = phi float [ %4057, %4035 ], [ %3799, %3909 ]
  %3934 = shl nuw nsw i32 %3911, 2
  %3935 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3934, i32 undef)  ; BufferLoad(srv,index,wot)
  %3936 = extractvalue %dx.types.ResRet.i32 %3935, 0
  %3937 = lshr i32 %3936, 16
  %3938 = shl i32 %3936, 8
  %3939 = and i32 %3938, 16776960
  %3940 = or i32 %3939, 48
  %3941 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3940, i32 undef)  ; BufferLoad(srv,index,wot)
  %3942 = extractvalue %dx.types.ResRet.f32 %3941, 0
  %3943 = extractvalue %dx.types.ResRet.f32 %3941, 1
  %3944 = extractvalue %dx.types.ResRet.f32 %3941, 2
  %3945 = or i32 %3939, 64
  %3946 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3945, i32 undef)  ; BufferLoad(srv,index,wot)
  %3947 = extractvalue %dx.types.ResRet.i32 %3946, 0
  %3948 = extractvalue %dx.types.ResRet.i32 %3946, 1
  %3949 = or i32 %3939, 80
  %3950 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3949, i32 undef)  ; BufferLoad(srv,index,wot)
  %3951 = extractvalue %dx.types.ResRet.f32 %3950, 2
  %3952 = extractvalue %dx.types.ResRet.f32 %3950, 3
  %3953 = or i32 %3939, 96
  %3954 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3953, i32 undef)  ; BufferLoad(srv,index,wot)
  %3955 = extractvalue %dx.types.ResRet.f32 %3954, 0
  %3956 = extractvalue %dx.types.ResRet.f32 %3954, 1
  %3957 = extractvalue %dx.types.ResRet.f32 %3954, 2
  %3958 = extractvalue %dx.types.ResRet.f32 %3954, 3
  %3959 = or i32 %3939, 112
  %3960 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3959, i32 undef)  ; BufferLoad(srv,index,wot)
  %3961 = extractvalue %dx.types.ResRet.f32 %3960, 2
  %3962 = or i32 %3939, 128
  %3963 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3962, i32 undef)  ; BufferLoad(srv,index,wot)
  %3964 = extractvalue %dx.types.ResRet.f32 %3963, 0
  %3965 = extractvalue %dx.types.ResRet.f32 %3963, 1
  %3966 = extractvalue %dx.types.ResRet.f32 %3963, 2
  %3967 = extractvalue %dx.types.ResRet.f32 %3963, 3
  %3968 = or i32 %3939, 144
  %3969 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3968, i32 undef)  ; BufferLoad(srv,index,wot)
  %3970 = extractvalue %dx.types.ResRet.f32 %3969, 0
  %3971 = extractvalue %dx.types.ResRet.f32 %3969, 1
  %3972 = extractvalue %dx.types.ResRet.f32 %3969, 2
  %3973 = extractvalue %dx.types.ResRet.f32 %3969, 3
  %3974 = or i32 %3939, 160
  %3975 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3974, i32 undef)  ; BufferLoad(srv,index,wot)
  %3976 = extractvalue %dx.types.ResRet.f32 %3975, 0
  %3977 = extractvalue %dx.types.ResRet.f32 %3975, 1
  %3978 = extractvalue %dx.types.ResRet.f32 %3975, 2
  %3979 = extractvalue %dx.types.ResRet.f32 %3975, 3
  %3980 = or i32 %3939, 192
  %3981 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3980, i32 undef)  ; BufferLoad(srv,index,wot)
  %3982 = extractvalue %dx.types.ResRet.i32 %3981, 0
  %3983 = or i32 %3939, 208
  %3984 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3983, i32 undef)  ; BufferLoad(srv,index,wot)
  %3985 = extractvalue %dx.types.ResRet.f32 %3984, 0
  %3986 = or i32 %3939, 248
  %3987 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3986, i32 undef)  ; BufferLoad(srv,index,wot)
  %3988 = extractvalue %dx.types.ResRet.f32 %3987, 0
  %3989 = extractvalue %dx.types.ResRet.f32 %3987, 1
  %3990 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3939, i32 undef)  ; BufferLoad(srv,index,wot)
  %3991 = extractvalue %dx.types.ResRet.f32 %3990, 0
  %3992 = extractvalue %dx.types.ResRet.f32 %3990, 1
  %3993 = extractvalue %dx.types.ResRet.f32 %3990, 2
  %3994 = extractvalue %dx.types.ResRet.f32 %3990, 3
  %3995 = call float @dx.op.dot4.f32(i32 56, float %3991, float %3992, float %3993, float %3994, float %62, float %63, float %64, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3996 = or i32 %3939, 16
  %3997 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3996, i32 undef)  ; BufferLoad(srv,index,wot)
  %3998 = extractvalue %dx.types.ResRet.f32 %3997, 0
  %3999 = extractvalue %dx.types.ResRet.f32 %3997, 1
  %4000 = extractvalue %dx.types.ResRet.f32 %3997, 2
  %4001 = extractvalue %dx.types.ResRet.f32 %3997, 3
  %4002 = call float @dx.op.dot4.f32(i32 56, float %3998, float %3999, float %4000, float %4001, float %62, float %63, float %64, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4003 = or i32 %3939, 32
  %4004 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4003, i32 undef)  ; BufferLoad(srv,index,wot)
  %4005 = extractvalue %dx.types.ResRet.f32 %4004, 0
  %4006 = extractvalue %dx.types.ResRet.f32 %4004, 1
  %4007 = extractvalue %dx.types.ResRet.f32 %4004, 2
  %4008 = extractvalue %dx.types.ResRet.f32 %4004, 3
  %4009 = call float @dx.op.dot4.f32(i32 56, float %4005, float %4006, float %4007, float %4008, float %62, float %63, float %64, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4010 = call float @dx.op.unary.f32(i32 27, float %3995)  ; Round_ni(value)
  %4011 = call float @dx.op.unary.f32(i32 6, float %4010)  ; FAbs(value)
  %4012 = call float @dx.op.unary.f32(i32 27, float %4002)  ; Round_ni(value)
  %4013 = call float @dx.op.unary.f32(i32 6, float %4012)  ; FAbs(value)
  %4014 = call float @dx.op.unary.f32(i32 6, float %4009)  ; FAbs(value)
  %4015 = call float @dx.op.unary.f32(i32 27, float %4014)  ; Round_ni(value)
  %4016 = fadd fast float %4013, %4011
  %4017 = fadd fast float %4016, %4015
  %4018 = fcmp fast oeq float %4017, 0.000000e+00
  %4019 = call float @dx.op.dot4.f32(i32 56, float %3991, float %3992, float %3993, float %3994, float %3854, float %3855, float %3856, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4020 = call float @dx.op.dot4.f32(i32 56, float %3998, float %3999, float %4000, float %4001, float %3854, float %3855, float %3856, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4021 = call float @dx.op.dot4.f32(i32 56, float %3991, float %3992, float %3993, float %3994, float %3857, float %3858, float %3859, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4022 = call float @dx.op.dot4.f32(i32 56, float %3998, float %3999, float %4000, float %4001, float %3857, float %3858, float %3859, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4023 = fsub fast float %4019, %3995
  %4024 = fsub fast float %4021, %3995
  %4025 = fsub fast float %4020, %4002
  %4026 = fsub fast float %4022, %4002
  %4027 = call float @dx.op.dot3.f32(i32 55, float %3942, float %3943, float %3944, float %121, float %122, float %123)  ; Dot3(ax,ay,az,bx,by,bz)
  %4028 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4029 = extractvalue %dx.types.CBufRet.f32 %4028, 2
  %4030 = fadd fast float %4029, %4027
  %4031 = call float @dx.op.unary.f32(i32 7, float %4030)  ; Saturate(value)
  %4032 = extractvalue %dx.types.CBufRet.f32 %4028, 0
  %4033 = fcmp fast ogt float %4031, %4032
  %4034 = and i1 %4018, %4033
  br i1 %4034, label %4059, label %4035

; <label>:4035                                    ; preds = %4347, %4142, %4059, %3910
  %4036 = phi float [ %3912, %4059 ], [ %4145, %4142 ], [ %4145, %4347 ], [ %3912, %3910 ]
  %4037 = phi float [ %3913, %4059 ], [ %3913, %4142 ], [ %4323, %4347 ], [ %3913, %3910 ]
  %4038 = phi float [ %3914, %4059 ], [ %3914, %4142 ], [ %4322, %4347 ], [ %3914, %3910 ]
  %4039 = phi float [ %3915, %4059 ], [ %3915, %4142 ], [ %4320, %4347 ], [ %3915, %3910 ]
  %4040 = phi float [ %3916, %4059 ], [ %3916, %4142 ], [ %4298, %4347 ], [ %3916, %3910 ]
  %4041 = phi float [ %3917, %4059 ], [ %3917, %4142 ], [ %4299, %4347 ], [ %3917, %3910 ]
  %4042 = phi float [ %3918, %4059 ], [ %3918, %4142 ], [ %4300, %4347 ], [ %3918, %3910 ]
  %4043 = phi float [ %3919, %4059 ], [ %3919, %4142 ], [ %4269, %4347 ], [ %3919, %3910 ]
  %4044 = phi float [ %3920, %4059 ], [ %3920, %4142 ], [ %4267, %4347 ], [ %3920, %3910 ]
  %4045 = phi float [ %3921, %4059 ], [ %3921, %4142 ], [ %4357, %4347 ], [ %3921, %3910 ]
  %4046 = phi float [ %3922, %4059 ], [ %3922, %4142 ], [ %4358, %4347 ], [ %3922, %3910 ]
  %4047 = phi float [ %3923, %4059 ], [ %3923, %4142 ], [ %4359, %4347 ], [ %3923, %3910 ]
  %4048 = phi float [ %3924, %4059 ], [ %3924, %4142 ], [ %4248, %4347 ], [ %3924, %3910 ]
  %4049 = phi float [ %3925, %4059 ], [ %3925, %4142 ], [ %4249, %4347 ], [ %3925, %3910 ]
  %4050 = phi float [ %3926, %4059 ], [ %3926, %4142 ], [ %4250, %4347 ], [ %3926, %3910 ]
  %4051 = phi float [ %3927, %4059 ], [ %3927, %4142 ], [ %4278, %4347 ], [ %3927, %3910 ]
  %4052 = phi float [ %3928, %4059 ], [ %3928, %4142 ], [ %4275, %4347 ], [ %3928, %3910 ]
  %4053 = phi float [ %3929, %4059 ], [ %3929, %4142 ], [ %4272, %4347 ], [ %3929, %3910 ]
  %4054 = phi float [ %3930, %4059 ], [ %3930, %4142 ], [ %4265, %4347 ], [ %3930, %3910 ]
  %4055 = phi float [ %3931, %4059 ], [ %3931, %4142 ], [ %4260, %4347 ], [ %3931, %3910 ]
  %4056 = phi float [ %3932, %4059 ], [ %3932, %4142 ], [ %4261, %4347 ], [ %3932, %3910 ]
  %4057 = phi float [ %3933, %4059 ], [ %3933, %4142 ], [ %4262, %4347 ], [ %3933, %3910 ]
  %4058 = icmp eq i32 %3937, 0
  br i1 %4058, label %4360, label %3910

; <label>:4059                                    ; preds = %3910
  %4060 = extractvalue %dx.types.ResRet.f32 %3941, 3
  %4061 = extractvalue %dx.types.ResRet.f32 %3960, 3
  %4062 = extractvalue %dx.types.ResRet.f32 %3960, 1
  %4063 = extractvalue %dx.types.ResRet.f32 %3960, 0
  %4064 = extractvalue %dx.types.ResRet.f32 %3950, 1
  %4065 = extractvalue %dx.types.ResRet.f32 %3950, 0
  %4066 = extractvalue %dx.types.ResRet.i32 %3946, 3
  %4067 = extractvalue %dx.types.ResRet.i32 %3946, 2
  %4068 = bitcast float %4060 to i32
  %4069 = add i32 %4066, 0
  %4070 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4069, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4071 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4072 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4070, %dx.types.Handle %4071, float %3995, float %4002, float undef, float undef, i32 0, i32 0, i32 undef, float %4023, float %4025, float undef, float %4024, float %4026, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4073 = extractvalue %dx.types.ResRet.f32 %4072, 0
  %4074 = fmul fast float %4073, %4065
  %4075 = fadd fast float %4074, %4064
  %4076 = call float @dx.op.unary.f32(i32 7, float %4075)  ; Saturate(value)
  %4077 = fmul fast float %3995, %3955
  %4078 = call float @dx.op.tertiary.f32(i32 46, float %3956, float %4002, float %4077)  ; FMad(a,b,c)
  %4079 = fadd fast float %4078, %4063
  %4080 = fmul fast float %3995, %3957
  %4081 = call float @dx.op.tertiary.f32(i32 46, float %3958, float %4002, float %4080)  ; FMad(a,b,c)
  %4082 = fadd fast float %4081, %4062
  %4083 = fmul fast float %4023, %3955
  %4084 = call float @dx.op.tertiary.f32(i32 46, float %3956, float %4025, float %4083)  ; FMad(a,b,c)
  %4085 = fmul fast float %4023, %3957
  %4086 = call float @dx.op.tertiary.f32(i32 46, float %3958, float %4025, float %4085)  ; FMad(a,b,c)
  %4087 = fmul fast float %4024, %3955
  %4088 = call float @dx.op.tertiary.f32(i32 46, float %3956, float %4026, float %4087)  ; FMad(a,b,c)
  %4089 = fmul fast float %4024, %3957
  %4090 = call float @dx.op.tertiary.f32(i32 46, float %3958, float %4026, float %4089)  ; FMad(a,b,c)
  %4091 = add i32 %4067, 0
  %4092 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4091, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4093 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4092, %dx.types.Handle %4071, float %4079, float %4082, float undef, float undef, i32 0, i32 0, i32 undef, float %4084, float %4086, float undef, float %4088, float %4090, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4094 = extractvalue %dx.types.ResRet.f32 %4093, 0
  %4095 = and i32 %4068, 1024
  %4096 = icmp ne i32 %4095, 0
  %4097 = fcmp fast ogt float %4094, 0x3FE0101020000000
  %4098 = uitofp i1 %4097 to float
  %4099 = select i1 %4096, float %4098, float %4094
  %4100 = and i32 %4068, 8192
  %4101 = icmp ne i32 %4100, 0
  %4102 = select i1 %4101, float %4061, float 1.000000e+00
  %4103 = fmul fast float %3995, 2.000000e+00
  %4104 = fadd fast float %4103, -1.000000e+00
  %4105 = call float @dx.op.unary.f32(i32 6, float %4104)  ; FAbs(value)
  %4106 = fmul fast float %4105, %3988
  %4107 = fsub fast float %4106, %3988
  %4108 = call float @dx.op.unary.f32(i32 7, float %4107)  ; Saturate(value)
  %4109 = fmul fast float %4002, 2.000000e+00
  %4110 = fadd fast float %4109, -1.000000e+00
  %4111 = call float @dx.op.unary.f32(i32 6, float %4110)  ; FAbs(value)
  %4112 = fmul fast float %4111, %3989
  %4113 = fsub fast float %4112, %3989
  %4114 = call float @dx.op.unary.f32(i32 7, float %4113)  ; Saturate(value)
  %4115 = fmul fast float %4014, %3951
  %4116 = fsub fast float %4115, %3951
  %4117 = call float @dx.op.unary.f32(i32 7, float %4116)  ; Saturate(value)
  %4118 = fmul fast float %4076, %4102
  %4119 = fmul fast float %4118, %4073
  %4120 = fmul fast float %4119, %4108
  %4121 = fmul fast float %4120, %4099
  %4122 = fmul fast float %4121, %4114
  %4123 = fmul fast float %4122, %4117
  %4124 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4125 = extractvalue %dx.types.CBufRet.f32 %4124, 1
  %4126 = extractvalue %dx.types.CBufRet.f32 %4124, 0
  %4127 = fsub fast float %4031, %4126
  %4128 = fmul fast float %4127, %4125
  %4129 = call float @dx.op.unary.f32(i32 7, float %4128)  ; Saturate(value)
  %4130 = fmul fast float %4123, %3952
  %4131 = fadd fast float %4123, %3952
  %4132 = fmul fast float %4131, %3961
  %4133 = fsub fast float %4132, %3961
  %4134 = call float @dx.op.unary.f32(i32 7, float %4133)  ; Saturate(value)
  %4135 = and i32 %4068, 128
  %4136 = icmp ne i32 %4135, 0
  %4137 = select i1 %4136, float %4134, float %4130
  %4138 = fmul fast float %4137, %4129
  %4139 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4140 = extractvalue %dx.types.CBufRet.f32 %4139, 0
  %4141 = fcmp fast ugt float %4138, %4140
  br i1 %4141, label %4142, label %4035

; <label>:4142                                    ; preds = %4059
  %4143 = select i1 %4101, float %4138, float 0.000000e+00
  %4144 = fadd fast float %4143, %3912
  %4145 = call float @dx.op.unary.f32(i32 7, float %4144)  ; Saturate(value)
  br i1 %4101, label %4035, label %4146

; <label>:4146                                    ; preds = %4142
  %4147 = and i32 %4068, 4
  %4148 = and i32 %4068, 8
  %4149 = add i32 %3947, 0
  %4150 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4149, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4151 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4152 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4150, %dx.types.Handle %4151, float %4079, float %4082, float undef, float undef, i32 0, i32 0, i32 undef, float %4084, float %4086, float undef, float %4088, float %4090, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4153 = extractvalue %dx.types.ResRet.f32 %4152, 0
  %4154 = extractvalue %dx.types.ResRet.f32 %4152, 1
  %4155 = extractvalue %dx.types.ResRet.f32 %4152, 2
  %4156 = extractvalue %dx.types.ResRet.f32 %4152, 3
  %4157 = bitcast float %3973 to i32
  %4158 = and i32 %4157, 255
  %4159 = uitofp i32 %4158 to float
  %4160 = lshr i32 %4157, 8
  %4161 = and i32 %4160, 255
  %4162 = uitofp i32 %4161 to float
  %4163 = fmul fast float %4156, %4159
  %4164 = fadd fast float %4163, %4162
  %4165 = fmul fast float %4164, 0x3F70101000000000
  %4166 = add i32 %3948, 0
  %4167 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4166, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4168 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4167, %dx.types.Handle %4151, float %4079, float %4082, float undef, float undef, i32 0, i32 0, i32 undef, float %4084, float %4086, float undef, float %4088, float %4090, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4169 = extractvalue %dx.types.ResRet.f32 %4168, 0
  %4170 = extractvalue %dx.types.ResRet.f32 %4168, 1
  %4171 = extractvalue %dx.types.ResRet.f32 %4168, 2
  %4172 = extractvalue %dx.types.ResRet.f32 %4168, 3
  %4173 = bitcast float %3967 to i32
  %4174 = and i32 %4173, 255
  %4175 = uitofp i32 %4174 to float
  %4176 = lshr i32 %4173, 8
  %4177 = and i32 %4176, 255
  %4178 = uitofp i32 %4177 to float
  %4179 = lshr i32 %4173, 16
  %4180 = and i32 %4179, 255
  %4181 = uitofp i32 %4180 to float
  %4182 = fmul fast float %4181, 0x3F70101000000000
  %4183 = fmul fast float %4169, %4175
  %4184 = fadd fast float %4183, %4178
  %4185 = fmul fast float %4184, 0x3F70101000000000
  %4186 = fadd fast float %4170, -5.000000e-01
  %4187 = fadd fast float %4172, -5.000000e-01
  %4188 = fmul fast float %4186, %4182
  %4189 = fmul fast float %4187, %4182
  %4190 = fadd fast float %4188, 5.000000e-01
  %4191 = fadd fast float %4189, 5.000000e-01
  %4192 = fmul fast float %4153, %3976
  %4193 = fmul fast float %4154, %3977
  %4194 = fmul fast float %4155, %3978
  %4195 = fmul fast float %4190, 2.000000e+00
  %4196 = fadd fast float %4195, -1.000000e+00
  %4197 = fmul fast float %4191, 2.000000e+00
  %4198 = fadd fast float %4197, -1.000000e+00
  %4199 = fadd fast float %4196, %4198
  %4200 = fmul fast float %4199, 5.000000e-01
  %4201 = fsub fast float %4196, %4198
  %4202 = fmul fast float %4201, 5.000000e-01
  %4203 = call float @dx.op.unary.f32(i32 6, float %4200)  ; FAbs(value)
  %4204 = fsub fast float 1.000000e+00, %4203
  %4205 = call float @dx.op.unary.f32(i32 6, float %4202)  ; FAbs(value)
  %4206 = fsub fast float %4204, %4205
  %4207 = call float @dx.op.dot3.f32(i32 55, float %4200, float %4202, float %4206, float %4200, float %4202, float %4206)  ; Dot3(ax,ay,az,bx,by,bz)
  %4208 = call float @dx.op.unary.f32(i32 25, float %4207)  ; Rsqrt(value)
  %4209 = fmul fast float %4200, %4208
  %4210 = fmul fast float %4202, %4208
  %4211 = fmul fast float %4208, %4206
  %4212 = fmul fast float %4211, %3942
  %4213 = fmul fast float %4211, %3943
  %4214 = fmul fast float %4211, %3944
  %4215 = fmul fast float %4209, %3964
  %4216 = fmul fast float %4209, %3965
  %4217 = fmul fast float %4209, %3966
  %4218 = fadd fast float %4215, %4212
  %4219 = fadd fast float %4216, %4213
  %4220 = fadd fast float %4217, %4214
  %4221 = fmul fast float %4210, %3970
  %4222 = fmul fast float %4210, %3971
  %4223 = fmul fast float %4210, %3972
  %4224 = fadd fast float %4218, %4221
  %4225 = fadd fast float %4219, %4222
  %4226 = fadd fast float %4220, %4223
  %4227 = call float @dx.op.dot3.f32(i32 55, float %4224, float %4225, float %4226, float %4224, float %4225, float %4226)  ; Dot3(ax,ay,az,bx,by,bz)
  %4228 = call float @dx.op.unary.f32(i32 25, float %4227)  ; Rsqrt(value)
  %4229 = fmul fast float %4224, %4228
  %4230 = fmul fast float %4225, %4228
  %4231 = fmul fast float %4226, %4228
  %4232 = icmp ne i32 %4148, 0
  %4233 = select i1 %4232, float 1.000000e+00, float 0.000000e+00
  %4234 = fmul fast float %4138, %4233
  %4235 = and i32 %4068, 1
  %4236 = icmp eq i32 %4235, 0
  br i1 %4236, label %4237, label %4241

; <label>:4237                                    ; preds = %4146
  %4238 = fsub fast float %4229, %3924
  %4239 = fsub fast float %4230, %3925
  %4240 = fsub fast float %4231, %3926
  br label %4241

; <label>:4241                                    ; preds = %4237, %4146
  %4242 = phi float [ %4238, %4237 ], [ %4229, %4146 ]
  %4243 = phi float [ %4239, %4237 ], [ %4230, %4146 ]
  %4244 = phi float [ %4240, %4237 ], [ %4231, %4146 ]
  %4245 = fmul float %4244, %4234
  %4246 = fmul float %4243, %4234
  %4247 = fmul float %4242, %4234
  %4248 = fadd fast float %4247, %3924
  %4249 = fadd fast float %4246, %3925
  %4250 = fadd fast float %4245, %3926
  %4251 = icmp ne i32 %4147, 0
  %4252 = select i1 %4251, float 1.000000e+00, float 0.000000e+00
  %4253 = fmul fast float %4138, %4252
  %4254 = fsub fast float %4192, %3931
  %4255 = fsub fast float %4193, %3932
  %4256 = fsub fast float %4194, %3933
  %4257 = fmul fast float %4254, %4253
  %4258 = fmul fast float %4255, %4253
  %4259 = fmul fast float %4256, %4253
  %4260 = fadd fast float %4257, %3931
  %4261 = fadd fast float %4258, %3932
  %4262 = fadd fast float %4259, %3933
  %4263 = fsub fast float %4165, %3930
  %4264 = fmul fast float %4263, %4253
  %4265 = fadd fast float %4264, %3930
  %4266 = fmul fast float %4253, %3920
  %4267 = fsub fast float %3920, %4266
  %4268 = fmul fast float %4253, %3919
  %4269 = fsub fast float %3919, %4268
  %4270 = bitcast float %3985 to i32
  %4271 = fadd fast float %4138, %3929
  %4272 = call float @dx.op.unary.f32(i32 7, float %4271)  ; Saturate(value)
  %4273 = fsub fast float %4185, %3928
  %4274 = fmul fast float %4273, %4234
  %4275 = fadd fast float %4274, %3928
  %4276 = fsub fast float %4171, %3927
  %4277 = fmul fast float %4276, %4234
  %4278 = fadd fast float %4277, %3927
  br i1 %4236, label %4287, label %4279

; <label>:4279                                    ; preds = %4241
  %4280 = and i32 %4068, 32768
  %4281 = icmp eq i32 %4280, 0
  br i1 %4281, label %4297, label %4282

; <label>:4282                                    ; preds = %4279
  %4283 = fmul fast float %4234, 1.270000e+02
  %4284 = fadd fast float %4283, %3916
  %4285 = fadd fast float %4283, %3917
  %4286 = fadd fast float %4283, %3918
  br label %4297

; <label>:4287                                    ; preds = %4241
  %4288 = fsub fast float 1.270000e+02, %3916
  %4289 = fsub fast float 1.270000e+02, %3917
  %4290 = fsub fast float 1.270000e+02, %3918
  %4291 = fmul fast float %4234, %4288
  %4292 = fmul fast float %4234, %4289
  %4293 = fmul fast float %4234, %4290
  %4294 = fadd fast float %4291, %3916
  %4295 = fadd fast float %4292, %3917
  %4296 = fadd fast float %4293, %3918
  br label %4297

; <label>:4297                                    ; preds = %4287, %4282, %4279
  %4298 = phi float [ %4284, %4282 ], [ %3916, %4279 ], [ %4294, %4287 ]
  %4299 = phi float [ %4285, %4282 ], [ %3917, %4279 ], [ %4295, %4287 ]
  %4300 = phi float [ %4286, %4282 ], [ %3918, %4279 ], [ %4296, %4287 ]
  %4301 = call float @dx.op.dot3.f32(i32 55, float %4192, float %4193, float %4194, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4302 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %4303 = extractvalue %dx.types.CBufRet.f32 %4302, 0
  %4304 = extractvalue %dx.types.CBufRet.f32 %4302, 1
  %4305 = fmul fast float %4304, %4301
  %4306 = fadd fast float %4305, %4303
  %4307 = call float @dx.op.unary.f32(i32 7, float %4306)  ; Saturate(value)
  %4308 = bitcast float %3979 to i32
  %4309 = and i32 %4308, 65535
  %4310 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4309)  ; LegacyF16ToF32(value)
  %4311 = lshr i32 %4308, 16
  %4312 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4311)  ; LegacyF16ToF32(value)
  %4313 = fcmp fast oge float %4310, 0.000000e+00
  %4314 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4315 = extractvalue %dx.types.CBufRet.f32 %4314, 0
  %4316 = select i1 %4313, float %4310, float %4315
  %4317 = fadd fast float %4316, %4312
  %4318 = fsub fast float %4307, %3915
  %4319 = fmul fast float %4318, %4138
  %4320 = fadd fast float %4319, %3915
  %4321 = fmul fast float %4317, %4138
  %4322 = call float @dx.op.binary.f32(i32 35, float %3914, float %4321)  ; FMax(a,b)
  %4323 = call float @dx.op.binary.f32(i32 35, float %3913, float %4138)  ; FMax(a,b)
  %4324 = and i32 %4068, 16
  %4325 = icmp eq i32 %4324, 0
  br i1 %4325, label %4347, label %4326

; <label>:4326                                    ; preds = %4297
  %4327 = add i32 %3982, 0
  %4328 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4327, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4329 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4328, %dx.types.Handle %4151, float %4079, float %4082, float undef, float undef, i32 0, i32 0, i32 undef, float %4084, float %4086, float undef, float %4088, float %4090, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4330 = extractvalue %dx.types.ResRet.f32 %4329, 0
  %4331 = extractvalue %dx.types.ResRet.f32 %4329, 1
  %4332 = extractvalue %dx.types.ResRet.f32 %4329, 2
  %4333 = and i32 %4270, 65535
  %4334 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4333)  ; LegacyF16ToF32(value)
  %4335 = fmul fast float %4330, %3976
  %4336 = fmul fast float %4331, %3977
  %4337 = fmul fast float %4332, %3978
  %4338 = and i32 %4068, 16384
  %4339 = icmp ne i32 %4338, 0
  %4340 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4341 = extractvalue %dx.types.CBufRet.f32 %4340, 0
  %4342 = select i1 %4339, float %4341, float 1.000000e+00
  %4343 = fmul fast float %4342, %4334
  %4344 = fmul fast float %4335, %4343
  %4345 = fmul fast float %4336, %4343
  %4346 = fmul fast float %4337, %4343
  br label %4347

; <label>:4347                                    ; preds = %4326, %4297
  %4348 = phi float [ %4344, %4326 ], [ 0.000000e+00, %4297 ]
  %4349 = phi float [ %4345, %4326 ], [ 0.000000e+00, %4297 ]
  %4350 = phi float [ %4346, %4326 ], [ 0.000000e+00, %4297 ]
  %4351 = fsub fast float %4348, %3921
  %4352 = fsub fast float %4349, %3922
  %4353 = fsub fast float %4350, %3923
  %4354 = fmul fast float %4351, %4138
  %4355 = fmul fast float %4352, %4138
  %4356 = fmul fast float %4353, %4138
  %4357 = fadd fast float %4354, %3921
  %4358 = fadd fast float %4355, %3922
  %4359 = fadd fast float %4356, %3923
  br label %4035

; <label>:4360                                    ; preds = %4035
  br label %4361

; <label>:4361                                    ; preds = %4360, %3847
  %4362 = phi float [ 0.000000e+00, %3847 ], [ %4036, %4360 ]
  %4363 = phi float [ %1142, %3847 ], [ %4037, %4360 ]
  %4364 = phi float [ %3812, %3847 ], [ %4038, %4360 ]
  %4365 = phi float [ %3810, %3847 ], [ %4039, %4360 ]
  %4366 = phi float [ %3803, %3847 ], [ %4040, %4360 ]
  %4367 = phi float [ %3804, %3847 ], [ %4041, %4360 ]
  %4368 = phi float [ %3805, %3847 ], [ %4042, %4360 ]
  %4369 = phi float [ 0.000000e+00, %3847 ], [ %4043, %4360 ]
  %4370 = phi float [ 0.000000e+00, %3847 ], [ %4044, %4360 ]
  %4371 = phi float [ %3815, %3847 ], [ %4045, %4360 ]
  %4372 = phi float [ %3816, %3847 ], [ %4046, %4360 ]
  %4373 = phi float [ %3817, %3847 ], [ %4047, %4360 ]
  %4374 = phi float [ %3843, %3847 ], [ %4048, %4360 ]
  %4375 = phi float [ %3844, %3847 ], [ %4049, %4360 ]
  %4376 = phi float [ %3845, %3847 ], [ %4050, %4360 ]
  %4377 = phi float [ %3808, %3847 ], [ %4051, %4360 ]
  %4378 = phi float [ %3807, %3847 ], [ %4052, %4360 ]
  %4379 = phi float [ 0.000000e+00, %3847 ], [ %4053, %4360 ]
  %4380 = phi float [ %3806, %3847 ], [ %4054, %4360 ]
  %4381 = phi float [ %3797, %3847 ], [ %4055, %4360 ]
  %4382 = phi float [ %3798, %3847 ], [ %4056, %4360 ]
  %4383 = phi float [ %3799, %3847 ], [ %4057, %4360 ]
  %4384 = call float @dx.op.dot3.f32(i32 55, float %4374, float %4375, float %4376, float %4374, float %4375, float %4376)  ; Dot3(ax,ay,az,bx,by,bz)
  %4385 = call float @dx.op.unary.f32(i32 25, float %4384)  ; Rsqrt(value)
  %4386 = fmul fast float %4385, %4374
  %4387 = fmul fast float %4385, %4375
  %4388 = fmul fast float %4385, %4376
  %4389 = fadd fast float %4379, %1142
  %4390 = call float @dx.op.unary.f32(i32 7, float %4389)  ; Saturate(value)
  %4391 = call float @dx.op.dot3.f32(i32 55, float %4386, float %4387, float %4388, float %4386, float %4387, float %4388)  ; Dot3(ax,ay,az,bx,by,bz)
  %4392 = call float @dx.op.unary.f32(i32 25, float %4391)  ; Rsqrt(value)
  %4393 = fmul fast float %4392, %4386
  %4394 = fmul fast float %4392, %4387
  %4395 = fmul fast float %4392, %4388
  br label %4396

; <label>:4396                                    ; preds = %4361, %3794
  %4397 = phi float [ %4393, %4361 ], [ %3843, %3794 ]
  %4398 = phi float [ %4394, %4361 ], [ %3844, %3794 ]
  %4399 = phi float [ %4395, %4361 ], [ %3845, %3794 ]
  %4400 = phi float [ %4381, %4361 ], [ %3797, %3794 ]
  %4401 = phi float [ %4382, %4361 ], [ %3798, %3794 ]
  %4402 = phi float [ %4383, %4361 ], [ %3799, %3794 ]
  %4403 = phi float [ %4371, %4361 ], [ %3815, %3794 ]
  %4404 = phi float [ %4372, %4361 ], [ %3816, %3794 ]
  %4405 = phi float [ %4373, %4361 ], [ %3817, %3794 ]
  %4406 = phi float [ %4366, %4361 ], [ %3803, %3794 ]
  %4407 = phi float [ %4367, %4361 ], [ %3804, %3794 ]
  %4408 = phi float [ %4368, %4361 ], [ %3805, %3794 ]
  %4409 = phi float [ %4380, %4361 ], [ %3806, %3794 ]
  %4410 = phi float [ %4390, %4361 ], [ %1142, %3794 ]
  %4411 = phi float [ %4378, %4361 ], [ %3807, %3794 ]
  %4412 = phi float [ %4377, %4361 ], [ %3808, %3794 ]
  %4413 = phi float [ %4370, %4361 ], [ 0.000000e+00, %3794 ]
  %4414 = phi float [ %4369, %4361 ], [ 0.000000e+00, %3794 ]
  %4415 = phi float [ %4362, %4361 ], [ 0.000000e+00, %3794 ]
  %4416 = phi float [ %4364, %4361 ], [ %3812, %3794 ]
  %4417 = phi float [ %4363, %4361 ], [ %1142, %3794 ]
  %4418 = phi float [ %4365, %4361 ], [ %3810, %3794 ]
  %4419 = fadd fast float %4409, 0xBFB99999A0000000
  %4420 = call float @dx.op.unary.f32(i32 7, float %4419)  ; Saturate(value)
  %4421 = fmul fast float %4420, 0x3FF1C71C80000000
  %4422 = call float @dx.op.binary.f32(i32 36, float %4409, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4423 = fsub fast float 1.000000e+00, %4421
  %4424 = call float @dx.op.unary.f32(i32 7, float %4423)  ; Saturate(value)
  %4425 = fmul fast float %4424, %4400
  %4426 = fmul fast float %4424, %4401
  %4427 = fmul fast float %4424, %4402
  %4428 = call float @dx.op.unary.f32(i32 7, float %4425)  ; Saturate(value)
  %4429 = call float @dx.op.unary.f32(i32 7, float %4426)  ; Saturate(value)
  %4430 = call float @dx.op.unary.f32(i32 7, float %4427)  ; Saturate(value)
  %4431 = fmul fast float %4421, %4400
  %4432 = fmul fast float %4421, %4401
  %4433 = fmul fast float %4421, %4402
  %4434 = fadd fast float %4431, %4422
  %4435 = fadd fast float %4432, %4422
  %4436 = fadd fast float %4433, %4422
  %4437 = call float @dx.op.unary.f32(i32 7, float %4434)  ; Saturate(value)
  %4438 = call float @dx.op.unary.f32(i32 7, float %4435)  ; Saturate(value)
  %4439 = call float @dx.op.unary.f32(i32 7, float %4436)  ; Saturate(value)
  %4440 = call float @dx.op.unary.f32(i32 7, float %4411)  ; Saturate(value)
  %4441 = call float @dx.op.binary.f32(i32 36, float %4406, float 1.270000e+02)  ; FMin(a,b)
  %4442 = call float @dx.op.binary.f32(i32 36, float %4407, float 1.270000e+02)  ; FMin(a,b)
  %4443 = call float @dx.op.binary.f32(i32 36, float %4408, float 1.270000e+02)  ; FMin(a,b)
  %4444 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4445 = extractvalue %dx.types.CBufRet.i32 %4444, 3
  %4446 = and i32 %4445, 8
  %4447 = icmp ne i32 %4446, 0
  %4448 = call float @dx.op.binary.f32(i32 35, float %4428, float %4400)  ; FMax(a,b)
  %4449 = call float @dx.op.binary.f32(i32 35, float %4429, float %4400)  ; FMax(a,b)
  %4450 = call float @dx.op.binary.f32(i32 35, float %4430, float %4400)  ; FMax(a,b)
  %4451 = call float @dx.op.dot3.f32(i32 55, float %4428, float %4429, float %4430, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4452 = select i1 %260, float %4400, float %4428
  %4453 = select i1 %260, float %4451, float %4429
  %4454 = select i1 %260, float 1.000000e+00, float %4430
  %4455 = select i1 %4447, float %4448, float %4452
  %4456 = select i1 %4447, float %4449, float %4453
  %4457 = select i1 %4447, float %4450, float %4454
  %4458 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4459 = extractvalue %dx.types.CBufRet.f32 %4458, 0
  %4460 = extractvalue %dx.types.CBufRet.f32 %4458, 1
  %4461 = extractvalue %dx.types.CBufRet.f32 %4458, 2
  %4462 = fadd fast float %4459, %201
  %4463 = fadd fast float %4460, %202
  %4464 = fadd fast float %4461, %203
  %4465 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4466 = extractvalue %dx.types.CBufRet.f32 %4465, 0
  %4467 = extractvalue %dx.types.CBufRet.f32 %4465, 1
  %4468 = fsub fast float %4462, %4466
  %4469 = fsub fast float %4463, %4467
  %4470 = fmul fast float %4468, %4468
  %4471 = fmul fast float %4469, %4469
  %4472 = fadd fast float %4470, %4471
  %4473 = call float @dx.op.unary.f32(i32 24, float %4472)  ; Sqrt(value)
  %4474 = extractvalue %dx.types.CBufRet.f32 %4465, 2
  %4475 = fcmp fast olt float %4473, %4474
  br i1 %4475, label %4476, label %4543

; <label>:4476                                    ; preds = %4396
  %4477 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4478 = extractvalue %dx.types.CBufRet.f32 %4477, 0
  %4479 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4480 = extractvalue %dx.types.CBufRet.f32 %4479, 0
  %4481 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4482 = extractvalue %dx.types.CBufRet.f32 %4481, 0
  %4483 = extractvalue %dx.types.CBufRet.f32 %4477, 1
  %4484 = extractvalue %dx.types.CBufRet.f32 %4479, 1
  %4485 = extractvalue %dx.types.CBufRet.f32 %4481, 1
  %4486 = extractvalue %dx.types.CBufRet.f32 %4477, 3
  %4487 = extractvalue %dx.types.CBufRet.f32 %4479, 3
  %4488 = extractvalue %dx.types.CBufRet.f32 %4481, 3
  %4489 = fadd fast float %4486, %4462
  %4490 = fadd fast float %4487, %4463
  %4491 = fadd fast float %4488, %4464
  %4492 = fmul fast float %4489, %4478
  %4493 = call float @dx.op.tertiary.f32(i32 46, float %4490, float %4480, float %4492)  ; FMad(a,b,c)
  %4494 = call float @dx.op.tertiary.f32(i32 46, float %4491, float %4482, float %4493)  ; FMad(a,b,c)
  %4495 = fmul fast float %4489, %4483
  %4496 = call float @dx.op.tertiary.f32(i32 46, float %4490, float %4484, float %4495)  ; FMad(a,b,c)
  %4497 = call float @dx.op.tertiary.f32(i32 46, float %4491, float %4485, float %4496)  ; FMad(a,b,c)
  %4498 = fsub fast float %4494, %4486
  %4499 = fsub fast float %4497, %4487
  %4500 = fsub fast float %4498, %4466
  %4501 = fadd fast float %4500, %4474
  %4502 = fsub fast float %4499, %4467
  %4503 = fadd fast float %4502, %4474
  %4504 = extractvalue %dx.types.CBufRet.f32 %4465, 3
  %4505 = fmul fast float %4501, %4504
  %4506 = fmul fast float %4503, %4504
  %4507 = call float @dx.op.unary.f32(i32 7, float %4505)  ; Saturate(value)
  %4508 = call float @dx.op.unary.f32(i32 7, float %4506)  ; Saturate(value)
  %4509 = fsub fast float 1.000000e+00, %4507
  %4510 = fsub fast float 1.000000e+00, %4508
  %4511 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %36, %dx.types.Handle %54, float %4509, float %4510, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4512 = extractvalue %dx.types.ResRet.f32 %4511, 0
  %4513 = fcmp fast ugt float %4512, 0.000000e+00
  br i1 %4513, label %4514, label %4817

; <label>:4514                                    ; preds = %4476
  %4515 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4516 = extractvalue %dx.types.CBufRet.f32 %4515, 2
  %4517 = fmul fast float %4516, %4512
  %4518 = extractvalue %dx.types.CBufRet.f32 %4515, 3
  %4519 = fadd fast float %4518, %4517
  %4520 = extractvalue %dx.types.CBufRet.f32 %4481, 2
  %4521 = fadd fast float %4519, %4488
  %4522 = fmul fast float %4494, %4482
  %4523 = call float @dx.op.tertiary.f32(i32 46, float %4497, float %4485, float %4522)  ; FMad(a,b,c)
  %4524 = call float @dx.op.tertiary.f32(i32 46, float %4521, float %4520, float %4523)  ; FMad(a,b,c)
  %4525 = fsub fast float %4524, %4488
  %4526 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4527 = extractvalue %dx.types.CBufRet.f32 %4526, 2
  %4528 = fsub fast float %4525, %4527
  %4529 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %54, float %4509, float %4510, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4530 = extractvalue %dx.types.ResRet.f32 %4529, 0
  %4531 = extractvalue %dx.types.ResRet.f32 %4529, 1
  %4532 = extractvalue %dx.types.ResRet.f32 %4529, 2
  %4533 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %54, float %4509, float %4510, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4534 = extractvalue %dx.types.ResRet.f32 %4533, 0
  %4535 = extractvalue %dx.types.ResRet.f32 %4533, 1
  %4536 = extractvalue %dx.types.ResRet.f32 %4533, 2
  %4537 = fadd fast float %4534, %4530
  %4538 = fmul fast float %4537, 0x3F847AE140000000
  %4539 = fadd fast float %4535, %4531
  %4540 = fmul fast float %4539, 0x3F847AE140000000
  %4541 = fadd fast float %4536, %4532
  %4542 = fmul fast float %4541, 0x3F847AE140000000
  br label %4817

; <label>:4543                                    ; preds = %4396
  %4544 = and i32 %239, 1
  %4545 = icmp eq i32 %4544, 0
  br i1 %4545, label %4817, label %4546

; <label>:4546                                    ; preds = %4543
  %4547 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4548 = extractvalue %dx.types.CBufRet.f32 %4547, 0
  %4549 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4550 = extractvalue %dx.types.CBufRet.f32 %4549, 0
  %4551 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4552 = extractvalue %dx.types.CBufRet.f32 %4551, 0
  %4553 = extractvalue %dx.types.CBufRet.f32 %4547, 1
  %4554 = extractvalue %dx.types.CBufRet.f32 %4549, 1
  %4555 = extractvalue %dx.types.CBufRet.f32 %4551, 1
  %4556 = extractvalue %dx.types.CBufRet.f32 %4547, 3
  %4557 = extractvalue %dx.types.CBufRet.f32 %4549, 3
  %4558 = extractvalue %dx.types.CBufRet.f32 %4551, 3
  %4559 = fadd fast float %4556, %4462
  %4560 = fadd fast float %4557, %4463
  %4561 = fadd fast float %4558, %4464
  %4562 = fmul fast float %4559, %4548
  %4563 = call float @dx.op.tertiary.f32(i32 46, float %4560, float %4550, float %4562)  ; FMad(a,b,c)
  %4564 = call float @dx.op.tertiary.f32(i32 46, float %4561, float %4552, float %4563)  ; FMad(a,b,c)
  %4565 = fmul fast float %4559, %4553
  %4566 = call float @dx.op.tertiary.f32(i32 46, float %4560, float %4554, float %4565)  ; FMad(a,b,c)
  %4567 = call float @dx.op.tertiary.f32(i32 46, float %4561, float %4555, float %4566)  ; FMad(a,b,c)
  %4568 = fsub fast float %4564, %4556
  %4569 = fsub fast float %4567, %4557
  %4570 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %4571 = extractvalue %dx.types.CBufRet.f32 %4570, 0
  %4572 = extractvalue %dx.types.CBufRet.f32 %4570, 1
  %4573 = extractvalue %dx.types.CBufRet.f32 %4570, 2
  %4574 = extractvalue %dx.types.CBufRet.f32 %4570, 3
  %4575 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4576 = extractvalue %dx.types.CBufRet.f32 %4575, 3
  %4577 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4578 = extractvalue %dx.types.CBufRet.i32 %4577, 0
  %4579 = extractvalue %dx.types.CBufRet.i32 %4577, 1
  %4580 = udiv i32 %4579, %4578
  %4581 = fsub fast float %4568, %4571
  %4582 = fsub fast float %4569, %4572
  %4583 = call float @dx.op.binary.f32(i32 35, float %4581, float 0.000000e+00)  ; FMax(a,b)
  %4584 = call float @dx.op.binary.f32(i32 35, float %4582, float 0.000000e+00)  ; FMax(a,b)
  %4585 = call float @dx.op.binary.f32(i32 36, float %4583, float %4573)  ; FMin(a,b)
  %4586 = call float @dx.op.binary.f32(i32 36, float %4584, float %4574)  ; FMin(a,b)
  %4587 = add i32 %4578, -1
  %4588 = add i32 %4580, -1
  %4589 = fmul fast float %4585, %4576
  %4590 = fmul fast float %4586, %4576
  %4591 = fptoui float %4589 to i32
  %4592 = fptoui float %4590 to i32
  %4593 = call i32 @dx.op.binary.i32(i32 40, i32 %4591, i32 %4587)  ; UMin(a,b)
  %4594 = call i32 @dx.op.binary.i32(i32 40, i32 %4592, i32 %4588)  ; UMin(a,b)
  %4595 = mul i32 %4594, %4578
  %4596 = add i32 %4595, %4593
  %4597 = shl i32 %4596, 2
  %4598 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %4597, i32 undef)  ; BufferLoad(srv,index,wot)
  %4599 = extractvalue %dx.types.ResRet.i32 %4598, 0
  %4600 = icmp eq i32 %4599, -1
  br i1 %4600, label %4817, label %4601

; <label>:4601                                    ; preds = %4546
  %4602 = mul i32 %4599, 148
  %4603 = add i32 %4602, 4
  %4604 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4603, i32 undef)  ; BufferLoad(srv,index,wot)
  %4605 = extractvalue %dx.types.ResRet.f32 %4604, 0
  %4606 = add i32 %4602, 8
  %4607 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4606, i32 undef)  ; BufferLoad(srv,index,wot)
  %4608 = extractvalue %dx.types.ResRet.f32 %4607, 0
  %4609 = add i32 %4602, 36
  %4610 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4609, i32 undef)  ; BufferLoad(srv,index,wot)
  %4611 = extractvalue %dx.types.ResRet.f32 %4610, 0
  %4612 = add i32 %4602, 60
  %4613 = add i32 %4602, 92
  %4614 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %4613, i32 undef)  ; BufferLoad(srv,index,wot)
  %4615 = extractvalue %dx.types.ResRet.i32 %4614, 0
  %4616 = add i32 %4602, 116
  %4617 = fsub fast float %4568, %4605
  %4618 = fsub fast float %4569, %4608
  %4619 = fmul fast float %4576, %4617
  %4620 = fmul fast float %4576, %4618
  %4621 = call float @dx.op.unary.f32(i32 7, float %4619)  ; Saturate(value)
  %4622 = call float @dx.op.unary.f32(i32 7, float %4620)  ; Saturate(value)
  %4623 = fsub fast float 1.000000e+00, %4622
  %4624 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4625 = extractvalue %dx.types.CBufRet.f32 %4624, 2
  %4626 = call float @dx.op.unary.f32(i32 83, float %4621)  ; DerivCoarseX(value)
  %4627 = call float @dx.op.unary.f32(i32 83, float %4623)  ; DerivCoarseX(value)
  %4628 = call float @dx.op.unary.f32(i32 84, float %4621)  ; DerivCoarseY(value)
  %4629 = call float @dx.op.unary.f32(i32 84, float %4623)  ; DerivCoarseY(value)
  %4630 = fmul fast float %4626, %4625
  %4631 = fmul fast float %4627, %4625
  %4632 = fmul fast float %4628, %4625
  %4633 = fmul fast float %4629, %4625
  %4634 = call float @dx.op.dot2.f32(i32 54, float %4632, float %4633, float %4632, float %4633)  ; Dot2(ax,ay,bx,by)
  %4635 = call float @dx.op.dot2.f32(i32 54, float %4630, float %4631, float %4630, float %4631)  ; Dot2(ax,ay,bx,by)
  %4636 = call float @dx.op.binary.f32(i32 35, float %4635, float %4634)  ; FMax(a,b)
  %4637 = call float @dx.op.unary.f32(i32 23, float %4636)  ; Log(value)
  %4638 = fmul fast float %4637, 5.000000e-01
  %4639 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %4640 = extractvalue %dx.types.CBufRet.f32 %4639, 1
  %4641 = fadd fast float %4640, %4638
  %4642 = call float @dx.op.binary.f32(i32 35, float %4641, float 0.000000e+00)  ; FMax(a,b)
  %4643 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4644 = extractvalue %dx.types.CBufRet.f32 %4643, 3
  %4645 = fadd fast float %4644, %4642
  %4646 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %4647 = extractvalue %dx.types.CBufRet.f32 %4646, 3
  %4648 = fadd fast float %4645, %4647
  %4649 = add i32 %4615, 0
  %4650 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4649, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4651 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4650, i32 0)  ; GetDimensions(handle,mipLevel)
  %4652 = extractvalue %dx.types.Dimensions %4651, 0
  %4653 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4652)  ; FirstbitLo(value)
  %4654 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4655 = extractvalue %dx.types.CBufRet.i32 %4654, 1
  %4656 = sub nsw i32 %4655, %4653
  %4657 = sitofp i32 %4656 to float
  %4658 = fsub fast float %4648, %4657
  %4659 = call float @dx.op.binary.f32(i32 35, float %4658, float 0.000000e+00)  ; FMax(a,b)
  %4660 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4650, %dx.types.Handle %52, float %4621, float %4623, float %4611, float undef, i32 0, i32 0, i32 undef, float %4659)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4661 = extractvalue %dx.types.ResRet.f32 %4660, 0
  %4662 = fcmp ule float %4661, 0x3FE0101020000000
  %4663 = extractvalue %dx.types.CBufRet.i32 %4654, 0
  %4664 = and i32 %4663, 128
  %4665 = icmp ne i32 %4664, 0
  %4666 = and i1 %4662, %4665
  br i1 %4666, label %4817, label %4667

; <label>:4667                                    ; preds = %4601
  %4668 = add i32 %4602, 20
  %4669 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4668, i32 undef)  ; BufferLoad(srv,index,wot)
  %4670 = extractvalue %dx.types.ResRet.f32 %4669, 0
  %4671 = add i32 %4602, 24
  %4672 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4671, i32 undef)  ; BufferLoad(srv,index,wot)
  %4673 = extractvalue %dx.types.ResRet.f32 %4672, 0
  %4674 = add i32 %4602, 40
  %4675 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4674, i32 undef)  ; BufferLoad(srv,index,wot)
  %4676 = extractvalue %dx.types.ResRet.f32 %4675, 0
  %4677 = add i32 %4602, 96
  %4678 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %4677, i32 undef)  ; BufferLoad(srv,index,wot)
  %4679 = extractvalue %dx.types.ResRet.i32 %4678, 0
  %4680 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4681 = extractvalue %dx.types.CBufRet.f32 %4680, 2
  %4682 = fmul fast float %4681, %4621
  %4683 = fmul fast float %4681, %4623
  %4684 = extractvalue %dx.types.CBufRet.f32 %4680, 3
  %4685 = fadd fast float %4682, %4684
  %4686 = fadd fast float %4683, %4684
  %4687 = add i32 %4679, 0
  %4688 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4687, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4689 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4688, i32 0)  ; GetDimensions(handle,mipLevel)
  %4690 = extractvalue %dx.types.Dimensions %4689, 0
  %4691 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4690)  ; FirstbitLo(value)
  %4692 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4693 = extractvalue %dx.types.CBufRet.i32 %4692, 1
  %4694 = sub nsw i32 %4693, %4691
  %4695 = sitofp i32 %4694 to float
  %4696 = fsub fast float %4645, %4695
  %4697 = call float @dx.op.binary.f32(i32 35, float %4696, float 0.000000e+00)  ; FMax(a,b)
  %4698 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4688, %dx.types.Handle %52, float %4685, float %4686, float %4676, float undef, i32 0, i32 0, i32 undef, float %4697)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4699 = extractvalue %dx.types.ResRet.f32 %4698, 0
  %4700 = fmul fast float %4699, %4670
  %4701 = fadd fast float %4700, %4673
  %4702 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4703 = extractvalue %dx.types.CBufRet.f32 %4702, 0
  %4704 = extractvalue %dx.types.CBufRet.f32 %4702, 1
  %4705 = extractvalue %dx.types.CBufRet.f32 %4702, 2
  %4706 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4707 = extractvalue %dx.types.CBufRet.f32 %4706, 3
  %4708 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4709 = extractvalue %dx.types.CBufRet.f32 %4708, 3
  %4710 = extractvalue %dx.types.CBufRet.f32 %4702, 3
  %4711 = fadd fast float %4707, %4568
  %4712 = fadd fast float %4709, %4569
  %4713 = fadd fast float %4701, %4710
  %4714 = fmul fast float %4711, %4703
  %4715 = call float @dx.op.tertiary.f32(i32 46, float %4712, float %4704, float %4714)  ; FMad(a,b,c)
  %4716 = call float @dx.op.tertiary.f32(i32 46, float %4713, float %4705, float %4715)  ; FMad(a,b,c)
  %4717 = fsub fast float %4716, %4710
  %4718 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4719 = extractvalue %dx.types.CBufRet.f32 %4718, 2
  %4720 = fsub fast float %4717, %4719
  %4721 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4722 = extractvalue %dx.types.CBufRet.i32 %4721, 0
  %4723 = call i32 @dx.op.binary.i32(i32 40, i32 %4599, i32 %4722)  ; UMin(a,b)
  %4724 = mul i32 %4723, 36
  %4725 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %4724, i32 undef)  ; BufferLoad(srv,index,wot)
  %4726 = extractvalue %dx.types.ResRet.i32 %4725, 0
  %4727 = add i32 %4724, 4
  %4728 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4729 = extractvalue %dx.types.CBufRet.f32 %4728, 0
  %4730 = fmul fast float %4729, %4621
  %4731 = fmul fast float %4729, %4623
  %4732 = extractvalue %dx.types.CBufRet.f32 %4728, 1
  %4733 = fadd fast float %4730, %4732
  %4734 = fadd fast float %4731, %4732
  %4735 = icmp eq i32 %4726, 0
  br i1 %4735, label %4804, label %4736

; <label>:4736                                    ; preds = %4667
  br label %4737

; <label>:4737                                    ; preds = %4794, %4736
  %4738 = phi float [ %4795, %4794 ], [ 0.000000e+00, %4736 ]
  %4739 = phi float [ %4796, %4794 ], [ 0.000000e+00, %4736 ]
  %4740 = phi float [ %4797, %4794 ], [ 0.000000e+00, %4736 ]
  %4741 = phi float [ %4798, %4794 ], [ 0.000000e+00, %4736 ]
  %4742 = phi float [ %4799, %4794 ], [ 0.000000e+00, %4736 ]
  %4743 = phi float [ %4800, %4794 ], [ 0.000000e+00, %4736 ]
  %4744 = phi i32 [ %4801, %4794 ], [ 0, %4736 ]
  %4745 = shl i32 %4744, 2
  %4746 = add i32 %4612, %4745
  %4747 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4746, i32 undef)  ; BufferLoad(srv,index,wot)
  %4748 = extractvalue %dx.types.ResRet.f32 %4747, 0
  %4749 = add i32 %4616, %4745
  %4750 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %4749, i32 undef)  ; BufferLoad(srv,index,wot)
  %4751 = extractvalue %dx.types.ResRet.i32 %4750, 0
  %4752 = add i32 %4751, 0
  %4753 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4752, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4754 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4753, i32 0)  ; GetDimensions(handle,mipLevel)
  %4755 = extractvalue %dx.types.Dimensions %4754, 0
  %4756 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4755)  ; FirstbitLo(value)
  %4757 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4758 = extractvalue %dx.types.CBufRet.i32 %4757, 1
  %4759 = sub nsw i32 %4758, %4756
  %4760 = sitofp i32 %4759 to float
  %4761 = fsub fast float %4645, %4760
  %4762 = call float @dx.op.binary.f32(i32 35, float %4761, float 0.000000e+00)  ; FMax(a,b)
  %4763 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4753, %dx.types.Handle %52, float %4733, float %4734, float %4748, float undef, i32 0, i32 0, i32 undef, float %4762)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4764 = extractvalue %dx.types.ResRet.f32 %4763, 0
  %4765 = fcmp fast ogt float %4764, 0.000000e+00
  br i1 %4765, label %4766, label %4794

; <label>:4766                                    ; preds = %4737
  %4767 = add i32 %4727, %4745
  %4768 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %4767, i32 undef)  ; BufferLoad(srv,index,wot)
  %4769 = extractvalue %dx.types.ResRet.i32 %4768, 0
  %4770 = and i32 %4769, 32767
  %4771 = mul nuw nsw i32 %4770, 928
  %4772 = add nuw nsw i32 %4771, 48
  %4773 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %4772, i32 undef)  ; BufferLoad(srv,index,wot)
  %4774 = extractvalue %dx.types.ResRet.f32 %4773, 0
  %4775 = extractvalue %dx.types.ResRet.f32 %4773, 1
  %4776 = extractvalue %dx.types.ResRet.f32 %4773, 2
  %4777 = add nuw nsw i32 %4771, 60
  %4778 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %4777, i32 undef)  ; BufferLoad(srv,index,wot)
  %4779 = extractvalue %dx.types.ResRet.f32 %4778, 0
  %4780 = extractvalue %dx.types.ResRet.f32 %4778, 1
  %4781 = extractvalue %dx.types.ResRet.f32 %4778, 2
  %4782 = fmul fast float %4774, %4764
  %4783 = fmul fast float %4775, %4764
  %4784 = fmul fast float %4776, %4764
  %4785 = fadd fast float %4782, %4738
  %4786 = fadd fast float %4783, %4739
  %4787 = fadd fast float %4784, %4740
  %4788 = fmul fast float %4779, %4764
  %4789 = fmul fast float %4780, %4764
  %4790 = fmul fast float %4781, %4764
  %4791 = fadd fast float %4788, %4741
  %4792 = fadd fast float %4789, %4742
  %4793 = fadd fast float %4790, %4743
  br label %4794

; <label>:4794                                    ; preds = %4766, %4737
  %4795 = phi float [ %4785, %4766 ], [ %4738, %4737 ]
  %4796 = phi float [ %4786, %4766 ], [ %4739, %4737 ]
  %4797 = phi float [ %4787, %4766 ], [ %4740, %4737 ]
  %4798 = phi float [ %4791, %4766 ], [ %4741, %4737 ]
  %4799 = phi float [ %4792, %4766 ], [ %4742, %4737 ]
  %4800 = phi float [ %4793, %4766 ], [ %4743, %4737 ]
  %4801 = add nuw i32 %4744, 1
  %4802 = icmp eq i32 %4801, %4726
  br i1 %4802, label %4803, label %4737

; <label>:4803                                    ; preds = %4794
  br label %4804

; <label>:4804                                    ; preds = %4803, %4667
  %4805 = phi float [ 0.000000e+00, %4667 ], [ %4795, %4803 ]
  %4806 = phi float [ 0.000000e+00, %4667 ], [ %4796, %4803 ]
  %4807 = phi float [ 0.000000e+00, %4667 ], [ %4797, %4803 ]
  %4808 = phi float [ 0.000000e+00, %4667 ], [ %4798, %4803 ]
  %4809 = phi float [ 0.000000e+00, %4667 ], [ %4799, %4803 ]
  %4810 = phi float [ 0.000000e+00, %4667 ], [ %4800, %4803 ]
  %4811 = fadd fast float %4808, %4805
  %4812 = fmul fast float %4811, 0x3F847AE140000000
  %4813 = fadd fast float %4809, %4806
  %4814 = fmul fast float %4813, 0x3F847AE140000000
  %4815 = fadd fast float %4810, %4807
  %4816 = fmul fast float %4815, 0x3F847AE140000000
  br label %4817

; <label>:4817                                    ; preds = %4804, %4601, %4546, %4543, %4514, %4476
  %4818 = phi float [ %4538, %4514 ], [ 0.000000e+00, %4476 ], [ %4812, %4804 ], [ 0.000000e+00, %4546 ], [ 0.000000e+00, %4601 ], [ 0.000000e+00, %4543 ]
  %4819 = phi float [ %4540, %4514 ], [ 0.000000e+00, %4476 ], [ %4814, %4804 ], [ 0.000000e+00, %4546 ], [ 0.000000e+00, %4601 ], [ 0.000000e+00, %4543 ]
  %4820 = phi float [ %4542, %4514 ], [ 0.000000e+00, %4476 ], [ %4816, %4804 ], [ 0.000000e+00, %4546 ], [ 0.000000e+00, %4601 ], [ 0.000000e+00, %4543 ]
  %4821 = phi float [ %4528, %4514 ], [ -1.310720e+05, %4476 ], [ %4720, %4804 ], [ -1.310720e+05, %4546 ], [ -1.310720e+05, %4601 ], [ -1.310720e+05, %4543 ]
  %4822 = phi i1 [ true, %4514 ], [ false, %4476 ], [ true, %4804 ], [ false, %4546 ], [ false, %4601 ], [ false, %4543 ]
  %4823 = and i32 %239, 3
  %4824 = icmp eq i32 %4823, 1
  %4825 = select i1 %4824, float 1.000000e+00, float 0.000000e+00
  %4826 = fsub fast float %4821, %203
  %4827 = call float @dx.op.unary.f32(i32 7, float %4826)  ; Saturate(value)
  %4828 = select i1 %4822, float %4827, float 1.000000e+00
  %4829 = fmul fast float %4828, %4825
  %4830 = icmp eq i32 %4823, 3
  %4831 = select i1 %4830, float 1.000000e+00, float %4829
  %4832 = call float @dx.op.binary.f32(i32 35, float %4415, float %4831)  ; FMax(a,b)
  %4833 = fcmp fast olt float %4831, 1.000000e+00
  %4834 = fcmp uge float %75, 0.000000e+00
  %4835 = and i1 %4834, %4833
  br i1 %4835, label %4836, label %4846

; <label>:4836                                    ; preds = %4817
  %4837 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %49, %dx.types.Handle %52, float %75, float %76, float %77, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4838 = extractvalue %dx.types.ResRet.f32 %4837, 0
  %4839 = extractvalue %dx.types.ResRet.f32 %4837, 1
  %4840 = extractvalue %dx.types.ResRet.f32 %4837, 2
  %4841 = fadd fast float %4838, %4832
  %4842 = fcmp ule float %74, 0.000000e+00
  %4843 = call float @dx.op.dot3.f32(i32 55, float %71, float %72, float %73, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4844 = select i1 %4842, float %4843, float 1.000000e+00
  %4845 = fmul fast float %4844, %4840
  br label %4846

; <label>:4846                                    ; preds = %4836, %4817
  %4847 = phi float [ %4841, %4836 ], [ %4832, %4817 ]
  %4848 = phi float [ %4839, %4836 ], [ 0.000000e+00, %4817 ]
  %4849 = phi float [ %4845, %4836 ], [ 0.000000e+00, %4817 ]
  %4850 = call float @dx.op.unary.f32(i32 7, float %4847)  ; Saturate(value)
  %4851 = call float @dx.op.unary.f32(i32 7, float %4848)  ; Saturate(value)
  %4852 = call float @dx.op.unary.f32(i32 7, float %4849)  ; Saturate(value)
  %4853 = fcmp fast une float %4851, 0.000000e+00
  %4854 = fcmp fast une float %4852, 0.000000e+00
  %4855 = or i1 %4853, %4854
  br i1 %4855, label %4856, label %5415

; <label>:4856                                    ; preds = %4846
  br i1 %4853, label %4857, label %5130

; <label>:4857                                    ; preds = %4856
  %4858 = call float @dx.op.unary.f32(i32 23, float %4412)  ; Log(value)
  %4859 = fmul fast float %4858, 4.000000e+00
  %4860 = call float @dx.op.unary.f32(i32 21, float %4859)  ; Exp(value)
  %4861 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4862 = extractvalue %dx.types.CBufRet.f32 %4861, 0
  %4863 = fmul fast float %4862, %62
  %4864 = fmul fast float %4862, %63
  %4865 = fmul fast float %4862, %64
  %4866 = call float @dx.op.unary.f32(i32 6, float %71)  ; FAbs(value)
  %4867 = call float @dx.op.unary.f32(i32 6, float %72)  ; FAbs(value)
  %4868 = call float @dx.op.unary.f32(i32 6, float %73)  ; FAbs(value)
  %4869 = call float @dx.op.unary.f32(i32 23, float %4866)  ; Log(value)
  %4870 = call float @dx.op.unary.f32(i32 23, float %4867)  ; Log(value)
  %4871 = call float @dx.op.unary.f32(i32 23, float %4868)  ; Log(value)
  %4872 = fmul fast float %4869, 4.000000e+00
  %4873 = fmul fast float %4870, 4.000000e+00
  %4874 = fmul fast float %4871, 4.000000e+00
  %4875 = call float @dx.op.unary.f32(i32 21, float %4872)  ; Exp(value)
  %4876 = call float @dx.op.unary.f32(i32 21, float %4873)  ; Exp(value)
  %4877 = call float @dx.op.unary.f32(i32 21, float %4874)  ; Exp(value)
  %4878 = fadd fast float %4876, %4875
  %4879 = fadd fast float %4878, %4877
  %4880 = fdiv fast float 1.000000e+00, %4879
  %4881 = fmul fast float %4880, %4875
  %4882 = fcmp fast ogt float %71, 0.000000e+00
  %4883 = fcmp fast ogt float %72, 0.000000e+00
  %4884 = fcmp fast ogt float %73, 0.000000e+00
  %4885 = fcmp fast olt float %71, 0.000000e+00
  %4886 = fcmp fast olt float %72, 0.000000e+00
  %4887 = fcmp fast olt float %73, 0.000000e+00
  %4888 = zext i1 %4882 to i32
  %4889 = zext i1 %4883 to i32
  %4890 = zext i1 %4884 to i32
  %4891 = zext i1 %4885 to i32
  %4892 = zext i1 %4886 to i32
  %4893 = zext i1 %4887 to i32
  %4894 = sub nsw i32 %4888, %4891
  %4895 = sub nsw i32 %4889, %4892
  %4896 = sub nsw i32 %4890, %4893
  %4897 = call float @dx.op.unary.f32(i32 83, float %4863)  ; DerivCoarseX(value)
  %4898 = call float @dx.op.unary.f32(i32 83, float %4864)  ; DerivCoarseX(value)
  %4899 = call float @dx.op.unary.f32(i32 83, float %4865)  ; DerivCoarseX(value)
  %4900 = call float @dx.op.unary.f32(i32 84, float %4863)  ; DerivCoarseY(value)
  %4901 = call float @dx.op.unary.f32(i32 84, float %4864)  ; DerivCoarseY(value)
  %4902 = call float @dx.op.unary.f32(i32 84, float %4865)  ; DerivCoarseY(value)
  %4903 = fcmp fast ole float %271, %4881
  %4904 = fmul fast float %4880, %4878
  %4905 = fcmp fast ole float %271, %4904
  %4906 = select i1 %4905, float %4865, float %4863
  %4907 = select i1 %4905, float %4863, float %4864
  %4908 = select i1 %4903, float %4864, float %4906
  %4909 = select i1 %4903, float %4865, float %4907
  %4910 = select i1 %4905, float %4899, float %4897
  %4911 = select i1 %4905, float %4897, float %4898
  %4912 = select i1 %4903, float %4898, float %4910
  %4913 = select i1 %4903, float %4899, float %4911
  %4914 = select i1 %4905, float %4902, float %4900
  %4915 = select i1 %4905, float %4900, float %4901
  %4916 = select i1 %4903, float %4901, float %4914
  %4917 = select i1 %4903, float %4902, float %4915
  %4918 = call float @dx.op.unary.f32(i32 27, float %4908)  ; Round_ni(value)
  %4919 = call float @dx.op.unary.f32(i32 27, float %4909)  ; Round_ni(value)
  %4920 = fptosi float %4918 to i32
  %4921 = fptosi float %4919 to i32
  %4922 = xor i32 %4921, %4920
  %4923 = sitofp i32 %4922 to float
  %4924 = fptosi float %4923 to i32
  %4925 = sitofp i32 %4924 to float
  %4926 = fmul fast float %4925, 0x3FE3C6EF40000000
  %4927 = frem fast float %4918, 2.560000e+02
  %4928 = frem fast float %4919, 2.560000e+02
  %4929 = fptoui float %4927 to i32
  %4930 = fptoui float %4928 to i32
  %4931 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %38, i32 0, i32 %4929, i32 %4930, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4932 = extractvalue %dx.types.ResRet.f32 %4931, 0
  %4933 = extractvalue %dx.types.ResRet.f32 %4931, 1
  %4934 = extractvalue %dx.types.ResRet.f32 %4931, 2
  %4935 = fadd fast float %4932, %4926
  %4936 = fadd fast float %4933, %4926
  %4937 = fadd fast float %4934, %4926
  %4938 = call float @dx.op.unary.f32(i32 22, float %4935)  ; Frc(value)
  %4939 = call float @dx.op.unary.f32(i32 22, float %4936)  ; Frc(value)
  %4940 = call float @dx.op.unary.f32(i32 22, float %4937)  ; Frc(value)
  %4941 = fmul fast float %4940, 0x401921FB60000000
  %4942 = call float @dx.op.unary.f32(i32 13, float %4941)  ; Sin(value)
  %4943 = call float @dx.op.unary.f32(i32 12, float %4941)  ; Cos(value)
  %4944 = fsub fast float -0.000000e+00, %4943
  %4945 = fmul fast float %4943, %4908
  %4946 = call float @dx.op.tertiary.f32(i32 46, float %4942, float %4909, float %4945)  ; FMad(a,b,c)
  %4947 = fmul fast float %4942, %4908
  %4948 = call float @dx.op.tertiary.f32(i32 46, float %4944, float %4909, float %4947)  ; FMad(a,b,c)
  %4949 = fadd fast float %4946, %4938
  %4950 = fadd fast float %4948, %4939
  %4951 = extractvalue %dx.types.CBufRet.f32 %4861, 3
  %4952 = bitcast float %4951 to i32
  %4953 = icmp eq i32 %4952, 0
  br i1 %4953, label %4992, label %4954

; <label>:4954                                    ; preds = %4857
  %4955 = add i32 %4952, 0
  %4956 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4955, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4957 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4956, %dx.types.Handle %111, float %4949, float %4950, float undef, float undef, i32 0, i32 0, i32 undef, float %4912, float %4913, float undef, float %4916, float %4917, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4958 = extractvalue %dx.types.ResRet.f32 %4957, 0
  %4959 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4960 = extractvalue %dx.types.CBufRet.f32 %4959, 1
  %4961 = extractvalue %dx.types.CBufRet.f32 %4959, 2
  %4962 = fsub fast float 1.000000e+00, %4851
  %4963 = call float @dx.op.binary.f32(i32 35, float %4962, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4964 = bitcast float %4851 to i32
  %4965 = sitofp i32 %4964 to float
  %4966 = fadd fast float %4965, 0xC1CFBF8940000000
  %4967 = fmul fast float %4961, %4966
  %4968 = fadd fast float %4967, 0x41CFBF8940000000
  %4969 = fptosi float %4968 to i32
  %4970 = bitcast i32 %4969 to float
  %4971 = bitcast float %4963 to i32
  %4972 = sitofp i32 %4971 to float
  %4973 = fadd fast float %4972, 0xC1CFBF8940000000
  %4974 = fmul fast float %4973, %4961
  %4975 = fadd fast float %4974, 0x41CFBF8940000000
  %4976 = fptosi float %4975 to i32
  %4977 = bitcast i32 %4976 to float
  %4978 = fmul fast float %4970, %4960
  %4979 = fmul fast float %4977, %4960
  %4980 = fsub fast float %4963, %4978
  %4981 = fadd fast float %4979, %4963
  %4982 = call float @dx.op.unary.f32(i32 7, float %4980)  ; Saturate(value)
  %4983 = call float @dx.op.unary.f32(i32 7, float %4981)  ; Saturate(value)
  %4984 = fsub fast float %4958, %4982
  %4985 = fsub fast float %4983, %4982
  %4986 = bitcast float %4985 to i32
  %4987 = sub nsw i32 2129859010, %4986
  %4988 = bitcast i32 %4987 to float
  %4989 = fmul fast float %4988, %4984
  %4990 = call float @dx.op.unary.f32(i32 7, float %4989)  ; Saturate(value)
  %4991 = fcmp fast olt float %4990, 0x3F70101020000000
  br i1 %4991, label %5130, label %4992

; <label>:4992                                    ; preds = %4954, %4857
  %4993 = phi float [ %4990, %4954 ], [ %4851, %4857 ]
  %4994 = fmul fast float %4993, %4860
  %4995 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4996 = extractvalue %dx.types.CBufRet.i32 %4995, 1
  %4997 = extractvalue %dx.types.CBufRet.i32 %4995, 0
  %4998 = add i32 %4997, 0
  %4999 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4998, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5000 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4999, %dx.types.Handle %110, float %4949, float %4950, float undef, float undef, i32 0, i32 0, i32 undef, float %4912, float %4913, float undef, float %4916, float %4917, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5001 = extractvalue %dx.types.ResRet.f32 %5000, 0
  %5002 = extractvalue %dx.types.ResRet.f32 %5000, 1
  %5003 = extractvalue %dx.types.ResRet.f32 %5000, 2
  %5004 = extractvalue %dx.types.ResRet.f32 %5000, 3
  %5005 = and i32 %4996, 255
  %5006 = uitofp i32 %5005 to float
  %5007 = lshr i32 %4996, 8
  %5008 = and i32 %5007, 255
  %5009 = uitofp i32 %5008 to float
  %5010 = fmul fast float %5004, %5006
  %5011 = fadd fast float %5010, %5009
  %5012 = fmul fast float %5011, 0x3F70101000000000
  %5013 = fadd fast float %5012, 0xBFB99999A0000000
  %5014 = call float @dx.op.unary.f32(i32 7, float %5013)  ; Saturate(value)
  %5015 = fmul fast float %5014, 0x3FF1C71C80000000
  %5016 = call float @dx.op.binary.f32(i32 36, float %5012, float 0x3FB99999A0000000)  ; FMin(a,b)
  %5017 = fsub fast float 1.000000e+00, %5015
  %5018 = call float @dx.op.unary.f32(i32 7, float %5017)  ; Saturate(value)
  %5019 = fmul fast float %5018, %5001
  %5020 = fmul fast float %5018, %5002
  %5021 = fmul fast float %5018, %5003
  %5022 = call float @dx.op.unary.f32(i32 7, float %5019)  ; Saturate(value)
  %5023 = call float @dx.op.unary.f32(i32 7, float %5020)  ; Saturate(value)
  %5024 = call float @dx.op.unary.f32(i32 7, float %5021)  ; Saturate(value)
  %5025 = fmul fast float %5015, %5001
  %5026 = fmul fast float %5015, %5002
  %5027 = fmul fast float %5015, %5003
  %5028 = fadd fast float %5025, %5016
  %5029 = fadd fast float %5026, %5016
  %5030 = fadd fast float %5027, %5016
  %5031 = call float @dx.op.unary.f32(i32 7, float %5028)  ; Saturate(value)
  %5032 = call float @dx.op.unary.f32(i32 7, float %5029)  ; Saturate(value)
  %5033 = call float @dx.op.unary.f32(i32 7, float %5030)  ; Saturate(value)
  %5034 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %5035 = extractvalue %dx.types.CBufRet.i32 %5034, 3
  %5036 = extractvalue %dx.types.CBufRet.i32 %5034, 2
  %5037 = add i32 %5036, 0
  %5038 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5037, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5039 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5038, %dx.types.Handle %110, float %4949, float %4950, float undef, float undef, i32 0, i32 0, i32 undef, float %4912, float %4913, float undef, float %4916, float %4917, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5040 = extractvalue %dx.types.ResRet.f32 %5039, 0
  %5041 = extractvalue %dx.types.ResRet.f32 %5039, 1
  %5042 = extractvalue %dx.types.ResRet.f32 %5039, 2
  %5043 = extractvalue %dx.types.ResRet.f32 %5039, 3
  %5044 = and i32 %5035, 255
  %5045 = uitofp i32 %5044 to float
  %5046 = lshr i32 %5035, 8
  %5047 = and i32 %5046, 255
  %5048 = uitofp i32 %5047 to float
  %5049 = lshr i32 %5035, 16
  %5050 = and i32 %5049, 255
  %5051 = uitofp i32 %5050 to float
  %5052 = fmul fast float %5051, 0x3F70101000000000
  %5053 = fmul fast float %5040, %5045
  %5054 = fadd fast float %5053, %5048
  %5055 = fmul fast float %5054, 0x3F70101000000000
  %5056 = fadd fast float %5041, -5.000000e-01
  %5057 = fadd fast float %5043, -5.000000e-01
  %5058 = fmul fast float %5056, %5052
  %5059 = fmul fast float %5057, %5052
  %5060 = fadd fast float %5058, 5.000000e-01
  %5061 = fadd fast float %5059, 5.000000e-01
  %5062 = fmul fast float %5060, 2.000000e+00
  %5063 = fadd fast float %5062, -1.000000e+00
  %5064 = fmul fast float %5061, 2.000000e+00
  %5065 = fadd fast float %5064, -1.000000e+00
  %5066 = fadd fast float %5063, %5065
  %5067 = fmul fast float %5066, 5.000000e-01
  %5068 = fsub fast float %5063, %5065
  %5069 = fmul fast float %5068, 5.000000e-01
  %5070 = call float @dx.op.unary.f32(i32 6, float %5067)  ; FAbs(value)
  %5071 = fsub fast float 1.000000e+00, %5070
  %5072 = call float @dx.op.unary.f32(i32 6, float %5069)  ; FAbs(value)
  %5073 = fsub fast float %5071, %5072
  %5074 = call float @dx.op.dot3.f32(i32 55, float %5067, float %5069, float %5073, float %5067, float %5069, float %5073)  ; Dot3(ax,ay,az,bx,by,bz)
  %5075 = call float @dx.op.unary.f32(i32 25, float %5074)  ; Rsqrt(value)
  %5076 = fmul fast float %5067, %5075
  %5077 = fmul fast float %5069, %5075
  %5078 = select i1 %4905, i32 %4895, i32 %4896
  %5079 = select i1 %4903, i32 %4894, i32 %5078
  %5080 = sitofp i32 %5079 to float
  %5081 = fmul fast float %5073, %5080
  %5082 = fmul fast float %5081, %5075
  %5083 = select i1 %4905, float %5082, float %5077
  %5084 = select i1 %4905, float %5077, float %5082
  %5085 = select i1 %4903, float %5082, float %5076
  %5086 = select i1 %4903, float %5077, float %5083
  %5087 = select i1 %4903, float %5076, float %5084
  %5088 = fsub fast float %5022, %4455
  %5089 = fsub fast float %5023, %4456
  %5090 = fsub fast float %5024, %4457
  %5091 = fmul fast float %5088, %4994
  %5092 = fmul fast float %5089, %4994
  %5093 = fmul fast float %5090, %4994
  %5094 = fadd fast float %5091, %4455
  %5095 = fadd fast float %5092, %4456
  %5096 = fadd fast float %5093, %4457
  %5097 = fsub fast float %5031, %4437
  %5098 = fsub fast float %5032, %4438
  %5099 = fsub fast float %5033, %4439
  %5100 = fmul fast float %5097, %4994
  %5101 = fmul fast float %5098, %4994
  %5102 = fmul fast float %5099, %4994
  %5103 = fadd fast float %5100, %4437
  %5104 = fadd fast float %5101, %4438
  %5105 = fadd fast float %5102, %4439
  %5106 = fadd fast float %5085, %4397
  %5107 = fadd fast float %5086, %4398
  %5108 = fadd fast float %5087, %4399
  %5109 = call float @dx.op.dot3.f32(i32 55, float %5106, float %5107, float %5108, float %5106, float %5107, float %5108)  ; Dot3(ax,ay,az,bx,by,bz)
  %5110 = call float @dx.op.unary.f32(i32 25, float %5109)  ; Rsqrt(value)
  %5111 = fmul fast float %5106, %5110
  %5112 = fmul fast float %5107, %5110
  %5113 = fmul fast float %5108, %5110
  %5114 = fsub fast float %5111, %4397
  %5115 = fsub fast float %5112, %4398
  %5116 = fsub fast float %5113, %4399
  %5117 = fmul fast float %5114, %4994
  %5118 = fmul fast float %5115, %4994
  %5119 = fmul fast float %5116, %4994
  %5120 = fadd fast float %5117, %4397
  %5121 = fadd fast float %5118, %4398
  %5122 = fadd fast float %5119, %4399
  %5123 = call float @dx.op.binary.f32(i32 36, float %4412, float %5042)  ; FMin(a,b)
  %5124 = fsub fast float %5123, %4412
  %5125 = fmul fast float %5124, %4994
  %5126 = fadd fast float %5125, %4412
  %5127 = fsub fast float %5055, %4440
  %5128 = fmul fast float %5127, %4994
  %5129 = fadd fast float %5128, %4440
  br label %5130

; <label>:5130                                    ; preds = %4992, %4954, %4856
  %5131 = phi float [ %5094, %4992 ], [ %4455, %4954 ], [ %4455, %4856 ]
  %5132 = phi float [ %5095, %4992 ], [ %4456, %4954 ], [ %4456, %4856 ]
  %5133 = phi float [ %5096, %4992 ], [ %4457, %4954 ], [ %4457, %4856 ]
  %5134 = phi float [ %5103, %4992 ], [ %4437, %4954 ], [ %4437, %4856 ]
  %5135 = phi float [ %5104, %4992 ], [ %4438, %4954 ], [ %4438, %4856 ]
  %5136 = phi float [ %5105, %4992 ], [ %4439, %4954 ], [ %4439, %4856 ]
  %5137 = phi float [ %5120, %4992 ], [ %4397, %4954 ], [ %4397, %4856 ]
  %5138 = phi float [ %5121, %4992 ], [ %4398, %4954 ], [ %4398, %4856 ]
  %5139 = phi float [ %5122, %4992 ], [ %4399, %4954 ], [ %4399, %4856 ]
  %5140 = phi float [ %5129, %4992 ], [ %4440, %4954 ], [ %4440, %4856 ]
  %5141 = phi float [ %5126, %4992 ], [ %4412, %4954 ], [ %4412, %4856 ]
  br i1 %4854, label %5142, label %5415

; <label>:5142                                    ; preds = %5130
  %5143 = call float @dx.op.unary.f32(i32 23, float %5141)  ; Log(value)
  %5144 = fmul fast float %5143, 4.000000e+00
  %5145 = call float @dx.op.unary.f32(i32 21, float %5144)  ; Exp(value)
  %5146 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %5147 = extractvalue %dx.types.CBufRet.f32 %5146, 0
  %5148 = fmul fast float %5147, %62
  %5149 = fmul fast float %5147, %63
  %5150 = fmul fast float %5147, %64
  %5151 = call float @dx.op.unary.f32(i32 6, float %71)  ; FAbs(value)
  %5152 = call float @dx.op.unary.f32(i32 6, float %72)  ; FAbs(value)
  %5153 = call float @dx.op.unary.f32(i32 6, float %73)  ; FAbs(value)
  %5154 = call float @dx.op.unary.f32(i32 23, float %5151)  ; Log(value)
  %5155 = call float @dx.op.unary.f32(i32 23, float %5152)  ; Log(value)
  %5156 = call float @dx.op.unary.f32(i32 23, float %5153)  ; Log(value)
  %5157 = fmul fast float %5154, 4.000000e+00
  %5158 = fmul fast float %5155, 4.000000e+00
  %5159 = fmul fast float %5156, 4.000000e+00
  %5160 = call float @dx.op.unary.f32(i32 21, float %5157)  ; Exp(value)
  %5161 = call float @dx.op.unary.f32(i32 21, float %5158)  ; Exp(value)
  %5162 = call float @dx.op.unary.f32(i32 21, float %5159)  ; Exp(value)
  %5163 = fadd fast float %5161, %5160
  %5164 = fadd fast float %5163, %5162
  %5165 = fdiv fast float 1.000000e+00, %5164
  %5166 = fmul fast float %5165, %5160
  %5167 = fcmp fast ogt float %71, 0.000000e+00
  %5168 = fcmp fast ogt float %72, 0.000000e+00
  %5169 = fcmp fast ogt float %73, 0.000000e+00
  %5170 = fcmp fast olt float %71, 0.000000e+00
  %5171 = fcmp fast olt float %72, 0.000000e+00
  %5172 = fcmp fast olt float %73, 0.000000e+00
  %5173 = zext i1 %5167 to i32
  %5174 = zext i1 %5168 to i32
  %5175 = zext i1 %5169 to i32
  %5176 = zext i1 %5170 to i32
  %5177 = zext i1 %5171 to i32
  %5178 = zext i1 %5172 to i32
  %5179 = sub nsw i32 %5173, %5176
  %5180 = sub nsw i32 %5174, %5177
  %5181 = sub nsw i32 %5175, %5178
  %5182 = call float @dx.op.unary.f32(i32 83, float %5148)  ; DerivCoarseX(value)
  %5183 = call float @dx.op.unary.f32(i32 83, float %5149)  ; DerivCoarseX(value)
  %5184 = call float @dx.op.unary.f32(i32 83, float %5150)  ; DerivCoarseX(value)
  %5185 = call float @dx.op.unary.f32(i32 84, float %5148)  ; DerivCoarseY(value)
  %5186 = call float @dx.op.unary.f32(i32 84, float %5149)  ; DerivCoarseY(value)
  %5187 = call float @dx.op.unary.f32(i32 84, float %5150)  ; DerivCoarseY(value)
  %5188 = fcmp fast ole float %271, %5166
  %5189 = fmul fast float %5165, %5163
  %5190 = fcmp fast ole float %271, %5189
  %5191 = select i1 %5190, float %5150, float %5148
  %5192 = select i1 %5190, float %5148, float %5149
  %5193 = select i1 %5188, float %5149, float %5191
  %5194 = select i1 %5188, float %5150, float %5192
  %5195 = select i1 %5190, float %5184, float %5182
  %5196 = select i1 %5190, float %5182, float %5183
  %5197 = select i1 %5188, float %5183, float %5195
  %5198 = select i1 %5188, float %5184, float %5196
  %5199 = select i1 %5190, float %5187, float %5185
  %5200 = select i1 %5190, float %5185, float %5186
  %5201 = select i1 %5188, float %5186, float %5199
  %5202 = select i1 %5188, float %5187, float %5200
  %5203 = call float @dx.op.unary.f32(i32 27, float %5193)  ; Round_ni(value)
  %5204 = call float @dx.op.unary.f32(i32 27, float %5194)  ; Round_ni(value)
  %5205 = fptosi float %5203 to i32
  %5206 = fptosi float %5204 to i32
  %5207 = xor i32 %5206, %5205
  %5208 = sitofp i32 %5207 to float
  %5209 = fptosi float %5208 to i32
  %5210 = sitofp i32 %5209 to float
  %5211 = fmul fast float %5210, 0x3FE3C6EF40000000
  %5212 = frem fast float %5203, 2.560000e+02
  %5213 = frem fast float %5204, 2.560000e+02
  %5214 = fptoui float %5212 to i32
  %5215 = fptoui float %5213 to i32
  %5216 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %38, i32 0, i32 %5214, i32 %5215, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5217 = extractvalue %dx.types.ResRet.f32 %5216, 0
  %5218 = extractvalue %dx.types.ResRet.f32 %5216, 1
  %5219 = extractvalue %dx.types.ResRet.f32 %5216, 2
  %5220 = fadd fast float %5217, %5211
  %5221 = fadd fast float %5218, %5211
  %5222 = fadd fast float %5219, %5211
  %5223 = call float @dx.op.unary.f32(i32 22, float %5220)  ; Frc(value)
  %5224 = call float @dx.op.unary.f32(i32 22, float %5221)  ; Frc(value)
  %5225 = call float @dx.op.unary.f32(i32 22, float %5222)  ; Frc(value)
  %5226 = fmul fast float %5225, 0x401921FB60000000
  %5227 = call float @dx.op.unary.f32(i32 13, float %5226)  ; Sin(value)
  %5228 = call float @dx.op.unary.f32(i32 12, float %5226)  ; Cos(value)
  %5229 = fsub fast float -0.000000e+00, %5228
  %5230 = fmul fast float %5228, %5193
  %5231 = call float @dx.op.tertiary.f32(i32 46, float %5227, float %5194, float %5230)  ; FMad(a,b,c)
  %5232 = fmul fast float %5227, %5193
  %5233 = call float @dx.op.tertiary.f32(i32 46, float %5229, float %5194, float %5232)  ; FMad(a,b,c)
  %5234 = fadd fast float %5231, %5223
  %5235 = fadd fast float %5233, %5224
  %5236 = extractvalue %dx.types.CBufRet.f32 %5146, 3
  %5237 = bitcast float %5236 to i32
  %5238 = icmp eq i32 %5237, 0
  br i1 %5238, label %5277, label %5239

; <label>:5239                                    ; preds = %5142
  %5240 = add i32 %5237, 0
  %5241 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5240, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5242 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5241, %dx.types.Handle %111, float %5234, float %5235, float undef, float undef, i32 0, i32 0, i32 undef, float %5197, float %5198, float undef, float %5201, float %5202, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5243 = extractvalue %dx.types.ResRet.f32 %5242, 0
  %5244 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %5245 = extractvalue %dx.types.CBufRet.f32 %5244, 1
  %5246 = extractvalue %dx.types.CBufRet.f32 %5244, 2
  %5247 = fsub fast float 1.000000e+00, %4852
  %5248 = call float @dx.op.binary.f32(i32 35, float %5247, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %5249 = bitcast float %4852 to i32
  %5250 = sitofp i32 %5249 to float
  %5251 = fadd fast float %5250, 0xC1CFBF8940000000
  %5252 = fmul fast float %5246, %5251
  %5253 = fadd fast float %5252, 0x41CFBF8940000000
  %5254 = fptosi float %5253 to i32
  %5255 = bitcast i32 %5254 to float
  %5256 = bitcast float %5248 to i32
  %5257 = sitofp i32 %5256 to float
  %5258 = fadd fast float %5257, 0xC1CFBF8940000000
  %5259 = fmul fast float %5258, %5246
  %5260 = fadd fast float %5259, 0x41CFBF8940000000
  %5261 = fptosi float %5260 to i32
  %5262 = bitcast i32 %5261 to float
  %5263 = fmul fast float %5255, %5245
  %5264 = fmul fast float %5262, %5245
  %5265 = fsub fast float %5248, %5263
  %5266 = fadd fast float %5264, %5248
  %5267 = call float @dx.op.unary.f32(i32 7, float %5265)  ; Saturate(value)
  %5268 = call float @dx.op.unary.f32(i32 7, float %5266)  ; Saturate(value)
  %5269 = fsub fast float %5243, %5267
  %5270 = fsub fast float %5268, %5267
  %5271 = bitcast float %5270 to i32
  %5272 = sub nsw i32 2129859010, %5271
  %5273 = bitcast i32 %5272 to float
  %5274 = fmul fast float %5273, %5269
  %5275 = call float @dx.op.unary.f32(i32 7, float %5274)  ; Saturate(value)
  %5276 = fcmp fast olt float %5275, 0x3F70101020000000
  br i1 %5276, label %5415, label %5277

; <label>:5277                                    ; preds = %5239, %5142
  %5278 = phi float [ %5275, %5239 ], [ %4852, %5142 ]
  %5279 = fmul fast float %5278, %5145
  %5280 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %5281 = extractvalue %dx.types.CBufRet.i32 %5280, 1
  %5282 = extractvalue %dx.types.CBufRet.i32 %5280, 0
  %5283 = add i32 %5282, 0
  %5284 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5283, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5285 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5284, %dx.types.Handle %110, float %5234, float %5235, float undef, float undef, i32 0, i32 0, i32 undef, float %5197, float %5198, float undef, float %5201, float %5202, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5286 = extractvalue %dx.types.ResRet.f32 %5285, 0
  %5287 = extractvalue %dx.types.ResRet.f32 %5285, 1
  %5288 = extractvalue %dx.types.ResRet.f32 %5285, 2
  %5289 = extractvalue %dx.types.ResRet.f32 %5285, 3
  %5290 = and i32 %5281, 255
  %5291 = uitofp i32 %5290 to float
  %5292 = lshr i32 %5281, 8
  %5293 = and i32 %5292, 255
  %5294 = uitofp i32 %5293 to float
  %5295 = fmul fast float %5289, %5291
  %5296 = fadd fast float %5295, %5294
  %5297 = fmul fast float %5296, 0x3F70101000000000
  %5298 = fadd fast float %5297, 0xBFB99999A0000000
  %5299 = call float @dx.op.unary.f32(i32 7, float %5298)  ; Saturate(value)
  %5300 = fmul fast float %5299, 0x3FF1C71C80000000
  %5301 = call float @dx.op.binary.f32(i32 36, float %5297, float 0x3FB99999A0000000)  ; FMin(a,b)
  %5302 = fsub fast float 1.000000e+00, %5300
  %5303 = call float @dx.op.unary.f32(i32 7, float %5302)  ; Saturate(value)
  %5304 = fmul fast float %5303, %5286
  %5305 = fmul fast float %5303, %5287
  %5306 = fmul fast float %5303, %5288
  %5307 = call float @dx.op.unary.f32(i32 7, float %5304)  ; Saturate(value)
  %5308 = call float @dx.op.unary.f32(i32 7, float %5305)  ; Saturate(value)
  %5309 = call float @dx.op.unary.f32(i32 7, float %5306)  ; Saturate(value)
  %5310 = fmul fast float %5300, %5286
  %5311 = fmul fast float %5300, %5287
  %5312 = fmul fast float %5300, %5288
  %5313 = fadd fast float %5310, %5301
  %5314 = fadd fast float %5311, %5301
  %5315 = fadd fast float %5312, %5301
  %5316 = call float @dx.op.unary.f32(i32 7, float %5313)  ; Saturate(value)
  %5317 = call float @dx.op.unary.f32(i32 7, float %5314)  ; Saturate(value)
  %5318 = call float @dx.op.unary.f32(i32 7, float %5315)  ; Saturate(value)
  %5319 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %5320 = extractvalue %dx.types.CBufRet.i32 %5319, 3
  %5321 = extractvalue %dx.types.CBufRet.i32 %5319, 2
  %5322 = add i32 %5321, 0
  %5323 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5322, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5324 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5323, %dx.types.Handle %110, float %5234, float %5235, float undef, float undef, i32 0, i32 0, i32 undef, float %5197, float %5198, float undef, float %5201, float %5202, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5325 = extractvalue %dx.types.ResRet.f32 %5324, 0
  %5326 = extractvalue %dx.types.ResRet.f32 %5324, 1
  %5327 = extractvalue %dx.types.ResRet.f32 %5324, 2
  %5328 = extractvalue %dx.types.ResRet.f32 %5324, 3
  %5329 = and i32 %5320, 255
  %5330 = uitofp i32 %5329 to float
  %5331 = lshr i32 %5320, 8
  %5332 = and i32 %5331, 255
  %5333 = uitofp i32 %5332 to float
  %5334 = lshr i32 %5320, 16
  %5335 = and i32 %5334, 255
  %5336 = uitofp i32 %5335 to float
  %5337 = fmul fast float %5336, 0x3F70101000000000
  %5338 = fmul fast float %5325, %5330
  %5339 = fadd fast float %5338, %5333
  %5340 = fmul fast float %5339, 0x3F70101000000000
  %5341 = fadd fast float %5326, -5.000000e-01
  %5342 = fadd fast float %5328, -5.000000e-01
  %5343 = fmul fast float %5341, %5337
  %5344 = fmul fast float %5342, %5337
  %5345 = fadd fast float %5343, 5.000000e-01
  %5346 = fadd fast float %5344, 5.000000e-01
  %5347 = fmul fast float %5345, 2.000000e+00
  %5348 = fadd fast float %5347, -1.000000e+00
  %5349 = fmul fast float %5346, 2.000000e+00
  %5350 = fadd fast float %5349, -1.000000e+00
  %5351 = fadd fast float %5348, %5350
  %5352 = fmul fast float %5351, 5.000000e-01
  %5353 = fsub fast float %5348, %5350
  %5354 = fmul fast float %5353, 5.000000e-01
  %5355 = call float @dx.op.unary.f32(i32 6, float %5352)  ; FAbs(value)
  %5356 = fsub fast float 1.000000e+00, %5355
  %5357 = call float @dx.op.unary.f32(i32 6, float %5354)  ; FAbs(value)
  %5358 = fsub fast float %5356, %5357
  %5359 = call float @dx.op.dot3.f32(i32 55, float %5352, float %5354, float %5358, float %5352, float %5354, float %5358)  ; Dot3(ax,ay,az,bx,by,bz)
  %5360 = call float @dx.op.unary.f32(i32 25, float %5359)  ; Rsqrt(value)
  %5361 = fmul fast float %5352, %5360
  %5362 = fmul fast float %5354, %5360
  %5363 = select i1 %5190, i32 %5180, i32 %5181
  %5364 = select i1 %5188, i32 %5179, i32 %5363
  %5365 = sitofp i32 %5364 to float
  %5366 = fmul fast float %5358, %5365
  %5367 = fmul fast float %5366, %5360
  %5368 = select i1 %5190, float %5367, float %5362
  %5369 = select i1 %5190, float %5362, float %5367
  %5370 = select i1 %5188, float %5367, float %5361
  %5371 = select i1 %5188, float %5362, float %5368
  %5372 = select i1 %5188, float %5361, float %5369
  %5373 = fsub fast float %5307, %5131
  %5374 = fsub fast float %5308, %5132
  %5375 = fsub fast float %5309, %5133
  %5376 = fmul fast float %5373, %5279
  %5377 = fmul fast float %5374, %5279
  %5378 = fmul fast float %5375, %5279
  %5379 = fadd fast float %5376, %5131
  %5380 = fadd fast float %5377, %5132
  %5381 = fadd fast float %5378, %5133
  %5382 = fsub fast float %5316, %5134
  %5383 = fsub fast float %5317, %5135
  %5384 = fsub fast float %5318, %5136
  %5385 = fmul fast float %5382, %5279
  %5386 = fmul fast float %5383, %5279
  %5387 = fmul fast float %5384, %5279
  %5388 = fadd fast float %5385, %5134
  %5389 = fadd fast float %5386, %5135
  %5390 = fadd fast float %5387, %5136
  %5391 = fadd fast float %5370, %5137
  %5392 = fadd fast float %5371, %5138
  %5393 = fadd fast float %5372, %5139
  %5394 = call float @dx.op.dot3.f32(i32 55, float %5391, float %5392, float %5393, float %5391, float %5392, float %5393)  ; Dot3(ax,ay,az,bx,by,bz)
  %5395 = call float @dx.op.unary.f32(i32 25, float %5394)  ; Rsqrt(value)
  %5396 = fmul fast float %5391, %5395
  %5397 = fmul fast float %5392, %5395
  %5398 = fmul fast float %5393, %5395
  %5399 = fsub fast float %5396, %5137
  %5400 = fsub fast float %5397, %5138
  %5401 = fsub fast float %5398, %5139
  %5402 = fmul fast float %5399, %5279
  %5403 = fmul fast float %5400, %5279
  %5404 = fmul fast float %5401, %5279
  %5405 = fadd fast float %5402, %5137
  %5406 = fadd fast float %5403, %5138
  %5407 = fadd fast float %5404, %5139
  %5408 = call float @dx.op.binary.f32(i32 36, float %5141, float %5327)  ; FMin(a,b)
  %5409 = fsub fast float %5408, %5141
  %5410 = fmul fast float %5409, %5279
  %5411 = fadd fast float %5410, %5141
  %5412 = fsub fast float %5340, %5140
  %5413 = fmul fast float %5412, %5279
  %5414 = fadd fast float %5413, %5140
  br label %5415

; <label>:5415                                    ; preds = %5277, %5239, %5130, %4846
  %5416 = phi float [ %5379, %5277 ], [ %5131, %5239 ], [ %5131, %5130 ], [ %4455, %4846 ]
  %5417 = phi float [ %5380, %5277 ], [ %5132, %5239 ], [ %5132, %5130 ], [ %4456, %4846 ]
  %5418 = phi float [ %5381, %5277 ], [ %5133, %5239 ], [ %5133, %5130 ], [ %4457, %4846 ]
  %5419 = phi float [ %5388, %5277 ], [ %5134, %5239 ], [ %5134, %5130 ], [ %4437, %4846 ]
  %5420 = phi float [ %5389, %5277 ], [ %5135, %5239 ], [ %5135, %5130 ], [ %4438, %4846 ]
  %5421 = phi float [ %5390, %5277 ], [ %5136, %5239 ], [ %5136, %5130 ], [ %4439, %4846 ]
  %5422 = phi float [ %5405, %5277 ], [ %5137, %5239 ], [ %5137, %5130 ], [ %4397, %4846 ]
  %5423 = phi float [ %5406, %5277 ], [ %5138, %5239 ], [ %5138, %5130 ], [ %4398, %4846 ]
  %5424 = phi float [ %5407, %5277 ], [ %5139, %5239 ], [ %5139, %5130 ], [ %4399, %4846 ]
  %5425 = phi float [ %5414, %5277 ], [ %5140, %5239 ], [ %5140, %5130 ], [ %4440, %4846 ]
  %5426 = phi float [ %5411, %5277 ], [ %5141, %5239 ], [ %5141, %5130 ], [ %4412, %4846 ]
  %5427 = fcmp fast une float %4850, 0.000000e+00
  %5428 = call float @dx.op.dot3.f32(i32 55, float %201, float %202, float %203, float %201, float %202, float %203)  ; Dot3(ax,ay,az,bx,by,bz)
  %5429 = call float @dx.op.unary.f32(i32 25, float %5428)  ; Rsqrt(value)
  br i1 %5427, label %5437, label %5430

; <label>:5430                                    ; preds = %5415
  %5431 = fmul fast float %5429, %201
  %5432 = fmul fast float %5429, %202
  %5433 = fmul fast float %5429, %203
  %5434 = fsub fast float -0.000000e+00, %5431
  %5435 = fsub fast float -0.000000e+00, %5432
  %5436 = fsub fast float -0.000000e+00, %5433
  br label %5604

; <label>:5437                                    ; preds = %5415
  %5438 = fmul fast float %201, %5429
  %5439 = fsub fast float -0.000000e+00, %5438
  %5440 = fmul fast float %202, %5429
  %5441 = fsub fast float -0.000000e+00, %5440
  %5442 = fmul fast float %203, %5429
  %5443 = fsub fast float -0.000000e+00, %5442
  %5444 = call float @dx.op.dot3.f32(i32 55, float %5439, float %5441, float %5443, float %121, float %122, float %123)  ; Dot3(ax,ay,az,bx,by,bz)
  %5445 = fmul fast float %4850, 2.500000e+00
  %5446 = call float @dx.op.unary.f32(i32 7, float %5445)  ; Saturate(value)
  %5447 = fmul fast float %4850, 0x4013FFFFE0000000
  %5448 = fadd fast float %5447, 0xBFFFFFFFE0000000
  %5449 = call float @dx.op.unary.f32(i32 7, float %5448)  ; Saturate(value)
  %5450 = fmul fast float %4850, 0x4004000020000000
  %5451 = fadd fast float %5450, 0xBFF8000040000000
  %5452 = call float @dx.op.unary.f32(i32 7, float %5451)  ; Saturate(value)
  %5453 = fmul fast float %4419, 1.000000e+01
  %5454 = call float @dx.op.unary.f32(i32 7, float %5453)  ; Saturate(value)
  %5455 = fmul fast float %5454, 2.000000e+00
  %5456 = fsub fast float 3.000000e+00, %5455
  %5457 = fmul fast float %5454, %5454
  %5458 = fmul fast float %5457, %5456
  %5459 = fsub fast float 1.000000e+00, %5458
  %5460 = fsub fast float 0x3FE3333340000000, %5425
  %5461 = fmul fast float %5460, 0x400AAAAAA0000000
  %5462 = call float @dx.op.unary.f32(i32 7, float %5461)  ; Saturate(value)
  %5463 = fmul fast float %5459, %5462
  %5464 = fmul fast float %5416, 0x3FEA2B8620000000
  %5465 = fmul fast float %5417, 0x3FEA2B8620000000
  %5466 = fmul fast float %5418, 0x3FEA2B8620000000
  %5467 = fadd fast float %5464, 0x3FC81DFBA0000000
  %5468 = fmul fast float %5467, %5416
  %5469 = fadd fast float %5468, 0x3F910E6020000000
  %5470 = fadd fast float %5465, 0x3FC81DFBA0000000
  %5471 = fmul fast float %5470, %5417
  %5472 = fadd fast float %5471, 0x3F910E6020000000
  %5473 = fadd fast float %5466, 0x3FC81DFBA0000000
  %5474 = fmul fast float %5473, %5418
  %5475 = fadd fast float %5474, 0x3F910E6020000000
  %5476 = call float @dx.op.unary.f32(i32 7, float %5469)  ; Saturate(value)
  %5477 = call float @dx.op.unary.f32(i32 7, float %5472)  ; Saturate(value)
  %5478 = call float @dx.op.unary.f32(i32 7, float %5475)  ; Saturate(value)
  %5479 = fsub fast float %5476, %5416
  %5480 = fsub fast float %5477, %5417
  %5481 = fsub fast float %5478, %5418
  %5482 = fmul fast float %5479, %5446
  %5483 = fmul fast float %5482, %5463
  %5484 = fmul fast float %5480, %5446
  %5485 = fmul fast float %5484, %5463
  %5486 = fmul fast float %5481, %5446
  %5487 = fmul fast float %5486, %5463
  %5488 = fadd fast float %5483, %5416
  %5489 = fadd fast float %5485, %5417
  %5490 = fadd fast float %5487, %5418
  %5491 = fmul fast float %5426, %5426
  %5492 = fmul fast float %5491, %5491
  %5493 = fadd fast float %5449, 1.000000e+00
  %5494 = fsub fast float %5493, %5463
  %5495 = call float @dx.op.unary.f32(i32 7, float %5494)  ; Saturate(value)
  %5496 = call float @dx.op.dot3.f32(i32 55, float %121, float %122, float %123, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5497 = call float @dx.op.unary.f32(i32 7, float %5496)  ; Saturate(value)
  %5498 = fsub fast float 1.000000e+00, %5492
  %5499 = call float @dx.op.binary.f32(i32 36, float %5495, float %5498)  ; FMin(a,b)
  %5500 = call float @dx.op.unary.f32(i32 7, float %5452)  ; Saturate(value)
  %5501 = call float @dx.op.binary.f32(i32 35, float %5499, float %5500)  ; FMax(a,b)
  %5502 = fadd fast float %5497, 0xBFE4CCCCC0000000
  %5503 = fmul fast float %5502, 0x4006DB6DA0000000
  %5504 = call float @dx.op.unary.f32(i32 7, float %5503)  ; Saturate(value)
  %5505 = fmul fast float %5504, 2.000000e+00
  %5506 = fsub fast float 3.000000e+00, %5505
  %5507 = bitcast float %5419 to i32
  %5508 = ashr i32 %5507, 1
  %5509 = add nsw i32 %5508, 532487669
  %5510 = bitcast i32 %5509 to float
  %5511 = fsub fast float 1.000000e+00, %5510
  %5512 = bitcast float %5511 to i32
  %5513 = sub nsw i32 2129859010, %5512
  %5514 = bitcast i32 %5513 to float
  %5515 = fmul fast float %5514, 2.000000e+00
  %5516 = bitcast float %5420 to i32
  %5517 = ashr i32 %5516, 1
  %5518 = add nsw i32 %5517, 532487669
  %5519 = bitcast i32 %5518 to float
  %5520 = fsub fast float 1.000000e+00, %5519
  %5521 = bitcast float %5520 to i32
  %5522 = sub nsw i32 2129859010, %5521
  %5523 = bitcast i32 %5522 to float
  %5524 = fmul fast float %5523, 2.000000e+00
  %5525 = bitcast float %5421 to i32
  %5526 = ashr i32 %5525, 1
  %5527 = add nsw i32 %5526, 532487669
  %5528 = bitcast i32 %5527 to float
  %5529 = fsub fast float 1.000000e+00, %5528
  %5530 = bitcast float %5529 to i32
  %5531 = sub nsw i32 2129859010, %5530
  %5532 = bitcast i32 %5531 to float
  %5533 = fmul fast float %5532, 2.000000e+00
  %5534 = fsub fast float 0x4002A9FBE0000000, %5515
  %5535 = fadd fast float %5515, 0x3FD54FDF00000000
  %5536 = bitcast float %5535 to i32
  %5537 = sub nsw i32 2129859010, %5536
  %5538 = bitcast i32 %5537 to float
  %5539 = fmul fast float %5538, %5534
  %5540 = fmul fast float %5539, %5539
  %5541 = fsub fast float 0x4002A9FBE0000000, %5524
  %5542 = fadd fast float %5524, 0x3FD54FDF00000000
  %5543 = bitcast float %5542 to i32
  %5544 = sub nsw i32 2129859010, %5543
  %5545 = bitcast i32 %5544 to float
  %5546 = fmul fast float %5545, %5541
  %5547 = fmul fast float %5546, %5546
  %5548 = fsub fast float 0x4002A9FBE0000000, %5533
  %5549 = fadd fast float %5533, 0x3FD54FDF00000000
  %5550 = bitcast float %5549 to i32
  %5551 = sub nsw i32 2129859010, %5550
  %5552 = bitcast i32 %5551 to float
  %5553 = fmul fast float %5552, %5548
  %5554 = fmul fast float %5553, %5553
  %5555 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5540)  ; FMax(a,b)
  %5556 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5547)  ; FMax(a,b)
  %5557 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5554)  ; FMax(a,b)
  %5558 = fsub fast float 1.000000e+00, %5444
  %5559 = fadd fast float %5558, %5459
  %5560 = call float @dx.op.unary.f32(i32 7, float %5559)  ; Saturate(value)
  %5561 = fsub fast float 1.000000e+00, %4831
  %5562 = fmul fast float %5501, %5561
  %5563 = fmul fast float %5504, %5504
  %5564 = fmul fast float %5563, %5562
  %5565 = fmul fast float %5564, %5506
  %5566 = fmul fast float %5561, 0xBFE99999A0000000
  %5567 = fmul fast float %5566, %5446
  %5568 = fmul fast float %5567, %5463
  %5569 = fadd fast float %5568, 1.000000e+00
  %5570 = fadd fast float %5425, -1.000000e+00
  %5571 = fmul fast float %5569, %5570
  %5572 = fadd fast float %5571, 1.000000e+00
  %5573 = fsub fast float %5555, %5419
  %5574 = fsub fast float %5556, %5420
  %5575 = fsub fast float %5557, %5421
  %5576 = fmul fast float %5565, %5573
  %5577 = fmul fast float %5565, %5574
  %5578 = fmul fast float %5565, %5575
  %5579 = fadd fast float %5576, %5419
  %5580 = fadd fast float %5577, %5420
  %5581 = fadd fast float %5578, %5421
  %5582 = fsub fast float %121, %5422
  %5583 = fsub fast float %122, %5423
  %5584 = fsub fast float %123, %5424
  %5585 = fmul fast float %5565, %5582
  %5586 = fmul fast float %5565, %5583
  %5587 = fmul fast float %5565, %5584
  %5588 = fadd fast float %5585, %5422
  %5589 = fadd fast float %5586, %5423
  %5590 = fadd fast float %5587, %5424
  %5591 = fmul fast float %5565, %5560
  %5592 = call float @dx.op.unary.f32(i32 7, float %5572)  ; Saturate(value)
  %5593 = fsub fast float 1.000000e+00, %5592
  %5594 = fmul fast float %5591, %5593
  %5595 = fadd fast float %5594, %5592
  %5596 = fsub fast float 1.000000e+00, %5426
  %5597 = fmul fast float %5565, %5596
  %5598 = fadd fast float %5597, %5426
  %5599 = call float @dx.op.dot3.f32(i32 55, float %5588, float %5589, float %5590, float %5588, float %5589, float %5590)  ; Dot3(ax,ay,az,bx,by,bz)
  %5600 = call float @dx.op.unary.f32(i32 25, float %5599)  ; Rsqrt(value)
  %5601 = fmul fast float %5588, %5600
  %5602 = fmul fast float %5589, %5600
  %5603 = fmul fast float %5590, %5600
  br label %5604

; <label>:5604                                    ; preds = %5437, %5430
  %5605 = phi float [ %5436, %5430 ], [ %5443, %5437 ]
  %5606 = phi float [ %5435, %5430 ], [ %5441, %5437 ]
  %5607 = phi float [ %5434, %5430 ], [ %5439, %5437 ]
  %5608 = phi float [ %5433, %5430 ], [ %5442, %5437 ]
  %5609 = phi float [ %5432, %5430 ], [ %5440, %5437 ]
  %5610 = phi float [ %5431, %5430 ], [ %5438, %5437 ]
  %5611 = phi float [ %5416, %5430 ], [ %5488, %5437 ]
  %5612 = phi float [ %5417, %5430 ], [ %5489, %5437 ]
  %5613 = phi float [ %5418, %5430 ], [ %5490, %5437 ]
  %5614 = phi float [ %5419, %5430 ], [ %5579, %5437 ]
  %5615 = phi float [ %5420, %5430 ], [ %5580, %5437 ]
  %5616 = phi float [ %5421, %5430 ], [ %5581, %5437 ]
  %5617 = phi float [ %5422, %5430 ], [ %5601, %5437 ]
  %5618 = phi float [ %5423, %5430 ], [ %5602, %5437 ]
  %5619 = phi float [ %5424, %5430 ], [ %5603, %5437 ]
  %5620 = phi float [ %5425, %5430 ], [ %5595, %5437 ]
  %5621 = phi float [ %5426, %5430 ], [ %5598, %5437 ]
  %5622 = fsub fast float -0.000000e+00, %203
  %5623 = select i1 %260, float 0.000000e+00, float %5616
  %5624 = call float @dx.op.dot3.f32(i32 55, float %5617, float %5618, float %5619, float %5607, float %5606, float %5605)  ; Dot3(ax,ay,az,bx,by,bz)
  %5625 = call float @dx.op.unary.f32(i32 7, float %5624)  ; Saturate(value)
  %5626 = call float @dx.op.dot3.f32(i32 55, float %5610, float %5609, float %5608, float %5617, float %5618, float %5619)  ; Dot3(ax,ay,az,bx,by,bz)
  %5627 = fmul fast float %5626, 2.000000e+00
  %5628 = fmul fast float %5627, %5617
  %5629 = fmul fast float %5627, %5618
  %5630 = fmul fast float %5627, %5619
  %5631 = fsub fast float %5610, %5628
  %5632 = fsub fast float %5609, %5629
  %5633 = fsub fast float %5608, %5630
  %5634 = call float @dx.op.binary.f32(i32 36, float %5621, float 1.000000e+00)  ; FMin(a,b)
  %5635 = fsub fast float 1.000000e+00, %5634
  %5636 = bitcast float %5635 to i32
  %5637 = ashr i32 %5636, 1
  %5638 = add nsw i32 %5637, 532487669
  %5639 = bitcast i32 %5638 to float
  %5640 = fsub fast float 1.000000e+00, %5620
  %5641 = call float @dx.op.binary.f32(i32 35, float %5640, float 0x3F847AE140000000)  ; FMax(a,b)
  %5642 = fmul fast float %5641, %5641
  %5643 = fmul fast float %5642, %5642
  %5644 = call float @dx.op.unary.f32(i32 7, float %5625)  ; Saturate(value)
  %5645 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %54, float %5639, float %5643, float %5644, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5646 = extractvalue %dx.types.ResRet.f32 %5645, 0
  %5647 = fsub fast float 1.000000e+00, %5621
  %5648 = bitcast float %5647 to i32
  %5649 = sub nsw i32 2129859010, %5648
  %5650 = fsub fast float 1.000000e+00, %81
  %5651 = call float @dx.op.dot3.f32(i32 55, float %141, float %142, float %143, float %121, float %122, float %123)  ; Dot3(ax,ay,az,bx,by,bz)
  %5652 = call float @dx.op.binary.f32(i32 35, float %5651, float 0x3FA99999A0000000)  ; FMax(a,b)
  %5653 = fdiv fast float %5650, %5652
  %5654 = call float @dx.op.dot3.f32(i32 55, float %5617, float %5618, float %5619, float %121, float %122, float %123)  ; Dot3(ax,ay,az,bx,by,bz)
  %5655 = call float @dx.op.unary.f32(i32 7, float %5654)  ; Saturate(value)
  %5656 = fmul fast float %5655, 5.000000e-01
  %5657 = fadd fast float %5656, 5.000000e-01
  %5658 = fmul fast float %5657, %81
  %5659 = call float @dx.op.dot3.f32(i32 55, float %5617, float %5618, float %5619, float %141, float %142, float %143)  ; Dot3(ax,ay,az,bx,by,bz)
  %5660 = call float @dx.op.unary.f32(i32 7, float %5659)  ; Saturate(value)
  %5661 = fmul fast float %5660, %5653
  %5662 = fadd fast float %5658, %5661
  %5663 = fsub fast float 5.000000e-01, %5656
  %5664 = fmul fast float %5663, %5611
  %5665 = fmul fast float %5663, %5612
  %5666 = fmul fast float %5663, %5613
  %5667 = fadd fast float %5662, %5664
  %5668 = fadd fast float %5662, %5665
  %5669 = fadd fast float %5662, %5666
  %5670 = call float @dx.op.dot3.f32(i32 55, float %5631, float %5632, float %5633, float %121, float %122, float %123)  ; Dot3(ax,ay,az,bx,by,bz)
  %5671 = call float @dx.op.unary.f32(i32 7, float %5670)  ; Saturate(value)
  %5672 = fmul fast float %5671, 5.000000e-01
  %5673 = fadd fast float %5672, 5.000000e-01
  %5674 = fmul fast float %5673, %81
  %5675 = call float @dx.op.dot3.f32(i32 55, float %5631, float %5632, float %5633, float %141, float %142, float %143)  ; Dot3(ax,ay,az,bx,by,bz)
  %5676 = call float @dx.op.unary.f32(i32 7, float %5675)  ; Saturate(value)
  %5677 = fmul fast float %5676, %5653
  %5678 = fadd fast float %5674, %5677
  %5679 = fsub fast float 5.000000e-01, %5672
  %5680 = fmul fast float %5679, %5611
  %5681 = fmul fast float %5679, %5612
  %5682 = fmul fast float %5679, %5613
  %5683 = fadd fast float %5678, %5680
  %5684 = fadd fast float %5678, %5681
  %5685 = fadd fast float %5678, %5682
  %5686 = call float @dx.op.dot3.f32(i32 55, float %82, float %83, float %84, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5687 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5688 = extractvalue %dx.types.CBufRet.f32 %5687, 0
  %5689 = call float @dx.op.binary.f32(i32 36, float %5611, float %5688)  ; FMin(a,b)
  %5690 = fmul fast float %5689, %5635
  %5691 = fsub fast float 1.000000e+00, %5690
  %5692 = bitcast float %5691 to i32
  %5693 = sub nsw i32 2129859010, %5692
  %5694 = bitcast i32 %5693 to float
  %5695 = call float @dx.op.binary.f32(i32 36, float %5612, float %5688)  ; FMin(a,b)
  %5696 = fmul fast float %5695, %5635
  %5697 = fsub fast float 1.000000e+00, %5696
  %5698 = bitcast float %5697 to i32
  %5699 = sub nsw i32 2129859010, %5698
  %5700 = bitcast i32 %5699 to float
  %5701 = call float @dx.op.binary.f32(i32 36, float %5613, float %5688)  ; FMin(a,b)
  %5702 = fmul fast float %5701, %5635
  %5703 = fsub fast float 1.000000e+00, %5702
  %5704 = bitcast float %5703 to i32
  %5705 = sub nsw i32 2129859010, %5704
  %5706 = bitcast i32 %5705 to float
  %5707 = fmul fast float %5634, %82
  %5708 = fmul fast float %5707, %5667
  %5709 = fmul fast float %5708, %5694
  %5710 = fmul fast float %5634, %83
  %5711 = fmul fast float %5710, %5668
  %5712 = fmul fast float %5711, %5700
  %5713 = fmul fast float %5634, %84
  %5714 = fmul fast float %5713, %5669
  %5715 = fmul fast float %5714, %5706
  %5716 = call float @dx.op.binary.f32(i32 36, float %5614, float %5688)  ; FMin(a,b)
  %5717 = fmul fast float %5716, %5635
  %5718 = fsub fast float 1.000000e+00, %5717
  %5719 = bitcast float %5718 to i32
  %5720 = sub nsw i32 2129859010, %5719
  %5721 = bitcast i32 %5720 to float
  %5722 = call float @dx.op.binary.f32(i32 36, float %5615, float %5688)  ; FMin(a,b)
  %5723 = fmul fast float %5722, %5635
  %5724 = fsub fast float 1.000000e+00, %5723
  %5725 = bitcast float %5724 to i32
  %5726 = sub nsw i32 2129859010, %5725
  %5727 = bitcast i32 %5726 to float
  %5728 = call float @dx.op.binary.f32(i32 36, float %5623, float %5688)  ; FMin(a,b)
  %5729 = fmul fast float %5728, %5635
  %5730 = fsub fast float 1.000000e+00, %5729
  %5731 = bitcast float %5730 to i32
  %5732 = sub nsw i32 2129859010, %5731
  %5733 = bitcast i32 %5732 to float
  %5734 = fmul fast float %5707, %5683
  %5735 = fmul fast float %5734, %5721
  %5736 = fmul fast float %5710, %5684
  %5737 = fmul fast float %5736, %5727
  %5738 = fmul fast float %5713, %5685
  %5739 = fmul fast float %5738, %5733
  %5740 = call float @dx.op.dot3.f32(i32 55, float %5709, float %5712, float %5715, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5741 = select i1 %260, float 0.000000e+00, float %5709
  %5742 = select i1 %260, float %5740, float %5712
  %5743 = select i1 %260, float 0.000000e+00, float %5715
  %5744 = call float @dx.op.dot3.f32(i32 55, float %5735, float %5737, float %5739, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5745 = select i1 %260, float 0.000000e+00, float %5735
  %5746 = select i1 %260, float %5744, float %5737
  %5747 = select i1 %260, float 0.000000e+00, float %5739
  %5748 = fmul fast float %3809, %3809
  %5749 = call float @dx.op.unary.f32(i32 7, float %5748)  ; Saturate(value)
  %5750 = fmul fast float %5625, 9.843750e-01
  %5751 = fmul fast float %5620, 9.843750e-01
  %5752 = fadd fast float %5750, 7.812500e-03
  %5753 = fadd fast float %5751, 7.812500e-03
  %5754 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %48, %dx.types.Handle %54, float %5752, float %5753, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5755 = extractvalue %dx.types.ResRet.f32 %5754, 0
  %5756 = extractvalue %dx.types.ResRet.f32 %5754, 1
  %5757 = extractvalue %dx.types.ResRet.f32 %5754, 2
  %5758 = extractvalue %dx.types.ResRet.f32 %5754, 3
  %5759 = fsub fast float 1.000000e+00, %5749
  %5760 = fsub fast float %5757, %5755
  %5761 = fsub fast float %5758, %5756
  %5762 = fmul fast float %5760, %5759
  %5763 = fmul fast float %5761, %5759
  %5764 = fadd fast float %5762, %5755
  %5765 = fadd fast float %5763, %5756
  %5766 = fmul fast float %5764, %5614
  %5767 = fmul fast float %5764, %5615
  %5768 = fmul fast float %5764, %5623
  %5769 = fadd fast float %5766, %5765
  %5770 = fadd fast float %5767, %5765
  %5771 = fadd fast float %5768, %5765
  %5772 = fcmp fast ogt float %4413, 0.000000e+00
  br i1 %5772, label %5773, label %5799

; <label>:5773                                    ; preds = %5604
  %5774 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %54, float %4413, float %5625, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5775 = extractvalue %dx.types.ResRet.f32 %5774, 0
  %5776 = extractvalue %dx.types.ResRet.f32 %5774, 1
  %5777 = extractvalue %dx.types.ResRet.f32 %5774, 2
  %5778 = fadd fast float %5775, -5.000000e-01
  %5779 = fadd fast float %5776, -5.000000e-01
  %5780 = fadd fast float %5777, -5.000000e-01
  %5781 = fsub fast float 1.000000e+00, %5614
  %5782 = fsub fast float 1.000000e+00, %5615
  %5783 = fsub fast float 1.000000e+00, %5623
  %5784 = fmul fast float %5614, 4.000000e+00
  %5785 = fmul fast float %5784, %5781
  %5786 = fmul fast float %5785, %5778
  %5787 = fmul fast float %5615, 4.000000e+00
  %5788 = fmul fast float %5787, %5782
  %5789 = fmul fast float %5788, %5779
  %5790 = fmul fast float %5623, 4.000000e+00
  %5791 = fmul fast float %5790, %5783
  %5792 = fmul fast float %5791, %5780
  %5793 = fadd fast float %5786, %5769
  %5794 = fadd fast float %5789, %5770
  %5795 = fadd fast float %5792, %5771
  %5796 = call float @dx.op.unary.f32(i32 7, float %5793)  ; Saturate(value)
  %5797 = call float @dx.op.unary.f32(i32 7, float %5794)  ; Saturate(value)
  %5798 = call float @dx.op.unary.f32(i32 7, float %5795)  ; Saturate(value)
  br label %5799

; <label>:5799                                    ; preds = %5773, %5604
  %5800 = phi float [ %5796, %5773 ], [ %5769, %5604 ]
  %5801 = phi float [ %5797, %5773 ], [ %5770, %5604 ]
  %5802 = phi float [ %5798, %5773 ], [ %5771, %5604 ]
  %5803 = call float @dx.op.binary.f32(i32 35, float %5801, float %5802)  ; FMax(a,b)
  %5804 = call float @dx.op.binary.f32(i32 35, float %5800, float %5803)  ; FMax(a,b)
  %5805 = fsub fast float 1.000000e+00, %5804
  %5806 = fmul fast float %5804, %5620
  %5807 = fadd fast float %5806, %5620
  %5808 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 252)  ; CBufferLoadLegacy(handle,regIndex)
  %5809 = extractvalue %dx.types.CBufRet.f32 %5808, 2
  %5810 = extractvalue %dx.types.CBufRet.f32 %5808, 3
  %5811 = fmul fast float %5807, %5809
  %5812 = fadd fast float %5811, %5810
  %5813 = call float @dx.op.unary.f32(i32 7, float %5812)  ; Saturate(value)
  %5814 = fsub fast float 1.000000e+00, %5646
  %5815 = fadd fast float %5814, %5813
  %5816 = call float @dx.op.unary.f32(i32 7, float %5815)  ; Saturate(value)
  %5817 = fcmp fast olt float %5816, 1.000000e+00
  br i1 %5817, label %5818, label %6294

; <label>:5818                                    ; preds = %5799
  %5819 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %5820 = extractvalue %dx.types.CBufRet.f32 %5819, 2
  %5821 = extractvalue %dx.types.CBufRet.f32 %5819, 3
  %5822 = fmul fast float %5820, %114
  %5823 = fmul fast float %5821, %115
  %5824 = fptoui float %5822 to i32
  %5825 = fptoui float %5823 to i32
  %5826 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %5827 = extractvalue %dx.types.CBufRet.f32 %5826, 0
  %5828 = extractvalue %dx.types.CBufRet.f32 %5826, 2
  %5829 = extractvalue %dx.types.CBufRet.f32 %5826, 3
  %5830 = fadd fast float %101, -4.000000e+00
  %5831 = call float @dx.op.binary.f32(i32 35, float %5830, float 0.000000e+00)  ; FMax(a,b)
  %5832 = fadd fast float %5831, %5827
  %5833 = fmul fast float %5832, %5828
  %5834 = call float @dx.op.unary.f32(i32 23, float %5833)  ; Log(value)
  %5835 = fmul fast float %5834, %5829
  %5836 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5837 = extractvalue %dx.types.CBufRet.f32 %5836, 2
  %5838 = fmul fast float %5835, %5837
  %5839 = call float @dx.op.unary.f32(i32 7, float %5838)  ; Saturate(value)
  %5840 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5841 = extractvalue %dx.types.CBufRet.i32 %5840, 1
  %5842 = add i32 %5841, -1
  %5843 = uitofp i32 %5841 to float
  %5844 = fmul fast float %5843, %5839
  %5845 = fptoui float %5844 to i32
  %5846 = call i32 @dx.op.binary.i32(i32 40, i32 %5845, i32 %5842)  ; UMin(a,b)
  %5847 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5848 = extractvalue %dx.types.CBufRet.i32 %5847, 2
  %5849 = extractvalue %dx.types.CBufRet.i32 %5847, 3
  %5850 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5825, i32 %5848, i32 %5824)  ; UMad(a,b,c)
  %5851 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5846, i32 %5849, i32 %5850)  ; UMad(a,b,c)
  %5852 = call float @dx.op.binary.f32(i32 35, float %101, float 0.000000e+00)  ; FMax(a,b)
  %5853 = fptoui float %5852 to i32
  %5854 = lshr i32 %5853, 5
  %5855 = call i32 @dx.op.binary.i32(i32 40, i32 %5854, i32 8191)  ; UMin(a,b)
  %5856 = fsub fast float %4821, %203
  %5857 = call float @dx.op.unary.f32(i32 7, float %5856)  ; Saturate(value)
  %5858 = fcmp fast ogt float %5857, 0.000000e+00
  %5859 = fcmp fast ogt float %5633, 0.000000e+00
  %5860 = and i1 %5859, %5858
  br i1 %5860, label %5861, label %5890

; <label>:5861                                    ; preds = %5818
  %5862 = call float @dx.op.dot3.f32(i32 55, float %5631, float %5632, float %5633, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5863 = call float @dx.op.binary.f32(i32 35, float %5862, float -1.000000e+00)  ; FMax(a,b)
  %5864 = call float @dx.op.binary.f32(i32 36, float %5863, float 1.000000e+00)  ; FMin(a,b)
  %5865 = fmul fast float %5864, %5864
  %5866 = fsub fast float 1.000000e+00, %5865
  %5867 = fmul fast float %5866, 0x3FFC6E2300000000
  %5868 = fsub fast float 1.000000e+00, %5867
  %5869 = fcmp fast ogt float %5868, 0.000000e+00
  %5870 = call float @dx.op.unary.f32(i32 24, float %5868)  ; Sqrt(value)
  %5871 = fsub fast float 1.000000e+00, %5870
  %5872 = call float @dx.op.unary.f32(i32 23, float %5871)  ; Log(value)
  %5873 = fmul fast float %5872, 5.000000e+00
  %5874 = call float @dx.op.unary.f32(i32 21, float %5873)  ; Exp(value)
  %5875 = fmul fast float %5874, 0x3FEF591A60000000
  %5876 = fadd fast float %5875, 0x3F94DCB540000000
  %5877 = select i1 %5869, float %5876, float 1.000000e+00
  %5878 = fcmp fast oge float %5877, 1.000000e+00
  %5879 = fmul fast float %5862, 2.000000e+00
  %5880 = fadd fast float %5879, %5633
  %5881 = select i1 %5878, float %5880, float %5633
  %5882 = fsub fast float %5881, %5633
  %5883 = fmul fast float %5882, %5857
  %5884 = fadd fast float %5883, %5633
  %5885 = call float @dx.op.dot3.f32(i32 55, float %5631, float %5632, float %5884, float %5631, float %5632, float %5884)  ; Dot3(ax,ay,az,bx,by,bz)
  %5886 = call float @dx.op.unary.f32(i32 25, float %5885)  ; Rsqrt(value)
  %5887 = fmul fast float %5886, %5631
  %5888 = fmul fast float %5886, %5632
  %5889 = fmul fast float %5884, %5886
  br label %5890

; <label>:5890                                    ; preds = %5861, %5818
  %5891 = phi float [ %5887, %5861 ], [ %5631, %5818 ]
  %5892 = phi float [ %5888, %5861 ], [ %5632, %5818 ]
  %5893 = phi float [ %5889, %5861 ], [ %5633, %5818 ]
  %5894 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5895 = extractvalue %dx.types.CBufRet.i32 %5894, 2
  %5896 = add nsw i32 %5895, -1
  %5897 = call i32 @dx.op.binary.i32(i32 37, i32 %5896, i32 0)  ; IMax(a,b)
  %5898 = shl i32 %5855, 2
  %5899 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %5898, i32 undef)  ; BufferLoad(srv,index,wot)
  %5900 = extractvalue %dx.types.ResRet.i32 %5899, 0
  %5901 = lshr i32 %5900, 16
  %5902 = and i32 %5900, 65535
  %5903 = lshr i32 %5900, 21
  %5904 = lshr i32 %5902, 5
  %5905 = call i32 @dx.op.binary.i32(i32 40, i32 %5904, i32 %5897)  ; UMin(a,b)
  %5906 = icmp ugt i32 %5903, %5905
  br i1 %5906, label %6270, label %5907

; <label>:5907                                    ; preds = %5890
  br label %5908

; <label>:5908                                    ; preds = %6262, %5907
  %5909 = phi float [ %6263, %6262 ], [ 0.000000e+00, %5907 ]
  %5910 = phi float [ %6264, %6262 ], [ 0.000000e+00, %5907 ]
  %5911 = phi float [ %6265, %6262 ], [ 0.000000e+00, %5907 ]
  %5912 = phi float [ %6266, %6262 ], [ 1.000000e+00, %5907 ]
  %5913 = phi i32 [ %6267, %6262 ], [ %5903, %5907 ]
  %5914 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5915 = extractvalue %dx.types.CBufRet.i32 %5914, 2
  %5916 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5851, i32 %5915, i32 %5913)  ; UMad(a,b,c)
  %5917 = shl i32 %5916, 2
  %5918 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %5917, i32 undef)  ; BufferLoad(srv,index,wot)
  %5919 = extractvalue %dx.types.ResRet.i32 %5918, 0
  %5920 = shl i32 %5913, 5
  %5921 = sub nsw i32 %5901, %5920
  %5922 = call i32 @dx.op.binary.i32(i32 37, i32 %5921, i32 0)  ; IMax(a,b)
  %5923 = call i32 @dx.op.binary.i32(i32 38, i32 %5922, i32 31)  ; IMin(a,b)
  %5924 = sub nsw i32 1, %5901
  %5925 = add nsw i32 %5924, %5902
  %5926 = call i32 @dx.op.binary.i32(i32 37, i32 %5925, i32 0)  ; IMax(a,b)
  %5927 = call i32 @dx.op.binary.i32(i32 38, i32 %5926, i32 32)  ; IMin(a,b)
  %5928 = and i32 %5927, 31
  %5929 = shl i32 -1, %5928
  %5930 = xor i32 %5929, -1
  %5931 = and i32 %5923, 31
  %5932 = shl i32 %5930, %5931
  %5933 = icmp eq i32 %5927, 32
  %5934 = select i1 %5933, i32 -1, i32 %5932
  %5935 = and i32 %5934, %5919
  %5936 = icmp eq i32 %5935, 0
  br i1 %5936, label %6262, label %5937

; <label>:5937                                    ; preds = %5908
  br label %5938

; <label>:5938                                    ; preds = %6045, %5937
  %5939 = phi float [ %6046, %6045 ], [ %5909, %5937 ]
  %5940 = phi float [ %6047, %6045 ], [ %5910, %5937 ]
  %5941 = phi float [ %6048, %6045 ], [ %5911, %5937 ]
  %5942 = phi float [ %6049, %6045 ], [ %5912, %5937 ]
  %5943 = phi i32 [ %5948, %6045 ], [ %5935, %5937 ]
  %5944 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5943)  ; FirstbitLo(value)
  %5945 = add i32 %5944, %5920
  %5946 = and i32 %5944, 31
  %5947 = shl i32 1, %5946
  %5948 = xor i32 %5947, %5943
  %5949 = mul i32 %5945, 72
  %5950 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5949, i32 undef)  ; BufferLoad(srv,index,wot)
  %5951 = extractvalue %dx.types.ResRet.f32 %5950, 0
  %5952 = extractvalue %dx.types.ResRet.f32 %5950, 1
  %5953 = extractvalue %dx.types.ResRet.f32 %5950, 2
  %5954 = add i32 %5949, 12
  %5955 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %5954, i32 undef)  ; BufferLoad(srv,index,wot)
  %5956 = extractvalue %dx.types.ResRet.i32 %5955, 0
  %5957 = add i32 %5949, 16
  %5958 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5957, i32 undef)  ; BufferLoad(srv,index,wot)
  %5959 = extractvalue %dx.types.ResRet.f32 %5958, 0
  %5960 = extractvalue %dx.types.ResRet.f32 %5958, 1
  %5961 = extractvalue %dx.types.ResRet.f32 %5958, 2
  %5962 = add i32 %5949, 28
  %5963 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5962, i32 undef)  ; BufferLoad(srv,index,wot)
  %5964 = extractvalue %dx.types.ResRet.f32 %5963, 0
  %5965 = add i32 %5949, 32
  %5966 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5965, i32 undef)  ; BufferLoad(srv,index,wot)
  %5967 = extractvalue %dx.types.ResRet.f32 %5966, 0
  %5968 = extractvalue %dx.types.ResRet.f32 %5966, 1
  %5969 = extractvalue %dx.types.ResRet.f32 %5966, 2
  %5970 = extractvalue %dx.types.ResRet.f32 %5966, 3
  %5971 = add i32 %5949, 48
  %5972 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5971, i32 undef)  ; BufferLoad(srv,index,wot)
  %5973 = extractvalue %dx.types.ResRet.f32 %5972, 0
  %5974 = extractvalue %dx.types.ResRet.f32 %5972, 1
  %5975 = add i32 %5949, 56
  %5976 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5975, i32 undef)  ; BufferLoad(srv,index,wot)
  %5977 = extractvalue %dx.types.ResRet.f32 %5976, 0
  %5978 = extractvalue %dx.types.ResRet.f32 %5976, 1
  %5979 = add i32 %5949, 64
  %5980 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5979, i32 undef)  ; BufferLoad(srv,index,wot)
  %5981 = extractvalue %dx.types.ResRet.f32 %5980, 0
  %5982 = extractvalue %dx.types.ResRet.f32 %5980, 1
  %5983 = mul i32 %5945, 60
  %5984 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %46, i32 %5983, i32 undef)  ; BufferLoad(srv,index,wot)
  %5985 = extractvalue %dx.types.ResRet.f32 %5984, 0
  %5986 = extractvalue %dx.types.ResRet.f32 %5984, 1
  %5987 = extractvalue %dx.types.ResRet.f32 %5984, 2
  %5988 = add i32 %5983, 12
  %5989 = add i32 %5983, 48
  %5990 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %46, i32 %5989, i32 undef)  ; BufferLoad(srv,index,wot)
  %5991 = extractvalue %dx.types.ResRet.f32 %5990, 0
  %5992 = extractvalue %dx.types.ResRet.f32 %5990, 1
  %5993 = extractvalue %dx.types.ResRet.f32 %5990, 2
  %5994 = and i32 %5956, 32767
  %5995 = bitcast float %5951 to i32
  %5996 = icmp eq i32 %5995, -1
  %5997 = bitcast float %5952 to i32
  %5998 = and i32 %5956, 32768
  %5999 = icmp ne i32 %5998, 0
  %6000 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %6001 = extractvalue %dx.types.CBufRet.f32 %6000, 0
  %6002 = extractvalue %dx.types.CBufRet.f32 %6000, 1
  %6003 = extractvalue %dx.types.CBufRet.f32 %6000, 2
  %6004 = fsub fast float %5985, %6001
  %6005 = fsub fast float %5986, %6002
  %6006 = fsub fast float %5987, %6003
  %6007 = fsub fast float %201, %6004
  %6008 = fsub fast float %202, %6005
  %6009 = fsub fast float %203, %6006
  %6010 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %46, i32 %5988, i32 undef)  ; BufferLoad(srv,index,wot)
  %6011 = extractvalue %dx.types.ResRet.f32 %6010, 0
  %6012 = extractvalue %dx.types.ResRet.f32 %6010, 1
  %6013 = extractvalue %dx.types.ResRet.f32 %6010, 2
  %6014 = call float @dx.op.dot3.f32(i32 55, float %6007, float %6008, float %6009, float %6011, float %6012, float %6013)  ; Dot3(ax,ay,az,bx,by,bz)
  %6015 = add i32 %5983, 24
  %6016 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %46, i32 %6015, i32 undef)  ; BufferLoad(srv,index,wot)
  %6017 = extractvalue %dx.types.ResRet.f32 %6016, 0
  %6018 = extractvalue %dx.types.ResRet.f32 %6016, 1
  %6019 = extractvalue %dx.types.ResRet.f32 %6016, 2
  %6020 = call float @dx.op.dot3.f32(i32 55, float %6007, float %6008, float %6009, float %6017, float %6018, float %6019)  ; Dot3(ax,ay,az,bx,by,bz)
  %6021 = add i32 %5983, 36
  %6022 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %46, i32 %6021, i32 undef)  ; BufferLoad(srv,index,wot)
  %6023 = extractvalue %dx.types.ResRet.f32 %6022, 0
  %6024 = extractvalue %dx.types.ResRet.f32 %6022, 1
  %6025 = extractvalue %dx.types.ResRet.f32 %6022, 2
  %6026 = call float @dx.op.dot3.f32(i32 55, float %6007, float %6008, float %6009, float %6023, float %6024, float %6025)  ; Dot3(ax,ay,az,bx,by,bz)
  %6027 = call float @dx.op.unary.f32(i32 6, float %6014)  ; FAbs(value)
  %6028 = call float @dx.op.unary.f32(i32 6, float %6020)  ; FAbs(value)
  %6029 = call float @dx.op.unary.f32(i32 6, float %6026)  ; FAbs(value)
  %6030 = fsub fast float %5991, %6027
  %6031 = fsub fast float %5992, %6028
  %6032 = fsub fast float %5993, %6029
  %6033 = fmul fast float %6030, %5959
  %6034 = fmul fast float %6031, %5960
  %6035 = fmul fast float %6032, %5961
  %6036 = call float @dx.op.binary.f32(i32 36, float %6034, float %6035)  ; FMin(a,b)
  %6037 = call float @dx.op.binary.f32(i32 36, float %6033, float %6036)  ; FMin(a,b)
  %6038 = call float @dx.op.unary.f32(i32 7, float %6037)  ; Saturate(value)
  %6039 = call float @dx.op.binary.f32(i32 36, float %5942, float %6038)  ; FMin(a,b)
  %6040 = uitofp i1 %5999 to float
  %6041 = fadd fast float %5857, 1.000000e+00
  %6042 = fsub fast float %6041, %6040
  %6043 = fmul fast float %6039, %6042
  %6044 = fcmp fast ogt float %6043, 0.000000e+00
  br i1 %6044, label %6051, label %6045

; <label>:6045                                    ; preds = %6193, %5938
  %6046 = phi float [ %6257, %6193 ], [ %5939, %5938 ]
  %6047 = phi float [ %6258, %6193 ], [ %5940, %5938 ]
  %6048 = phi float [ %6259, %6193 ], [ %5941, %5938 ]
  %6049 = phi float [ %6260, %6193 ], [ %5942, %5938 ]
  %6050 = icmp eq i32 %5943, %5947
  br i1 %6050, label %6261, label %5938

; <label>:6051                                    ; preds = %5938
  br i1 %5996, label %6109, label %6052

; <label>:6052                                    ; preds = %6051
  %6053 = fsub fast float -0.000000e+00, %6011
  %6054 = fsub fast float -0.000000e+00, %6012
  %6055 = fsub fast float -0.000000e+00, %6013
  %6056 = call float @dx.op.dot3.f32(i32 55, float %5891, float %5892, float %5893, float %6053, float %6054, float %6055)  ; Dot3(ax,ay,az,bx,by,bz)
  %6057 = fsub fast float -0.000000e+00, %6056
  %6058 = call float @dx.op.dot3.f32(i32 55, float %6007, float %6008, float %6009, float %6053, float %6054, float %6055)  ; Dot3(ax,ay,az,bx,by,bz)
  %6059 = fadd fast float %6058, %5974
  %6060 = fadd fast float %5973, %6058
  %6061 = fsub fast float -0.000000e+00, %6060
  %6062 = fcmp ogt float %6056, -0.000000e+00
  %6063 = select i1 %6062, float %6061, float %6059
  %6064 = call float @dx.op.unary.f32(i32 6, float %6057)  ; FAbs(value)
  %6065 = fdiv fast float 1.000000e+00, %6064
  %6066 = fmul fast float %6063, %6065
  %6067 = call float @dx.op.binary.f32(i32 35, float %6066, float 0.000000e+00)  ; FMax(a,b)
  %6068 = fsub fast float -0.000000e+00, %6017
  %6069 = fsub fast float -0.000000e+00, %6018
  %6070 = fsub fast float -0.000000e+00, %6019
  %6071 = call float @dx.op.dot3.f32(i32 55, float %5891, float %5892, float %5893, float %6068, float %6069, float %6070)  ; Dot3(ax,ay,az,bx,by,bz)
  %6072 = fsub fast float -0.000000e+00, %6071
  %6073 = call float @dx.op.dot3.f32(i32 55, float %6007, float %6008, float %6009, float %6068, float %6069, float %6070)  ; Dot3(ax,ay,az,bx,by,bz)
  %6074 = fadd fast float %6073, %5978
  %6075 = fadd fast float %5977, %6073
  %6076 = fsub fast float -0.000000e+00, %6075
  %6077 = fcmp ogt float %6071, -0.000000e+00
  %6078 = select i1 %6077, float %6076, float %6074
  %6079 = call float @dx.op.unary.f32(i32 6, float %6072)  ; FAbs(value)
  %6080 = fdiv fast float 1.000000e+00, %6079
  %6081 = fmul fast float %6078, %6080
  %6082 = call float @dx.op.binary.f32(i32 35, float %6081, float 0.000000e+00)  ; FMax(a,b)
  %6083 = fsub fast float -0.000000e+00, %6023
  %6084 = fsub fast float -0.000000e+00, %6024
  %6085 = fsub fast float -0.000000e+00, %6025
  %6086 = call float @dx.op.dot3.f32(i32 55, float %5891, float %5892, float %5893, float %6083, float %6084, float %6085)  ; Dot3(ax,ay,az,bx,by,bz)
  %6087 = fsub fast float -0.000000e+00, %6086
  %6088 = call float @dx.op.dot3.f32(i32 55, float %6007, float %6008, float %6009, float %6083, float %6084, float %6085)  ; Dot3(ax,ay,az,bx,by,bz)
  %6089 = fadd fast float %6088, %5982
  %6090 = fadd fast float %5981, %6088
  %6091 = fsub fast float -0.000000e+00, %6090
  %6092 = fcmp ogt float %6086, -0.000000e+00
  %6093 = select i1 %6092, float %6091, float %6089
  %6094 = call float @dx.op.unary.f32(i32 6, float %6087)  ; FAbs(value)
  %6095 = fdiv fast float 1.000000e+00, %6094
  %6096 = fmul fast float %6093, %6095
  %6097 = call float @dx.op.binary.f32(i32 35, float %6096, float 0.000000e+00)  ; FMax(a,b)
  %6098 = call float @dx.op.binary.f32(i32 36, float %6082, float %6097)  ; FMin(a,b)
  %6099 = call float @dx.op.binary.f32(i32 36, float %6067, float %6098)  ; FMin(a,b)
  %6100 = fmul fast float %6099, %5891
  %6101 = fmul fast float %6099, %5892
  %6102 = fmul fast float %6099, %5893
  %6103 = fadd fast float %6100, %201
  %6104 = fadd fast float %6101, %202
  %6105 = fadd fast float %6102, %203
  %6106 = fsub fast float %6103, %5951
  %6107 = fsub fast float %6104, %5952
  %6108 = fsub fast float %6105, %5953
  br label %6116

; <label>:6109                                    ; preds = %6051
  %6110 = fmul fast float %5891, 8.096000e+03
  %6111 = fmul fast float %5892, 8.096000e+03
  %6112 = fmul fast float %5893, 8.096000e+03
  %6113 = fadd fast float %6110, %201
  %6114 = fadd fast float %6111, %202
  %6115 = fadd fast float %6112, %203
  br label %6116

; <label>:6116                                    ; preds = %6109, %6052
  %6117 = phi float [ %5891, %6109 ], [ %6106, %6052 ]
  %6118 = phi float [ %5892, %6109 ], [ %6107, %6052 ]
  %6119 = phi float [ %5893, %6109 ], [ %6108, %6052 ]
  %6120 = phi float [ %6113, %6109 ], [ %6103, %6052 ]
  %6121 = phi float [ %6114, %6109 ], [ %6104, %6052 ]
  %6122 = phi float [ %6115, %6109 ], [ %6105, %6052 ]
  %6123 = fcmp fast olt float %5970, 1.000000e+00
  br i1 %6123, label %6124, label %6155, !dx.controlflow.hints !102

; <label>:6124                                    ; preds = %6116
  %6125 = fmul fast float %6119, %5968
  %6126 = fmul fast float %6118, %5969
  %6127 = fsub fast float %6125, %6126
  %6128 = fmul fast float %6117, %5969
  %6129 = fmul fast float %6119, %5967
  %6130 = fsub fast float %6128, %6129
  %6131 = fmul fast float %6118, %5967
  %6132 = fmul fast float %6117, %5968
  %6133 = fsub fast float %6131, %6132
  %6134 = fmul fast float %6127, 2.000000e+00
  %6135 = fmul fast float %6130, 2.000000e+00
  %6136 = fmul fast float %6133, 2.000000e+00
  %6137 = fmul fast float %6134, %5970
  %6138 = fmul fast float %6135, %5970
  %6139 = fmul fast float %6136, %5970
  %6140 = fmul fast float %6136, %5968
  %6141 = fmul fast float %6135, %5969
  %6142 = fmul fast float %6134, %5969
  %6143 = fmul fast float %6136, %5967
  %6144 = fmul fast float %6135, %5967
  %6145 = fmul fast float %6134, %5968
  %6146 = fadd fast float %6140, %6117
  %6147 = fadd fast float %6146, %6137
  %6148 = fsub fast float %6147, %6141
  %6149 = fsub fast float %6118, %6143
  %6150 = fadd fast float %6149, %6138
  %6151 = fadd fast float %6150, %6142
  %6152 = fadd fast float %6139, %6119
  %6153 = fsub fast float %6152, %6145
  %6154 = fadd fast float %6153, %6144
  br label %6155

; <label>:6155                                    ; preds = %6124, %6116
  %6156 = phi float [ %6148, %6124 ], [ %6117, %6116 ]
  %6157 = phi float [ %6151, %6124 ], [ %6118, %6116 ]
  %6158 = phi float [ %6154, %6124 ], [ %6119, %6116 ]
  br i1 %5996, label %6190, label %6159

; <label>:6159                                    ; preds = %6155
  %6160 = fmul fast float %5620, 0x400187C840000000
  %6161 = fadd fast float %6160, 0xC00EFC2120000000
  %6162 = fmul fast float %6161, %5620
  %6163 = fadd fast float %6162, 0x3FE5D16340000000
  %6164 = fmul fast float %6163, %5620
  %6165 = fadd fast float %6164, 1.000000e+00
  %6166 = call float @dx.op.unary.f32(i32 7, float %6165)  ; Saturate(value)
  %6167 = fsub fast float %6120, %201
  %6168 = fsub fast float %6121, %202
  %6169 = fsub fast float %6122, %203
  %6170 = fsub fast float %6120, %5951
  %6171 = fsub fast float %6121, %5952
  %6172 = fsub fast float %6122, %5953
  %6173 = call float @dx.op.dot3.f32(i32 55, float %6167, float %6168, float %6169, float %6167, float %6168, float %6169)  ; Dot3(ax,ay,az,bx,by,bz)
  %6174 = call float @dx.op.dot3.f32(i32 55, float %6170, float %6171, float %6172, float %6170, float %6171, float %6172)  ; Dot3(ax,ay,az,bx,by,bz)
  %6175 = fadd fast float %6174, 0x3EE4F8B580000000
  %6176 = fdiv fast float %6173, %6175
  %6177 = bitcast float %6176 to i32
  %6178 = ashr i32 %6177, 1
  %6179 = add nsw i32 %6178, 532487669
  %6180 = bitcast i32 %6179 to float
  %6181 = fmul fast float %6180, %6166
  %6182 = call float @dx.op.unary.f32(i32 7, float %6181)  ; Saturate(value)
  %6183 = fmul fast float %6182, 0x4009981AE0000000
  %6184 = fsub fast float 0x40111BBD80000000, %6183
  %6185 = fmul fast float %6184, %6182
  %6186 = fadd fast float %6185, 0xC0009F6020000000
  %6187 = fmul fast float %6186, %6182
  %6188 = fadd fast float %6187, 1.000000e+00
  %6189 = call float @dx.op.unary.f32(i32 7, float %6188)  ; Saturate(value)
  br label %6193

; <label>:6190                                    ; preds = %6155
  %6191 = icmp ne i32 %5997, -1
  %6192 = zext i1 %6191 to i32
  br label %6193

; <label>:6193                                    ; preds = %6190, %6159
  %6194 = phi float [ %5620, %6190 ], [ %6189, %6159 ]
  %6195 = phi i32 [ %6192, %6190 ], [ 0, %6159 ]
  %6196 = fmul float %6194, 5.000000e+00
  %6197 = fsub float 5.000000e+00, %6196
  %6198 = icmp ne i32 %6195, 0
  %6199 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %6200 = extractvalue %dx.types.CBufRet.f32 %6199, 3
  %6201 = fadd fast float %6200, %6197
  %6202 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6201)  ; FMax(a,b)
  %6203 = call float @dx.op.unary.f32(i32 6, float %6156)  ; FAbs(value)
  %6204 = call float @dx.op.unary.f32(i32 6, float %6157)  ; FAbs(value)
  %6205 = fadd fast float %6204, %6203
  %6206 = call float @dx.op.unary.f32(i32 6, float %6158)  ; FAbs(value)
  %6207 = fadd fast float %6205, %6206
  %6208 = fcmp fast oeq float %6207, 0.000000e+00
  %6209 = fdiv fast float 1.000000e+00, %6207
  %6210 = select i1 %6208, float 1.000000e+00, float %6209
  %6211 = fmul fast float %6210, %6156
  %6212 = fmul fast float %6210, %6157
  %6213 = call float @dx.op.unary.f32(i32 6, float %6212)  ; FAbs(value)
  %6214 = call float @dx.op.unary.f32(i32 6, float %6211)  ; FAbs(value)
  %6215 = fsub fast float 1.000000e+00, %6213
  %6216 = fsub fast float 1.000000e+00, %6214
  %6217 = fcmp fast oge float %6211, 0.000000e+00
  %6218 = fcmp fast oge float %6212, 0.000000e+00
  %6219 = select i1 %6217, float 1.000000e+00, float -1.000000e+00
  %6220 = select i1 %6218, float 1.000000e+00, float -1.000000e+00
  %6221 = fcmp fast ole float %6158, 0.000000e+00
  %6222 = fmul fast float %6219, %6215
  %6223 = fmul fast float %6220, %6216
  %6224 = select i1 %6221, float %6222, float %6211
  %6225 = select i1 %6221, float %6223, float %6212
  %6226 = fmul fast float %6224, 5.000000e-01
  %6227 = fmul fast float %6225, 5.000000e-01
  %6228 = fadd fast float %6226, 5.000000e-01
  %6229 = fadd fast float %6227, 5.000000e-01
  %6230 = uitofp i32 %5994 to float
  %6231 = call float @dx.op.binary.f32(i32 36, float %6202, float 3.000000e+00)  ; FMin(a,b)
  %6232 = fadd fast float %6231, 2.000000e+00
  %6233 = call float @dx.op.unary.f32(i32 21, float %6232)  ; Exp(value)
  %6234 = extractvalue %dx.types.CBufRet.f32 %6199, 1
  %6235 = fmul fast float %6234, %6233
  %6236 = fmul fast float %6235, 2.000000e+00
  %6237 = fsub fast float 1.000000e+00, %6236
  %6238 = fmul fast float %6228, %6237
  %6239 = fmul fast float %6229, %6237
  %6240 = fadd fast float %6238, %6235
  %6241 = fadd fast float %6239, %6235
  %6242 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %52, float %6240, float %6241, float %6230, float undef, i32 0, i32 0, i32 undef, float %6202)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6243 = extractvalue %dx.types.ResRet.f32 %6242, 0
  %6244 = extractvalue %dx.types.ResRet.f32 %6242, 1
  %6245 = extractvalue %dx.types.ResRet.f32 %6242, 2
  %6246 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6247 = extractvalue %dx.types.CBufRet.f32 %6246, 3
  %6248 = fmul fast float %6247, %5964
  %6249 = call float @dx.op.binary.f32(i32 36, float %5686, float %6248)  ; FMin(a,b)
  %6250 = select i1 %6198, float %6249, float %6248
  %6251 = fmul fast float %6243, %6043
  %6252 = fmul fast float %6251, %6250
  %6253 = fmul fast float %6244, %6043
  %6254 = fmul fast float %6253, %6250
  %6255 = fmul fast float %6245, %6043
  %6256 = fmul fast float %6255, %6250
  %6257 = fadd fast float %6252, %5939
  %6258 = fadd fast float %6254, %5940
  %6259 = fadd fast float %6256, %5941
  %6260 = fsub fast float %5942, %6043
  br label %6045

; <label>:6261                                    ; preds = %6045
  br label %6262

; <label>:6262                                    ; preds = %6261, %5908
  %6263 = phi float [ %5909, %5908 ], [ %6046, %6261 ]
  %6264 = phi float [ %5910, %5908 ], [ %6047, %6261 ]
  %6265 = phi float [ %5911, %5908 ], [ %6048, %6261 ]
  %6266 = phi float [ %5912, %5908 ], [ %6049, %6261 ]
  %6267 = add i32 %5913, 1
  %6268 = icmp ugt i32 %6267, %5905
  br i1 %6268, label %6269, label %5908, !llvm.loop !103

; <label>:6269                                    ; preds = %6262
  br label %6270

; <label>:6270                                    ; preds = %6269, %5890
  %6271 = phi float [ 0.000000e+00, %5890 ], [ %6263, %6269 ]
  %6272 = phi float [ 0.000000e+00, %5890 ], [ %6264, %6269 ]
  %6273 = phi float [ 0.000000e+00, %5890 ], [ %6265, %6269 ]
  %6274 = call float @dx.op.dot3.f32(i32 55, float %6271, float %6272, float %6273, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6275 = select i1 %260, float 0.000000e+00, float %6271
  %6276 = select i1 %260, float %6274, float %6272
  %6277 = select i1 %260, float 0.000000e+00, float %6273
  %6278 = fcmp fast olt float %5816, 0.000000e+00
  %6279 = call float @dx.op.unary.f32(i32 6, float %5816)  ; FAbs(value)
  %6280 = fmul fast float %6279, %5745
  %6281 = fmul fast float %6279, %5746
  %6282 = fmul fast float %6279, %5747
  %6283 = select i1 %6278, float %5745, float %6280
  %6284 = select i1 %6278, float %5746, float %6281
  %6285 = select i1 %6278, float %5747, float %6282
  %6286 = fsub fast float 1.000000e+00, %6279
  %6287 = call float @dx.op.unary.f32(i32 7, float %6286)  ; Saturate(value)
  %6288 = fmul fast float %6287, %6275
  %6289 = fmul fast float %6287, %6276
  %6290 = fmul fast float %6287, %6277
  %6291 = fadd fast float %6283, %6288
  %6292 = fadd fast float %6284, %6289
  %6293 = fadd fast float %6285, %6290
  br label %6294

; <label>:6294                                    ; preds = %6270, %5799
  %6295 = phi float [ %5745, %5799 ], [ %6291, %6270 ]
  %6296 = phi float [ %5746, %5799 ], [ %6292, %6270 ]
  %6297 = phi float [ %5747, %5799 ], [ %6293, %6270 ]
  %6298 = fmul fast float %5805, %5741
  %6299 = fmul fast float %5805, %5742
  %6300 = fmul fast float %5805, %5743
  %6301 = call float @dx.op.dot3.f32(i32 55, float %5611, float %5612, float %5613, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6302 = fcmp fast ogt float %6301, 0x3E7FF19E20000000
  %6303 = fdiv fast float 1.000000e+00, %6301
  %6304 = select i1 %6302, float %6303, float 0.000000e+00
  %6305 = fmul fast float %6304, %5611
  %6306 = fmul fast float %6304, %5612
  %6307 = fmul fast float %6304, %5613
  %6308 = fadd fast float %6305, -1.000000e+00
  %6309 = fadd fast float %6306, -1.000000e+00
  %6310 = fadd fast float %6307, -1.000000e+00
  %6311 = fmul fast float %6308, 5.000000e-01
  %6312 = fmul fast float %6309, 5.000000e-01
  %6313 = fmul fast float %6310, 5.000000e-01
  %6314 = fadd fast float %6311, 1.000000e+00
  %6315 = fadd fast float %6312, 1.000000e+00
  %6316 = fadd fast float %6313, 1.000000e+00
  %6317 = call float @dx.op.binary.f32(i32 35, float %5625, float 0x3F50624DE0000000)  ; FMax(a,b)
  %6318 = fdiv fast float %3809, %6317
  %6319 = fcmp fast olt float %4441, 1.270000e+02
  %6320 = fcmp fast olt float %4442, 1.270000e+02
  %6321 = fcmp fast olt float %4443, 1.270000e+02
  %6322 = fmul fast float %4441, 0xBFF7154760000000
  %6323 = fmul fast float %6322, %6318
  %6324 = fmul fast float %4442, 0xBFF7154760000000
  %6325 = fmul fast float %6324, %6318
  %6326 = fmul fast float %4443, 0xBFF7154760000000
  %6327 = fmul fast float %6326, %6318
  %6328 = call float @dx.op.unary.f32(i32 21, float %6323)  ; Exp(value)
  %6329 = call float @dx.op.unary.f32(i32 21, float %6325)  ; Exp(value)
  %6330 = call float @dx.op.unary.f32(i32 21, float %6327)  ; Exp(value)
  %6331 = call float @dx.op.unary.f32(i32 7, float %6328)  ; Saturate(value)
  %6332 = call float @dx.op.unary.f32(i32 7, float %6329)  ; Saturate(value)
  %6333 = call float @dx.op.unary.f32(i32 7, float %6330)  ; Saturate(value)
  %6334 = select i1 %6319, float %6331, float 0.000000e+00
  %6335 = select i1 %6320, float %6332, float 0.000000e+00
  %6336 = select i1 %6321, float %6333, float 0.000000e+00
  %6337 = fmul fast float %6334, %5805
  %6338 = fmul fast float %6335, %5805
  %6339 = fmul fast float %6336, %5805
  %6340 = fadd fast float %6337, -1.000000e+00
  %6341 = fadd fast float %6338, -1.000000e+00
  %6342 = fadd fast float %6339, -1.000000e+00
  %6343 = fmul fast float %6295, %5800
  %6344 = fmul fast float %6296, %5801
  %6345 = fmul fast float %6297, %5802
  %6346 = fsub fast float 1.000000e+00, %5625
  %6347 = bitcast float %6346 to i32
  %6348 = sitofp i32 %6347 to float
  %6349 = fmul fast float %6348, 5.000000e+00
  %6350 = fadd fast float %6349, 0xC1EFBF8940000000
  %6351 = fptosi float %6350 to i32
  %6352 = bitcast i32 %6351 to float
  %6353 = fmul fast float %6352, %4414
  %6354 = fmul fast float %5741, %6353
  %6355 = fmul fast float %6354, %5805
  %6356 = fmul fast float %6355, %6314
  %6357 = fmul fast float %5742, %6353
  %6358 = fmul fast float %6357, %5805
  %6359 = fmul fast float %6358, %6315
  %6360 = fmul fast float %5743, %6353
  %6361 = fmul fast float %6360, %5805
  %6362 = fmul fast float %6361, %6316
  %6363 = fmul fast float %6298, %4410
  %6364 = fmul fast float %6299, %4410
  %6365 = fmul fast float %6300, %4410
  %6366 = fadd fast float %6343, %4403
  %6367 = fadd fast float %6366, %6356
  %6368 = fmul fast float %6367, %4410
  %6369 = fadd fast float %6344, %4404
  %6370 = fadd fast float %6369, %6359
  %6371 = fmul fast float %6370, %4410
  %6372 = fadd fast float %6345, %4405
  %6373 = fadd fast float %6372, %6362
  %6374 = fmul fast float %6373, %4410
  %6375 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %6376 = extractvalue %dx.types.CBufRet.f32 %6375, 3
  %6377 = fcmp fast oeq float %6376, 0.000000e+00
  br i1 %6377, label %8094, label %6378

; <label>:6378                                    ; preds = %6294
  %6379 = extractvalue %dx.types.CBufRet.f32 %6375, 0
  %6380 = extractvalue %dx.types.CBufRet.f32 %6375, 1
  %6381 = extractvalue %dx.types.CBufRet.f32 %6375, 2
  %6382 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %6383 = extractvalue %dx.types.CBufRet.f32 %6382, 0
  %6384 = extractvalue %dx.types.CBufRet.f32 %6382, 1
  %6385 = extractvalue %dx.types.CBufRet.f32 %6382, 2
  %6386 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %6387 = extractvalue %dx.types.CBufRet.f32 %6386, 0
  %6388 = extractvalue %dx.types.CBufRet.f32 %6386, 1
  %6389 = call float @dx.op.dot3.f32(i32 55, float %6383, float %6384, float %6385, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6390 = select i1 %260, float %6387, float %6383
  %6391 = select i1 %260, float %6389, float %6384
  %6392 = select i1 %260, float %6388, float %6385
  %6393 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %6394 = extractvalue %dx.types.CBufRet.f32 %6393, 2
  %6395 = fmul fast float %6394, %121
  %6396 = fmul fast float %6394, %122
  %6397 = fmul fast float %6394, %123
  %6398 = fadd fast float %6395, %201
  %6399 = fadd fast float %6396, %202
  %6400 = fadd fast float %6397, %203
  %6401 = fcmp fast olt float %6376, 0.000000e+00
  br i1 %6401, label %7659, label %6402

; <label>:6402                                    ; preds = %6378
  %6403 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6404 = extractvalue %dx.types.CBufRet.f32 %6403, 0
  %6405 = extractvalue %dx.types.CBufRet.f32 %6403, 1
  %6406 = extractvalue %dx.types.CBufRet.f32 %6403, 2
  %6407 = extractvalue %dx.types.CBufRet.f32 %6403, 3
  %6408 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %6409 = extractvalue %dx.types.CBufRet.f32 %6408, 0
  %6410 = extractvalue %dx.types.CBufRet.f32 %6408, 1
  %6411 = extractvalue %dx.types.CBufRet.f32 %6408, 2
  %6412 = extractvalue %dx.types.CBufRet.f32 %6408, 3
  %6413 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %6414 = extractvalue %dx.types.CBufRet.f32 %6413, 0
  %6415 = extractvalue %dx.types.CBufRet.f32 %6413, 1
  %6416 = extractvalue %dx.types.CBufRet.f32 %6413, 2
  %6417 = extractvalue %dx.types.CBufRet.f32 %6413, 3
  %6418 = fmul fast float %6404, %6398
  %6419 = call float @dx.op.tertiary.f32(i32 46, float %6399, float %6405, float %6418)  ; FMad(a,b,c)
  %6420 = call float @dx.op.tertiary.f32(i32 46, float %6400, float %6406, float %6419)  ; FMad(a,b,c)
  %6421 = fadd fast float %6420, %6407
  %6422 = fmul fast float %6409, %6398
  %6423 = call float @dx.op.tertiary.f32(i32 46, float %6399, float %6410, float %6422)  ; FMad(a,b,c)
  %6424 = call float @dx.op.tertiary.f32(i32 46, float %6400, float %6411, float %6423)  ; FMad(a,b,c)
  %6425 = fadd fast float %6424, %6412
  %6426 = fmul fast float %6414, %6398
  %6427 = call float @dx.op.tertiary.f32(i32 46, float %6399, float %6415, float %6426)  ; FMad(a,b,c)
  %6428 = call float @dx.op.tertiary.f32(i32 46, float %6400, float %6416, float %6427)  ; FMad(a,b,c)
  %6429 = fadd fast float %6428, %6417
  %6430 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %6431 = extractvalue %dx.types.CBufRet.f32 %6430, 0
  %6432 = fcmp fast une float %6431, 0.000000e+00
  %6433 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %6434 = extractvalue %dx.types.CBufRet.f32 %6433, 0
  %6435 = extractvalue %dx.types.CBufRet.f32 %6433, 1
  %6436 = extractvalue %dx.types.CBufRet.f32 %6433, 3
  %6437 = fmul fast float %6436, %6421
  %6438 = fmul fast float %6436, %6425
  %6439 = fadd fast float %6437, %6434
  %6440 = fadd fast float %6438, %6435
  %6441 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %6442 = extractvalue %dx.types.CBufRet.f32 %6441, 0
  %6443 = extractvalue %dx.types.CBufRet.f32 %6441, 1
  %6444 = extractvalue %dx.types.CBufRet.f32 %6441, 3
  %6445 = fmul fast float %6444, %6421
  %6446 = fmul fast float %6444, %6425
  %6447 = fadd fast float %6445, %6442
  %6448 = fadd fast float %6446, %6443
  %6449 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %6450 = extractvalue %dx.types.CBufRet.f32 %6449, 1
  %6451 = fsub fast float %6450, %6429
  %6452 = extractvalue %dx.types.CBufRet.f32 %6449, 2
  %6453 = fmul fast float %6451, %6452
  %6454 = fsub fast float 1.000000e+00, %6453
  %6455 = call float @dx.op.unary.f32(i32 7, float %6454)  ; Saturate(value)
  br i1 %6432, label %6516, label %6456

; <label>:6456                                    ; preds = %6402
  %6457 = extractvalue %dx.types.CBufRet.f32 %6441, 2
  %6458 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6459 = extractvalue %dx.types.CBufRet.f32 %6458, 2
  %6460 = fadd fast float %6459, %6457
  %6461 = fcmp fast ogt float %6460, 0.000000e+00
  br i1 %6461, label %6462, label %6486

; <label>:6462                                    ; preds = %6456
  %6463 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %6464 = extractvalue %dx.types.CBufRet.f32 %6463, 0
  %6465 = extractvalue %dx.types.CBufRet.f32 %6463, 1
  %6466 = fsub fast float %6447, %6464
  %6467 = fsub fast float %6448, %6465
  %6468 = fcmp fast olt float %6466, 0.000000e+00
  %6469 = fcmp fast olt float %6467, 0.000000e+00
  %6470 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %6471 = extractvalue %dx.types.CBufRet.f32 %6470, 0
  %6472 = extractvalue %dx.types.CBufRet.f32 %6470, 1
  %6473 = extractvalue %dx.types.CBufRet.f32 %6470, 2
  %6474 = extractvalue %dx.types.CBufRet.f32 %6470, 3
  %6475 = select i1 %6468, float %6471, float %6473
  %6476 = select i1 %6469, float %6472, float %6474
  %6477 = fmul fast float %6475, %6466
  %6478 = fmul fast float %6476, %6467
  %6479 = call float @dx.op.unary.f32(i32 6, float %6477)  ; FAbs(value)
  %6480 = call float @dx.op.unary.f32(i32 6, float %6478)  ; FAbs(value)
  %6481 = extractvalue %dx.types.CBufRet.f32 %6393, 0
  %6482 = call float @dx.op.binary.f32(i32 35, float %6479, float %6480)  ; FMax(a,b)
  %6483 = fsub fast float %6481, %6482
  %6484 = call float @dx.op.unary.f32(i32 7, float %6483)  ; Saturate(value)
  %6485 = fmul fast float %6484, %6455
  br label %6486

; <label>:6486                                    ; preds = %6462, %6456
  %6487 = phi float [ %6485, %6462 ], [ 0.000000e+00, %6456 ]
  %6488 = extractvalue %dx.types.CBufRet.f32 %6433, 2
  %6489 = extractvalue %dx.types.CBufRet.f32 %6458, 1
  %6490 = fadd fast float %6489, %6488
  %6491 = fcmp fast ogt float %6490, 0.000000e+00
  br i1 %6491, label %6492, label %6516

; <label>:6492                                    ; preds = %6486
  %6493 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %6494 = extractvalue %dx.types.CBufRet.f32 %6493, 0
  %6495 = extractvalue %dx.types.CBufRet.f32 %6493, 1
  %6496 = fsub fast float %6439, %6494
  %6497 = fsub fast float %6440, %6495
  %6498 = fcmp fast olt float %6496, 0.000000e+00
  %6499 = fcmp fast olt float %6497, 0.000000e+00
  %6500 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %6501 = extractvalue %dx.types.CBufRet.f32 %6500, 0
  %6502 = extractvalue %dx.types.CBufRet.f32 %6500, 1
  %6503 = extractvalue %dx.types.CBufRet.f32 %6500, 2
  %6504 = extractvalue %dx.types.CBufRet.f32 %6500, 3
  %6505 = select i1 %6498, float %6501, float %6503
  %6506 = select i1 %6499, float %6502, float %6504
  %6507 = fmul fast float %6505, %6496
  %6508 = fmul fast float %6506, %6497
  %6509 = call float @dx.op.unary.f32(i32 6, float %6507)  ; FAbs(value)
  %6510 = call float @dx.op.unary.f32(i32 6, float %6508)  ; FAbs(value)
  %6511 = extractvalue %dx.types.CBufRet.f32 %6393, 0
  %6512 = call float @dx.op.binary.f32(i32 35, float %6509, float %6510)  ; FMax(a,b)
  %6513 = fsub fast float %6511, %6512
  %6514 = call float @dx.op.unary.f32(i32 7, float %6513)  ; Saturate(value)
  %6515 = fmul fast float %6514, %6455
  br label %6516

; <label>:6516                                    ; preds = %6492, %6486, %6402
  %6517 = phi float [ 0.000000e+00, %6402 ], [ %6515, %6492 ], [ 0.000000e+00, %6486 ]
  %6518 = phi float [ 0.000000e+00, %6402 ], [ %6487, %6492 ], [ %6487, %6486 ]
  %6519 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %6520 = extractvalue %dx.types.CBufRet.f32 %6519, 1
  %6521 = call float @dx.op.unary.f32(i32 7, float %6520)  ; Saturate(value)
  %6522 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %6523 = extractvalue %dx.types.CBufRet.f32 %6522, 0
  %6524 = extractvalue %dx.types.CBufRet.f32 %6522, 1
  %6525 = fsub fast float %6421, %6523
  %6526 = fsub fast float %6425, %6524
  %6527 = fcmp fast olt float %6525, 0.000000e+00
  %6528 = fcmp fast olt float %6526, 0.000000e+00
  %6529 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %6530 = extractvalue %dx.types.CBufRet.f32 %6529, 0
  %6531 = extractvalue %dx.types.CBufRet.f32 %6529, 1
  %6532 = extractvalue %dx.types.CBufRet.f32 %6529, 2
  %6533 = extractvalue %dx.types.CBufRet.f32 %6529, 3
  %6534 = select i1 %6527, float %6530, float %6532
  %6535 = select i1 %6528, float %6531, float %6533
  %6536 = fmul fast float %6534, %6525
  %6537 = fmul fast float %6535, %6526
  %6538 = call float @dx.op.unary.f32(i32 6, float %6536)  ; FAbs(value)
  %6539 = call float @dx.op.unary.f32(i32 6, float %6537)  ; FAbs(value)
  %6540 = extractvalue %dx.types.CBufRet.f32 %6393, 0
  %6541 = call float @dx.op.binary.f32(i32 35, float %6538, float %6539)  ; FMax(a,b)
  %6542 = fsub fast float %6540, %6541
  %6543 = call float @dx.op.unary.f32(i32 7, float %6542)  ; Saturate(value)
  %6544 = call float @dx.op.binary.f32(i32 36, float %6543, float %6521)  ; FMin(a,b)
  %6545 = fmul fast float %6544, %6455
  %6546 = fsub fast float %6517, %6545
  %6547 = fsub fast float %6518, %6517
  %6548 = fsub fast float %6547, %6545
  %6549 = call float @dx.op.binary.f32(i32 35, float %6517, float %6518)  ; FMax(a,b)
  %6550 = call float @dx.op.binary.f32(i32 35, float %6545, float %6549)  ; FMax(a,b)
  %6551 = fcmp fast olt float %6550, 1.000000e+00
  br i1 %6551, label %6552, label %6950, !dx.controlflow.hints !105

; <label>:6552                                    ; preds = %6516
  %6553 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %6554 = extractvalue %dx.types.CBufRet.f32 %6553, 0
  %6555 = fcmp fast une float %6554, 0.000000e+00
  br i1 %6555, label %6556, label %6950, !dx.controlflow.hints !106

; <label>:6556                                    ; preds = %6552
  %6557 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %6558 = extractvalue %dx.types.CBufRet.f32 %6557, 0
  %6559 = extractvalue %dx.types.CBufRet.f32 %6557, 1
  %6560 = extractvalue %dx.types.CBufRet.f32 %6557, 2
  %6561 = extractvalue %dx.types.CBufRet.f32 %6557, 3
  %6562 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %6563 = extractvalue %dx.types.CBufRet.f32 %6562, 0
  %6564 = extractvalue %dx.types.CBufRet.f32 %6562, 1
  %6565 = extractvalue %dx.types.CBufRet.f32 %6562, 2
  %6566 = extractvalue %dx.types.CBufRet.f32 %6562, 3
  %6567 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %6568 = extractvalue %dx.types.CBufRet.f32 %6567, 0
  %6569 = extractvalue %dx.types.CBufRet.f32 %6567, 1
  %6570 = extractvalue %dx.types.CBufRet.f32 %6567, 2
  %6571 = extractvalue %dx.types.CBufRet.f32 %6567, 3
  %6572 = fmul fast float %6558, %6398
  %6573 = call float @dx.op.tertiary.f32(i32 46, float %6399, float %6559, float %6572)  ; FMad(a,b,c)
  %6574 = call float @dx.op.tertiary.f32(i32 46, float %6400, float %6560, float %6573)  ; FMad(a,b,c)
  %6575 = fadd fast float %6574, %6561
  %6576 = fmul fast float %6563, %6398
  %6577 = call float @dx.op.tertiary.f32(i32 46, float %6399, float %6564, float %6576)  ; FMad(a,b,c)
  %6578 = call float @dx.op.tertiary.f32(i32 46, float %6400, float %6565, float %6577)  ; FMad(a,b,c)
  %6579 = fadd fast float %6578, %6566
  %6580 = fmul fast float %6568, %6398
  %6581 = call float @dx.op.tertiary.f32(i32 46, float %6399, float %6569, float %6580)  ; FMad(a,b,c)
  %6582 = call float @dx.op.tertiary.f32(i32 46, float %6400, float %6570, float %6581)  ; FMad(a,b,c)
  %6583 = fadd fast float %6582, %6571
  %6584 = fcmp fast oge float %6575, 1.000000e+00
  %6585 = fcmp fast oge float %6579, 1.000000e+00
  %6586 = or i1 %6584, %6585
  %6587 = fcmp fast olt float %6575, 0.000000e+00
  %6588 = fcmp fast olt float %6579, 0.000000e+00
  %6589 = or i1 %6587, %6588
  %6590 = or i1 %6586, %6589
  br i1 %6590, label %6950, label %6591, !dx.controlflow.hints !107

; <label>:6591                                    ; preds = %6556
  %6592 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %6593 = extractvalue %dx.types.CBufRet.f32 %6592, 0
  %6594 = extractvalue %dx.types.CBufRet.f32 %6592, 1
  %6595 = extractvalue %dx.types.CBufRet.f32 %6592, 2
  %6596 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %6597 = extractvalue %dx.types.CBufRet.i32 %6596, 2
  %6598 = uitofp i32 %6597 to float
  %6599 = extractvalue %dx.types.CBufRet.i32 %6596, 3
  %6600 = uitofp i32 %6599 to float
  %6601 = extractvalue %dx.types.CBufRet.f32 %6592, 3
  %6602 = fmul fast float %6601, 2.000000e+00
  %6603 = fsub fast float %6575, %6593
  %6604 = fsub fast float %6579, %6594
  %6605 = fmul fast float %6602, %6603
  %6606 = fmul fast float %6602, %6604
  %6607 = fdiv fast float 1.000000e+00, %6381
  %6608 = fmul fast float %6606, %6607
  %6609 = call float @dx.op.unary.f32(i32 6, float %6608)  ; FAbs(value)
  %6610 = fmul fast float %6595, %6400
  %6611 = fmul fast float %6610, %6602
  %6612 = call float @dx.op.unary.f32(i32 6, float %6611)  ; FAbs(value)
  %6613 = call float @dx.op.unary.f32(i32 6, float %6605)  ; FAbs(value)
  %6614 = call float @dx.op.binary.f32(i32 35, float %6612, float %6609)  ; FMax(a,b)
  %6615 = call float @dx.op.binary.f32(i32 35, float %6613, float %6614)  ; FMax(a,b)
  %6616 = fmul fast float %6615, 2.000000e+00
  %6617 = call float @dx.op.unary.f32(i32 23, float %6616)  ; Log(value)
  %6618 = call float @dx.op.binary.f32(i32 35, float %6617, float %6598)  ; FMax(a,b)
  %6619 = call float @dx.op.unary.f32(i32 22, float %6618)  ; Frc(value)
  %6620 = fadd fast float %6619, 0xBFEA666660000000
  %6621 = fmul fast float %6620, 8.000000e+00
  %6622 = call float @dx.op.unary.f32(i32 7, float %6621)  ; Saturate(value)
  %6623 = call float @dx.op.unary.f32(i32 27, float %6618)  ; Round_ni(value)
  %6624 = fadd fast float %6623, %6622
  %6625 = call float @dx.op.binary.f32(i32 36, float %6624, float %6600)  ; FMin(a,b)
  %6626 = call float @dx.op.unary.f32(i32 27, float %6625)  ; Round_ni(value)
  %6627 = fsub fast float -0.000000e+00, %6626
  %6628 = call float @dx.op.unary.f32(i32 21, float %6627)  ; Exp(value)
  %6629 = fmul fast float %6628, %6602
  %6630 = fmul fast float %6629, %6575
  %6631 = fmul fast float %6629, %6579
  %6632 = fmul fast float %6630, 2.500000e-01
  %6633 = fmul fast float %6631, 2.500000e-01
  %6634 = fadd fast float %6632, 5.000000e-01
  %6635 = fadd fast float %6633, 5.000000e-01
  %6636 = fsub fast float %6600, %6598
  %6637 = fptoui float %6636 to i32
  %6638 = add i32 %6637, 320
  %6639 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 %6638)  ; CBufferLoadLegacy(handle,regIndex)
  %6640 = extractvalue %dx.types.CBufRet.f32 %6639, 0
  %6641 = extractvalue %dx.types.CBufRet.f32 %6639, 1
  %6642 = fcmp fast une float %6625, %6600
  %6643 = fsub fast float %6575, %6640
  %6644 = fsub fast float %6579, %6641
  %6645 = call float @dx.op.unary.f32(i32 6, float %6643)  ; FAbs(value)
  %6646 = call float @dx.op.unary.f32(i32 6, float %6644)  ; FAbs(value)
  %6647 = fmul fast float %6645, %6629
  %6648 = fmul fast float %6646, %6629
  %6649 = fcmp fast olt float %6647, 1.000000e+00
  %6650 = fcmp fast olt float %6648, 1.000000e+00
  %6651 = and i1 %6649, %6650
  %6652 = or i1 %6642, %6651
  br i1 %6652, label %6653, label %6950, !dx.controlflow.hints !108

; <label>:6653                                    ; preds = %6591
  %6654 = fmul fast float %6631, 5.000000e-01
  %6655 = fmul fast float %6630, 5.000000e-01
  %6656 = fadd fast float %6654, 5.000000e-01
  %6657 = fadd fast float %6655, 5.000000e-01
  %6658 = sitofp i32 %6597 to float
  %6659 = fsub fast float %6625, %6658
  %6660 = call float @dx.op.unary.f32(i32 27, float %6659)  ; Round_ni(value)
  %6661 = call float @dx.op.unary.f32(i32 22, float %6625)  ; Frc(value)
  %6662 = call float @dx.op.unary.f32(i32 22, float %6657)  ; Frc(value)
  %6663 = call float @dx.op.unary.f32(i32 22, float %6656)  ; Frc(value)
  %6664 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %53, float %6662, float %6663, float %6660, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6665 = extractvalue %dx.types.ResRet.f32 %6664, 0
  %6666 = extractvalue %dx.types.ResRet.f32 %6664, 1
  %6667 = extractvalue %dx.types.ResRet.f32 %6664, 2
  %6668 = extractvalue %dx.types.ResRet.f32 %6664, 3
  %6669 = fcmp fast ogt float %6661, 0.000000e+00
  br i1 %6669, label %6670, label %6691, !dx.controlflow.hints !109

; <label>:6670                                    ; preds = %6653
  %6671 = fadd fast float %6660, 1.000000e+00
  %6672 = call float @dx.op.unary.f32(i32 22, float %6634)  ; Frc(value)
  %6673 = call float @dx.op.unary.f32(i32 22, float %6635)  ; Frc(value)
  %6674 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %53, float %6672, float %6673, float %6671, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6675 = extractvalue %dx.types.ResRet.f32 %6674, 0
  %6676 = extractvalue %dx.types.ResRet.f32 %6674, 1
  %6677 = extractvalue %dx.types.ResRet.f32 %6674, 2
  %6678 = extractvalue %dx.types.ResRet.f32 %6674, 3
  %6679 = fsub fast float %6675, %6665
  %6680 = fsub fast float %6676, %6666
  %6681 = fsub fast float %6677, %6667
  %6682 = fsub fast float %6678, %6668
  %6683 = fmul fast float %6679, %6661
  %6684 = fmul fast float %6680, %6661
  %6685 = fmul fast float %6681, %6661
  %6686 = fmul fast float %6682, %6661
  %6687 = fadd fast float %6683, %6665
  %6688 = fadd fast float %6684, %6666
  %6689 = fadd fast float %6685, %6667
  %6690 = fadd fast float %6686, %6668
  br label %6691

; <label>:6691                                    ; preds = %6670, %6653
  %6692 = phi float [ %6687, %6670 ], [ %6665, %6653 ]
  %6693 = phi float [ %6688, %6670 ], [ %6666, %6653 ]
  %6694 = phi float [ %6689, %6670 ], [ %6667, %6653 ]
  %6695 = phi float [ %6690, %6670 ], [ %6668, %6653 ]
  %6696 = fadd fast float %6692, -5.000000e-01
  %6697 = fadd fast float %6694, -5.000000e-01
  %6698 = fmul fast float %6696, 0xBFD5555560000000
  %6699 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %6697, float %6698)  ; FMad(a,b,c)
  %6700 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %6693, float 0.000000e+00)  ; FMad(a,b,c)
  %6701 = fadd fast float %6700, %6695
  %6702 = fmul fast float %6696, -7.500000e-01
  %6703 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %6697, float %6702)  ; FMad(a,b,c)
  %6704 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %6693, float 0.000000e+00)  ; FMad(a,b,c)
  %6705 = fadd fast float %6704, %6695
  %6706 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %6707 = extractvalue %dx.types.CBufRet.f32 %6706, 0
  %6708 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %6709 = extractvalue %dx.types.CBufRet.f32 %6708, 0
  %6710 = extractvalue %dx.types.CBufRet.f32 %6708, 1
  %6711 = extractvalue %dx.types.CBufRet.f32 %6708, 2
  %6712 = extractvalue %dx.types.CBufRet.f32 %6708, 3
  %6713 = fsub fast float %6709, %6699
  %6714 = fsub fast float %6710, %6701
  %6715 = fsub fast float %6711, %6703
  %6716 = fsub fast float %6712, %6705
  %6717 = fmul fast float %6713, %6707
  %6718 = fmul fast float %6714, %6707
  %6719 = fmul fast float %6715, %6707
  %6720 = fmul fast float %6716, %6707
  %6721 = fadd fast float %6717, %6699
  %6722 = fadd fast float %6718, %6701
  %6723 = fadd fast float %6719, %6703
  %6724 = fadd fast float %6720, %6705
  %6725 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %6726 = extractvalue %dx.types.ResRet.i32 %6725, 0
  %6727 = and i32 %6726, 536870911
  %6728 = uitofp i32 %6727 to float
  %6729 = fmul fast float %6728, %6575
  %6730 = fmul fast float %6728, %6579
  %6731 = fptoui float %6729 to i32
  %6732 = fptoui float %6730 to i32
  %6733 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6734 = extractvalue %dx.types.ResRet.i32 %6733, 0
  %6735 = and i32 %6734, 31
  %6736 = lshr i32 %6731, %6735
  %6737 = lshr i32 %6732, %6735
  %6738 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6739 = extractvalue %dx.types.ResRet.i32 %6738, 0
  %6740 = and i32 %6739, 31
  %6741 = shl i32 1, %6740
  %6742 = call i32 @dx.op.binary.i32(i32 40, i32 %6741, i32 4)  ; UMin(a,b)
  %6743 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %6744 = extractvalue %dx.types.ResRet.i32 %6743, 0
  %6745 = extractvalue %dx.types.ResRet.i32 %6743, 1
  %6746 = icmp eq i32 %6742, 0
  br i1 %6746, label %6788, label %6747

; <label>:6747                                    ; preds = %6691
  br label %6748

; <label>:6748                                    ; preds = %6776, %6747
  %6749 = phi i32 [ %6779, %6776 ], [ 0, %6747 ]
  %6750 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6751 = extractvalue %dx.types.ResRet.i32 %6750, 0
  %6752 = lshr i32 %6751, 16
  %6753 = and i32 %6752, 31
  %6754 = shl i32 %6737, %6753
  %6755 = add i32 %6754, %6736
  %6756 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6757 = extractvalue %dx.types.ResRet.i32 %6756, 0
  %6758 = and i32 %6757, 31
  %6759 = shl i32 %6755, %6758
  %6760 = add i32 %6759, %6749
  %6761 = shl i32 %6760, 2
  %6762 = add i32 %6761, 32
  %6763 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6762, i32 undef)  ; BufferLoad(srv,index,wot)
  %6764 = extractvalue %dx.types.ResRet.i32 %6763, 0
  %6765 = icmp slt i32 %6764, 0
  %6766 = getelementptr [12 x float], [12 x float]* %102, i32 0, i32 %6749
  %6767 = getelementptr [12 x float], [12 x float]* %103, i32 0, i32 %6749
  %6768 = bitcast float* %6766 to i32*
  %6769 = bitcast float* %6767 to i32*
  br i1 %6765, label %6770, label %6776

; <label>:6770                                    ; preds = %6748
  %6771 = and i32 %6764, 1073741823
  %6772 = add nuw nsw i32 %6771, 20
  %6773 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6772, i32 undef)  ; BufferLoad(srv,index,wot)
  %6774 = extractvalue %dx.types.ResRet.i32 %6773, 0
  %6775 = extractvalue %dx.types.ResRet.i32 %6773, 1
  br label %6776

; <label>:6776                                    ; preds = %6770, %6748
  %6777 = phi i32 [ %6774, %6770 ], [ %6744, %6748 ]
  %6778 = phi i32 [ %6775, %6770 ], [ %6745, %6748 ]
  store i32 %6777, i32* %6768, align 4
  store i32 %6778, i32* %6769, align 4
  %6779 = add nuw i32 %6749, 1
  %6780 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %6781 = extractvalue %dx.types.CBufRet.i32 %6780, 2
  %6782 = icmp eq i32 %6781, 0
  %6783 = icmp ugt i32 %6764, -1073741825
  %6784 = and i1 %6783, %6782
  %6785 = icmp ult i32 %6779, %6742
  %6786 = and i1 %6784, %6785
  br i1 %6786, label %6748, label %6787

; <label>:6787                                    ; preds = %6776
  br label %6788

; <label>:6788                                    ; preds = %6787, %6691
  %6789 = phi i32 [ 0, %6691 ], [ %6779, %6787 ]
  %6790 = extractvalue %dx.types.CBufRet.f32 %6553, 2
  %6791 = fptoui float %6790 to i32
  %6792 = icmp eq i32 %6791, 0
  br i1 %6792, label %6844, label %6793

; <label>:6793                                    ; preds = %6788
  br label %6794

; <label>:6794                                    ; preds = %6839, %6793
  %6795 = phi i32 [ %6840, %6839 ], [ %6789, %6793 ]
  %6796 = phi i32 [ %6841, %6839 ], [ 0, %6793 ]
  %6797 = lshr i32 %6796, 2
  %6798 = and i32 %6796, 3
  %6799 = add nuw nsw i32 %6797, 83
  %6800 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 %6799)  ; CBufferLoadLegacy(handle,regIndex)
  %6801 = extractvalue %dx.types.CBufRet.i32 %6800, 0
  %6802 = extractvalue %dx.types.CBufRet.i32 %6800, 1
  %6803 = extractvalue %dx.types.CBufRet.i32 %6800, 2
  %6804 = extractvalue %dx.types.CBufRet.i32 %6800, 3
  %6805 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 0
  store i32 %6801, i32* %6805, align 4
  %6806 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 1
  store i32 %6802, i32* %6806, align 4
  %6807 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 2
  store i32 %6803, i32* %6807, align 4
  %6808 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 3
  store i32 %6804, i32* %6808, align 4
  %6809 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 %6798
  %6810 = load i32, i32* %6809, align 4, !tbaa !110, !noalias !114
  %6811 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6812 = extractvalue %dx.types.ResRet.i32 %6811, 0
  %6813 = lshr i32 %6812, 16
  %6814 = and i32 %6813, 31
  %6815 = shl i32 %6737, %6814
  %6816 = add i32 %6815, %6736
  %6817 = shl i32 %6816, 2
  %6818 = add i32 %6817, %6810
  %6819 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6818, i32 undef)  ; BufferLoad(srv,index,wot)
  %6820 = extractvalue %dx.types.ResRet.i32 %6819, 0
  %6821 = icmp eq i32 %6820, 0
  br i1 %6821, label %6839, label %6822

; <label>:6822                                    ; preds = %6794
  %6823 = icmp slt i32 %6820, 0
  %6824 = getelementptr [12 x float], [12 x float]* %102, i32 0, i32 %6795
  %6825 = getelementptr [12 x float], [12 x float]* %103, i32 0, i32 %6795
  %6826 = bitcast float* %6824 to i32*
  %6827 = bitcast float* %6825 to i32*
  br i1 %6823, label %6828, label %6835

; <label>:6828                                    ; preds = %6822
  %6829 = and i32 %6820, 1073741823
  %6830 = add i32 %6810, 20
  %6831 = add i32 %6830, %6829
  %6832 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6831, i32 undef)  ; BufferLoad(srv,index,wot)
  %6833 = extractvalue %dx.types.ResRet.i32 %6832, 0
  %6834 = extractvalue %dx.types.ResRet.i32 %6832, 1
  br label %6835

; <label>:6835                                    ; preds = %6828, %6822
  %6836 = phi i32 [ %6833, %6828 ], [ %6744, %6822 ]
  %6837 = phi i32 [ %6834, %6828 ], [ %6745, %6822 ]
  store i32 %6836, i32* %6826, align 4
  store i32 %6837, i32* %6827, align 4
  %6838 = add i32 %6795, 1
  br label %6839

; <label>:6839                                    ; preds = %6835, %6794
  %6840 = phi i32 [ %6795, %6794 ], [ %6838, %6835 ]
  %6841 = add nuw i32 %6796, 1
  %6842 = icmp eq i32 %6841, %6791
  br i1 %6842, label %6843, label %6794

; <label>:6843                                    ; preds = %6839
  br label %6844

; <label>:6844                                    ; preds = %6843, %6788
  %6845 = phi i32 [ %6789, %6788 ], [ %6840, %6843 ]
  %6846 = icmp eq i32 %6845, 1
  %6847 = getelementptr [12 x float], [12 x float]* %102, i32 0, i32 0
  %6848 = getelementptr [12 x float], [12 x float]* %103, i32 0, i32 0
  br i1 %6846, label %6849, label %6852

; <label>:6849                                    ; preds = %6844
  %6850 = load float, float* %6847, align 4
  %6851 = load float, float* %6848, align 4
  br label %6879

; <label>:6852                                    ; preds = %6844
  %6853 = load float, float* %6847, align 4
  %6854 = load float, float* %6848, align 4
  %6855 = fdiv fast float 1.000000e+00, %6854
  %6856 = fsub fast float %6853, %6855
  %6857 = icmp ugt i32 %6845, 1
  br i1 %6857, label %6858, label %6874

; <label>:6858                                    ; preds = %6852
  br label %6859

; <label>:6859                                    ; preds = %6859, %6858
  %6860 = phi float [ %6869, %6859 ], [ %6856, %6858 ]
  %6861 = phi float [ %6870, %6859 ], [ %6853, %6858 ]
  %6862 = phi i32 [ %6871, %6859 ], [ 1, %6858 ]
  %6863 = getelementptr [12 x float], [12 x float]* %102, i32 0, i32 %6862
  %6864 = load float, float* %6863, align 4
  %6865 = getelementptr [12 x float], [12 x float]* %103, i32 0, i32 %6862
  %6866 = load float, float* %6865, align 4
  %6867 = fdiv fast float 1.000000e+00, %6866
  %6868 = fsub fast float %6864, %6867
  %6869 = call float @dx.op.binary.f32(i32 36, float %6860, float %6868)  ; FMin(a,b)
  %6870 = call float @dx.op.binary.f32(i32 35, float %6861, float %6864)  ; FMax(a,b)
  %6871 = add nuw i32 %6862, 1
  %6872 = icmp eq i32 %6871, %6845
  br i1 %6872, label %6873, label %6859

; <label>:6873                                    ; preds = %6859
  br label %6874

; <label>:6874                                    ; preds = %6873, %6852
  %6875 = phi float [ %6856, %6852 ], [ %6869, %6873 ]
  %6876 = phi float [ %6853, %6852 ], [ %6870, %6873 ]
  %6877 = fsub fast float %6876, %6875
  %6878 = fdiv fast float 1.000000e+00, %6877
  br label %6879

; <label>:6879                                    ; preds = %6874, %6849
  %6880 = phi float [ %6850, %6849 ], [ %6876, %6874 ]
  %6881 = phi float [ %6851, %6849 ], [ %6878, %6874 ]
  %6882 = fadd fast float %6583, %6880
  %6883 = fmul fast float %6882, %6881
  %6884 = call float @dx.op.unary.f32(i32 7, float %6883)  ; Saturate(value)
  %6885 = fmul fast float %6884, 2.000000e+00
  %6886 = fsub fast float 1.000000e+00, %6885
  %6887 = fmul fast float %6721, %6721
  %6888 = fsub fast float %6722, %6887
  %6889 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %6888)  ; FMax(a,b)
  %6890 = fdiv fast float 1.000000e+00, %6889
  %6891 = fmul fast float %6722, %6721
  %6892 = fsub fast float %6723, %6891
  %6893 = fsub fast float %6886, %6721
  %6894 = fmul fast float %6886, %6886
  %6895 = fsub fast float %6894, %6722
  %6896 = fmul fast float %6890, %6892
  %6897 = fmul fast float %6896, %6893
  %6898 = fsub fast float %6895, %6897
  %6899 = fmul fast float %6722, %6722
  %6900 = fsub fast float %6724, %6899
  %6901 = fmul fast float %6892, %6892
  %6902 = fmul fast float %6901, %6890
  %6903 = fsub fast float %6900, %6902
  %6904 = fdiv fast float %6898, %6903
  %6905 = fmul fast float %6904, %6892
  %6906 = fsub fast float %6893, %6905
  %6907 = fmul fast float %6906, %6890
  %6908 = fmul fast float %6907, %6721
  %6909 = fsub fast float 1.000000e+00, %6908
  %6910 = fmul fast float %6904, %6722
  %6911 = fsub fast float %6909, %6910
  %6912 = fmul fast float %6907, %6907
  %6913 = fmul fast float %6904, 4.000000e+00
  %6914 = fmul fast float %6913, %6911
  %6915 = fsub fast float %6912, %6914
  %6916 = call float @dx.op.unary.f32(i32 24, float %6915)  ; Sqrt(value)
  %6917 = fcmp fast oge float %6907, 0.000000e+00
  %6918 = fsub fast float -0.000000e+00, %6916
  %6919 = select i1 %6917, float %6918, float %6916
  %6920 = fsub fast float %6919, %6907
  %6921 = fdiv fast float %6920, %6904
  %6922 = fdiv fast float %6911, %6920
  %6923 = fmul fast float %6921, 5.000000e-01
  %6924 = fmul fast float %6922, 2.000000e+00
  %6925 = select i1 %6917, float %6923, float %6924
  %6926 = select i1 %6917, float %6924, float %6923
  %6927 = call float @dx.op.binary.f32(i32 35, float %6925, float %6926)  ; FMax(a,b)
  %6928 = call float @dx.op.binary.f32(i32 36, float %6925, float %6926)  ; FMin(a,b)
  %6929 = fcmp fast ogt float %6886, %6927
  %6930 = fsub fast float %6886, %6928
  %6931 = fsub fast float %6886, %6927
  %6932 = fsub fast float %6927, %6928
  %6933 = select i1 %6929, float %6931, float %6932
  %6934 = fmul float %6930, %6933
  %6935 = select i1 %6929, float %6928, float %6886
  %6936 = fcmp fast ogt float %6886, %6928
  %6937 = fmul fast float %6935, %6927
  %6938 = fadd fast float %6935, %6927
  %6939 = fmul fast float %6938, %6721
  %6940 = fadd fast float %6937, %6722
  %6941 = fsub fast float %6940, %6939
  %6942 = fdiv fast float %6941, %6934
  %6943 = select i1 %6936, float %6942, float 0.000000e+00
  %6944 = fsub fast float 1.000000e+00, %6943
  %6945 = select i1 %6929, float %6944, float %6943
  %6946 = call float @dx.op.unary.f32(i32 7, float %6945)  ; Saturate(value)
  %6947 = extractvalue %dx.types.CBufRet.f32 %6706, 3
  %6948 = fmul fast float %6947, %6946
  %6949 = fsub fast float 1.000000e+00, %6948
  br label %6950

; <label>:6950                                    ; preds = %6879, %6591, %6556, %6552, %6516
  %6951 = phi float [ 1.000000e+00, %6516 ], [ %6949, %6879 ], [ 1.000000e+00, %6556 ], [ 1.000000e+00, %6591 ], [ 1.000000e+00, %6552 ]
  %6952 = fcmp fast ogt float %6548, 0.000000e+00
  br i1 %6952, label %6953, label %7117, !dx.controlflow.hints !123

; <label>:6953                                    ; preds = %6950
  %6954 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6955 = extractvalue %dx.types.CBufRet.f32 %6954, 2
  %6956 = fadd fast float %6955, %6429
  %6957 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %6958 = extractvalue %dx.types.CBufRet.f32 %6957, 2
  %6959 = extractvalue %dx.types.CBufRet.f32 %6957, 3
  %6960 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %6961 = extractvalue %dx.types.CBufRet.f32 %6960, 2
  %6962 = call float @dx.op.binary.f32(i32 35, float %6956, float 0.000000e+00)  ; FMax(a,b)
  %6963 = fadd fast float %6962, 0x3F10000000000000
  %6964 = fcmp fast oeq float %6961, 0.000000e+00
  br i1 %6964, label %6965, label %7032

; <label>:6965                                    ; preds = %6953
  %6966 = extractvalue %dx.types.CBufRet.f32 %6957, 1
  %6967 = extractvalue %dx.types.CBufRet.f32 %6957, 0
  %6968 = fmul fast float %6967, %6447
  %6969 = fmul fast float %6966, %6448
  %6970 = fadd fast float %6968, 5.000000e-01
  %6971 = call float @dx.op.unary.f32(i32 27, float %6970)  ; Round_ni(value)
  %6972 = fadd fast float %6969, 5.000000e-01
  %6973 = call float @dx.op.unary.f32(i32 27, float %6972)  ; Round_ni(value)
  %6974 = fsub fast float %6970, %6971
  %6975 = fsub fast float %6972, %6973
  %6976 = fadd fast float %6971, -5.000000e-01
  %6977 = fadd fast float %6973, -5.000000e-01
  %6978 = fmul fast float %6974, 2.000000e+00
  %6979 = fsub fast float 3.000000e+00, %6978
  %6980 = fadd fast float %6978, 1.000000e+00
  %6981 = fsub fast float 2.000000e+00, %6974
  %6982 = bitcast float %6979 to i32
  %6983 = sub nsw i32 2129859010, %6982
  %6984 = bitcast i32 %6983 to float
  %6985 = fmul fast float %6984, %6981
  %6986 = fadd fast float %6985, -1.000000e+00
  %6987 = bitcast float %6980 to i32
  %6988 = sub nsw i32 2129859010, %6987
  %6989 = bitcast i32 %6988 to float
  %6990 = fmul fast float %6989, %6974
  %6991 = fadd fast float %6990, 1.000000e+00
  %6992 = fmul fast float %6975, 2.000000e+00
  %6993 = fsub fast float 3.000000e+00, %6992
  %6994 = fadd fast float %6992, 1.000000e+00
  %6995 = fsub fast float 2.000000e+00, %6975
  %6996 = bitcast float %6993 to i32
  %6997 = sub nsw i32 2129859010, %6996
  %6998 = bitcast i32 %6997 to float
  %6999 = fmul fast float %6998, %6995
  %7000 = fadd fast float %6999, -1.000000e+00
  %7001 = bitcast float %6994 to i32
  %7002 = sub nsw i32 2129859010, %7001
  %7003 = bitcast i32 %7002 to float
  %7004 = fmul fast float %7003, %6975
  %7005 = fadd fast float %7004, 1.000000e+00
  %7006 = fadd fast float %6986, %6976
  %7007 = fmul fast float %7006, %6958
  %7008 = fadd fast float %7000, %6977
  %7009 = fmul fast float %7008, %6959
  %7010 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %56, float %7007, float %7009, float undef, float undef, i32 0, i32 0, i32 undef, float %6963)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7011 = extractvalue %dx.types.ResRet.f32 %7010, 0
  %7012 = fmul fast float %7011, %6979
  %7013 = fadd fast float %6991, %6976
  %7014 = fmul fast float %7013, %6958
  %7015 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %56, float %7014, float %7009, float undef, float undef, i32 0, i32 0, i32 undef, float %6963)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7016 = extractvalue %dx.types.ResRet.f32 %7015, 0
  %7017 = fmul fast float %7016, %6980
  %7018 = fadd fast float %7005, %6977
  %7019 = fmul fast float %7018, %6959
  %7020 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %56, float %7007, float %7019, float undef, float undef, i32 0, i32 0, i32 undef, float %6963)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7021 = extractvalue %dx.types.ResRet.f32 %7020, 0
  %7022 = fmul fast float %7021, %6979
  %7023 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %56, float %7014, float %7019, float undef, float undef, i32 0, i32 0, i32 undef, float %6963)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7024 = extractvalue %dx.types.ResRet.f32 %7023, 0
  %7025 = fmul fast float %7024, %6980
  %7026 = fadd fast float %7025, %7022
  %7027 = fmul fast float %7026, %6994
  %7028 = fadd fast float %7017, %7012
  %7029 = fmul fast float %7028, %6993
  %7030 = fadd fast float %7029, %7027
  %7031 = fmul fast float %7030, 6.250000e-02
  br label %7117

; <label>:7032                                    ; preds = %6953
  %7033 = fmul fast float %271, 0x401921FB60000000
  %7034 = call float @dx.op.unary.f32(i32 13, float %7033)  ; Sin(value)
  %7035 = call float @dx.op.unary.f32(i32 12, float %7033)  ; Cos(value)
  %7036 = fsub fast float -0.000000e+00, %7034
  br label %7037

; <label>:7037                                    ; preds = %7086, %7032
  %7038 = phi float [ 0.000000e+00, %7032 ], [ %7081, %7086 ]
  %7039 = phi float [ 0.000000e+00, %7032 ], [ %7083, %7086 ]
  %7040 = phi i32 [ 0, %7032 ], [ %7087, %7086 ]
  %7041 = mul i32 %7040, 2
  %7042 = add i32 0, %7041
  %7043 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7042
  %7044 = load float, float* %7043, align 4
  %7045 = mul i32 %7040, 2
  %7046 = add i32 1, %7045
  %7047 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7046
  %7048 = load float, float* %7047, align 4
  %7049 = fmul fast float %7044, %7035
  %7050 = call float @dx.op.tertiary.f32(i32 46, float %7048, float %7036, float %7049)  ; FMad(a,b,c)
  %7051 = fmul fast float %7044, %7034
  %7052 = call float @dx.op.tertiary.f32(i32 46, float %7048, float %7035, float %7051)  ; FMad(a,b,c)
  %7053 = fmul fast float %7050, %6961
  %7054 = fmul fast float %7052, %6961
  %7055 = fadd fast float %7053, %6447
  %7056 = fadd fast float %7054, %6448
  %7057 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %16, %dx.types.Handle %55, float %7055, float %7056, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7058 = extractvalue %dx.types.ResRet.f32 %7057, 0
  %7059 = extractvalue %dx.types.ResRet.f32 %7057, 1
  %7060 = extractvalue %dx.types.ResRet.f32 %7057, 2
  %7061 = extractvalue %dx.types.ResRet.f32 %7057, 3
  %7062 = getelementptr inbounds [4 x float], [4 x float]* %107, i32 0, i32 0
  store float %7058, float* %7062, align 4
  %7063 = getelementptr inbounds [4 x float], [4 x float]* %107, i32 0, i32 1
  store float %7059, float* %7063, align 4
  %7064 = getelementptr inbounds [4 x float], [4 x float]* %107, i32 0, i32 2
  store float %7060, float* %7064, align 4
  %7065 = getelementptr inbounds [4 x float], [4 x float]* %107, i32 0, i32 3
  store float %7061, float* %7065, align 4
  %7066 = fsub fast float %7058, %6963
  %7067 = fcmp fast olt float %7066, 0.000000e+00
  %7068 = select i1 %7067, float 0.000000e+00, float 1.000000e+00
  %7069 = fadd fast float %7068, %7038
  %7070 = fmul fast float %7068, %7066
  %7071 = fadd fast float %7070, %7039
  br label %7072

; <label>:7072                                    ; preds = %7072, %7037
  %7073 = phi i32 [ 1, %7037 ], [ %7084, %7072 ]
  %7074 = phi float [ %7071, %7037 ], [ %7083, %7072 ]
  %7075 = phi float [ %7069, %7037 ], [ %7081, %7072 ]
  %7076 = getelementptr [4 x float], [4 x float]* %107, i32 0, i32 %7073
  %7077 = load float, float* %7076, align 4, !tbaa !124, !noalias !114
  %7078 = fsub fast float %7077, %6963
  %7079 = fcmp fast olt float %7078, 0.000000e+00
  %7080 = select i1 %7079, float 0.000000e+00, float 1.000000e+00
  %7081 = fadd fast float %7080, %7075
  %7082 = fmul fast float %7080, %7078
  %7083 = fadd fast float %7082, %7074
  %7084 = add nuw nsw i32 %7073, 1
  %7085 = icmp eq i32 %7084, 4
  br i1 %7085, label %7086, label %7072, !llvm.loop !126

; <label>:7086                                    ; preds = %7072
  %7087 = add nuw nsw i32 %7040, 1
  %7088 = icmp eq i32 %7087, 8
  br i1 %7088, label %7089, label %7037, !llvm.loop !127

; <label>:7089                                    ; preds = %7086
  %7090 = fdiv fast float 1.000000e+00, %7081
  %7091 = fmul fast float %7090, %7083
  %7092 = fdiv fast float 1.000000e+00, %6963
  %7093 = fmul fast float %7091, %7092
  %7094 = call float @dx.op.unary.f32(i32 7, float %7093)  ; Saturate(value)
  %7095 = call float @dx.op.binary.f32(i32 35, float %7094, float 0.000000e+00)  ; FMax(a,b)
  %7096 = fmul fast float %7081, 3.125000e-02
  %7097 = call float @dx.op.unary.f32(i32 7, float %7096)  ; Saturate(value)
  %7098 = fmul fast float %7097, 2.000000e+00
  %7099 = fadd fast float %7098, -1.000000e+00
  %7100 = fcmp fast ogt float %7099, 0.000000e+00
  %7101 = fcmp fast olt float %7099, 0.000000e+00
  %7102 = zext i1 %7100 to i32
  %7103 = zext i1 %7101 to i32
  %7104 = sub nsw i32 %7102, %7103
  %7105 = sitofp i32 %7104 to float
  %7106 = fmul fast float %7105, %7099
  %7107 = fsub fast float 1.000000e+00, %7106
  %7108 = fmul fast float %7107, %7107
  %7109 = fmul fast float %7108, %7107
  %7110 = fsub fast float %7107, %7109
  %7111 = fmul fast float %7110, %7095
  %7112 = fsub fast float 1.000000e+00, %7109
  %7113 = fsub fast float %7112, %7111
  %7114 = fmul fast float %7105, 5.000000e-01
  %7115 = fmul fast float %7114, %7113
  %7116 = fsub fast float 5.000000e-01, %7115
  br label %7117

; <label>:7117                                    ; preds = %7089, %6965, %6950
  %7118 = phi float [ 1.000000e+00, %6950 ], [ %7031, %6965 ], [ %7116, %7089 ]
  %7119 = fcmp fast ogt float %6546, 0.000000e+00
  br i1 %7119, label %7120, label %7284, !dx.controlflow.hints !128

; <label>:7120                                    ; preds = %7117
  %7121 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %7122 = extractvalue %dx.types.CBufRet.f32 %7121, 1
  %7123 = fadd fast float %7122, %6429
  %7124 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %7125 = extractvalue %dx.types.CBufRet.f32 %7124, 2
  %7126 = extractvalue %dx.types.CBufRet.f32 %7124, 3
  %7127 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %7128 = extractvalue %dx.types.CBufRet.f32 %7127, 1
  %7129 = call float @dx.op.binary.f32(i32 35, float %7123, float 0.000000e+00)  ; FMax(a,b)
  %7130 = fadd fast float %7129, 0x3F10000000000000
  %7131 = fcmp fast oeq float %7128, 0.000000e+00
  br i1 %7131, label %7132, label %7199

; <label>:7132                                    ; preds = %7120
  %7133 = extractvalue %dx.types.CBufRet.f32 %7124, 1
  %7134 = extractvalue %dx.types.CBufRet.f32 %7124, 0
  %7135 = fmul fast float %7134, %6439
  %7136 = fmul fast float %7133, %6440
  %7137 = fadd fast float %7135, 5.000000e-01
  %7138 = call float @dx.op.unary.f32(i32 27, float %7137)  ; Round_ni(value)
  %7139 = fadd fast float %7136, 5.000000e-01
  %7140 = call float @dx.op.unary.f32(i32 27, float %7139)  ; Round_ni(value)
  %7141 = fsub fast float %7137, %7138
  %7142 = fsub fast float %7139, %7140
  %7143 = fadd fast float %7138, -5.000000e-01
  %7144 = fadd fast float %7140, -5.000000e-01
  %7145 = fmul fast float %7141, 2.000000e+00
  %7146 = fsub fast float 3.000000e+00, %7145
  %7147 = fadd fast float %7145, 1.000000e+00
  %7148 = fsub fast float 2.000000e+00, %7141
  %7149 = bitcast float %7146 to i32
  %7150 = sub nsw i32 2129859010, %7149
  %7151 = bitcast i32 %7150 to float
  %7152 = fmul fast float %7151, %7148
  %7153 = fadd fast float %7152, -1.000000e+00
  %7154 = bitcast float %7147 to i32
  %7155 = sub nsw i32 2129859010, %7154
  %7156 = bitcast i32 %7155 to float
  %7157 = fmul fast float %7156, %7141
  %7158 = fadd fast float %7157, 1.000000e+00
  %7159 = fmul fast float %7142, 2.000000e+00
  %7160 = fsub fast float 3.000000e+00, %7159
  %7161 = fadd fast float %7159, 1.000000e+00
  %7162 = fsub fast float 2.000000e+00, %7142
  %7163 = bitcast float %7160 to i32
  %7164 = sub nsw i32 2129859010, %7163
  %7165 = bitcast i32 %7164 to float
  %7166 = fmul fast float %7165, %7162
  %7167 = fadd fast float %7166, -1.000000e+00
  %7168 = bitcast float %7161 to i32
  %7169 = sub nsw i32 2129859010, %7168
  %7170 = bitcast i32 %7169 to float
  %7171 = fmul fast float %7170, %7142
  %7172 = fadd fast float %7171, 1.000000e+00
  %7173 = fadd fast float %7153, %7143
  %7174 = fmul fast float %7173, %7125
  %7175 = fadd fast float %7167, %7144
  %7176 = fmul fast float %7175, %7126
  %7177 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %56, float %7174, float %7176, float undef, float undef, i32 0, i32 0, i32 undef, float %7130)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7178 = extractvalue %dx.types.ResRet.f32 %7177, 0
  %7179 = fmul fast float %7178, %7146
  %7180 = fadd fast float %7158, %7143
  %7181 = fmul fast float %7180, %7125
  %7182 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %56, float %7181, float %7176, float undef, float undef, i32 0, i32 0, i32 undef, float %7130)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7183 = extractvalue %dx.types.ResRet.f32 %7182, 0
  %7184 = fmul fast float %7183, %7147
  %7185 = fadd fast float %7172, %7144
  %7186 = fmul fast float %7185, %7126
  %7187 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %56, float %7174, float %7186, float undef, float undef, i32 0, i32 0, i32 undef, float %7130)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7188 = extractvalue %dx.types.ResRet.f32 %7187, 0
  %7189 = fmul fast float %7188, %7146
  %7190 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %56, float %7181, float %7186, float undef, float undef, i32 0, i32 0, i32 undef, float %7130)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7191 = extractvalue %dx.types.ResRet.f32 %7190, 0
  %7192 = fmul fast float %7191, %7147
  %7193 = fadd fast float %7192, %7189
  %7194 = fmul fast float %7193, %7161
  %7195 = fadd fast float %7184, %7179
  %7196 = fmul fast float %7195, %7160
  %7197 = fadd fast float %7196, %7194
  %7198 = fmul fast float %7197, 6.250000e-02
  br label %7284

; <label>:7199                                    ; preds = %7120
  %7200 = fmul fast float %271, 0x401921FB60000000
  %7201 = call float @dx.op.unary.f32(i32 13, float %7200)  ; Sin(value)
  %7202 = call float @dx.op.unary.f32(i32 12, float %7200)  ; Cos(value)
  %7203 = fsub fast float -0.000000e+00, %7201
  br label %7204

; <label>:7204                                    ; preds = %7253, %7199
  %7205 = phi float [ 0.000000e+00, %7199 ], [ %7248, %7253 ]
  %7206 = phi float [ 0.000000e+00, %7199 ], [ %7250, %7253 ]
  %7207 = phi i32 [ 0, %7199 ], [ %7254, %7253 ]
  %7208 = mul i32 %7207, 2
  %7209 = add i32 0, %7208
  %7210 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7209
  %7211 = load float, float* %7210, align 4
  %7212 = mul i32 %7207, 2
  %7213 = add i32 1, %7212
  %7214 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7213
  %7215 = load float, float* %7214, align 4
  %7216 = fmul fast float %7211, %7202
  %7217 = call float @dx.op.tertiary.f32(i32 46, float %7215, float %7203, float %7216)  ; FMad(a,b,c)
  %7218 = fmul fast float %7211, %7201
  %7219 = call float @dx.op.tertiary.f32(i32 46, float %7215, float %7202, float %7218)  ; FMad(a,b,c)
  %7220 = fmul fast float %7217, %7128
  %7221 = fmul fast float %7219, %7128
  %7222 = fadd fast float %7220, %6439
  %7223 = fadd fast float %7221, %6440
  %7224 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %17, %dx.types.Handle %55, float %7222, float %7223, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7225 = extractvalue %dx.types.ResRet.f32 %7224, 0
  %7226 = extractvalue %dx.types.ResRet.f32 %7224, 1
  %7227 = extractvalue %dx.types.ResRet.f32 %7224, 2
  %7228 = extractvalue %dx.types.ResRet.f32 %7224, 3
  %7229 = getelementptr inbounds [4 x float], [4 x float]* %106, i32 0, i32 0
  store float %7225, float* %7229, align 4
  %7230 = getelementptr inbounds [4 x float], [4 x float]* %106, i32 0, i32 1
  store float %7226, float* %7230, align 4
  %7231 = getelementptr inbounds [4 x float], [4 x float]* %106, i32 0, i32 2
  store float %7227, float* %7231, align 4
  %7232 = getelementptr inbounds [4 x float], [4 x float]* %106, i32 0, i32 3
  store float %7228, float* %7232, align 4
  %7233 = fsub fast float %7225, %7130
  %7234 = fcmp fast olt float %7233, 0.000000e+00
  %7235 = select i1 %7234, float 0.000000e+00, float 1.000000e+00
  %7236 = fadd fast float %7235, %7205
  %7237 = fmul fast float %7235, %7233
  %7238 = fadd fast float %7237, %7206
  br label %7239

; <label>:7239                                    ; preds = %7239, %7204
  %7240 = phi i32 [ 1, %7204 ], [ %7251, %7239 ]
  %7241 = phi float [ %7238, %7204 ], [ %7250, %7239 ]
  %7242 = phi float [ %7236, %7204 ], [ %7248, %7239 ]
  %7243 = getelementptr [4 x float], [4 x float]* %106, i32 0, i32 %7240
  %7244 = load float, float* %7243, align 4, !tbaa !124, !noalias !114
  %7245 = fsub fast float %7244, %7130
  %7246 = fcmp fast olt float %7245, 0.000000e+00
  %7247 = select i1 %7246, float 0.000000e+00, float 1.000000e+00
  %7248 = fadd fast float %7247, %7242
  %7249 = fmul fast float %7247, %7245
  %7250 = fadd fast float %7249, %7241
  %7251 = add nuw nsw i32 %7240, 1
  %7252 = icmp eq i32 %7251, 4
  br i1 %7252, label %7253, label %7239, !llvm.loop !126

; <label>:7253                                    ; preds = %7239
  %7254 = add nuw nsw i32 %7207, 1
  %7255 = icmp eq i32 %7254, 8
  br i1 %7255, label %7256, label %7204, !llvm.loop !127

; <label>:7256                                    ; preds = %7253
  %7257 = fdiv fast float 1.000000e+00, %7248
  %7258 = fmul fast float %7257, %7250
  %7259 = fdiv fast float 1.000000e+00, %7130
  %7260 = fmul fast float %7258, %7259
  %7261 = call float @dx.op.unary.f32(i32 7, float %7260)  ; Saturate(value)
  %7262 = call float @dx.op.binary.f32(i32 35, float %7261, float 0.000000e+00)  ; FMax(a,b)
  %7263 = fmul fast float %7248, 3.125000e-02
  %7264 = call float @dx.op.unary.f32(i32 7, float %7263)  ; Saturate(value)
  %7265 = fmul fast float %7264, 2.000000e+00
  %7266 = fadd fast float %7265, -1.000000e+00
  %7267 = fcmp fast ogt float %7266, 0.000000e+00
  %7268 = fcmp fast olt float %7266, 0.000000e+00
  %7269 = zext i1 %7267 to i32
  %7270 = zext i1 %7268 to i32
  %7271 = sub nsw i32 %7269, %7270
  %7272 = sitofp i32 %7271 to float
  %7273 = fmul fast float %7272, %7266
  %7274 = fsub fast float 1.000000e+00, %7273
  %7275 = fmul fast float %7274, %7274
  %7276 = fmul fast float %7275, %7274
  %7277 = fsub fast float %7274, %7276
  %7278 = fmul fast float %7277, %7262
  %7279 = fsub fast float 1.000000e+00, %7276
  %7280 = fsub fast float %7279, %7278
  %7281 = fmul fast float %7272, 5.000000e-01
  %7282 = fmul fast float %7281, %7280
  %7283 = fsub fast float 5.000000e-01, %7282
  br label %7284

; <label>:7284                                    ; preds = %7256, %7132, %7117
  %7285 = phi float [ 1.000000e+00, %7117 ], [ %7198, %7132 ], [ %7283, %7256 ]
  %7286 = fcmp fast ogt float %6545, 0.000000e+00
  br i1 %7286, label %7287, label %7605, !dx.controlflow.hints !129

; <label>:7287                                    ; preds = %7284
  %7288 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %7289 = extractvalue %dx.types.CBufRet.f32 %7288, 0
  %7290 = fadd fast float %7289, %6429
  %7291 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %7292 = extractvalue %dx.types.CBufRet.f32 %7291, 2
  %7293 = extractvalue %dx.types.CBufRet.f32 %7291, 3
  %7294 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %7295 = extractvalue %dx.types.CBufRet.f32 %7294, 0
  %7296 = call float @dx.op.binary.f32(i32 35, float %7290, float 0.000000e+00)  ; FMax(a,b)
  %7297 = fadd fast float %7296, 0x3F10000000000000
  %7298 = fcmp fast oeq float %7295, 0.000000e+00
  br i1 %6432, label %7299, label %7452, !dx.controlflow.hints !130

; <label>:7299                                    ; preds = %7287
  br i1 %7298, label %7300, label %7367

; <label>:7300                                    ; preds = %7299
  %7301 = extractvalue %dx.types.CBufRet.f32 %7291, 1
  %7302 = extractvalue %dx.types.CBufRet.f32 %7291, 0
  %7303 = fmul fast float %7302, %6421
  %7304 = fmul fast float %7301, %6425
  %7305 = fadd fast float %7303, 5.000000e-01
  %7306 = call float @dx.op.unary.f32(i32 27, float %7305)  ; Round_ni(value)
  %7307 = fadd fast float %7304, 5.000000e-01
  %7308 = call float @dx.op.unary.f32(i32 27, float %7307)  ; Round_ni(value)
  %7309 = fsub fast float %7305, %7306
  %7310 = fsub fast float %7307, %7308
  %7311 = fadd fast float %7306, -5.000000e-01
  %7312 = fadd fast float %7308, -5.000000e-01
  %7313 = fmul fast float %7309, 2.000000e+00
  %7314 = fsub fast float 3.000000e+00, %7313
  %7315 = fadd fast float %7313, 1.000000e+00
  %7316 = fsub fast float 2.000000e+00, %7309
  %7317 = bitcast float %7314 to i32
  %7318 = sub nsw i32 2129859010, %7317
  %7319 = bitcast i32 %7318 to float
  %7320 = fmul fast float %7319, %7316
  %7321 = fadd fast float %7320, -1.000000e+00
  %7322 = bitcast float %7315 to i32
  %7323 = sub nsw i32 2129859010, %7322
  %7324 = bitcast i32 %7323 to float
  %7325 = fmul fast float %7324, %7309
  %7326 = fadd fast float %7325, 1.000000e+00
  %7327 = fmul fast float %7310, 2.000000e+00
  %7328 = fsub fast float 3.000000e+00, %7327
  %7329 = fadd fast float %7327, 1.000000e+00
  %7330 = fsub fast float 2.000000e+00, %7310
  %7331 = bitcast float %7328 to i32
  %7332 = sub nsw i32 2129859010, %7331
  %7333 = bitcast i32 %7332 to float
  %7334 = fmul fast float %7333, %7330
  %7335 = fadd fast float %7334, -1.000000e+00
  %7336 = bitcast float %7329 to i32
  %7337 = sub nsw i32 2129859010, %7336
  %7338 = bitcast i32 %7337 to float
  %7339 = fmul fast float %7338, %7310
  %7340 = fadd fast float %7339, 1.000000e+00
  %7341 = fadd fast float %7321, %7311
  %7342 = fmul fast float %7341, %7292
  %7343 = fadd fast float %7335, %7312
  %7344 = fmul fast float %7343, %7293
  %7345 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %56, float %7342, float %7344, float undef, float undef, i32 0, i32 0, i32 undef, float %7297)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7346 = extractvalue %dx.types.ResRet.f32 %7345, 0
  %7347 = fmul fast float %7346, %7314
  %7348 = fadd fast float %7326, %7311
  %7349 = fmul fast float %7348, %7292
  %7350 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %56, float %7349, float %7344, float undef, float undef, i32 0, i32 0, i32 undef, float %7297)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7351 = extractvalue %dx.types.ResRet.f32 %7350, 0
  %7352 = fmul fast float %7351, %7315
  %7353 = fadd fast float %7340, %7312
  %7354 = fmul fast float %7353, %7293
  %7355 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %56, float %7342, float %7354, float undef, float undef, i32 0, i32 0, i32 undef, float %7297)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7356 = extractvalue %dx.types.ResRet.f32 %7355, 0
  %7357 = fmul fast float %7356, %7314
  %7358 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %56, float %7349, float %7354, float undef, float undef, i32 0, i32 0, i32 undef, float %7297)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7359 = extractvalue %dx.types.ResRet.f32 %7358, 0
  %7360 = fmul fast float %7359, %7315
  %7361 = fadd fast float %7360, %7357
  %7362 = fmul fast float %7361, %7329
  %7363 = fadd fast float %7352, %7347
  %7364 = fmul fast float %7363, %7328
  %7365 = fadd fast float %7364, %7362
  %7366 = fmul fast float %7365, 6.250000e-02
  br label %7605

; <label>:7367                                    ; preds = %7299
  %7368 = fmul fast float %271, 0x401921FB60000000
  %7369 = call float @dx.op.unary.f32(i32 13, float %7368)  ; Sin(value)
  %7370 = call float @dx.op.unary.f32(i32 12, float %7368)  ; Cos(value)
  %7371 = fsub fast float -0.000000e+00, %7369
  br label %7372

; <label>:7372                                    ; preds = %7421, %7367
  %7373 = phi float [ 0.000000e+00, %7367 ], [ %7416, %7421 ]
  %7374 = phi float [ 0.000000e+00, %7367 ], [ %7418, %7421 ]
  %7375 = phi i32 [ 0, %7367 ], [ %7422, %7421 ]
  %7376 = mul i32 %7375, 2
  %7377 = add i32 0, %7376
  %7378 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7377
  %7379 = load float, float* %7378, align 4
  %7380 = mul i32 %7375, 2
  %7381 = add i32 1, %7380
  %7382 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7381
  %7383 = load float, float* %7382, align 4
  %7384 = fmul fast float %7379, %7370
  %7385 = call float @dx.op.tertiary.f32(i32 46, float %7383, float %7371, float %7384)  ; FMad(a,b,c)
  %7386 = fmul fast float %7379, %7369
  %7387 = call float @dx.op.tertiary.f32(i32 46, float %7383, float %7370, float %7386)  ; FMad(a,b,c)
  %7388 = fmul fast float %7385, %7295
  %7389 = fmul fast float %7387, %7295
  %7390 = fadd fast float %7388, %6421
  %7391 = fadd fast float %7389, %6425
  %7392 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %19, %dx.types.Handle %55, float %7390, float %7391, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7393 = extractvalue %dx.types.ResRet.f32 %7392, 0
  %7394 = extractvalue %dx.types.ResRet.f32 %7392, 1
  %7395 = extractvalue %dx.types.ResRet.f32 %7392, 2
  %7396 = extractvalue %dx.types.ResRet.f32 %7392, 3
  %7397 = getelementptr inbounds [4 x float], [4 x float]* %105, i32 0, i32 0
  store float %7393, float* %7397, align 4
  %7398 = getelementptr inbounds [4 x float], [4 x float]* %105, i32 0, i32 1
  store float %7394, float* %7398, align 4
  %7399 = getelementptr inbounds [4 x float], [4 x float]* %105, i32 0, i32 2
  store float %7395, float* %7399, align 4
  %7400 = getelementptr inbounds [4 x float], [4 x float]* %105, i32 0, i32 3
  store float %7396, float* %7400, align 4
  %7401 = fsub fast float %7393, %7297
  %7402 = fcmp fast olt float %7401, 0.000000e+00
  %7403 = select i1 %7402, float 0.000000e+00, float 1.000000e+00
  %7404 = fadd fast float %7403, %7373
  %7405 = fmul fast float %7403, %7401
  %7406 = fadd fast float %7405, %7374
  br label %7407

; <label>:7407                                    ; preds = %7407, %7372
  %7408 = phi i32 [ 1, %7372 ], [ %7419, %7407 ]
  %7409 = phi float [ %7406, %7372 ], [ %7418, %7407 ]
  %7410 = phi float [ %7404, %7372 ], [ %7416, %7407 ]
  %7411 = getelementptr [4 x float], [4 x float]* %105, i32 0, i32 %7408
  %7412 = load float, float* %7411, align 4, !tbaa !124, !noalias !114
  %7413 = fsub fast float %7412, %7297
  %7414 = fcmp fast olt float %7413, 0.000000e+00
  %7415 = select i1 %7414, float 0.000000e+00, float 1.000000e+00
  %7416 = fadd fast float %7415, %7410
  %7417 = fmul fast float %7415, %7413
  %7418 = fadd fast float %7417, %7409
  %7419 = add nuw nsw i32 %7408, 1
  %7420 = icmp eq i32 %7419, 4
  br i1 %7420, label %7421, label %7407, !llvm.loop !126

; <label>:7421                                    ; preds = %7407
  %7422 = add nuw nsw i32 %7375, 1
  %7423 = icmp eq i32 %7422, 8
  br i1 %7423, label %7424, label %7372, !llvm.loop !127

; <label>:7424                                    ; preds = %7421
  %7425 = fdiv fast float 1.000000e+00, %7416
  %7426 = fmul fast float %7425, %7418
  %7427 = fdiv fast float 1.000000e+00, %7297
  %7428 = fmul fast float %7426, %7427
  %7429 = call float @dx.op.unary.f32(i32 7, float %7428)  ; Saturate(value)
  %7430 = call float @dx.op.binary.f32(i32 35, float %7429, float 0.000000e+00)  ; FMax(a,b)
  %7431 = fmul fast float %7416, 3.125000e-02
  %7432 = call float @dx.op.unary.f32(i32 7, float %7431)  ; Saturate(value)
  %7433 = fmul fast float %7432, 2.000000e+00
  %7434 = fadd fast float %7433, -1.000000e+00
  %7435 = fcmp fast ogt float %7434, 0.000000e+00
  %7436 = fcmp fast olt float %7434, 0.000000e+00
  %7437 = zext i1 %7435 to i32
  %7438 = zext i1 %7436 to i32
  %7439 = sub nsw i32 %7437, %7438
  %7440 = sitofp i32 %7439 to float
  %7441 = fmul fast float %7440, %7434
  %7442 = fsub fast float 1.000000e+00, %7441
  %7443 = fmul fast float %7442, %7442
  %7444 = fmul fast float %7443, %7442
  %7445 = fsub fast float %7442, %7444
  %7446 = fmul fast float %7445, %7430
  %7447 = fsub fast float 1.000000e+00, %7444
  %7448 = fsub fast float %7447, %7446
  %7449 = fmul fast float %7440, 5.000000e-01
  %7450 = fmul fast float %7449, %7448
  %7451 = fsub fast float 5.000000e-01, %7450
  br label %7605

; <label>:7452                                    ; preds = %7287
  br i1 %7298, label %7453, label %7520

; <label>:7453                                    ; preds = %7452
  %7454 = extractvalue %dx.types.CBufRet.f32 %7291, 1
  %7455 = extractvalue %dx.types.CBufRet.f32 %7291, 0
  %7456 = fmul fast float %7455, %6421
  %7457 = fmul fast float %7454, %6425
  %7458 = fadd fast float %7456, 5.000000e-01
  %7459 = call float @dx.op.unary.f32(i32 27, float %7458)  ; Round_ni(value)
  %7460 = fadd fast float %7457, 5.000000e-01
  %7461 = call float @dx.op.unary.f32(i32 27, float %7460)  ; Round_ni(value)
  %7462 = fsub fast float %7458, %7459
  %7463 = fsub fast float %7460, %7461
  %7464 = fadd fast float %7459, -5.000000e-01
  %7465 = fadd fast float %7461, -5.000000e-01
  %7466 = fmul fast float %7462, 2.000000e+00
  %7467 = fsub fast float 3.000000e+00, %7466
  %7468 = fadd fast float %7466, 1.000000e+00
  %7469 = fsub fast float 2.000000e+00, %7462
  %7470 = bitcast float %7467 to i32
  %7471 = sub nsw i32 2129859010, %7470
  %7472 = bitcast i32 %7471 to float
  %7473 = fmul fast float %7472, %7469
  %7474 = fadd fast float %7473, -1.000000e+00
  %7475 = bitcast float %7468 to i32
  %7476 = sub nsw i32 2129859010, %7475
  %7477 = bitcast i32 %7476 to float
  %7478 = fmul fast float %7477, %7462
  %7479 = fadd fast float %7478, 1.000000e+00
  %7480 = fmul fast float %7463, 2.000000e+00
  %7481 = fsub fast float 3.000000e+00, %7480
  %7482 = fadd fast float %7480, 1.000000e+00
  %7483 = fsub fast float 2.000000e+00, %7463
  %7484 = bitcast float %7481 to i32
  %7485 = sub nsw i32 2129859010, %7484
  %7486 = bitcast i32 %7485 to float
  %7487 = fmul fast float %7486, %7483
  %7488 = fadd fast float %7487, -1.000000e+00
  %7489 = bitcast float %7482 to i32
  %7490 = sub nsw i32 2129859010, %7489
  %7491 = bitcast i32 %7490 to float
  %7492 = fmul fast float %7491, %7463
  %7493 = fadd fast float %7492, 1.000000e+00
  %7494 = fadd fast float %7474, %7464
  %7495 = fmul fast float %7494, %7292
  %7496 = fadd fast float %7488, %7465
  %7497 = fmul fast float %7496, %7293
  %7498 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %56, float %7495, float %7497, float undef, float undef, i32 0, i32 0, i32 undef, float %7297)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7499 = extractvalue %dx.types.ResRet.f32 %7498, 0
  %7500 = fmul fast float %7499, %7467
  %7501 = fadd fast float %7479, %7464
  %7502 = fmul fast float %7501, %7292
  %7503 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %56, float %7502, float %7497, float undef, float undef, i32 0, i32 0, i32 undef, float %7297)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7504 = extractvalue %dx.types.ResRet.f32 %7503, 0
  %7505 = fmul fast float %7504, %7468
  %7506 = fadd fast float %7493, %7465
  %7507 = fmul fast float %7506, %7293
  %7508 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %56, float %7495, float %7507, float undef, float undef, i32 0, i32 0, i32 undef, float %7297)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7509 = extractvalue %dx.types.ResRet.f32 %7508, 0
  %7510 = fmul fast float %7509, %7467
  %7511 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %56, float %7502, float %7507, float undef, float undef, i32 0, i32 0, i32 undef, float %7297)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7512 = extractvalue %dx.types.ResRet.f32 %7511, 0
  %7513 = fmul fast float %7512, %7468
  %7514 = fadd fast float %7513, %7510
  %7515 = fmul fast float %7514, %7482
  %7516 = fadd fast float %7505, %7500
  %7517 = fmul fast float %7516, %7481
  %7518 = fadd fast float %7517, %7515
  %7519 = fmul fast float %7518, 6.250000e-02
  br label %7605

; <label>:7520                                    ; preds = %7452
  %7521 = fmul fast float %271, 0x401921FB60000000
  %7522 = call float @dx.op.unary.f32(i32 13, float %7521)  ; Sin(value)
  %7523 = call float @dx.op.unary.f32(i32 12, float %7521)  ; Cos(value)
  %7524 = fsub fast float -0.000000e+00, %7522
  br label %7525

; <label>:7525                                    ; preds = %7574, %7520
  %7526 = phi float [ 0.000000e+00, %7520 ], [ %7569, %7574 ]
  %7527 = phi float [ 0.000000e+00, %7520 ], [ %7571, %7574 ]
  %7528 = phi i32 [ 0, %7520 ], [ %7575, %7574 ]
  %7529 = mul i32 %7528, 2
  %7530 = add i32 0, %7529
  %7531 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7530
  %7532 = load float, float* %7531, align 4
  %7533 = mul i32 %7528, 2
  %7534 = add i32 1, %7533
  %7535 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7534
  %7536 = load float, float* %7535, align 4
  %7537 = fmul fast float %7532, %7523
  %7538 = call float @dx.op.tertiary.f32(i32 46, float %7536, float %7524, float %7537)  ; FMad(a,b,c)
  %7539 = fmul fast float %7532, %7522
  %7540 = call float @dx.op.tertiary.f32(i32 46, float %7536, float %7523, float %7539)  ; FMad(a,b,c)
  %7541 = fmul fast float %7538, %7295
  %7542 = fmul fast float %7540, %7295
  %7543 = fadd fast float %7541, %6421
  %7544 = fadd fast float %7542, %6425
  %7545 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %18, %dx.types.Handle %55, float %7543, float %7544, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7546 = extractvalue %dx.types.ResRet.f32 %7545, 0
  %7547 = extractvalue %dx.types.ResRet.f32 %7545, 1
  %7548 = extractvalue %dx.types.ResRet.f32 %7545, 2
  %7549 = extractvalue %dx.types.ResRet.f32 %7545, 3
  %7550 = getelementptr inbounds [4 x float], [4 x float]* %104, i32 0, i32 0
  store float %7546, float* %7550, align 4
  %7551 = getelementptr inbounds [4 x float], [4 x float]* %104, i32 0, i32 1
  store float %7547, float* %7551, align 4
  %7552 = getelementptr inbounds [4 x float], [4 x float]* %104, i32 0, i32 2
  store float %7548, float* %7552, align 4
  %7553 = getelementptr inbounds [4 x float], [4 x float]* %104, i32 0, i32 3
  store float %7549, float* %7553, align 4
  %7554 = fsub fast float %7546, %7297
  %7555 = fcmp fast olt float %7554, 0.000000e+00
  %7556 = select i1 %7555, float 0.000000e+00, float 1.000000e+00
  %7557 = fadd fast float %7556, %7526
  %7558 = fmul fast float %7556, %7554
  %7559 = fadd fast float %7558, %7527
  br label %7560

; <label>:7560                                    ; preds = %7560, %7525
  %7561 = phi i32 [ 1, %7525 ], [ %7572, %7560 ]
  %7562 = phi float [ %7559, %7525 ], [ %7571, %7560 ]
  %7563 = phi float [ %7557, %7525 ], [ %7569, %7560 ]
  %7564 = getelementptr [4 x float], [4 x float]* %104, i32 0, i32 %7561
  %7565 = load float, float* %7564, align 4, !tbaa !124, !noalias !114
  %7566 = fsub fast float %7565, %7297
  %7567 = fcmp fast olt float %7566, 0.000000e+00
  %7568 = select i1 %7567, float 0.000000e+00, float 1.000000e+00
  %7569 = fadd fast float %7568, %7563
  %7570 = fmul fast float %7568, %7566
  %7571 = fadd fast float %7570, %7562
  %7572 = add nuw nsw i32 %7561, 1
  %7573 = icmp eq i32 %7572, 4
  br i1 %7573, label %7574, label %7560, !llvm.loop !126

; <label>:7574                                    ; preds = %7560
  %7575 = add nuw nsw i32 %7528, 1
  %7576 = icmp eq i32 %7575, 8
  br i1 %7576, label %7577, label %7525, !llvm.loop !127

; <label>:7577                                    ; preds = %7574
  %7578 = fdiv fast float 1.000000e+00, %7569
  %7579 = fmul fast float %7578, %7571
  %7580 = fdiv fast float 1.000000e+00, %7297
  %7581 = fmul fast float %7579, %7580
  %7582 = call float @dx.op.unary.f32(i32 7, float %7581)  ; Saturate(value)
  %7583 = call float @dx.op.binary.f32(i32 35, float %7582, float 0.000000e+00)  ; FMax(a,b)
  %7584 = fmul fast float %7569, 3.125000e-02
  %7585 = call float @dx.op.unary.f32(i32 7, float %7584)  ; Saturate(value)
  %7586 = fmul fast float %7585, 2.000000e+00
  %7587 = fadd fast float %7586, -1.000000e+00
  %7588 = fcmp fast ogt float %7587, 0.000000e+00
  %7589 = fcmp fast olt float %7587, 0.000000e+00
  %7590 = zext i1 %7588 to i32
  %7591 = zext i1 %7589 to i32
  %7592 = sub nsw i32 %7590, %7591
  %7593 = sitofp i32 %7592 to float
  %7594 = fmul fast float %7593, %7587
  %7595 = fsub fast float 1.000000e+00, %7594
  %7596 = fmul fast float %7595, %7595
  %7597 = fmul fast float %7596, %7595
  %7598 = fsub fast float %7595, %7597
  %7599 = fmul fast float %7598, %7583
  %7600 = fsub fast float 1.000000e+00, %7597
  %7601 = fsub fast float %7600, %7599
  %7602 = fmul fast float %7593, 5.000000e-01
  %7603 = fmul fast float %7602, %7601
  %7604 = fsub fast float 5.000000e-01, %7603
  br label %7605

; <label>:7605                                    ; preds = %7577, %7453, %7424, %7300, %7284
  %7606 = phi float [ 1.000000e+00, %7284 ], [ %7366, %7300 ], [ %7451, %7424 ], [ %7519, %7453 ], [ %7604, %7577 ]
  %7607 = fsub fast float %7118, %6951
  %7608 = fmul fast float %7607, %6518
  %7609 = fadd fast float %7608, %6951
  %7610 = fsub fast float %7285, %7609
  %7611 = fmul fast float %7610, %6517
  %7612 = fadd fast float %7611, %7609
  %7613 = fsub fast float %7606, %7612
  %7614 = fmul fast float %7613, %6545
  %7615 = fadd fast float %7614, %7612
  %7616 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %7617 = extractvalue %dx.types.CBufRet.f32 %7616, 2
  %7618 = fcmp fast ogt float %7617, 0.000000e+00
  br i1 %7618, label %7619, label %7659, !dx.controlflow.hints !131

; <label>:7619                                    ; preds = %7605
  %7620 = fcmp fast ugt float %7617, 0.000000e+00
  br i1 %7620, label %7621, label %7656

; <label>:7621                                    ; preds = %7619
  %7622 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %7623 = extractvalue %dx.types.CBufRet.f32 %7622, 0
  %7624 = extractvalue %dx.types.CBufRet.f32 %7622, 1
  %7625 = extractvalue %dx.types.CBufRet.f32 %7622, 2
  %7626 = extractvalue %dx.types.CBufRet.f32 %7622, 3
  %7627 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %7628 = extractvalue %dx.types.CBufRet.f32 %7627, 0
  %7629 = extractvalue %dx.types.CBufRet.f32 %7627, 1
  %7630 = extractvalue %dx.types.CBufRet.f32 %7627, 2
  %7631 = extractvalue %dx.types.CBufRet.f32 %7627, 3
  %7632 = extractvalue %dx.types.CBufRet.f32 %7616, 0
  %7633 = extractvalue %dx.types.CBufRet.f32 %7616, 1
  %7634 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %7635 = extractvalue %dx.types.CBufRet.f32 %7634, 0
  %7636 = extractvalue %dx.types.CBufRet.f32 %7634, 1
  %7637 = extractvalue %dx.types.CBufRet.f32 %7634, 2
  %7638 = fadd fast float %7635, %6398
  %7639 = fadd fast float %7636, %6399
  %7640 = fadd fast float %7637, %6400
  %7641 = fmul fast float %7638, %7623
  %7642 = call float @dx.op.tertiary.f32(i32 46, float %7624, float %7639, float %7641)  ; FMad(a,b,c)
  %7643 = call float @dx.op.tertiary.f32(i32 46, float %7625, float %7640, float %7642)  ; FMad(a,b,c)
  %7644 = fadd fast float %7643, %7626
  %7645 = fmul fast float %7638, %7628
  %7646 = call float @dx.op.tertiary.f32(i32 46, float %7629, float %7639, float %7645)  ; FMad(a,b,c)
  %7647 = call float @dx.op.tertiary.f32(i32 46, float %7630, float %7640, float %7646)  ; FMad(a,b,c)
  %7648 = fadd fast float %7647, %7631
  %7649 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %51, float %7644, float %7648, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %7650 = extractvalue %dx.types.ResRet.f32 %7649, 0
  %7651 = fmul fast float %7650, %7633
  %7652 = fadd fast float %7651, %7632
  %7653 = call float @dx.op.unary.f32(i32 7, float %7652)  ; Saturate(value)
  %7654 = fmul fast float %7653, %7617
  %7655 = fsub fast float 1.000000e+00, %7654
  br label %7656

; <label>:7656                                    ; preds = %7621, %7619
  %7657 = phi float [ %7655, %7621 ], [ 1.000000e+00, %7619 ]
  %7658 = fmul fast float %7657, %7615
  br label %7659

; <label>:7659                                    ; preds = %7656, %7605, %6378
  %7660 = phi float [ 1.000000e+00, %6378 ], [ %7658, %7656 ], [ %7615, %7605 ]
  %7661 = call float @dx.op.binary.f32(i32 36, float %7660, float %7660)  ; FMin(a,b)
  %7662 = call float @dx.op.binary.f32(i32 36, float %7660, float %7661)  ; FMin(a,b)
  %7663 = fcmp fast ogt float %7662, 0.000000e+00
  br i1 %7663, label %7664, label %7829, !dx.controlflow.hints !132

; <label>:7664                                    ; preds = %7659
  %7665 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %7666 = extractvalue %dx.types.CBufRet.f32 %7665, 0
  %7667 = extractvalue %dx.types.CBufRet.f32 %7665, 1
  %7668 = extractvalue %dx.types.CBufRet.f32 %7665, 2
  %7669 = extractvalue %dx.types.CBufRet.f32 %7665, 3
  %7670 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %7671 = extractvalue %dx.types.CBufRet.f32 %7670, 0
  %7672 = extractvalue %dx.types.CBufRet.f32 %7670, 1
  %7673 = extractvalue %dx.types.CBufRet.f32 %7670, 2
  %7674 = extractvalue %dx.types.CBufRet.f32 %7670, 3
  %7675 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %7676 = extractvalue %dx.types.CBufRet.f32 %7675, 0
  %7677 = extractvalue %dx.types.CBufRet.f32 %7675, 1
  %7678 = extractvalue %dx.types.CBufRet.f32 %7675, 2
  %7679 = extractvalue %dx.types.CBufRet.f32 %7675, 3
  %7680 = fmul fast float %7666, %6398
  %7681 = call float @dx.op.tertiary.f32(i32 46, float %6399, float %7667, float %7680)  ; FMad(a,b,c)
  %7682 = call float @dx.op.tertiary.f32(i32 46, float %6400, float %7668, float %7681)  ; FMad(a,b,c)
  %7683 = fadd fast float %7682, %7669
  %7684 = fmul fast float %7671, %6398
  %7685 = call float @dx.op.tertiary.f32(i32 46, float %6399, float %7672, float %7684)  ; FMad(a,b,c)
  %7686 = call float @dx.op.tertiary.f32(i32 46, float %6400, float %7673, float %7685)  ; FMad(a,b,c)
  %7687 = fadd fast float %7686, %7674
  %7688 = fmul fast float %7676, %6398
  %7689 = call float @dx.op.tertiary.f32(i32 46, float %6399, float %7677, float %7688)  ; FMad(a,b,c)
  %7690 = call float @dx.op.tertiary.f32(i32 46, float %6400, float %7678, float %7689)  ; FMad(a,b,c)
  %7691 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %7692 = extractvalue %dx.types.CBufRet.f32 %7691, 0
  %7693 = extractvalue %dx.types.CBufRet.f32 %7691, 1
  %7694 = extractvalue %dx.types.CBufRet.f32 %7691, 3
  %7695 = fmul fast float %7694, %7683
  %7696 = fmul fast float %7694, %7687
  %7697 = fadd fast float %7695, %7692
  %7698 = fadd fast float %7696, %7693
  %7699 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %7700 = extractvalue %dx.types.CBufRet.f32 %7699, 0
  %7701 = extractvalue %dx.types.CBufRet.f32 %7699, 1
  %7702 = fsub fast float %7697, %7700
  %7703 = fsub fast float %7698, %7701
  %7704 = fcmp fast olt float %7702, 0.000000e+00
  %7705 = fcmp fast olt float %7703, 0.000000e+00
  %7706 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %7707 = extractvalue %dx.types.CBufRet.f32 %7706, 0
  %7708 = extractvalue %dx.types.CBufRet.f32 %7706, 1
  %7709 = extractvalue %dx.types.CBufRet.f32 %7706, 2
  %7710 = extractvalue %dx.types.CBufRet.f32 %7706, 3
  %7711 = select i1 %7704, float %7707, float %7709
  %7712 = select i1 %7705, float %7708, float %7710
  %7713 = fmul fast float %7711, %7702
  %7714 = fmul fast float %7712, %7703
  %7715 = call float @dx.op.unary.f32(i32 6, float %7713)  ; FAbs(value)
  %7716 = call float @dx.op.unary.f32(i32 6, float %7714)  ; FAbs(value)
  %7717 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %7718 = extractvalue %dx.types.CBufRet.f32 %7717, 0
  %7719 = call float @dx.op.binary.f32(i32 35, float %7715, float %7716)  ; FMax(a,b)
  %7720 = fsub fast float %7718, %7719
  %7721 = call float @dx.op.unary.f32(i32 7, float %7720)  ; Saturate(value)
  %7722 = fcmp fast ogt float %7721, 0.000000e+00
  br i1 %7722, label %7723, label %7764, !dx.controlflow.hints !133

; <label>:7723                                    ; preds = %7664
  %7724 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %54, float %7697, float %7698, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7725 = extractvalue %dx.types.ResRet.f32 %7724, 1
  %7726 = fcmp fast ogt float %7725, 0.000000e+00
  br i1 %7726, label %7727, label %7759

; <label>:7727                                    ; preds = %7723
  %7728 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %54, float %7697, float %7698, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7729 = extractvalue %dx.types.ResRet.f32 %7728, 0
  %7730 = extractvalue %dx.types.ResRet.f32 %7728, 1
  %7731 = extractvalue %dx.types.ResRet.f32 %7728, 2
  %7732 = extractvalue %dx.types.ResRet.f32 %7728, 3
  %7733 = fsub fast float 1.000000e+00, %7679
  %7734 = fsub fast float %7733, %7690
  %7735 = fmul fast float %7734, 0x400921FB60000000
  %7736 = fadd fast float %7735, 0x3FF921FB60000000
  %7737 = call float @dx.op.unary.f32(i32 13, float %7736)  ; Sin(value)
  %7738 = fadd fast float %7737, -1.000000e+00
  %7739 = fmul fast float %7738, 0x3FD45F3060000000
  %7740 = fmul fast float %7734, 0x401921FB60000000
  %7741 = fadd fast float %7740, 0x400921FB60000000
  %7742 = call float @dx.op.unary.f32(i32 13, float %7741)  ; Sin(value)
  %7743 = fadd fast float %7742, 0x3E7777A5C0000000
  %7744 = fmul fast float %7743, 0x3FC45F3060000000
  %7745 = fmul fast float %7734, 0x4022D97C80000000
  %7746 = fadd fast float %7745, 0x4012D97C80000000
  %7747 = call float @dx.op.unary.f32(i32 13, float %7746)  ; Sin(value)
  %7748 = fadd fast float %7747, 1.000000e+00
  %7749 = fmul fast float %7748, 0x3FBB2995E0000000
  %7750 = fmul fast float %7734, 0x402921FB60000000
  %7751 = fadd fast float %7750, 0x401921FB60000000
  %7752 = call float @dx.op.unary.f32(i32 13, float %7751)  ; Sin(value)
  %7753 = fadd fast float %7752, 0xBE8777A5C0000000
  %7754 = fmul fast float %7753, 0x3FB45F3060000000
  %7755 = call float @dx.op.dot4.f32(i32 56, float %7729, float %7730, float %7731, float %7732, float %7739, float %7744, float %7749, float %7754)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %7756 = fmul fast float %7755, 0xBFF7154760000000
  %7757 = call float @dx.op.unary.f32(i32 21, float %7756)  ; Exp(value)
  %7758 = call float @dx.op.unary.f32(i32 7, float %7757)  ; Saturate(value)
  br label %7759

; <label>:7759                                    ; preds = %7727, %7723
  %7760 = phi float [ %7758, %7727 ], [ 1.000000e+00, %7723 ]
  %7761 = fadd fast float %7760, -1.000000e+00
  %7762 = fmul fast float %7761, %7721
  %7763 = fadd fast float %7762, 1.000000e+00
  br label %7764

; <label>:7764                                    ; preds = %7759, %7664
  %7765 = phi float [ %7763, %7759 ], [ 1.000000e+00, %7664 ]
  %7766 = fmul fast float %7765, %7660
  %7767 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %7768 = extractvalue %dx.types.CBufRet.f32 %7767, 0
  %7769 = extractvalue %dx.types.CBufRet.f32 %7767, 1
  %7770 = extractvalue %dx.types.CBufRet.f32 %7767, 2
  %7771 = fadd fast float %7768, %201
  %7772 = fadd fast float %7769, %202
  %7773 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %7774 = extractvalue %dx.types.CBufRet.f32 %7773, 1
  %7775 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %7776 = extractvalue %dx.types.CBufRet.f32 %7775, 0
  %7777 = extractvalue %dx.types.CBufRet.f32 %7775, 1
  %7778 = extractvalue %dx.types.CBufRet.f32 %7775, 2
  %7779 = fsub fast float -0.000000e+00, %7771
  %7780 = fsub fast float -0.000000e+00, %7772
  %7781 = fsub fast float %5622, %7770
  %7782 = fadd fast float %7781, %7774
  %7783 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7779, float %7780, float %7782)  ; Dot3(ax,ay,az,bx,by,bz)
  %7784 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7776, float %7777, float %7778)  ; Dot3(ax,ay,az,bx,by,bz)
  %7785 = fdiv fast float 1.000000e+00, %7784
  %7786 = fmul fast float %7785, %7783
  %7787 = fmul fast float %7776, %7786
  %7788 = fmul fast float %7777, %7786
  %7789 = fadd fast float %7787, %7771
  %7790 = fadd fast float %7788, %7772
  %7791 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %7792 = extractvalue %dx.types.CBufRet.f32 %7791, 0
  %7793 = extractvalue %dx.types.CBufRet.f32 %7791, 1
  %7794 = fsub fast float %7789, %7792
  %7795 = fsub fast float %7790, %7793
  %7796 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %7797 = extractvalue %dx.types.CBufRet.f32 %7796, 2
  %7798 = extractvalue %dx.types.CBufRet.f32 %7796, 3
  %7799 = fmul fast float %7794, %7797
  %7800 = fmul fast float %7795, %7798
  %7801 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %7802 = extractvalue %dx.types.CBufRet.i32 %7801, 3
  %7803 = icmp eq i32 %7802, 0
  br i1 %7803, label %7809, label %7804

; <label>:7804                                    ; preds = %7764
  %7805 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %53, float %7799, float %7800, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7806 = extractvalue %dx.types.ResRet.f32 %7805, 0
  %7807 = extractvalue %dx.types.ResRet.f32 %7805, 1
  %7808 = extractvalue %dx.types.ResRet.f32 %7805, 2
  br label %7814

; <label>:7809                                    ; preds = %7764
  %7810 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %54, float %7799, float %7800, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7811 = extractvalue %dx.types.ResRet.f32 %7810, 0
  %7812 = extractvalue %dx.types.ResRet.f32 %7810, 1
  %7813 = extractvalue %dx.types.ResRet.f32 %7810, 2
  br label %7814

; <label>:7814                                    ; preds = %7809, %7804
  %7815 = phi float [ %7806, %7804 ], [ %7811, %7809 ]
  %7816 = phi float [ %7807, %7804 ], [ %7812, %7809 ]
  %7817 = phi float [ %7808, %7804 ], [ %7813, %7809 ]
  %7818 = extractvalue %dx.types.CBufRet.f32 %7773, 2
  %7819 = fmul fast float %7818, %7815
  %7820 = extractvalue %dx.types.CBufRet.f32 %7773, 0
  %7821 = fsub fast float %7786, %7820
  %7822 = fsub fast float %7821, %7819
  %7823 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7822)  ; FMax(a,b)
  %7824 = fmul fast float %7823, %7816
  %7825 = call float @dx.op.binary.f32(i32 36, float %7817, float %7824)  ; FMin(a,b)
  %7826 = fmul fast float %7825, 0xBFF7154760000000
  %7827 = call float @dx.op.unary.f32(i32 21, float %7826)  ; Exp(value)
  %7828 = fmul fast float %7766, %7827
  br label %7829

; <label>:7829                                    ; preds = %7814, %7659
  %7830 = phi float [ %7828, %7814 ], [ %7660, %7659 ]
  %7831 = call float @dx.op.binary.f32(i32 36, float %7830, float %7830)  ; FMin(a,b)
  %7832 = call float @dx.op.binary.f32(i32 36, float %7830, float %7831)  ; FMin(a,b)
  %7833 = fcmp fast ogt float %7832, 0.000000e+00
  br i1 %7833, label %7834, label %8094, !dx.controlflow.hints !134

; <label>:7834                                    ; preds = %7829
  %7835 = fmul fast float %7830, %6390
  %7836 = fmul fast float %7830, %6391
  %7837 = fmul fast float %7830, %6392
  %7838 = fsub fast float %203, %4821
  %7839 = fcmp fast ogt float %7838, 0.000000e+00
  %7840 = fmul fast float %6379, 5.120000e+02
  %7841 = fmul fast float %6380, 5.120000e+02
  %7842 = fmul fast float %6381, 5.120000e+02
  %7843 = fadd fast float %7842, %203
  %7844 = fsub fast float %4821, %7843
  %7845 = fmul fast float %7844, 2.000000e+00
  %7846 = fadd fast float %7845, %7843
  %7847 = select i1 %7839, float %7846, float %7843
  %7848 = fsub fast float %7847, %203
  %7849 = call float @dx.op.dot3.f32(i32 55, float %7840, float %7841, float %7848, float %7840, float %7841, float %7848)  ; Dot3(ax,ay,az,bx,by,bz)
  %7850 = call float @dx.op.unary.f32(i32 25, float %7849)  ; Rsqrt(value)
  %7851 = fmul fast float %7850, %7840
  %7852 = fmul fast float %7850, %7841
  %7853 = fmul fast float %7850, %7848
  %7854 = fsub fast float %4821, %203
  %7855 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %7854)  ; Dot3(ax,ay,az,bx,by,bz)
  %7856 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7851, float %7852, float %7853)  ; Dot3(ax,ay,az,bx,by,bz)
  %7857 = fdiv fast float 1.000000e+00, %7856
  %7858 = fmul fast float %7857, %7855
  %7859 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %7838, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7860 = fcmp fast ogt float %7859, 0.000000e+00
  %7861 = fcmp fast olt float %7859, 0.000000e+00
  %7862 = zext i1 %7860 to i32
  %7863 = zext i1 %7861 to i32
  %7864 = sub nsw i32 %7862, %7863
  %7865 = sitofp i32 %7864 to float
  %7866 = fsub fast float %7847, %4821
  %7867 = call float @dx.op.dot3.f32(i32 55, float %7840, float %7841, float %7866, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7868 = fcmp fast ogt float %7867, 0.000000e+00
  %7869 = fcmp fast olt float %7867, 0.000000e+00
  %7870 = zext i1 %7868 to i32
  %7871 = zext i1 %7869 to i32
  %7872 = sub nsw i32 %7870, %7871
  %7873 = sitofp i32 %7872 to float
  %7874 = fcmp fast une float %7865, %7873
  br i1 %7874, label %7875, label %7885

; <label>:7875                                    ; preds = %7834
  %7876 = fmul fast float %7858, %7853
  %7877 = fmul fast float %7858, %7852
  %7878 = fmul fast float %7858, %7851
  %7879 = fmul fast float %7878, %7878
  %7880 = fmul fast float %7877, %7877
  %7881 = fadd fast float %7879, %7880
  %7882 = fmul fast float %7876, %7876
  %7883 = fadd fast float %7881, %7882
  %7884 = call float @dx.op.unary.f32(i32 24, float %7883)  ; Sqrt(value)
  br label %7895

; <label>:7885                                    ; preds = %7834
  %7886 = icmp slt i32 %7864, 0
  br i1 %7886, label %7887, label %7895

; <label>:7887                                    ; preds = %7885
  %7888 = fsub fast float %203, %7847
  %7889 = fmul fast float %7840, %7840
  %7890 = fmul fast float %7841, %7841
  %7891 = fadd fast float %7889, %7890
  %7892 = fmul fast float %7888, %7888
  %7893 = fadd fast float %7891, %7892
  %7894 = call float @dx.op.unary.f32(i32 24, float %7893)  ; Sqrt(value)
  br label %7895

; <label>:7895                                    ; preds = %7887, %7885, %7875
  %7896 = phi float [ %7884, %7875 ], [ %7894, %7887 ], [ 0.000000e+00, %7885 ]
  %7897 = fsub fast float -0.000000e+00, %7896
  %7898 = select i1 %7839, float -0.000000e+00, float %7897
  %7899 = fmul fast float %4818, 0x3FF7154760000000
  %7900 = fmul fast float %7899, %7898
  %7901 = fmul fast float %4819, 0x3FF7154760000000
  %7902 = fmul fast float %7901, %7898
  %7903 = fmul fast float %4820, 0x3FF7154760000000
  %7904 = fmul fast float %7903, %7898
  %7905 = call float @dx.op.unary.f32(i32 21, float %7900)  ; Exp(value)
  %7906 = call float @dx.op.unary.f32(i32 21, float %7902)  ; Exp(value)
  %7907 = call float @dx.op.unary.f32(i32 21, float %7904)  ; Exp(value)
  %7908 = call float @dx.op.unary.f32(i32 7, float %7905)  ; Saturate(value)
  %7909 = call float @dx.op.unary.f32(i32 7, float %7906)  ; Saturate(value)
  %7910 = call float @dx.op.unary.f32(i32 7, float %7907)  ; Saturate(value)
  %7911 = fmul fast float %7835, %7908
  %7912 = fmul fast float %7836, %7909
  %7913 = fmul fast float %7837, %7910
  %7914 = fsub fast float %6379, %5610
  %7915 = fsub fast float %6380, %5609
  %7916 = fsub fast float %6381, %5608
  %7917 = call float @dx.op.dot3.f32(i32 55, float %7914, float %7915, float %7916, float %7914, float %7915, float %7916)  ; Dot3(ax,ay,az,bx,by,bz)
  %7918 = call float @dx.op.unary.f32(i32 25, float %7917)  ; Rsqrt(value)
  %7919 = fmul fast float %7918, %7914
  %7920 = fmul fast float %7918, %7915
  %7921 = fmul fast float %7918, %7916
  %7922 = call float @dx.op.dot3.f32(i32 55, float %6379, float %6380, float %6381, float %5617, float %5618, float %5619)  ; Dot3(ax,ay,az,bx,by,bz)
  %7923 = call float @dx.op.dot3.f32(i32 55, float %5607, float %5606, float %5605, float %7919, float %7920, float %7921)  ; Dot3(ax,ay,az,bx,by,bz)
  %7924 = call float @dx.op.unary.f32(i32 7, float %7922)  ; Saturate(value)
  %7925 = bitcast i32 %5649 to float
  %7926 = fmul fast float %7924, %7924
  %7927 = fmul fast float %7926, %7925
  %7928 = call float @dx.op.unary.f32(i32 7, float %7927)  ; Saturate(value)
  %7929 = fmul fast float %7928, %7924
  %7930 = call float @dx.op.dot3.f32(i32 55, float %5617, float %5618, float %5619, float %7919, float %7920, float %7921)  ; Dot3(ax,ay,az,bx,by,bz)
  %7931 = fmul fast float %7930, %7930
  %7932 = call float @dx.op.unary.f32(i32 6, float %7922)  ; FAbs(value)
  %7933 = fsub fast float 1.000000e+00, %5643
  %7934 = fmul fast float %5625, %5625
  %7935 = fmul fast float %7934, %7933
  %7936 = fadd fast float %7935, %5643
  %7937 = bitcast float %7936 to i32
  %7938 = ashr i32 %7937, 1
  %7939 = add nsw i32 %7938, 532487669
  %7940 = bitcast i32 %7939 to float
  %7941 = fadd fast float %7940, %5625
  %7942 = fmul fast float %5643, %7931
  %7943 = fsub fast float 1.000000e+00, %7931
  %7944 = fadd fast float %7943, %7942
  %7945 = fmul fast float %7932, %7932
  %7946 = fmul fast float %7945, %7933
  %7947 = fadd fast float %7946, %5643
  %7948 = bitcast float %7947 to i32
  %7949 = ashr i32 %7948, 1
  %7950 = add nsw i32 %7949, 532487669
  %7951 = bitcast i32 %7950 to float
  %7952 = fadd fast float %7951, %7932
  %7953 = fmul fast float %7944, %7944
  %7954 = fmul fast float %7953, %7941
  %7955 = fmul fast float %7954, %7952
  %7956 = fdiv fast float 0x3FF0A00000000000, %7955
  %7957 = fmul fast float %7956, %5643
  %7958 = fmul fast float %5749, 0x3FF9999980000000
  %7959 = fsub fast float 5.000000e+00, %7958
  %7960 = call float @dx.op.unary.f32(i32 6, float %7923)  ; FAbs(value)
  %7961 = fsub fast float 1.000000e+00, %7960
  %7962 = fmul fast float %5749, 0x41D9660740000000
  %7963 = fadd fast float %7962, 0xC1EFBF8940000000
  %7964 = bitcast float %7961 to i32
  %7965 = sitofp i32 %7964 to float
  %7966 = fmul fast float %7965, %7959
  %7967 = fadd fast float %7963, %7966
  %7968 = fptosi float %7967 to i32
  %7969 = bitcast i32 %7968 to float
  %7970 = fsub fast float 1.000000e+00, %5614
  %7971 = fsub fast float 1.000000e+00, %5615
  %7972 = fsub fast float 1.000000e+00, %5623
  %7973 = fmul fast float %7969, %7970
  %7974 = fmul fast float %7969, %7971
  %7975 = fmul fast float %7969, %7972
  %7976 = fadd fast float %7973, %5614
  %7977 = fadd fast float %7974, %5615
  %7978 = fadd fast float %7975, %5623
  br i1 %5772, label %7979, label %8002

; <label>:7979                                    ; preds = %7895
  %7980 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %54, float %4413, float %7960, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7981 = extractvalue %dx.types.ResRet.f32 %7980, 0
  %7982 = extractvalue %dx.types.ResRet.f32 %7980, 1
  %7983 = extractvalue %dx.types.ResRet.f32 %7980, 2
  %7984 = fadd fast float %7981, -5.000000e-01
  %7985 = fadd fast float %7982, -5.000000e-01
  %7986 = fadd fast float %7983, -5.000000e-01
  %7987 = fmul fast float %5614, 4.000000e+00
  %7988 = fmul fast float %7987, %7970
  %7989 = fmul fast float %7988, %7984
  %7990 = fmul fast float %5615, 4.000000e+00
  %7991 = fmul fast float %7990, %7971
  %7992 = fmul fast float %7991, %7985
  %7993 = fmul fast float %5623, 4.000000e+00
  %7994 = fmul fast float %7993, %7972
  %7995 = fmul fast float %7994, %7986
  %7996 = fadd fast float %7989, %7976
  %7997 = fadd fast float %7992, %7977
  %7998 = fadd fast float %7995, %7978
  %7999 = call float @dx.op.unary.f32(i32 7, float %7996)  ; Saturate(value)
  %8000 = call float @dx.op.unary.f32(i32 7, float %7997)  ; Saturate(value)
  %8001 = call float @dx.op.unary.f32(i32 7, float %7998)  ; Saturate(value)
  br label %8002

; <label>:8002                                    ; preds = %7979, %7895
  %8003 = phi float [ %7999, %7979 ], [ %7976, %7895 ]
  %8004 = phi float [ %8000, %7979 ], [ %7977, %7895 ]
  %8005 = phi float [ %8001, %7979 ], [ %7978, %7895 ]
  %8006 = fmul fast float %7922, 9.843750e-01
  %8007 = fadd fast float %8006, 7.812500e-03
  %8008 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %48, %dx.types.Handle %54, float %8007, float %5753, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8009 = extractvalue %dx.types.ResRet.f32 %8008, 0
  %8010 = extractvalue %dx.types.ResRet.f32 %8008, 1
  %8011 = extractvalue %dx.types.ResRet.f32 %8008, 2
  %8012 = extractvalue %dx.types.ResRet.f32 %8008, 3
  %8013 = fsub fast float %8011, %8009
  %8014 = fsub fast float %8012, %8010
  %8015 = fmul fast float %8013, %5759
  %8016 = fmul fast float %8014, %5759
  %8017 = fadd fast float %8015, %8009
  %8018 = fadd fast float %8016, %8010
  %8019 = fmul fast float %8017, %5614
  %8020 = fmul fast float %8017, %5615
  %8021 = fmul fast float %8017, %5623
  %8022 = fadd fast float %8019, %8018
  %8023 = fadd fast float %8020, %8018
  %8024 = fadd fast float %8021, %8018
  br i1 %5772, label %8025, label %8048

; <label>:8025                                    ; preds = %8002
  %8026 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %54, float %4413, float %7922, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8027 = extractvalue %dx.types.ResRet.f32 %8026, 0
  %8028 = extractvalue %dx.types.ResRet.f32 %8026, 1
  %8029 = extractvalue %dx.types.ResRet.f32 %8026, 2
  %8030 = fadd fast float %8027, -5.000000e-01
  %8031 = fadd fast float %8028, -5.000000e-01
  %8032 = fadd fast float %8029, -5.000000e-01
  %8033 = fmul fast float %5614, 4.000000e+00
  %8034 = fmul fast float %8033, %7970
  %8035 = fmul fast float %8034, %8030
  %8036 = fmul fast float %5615, 4.000000e+00
  %8037 = fmul fast float %8036, %7971
  %8038 = fmul fast float %8037, %8031
  %8039 = fmul fast float %5623, 4.000000e+00
  %8040 = fmul fast float %8039, %7972
  %8041 = fmul fast float %8040, %8032
  %8042 = fadd fast float %8035, %8022
  %8043 = fadd fast float %8038, %8023
  %8044 = fadd fast float %8041, %8024
  %8045 = call float @dx.op.unary.f32(i32 7, float %8042)  ; Saturate(value)
  %8046 = call float @dx.op.unary.f32(i32 7, float %8043)  ; Saturate(value)
  %8047 = call float @dx.op.unary.f32(i32 7, float %8044)  ; Saturate(value)
  br label %8048

; <label>:8048                                    ; preds = %8025, %8002
  %8049 = phi float [ %8045, %8025 ], [ %8022, %8002 ]
  %8050 = phi float [ %8046, %8025 ], [ %8023, %8002 ]
  %8051 = phi float [ %8047, %8025 ], [ %8024, %8002 ]
  %8052 = call float @dx.op.binary.f32(i32 35, float %8050, float %8051)  ; FMax(a,b)
  %8053 = call float @dx.op.binary.f32(i32 35, float %8049, float %8052)  ; FMax(a,b)
  %8054 = fsub fast float 1.000000e+00, %8053
  %8055 = fmul fast float %8003, %7957
  %8056 = fmul fast float %8004, %7957
  %8057 = fmul fast float %8005, %7957
  %8058 = fsub fast float 1.000000e+00, %7923
  %8059 = bitcast float %8058 to i32
  %8060 = sitofp i32 %8059 to float
  %8061 = fmul fast float %8060, 5.000000e+00
  %8062 = fadd fast float %8061, 0xC1EFBF8940000000
  %8063 = fptosi float %8062 to i32
  %8064 = bitcast i32 %8063 to float
  %8065 = fmul fast float %8064, %4414
  %8066 = fmul fast float %8054, %8065
  %8067 = fmul fast float %8066, %6314
  %8068 = fmul fast float %8066, %6315
  %8069 = fmul fast float %8066, %6316
  %8070 = fadd fast float %8067, %8055
  %8071 = fadd fast float %8068, %8056
  %8072 = fadd fast float %8069, %8057
  %8073 = fmul fast float %7929, %7911
  %8074 = fmul fast float %8073, %8054
  %8075 = fmul fast float %7929, %7912
  %8076 = fmul fast float %8075, %8054
  %8077 = fmul fast float %7929, %7913
  %8078 = fmul fast float %8077, %8054
  %8079 = fmul fast float %8073, %8070
  %8080 = fmul fast float %8075, %8071
  %8081 = fmul fast float %8077, %8072
  %8082 = fadd fast float %8074, %6298
  %8083 = fmul fast float %8082, %4410
  %8084 = fadd fast float %8076, %6299
  %8085 = fmul fast float %8084, %4410
  %8086 = fadd fast float %8078, %6300
  %8087 = fmul fast float %8086, %4410
  %8088 = fadd fast float %8079, %6367
  %8089 = fmul fast float %8088, %4410
  %8090 = fadd fast float %8080, %6370
  %8091 = fmul fast float %8090, %4410
  %8092 = fadd fast float %8081, %6373
  %8093 = fmul fast float %8092, %4410
  br label %8094

; <label>:8094                                    ; preds = %8048, %7829, %6294
  %8095 = phi float [ %6368, %6294 ], [ %6368, %7829 ], [ %8089, %8048 ]
  %8096 = phi float [ %6371, %6294 ], [ %6371, %7829 ], [ %8091, %8048 ]
  %8097 = phi float [ %6374, %6294 ], [ %6374, %7829 ], [ %8093, %8048 ]
  %8098 = phi float [ %6363, %6294 ], [ %6363, %7829 ], [ %8083, %8048 ]
  %8099 = phi float [ %6364, %6294 ], [ %6364, %7829 ], [ %8085, %8048 ]
  %8100 = phi float [ %6365, %6294 ], [ %6365, %7829 ], [ %8087, %8048 ]
  %8101 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %8102 = extractvalue %dx.types.CBufRet.i32 %8101, 0
  %8103 = icmp eq i32 %8102, 0
  br i1 %8103, label %8779, label %8104

; <label>:8104                                    ; preds = %8094
  %8105 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %8106 = extractvalue %dx.types.CBufRet.f32 %8105, 2
  %8107 = extractvalue %dx.types.CBufRet.f32 %8105, 3
  %8108 = fmul fast float %8106, %114
  %8109 = fmul fast float %8107, %115
  %8110 = fptoui float %8108 to i32
  %8111 = fptoui float %8109 to i32
  %8112 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %8113 = extractvalue %dx.types.CBufRet.f32 %8112, 0
  %8114 = extractvalue %dx.types.CBufRet.f32 %8112, 2
  %8115 = extractvalue %dx.types.CBufRet.f32 %8112, 3
  %8116 = fadd fast float %101, -4.000000e+00
  %8117 = call float @dx.op.binary.f32(i32 35, float %8116, float 0.000000e+00)  ; FMax(a,b)
  %8118 = fadd fast float %8117, %8113
  %8119 = fmul fast float %8118, %8114
  %8120 = call float @dx.op.unary.f32(i32 23, float %8119)  ; Log(value)
  %8121 = fmul fast float %8120, %8115
  %8122 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8123 = extractvalue %dx.types.CBufRet.f32 %8122, 2
  %8124 = fmul fast float %8121, %8123
  %8125 = call float @dx.op.unary.f32(i32 7, float %8124)  ; Saturate(value)
  %8126 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8127 = extractvalue %dx.types.CBufRet.i32 %8126, 1
  %8128 = add i32 %8127, -1
  %8129 = uitofp i32 %8127 to float
  %8130 = fmul fast float %8129, %8125
  %8131 = fptoui float %8130 to i32
  %8132 = call i32 @dx.op.binary.i32(i32 40, i32 %8131, i32 %8128)  ; UMin(a,b)
  %8133 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %8134 = extractvalue %dx.types.CBufRet.i32 %8133, 2
  %8135 = extractvalue %dx.types.CBufRet.i32 %8133, 3
  %8136 = call i32 @dx.op.tertiary.i32(i32 49, i32 %8111, i32 %8134, i32 %8110)  ; UMad(a,b,c)
  %8137 = call i32 @dx.op.tertiary.i32(i32 49, i32 %8132, i32 %8135, i32 %8136)  ; UMad(a,b,c)
  %8138 = add nsw i32 %8102, -1
  %8139 = call i32 @dx.op.binary.i32(i32 37, i32 %8138, i32 0)  ; IMax(a,b)
  %8140 = call float @dx.op.binary.f32(i32 35, float %101, float 0.000000e+00)  ; FMax(a,b)
  %8141 = fptoui float %8140 to i32
  %8142 = lshr i32 %8141, 5
  %8143 = call i32 @dx.op.binary.i32(i32 40, i32 %8142, i32 8191)  ; UMin(a,b)
  %8144 = shl i32 %8143, 2
  %8145 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %8144, i32 undef)  ; BufferLoad(srv,index,wot)
  %8146 = extractvalue %dx.types.ResRet.i32 %8145, 0
  %8147 = lshr i32 %8146, 16
  %8148 = and i32 %8146, 65535
  %8149 = lshr i32 %8146, 21
  %8150 = lshr i32 %8148, 5
  %8151 = call i32 @dx.op.binary.i32(i32 40, i32 %8150, i32 %8139)  ; UMin(a,b)
  %8152 = icmp ugt i32 %8149, %8151
  br i1 %8152, label %8779, label %8153

; <label>:8153                                    ; preds = %8104
  br label %8154

; <label>:8154                                    ; preds = %8769, %8153
  %8155 = phi i32 [ %8776, %8769 ], [ %8149, %8153 ]
  %8156 = phi float [ %8770, %8769 ], [ %8095, %8153 ]
  %8157 = phi float [ %8771, %8769 ], [ %8096, %8153 ]
  %8158 = phi float [ %8772, %8769 ], [ %8097, %8153 ]
  %8159 = phi float [ %8773, %8769 ], [ %8098, %8153 ]
  %8160 = phi float [ %8774, %8769 ], [ %8099, %8153 ]
  %8161 = phi float [ %8775, %8769 ], [ %8100, %8153 ]
  %8162 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %8163 = extractvalue %dx.types.CBufRet.i32 %8162, 0
  %8164 = call i32 @dx.op.tertiary.i32(i32 49, i32 %8137, i32 %8163, i32 %8155)  ; UMad(a,b,c)
  %8165 = shl i32 %8164, 2
  %8166 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %8165, i32 undef)  ; BufferLoad(srv,index,wot)
  %8167 = extractvalue %dx.types.ResRet.i32 %8166, 0
  %8168 = shl i32 %8155, 5
  %8169 = sub nsw i32 %8147, %8168
  %8170 = call i32 @dx.op.binary.i32(i32 37, i32 %8169, i32 0)  ; IMax(a,b)
  %8171 = call i32 @dx.op.binary.i32(i32 38, i32 %8170, i32 31)  ; IMin(a,b)
  %8172 = sub nsw i32 1, %8147
  %8173 = add nsw i32 %8172, %8148
  %8174 = call i32 @dx.op.binary.i32(i32 37, i32 %8173, i32 0)  ; IMax(a,b)
  %8175 = call i32 @dx.op.binary.i32(i32 38, i32 %8174, i32 32)  ; IMin(a,b)
  %8176 = and i32 %8175, 31
  %8177 = shl i32 -1, %8176
  %8178 = xor i32 %8177, -1
  %8179 = and i32 %8171, 31
  %8180 = shl i32 %8178, %8179
  %8181 = icmp eq i32 %8175, 32
  %8182 = select i1 %8181, i32 -1, i32 %8180
  %8183 = and i32 %8182, %8167
  %8184 = icmp eq i32 %8183, 0
  br i1 %8184, label %8769, label %8185

; <label>:8185                                    ; preds = %8154
  br label %8186

; <label>:8186                                    ; preds = %8320, %8185
  %8187 = phi i32 [ %8198, %8320 ], [ %8183, %8185 ]
  %8188 = phi float [ %8321, %8320 ], [ %8156, %8185 ]
  %8189 = phi float [ %8322, %8320 ], [ %8157, %8185 ]
  %8190 = phi float [ %8323, %8320 ], [ %8158, %8185 ]
  %8191 = phi float [ %8324, %8320 ], [ %8159, %8185 ]
  %8192 = phi float [ %8325, %8320 ], [ %8160, %8185 ]
  %8193 = phi float [ %8326, %8320 ], [ %8161, %8185 ]
  %8194 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %8187)  ; FirstbitLo(value)
  %8195 = add i32 %8194, %8168
  %8196 = and i32 %8194, 31
  %8197 = shl i32 1, %8196
  %8198 = xor i32 %8197, %8187
  %8199 = mul i32 %8195, 112
  %8200 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %8199, i32 undef)  ; BufferLoad(srv,index,wot)
  %8201 = extractvalue %dx.types.ResRet.f32 %8200, 0
  %8202 = extractvalue %dx.types.ResRet.f32 %8200, 1
  %8203 = extractvalue %dx.types.ResRet.f32 %8200, 2
  %8204 = or i32 %8199, 12
  %8205 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %8204, i32 undef)  ; BufferLoad(srv,index,wot)
  %8206 = extractvalue %dx.types.ResRet.f32 %8205, 0
  %8207 = add i32 %8199, 16
  %8208 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %8207, i32 undef)  ; BufferLoad(srv,index,wot)
  %8209 = extractvalue %dx.types.ResRet.f32 %8208, 0
  %8210 = extractvalue %dx.types.ResRet.f32 %8208, 1
  %8211 = extractvalue %dx.types.ResRet.f32 %8208, 2
  %8212 = add i32 %8199, 28
  %8213 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %8212, i32 undef)  ; BufferLoad(srv,index,wot)
  %8214 = extractvalue %dx.types.ResRet.i32 %8213, 0
  %8215 = add i32 %8199, 44
  %8216 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %8215, i32 undef)  ; BufferLoad(srv,index,wot)
  %8217 = extractvalue %dx.types.ResRet.f32 %8216, 0
  %8218 = add i32 %8199, 48
  %8219 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %8218, i32 undef)  ; BufferLoad(srv,index,wot)
  %8220 = extractvalue %dx.types.ResRet.f32 %8219, 0
  %8221 = extractvalue %dx.types.ResRet.f32 %8219, 1
  %8222 = extractvalue %dx.types.ResRet.f32 %8219, 2
  %8223 = extractvalue %dx.types.ResRet.f32 %8219, 3
  %8224 = add i32 %8199, 64
  %8225 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %8224, i32 undef)  ; BufferLoad(srv,index,wot)
  %8226 = extractvalue %dx.types.ResRet.f32 %8225, 0
  %8227 = extractvalue %dx.types.ResRet.f32 %8225, 1
  %8228 = extractvalue %dx.types.ResRet.f32 %8225, 2
  %8229 = extractvalue %dx.types.ResRet.f32 %8225, 3
  %8230 = add i32 %8199, 80
  %8231 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %8230, i32 undef)  ; BufferLoad(srv,index,wot)
  %8232 = extractvalue %dx.types.ResRet.f32 %8231, 1
  %8233 = extractvalue %dx.types.ResRet.f32 %8231, 2
  %8234 = add i32 %8199, 92
  %8235 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %8234, i32 undef)  ; BufferLoad(srv,index,wot)
  %8236 = extractvalue %dx.types.ResRet.i32 %8235, 0
  %8237 = call float @dx.op.dot3.f32(i32 55, float %8201, float %8202, float %8203, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8238 = select i1 %260, float %8232, float %8201
  %8239 = select i1 %260, float %8237, float %8202
  %8240 = select i1 %260, float %8233, float %8203
  %8241 = and i32 %8236, 65535
  %8242 = uitofp i32 %8241 to float
  %8243 = lshr i32 %8236, 16
  %8244 = uitofp i32 %8243 to float
  %8245 = and i32 %8214, 65535
  %8246 = and i32 %8214, 50331648
  %8247 = icmp eq i32 %8246, 33554432
  %8248 = fsub fast float %8220, %201
  %8249 = fsub fast float %8221, %202
  %8250 = fsub fast float %8222, %203
  %8251 = call float @dx.op.dot3.f32(i32 55, float %8248, float %8249, float %8250, float %8248, float %8249, float %8250)  ; Dot3(ax,ay,az,bx,by,bz)
  %8252 = call float @dx.op.unary.f32(i32 24, float %8251)  ; Sqrt(value)
  %8253 = fdiv fast float 1.000000e+00, %8252
  %8254 = fmul fast float %8253, %8248
  %8255 = fmul fast float %8253, %8249
  %8256 = fmul fast float %8253, %8250
  %8257 = fadd fast float %8252, %8206
  %8258 = fdiv fast float 1.000000e+00, %8257
  %8259 = fmul float %8217, %8258
  %8260 = fmul float %8259, %8259
  %8261 = call float @dx.op.unary.f32(i32 7, float %8260)  ; Saturate(value)
  br i1 %8247, label %8262, label %8283

; <label>:8262                                    ; preds = %8186
  %8263 = fmul fast float %8228, %8209
  %8264 = fmul fast float %8228, %8210
  %8265 = fmul fast float %8228, %8211
  %8266 = fadd fast float %8248, %8263
  %8267 = fadd fast float %8249, %8264
  %8268 = fadd fast float %8250, %8265
  %8269 = call float @dx.op.dot3.f32(i32 55, float %8266, float %8267, float %8268, float %8266, float %8267, float %8268)  ; Dot3(ax,ay,az,bx,by,bz)
  %8270 = call float @dx.op.unary.f32(i32 25, float %8269)  ; Rsqrt(value)
  %8271 = fmul fast float %8270, %8266
  %8272 = fmul fast float %8270, %8267
  %8273 = fmul fast float %8270, %8268
  %8274 = fsub fast float %201, %8220
  %8275 = fsub fast float %202, %8221
  %8276 = fsub fast float %203, %8222
  %8277 = fsub fast float -0.000000e+00, %8274
  %8278 = fsub fast float -0.000000e+00, %8275
  %8279 = fsub fast float -0.000000e+00, %8276
  %8280 = call float @dx.op.dot3.f32(i32 55, float %8277, float %8278, float %8279, float %8209, float %8210, float %8211)  ; Dot3(ax,ay,az,bx,by,bz)
  %8281 = fcmp fast ogt float %8280, 0.000000e+00
  %8282 = uitofp i1 %8281 to float
  br label %8283

; <label>:8283                                    ; preds = %8262, %8186
  %8284 = phi float [ %8282, %8262 ], [ 1.000000e+00, %8186 ]
  %8285 = phi float [ %8271, %8262 ], [ %8254, %8186 ]
  %8286 = phi float [ %8272, %8262 ], [ %8255, %8186 ]
  %8287 = phi float [ %8273, %8262 ], [ %8256, %8186 ]
  %8288 = call float @dx.op.dot3.f32(i32 55, float %8209, float %8210, float %8211, float %8285, float %8286, float %8287)  ; Dot3(ax,ay,az,bx,by,bz)
  %8289 = fmul fast float %8288, %8288
  %8290 = call float @dx.op.unary.f32(i32 7, float %8289)  ; Saturate(value)
  %8291 = fsub fast float 1.000000e+00, %8290
  %8292 = fmul fast float %8291, 5.000000e-01
  %8293 = fcmp fast ogt float %8288, 0.000000e+00
  %8294 = fsub fast float 1.000000e+00, %8292
  %8295 = select i1 %8293, float %8292, float %8294
  %8296 = fmul fast float %8295, %8244
  %8297 = fadd fast float %8296, %8242
  %8298 = fmul fast float %8297, 0x3EF0001000000000
  %8299 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %54, float %8298, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8300 = extractvalue %dx.types.ResRet.f32 %8299, 0
  %8301 = fmul fast float %8288, %8226
  %8302 = fadd fast float %8301, %8227
  %8303 = call float @dx.op.unary.f32(i32 7, float %8302)  ; Saturate(value)
  %8304 = select i1 %8247, float 1.000000e+00, float %8303
  %8305 = select i1 %8247, float %8303, float 1.000000e+00
  %8306 = fmul fast float %8252, %8223
  %8307 = fsub fast float 1.000000e+00, %8306
  %8308 = fmul fast float %8307, %8229
  %8309 = call float @dx.op.unary.f32(i32 7, float %8308)  ; Saturate(value)
  %8310 = fmul fast float %8309, %8305
  %8311 = fmul fast float %8310, 2.000000e+00
  %8312 = fsub fast float 3.000000e+00, %8311
  %8313 = fmul fast float %8300, %8284
  %8314 = fmul fast float %8310, %8310
  %8315 = fmul fast float %8314, %8313
  %8316 = fmul fast float %8315, %8312
  %8317 = call float @dx.op.binary.f32(i32 36, float %8316, float %8316)  ; FMin(a,b)
  %8318 = call float @dx.op.binary.f32(i32 36, float %8316, float %8317)  ; FMin(a,b)
  %8319 = fcmp fast ogt float %8318, 0.000000e+00
  br i1 %8319, label %8328, label %8320, !dx.controlflow.hints !135

; <label>:8320                                    ; preds = %8725, %8474, %8283
  %8321 = phi float [ %8188, %8474 ], [ %8188, %8283 ], [ %8765, %8725 ]
  %8322 = phi float [ %8189, %8474 ], [ %8189, %8283 ], [ %8766, %8725 ]
  %8323 = phi float [ %8190, %8474 ], [ %8190, %8283 ], [ %8767, %8725 ]
  %8324 = phi float [ %8191, %8474 ], [ %8191, %8283 ], [ %8759, %8725 ]
  %8325 = phi float [ %8192, %8474 ], [ %8192, %8283 ], [ %8760, %8725 ]
  %8326 = phi float [ %8193, %8474 ], [ %8193, %8283 ], [ %8761, %8725 ]
  %8327 = icmp eq i32 %8187, %8197
  br i1 %8327, label %8768, label %8186

; <label>:8328                                    ; preds = %8283
  %8329 = icmp eq i32 %8245, 255
  br i1 %8329, label %8474, label %8330, !dx.controlflow.hints !136

; <label>:8330                                    ; preds = %8328
  %8331 = mul nuw nsw i32 %8245, 176
  %8332 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8331, i32 undef)  ; BufferLoad(srv,index,wot)
  %8333 = extractvalue %dx.types.ResRet.f32 %8332, 0
  %8334 = extractvalue %dx.types.ResRet.f32 %8332, 1
  %8335 = extractvalue %dx.types.ResRet.f32 %8332, 2
  %8336 = extractvalue %dx.types.ResRet.f32 %8332, 3
  %8337 = add nuw nsw i32 %8331, 16
  %8338 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8337, i32 undef)  ; BufferLoad(srv,index,wot)
  %8339 = extractvalue %dx.types.ResRet.f32 %8338, 0
  %8340 = extractvalue %dx.types.ResRet.f32 %8338, 1
  %8341 = add nuw nsw i32 %8331, 32
  %8342 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8341, i32 undef)  ; BufferLoad(srv,index,wot)
  %8343 = extractvalue %dx.types.ResRet.f32 %8342, 0
  %8344 = extractvalue %dx.types.ResRet.f32 %8342, 1
  %8345 = extractvalue %dx.types.ResRet.f32 %8342, 2
  %8346 = add nuw nsw i32 %8331, 48
  %8347 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8346, i32 undef)  ; BufferLoad(srv,index,wot)
  %8348 = extractvalue %dx.types.ResRet.f32 %8347, 0
  %8349 = extractvalue %dx.types.ResRet.f32 %8347, 1
  %8350 = extractvalue %dx.types.ResRet.f32 %8347, 2
  %8351 = extractvalue %dx.types.ResRet.f32 %8347, 3
  %8352 = add nuw nsw i32 %8331, 64
  %8353 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8352, i32 undef)  ; BufferLoad(srv,index,wot)
  %8354 = extractvalue %dx.types.ResRet.f32 %8353, 0
  %8355 = extractvalue %dx.types.ResRet.f32 %8353, 1
  %8356 = extractvalue %dx.types.ResRet.f32 %8353, 2
  %8357 = extractvalue %dx.types.ResRet.f32 %8353, 3
  %8358 = add nuw nsw i32 %8331, 80
  %8359 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8358, i32 undef)  ; BufferLoad(srv,index,wot)
  %8360 = extractvalue %dx.types.ResRet.f32 %8359, 0
  %8361 = extractvalue %dx.types.ResRet.f32 %8359, 1
  %8362 = extractvalue %dx.types.ResRet.f32 %8359, 2
  %8363 = extractvalue %dx.types.ResRet.f32 %8359, 3
  %8364 = add nuw nsw i32 %8331, 96
  %8365 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8364, i32 undef)  ; BufferLoad(srv,index,wot)
  %8366 = extractvalue %dx.types.ResRet.f32 %8365, 0
  %8367 = extractvalue %dx.types.ResRet.f32 %8365, 1
  %8368 = extractvalue %dx.types.ResRet.f32 %8365, 2
  %8369 = extractvalue %dx.types.ResRet.f32 %8365, 3
  %8370 = bitcast float %8340 to i32
  %8371 = fmul fast float %8345, %121
  %8372 = fmul fast float %8345, %122
  %8373 = fmul fast float %8345, %123
  %8374 = fadd fast float %8371, %201
  %8375 = fadd fast float %8372, %202
  %8376 = fadd fast float %8373, %203
  %8377 = fmul fast float %8374, %8348
  %8378 = call float @dx.op.tertiary.f32(i32 46, float %8375, float %8354, float %8377)  ; FMad(a,b,c)
  %8379 = call float @dx.op.tertiary.f32(i32 46, float %8376, float %8360, float %8378)  ; FMad(a,b,c)
  %8380 = fadd fast float %8379, %8366
  %8381 = fmul fast float %8374, %8349
  %8382 = call float @dx.op.tertiary.f32(i32 46, float %8375, float %8355, float %8381)  ; FMad(a,b,c)
  %8383 = call float @dx.op.tertiary.f32(i32 46, float %8376, float %8361, float %8382)  ; FMad(a,b,c)
  %8384 = fadd fast float %8383, %8367
  %8385 = fmul fast float %8374, %8350
  %8386 = call float @dx.op.tertiary.f32(i32 46, float %8375, float %8356, float %8385)  ; FMad(a,b,c)
  %8387 = call float @dx.op.tertiary.f32(i32 46, float %8376, float %8362, float %8386)  ; FMad(a,b,c)
  %8388 = fadd fast float %8387, %8368
  %8389 = fmul fast float %8374, %8351
  %8390 = call float @dx.op.tertiary.f32(i32 46, float %8375, float %8357, float %8389)  ; FMad(a,b,c)
  %8391 = call float @dx.op.tertiary.f32(i32 46, float %8376, float %8363, float %8390)  ; FMad(a,b,c)
  %8392 = fadd fast float %8391, %8369
  %8393 = fdiv fast float %8380, %8392
  %8394 = fdiv fast float %8384, %8392
  %8395 = fdiv fast float %8388, %8392
  %8396 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %8395)  ; FMax(a,b)
  %8397 = fmul fast float %271, 0x401921FB60000000
  %8398 = call float @dx.op.unary.f32(i32 13, float %8397)  ; Sin(value)
  %8399 = call float @dx.op.unary.f32(i32 12, float %8397)  ; Cos(value)
  %8400 = fmul fast float %8399, %8344
  %8401 = call float @dx.op.tertiary.f32(i32 46, float %8398, float %8344, float 0.000000e+00)  ; FMad(a,b,c)
  %8402 = fmul fast float %8344, %8398
  %8403 = fsub fast float -0.000000e+00, %8402
  %8404 = call float @dx.op.tertiary.f32(i32 46, float %8399, float %8344, float 0.000000e+00)  ; FMad(a,b,c)
  br label %8405

; <label>:8405                                    ; preds = %8405, %8330
  %8406 = phi float [ 0.000000e+00, %8330 ], [ %8438, %8405 ]
  %8407 = phi float [ 0.000000e+00, %8330 ], [ %8440, %8405 ]
  %8408 = phi i32 [ 0, %8330 ], [ %8441, %8405 ]
  %8409 = mul i32 %8408, 2
  %8410 = add i32 0, %8409
  %8411 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %8410
  %8412 = load float, float* %8411, align 4
  %8413 = mul i32 %8408, 2
  %8414 = add i32 1, %8413
  %8415 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %8414
  %8416 = load float, float* %8415, align 4
  %8417 = fmul fast float %8400, %8412
  %8418 = call float @dx.op.tertiary.f32(i32 46, float %8416, float %8403, float %8417)  ; FMad(a,b,c)
  %8419 = fmul fast float %8412, %8401
  %8420 = call float @dx.op.tertiary.f32(i32 46, float %8416, float %8404, float %8419)  ; FMad(a,b,c)
  %8421 = fadd fast float %8418, %8393
  %8422 = fadd fast float %8420, %8394
  %8423 = fmul fast float %8421, %8339
  %8424 = fmul fast float %8422, %8339
  %8425 = call float @dx.op.binary.f32(i32 35, float %8423, float %8335)  ; FMax(a,b)
  %8426 = call float @dx.op.binary.f32(i32 35, float %8424, float %8335)  ; FMax(a,b)
  %8427 = call float @dx.op.binary.f32(i32 36, float %8425, float %8336)  ; FMin(a,b)
  %8428 = call float @dx.op.binary.f32(i32 36, float %8426, float %8336)  ; FMin(a,b)
  %8429 = fadd fast float %8427, %8333
  %8430 = fadd fast float %8428, %8334
  %8431 = uitofp i32 %8370 to float
  %8432 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %55, float %8429, float %8430, float %8431, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8433 = extractvalue %dx.types.ResRet.f32 %8432, 0
  %8434 = fsub fast float %8433, %8396
  %8435 = fsub fast float %8434, %8343
  %8436 = fcmp fast ogt float %8435, 0.000000e+00
  %8437 = select i1 %8436, float 1.000000e+00, float 0.000000e+00
  %8438 = fadd fast float %8437, %8406
  %8439 = select i1 %8436, float %8435, float 0.000000e+00
  %8440 = fadd fast float %8439, %8407
  %8441 = add nuw nsw i32 %8408, 1
  %8442 = icmp eq i32 %8441, 8
  br i1 %8442, label %8443, label %8405

; <label>:8443                                    ; preds = %8405
  %8444 = fdiv fast float 1.000000e+00, %8438
  %8445 = fmul fast float %8444, %8440
  %8446 = fdiv fast float 1.000000e+00, %8396
  %8447 = fmul fast float %8445, %8446
  %8448 = call float @dx.op.unary.f32(i32 7, float %8447)  ; Saturate(value)
  %8449 = call float @dx.op.binary.f32(i32 35, float %8448, float 0.000000e+00)  ; FMax(a,b)
  %8450 = fmul fast float %8438, 1.250000e-01
  %8451 = call float @dx.op.unary.f32(i32 7, float %8450)  ; Saturate(value)
  %8452 = fmul fast float %8451, 2.000000e+00
  %8453 = fadd fast float %8452, -1.000000e+00
  %8454 = fcmp fast ogt float %8453, 0.000000e+00
  %8455 = fcmp fast olt float %8453, 0.000000e+00
  %8456 = zext i1 %8454 to i32
  %8457 = zext i1 %8455 to i32
  %8458 = sub nsw i32 %8456, %8457
  %8459 = sitofp i32 %8458 to float
  %8460 = fmul fast float %8459, %8453
  %8461 = fsub fast float 1.000000e+00, %8460
  %8462 = fmul fast float %8461, %8461
  %8463 = fmul fast float %8462, %8461
  %8464 = fsub fast float %8461, %8463
  %8465 = fmul fast float %8464, %8449
  %8466 = fsub fast float 1.000000e+00, %8463
  %8467 = fsub fast float %8466, %8465
  %8468 = fmul fast float %8459, 5.000000e-01
  %8469 = fmul fast float %8468, %8467
  %8470 = fsub fast float -5.000000e-01, %8469
  %8471 = fmul fast float %8470, %8304
  %8472 = fadd fast float %8471, 1.000000e+00
  %8473 = fmul fast float %8472, %8316
  br label %8474

; <label>:8474                                    ; preds = %8443, %8328
  %8475 = phi float [ %8473, %8443 ], [ %8316, %8328 ]
  %8476 = call float @dx.op.binary.f32(i32 36, float %8475, float %8475)  ; FMin(a,b)
  %8477 = call float @dx.op.binary.f32(i32 36, float %8475, float %8476)  ; FMin(a,b)
  %8478 = fcmp fast ogt float %8477, 0.000000e+00
  br i1 %8478, label %8479, label %8320, !dx.controlflow.hints !137

; <label>:8479                                    ; preds = %8474
  %8480 = fmul fast float %8475, %8238
  %8481 = fmul fast float %8475, %8239
  %8482 = fmul fast float %8475, %8240
  %8483 = fsub fast float %8222, %4821
  %8484 = fcmp fast ogt float %8483, 0.000000e+00
  %8485 = fsub fast float %203, %4821
  %8486 = fcmp fast ogt float %8485, 0.000000e+00
  %8487 = xor i1 %8486, %8484
  %8488 = fsub fast float %4821, %8222
  %8489 = fmul fast float %8488, 2.000000e+00
  %8490 = fadd fast float %8489, %8222
  %8491 = select i1 %8487, float %8222, float %8490
  %8492 = fsub fast float %8491, %203
  %8493 = call float @dx.op.dot3.f32(i32 55, float %8248, float %8249, float %8492, float %8248, float %8249, float %8492)  ; Dot3(ax,ay,az,bx,by,bz)
  %8494 = call float @dx.op.unary.f32(i32 25, float %8493)  ; Rsqrt(value)
  %8495 = fmul fast float %8494, %8248
  %8496 = fmul fast float %8494, %8249
  %8497 = fmul fast float %8494, %8492
  %8498 = fsub fast float %4821, %203
  %8499 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %8498)  ; Dot3(ax,ay,az,bx,by,bz)
  %8500 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %8495, float %8496, float %8497)  ; Dot3(ax,ay,az,bx,by,bz)
  %8501 = fdiv fast float 1.000000e+00, %8500
  %8502 = fmul fast float %8501, %8499
  %8503 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %8485, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %8504 = fcmp fast ogt float %8503, 0.000000e+00
  %8505 = fcmp fast olt float %8503, 0.000000e+00
  %8506 = zext i1 %8504 to i32
  %8507 = zext i1 %8505 to i32
  %8508 = sub nsw i32 %8506, %8507
  %8509 = sitofp i32 %8508 to float
  %8510 = fsub fast float %8491, %4821
  %8511 = call float @dx.op.dot3.f32(i32 55, float %8248, float %8249, float %8510, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %8512 = fcmp fast ogt float %8511, 0.000000e+00
  %8513 = fcmp fast olt float %8511, 0.000000e+00
  %8514 = zext i1 %8512 to i32
  %8515 = zext i1 %8513 to i32
  %8516 = sub nsw i32 %8514, %8515
  %8517 = sitofp i32 %8516 to float
  %8518 = fcmp fast une float %8509, %8517
  br i1 %8518, label %8519, label %8529

; <label>:8519                                    ; preds = %8479
  %8520 = fmul fast float %8502, %8497
  %8521 = fmul fast float %8502, %8496
  %8522 = fmul fast float %8502, %8495
  %8523 = fmul fast float %8522, %8522
  %8524 = fmul fast float %8521, %8521
  %8525 = fadd fast float %8523, %8524
  %8526 = fmul fast float %8520, %8520
  %8527 = fadd fast float %8525, %8526
  %8528 = call float @dx.op.unary.f32(i32 24, float %8527)  ; Sqrt(value)
  br label %8541

; <label>:8529                                    ; preds = %8479
  %8530 = icmp slt i32 %8508, 0
  br i1 %8530, label %8531, label %8541

; <label>:8531                                    ; preds = %8529
  %8532 = fsub fast float %201, %8220
  %8533 = fsub fast float %202, %8221
  %8534 = fsub fast float %203, %8491
  %8535 = fmul fast float %8532, %8532
  %8536 = fmul fast float %8533, %8533
  %8537 = fadd fast float %8535, %8536
  %8538 = fmul fast float %8534, %8534
  %8539 = fadd fast float %8537, %8538
  %8540 = call float @dx.op.unary.f32(i32 24, float %8539)  ; Sqrt(value)
  br label %8541

; <label>:8541                                    ; preds = %8531, %8529, %8519
  %8542 = phi float [ %8528, %8519 ], [ %8540, %8531 ], [ 0.000000e+00, %8529 ]
  %8543 = and i1 %8486, %8484
  %8544 = fsub fast float -0.000000e+00, %8542
  %8545 = select i1 %8543, float -0.000000e+00, float %8544
  %8546 = fmul fast float %4818, 0x3FF7154760000000
  %8547 = fmul fast float %8546, %8545
  %8548 = fmul fast float %4819, 0x3FF7154760000000
  %8549 = fmul fast float %8548, %8545
  %8550 = fmul fast float %4820, 0x3FF7154760000000
  %8551 = fmul fast float %8550, %8545
  %8552 = call float @dx.op.unary.f32(i32 21, float %8547)  ; Exp(value)
  %8553 = call float @dx.op.unary.f32(i32 21, float %8549)  ; Exp(value)
  %8554 = call float @dx.op.unary.f32(i32 21, float %8551)  ; Exp(value)
  %8555 = call float @dx.op.unary.f32(i32 7, float %8552)  ; Saturate(value)
  %8556 = call float @dx.op.unary.f32(i32 7, float %8553)  ; Saturate(value)
  %8557 = call float @dx.op.unary.f32(i32 7, float %8554)  ; Saturate(value)
  %8558 = fmul fast float %8480, %8555
  %8559 = fmul fast float %8481, %8556
  %8560 = fmul fast float %8482, %8557
  %8561 = fsub fast float %8254, %5610
  %8562 = fsub fast float %8255, %5609
  %8563 = fsub fast float %8256, %5608
  %8564 = call float @dx.op.dot3.f32(i32 55, float %8561, float %8562, float %8563, float %8561, float %8562, float %8563)  ; Dot3(ax,ay,az,bx,by,bz)
  %8565 = call float @dx.op.unary.f32(i32 25, float %8564)  ; Rsqrt(value)
  %8566 = fmul fast float %8565, %8561
  %8567 = fmul fast float %8565, %8562
  %8568 = fmul fast float %8565, %8563
  %8569 = call float @dx.op.dot3.f32(i32 55, float %8254, float %8255, float %8256, float %5617, float %5618, float %5619)  ; Dot3(ax,ay,az,bx,by,bz)
  %8570 = call float @dx.op.dot3.f32(i32 55, float %5607, float %5606, float %5605, float %8566, float %8567, float %8568)  ; Dot3(ax,ay,az,bx,by,bz)
  %8571 = call float @dx.op.unary.f32(i32 7, float %8569)  ; Saturate(value)
  %8572 = fmul fast float %8571, %8261
  %8573 = bitcast i32 %5649 to float
  %8574 = fmul fast float %8571, %8571
  %8575 = fmul fast float %8574, %8573
  %8576 = call float @dx.op.unary.f32(i32 7, float %8575)  ; Saturate(value)
  %8577 = fmul fast float %8572, %8576
  %8578 = bitcast float %8251 to i32
  %8579 = ashr i32 %8578, 1
  %8580 = sub nsw i32 1597463007, %8579
  %8581 = bitcast i32 %8580 to float
  %8582 = fmul fast float %8581, %8248
  %8583 = fmul fast float %8581, %8249
  %8584 = fmul fast float %8581, %8250
  %8585 = fsub fast float %8582, %5610
  %8586 = fsub fast float %8583, %5609
  %8587 = fsub fast float %8584, %5608
  %8588 = call float @dx.op.dot3.f32(i32 55, float %8585, float %8586, float %8587, float %8585, float %8586, float %8587)  ; Dot3(ax,ay,az,bx,by,bz)
  %8589 = call float @dx.op.unary.f32(i32 25, float %8588)  ; Rsqrt(value)
  %8590 = fmul fast float %8585, %8589
  %8591 = fmul fast float %8586, %8589
  %8592 = fmul fast float %8587, %8589
  %8593 = call float @dx.op.dot3.f32(i32 55, float %5617, float %5618, float %5619, float %8590, float %8591, float %8592)  ; Dot3(ax,ay,az,bx,by,bz)
  %8594 = fmul fast float %8593, %8593
  %8595 = call float @dx.op.unary.f32(i32 6, float %8569)  ; FAbs(value)
  %8596 = fsub fast float 1.000000e+00, %5643
  %8597 = fmul fast float %5625, %5625
  %8598 = fmul fast float %8597, %8596
  %8599 = fadd fast float %8598, %5643
  %8600 = bitcast float %8599 to i32
  %8601 = ashr i32 %8600, 1
  %8602 = add nsw i32 %8601, 532487669
  %8603 = bitcast i32 %8602 to float
  %8604 = fadd fast float %8603, %5625
  %8605 = fmul fast float %5643, %8594
  %8606 = fsub fast float 1.000000e+00, %8594
  %8607 = fadd fast float %8606, %8605
  %8608 = fmul fast float %8595, %8595
  %8609 = fmul fast float %8608, %8596
  %8610 = fadd fast float %8609, %5643
  %8611 = bitcast float %8610 to i32
  %8612 = ashr i32 %8611, 1
  %8613 = add nsw i32 %8612, 532487669
  %8614 = bitcast i32 %8613 to float
  %8615 = fadd fast float %8614, %8595
  %8616 = fmul fast float %8607, %8607
  %8617 = fmul fast float %8616, %8604
  %8618 = fmul fast float %8617, %8615
  %8619 = fdiv fast float 1.000000e+00, %8618
  %8620 = bitcast float %5643 to i32
  %8621 = sitofp i32 %8620 to float
  %8622 = fmul fast float %8621, 0x3FE7F73180000000
  %8623 = fadd fast float %8622, 0x41AFE27C40000000
  %8624 = fptosi float %8623 to i32
  %8625 = bitcast i32 %8624 to float
  %8626 = fmul fast float %8217, 0x3FD80E9D60000000
  %8627 = fmul fast float %8626, %8581
  %8628 = fadd fast float %8625, %8627
  %8629 = bitcast float %8628 to i32
  %8630 = sub nsw i32 2129859010, %8629
  %8631 = bitcast i32 %8630 to float
  %8632 = fmul fast float %5643, %8619
  %8633 = fmul fast float %8632, %8625
  %8634 = fmul fast float %8633, %8631
  %8635 = fmul fast float %5749, 0x3FF9999980000000
  %8636 = fsub fast float 5.000000e+00, %8635
  %8637 = call float @dx.op.unary.f32(i32 6, float %8570)  ; FAbs(value)
  %8638 = fsub fast float 1.000000e+00, %8637
  %8639 = fmul fast float %5749, 0x41D9660740000000
  %8640 = fadd fast float %8639, 0xC1EFBF8940000000
  %8641 = bitcast float %8638 to i32
  %8642 = sitofp i32 %8641 to float
  %8643 = fmul fast float %8642, %8636
  %8644 = fadd fast float %8640, %8643
  %8645 = fptosi float %8644 to i32
  %8646 = bitcast i32 %8645 to float
  %8647 = fsub fast float 1.000000e+00, %5614
  %8648 = fsub fast float 1.000000e+00, %5615
  %8649 = fsub fast float 1.000000e+00, %5623
  %8650 = fmul fast float %8646, %8647
  %8651 = fmul fast float %8646, %8648
  %8652 = fmul fast float %8646, %8649
  %8653 = fadd fast float %8650, %5614
  %8654 = fadd fast float %8651, %5615
  %8655 = fadd fast float %8652, %5623
  br i1 %5772, label %8656, label %8679

; <label>:8656                                    ; preds = %8541
  %8657 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %54, float %4413, float %8637, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8658 = extractvalue %dx.types.ResRet.f32 %8657, 0
  %8659 = extractvalue %dx.types.ResRet.f32 %8657, 1
  %8660 = extractvalue %dx.types.ResRet.f32 %8657, 2
  %8661 = fadd fast float %8658, -5.000000e-01
  %8662 = fadd fast float %8659, -5.000000e-01
  %8663 = fadd fast float %8660, -5.000000e-01
  %8664 = fmul fast float %5614, 4.000000e+00
  %8665 = fmul fast float %8664, %8647
  %8666 = fmul fast float %8665, %8661
  %8667 = fmul fast float %5615, 4.000000e+00
  %8668 = fmul fast float %8667, %8648
  %8669 = fmul fast float %8668, %8662
  %8670 = fmul fast float %5623, 4.000000e+00
  %8671 = fmul fast float %8670, %8649
  %8672 = fmul fast float %8671, %8663
  %8673 = fadd fast float %8666, %8653
  %8674 = fadd fast float %8669, %8654
  %8675 = fadd fast float %8672, %8655
  %8676 = call float @dx.op.unary.f32(i32 7, float %8673)  ; Saturate(value)
  %8677 = call float @dx.op.unary.f32(i32 7, float %8674)  ; Saturate(value)
  %8678 = call float @dx.op.unary.f32(i32 7, float %8675)  ; Saturate(value)
  br label %8679

; <label>:8679                                    ; preds = %8656, %8541
  %8680 = phi float [ %8676, %8656 ], [ %8653, %8541 ]
  %8681 = phi float [ %8677, %8656 ], [ %8654, %8541 ]
  %8682 = phi float [ %8678, %8656 ], [ %8655, %8541 ]
  %8683 = fmul fast float %8569, 9.843750e-01
  %8684 = fadd fast float %8683, 7.812500e-03
  %8685 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %48, %dx.types.Handle %54, float %8684, float %5753, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8686 = extractvalue %dx.types.ResRet.f32 %8685, 0
  %8687 = extractvalue %dx.types.ResRet.f32 %8685, 1
  %8688 = extractvalue %dx.types.ResRet.f32 %8685, 2
  %8689 = extractvalue %dx.types.ResRet.f32 %8685, 3
  %8690 = fsub fast float %8688, %8686
  %8691 = fsub fast float %8689, %8687
  %8692 = fmul fast float %8690, %5759
  %8693 = fmul fast float %8691, %5759
  %8694 = fadd fast float %8692, %8686
  %8695 = fadd fast float %8693, %8687
  %8696 = fmul fast float %8694, %5614
  %8697 = fmul fast float %8694, %5615
  %8698 = fmul fast float %8694, %5623
  %8699 = fadd fast float %8696, %8695
  %8700 = fadd fast float %8697, %8695
  %8701 = fadd fast float %8698, %8695
  br i1 %5772, label %8702, label %8725

; <label>:8702                                    ; preds = %8679
  %8703 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %54, float %4413, float %8569, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8704 = extractvalue %dx.types.ResRet.f32 %8703, 0
  %8705 = extractvalue %dx.types.ResRet.f32 %8703, 1
  %8706 = extractvalue %dx.types.ResRet.f32 %8703, 2
  %8707 = fadd fast float %8704, -5.000000e-01
  %8708 = fadd fast float %8705, -5.000000e-01
  %8709 = fadd fast float %8706, -5.000000e-01
  %8710 = fmul fast float %5614, 4.000000e+00
  %8711 = fmul fast float %8710, %8647
  %8712 = fmul fast float %8711, %8707
  %8713 = fmul fast float %5615, 4.000000e+00
  %8714 = fmul fast float %8713, %8648
  %8715 = fmul fast float %8714, %8708
  %8716 = fmul fast float %5623, 4.000000e+00
  %8717 = fmul fast float %8716, %8649
  %8718 = fmul fast float %8717, %8709
  %8719 = fadd fast float %8712, %8699
  %8720 = fadd fast float %8715, %8700
  %8721 = fadd fast float %8718, %8701
  %8722 = call float @dx.op.unary.f32(i32 7, float %8719)  ; Saturate(value)
  %8723 = call float @dx.op.unary.f32(i32 7, float %8720)  ; Saturate(value)
  %8724 = call float @dx.op.unary.f32(i32 7, float %8721)  ; Saturate(value)
  br label %8725

; <label>:8725                                    ; preds = %8702, %8679
  %8726 = phi float [ %8722, %8702 ], [ %8699, %8679 ]
  %8727 = phi float [ %8723, %8702 ], [ %8700, %8679 ]
  %8728 = phi float [ %8724, %8702 ], [ %8701, %8679 ]
  %8729 = call float @dx.op.binary.f32(i32 35, float %8727, float %8728)  ; FMax(a,b)
  %8730 = call float @dx.op.binary.f32(i32 35, float %8726, float %8729)  ; FMax(a,b)
  %8731 = fsub fast float 1.000000e+00, %8730
  %8732 = fmul fast float %8680, %8634
  %8733 = fmul fast float %8681, %8634
  %8734 = fmul fast float %8682, %8634
  %8735 = fsub fast float 1.000000e+00, %8570
  %8736 = bitcast float %8735 to i32
  %8737 = sitofp i32 %8736 to float
  %8738 = fmul fast float %8737, 5.000000e+00
  %8739 = fadd fast float %8738, 0xC1EFBF8940000000
  %8740 = fptosi float %8739 to i32
  %8741 = bitcast i32 %8740 to float
  %8742 = fmul fast float %8741, %4414
  %8743 = fmul fast float %8731, %8742
  %8744 = fmul fast float %8743, %6314
  %8745 = fmul fast float %8743, %6315
  %8746 = fmul fast float %8743, %6316
  %8747 = fadd fast float %8744, %8732
  %8748 = fadd fast float %8745, %8733
  %8749 = fadd fast float %8746, %8734
  %8750 = fmul fast float %8558, %4410
  %8751 = fmul fast float %8750, %8577
  %8752 = fmul fast float %8751, %8731
  %8753 = fmul fast float %8559, %4410
  %8754 = fmul fast float %8753, %8577
  %8755 = fmul fast float %8754, %8731
  %8756 = fmul fast float %8560, %4410
  %8757 = fmul fast float %8756, %8577
  %8758 = fmul fast float %8757, %8731
  %8759 = fadd fast float %8752, %8191
  %8760 = fadd fast float %8755, %8192
  %8761 = fadd fast float %8758, %8193
  %8762 = fmul fast float %8751, %8747
  %8763 = fmul fast float %8754, %8748
  %8764 = fmul fast float %8757, %8749
  %8765 = fadd fast float %8762, %8188
  %8766 = fadd fast float %8763, %8189
  %8767 = fadd fast float %8764, %8190
  br label %8320

; <label>:8768                                    ; preds = %8320
  br label %8769

; <label>:8769                                    ; preds = %8768, %8154
  %8770 = phi float [ %8156, %8154 ], [ %8321, %8768 ]
  %8771 = phi float [ %8157, %8154 ], [ %8322, %8768 ]
  %8772 = phi float [ %8158, %8154 ], [ %8323, %8768 ]
  %8773 = phi float [ %8159, %8154 ], [ %8324, %8768 ]
  %8774 = phi float [ %8160, %8154 ], [ %8325, %8768 ]
  %8775 = phi float [ %8161, %8154 ], [ %8326, %8768 ]
  %8776 = add i32 %8155, 1
  %8777 = icmp ugt i32 %8776, %8151
  br i1 %8777, label %8778, label %8154

; <label>:8778                                    ; preds = %8769
  br label %8779

; <label>:8779                                    ; preds = %8778, %8104, %8094
  %8780 = phi float [ %8095, %8094 ], [ %8095, %8104 ], [ %8770, %8778 ]
  %8781 = phi float [ %8096, %8094 ], [ %8096, %8104 ], [ %8771, %8778 ]
  %8782 = phi float [ %8097, %8094 ], [ %8097, %8104 ], [ %8772, %8778 ]
  %8783 = phi float [ %8098, %8094 ], [ %8098, %8104 ], [ %8773, %8778 ]
  %8784 = phi float [ %8099, %8094 ], [ %8099, %8104 ], [ %8774, %8778 ]
  %8785 = phi float [ %8100, %8094 ], [ %8100, %8104 ], [ %8775, %8778 ]
  %8786 = fmul fast float %4410, %4410
  %8787 = fmul fast float %8786, %6340
  %8788 = fmul fast float %8786, %6341
  %8789 = fmul fast float %8786, %6342
  %8790 = fadd fast float %8787, 1.000000e+00
  %8791 = fadd fast float %8788, 1.000000e+00
  %8792 = fadd fast float %8789, 1.000000e+00
  %8793 = call float @dx.op.dot3.f32(i32 55, float %8790, float %8791, float %8792, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8794 = fsub fast float 1.000000e+00, %8793
  %8795 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %8796 = extractvalue %dx.types.CBufRet.f32 %8795, 0
  %8797 = fmul fast float %8796, %6346
  %8798 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %8799 = extractvalue %dx.types.CBufRet.f32 %8798, 3
  %8800 = fsub fast float 1.000000e+00, %4418
  %8801 = call float @dx.op.unary.f32(i32 7, float %8800)  ; Saturate(value)
  %8802 = fadd fast float %8785, %4416
  %8803 = fmul fast float %8802, %4418
  %8804 = fmul fast float %8801, %8799
  %8805 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %8806 = extractvalue %dx.types.CBufRet.f32 %8805, 3
  %8807 = fmul fast float %8783, %5611
  %8808 = fmul fast float %8784, %5612
  %8809 = fmul fast float %8785, %5613
  %8810 = fcmp fast ogt float %101, %223
  %8811 = and i1 %8810, %4824
  %8812 = or i1 %4830, %8811
  %8813 = icmp eq i32 %4823, 2
  %8814 = fcmp fast ole float %101, %223
  %8815 = and i1 %8814, %8813
  %8816 = or i1 %8815, %8812
  br i1 %8811, label %8817, label %9074

; <label>:8817                                    ; preds = %8779
  %8818 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %8819 = extractvalue %dx.types.CBufRet.f32 %8818, 2
  %8820 = extractvalue %dx.types.CBufRet.f32 %8818, 3
  %8821 = fmul fast float %8819, %114
  %8822 = fmul fast float %8820, %115
  %8823 = call float @dx.op.unary.f32(i32 7, float %8821)  ; Saturate(value)
  %8824 = call float @dx.op.unary.f32(i32 7, float %8822)  ; Saturate(value)
  %8825 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %54, float %8823, float %8824, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8826 = extractvalue %dx.types.ResRet.f32 %8825, 0
  %8827 = extractvalue %dx.types.ResRet.f32 %8825, 1
  %8828 = extractvalue %dx.types.ResRet.f32 %8825, 2
  %8829 = extractvalue %dx.types.ResRet.f32 %8825, 3
  %8830 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %54, float %8823, float %8824, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8831 = extractvalue %dx.types.ResRet.f32 %8830, 0
  %8832 = extractvalue %dx.types.ResRet.f32 %8830, 1
  %8833 = extractvalue %dx.types.ResRet.f32 %8830, 2
  %8834 = extractvalue %dx.types.ResRet.f32 %8830, 3
  %8835 = call float @dx.op.binary.f32(i32 35, float %8827, float %8828)  ; FMax(a,b)
  %8836 = call float @dx.op.binary.f32(i32 35, float %8826, float %8835)  ; FMax(a,b)
  %8837 = call float @dx.op.binary.f32(i32 35, float %8836, float %8829)  ; FMax(a,b)
  %8838 = call float @dx.op.binary.f32(i32 36, float %8832, float %8833)  ; FMin(a,b)
  %8839 = call float @dx.op.binary.f32(i32 36, float %8831, float %8838)  ; FMin(a,b)
  %8840 = call float @dx.op.binary.f32(i32 36, float %8839, float %8834)  ; FMin(a,b)
  %8841 = fmul fast float %8837, 2.550000e+02
  %8842 = fadd fast float %8841, 0x3F70101020000000
  %8843 = fptoui float %8842 to i32
  %8844 = fmul fast float %8840, 2.550000e+02
  %8845 = fadd fast float %8844, 0x3F70101020000000
  %8846 = fptoui float %8845 to i32
  %8847 = icmp ult i32 %8843, %8846
  br i1 %8847, label %8848, label %9016

; <label>:8848                                    ; preds = %8817
  %8849 = fcmp fast ogt float %100, 9.843750e-01
  %8850 = fadd fast float %101, -4.000000e+00
  %8851 = select i1 %8849, float -4.000000e+00, float %8850
  %8852 = call float @dx.op.binary.f32(i32 35, float %8851, float 0.000000e+00)  ; FMax(a,b)
  %8853 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %8854 = extractvalue %dx.types.CBufRet.f32 %8853, 0
  %8855 = fadd fast float %8854, %8852
  %8856 = extractvalue %dx.types.CBufRet.f32 %8853, 2
  %8857 = fmul fast float %8855, %8856
  %8858 = call float @dx.op.unary.f32(i32 23, float %8857)  ; Log(value)
  %8859 = extractvalue %dx.types.CBufRet.f32 %8853, 3
  %8860 = fmul fast float %8859, %8858
  %8861 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8862 = extractvalue %dx.types.CBufRet.f32 %8861, 2
  %8863 = fmul fast float %8860, %8862
  %8864 = call float @dx.op.unary.f32(i32 7, float %8863)  ; Saturate(value)
  %8865 = uitofp i32 %8843 to float
  %8866 = uitofp i32 %8846 to float
  %8867 = fadd fast float %8865, 5.000000e-01
  %8868 = fadd fast float %8866, 5.000000e-01
  %8869 = fmul fast float %8862, %8867
  %8870 = fmul fast float %8862, %8868
  %8871 = fadd fast float %8869, 0x3F0FFB4800000000
  %8872 = fadd fast float %8870, 0xBF0FFB4800000000
  %8873 = call float @dx.op.binary.f32(i32 35, float %8864, float %8871)  ; FMax(a,b)
  %8874 = call float @dx.op.binary.f32(i32 36, float %8873, float %8872)  ; FMin(a,b)
  %8875 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %8876 = extractvalue %dx.types.CBufRet.f32 %8875, 1
  %8877 = extractvalue %dx.types.CBufRet.f32 %8875, 2
  %8878 = extractvalue %dx.types.CBufRet.f32 %8875, 0
  %8879 = fmul fast float %8876, %8874
  %8880 = fadd fast float %8878, %8879
  %8881 = fadd fast float %8878, %8877
  %8882 = fsub fast float %8876, %8877
  %8883 = fadd fast float %8882, %8878
  %8884 = call float @dx.op.binary.f32(i32 35, float %8880, float %8881)  ; FMax(a,b)
  %8885 = call float @dx.op.binary.f32(i32 36, float %8884, float %8883)  ; FMin(a,b)
  %8886 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %52, float %8823, float %8824, float %8885, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8887 = extractvalue %dx.types.ResRet.f32 %8886, 0
  %8888 = extractvalue %dx.types.ResRet.f32 %8886, 1
  %8889 = extractvalue %dx.types.ResRet.f32 %8886, 2
  %8890 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %8891 = extractvalue %dx.types.CBufRet.i32 %8890, 0
  %8892 = extractvalue %dx.types.CBufRet.i32 %8890, 1
  %8893 = uitofp i32 %8891 to float
  %8894 = uitofp i32 %8892 to float
  %8895 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %8896 = extractvalue %dx.types.CBufRet.f32 %8895, 0
  %8897 = extractvalue %dx.types.CBufRet.f32 %8895, 1
  %8898 = fmul fast float %8893, %8823
  %8899 = fmul fast float %8894, %8824
  %8900 = fadd fast float %8898, -5.000000e-01
  %8901 = fadd fast float %8899, -5.000000e-01
  %8902 = call float @dx.op.unary.f32(i32 22, float %8900)  ; Frc(value)
  %8903 = call float @dx.op.unary.f32(i32 22, float %8901)  ; Frc(value)
  %8904 = fmul fast float %8902, %8902
  %8905 = fmul fast float %8904, %8902
  %8906 = fsub fast float 3.000000e+00, %8902
  %8907 = fmul fast float %8904, %8906
  %8908 = fmul fast float %8902, 3.000000e+00
  %8909 = fmul fast float %8905, 3.000000e+00
  %8910 = fmul fast float %8904, 6.000000e+00
  %8911 = fsub fast float %8909, %8910
  %8912 = fadd fast float %8911, 4.000000e+00
  %8913 = fmul fast float %8912, 0x3FC5555560000000
  %8914 = fmul fast float %8905, -3.000000e+00
  %8915 = fadd fast float %8904, %8902
  %8916 = fmul fast float %8915, 3.000000e+00
  %8917 = fadd fast float %8914, 1.000000e+00
  %8918 = fadd fast float %8917, %8916
  %8919 = fmul fast float %8905, 0x3FC5555560000000
  %8920 = fmul fast float %8903, %8903
  %8921 = fmul fast float %8920, %8903
  %8922 = fsub fast float 3.000000e+00, %8903
  %8923 = fmul fast float %8920, %8922
  %8924 = fmul fast float %8903, 3.000000e+00
  %8925 = fmul fast float %8921, 3.000000e+00
  %8926 = fmul fast float %8920, 6.000000e+00
  %8927 = fsub fast float %8925, %8926
  %8928 = fadd fast float %8927, 4.000000e+00
  %8929 = fmul fast float %8928, 0x3FC5555560000000
  %8930 = fmul fast float %8921, -3.000000e+00
  %8931 = fadd fast float %8920, %8903
  %8932 = fmul fast float %8931, 3.000000e+00
  %8933 = fadd fast float %8930, 1.000000e+00
  %8934 = fadd fast float %8933, %8932
  %8935 = fmul fast float %8921, 0x3FC5555560000000
  %8936 = fadd fast float %8902, 1.000000e+00
  %8937 = fsub fast float 1.000000e+00, %8908
  %8938 = fadd fast float %8937, %8907
  %8939 = fadd fast float %8938, %8912
  %8940 = fmul fast float %8939, 0x3FC5555560000000
  %8941 = fdiv fast float %8913, %8940
  %8942 = fsub fast float %8936, %8941
  %8943 = fsub fast float 1.000000e+00, %8902
  %8944 = fadd fast float %8918, %8905
  %8945 = fmul fast float %8944, 0x3FC5555560000000
  %8946 = fdiv fast float %8919, %8945
  %8947 = fadd fast float %8943, %8946
  %8948 = fadd fast float %8903, 1.000000e+00
  %8949 = fsub fast float 1.000000e+00, %8924
  %8950 = fadd fast float %8949, %8923
  %8951 = fadd fast float %8950, %8928
  %8952 = fmul fast float %8951, 0x3FC5555560000000
  %8953 = fdiv fast float %8929, %8952
  %8954 = fsub fast float %8948, %8953
  %8955 = fsub fast float 1.000000e+00, %8903
  %8956 = fadd fast float %8934, %8921
  %8957 = fmul fast float %8956, 0x3FC5555560000000
  %8958 = fdiv fast float %8935, %8957
  %8959 = fadd fast float %8958, %8955
  %8960 = fmul fast float %8942, %8896
  %8961 = fsub fast float %8823, %8960
  %8962 = fmul fast float %8947, %8896
  %8963 = fadd fast float %8962, %8823
  %8964 = fmul fast float %8959, %8897
  %8965 = fadd fast float %8964, %8824
  %8966 = fmul fast float %8954, %8897
  %8967 = fsub fast float %8824, %8966
  %8968 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %8961, float %8967, float %8885, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8969 = extractvalue %dx.types.ResRet.f32 %8968, 0
  %8970 = extractvalue %dx.types.ResRet.f32 %8968, 1
  %8971 = extractvalue %dx.types.ResRet.f32 %8968, 2
  %8972 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %8963, float %8967, float %8885, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8973 = extractvalue %dx.types.ResRet.f32 %8972, 0
  %8974 = extractvalue %dx.types.ResRet.f32 %8972, 1
  %8975 = extractvalue %dx.types.ResRet.f32 %8972, 2
  %8976 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %8961, float %8965, float %8885, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8977 = extractvalue %dx.types.ResRet.f32 %8976, 0
  %8978 = extractvalue %dx.types.ResRet.f32 %8976, 1
  %8979 = extractvalue %dx.types.ResRet.f32 %8976, 2
  %8980 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %8963, float %8965, float %8885, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8981 = extractvalue %dx.types.ResRet.f32 %8980, 0
  %8982 = extractvalue %dx.types.ResRet.f32 %8980, 1
  %8983 = extractvalue %dx.types.ResRet.f32 %8980, 2
  %8984 = fsub fast float %8977, %8969
  %8985 = fsub fast float %8978, %8970
  %8986 = fsub fast float %8979, %8971
  %8987 = fmul fast float %8984, %8957
  %8988 = fmul fast float %8985, %8957
  %8989 = fmul fast float %8986, %8957
  %8990 = fadd fast float %8987, %8969
  %8991 = fadd fast float %8988, %8970
  %8992 = fadd fast float %8989, %8971
  %8993 = fsub fast float %8981, %8973
  %8994 = fsub fast float %8982, %8974
  %8995 = fsub fast float %8983, %8975
  %8996 = fmul fast float %8993, %8957
  %8997 = fmul fast float %8994, %8957
  %8998 = fmul fast float %8995, %8957
  %8999 = fsub fast float %8973, %8990
  %9000 = fadd fast float %8999, %8996
  %9001 = fsub fast float %8974, %8991
  %9002 = fadd fast float %9001, %8997
  %9003 = fsub fast float %8975, %8992
  %9004 = fadd fast float %9003, %8998
  %9005 = fmul fast float %9000, %8945
  %9006 = fmul fast float %9002, %8945
  %9007 = fmul fast float %9004, %8945
  %9008 = fadd fast float %9005, %8990
  %9009 = fadd fast float %9006, %8991
  %9010 = fadd fast float %9007, %8992
  %9011 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9012 = extractvalue %dx.types.CBufRet.f32 %9011, 1
  %9013 = fmul fast float %9008, %9012
  %9014 = fmul fast float %9009, %9012
  %9015 = fmul fast float %9010, %9012
  br label %9016

; <label>:9016                                    ; preds = %8848, %8817
  %9017 = phi float [ %8887, %8848 ], [ 1.000000e+00, %8817 ]
  %9018 = phi float [ %8888, %8848 ], [ 1.000000e+00, %8817 ]
  %9019 = phi float [ %8889, %8848 ], [ 1.000000e+00, %8817 ]
  %9020 = phi float [ %9013, %8848 ], [ 0.000000e+00, %8817 ]
  %9021 = phi float [ %9014, %8848 ], [ 0.000000e+00, %8817 ]
  %9022 = phi float [ %9015, %8848 ], [ 0.000000e+00, %8817 ]
  %9023 = fmul fast float %9020, %8794
  %9024 = fmul fast float %9021, %8794
  %9025 = fmul fast float %9022, %8794
  %9026 = call float @dx.op.dot3.f32(i32 55, float %9017, float %9018, float %9019, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9027 = call float @dx.op.dot3.f32(i32 55, float %9023, float %9024, float %9025, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9028 = select i1 %260, float %9026, float %9017
  %9029 = select i1 %260, float %9026, float %9018
  %9030 = select i1 %260, float 1.000000e+00, float %9019
  %9031 = select i1 %260, float %9027, float %9023
  %9032 = select i1 %260, float 0.000000e+00, float %9024
  %9033 = select i1 %260, float 0.000000e+00, float %9025
  %9034 = fmul fast float %9028, %8807
  %9035 = fmul fast float %9029, %8808
  %9036 = fmul fast float %9030, %8809
  %9037 = fadd fast float %9034, %9031
  %9038 = fadd fast float %9035, %9032
  %9039 = fadd fast float %9033, %9036
  %9040 = fmul fast float %9028, %8780
  %9041 = fmul fast float %9029, %8781
  %9042 = fmul fast float %9030, %8782
  %9043 = fmul fast float %150, %8819
  %9044 = fmul fast float %152, %8820
  %9045 = fsub fast float 1.000000e+00, %9043
  %9046 = fsub fast float 1.000000e+00, %9044
  %9047 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %9048 = extractvalue %dx.types.CBufRet.f32 %9047, 0
  %9049 = extractvalue %dx.types.CBufRet.f32 %9047, 1
  %9050 = extractvalue %dx.types.CBufRet.f32 %9047, 2
  %9051 = fmul fast float %9045, %9048
  %9052 = fmul fast float %9045, %9049
  %9053 = fmul fast float %9045, %9050
  %9054 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %9055 = extractvalue %dx.types.CBufRet.f32 %9054, 0
  %9056 = extractvalue %dx.types.CBufRet.f32 %9054, 1
  %9057 = extractvalue %dx.types.CBufRet.f32 %9054, 2
  %9058 = fmul fast float %9046, %9055
  %9059 = fmul fast float %9046, %9056
  %9060 = fmul fast float %9046, %9057
  %9061 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %9062 = extractvalue %dx.types.CBufRet.f32 %9061, 0
  %9063 = extractvalue %dx.types.CBufRet.f32 %9061, 1
  %9064 = extractvalue %dx.types.CBufRet.f32 %9061, 2
  %9065 = fadd fast float %9058, %9062
  %9066 = fadd fast float %9065, %9051
  %9067 = fadd fast float %9059, %9063
  %9068 = fadd fast float %9067, %9052
  %9069 = fadd fast float %9060, %9064
  %9070 = fadd fast float %9069, %9053
  %9071 = fmul fast float %9066, %223
  %9072 = fmul fast float %9068, %223
  %9073 = fmul fast float %9070, %223
  br label %9074

; <label>:9074                                    ; preds = %9016, %8779
  %9075 = phi float [ %9071, %9016 ], [ %201, %8779 ]
  %9076 = phi float [ %9072, %9016 ], [ %202, %8779 ]
  %9077 = phi float [ %9073, %9016 ], [ %203, %8779 ]
  %9078 = phi float [ %223, %9016 ], [ %101, %8779 ]
  %9079 = phi float [ %9037, %9016 ], [ %8807, %8779 ]
  %9080 = phi float [ %9038, %9016 ], [ %8808, %8779 ]
  %9081 = phi float [ %9039, %9016 ], [ %8809, %8779 ]
  %9082 = phi float [ %9040, %9016 ], [ %8780, %8779 ]
  %9083 = phi float [ %9041, %9016 ], [ %8781, %8779 ]
  %9084 = phi float [ %9042, %9016 ], [ %8782, %8779 ]
  %9085 = phi float [ %9017, %9016 ], [ 1.000000e+00, %8779 ]
  br i1 %8816, label %10240, label %9086

; <label>:9086                                    ; preds = %9074
  %9087 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %9088 = extractvalue %dx.types.CBufRet.f32 %9087, 0
  %9089 = extractvalue %dx.types.CBufRet.f32 %9087, 1
  %9090 = extractvalue %dx.types.CBufRet.f32 %9087, 2
  %9091 = extractvalue %dx.types.CBufRet.f32 %9087, 3
  %9092 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %9093 = extractvalue %dx.types.CBufRet.f32 %9092, 0
  %9094 = extractvalue %dx.types.CBufRet.f32 %9092, 1
  %9095 = extractvalue %dx.types.CBufRet.f32 %9092, 2
  %9096 = extractvalue %dx.types.CBufRet.f32 %9092, 3
  %9097 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %9098 = extractvalue %dx.types.CBufRet.f32 %9097, 0
  %9099 = extractvalue %dx.types.CBufRet.f32 %9097, 1
  %9100 = extractvalue %dx.types.CBufRet.f32 %9097, 2
  %9101 = extractvalue %dx.types.CBufRet.f32 %9097, 3
  %9102 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %9103 = extractvalue %dx.types.CBufRet.f32 %9102, 0
  %9104 = extractvalue %dx.types.CBufRet.f32 %9102, 1
  %9105 = extractvalue %dx.types.CBufRet.f32 %9102, 2
  %9106 = extractvalue %dx.types.CBufRet.f32 %9102, 3
  %9107 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %9108 = extractvalue %dx.types.CBufRet.f32 %9107, 3
  %9109 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %9110 = extractvalue %dx.types.CBufRet.f32 %9109, 3
  %9111 = extractvalue %dx.types.CBufRet.f32 %9109, 0
  %9112 = extractvalue %dx.types.CBufRet.f32 %9109, 1
  %9113 = extractvalue %dx.types.CBufRet.f32 %9109, 2
  %9114 = fcmp fast olt float %9113, -5.000000e-01
  %9115 = call float @dx.op.dot3.f32(i32 55, float %9075, float %9076, float %9077, float %9075, float %9076, float %9077)  ; Dot3(ax,ay,az,bx,by,bz)
  %9116 = call float @dx.op.unary.f32(i32 25, float %9115)  ; Rsqrt(value)
  %9117 = fmul fast float %9116, %9115
  %9118 = fmul fast float %9116, %9075
  %9119 = fmul fast float %9116, %9076
  %9120 = fmul fast float %9116, %9077
  %9121 = fadd fast float %9117, %9091
  %9122 = call float @dx.op.dot3.f32(i32 55, float %9118, float %9119, float %9120, float %9088, float %9089, float %9090)  ; Dot3(ax,ay,az,bx,by,bz)
  %9123 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %9124 = extractvalue %dx.types.CBufRet.i32 %9123, 1
  %9125 = and i32 %9124, 1
  %9126 = icmp ne i32 %9125, 0
  %9127 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %9128 = extractvalue %dx.types.CBufRet.f32 %9127, 2
  %9129 = fcmp fast ogt float %9128, 0.000000e+00
  %9130 = and i1 %9126, %9129
  br i1 %9130, label %9131, label %9537, !dx.controlflow.hints !138

; <label>:9131                                    ; preds = %9086
  %9132 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %9133 = extractvalue %dx.types.CBufRet.f32 %9132, 3
  %9134 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %9135 = extractvalue %dx.types.CBufRet.f32 %9134, 2
  %9136 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %9137 = extractvalue %dx.types.CBufRet.f32 %9136, 2
  %9138 = fsub fast float %9135, %9137
  %9139 = and i32 %9124, 2
  %9140 = extractvalue %dx.types.CBufRet.i32 %9123, 0
  %9141 = call i32 @dx.op.binary.i32(i32 40, i32 %9140, i32 3)  ; UMin(a,b)
  %9142 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %9143 = extractvalue %dx.types.CBufRet.f32 %9142, 0
  %9144 = extractvalue %dx.types.CBufRet.f32 %9142, 1
  %9145 = extractvalue %dx.types.CBufRet.f32 %9136, 0
  %9146 = extractvalue %dx.types.CBufRet.f32 %9136, 1
  %9147 = fsub fast float %9143, %9145
  %9148 = fsub fast float %9144, %9146
  %9149 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %9150 = extractvalue %dx.types.CBufRet.f32 %9149, 0
  %9151 = fcmp fast ogt float %9150, 0.000000e+00
  %9152 = fsub fast float -0.000000e+00, %9147
  %9153 = fsub fast float -0.000000e+00, %9148
  %9154 = call float @dx.op.dot2.f32(i32 54, float %9118, float %9119, float %9118, float %9119)  ; Dot2(ax,ay,bx,by)
  %9155 = call float @dx.op.dot2.f32(i32 54, float %9118, float %9119, float %9152, float %9153)  ; Dot2(ax,ay,bx,by)
  %9156 = fmul fast float %9155, 2.000000e+00
  %9157 = call float @dx.op.dot2.f32(i32 54, float %9152, float %9153, float %9152, float %9153)  ; Dot2(ax,ay,bx,by)
  %9158 = fmul fast float %9150, %9150
  %9159 = fsub fast float %9157, %9158
  %9160 = fmul fast float %9156, %9156
  %9161 = fmul fast float %9154, 4.000000e+00
  %9162 = fmul fast float %9161, %9159
  %9163 = fsub fast float %9160, %9162
  %9164 = fcmp fast ogt float %9163, 0.000000e+00
  br i1 %9164, label %9165, label %9180

; <label>:9165                                    ; preds = %9131
  %9166 = fcmp fast ogt float %9156, 0.000000e+00
  %9167 = call float @dx.op.unary.f32(i32 24, float %9163)  ; Sqrt(value)
  %9168 = fsub fast float -0.000000e+00, %9167
  %9169 = select i1 %9166, float %9167, float %9168
  %9170 = fadd fast float %9169, %9156
  %9171 = fmul float %9170, -5.000000e-01
  %9172 = fdiv fast float %9171, %9154
  %9173 = call float @dx.op.binary.f32(i32 35, float %9172, float 0.000000e+00)  ; FMax(a,b)
  %9174 = call float @dx.op.binary.f32(i32 36, float %9117, float %9173)  ; FMin(a,b)
  %9175 = fdiv fast float %9159, %9171
  %9176 = call float @dx.op.binary.f32(i32 35, float %9175, float 0.000000e+00)  ; FMax(a,b)
  %9177 = call float @dx.op.binary.f32(i32 36, float %9117, float %9176)  ; FMin(a,b)
  %9178 = call float @dx.op.binary.f32(i32 36, float %9174, float %9177)  ; FMin(a,b)
  %9179 = call float @dx.op.binary.f32(i32 35, float %9174, float %9177)  ; FMax(a,b)
  br label %9180

; <label>:9180                                    ; preds = %9165, %9131
  %9181 = phi float [ %9179, %9165 ], [ -1.000000e+00, %9131 ]
  %9182 = phi float [ %9178, %9165 ], [ -1.000000e+00, %9131 ]
  %9183 = phi i1 [ true, %9165 ], [ false, %9131 ]
  %9184 = and i1 %9151, %9183
  br i1 %9184, label %9185, label %9187

; <label>:9185                                    ; preds = %9180
  %9186 = fcmp fast oeq float %9182, %9181
  br i1 %9186, label %9490, label %9188

; <label>:9187                                    ; preds = %9180
  br i1 %9151, label %9490, label %9188

; <label>:9188                                    ; preds = %9187, %9185
  %9189 = phi float [ %9117, %9187 ], [ %9181, %9185 ]
  %9190 = phi float [ 0.000000e+00, %9187 ], [ %9182, %9185 ]
  %9191 = icmp ne i32 %9139, 0
  %9192 = fmul fast float %9189, %9120
  %9193 = fadd fast float %9192, %9133
  %9194 = fmul fast float %9193, %9189
  %9195 = select i1 %9191, float 0.000000e+00, float %9194
  %9196 = fcmp fast oeq float %9120, 0.000000e+00
  %9197 = fdiv fast float %9138, %9120
  %9198 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %9197)  ; FMax(a,b)
  %9199 = select i1 %9196, float %9189, float %9198
  %9200 = call float @dx.op.binary.f32(i32 36, float %9189, float %9199)  ; FMin(a,b)
  %9201 = fcmp fast ogt float %9120, 0.000000e+00
  %9202 = fcmp fast olt float %9138, 0.000000e+00
  br i1 %9201, label %9203, label %9260

; <label>:9203                                    ; preds = %9188
  %9204 = icmp eq i32 %9139, 0
  br i1 %9202, label %9205, label %9249

; <label>:9205                                    ; preds = %9203
  %9206 = select i1 %9204, float %9189, float 0.000000e+00
  %9207 = fsub fast float -0.000000e+00, %9206
  %9208 = call float @dx.op.unary.f32(i32 6, float %9207)  ; FAbs(value)
  %9209 = fmul fast float %9206, %9120
  %9210 = fadd fast float %9209, %9133
  %9211 = fmul fast float %9208, %9210
  %9212 = fsub fast float %9195, %9211
  %9213 = fsub fast float %9189, %9208
  %9214 = select i1 %9204, float %9213, float 0.000000e+00
  %9215 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %9216 = extractvalue %dx.types.CBufRet.f32 %9215, 0
  %9217 = extractvalue %dx.types.CBufRet.f32 %9215, 1
  %9218 = extractvalue %dx.types.CBufRet.f32 %9215, 2
  %9219 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %9220 = extractvalue %dx.types.CBufRet.f32 %9219, 0
  %9221 = extractvalue %dx.types.CBufRet.f32 %9219, 1
  %9222 = extractvalue %dx.types.CBufRet.f32 %9219, 2
  %9223 = extractvalue %dx.types.CBufRet.f32 %9219, 3
  %9224 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %9225 = extractvalue %dx.types.CBufRet.f32 %9224, 3
  %9226 = call float @dx.op.binary.f32(i32 36, float %9212, float %9225)  ; FMin(a,b)
  %9227 = fmul fast float %9223, %9214
  %9228 = call float @dx.op.unary.f32(i32 7, float %9227)  ; Saturate(value)
  %9229 = fsub fast float %9220, %9216
  %9230 = fsub fast float %9221, %9217
  %9231 = fsub fast float %9222, %9218
  %9232 = fmul fast float %9228, %9229
  %9233 = fmul fast float %9228, %9230
  %9234 = fmul fast float %9228, %9231
  %9235 = fadd fast float %9232, %9216
  %9236 = fadd fast float %9233, %9217
  %9237 = fadd fast float %9234, %9218
  %9238 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %9239 = extractvalue %dx.types.CBufRet.f32 %9238, 0
  %9240 = extractvalue %dx.types.CBufRet.f32 %9238, 1
  %9241 = fadd fast float %9240, %9239
  %9242 = call float @dx.op.unary.f32(i32 7, float %9241)  ; Saturate(value)
  %9243 = extractvalue %dx.types.CBufRet.f32 %9238, 2
  %9244 = extractvalue %dx.types.CBufRet.f32 %9238, 3
  %9245 = fadd fast float %9244, %9243
  %9246 = call float @dx.op.unary.f32(i32 7, float %9245)  ; Saturate(value)
  %9247 = fmul fast float %9242, %9226
  %9248 = fmul fast float %9247, %9246
  br label %9490

; <label>:9249                                    ; preds = %9203
  br i1 %9204, label %9250, label %9271

; <label>:9250                                    ; preds = %9249
  %9251 = call float @dx.op.binary.f32(i32 36, float %9200, float %9190)  ; FMin(a,b)
  %9252 = fsub fast float %9200, %9251
  %9253 = fsub fast float %9252, %9189
  %9254 = call float @dx.op.unary.f32(i32 6, float %9253)  ; FAbs(value)
  %9255 = fadd fast float %9252, %9189
  %9256 = fmul fast float %9255, %9120
  %9257 = fadd fast float %9256, %9133
  %9258 = fmul fast float %9257, %9254
  %9259 = fsub fast float %9195, %9258
  br label %9271

; <label>:9260                                    ; preds = %9188
  br i1 %9202, label %9261, label %9271

; <label>:9261                                    ; preds = %9260
  %9262 = call float @dx.op.binary.f32(i32 35, float %9190, float %9200)  ; FMax(a,b)
  %9263 = icmp eq i32 %9139, 0
  %9264 = select i1 %9263, float %9200, float 0.000000e+00
  %9265 = fsub fast float -0.000000e+00, %9264
  %9266 = call float @dx.op.unary.f32(i32 6, float %9265)  ; FAbs(value)
  %9267 = fmul fast float %9264, %9120
  %9268 = fadd fast float %9267, %9133
  %9269 = fmul fast float %9266, %9268
  %9270 = fsub fast float %9195, %9269
  br label %9271

; <label>:9271                                    ; preds = %9261, %9260, %9250, %9249
  %9272 = phi float [ %9190, %9249 ], [ %9190, %9250 ], [ %9262, %9261 ], [ %9190, %9260 ]
  %9273 = phi float [ 0.000000e+00, %9249 ], [ %9254, %9250 ], [ %9266, %9261 ], [ 0.000000e+00, %9260 ]
  %9274 = phi float [ %9195, %9249 ], [ %9259, %9250 ], [ %9270, %9261 ], [ %9195, %9260 ]
  %9275 = phi float [ %9200, %9249 ], [ %9200, %9250 ], [ %9189, %9261 ], [ %9189, %9260 ]
  %9276 = getelementptr inbounds [3 x float], [3 x float]* %108, i32 0, i32 0
  store float -1.000000e+00, float* %9276, align 4, !tbaa !124, !noalias !139
  %9277 = getelementptr inbounds [3 x float], [3 x float]* %108, i32 0, i32 1
  store float -1.000000e+00, float* %9277, align 4, !tbaa !124, !noalias !139
  %9278 = getelementptr inbounds [3 x float], [3 x float]* %108, i32 0, i32 2
  store float -1.000000e+00, float* %9278, align 4, !tbaa !124, !noalias !139
  %9279 = getelementptr inbounds [3 x float], [3 x float]* %109, i32 0, i32 0
  store float -1.000000e+00, float* %9279, align 4, !tbaa !124, !noalias !139
  %9280 = getelementptr inbounds [3 x float], [3 x float]* %109, i32 0, i32 1
  store float -1.000000e+00, float* %9280, align 4, !tbaa !124, !noalias !139
  %9281 = getelementptr inbounds [3 x float], [3 x float]* %109, i32 0, i32 2
  store float -1.000000e+00, float* %9281, align 4, !tbaa !124, !noalias !139
  %9282 = icmp sgt i32 %9141, 0
  br i1 %9282, label %9283, label %9344

; <label>:9283                                    ; preds = %9271
  br label %9284

; <label>:9284                                    ; preds = %9333, %9283
  %9285 = phi i32 [ %9334, %9333 ], [ 0, %9283 ]
  %9286 = phi i32 [ %9335, %9333 ], [ 0, %9283 ]
  %9287 = add nuw i32 %9286, 171
  %9288 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 %9287)  ; CBufferLoadLegacy(handle,regIndex)
  %9289 = extractvalue %dx.types.CBufRet.f32 %9288, 0
  %9290 = extractvalue %dx.types.CBufRet.f32 %9288, 1
  %9291 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %9292 = extractvalue %dx.types.CBufRet.f32 %9291, 0
  %9293 = extractvalue %dx.types.CBufRet.f32 %9291, 1
  %9294 = fsub fast float %9289, %9292
  %9295 = fsub fast float %9290, %9293
  %9296 = extractvalue %dx.types.CBufRet.f32 %9288, 2
  %9297 = fsub fast float -0.000000e+00, %9294
  %9298 = fsub fast float -0.000000e+00, %9295
  %9299 = call float @dx.op.dot2.f32(i32 54, float %9118, float %9119, float %9297, float %9298)  ; Dot2(ax,ay,bx,by)
  %9300 = fmul fast float %9299, 2.000000e+00
  %9301 = call float @dx.op.dot2.f32(i32 54, float %9297, float %9298, float %9297, float %9298)  ; Dot2(ax,ay,bx,by)
  %9302 = fmul fast float %9296, %9296
  %9303 = fsub fast float %9301, %9302
  %9304 = fmul fast float %9300, %9300
  %9305 = fmul fast float %9161, %9303
  %9306 = fsub fast float %9304, %9305
  %9307 = fcmp fast ogt float %9306, 0.000000e+00
  br i1 %9307, label %9308, label %9323

; <label>:9308                                    ; preds = %9284
  %9309 = fcmp fast ogt float %9300, 0.000000e+00
  %9310 = call float @dx.op.unary.f32(i32 24, float %9306)  ; Sqrt(value)
  %9311 = fsub fast float -0.000000e+00, %9310
  %9312 = select i1 %9309, float %9310, float %9311
  %9313 = fadd fast float %9312, %9300
  %9314 = fmul float %9313, -5.000000e-01
  %9315 = fdiv fast float %9314, %9154
  %9316 = call float @dx.op.binary.f32(i32 35, float %9315, float 0.000000e+00)  ; FMax(a,b)
  %9317 = call float @dx.op.binary.f32(i32 36, float %9189, float %9316)  ; FMin(a,b)
  %9318 = fdiv fast float %9303, %9314
  %9319 = call float @dx.op.binary.f32(i32 35, float %9318, float 0.000000e+00)  ; FMax(a,b)
  %9320 = call float @dx.op.binary.f32(i32 36, float %9189, float %9319)  ; FMin(a,b)
  %9321 = call float @dx.op.binary.f32(i32 36, float %9317, float %9320)  ; FMin(a,b)
  %9322 = call float @dx.op.binary.f32(i32 35, float %9317, float %9320)  ; FMax(a,b)
  br label %9323

; <label>:9323                                    ; preds = %9308, %9284
  %9324 = phi float [ %9322, %9308 ], [ -1.000000e+00, %9284 ]
  %9325 = phi float [ %9321, %9308 ], [ -1.000000e+00, %9284 ]
  %9326 = phi i1 [ true, %9308 ], [ false, %9284 ]
  br i1 %9326, label %9327, label %9333

; <label>:9327                                    ; preds = %9323
  %9328 = call float @dx.op.binary.f32(i32 35, float %9272, float %9325)  ; FMax(a,b)
  %9329 = getelementptr inbounds [3 x float], [3 x float]* %108, i32 0, i32 %9286
  store float %9328, float* %9329, align 4, !tbaa !124, !noalias !139
  %9330 = call float @dx.op.binary.f32(i32 35, float %9272, float %9324)  ; FMax(a,b)
  %9331 = getelementptr inbounds [3 x float], [3 x float]* %109, i32 0, i32 %9286
  store float %9330, float* %9331, align 4, !tbaa !124, !noalias !139
  %9332 = add nsw i32 %9285, 1
  br label %9333

; <label>:9333                                    ; preds = %9327, %9323
  %9334 = phi i32 [ %9332, %9327 ], [ %9285, %9323 ]
  %9335 = add nuw nsw i32 %9286, 1
  %9336 = icmp eq i32 %9335, %9141
  br i1 %9336, label %9337, label %9284

; <label>:9337                                    ; preds = %9333
  %9338 = load float, float* %9278, align 4, !tbaa !124, !alias.scope !155, !noalias !158
  %9339 = load float, float* %9277, align 4, !tbaa !124, !alias.scope !161, !noalias !162
  %9340 = load float, float* %9276, align 4, !tbaa !124, !alias.scope !163, !noalias !164
  %9341 = load float, float* %9281, align 4, !tbaa !124, !alias.scope !165, !noalias !168
  %9342 = load float, float* %9280, align 4, !tbaa !124, !alias.scope !171, !noalias !172
  %9343 = load float, float* %9279, align 4, !tbaa !124, !alias.scope !173, !noalias !174
  br label %9344

; <label>:9344                                    ; preds = %9337, %9271
  %9345 = phi float [ -1.000000e+00, %9271 ], [ %9343, %9337 ]
  %9346 = phi float [ -1.000000e+00, %9271 ], [ %9342, %9337 ]
  %9347 = phi float [ -1.000000e+00, %9271 ], [ %9341, %9337 ]
  %9348 = phi float [ -1.000000e+00, %9271 ], [ %9340, %9337 ]
  %9349 = phi float [ -1.000000e+00, %9271 ], [ %9339, %9337 ]
  %9350 = phi float [ -1.000000e+00, %9271 ], [ %9338, %9337 ]
  %9351 = phi i32 [ 0, %9271 ], [ %9334, %9337 ]
  %9352 = call float @dx.op.binary.f32(i32 36, float %9349, float %9350)  ; FMin(a,b)
  %9353 = call float @dx.op.binary.f32(i32 36, float %9348, float %9352)  ; FMin(a,b)
  %9354 = call float @dx.op.binary.f32(i32 35, float %9348, float %9349)  ; FMax(a,b)
  %9355 = call float @dx.op.binary.f32(i32 36, float %9354, float %9350)  ; FMin(a,b)
  %9356 = call float @dx.op.binary.f32(i32 36, float %9348, float %9349)  ; FMin(a,b)
  %9357 = call float @dx.op.binary.f32(i32 35, float %9356, float %9355)  ; FMax(a,b)
  %9358 = call float @dx.op.binary.f32(i32 35, float %9349, float %9350)  ; FMax(a,b)
  %9359 = call float @dx.op.binary.f32(i32 35, float %9348, float %9358)  ; FMax(a,b)
  store float %9353, float* %9276, align 4, !tbaa !124, !alias.scope !163, !noalias !164
  store float %9357, float* %9277, align 4, !tbaa !124, !alias.scope !161, !noalias !162
  store float %9359, float* %9278, align 4, !tbaa !124, !alias.scope !155, !noalias !158
  %9360 = call float @dx.op.binary.f32(i32 36, float %9346, float %9347)  ; FMin(a,b)
  %9361 = call float @dx.op.binary.f32(i32 36, float %9345, float %9360)  ; FMin(a,b)
  %9362 = call float @dx.op.binary.f32(i32 35, float %9345, float %9346)  ; FMax(a,b)
  %9363 = call float @dx.op.binary.f32(i32 36, float %9362, float %9347)  ; FMin(a,b)
  %9364 = call float @dx.op.binary.f32(i32 36, float %9345, float %9346)  ; FMin(a,b)
  %9365 = call float @dx.op.binary.f32(i32 35, float %9364, float %9363)  ; FMax(a,b)
  %9366 = call float @dx.op.binary.f32(i32 35, float %9346, float %9347)  ; FMax(a,b)
  %9367 = call float @dx.op.binary.f32(i32 35, float %9345, float %9366)  ; FMax(a,b)
  store float %9361, float* %9279, align 4, !tbaa !124, !alias.scope !173, !noalias !174
  store float %9365, float* %9280, align 4, !tbaa !124, !alias.scope !171, !noalias !172
  store float %9367, float* %9281, align 4, !tbaa !124, !alias.scope !165, !noalias !168
  %9368 = sub nsw i32 3, %9351
  %9369 = icmp sgt i32 %9368, 2
  br i1 %9369, label %9370, label %9408

; <label>:9370                                    ; preds = %9344
  %9371 = icmp eq i32 %9139, 0
  %9372 = fsub fast float %9189, %9273
  %9373 = select i1 %9371, float %9372, float %9273
  %9374 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %9375 = extractvalue %dx.types.CBufRet.f32 %9374, 0
  %9376 = extractvalue %dx.types.CBufRet.f32 %9374, 1
  %9377 = extractvalue %dx.types.CBufRet.f32 %9374, 2
  %9378 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %9379 = extractvalue %dx.types.CBufRet.f32 %9378, 0
  %9380 = extractvalue %dx.types.CBufRet.f32 %9378, 1
  %9381 = extractvalue %dx.types.CBufRet.f32 %9378, 2
  %9382 = extractvalue %dx.types.CBufRet.f32 %9378, 3
  %9383 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %9384 = extractvalue %dx.types.CBufRet.f32 %9383, 3
  %9385 = call float @dx.op.binary.f32(i32 36, float %9274, float %9384)  ; FMin(a,b)
  %9386 = fmul fast float %9382, %9373
  %9387 = call float @dx.op.unary.f32(i32 7, float %9386)  ; Saturate(value)
  %9388 = fsub fast float %9379, %9375
  %9389 = fsub fast float %9380, %9376
  %9390 = fsub fast float %9381, %9377
  %9391 = fmul fast float %9387, %9388
  %9392 = fmul fast float %9387, %9389
  %9393 = fmul fast float %9387, %9390
  %9394 = fadd fast float %9391, %9375
  %9395 = fadd fast float %9392, %9376
  %9396 = fadd fast float %9393, %9377
  %9397 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %9398 = extractvalue %dx.types.CBufRet.f32 %9397, 0
  %9399 = extractvalue %dx.types.CBufRet.f32 %9397, 1
  %9400 = fadd fast float %9399, %9398
  %9401 = call float @dx.op.unary.f32(i32 7, float %9400)  ; Saturate(value)
  %9402 = extractvalue %dx.types.CBufRet.f32 %9397, 2
  %9403 = extractvalue %dx.types.CBufRet.f32 %9397, 3
  %9404 = fadd fast float %9403, %9402
  %9405 = call float @dx.op.unary.f32(i32 7, float %9404)  ; Saturate(value)
  %9406 = fmul fast float %9401, %9385
  %9407 = fmul fast float %9406, %9405
  br label %9490

; <label>:9408                                    ; preds = %9344
  %9409 = getelementptr inbounds [3 x float], [3 x float]* %108, i32 0, i32 %9368
  %9410 = load float, float* %9409, align 4, !tbaa !124, !noalias !139
  %9411 = fcmp fast olt float %9410, %9275
  %9412 = icmp sgt i32 %9351, 0
  %9413 = and i1 %9412, %9411
  br i1 %9413, label %9414, label %9451

; <label>:9414                                    ; preds = %9408
  br label %9415

; <label>:9415                                    ; preds = %9444, %9414
  %9416 = phi float [ %9445, %9444 ], [ %9273, %9414 ]
  %9417 = phi float [ %9446, %9444 ], [ %9274, %9414 ]
  %9418 = phi float [ %9426, %9444 ], [ %9410, %9414 ]
  %9419 = phi i32 [ %9423, %9444 ], [ %9368, %9414 ]
  %9420 = getelementptr inbounds [3 x float], [3 x float]* %109, i32 0, i32 %9419
  %9421 = load float, float* %9420, align 4, !tbaa !124, !noalias !139
  %9422 = icmp slt i32 %9419, 2
  %9423 = add nsw i32 %9419, 1
  %9424 = getelementptr inbounds [3 x float], [3 x float]* %108, i32 0, i32 %9423
  %9425 = load float, float* %9424, align 4, !tbaa !124, !noalias !139
  %9426 = select i1 %9422, float %9425, float %9189
  %9427 = call float @dx.op.binary.f32(i32 36, float %9426, float %9421)  ; FMin(a,b)
  %9428 = call float @dx.op.binary.f32(i32 36, float %9275, float %9427)  ; FMin(a,b)
  %9429 = icmp eq i32 %9139, 0
  %9430 = fadd fast float %9428, %9418
  %9431 = fmul fast float %9430, %9120
  %9432 = fadd fast float %9431, %9133
  br i1 %9429, label %9438, label %9433

; <label>:9433                                    ; preds = %9415
  %9434 = fsub fast float %9428, %9418
  %9435 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %9434)  ; FMax(a,b)
  %9436 = fmul fast float %9435, %9432
  %9437 = fadd fast float %9436, %9417
  br label %9444

; <label>:9438                                    ; preds = %9415
  %9439 = fsub fast float %9418, %9428
  %9440 = call float @dx.op.unary.f32(i32 6, float %9439)  ; FAbs(value)
  %9441 = fadd fast float %9440, %9416
  %9442 = fmul fast float %9440, %9432
  %9443 = fsub fast float %9417, %9442
  br label %9444

; <label>:9444                                    ; preds = %9438, %9433
  %9445 = phi float [ %9435, %9433 ], [ %9441, %9438 ]
  %9446 = phi float [ %9437, %9433 ], [ %9443, %9438 ]
  %9447 = fcmp fast olt float %9426, %9275
  %9448 = icmp slt i32 %9423, 3
  %9449 = and i1 %9448, %9447
  br i1 %9449, label %9415, label %9450

; <label>:9450                                    ; preds = %9444
  br label %9451

; <label>:9451                                    ; preds = %9450, %9408
  %9452 = phi float [ %9273, %9408 ], [ %9445, %9450 ]
  %9453 = phi float [ %9274, %9408 ], [ %9446, %9450 ]
  %9454 = fsub fast float %9189, %9452
  %9455 = select i1 %9191, float %9452, float %9454
  %9456 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %9457 = extractvalue %dx.types.CBufRet.f32 %9456, 0
  %9458 = extractvalue %dx.types.CBufRet.f32 %9456, 1
  %9459 = extractvalue %dx.types.CBufRet.f32 %9456, 2
  %9460 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %9461 = extractvalue %dx.types.CBufRet.f32 %9460, 0
  %9462 = extractvalue %dx.types.CBufRet.f32 %9460, 1
  %9463 = extractvalue %dx.types.CBufRet.f32 %9460, 2
  %9464 = extractvalue %dx.types.CBufRet.f32 %9460, 3
  %9465 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %9466 = extractvalue %dx.types.CBufRet.f32 %9465, 3
  %9467 = call float @dx.op.binary.f32(i32 36, float %9453, float %9466)  ; FMin(a,b)
  %9468 = fmul fast float %9464, %9455
  %9469 = call float @dx.op.unary.f32(i32 7, float %9468)  ; Saturate(value)
  %9470 = fsub fast float %9461, %9457
  %9471 = fsub fast float %9462, %9458
  %9472 = fsub fast float %9463, %9459
  %9473 = fmul fast float %9469, %9470
  %9474 = fmul fast float %9469, %9471
  %9475 = fmul fast float %9469, %9472
  %9476 = fadd fast float %9473, %9457
  %9477 = fadd fast float %9474, %9458
  %9478 = fadd fast float %9475, %9459
  %9479 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %9480 = extractvalue %dx.types.CBufRet.f32 %9479, 0
  %9481 = extractvalue %dx.types.CBufRet.f32 %9479, 1
  %9482 = fadd fast float %9481, %9480
  %9483 = call float @dx.op.unary.f32(i32 7, float %9482)  ; Saturate(value)
  %9484 = extractvalue %dx.types.CBufRet.f32 %9479, 2
  %9485 = extractvalue %dx.types.CBufRet.f32 %9479, 3
  %9486 = fadd fast float %9485, %9484
  %9487 = call float @dx.op.unary.f32(i32 7, float %9486)  ; Saturate(value)
  %9488 = fmul fast float %9483, %9467
  %9489 = fmul fast float %9488, %9487
  br label %9490

; <label>:9490                                    ; preds = %9451, %9370, %9205, %9187, %9185
  %9491 = phi float [ %9214, %9205 ], [ %9373, %9370 ], [ %9455, %9451 ], [ 0.000000e+00, %9185 ], [ 0.000000e+00, %9187 ]
  %9492 = phi float [ %9248, %9205 ], [ %9407, %9370 ], [ %9489, %9451 ], [ 0.000000e+00, %9185 ], [ 0.000000e+00, %9187 ]
  %9493 = phi float [ %9235, %9205 ], [ %9394, %9370 ], [ %9476, %9451 ], [ 0.000000e+00, %9185 ], [ 0.000000e+00, %9187 ]
  %9494 = phi float [ %9236, %9205 ], [ %9395, %9370 ], [ %9477, %9451 ], [ 0.000000e+00, %9185 ], [ 0.000000e+00, %9187 ]
  %9495 = phi float [ %9237, %9205 ], [ %9396, %9370 ], [ %9478, %9451 ], [ 0.000000e+00, %9185 ], [ 0.000000e+00, %9187 ]
  %9496 = fmul fast float %9128, %9492
  %9497 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %9498 = extractvalue %dx.types.CBufRet.f32 %9497, 2
  %9499 = fsub fast float %9135, %9498
  %9500 = fcmp fast olt float %9496, -2.000000e+01
  %9501 = call float @dx.op.unary.f32(i32 21, float %9496)  ; Exp(value)
  %9502 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %9503 = extractvalue %dx.types.CBufRet.f32 %9502, 2
  %9504 = extractvalue %dx.types.CBufRet.f32 %9502, 3
  %9505 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %9506 = extractvalue %dx.types.CBufRet.f32 %9505, 2
  %9507 = fmul fast float %9504, %9499
  %9508 = call float @dx.op.unary.f32(i32 7, float %9507)  ; Saturate(value)
  %9509 = fsub fast float 1.000000e+00, %9508
  %9510 = fmul fast float %9120, 5.000000e-01
  %9511 = fadd fast float %9510, 5.000000e-01
  %9512 = call float @dx.op.unary.f32(i32 7, float %9511)  ; Saturate(value)
  %9513 = fsub fast float 1.000000e+00, %9512
  %9514 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %9509)  ; FMax(a,b)
  %9515 = fdiv fast float %9513, %9514
  %9516 = fsub fast float %9499, %9077
  %9517 = call float @dx.op.unary.f32(i32 6, float %9516)  ; FAbs(value)
  %9518 = fmul fast float %9517, %9503
  %9519 = call float @dx.op.unary.f32(i32 7, float %9515)  ; Saturate(value)
  %9520 = fsub fast float 1.000000e+00, %9518
  %9521 = fmul fast float %9520, %9519
  %9522 = fadd fast float %9521, %9518
  %9523 = fmul fast float %9506, %9499
  %9524 = call float @dx.op.unary.f32(i32 7, float %9523)  ; Saturate(value)
  %9525 = fsub fast float 1.000000e+00, %9522
  %9526 = fmul fast float %9525, %9524
  %9527 = fadd fast float %9526, %9522
  %9528 = call float @dx.op.unary.f32(i32 7, float %9527)  ; Saturate(value)
  %9529 = fadd fast float %9501, -1.000000e+00
  %9530 = select i1 %9500, float -1.000000e+00, float %9529
  %9531 = fmul fast float %9528, %9530
  %9532 = fadd fast float %9531, 1.000000e+00
  %9533 = fsub fast float -0.000000e+00, %9531
  %9534 = fmul fast float %9493, %9533
  %9535 = fmul fast float %9494, %9533
  %9536 = fmul fast float %9495, %9533
  br label %9537

; <label>:9537                                    ; preds = %9490, %9086
  %9538 = phi float [ %9491, %9490 ], [ 0.000000e+00, %9086 ]
  %9539 = phi float [ %9532, %9490 ], [ 1.000000e+00, %9086 ]
  %9540 = phi float [ %9534, %9490 ], [ 0.000000e+00, %9086 ]
  %9541 = phi float [ %9535, %9490 ], [ 0.000000e+00, %9086 ]
  %9542 = phi float [ %9536, %9490 ], [ 0.000000e+00, %9086 ]
  %9543 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %9544 = extractvalue %dx.types.CBufRet.f32 %9543, 1
  %9545 = fsub fast float 1.000000e+00, %9539
  %9546 = fmul fast float %9545, %9121
  %9547 = fmul fast float %9546, %9544
  %9548 = fsub fast float %9121, %9547
  br i1 %9114, label %9549, label %9578, !dx.controlflow.hints !175

; <label>:9549                                    ; preds = %9537
  %9550 = fmul fast float %9122, %9111
  %9551 = fadd fast float %9550, %9112
  %9552 = call float @dx.op.unary.f32(i32 7, float %9551)  ; Saturate(value)
  %9553 = fmul fast float %9093, %9548
  %9554 = fsub fast float -0.000000e+00, %9553
  %9555 = fmul fast float %9094, %9548
  %9556 = fsub fast float -0.000000e+00, %9555
  %9557 = call float @dx.op.unary.f32(i32 21, float %9554)  ; Exp(value)
  %9558 = call float @dx.op.unary.f32(i32 21, float %9556)  ; Exp(value)
  %9559 = call float @dx.op.binary.f32(i32 35, float %9101, float %9557)  ; FMax(a,b)
  %9560 = call float @dx.op.binary.f32(i32 35, float %9101, float %9558)  ; FMax(a,b)
  %9561 = fsub fast float %9560, %9559
  %9562 = fmul fast float %9561, %9552
  %9563 = fadd fast float %9562, %9559
  %9564 = call float @dx.op.unary.f32(i32 7, float %9563)  ; Saturate(value)
  %9565 = fsub fast float %9098, %9103
  %9566 = fsub fast float %9099, %9104
  %9567 = fsub fast float %9100, %9105
  %9568 = fmul fast float %9552, %9565
  %9569 = fmul fast float %9552, %9566
  %9570 = fmul fast float %9552, %9567
  %9571 = fadd fast float %9568, %9103
  %9572 = fadd fast float %9569, %9104
  %9573 = fadd fast float %9570, %9105
  %9574 = fsub fast float 1.000000e+00, %9564
  %9575 = fmul fast float %9574, %9571
  %9576 = fmul fast float %9574, %9572
  %9577 = fmul fast float %9574, %9573
  br label %9637

; <label>:9578                                    ; preds = %9537
  %9579 = fmul fast float %9548, %9110
  %9580 = call float @dx.op.unary.f32(i32 7, float %9579)  ; Saturate(value)
  %9581 = fsub fast float 2.000000e+00, %9580
  %9582 = fmul fast float %9580, 9.921875e-01
  %9583 = fmul fast float %9582, %9581
  %9584 = fadd fast float %9583, 3.906250e-03
  %9585 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %54, float %9584, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9586 = extractvalue %dx.types.ResRet.f32 %9585, 0
  %9587 = fsub fast float %9580, %9586
  %9588 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %9587)  ; FMax(a,b)
  %9589 = fmul fast float %9096, %9077
  %9590 = call float @dx.op.unary.f32(i32 6, float %9589)  ; FAbs(value)
  %9591 = fcmp fast ogt float %9590, 0x3EB0C6F7A0000000
  br i1 %9591, label %9592, label %9598, !dx.controlflow.hints !176

; <label>:9592                                    ; preds = %9578
  %9593 = fmul fast float %9589, 0xBFF7154760000000
  %9594 = call float @dx.op.unary.f32(i32 21, float %9593)  ; Exp(value)
  %9595 = fsub fast float 1.000000e+00, %9594
  %9596 = fdiv fast float %9595, %9589
  %9597 = fmul fast float %9596, %9106
  br label %9598

; <label>:9598                                    ; preds = %9592, %9578
  %9599 = phi float [ %9597, %9592 ], [ %9106, %9578 ]
  %9600 = fadd fast float %9599, %9108
  %9601 = fmul fast float %9600, %9588
  %9602 = fmul fast float %9093, %9601
  %9603 = fsub fast float -0.000000e+00, %9602
  %9604 = fmul fast float %9094, %9601
  %9605 = fsub fast float -0.000000e+00, %9604
  %9606 = fmul fast float %9095, %9601
  %9607 = fsub fast float -0.000000e+00, %9606
  %9608 = call float @dx.op.unary.f32(i32 21, float %9603)  ; Exp(value)
  %9609 = call float @dx.op.unary.f32(i32 21, float %9605)  ; Exp(value)
  %9610 = call float @dx.op.unary.f32(i32 21, float %9607)  ; Exp(value)
  %9611 = fmul fast float %9122, %9122
  %9612 = fadd fast float %9611, 1.000000e+00
  %9613 = fmul fast float %9612, 0x3FAE8EC8A0000000
  %9614 = fmul fast float %9613, %9103
  %9615 = fmul fast float %9613, %9104
  %9616 = fmul fast float %9613, %9105
  %9617 = fmul fast float %9122, %9101
  %9618 = fsub fast float 1.000000e+00, %9617
  %9619 = fmul fast float %9101, %9101
  %9620 = fsub fast float 1.000000e+00, %9619
  %9621 = fmul fast float %9620, 0x3FB45F3060000000
  %9622 = fmul fast float %9618, %9618
  %9623 = fdiv fast float 1.000000e+00, %9622
  %9624 = fmul fast float %9621, %9623
  %9625 = fmul fast float %9624, %9098
  %9626 = fmul fast float %9624, %9099
  %9627 = fmul fast float %9624, %9100
  %9628 = fadd fast float %9625, %9614
  %9629 = fadd fast float %9626, %9615
  %9630 = fadd fast float %9627, %9616
  %9631 = fsub fast float 1.000000e+00, %9608
  %9632 = fsub fast float 1.000000e+00, %9609
  %9633 = fsub fast float 1.000000e+00, %9610
  %9634 = fmul fast float %9628, %9631
  %9635 = fmul fast float %9629, %9632
  %9636 = fmul fast float %9630, %9633
  br label %9637

; <label>:9637                                    ; preds = %9598, %9549
  %9638 = phi float [ %9575, %9549 ], [ %9634, %9598 ]
  %9639 = phi float [ %9576, %9549 ], [ %9635, %9598 ]
  %9640 = phi float [ %9577, %9549 ], [ %9636, %9598 ]
  %9641 = phi float [ %9564, %9549 ], [ %9608, %9598 ]
  %9642 = phi float [ %9564, %9549 ], [ %9609, %9598 ]
  %9643 = phi float [ %9564, %9549 ], [ %9610, %9598 ]
  br i1 %9130, label %9644, label %9842, !dx.controlflow.hints !177

; <label>:9644                                    ; preds = %9637
  %9645 = extractvalue %dx.types.CBufRet.f32 %9543, 0
  %9646 = fmul fast float %9645, %9545
  %9647 = fsub fast float %9540, %9638
  %9648 = fsub fast float %9541, %9639
  %9649 = fsub fast float %9542, %9640
  %9650 = fmul fast float %9646, %9647
  %9651 = fmul fast float %9646, %9648
  %9652 = fmul fast float %9646, %9649
  %9653 = fadd fast float %9650, %9638
  %9654 = fadd fast float %9651, %9639
  %9655 = fadd fast float %9652, %9640
  %9656 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9641)  ; FMax(a,b)
  %9657 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9642)  ; FMax(a,b)
  %9658 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9643)  ; FMax(a,b)
  %9659 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9539)  ; FMax(a,b)
  %9660 = call float @dx.op.binary.f32(i32 35, float %9538, float %9548)  ; FMax(a,b)
  %9661 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %9660)  ; FMax(a,b)
  %9662 = fdiv fast float %9538, %9661
  %9663 = call float @dx.op.unary.f32(i32 7, float %9662)  ; Saturate(value)
  %9664 = fdiv fast float %9548, %9661
  %9665 = call float @dx.op.unary.f32(i32 7, float %9664)  ; Saturate(value)
  %9666 = fcmp fast une float %9659, 1.000000e+00
  br i1 %9666, label %9667, label %9680, !dx.controlflow.hints !178

; <label>:9667                                    ; preds = %9644
  %9668 = call float @dx.op.unary.f32(i32 23, float %9659)  ; Log(value)
  %9669 = fmul fast float %9668, 0x3FE62E4300000000
  %9670 = fmul fast float %9540, %9669
  %9671 = fsub fast float -0.000000e+00, %9670
  %9672 = fmul fast float %9541, %9669
  %9673 = fsub fast float -0.000000e+00, %9672
  %9674 = fmul fast float %9542, %9669
  %9675 = fsub fast float -0.000000e+00, %9674
  %9676 = fsub fast float 1.000000e+00, %9659
  %9677 = fdiv fast float %9671, %9676
  %9678 = fdiv fast float %9673, %9676
  %9679 = fdiv fast float %9675, %9676
  br label %9680

; <label>:9680                                    ; preds = %9667, %9644
  %9681 = phi float [ %9677, %9667 ], [ %9540, %9644 ]
  %9682 = phi float [ %9678, %9667 ], [ %9541, %9644 ]
  %9683 = phi float [ %9679, %9667 ], [ %9542, %9644 ]
  %9684 = phi float [ %9669, %9667 ], [ 0.000000e+00, %9644 ]
  %9685 = fcmp fast une float %9656, 1.000000e+00
  br i1 %9685, label %9686, label %9693, !dx.controlflow.hints !179

; <label>:9686                                    ; preds = %9680
  %9687 = call float @dx.op.unary.f32(i32 23, float %9656)  ; Log(value)
  %9688 = fmul fast float %9687, 0x3FE62E4300000000
  %9689 = fmul fast float %9653, %9688
  %9690 = fsub fast float -0.000000e+00, %9689
  %9691 = fsub fast float 1.000000e+00, %9656
  %9692 = fdiv fast float %9690, %9691
  br label %9693

; <label>:9693                                    ; preds = %9686, %9680
  %9694 = phi float [ %9692, %9686 ], [ %9653, %9680 ]
  %9695 = phi float [ %9688, %9686 ], [ 0.000000e+00, %9680 ]
  %9696 = fcmp fast une float %9657, 1.000000e+00
  br i1 %9696, label %9697, label %9704, !dx.controlflow.hints !179

; <label>:9697                                    ; preds = %9693
  %9698 = call float @dx.op.unary.f32(i32 23, float %9657)  ; Log(value)
  %9699 = fmul fast float %9698, 0x3FE62E4300000000
  %9700 = fmul fast float %9654, %9699
  %9701 = fsub fast float -0.000000e+00, %9700
  %9702 = fsub fast float 1.000000e+00, %9657
  %9703 = fdiv fast float %9701, %9702
  br label %9704

; <label>:9704                                    ; preds = %9697, %9693
  %9705 = phi float [ %9703, %9697 ], [ %9654, %9693 ]
  %9706 = phi float [ %9699, %9697 ], [ 0.000000e+00, %9693 ]
  %9707 = fcmp fast une float %9658, 1.000000e+00
  br i1 %9707, label %9708, label %9715, !dx.controlflow.hints !179

; <label>:9708                                    ; preds = %9704
  %9709 = call float @dx.op.unary.f32(i32 23, float %9658)  ; Log(value)
  %9710 = fmul fast float %9709, 0x3FE62E4300000000
  %9711 = fmul fast float %9655, %9710
  %9712 = fsub fast float -0.000000e+00, %9711
  %9713 = fsub fast float 1.000000e+00, %9658
  %9714 = fdiv fast float %9712, %9713
  br label %9715

; <label>:9715                                    ; preds = %9708, %9704
  %9716 = phi float [ %9714, %9708 ], [ %9655, %9704 ]
  %9717 = phi float [ %9710, %9708 ], [ 0.000000e+00, %9704 ]
  %9718 = fmul fast float %9681, %9665
  %9719 = fmul fast float %9682, %9665
  %9720 = fmul fast float %9683, %9665
  %9721 = fmul fast float %9684, %9665
  %9722 = fmul fast float %9694, %9663
  %9723 = fmul fast float %9705, %9663
  %9724 = fmul fast float %9716, %9663
  %9725 = fmul fast float %9695, %9663
  %9726 = fmul fast float %9706, %9663
  %9727 = fmul fast float %9717, %9663
  %9728 = fadd fast float %9722, %9718
  %9729 = fadd fast float %9723, %9719
  %9730 = fadd fast float %9724, %9720
  %9731 = fadd fast float %9725, %9721
  %9732 = fadd fast float %9726, %9721
  %9733 = fadd fast float %9727, %9721
  %9734 = fcmp fast une float %9731, 0.000000e+00
  br i1 %9734, label %9735, label %9742, !dx.controlflow.hints !180

; <label>:9735                                    ; preds = %9715
  %9736 = fmul fast float %9731, 0x3FF7154760000000
  %9737 = call float @dx.op.unary.f32(i32 21, float %9736)  ; Exp(value)
  %9738 = fsub fast float 1.000000e+00, %9737
  %9739 = fmul fast float %9728, %9738
  %9740 = fsub fast float -0.000000e+00, %9739
  %9741 = fdiv fast float %9740, %9731
  br label %9742

; <label>:9742                                    ; preds = %9735, %9715
  %9743 = phi float [ %9737, %9735 ], [ 1.000000e+00, %9715 ]
  %9744 = phi float [ %9741, %9735 ], [ %9728, %9715 ]
  %9745 = fcmp fast une float %9732, 0.000000e+00
  br i1 %9745, label %9746, label %9753, !dx.controlflow.hints !180

; <label>:9746                                    ; preds = %9742
  %9747 = fmul fast float %9732, 0x3FF7154760000000
  %9748 = call float @dx.op.unary.f32(i32 21, float %9747)  ; Exp(value)
  %9749 = fsub fast float 1.000000e+00, %9748
  %9750 = fmul fast float %9729, %9749
  %9751 = fsub fast float -0.000000e+00, %9750
  %9752 = fdiv fast float %9751, %9732
  br label %9753

; <label>:9753                                    ; preds = %9746, %9742
  %9754 = phi float [ %9748, %9746 ], [ 1.000000e+00, %9742 ]
  %9755 = phi float [ %9752, %9746 ], [ %9729, %9742 ]
  %9756 = fcmp fast une float %9733, 0.000000e+00
  br i1 %9756, label %9757, label %9764, !dx.controlflow.hints !180

; <label>:9757                                    ; preds = %9753
  %9758 = fmul fast float %9733, 0x3FF7154760000000
  %9759 = call float @dx.op.unary.f32(i32 21, float %9758)  ; Exp(value)
  %9760 = fsub fast float 1.000000e+00, %9759
  %9761 = fmul fast float %9730, %9760
  %9762 = fsub fast float -0.000000e+00, %9761
  %9763 = fdiv fast float %9762, %9733
  br label %9764

; <label>:9764                                    ; preds = %9757, %9753
  %9765 = phi float [ %9759, %9757 ], [ 1.000000e+00, %9753 ]
  %9766 = phi float [ %9763, %9757 ], [ %9730, %9753 ]
  %9767 = fcmp fast ogt float %9663, %9665
  br i1 %9767, label %9768, label %9788

; <label>:9768                                    ; preds = %9764
  %9769 = fsub fast float 1.000000e+00, %9665
  %9770 = fmul fast float %9681, %9769
  %9771 = fmul fast float %9682, %9769
  %9772 = fmul fast float %9683, %9769
  %9773 = fmul fast float %9684, %9769
  %9774 = fcmp fast une float %9773, 0.000000e+00
  br i1 %9774, label %9775, label %9826, !dx.controlflow.hints !181

; <label>:9775                                    ; preds = %9768
  %9776 = fmul fast float %9773, 0x3FF7154760000000
  %9777 = call float @dx.op.unary.f32(i32 21, float %9776)  ; Exp(value)
  %9778 = fsub fast float 1.000000e+00, %9777
  %9779 = fmul fast float %9770, %9778
  %9780 = fsub fast float -0.000000e+00, %9779
  %9781 = fmul fast float %9771, %9778
  %9782 = fsub fast float -0.000000e+00, %9781
  %9783 = fmul fast float %9772, %9778
  %9784 = fsub fast float -0.000000e+00, %9783
  %9785 = fdiv fast float %9780, %9773
  %9786 = fdiv fast float %9782, %9773
  %9787 = fdiv fast float %9784, %9773
  br label %9826

; <label>:9788                                    ; preds = %9764
  %9789 = fsub fast float 1.000000e+00, %9663
  %9790 = fmul fast float %9694, %9789
  %9791 = fmul fast float %9705, %9789
  %9792 = fmul fast float %9716, %9789
  %9793 = fmul fast float %9695, %9789
  %9794 = fmul fast float %9706, %9789
  %9795 = fmul fast float %9717, %9789
  %9796 = fcmp fast une float %9793, 0.000000e+00
  br i1 %9796, label %9797, label %9804, !dx.controlflow.hints !180

; <label>:9797                                    ; preds = %9788
  %9798 = fmul fast float %9793, 0x3FF7154760000000
  %9799 = call float @dx.op.unary.f32(i32 21, float %9798)  ; Exp(value)
  %9800 = fsub fast float 1.000000e+00, %9799
  %9801 = fmul fast float %9790, %9800
  %9802 = fsub fast float -0.000000e+00, %9801
  %9803 = fdiv fast float %9802, %9793
  br label %9804

; <label>:9804                                    ; preds = %9797, %9788
  %9805 = phi float [ %9803, %9797 ], [ %9790, %9788 ]
  %9806 = phi float [ %9799, %9797 ], [ 1.000000e+00, %9788 ]
  %9807 = fcmp fast une float %9794, 0.000000e+00
  br i1 %9807, label %9808, label %9815, !dx.controlflow.hints !180

; <label>:9808                                    ; preds = %9804
  %9809 = fmul fast float %9794, 0x3FF7154760000000
  %9810 = call float @dx.op.unary.f32(i32 21, float %9809)  ; Exp(value)
  %9811 = fsub fast float 1.000000e+00, %9810
  %9812 = fmul fast float %9791, %9811
  %9813 = fsub fast float -0.000000e+00, %9812
  %9814 = fdiv fast float %9813, %9794
  br label %9815

; <label>:9815                                    ; preds = %9808, %9804
  %9816 = phi float [ %9814, %9808 ], [ %9791, %9804 ]
  %9817 = phi float [ %9810, %9808 ], [ 1.000000e+00, %9804 ]
  %9818 = fcmp fast une float %9795, 0.000000e+00
  br i1 %9818, label %9819, label %9826, !dx.controlflow.hints !180

; <label>:9819                                    ; preds = %9815
  %9820 = fmul fast float %9795, 0x3FF7154760000000
  %9821 = call float @dx.op.unary.f32(i32 21, float %9820)  ; Exp(value)
  %9822 = fsub fast float 1.000000e+00, %9821
  %9823 = fmul fast float %9792, %9822
  %9824 = fsub fast float -0.000000e+00, %9823
  %9825 = fdiv fast float %9824, %9795
  br label %9826

; <label>:9826                                    ; preds = %9819, %9815, %9775, %9768
  %9827 = phi float [ %9825, %9819 ], [ %9787, %9775 ], [ %9772, %9768 ], [ %9792, %9815 ]
  %9828 = phi float [ %9816, %9819 ], [ %9786, %9775 ], [ %9771, %9768 ], [ %9816, %9815 ]
  %9829 = phi float [ %9805, %9819 ], [ %9785, %9775 ], [ %9770, %9768 ], [ %9805, %9815 ]
  %9830 = phi float [ %9821, %9819 ], [ %9777, %9775 ], [ 1.000000e+00, %9768 ], [ 1.000000e+00, %9815 ]
  %9831 = phi float [ %9817, %9819 ], [ %9777, %9775 ], [ 1.000000e+00, %9768 ], [ %9817, %9815 ]
  %9832 = phi float [ %9806, %9819 ], [ %9777, %9775 ], [ 1.000000e+00, %9768 ], [ %9806, %9815 ]
  %9833 = fmul fast float %9832, %9744
  %9834 = fmul fast float %9831, %9755
  %9835 = fmul fast float %9830, %9766
  %9836 = fadd fast float %9833, %9829
  %9837 = fadd fast float %9834, %9828
  %9838 = fadd fast float %9835, %9827
  %9839 = fmul fast float %9832, %9743
  %9840 = fmul fast float %9831, %9754
  %9841 = fmul fast float %9830, %9765
  br label %9842

; <label>:9842                                    ; preds = %9826, %9637
  %9843 = phi float [ %9841, %9826 ], [ %9643, %9637 ]
  %9844 = phi float [ %9840, %9826 ], [ %9642, %9637 ]
  %9845 = phi float [ %9839, %9826 ], [ %9641, %9637 ]
  %9846 = phi float [ %9838, %9826 ], [ %9640, %9637 ]
  %9847 = phi float [ %9837, %9826 ], [ %9639, %9637 ]
  %9848 = phi float [ %9836, %9826 ], [ %9638, %9637 ]
  %9849 = fmul fast float %9848, %8794
  %9850 = fmul fast float %9847, %8794
  %9851 = fmul fast float %9846, %8794
  %9852 = fmul fast float %9845, %9085
  %9853 = call float @dx.op.dot3.f32(i32 55, float %9845, float %9844, float %9843, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9854 = call float @dx.op.dot3.f32(i32 55, float %9849, float %9850, float %9851, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9855 = select i1 %260, float %9853, float %9845
  %9856 = select i1 %260, float %9853, float %9844
  %9857 = select i1 %260, float 1.000000e+00, float %9843
  %9858 = select i1 %260, float %9854, float %9849
  %9859 = select i1 %260, float 0.000000e+00, float %9850
  %9860 = select i1 %260, float 0.000000e+00, float %9851
  %9861 = fmul fast float %9855, %9079
  %9862 = fmul fast float %9856, %9080
  %9863 = fmul fast float %9857, %9081
  %9864 = fadd fast float %9861, %9858
  %9865 = fadd fast float %9862, %9859
  %9866 = fadd fast float %9860, %9863
  %9867 = fmul fast float %9855, %9082
  %9868 = fmul fast float %9856, %9083
  %9869 = fmul fast float %9857, %9084
  %9870 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %9871 = extractvalue %dx.types.CBufRet.i32 %9870, 0
  %9872 = icmp eq i32 %9871, 0
  br i1 %9872, label %10240, label %9873, !dx.controlflow.hints !182

; <label>:9873                                    ; preds = %9842
  %9874 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %9875 = extractvalue %dx.types.CBufRet.f32 %9874, 2
  %9876 = extractvalue %dx.types.CBufRet.f32 %9874, 3
  %9877 = fmul fast float %9875, %114
  %9878 = fmul fast float %9876, %115
  %9879 = fmul fast float %9877, 2.000000e+00
  %9880 = fmul fast float %9878, 2.000000e+00
  %9881 = fsub fast float 1.000000e+00, %9879
  %9882 = fsub fast float 1.000000e+00, %9880
  %9883 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %9884 = extractvalue %dx.types.CBufRet.f32 %9883, 0
  %9885 = extractvalue %dx.types.CBufRet.f32 %9883, 1
  %9886 = extractvalue %dx.types.CBufRet.f32 %9883, 2
  %9887 = fmul fast float %9881, %9884
  %9888 = fmul fast float %9881, %9885
  %9889 = fmul fast float %9881, %9886
  %9890 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %9891 = extractvalue %dx.types.CBufRet.f32 %9890, 0
  %9892 = extractvalue %dx.types.CBufRet.f32 %9890, 1
  %9893 = extractvalue %dx.types.CBufRet.f32 %9890, 2
  %9894 = fmul fast float %9882, %9891
  %9895 = fmul fast float %9882, %9892
  %9896 = fmul fast float %9882, %9893
  %9897 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %9898 = extractvalue %dx.types.CBufRet.f32 %9897, 0
  %9899 = extractvalue %dx.types.CBufRet.f32 %9897, 1
  %9900 = extractvalue %dx.types.CBufRet.f32 %9897, 2
  %9901 = fadd fast float %9894, %9898
  %9902 = fadd fast float %9901, %9887
  %9903 = fadd fast float %9895, %9899
  %9904 = fadd fast float %9903, %9888
  %9905 = fadd fast float %9896, %9900
  %9906 = fadd fast float %9905, %9889
  %9907 = fmul fast float %9902, %9078
  %9908 = fmul fast float %9904, %9078
  %9909 = fmul fast float %9906, %9078
  %9910 = fmul fast float %9907, %9907
  %9911 = fmul fast float %9908, %9908
  %9912 = fadd fast float %9910, %9911
  %9913 = fmul fast float %9909, %9909
  %9914 = fadd fast float %9912, %9913
  %9915 = call float @dx.op.unary.f32(i32 24, float %9914)  ; Sqrt(value)
  %9916 = extractvalue %dx.types.CBufRet.f32 %8805, 0
  %9917 = fsub fast float %9915, %9916
  %9918 = extractvalue %dx.types.CBufRet.f32 %8805, 2
  %9919 = fmul fast float %9917, %9918
  %9920 = call float @dx.op.unary.f32(i32 7, float %9919)  ; Saturate(value)
  %9921 = fadd fast float %9920, -5.000000e-01
  %9922 = fmul fast float %9921, 2.000000e+00
  %9923 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %9924 = extractvalue %dx.types.CBufRet.f32 %9923, 2
  %9925 = call float @dx.op.binary.f32(i32 36, float %9924, float %9922)  ; FMin(a,b)
  %9926 = fsub fast float -0.000000e+00, %9924
  %9927 = fcmp fast ogt float %9925, %9926
  br i1 %9927, label %9928, label %10240, !dx.controlflow.hints !183

; <label>:9928                                    ; preds = %9873
  %9929 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %9930 = extractvalue %dx.types.CBufRet.f32 %9929, 3
  %9931 = fcmp fast ogt float %9930, 0.000000e+00
  br i1 %9931, label %9932, label %10007, !dx.controlflow.hints !184

; <label>:9932                                    ; preds = %9928
  %9933 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %37, i32 0)  ; GetDimensions(handle,mipLevel)
  %9934 = extractvalue %dx.types.Dimensions %9933, 0
  %9935 = sitofp i32 %9934 to float
  %9936 = extractvalue %dx.types.Dimensions %9933, 1
  %9937 = sitofp i32 %9936 to float
  %9938 = fmul fast float %9877, %9935
  %9939 = fmul fast float %9878, %9937
  %9940 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %9941 = extractvalue %dx.types.CBufRet.f32 %9940, 1
  %9942 = fsub fast float -0.000000e+00, %9941
  %9943 = fptoui float %9942 to i32
  %9944 = fptoui float %9938 to i32
  %9945 = fptoui float %9939 to i32
  %9946 = and i32 %9943, 31
  %9947 = lshr i32 %9944, %9946
  %9948 = lshr i32 %9945, %9946
  %9949 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %37, i32 %9943, i32 %9947, i32 %9948, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %9950 = extractvalue %dx.types.ResRet.f32 %9949, 0
  %9951 = fcmp fast olt float %9950, -1.000000e+00
  %9952 = fcmp fast ogt float %9950, -1.000000e+00
  %9953 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %9954 = extractvalue %dx.types.CBufRet.f32 %9953, 1
  %9955 = select i1 %9952, float %9954, float 1.000000e+00
  %9956 = fadd fast float %9950, 1.000000e+00
  %9957 = fmul fast float %9955, %9956
  %9958 = call float @dx.op.unary.f32(i32 6, float %9957)  ; FAbs(value)
  %9959 = extractvalue %dx.types.CBufRet.f32 %9953, 3
  %9960 = fcmp fast oge float %9958, %9959
  %9961 = select i1 %9960, float 0x4197782600000000, float %9958
  %9962 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %9963 = extractvalue %dx.types.CBufRet.f32 %9962, 0
  %9964 = extractvalue %dx.types.CBufRet.f32 %9962, 1
  %9965 = extractvalue %dx.types.CBufRet.f32 %9962, 2
  %9966 = select i1 %9951, float %9963, float %9884
  %9967 = select i1 %9951, float %9964, float %9885
  %9968 = select i1 %9951, float %9965, float %9886
  %9969 = fmul fast float %9966, %9881
  %9970 = fmul fast float %9967, %9881
  %9971 = fmul fast float %9968, %9881
  %9972 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %9973 = extractvalue %dx.types.CBufRet.f32 %9972, 0
  %9974 = extractvalue %dx.types.CBufRet.f32 %9972, 1
  %9975 = extractvalue %dx.types.CBufRet.f32 %9972, 2
  %9976 = select i1 %9951, float %9973, float %9891
  %9977 = select i1 %9951, float %9974, float %9892
  %9978 = select i1 %9951, float %9975, float %9893
  %9979 = fmul fast float %9976, %9882
  %9980 = fmul fast float %9977, %9882
  %9981 = fmul fast float %9978, %9882
  %9982 = fadd fast float %9979, %9969
  %9983 = fadd fast float %9980, %9970
  %9984 = fadd fast float %9981, %9971
  %9985 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %9986 = extractvalue %dx.types.CBufRet.f32 %9985, 0
  %9987 = extractvalue %dx.types.CBufRet.f32 %9985, 1
  %9988 = extractvalue %dx.types.CBufRet.f32 %9985, 2
  %9989 = select i1 %9951, float %9986, float %9898
  %9990 = select i1 %9951, float %9987, float %9899
  %9991 = select i1 %9951, float %9988, float %9900
  %9992 = fadd fast float %9982, %9989
  %9993 = fadd fast float %9983, %9990
  %9994 = fadd fast float %9984, %9991
  %9995 = fmul fast float %9992, %9961
  %9996 = fmul fast float %9993, %9961
  %9997 = fmul fast float %9994, %9961
  %9998 = fmul fast float %9995, %9995
  %9999 = fmul fast float %9996, %9996
  %10000 = fadd fast float %9998, %9999
  %10001 = fmul fast float %9997, %9997
  %10002 = fadd fast float %10000, %10001
  %10003 = call float @dx.op.unary.f32(i32 24, float %10002)  ; Sqrt(value)
  %10004 = fsub fast float %10003, %9916
  %10005 = fmul fast float %10004, %9918
  %10006 = call float @dx.op.unary.f32(i32 7, float %10005)  ; Saturate(value)
  br label %10007

; <label>:10007                                   ; preds = %9932, %9928
  %10008 = phi float [ %10006, %9932 ], [ 1.000000e+00, %9928 ]
  %10009 = fmul fast float %9925, 5.000000e-01
  %10010 = fadd fast float %10009, 5.000000e-01
  %10011 = call float @dx.op.unary.f32(i32 22, float %10010)  ; Frc(value)
  %10012 = call float @dx.op.unary.f32(i32 27, float %10011)  ; Round_ni(value)
  %10013 = call float @dx.op.unary.f32(i32 22, float %10011)  ; Frc(value)
  %10014 = fmul fast float %10013, 2.000000e+00
  %10015 = fadd fast float %10014, -1.000000e+00
  %10016 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %54, float %9877, float %9878, float %10012, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10017 = extractvalue %dx.types.ResRet.f32 %10016, 0
  %10018 = extractvalue %dx.types.ResRet.f32 %10016, 1
  %10019 = extractvalue %dx.types.ResRet.f32 %10016, 2
  %10020 = extractvalue %dx.types.ResRet.f32 %10016, 3
  %10021 = fadd fast float %10017, -5.000000e-01
  %10022 = fadd fast float %10019, -5.000000e-01
  %10023 = fmul fast float %10021, 0xBFD5555560000000
  %10024 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %10022, float %10023)  ; FMad(a,b,c)
  %10025 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %10018, float 0.000000e+00)  ; FMad(a,b,c)
  %10026 = fadd fast float %10025, %10020
  %10027 = fmul fast float %10021, -7.500000e-01
  %10028 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %10022, float %10027)  ; FMad(a,b,c)
  %10029 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %10018, float 0.000000e+00)  ; FMad(a,b,c)
  %10030 = fadd fast float %10029, %10020
  %10031 = call float @dx.op.binary.f32(i32 35, float %10024, float -1.000000e+00)  ; FMax(a,b)
  %10032 = call float @dx.op.binary.f32(i32 35, float %10026, float -1.000000e+00)  ; FMax(a,b)
  %10033 = call float @dx.op.binary.f32(i32 35, float %10028, float -1.000000e+00)  ; FMax(a,b)
  %10034 = call float @dx.op.binary.f32(i32 35, float %10030, float -1.000000e+00)  ; FMax(a,b)
  %10035 = call float @dx.op.binary.f32(i32 36, float %10031, float 1.000000e+00)  ; FMin(a,b)
  %10036 = call float @dx.op.binary.f32(i32 36, float %10032, float 1.000000e+00)  ; FMin(a,b)
  %10037 = call float @dx.op.binary.f32(i32 36, float %10033, float 1.000000e+00)  ; FMin(a,b)
  %10038 = call float @dx.op.binary.f32(i32 36, float %10034, float 1.000000e+00)  ; FMin(a,b)
  %10039 = fcmp fast olt float %10035, 0x3FEFFF8020000000
  br i1 %10039, label %10040, label %10155, !dx.controlflow.hints !185

; <label>:10040                                   ; preds = %10007
  %10041 = extractvalue %dx.types.CBufRet.f32 %9923, 3
  %10042 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %10043 = extractvalue %dx.types.CBufRet.f32 %10042, 0
  %10044 = extractvalue %dx.types.CBufRet.f32 %10042, 1
  %10045 = extractvalue %dx.types.CBufRet.f32 %10042, 2
  %10046 = extractvalue %dx.types.CBufRet.f32 %10042, 3
  %10047 = fsub fast float %10043, %10035
  %10048 = fsub fast float %10044, %10036
  %10049 = fsub fast float %10045, %10037
  %10050 = fsub fast float %10046, %10038
  %10051 = fmul fast float %10047, %10041
  %10052 = fmul fast float %10048, %10041
  %10053 = fmul fast float %10049, %10041
  %10054 = fmul fast float %10050, %10041
  %10055 = fadd fast float %10051, %10035
  %10056 = fadd fast float %10052, %10036
  %10057 = fsub fast float -0.000000e+00, %10056
  %10058 = fadd fast float %10053, %10037
  %10059 = fadd fast float %10054, %10038
  %10060 = fmul fast float %10055, %10055
  %10061 = fsub fast float %10056, %10060
  %10062 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %10061)  ; FMax(a,b)
  %10063 = fdiv fast float 1.000000e+00, %10062
  %10064 = fmul fast float %10056, %10055
  %10065 = fsub fast float %10058, %10064
  %10066 = fsub fast float %10015, %10055
  %10067 = fmul fast float %10015, %10015
  %10068 = fsub fast float %10067, %10056
  %10069 = fmul fast float %10066, %10063
  %10070 = fmul fast float %10069, %10065
  %10071 = fsub fast float %10068, %10070
  %10072 = fmul fast float %10056, %10056
  %10073 = fsub fast float %10059, %10072
  %10074 = fmul fast float %10065, %10065
  %10075 = fmul fast float %10074, %10063
  %10076 = fsub fast float %10073, %10075
  %10077 = fdiv fast float %10071, %10076
  %10078 = fmul fast float %10065, %10077
  %10079 = fsub fast float %10066, %10078
  %10080 = fmul fast float %10079, %10063
  %10081 = fmul fast float %10080, %10055
  %10082 = fsub fast float 1.000000e+00, %10081
  %10083 = fmul fast float %10056, %10077
  %10084 = fsub fast float %10082, %10083
  %10085 = fmul fast float %10080, %10080
  %10086 = fmul fast float %10077, 4.000000e+00
  %10087 = fmul fast float %10086, %10084
  %10088 = fsub fast float %10085, %10087
  %10089 = call float @dx.op.unary.f32(i32 24, float %10088)  ; Sqrt(value)
  %10090 = fcmp fast oge float %10080, 0.000000e+00
  %10091 = fsub fast float -0.000000e+00, %10089
  %10092 = select i1 %10090, float %10091, float %10089
  %10093 = fsub fast float %10092, %10080
  %10094 = fdiv fast float %10093, %10077
  %10095 = fdiv fast float %10084, %10093
  %10096 = fmul fast float %10094, 5.000000e-01
  %10097 = fmul fast float %10095, 2.000000e+00
  %10098 = select i1 %10090, float %10096, float %10097
  %10099 = select i1 %10090, float %10097, float %10096
  %10100 = call float @dx.op.binary.f32(i32 35, float %10098, float %10099)  ; FMax(a,b)
  %10101 = call float @dx.op.binary.f32(i32 36, float %10098, float %10099)  ; FMin(a,b)
  %10102 = fcmp fast ogt float %10015, %10101
  br i1 %10102, label %10103, label %10113

; <label>:10103                                   ; preds = %10040
  %10104 = fsub fast float %10015, %10101
  %10105 = fsub fast float %10100, %10101
  %10106 = fmul fast float %10104, %10105
  %10107 = fmul fast float %10100, %10015
  %10108 = fadd fast float %10100, %10015
  %10109 = fmul fast float %10108, %10055
  %10110 = fadd fast float %10107, %10056
  %10111 = fsub fast float %10110, %10109
  %10112 = fdiv fast float %10111, %10106
  br label %10113

; <label>:10113                                   ; preds = %10103, %10040
  %10114 = phi float [ %10112, %10103 ], [ 0.000000e+00, %10040 ]
  %10115 = fcmp fast ogt float %10015, %10100
  %10116 = fsub fast float %10015, %10100
  br i1 %10115, label %10117, label %10127

; <label>:10117                                   ; preds = %10113
  %10118 = fsub fast float %10100, %10101
  %10119 = fmul fast float %10118, %10116
  %10120 = fmul fast float %10101, %10015
  %10121 = fadd fast float %10101, %10015
  %10122 = fmul fast float %10121, %10055
  %10123 = fsub fast float %10057, %10120
  %10124 = fadd fast float %10123, %10122
  %10125 = fdiv fast float %10124, %10119
  %10126 = fadd fast float %10125, %10114
  br label %10127

; <label>:10127                                   ; preds = %10117, %10113
  %10128 = phi float [ %10126, %10117 ], [ %10114, %10113 ]
  %10129 = fsub fast float %10015, %10101
  %10130 = fmul fast float %10129, %10116
  %10131 = fmul fast float %10101, %10100
  %10132 = fadd fast float %10101, %10100
  %10133 = fmul fast float %10132, %10055
  %10134 = fadd fast float %10131, %10056
  %10135 = fsub fast float %10134, %10133
  %10136 = fdiv fast float %10135, %10130
  %10137 = call float @dx.op.unary.f32(i32 7, float %10128)  ; Saturate(value)
  %10138 = fcmp fast oeq float %8806, 0.000000e+00
  %10139 = extractvalue %dx.types.CBufRet.f32 %9923, 0
  %10140 = fcmp fast oeq float %10139, 0.000000e+00
  %10141 = or i1 %10138, %10140
  %10142 = fmul fast float %10139, 2.000000e+00
  %10143 = fadd fast float %9924, %9925
  %10144 = fdiv fast float %10143, %10142
  %10145 = call float @dx.op.unary.f32(i32 7, float %10144)  ; Saturate(value)
  %10146 = fmul fast float %10145, 2.000000e+00
  %10147 = fsub fast float 3.000000e+00, %10146
  %10148 = fmul fast float %10145, %10145
  %10149 = fmul fast float %10148, %10147
  %10150 = select i1 %10141, float 1.000000e+00, float %10149
  %10151 = fmul fast float %10136, %8806
  %10152 = fadd fast float %10137, %10151
  %10153 = call float @dx.op.unary.f32(i32 7, float %10152)  ; Saturate(value)
  %10154 = fmul fast float %10150, %10153
  br label %10155

; <label>:10155                                   ; preds = %10127, %10007
  %10156 = phi float [ %10154, %10127 ], [ 0.000000e+00, %10007 ]
  %10157 = fsub fast float 1.000000e+00, %10156
  %10158 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %54, float %9877, float %9878, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10159 = extractvalue %dx.types.ResRet.f32 %10158, 0
  %10160 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %10161 = extractvalue %dx.types.CBufRet.i32 %10160, 2
  %10162 = icmp eq i32 %10161, 0
  br i1 %10162, label %10168, label %10163

; <label>:10163                                   ; preds = %10155
  %10164 = call float @dx.op.unary.f32(i32 7, float %10156)  ; Saturate(value)
  %10165 = fadd fast float %10159, -1.000000e+00
  %10166 = fmul fast float %10164, %10165
  %10167 = fadd fast float %10166, 1.000000e+00
  br label %10168

; <label>:10168                                   ; preds = %10163, %10155
  %10169 = phi float [ %10167, %10163 ], [ %10157, %10155 ]
  br i1 %9931, label %10170, label %10188

; <label>:10170                                   ; preds = %10168
  %10171 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %10172 = extractvalue %dx.types.CBufRet.f32 %10171, 1
  %10173 = fsub fast float %10008, %10172
  %10174 = call float @dx.op.unary.f32(i32 7, float %10173)  ; Saturate(value)
  %10175 = fsub fast float %10008, %9930
  %10176 = call float @dx.op.unary.f32(i32 7, float %10175)  ; Saturate(value)
  %10177 = fsub fast float %10174, %10176
  %10178 = fsub fast float %10010, %10176
  %10179 = fdiv fast float %10178, %10177
  %10180 = call float @dx.op.unary.f32(i32 7, float %10179)  ; Saturate(value)
  %10181 = fmul fast float %10180, 2.000000e+00
  %10182 = fsub fast float 3.000000e+00, %10181
  %10183 = fsub fast float %10159, %10169
  %10184 = fmul fast float %10180, %10180
  %10185 = fmul fast float %10184, %10183
  %10186 = fmul fast float %10185, %10182
  %10187 = fadd fast float %10186, %10169
  br label %10188

; <label>:10188                                   ; preds = %10170, %10168
  %10189 = phi float [ %10187, %10170 ], [ %10169, %10168 ]
  %10190 = call float @dx.op.binary.f32(i32 35, float %10159, float %10189)  ; FMax(a,b)
  %10191 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %10192 = extractvalue %dx.types.CBufRet.i32 %10191, 2
  %10193 = and i32 %10192, 1
  %10194 = icmp eq i32 %10193, 0
  %10195 = fcmp fast une float %10190, 1.000000e+00
  %10196 = and i1 %10195, %10194
  br i1 %10196, label %10197, label %10216

; <label>:10197                                   ; preds = %10188
  %10198 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %54, float %9877, float %9878, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10199 = extractvalue %dx.types.ResRet.f32 %10198, 0
  %10200 = extractvalue %dx.types.ResRet.f32 %10198, 1
  %10201 = extractvalue %dx.types.ResRet.f32 %10198, 2
  %10202 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %10203 = extractvalue %dx.types.CBufRet.f32 %10202, 1
  %10204 = fmul fast float %10203, %10199
  %10205 = fmul fast float %10203, %10200
  %10206 = fmul fast float %10203, %10201
  %10207 = fcmp fast ogt float %10159, 0x3FEFFF2E40000000
  %10208 = fsub fast float 1.000000e+00, %10190
  %10209 = fsub fast float 1.000000e+00, %10159
  %10210 = fdiv fast float %10208, %10209
  %10211 = call float @dx.op.unary.f32(i32 7, float %10210)  ; Saturate(value)
  %10212 = select i1 %10207, float 0.000000e+00, float %10211
  %10213 = fmul fast float %10204, %10212
  %10214 = fmul fast float %10205, %10212
  %10215 = fmul fast float %10206, %10212
  br label %10216

; <label>:10216                                   ; preds = %10197, %10188
  %10217 = phi float [ 0.000000e+00, %10188 ], [ %10213, %10197 ]
  %10218 = phi float [ 0.000000e+00, %10188 ], [ %10214, %10197 ]
  %10219 = phi float [ 0.000000e+00, %10188 ], [ %10215, %10197 ]
  %10220 = fmul fast float %10217, %8794
  %10221 = fmul fast float %10218, %8794
  %10222 = fmul fast float %10219, %8794
  %10223 = fmul fast float %10190, %9852
  %10224 = call float @dx.op.dot3.f32(i32 55, float %10190, float %10190, float %10190, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10225 = call float @dx.op.dot3.f32(i32 55, float %10220, float %10221, float %10222, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10226 = select i1 %260, float %10224, float %10190
  %10227 = select i1 %260, float 1.000000e+00, float %10190
  %10228 = select i1 %260, float %10225, float %10220
  %10229 = select i1 %260, float 0.000000e+00, float %10221
  %10230 = select i1 %260, float 0.000000e+00, float %10222
  %10231 = fmul fast float %10226, %9864
  %10232 = fmul fast float %10226, %9865
  %10233 = fmul fast float %10227, %9866
  %10234 = fadd fast float %10231, %10228
  %10235 = fadd fast float %10232, %10229
  %10236 = fadd fast float %10230, %10233
  %10237 = fmul fast float %10226, %9867
  %10238 = fmul fast float %10226, %9868
  %10239 = fmul fast float %10227, %9869
  br label %10240

; <label>:10240                                   ; preds = %10216, %9873, %9842, %9074
  %10241 = phi float [ %9079, %9074 ], [ %9864, %9842 ], [ %10234, %10216 ], [ %9864, %9873 ]
  %10242 = phi float [ %9080, %9074 ], [ %9865, %9842 ], [ %10235, %10216 ], [ %9865, %9873 ]
  %10243 = phi float [ %9081, %9074 ], [ %9866, %9842 ], [ %10236, %10216 ], [ %9866, %9873 ]
  %10244 = phi float [ %9082, %9074 ], [ %9867, %9842 ], [ %10237, %10216 ], [ %9867, %9873 ]
  %10245 = phi float [ %9083, %9074 ], [ %9868, %9842 ], [ %10238, %10216 ], [ %9868, %9873 ]
  %10246 = phi float [ %9084, %9074 ], [ %9869, %9842 ], [ %10239, %10216 ], [ %9869, %9873 ]
  %10247 = phi float [ %9085, %9074 ], [ %9852, %9842 ], [ %10223, %10216 ], [ %9852, %9873 ]
  %10248 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %10249 = extractvalue %dx.types.CBufRet.f32 %10248, 2
  %10250 = extractvalue %dx.types.CBufRet.f32 %10248, 3
  %10251 = fmul fast float %10249, %114
  %10252 = fmul fast float %10250, %115
  %10253 = call float @dx.op.unary.f32(i32 7, float %10251)  ; Saturate(value)
  %10254 = call float @dx.op.unary.f32(i32 7, float %10252)  ; Saturate(value)
  %10255 = select i1 %8816, i32 2, i32 0
  %10256 = or i32 %10255, 1
  %10257 = uitofp i32 %10256 to float
  %10258 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %54, float %10253, float %10254, float %10257, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %10259 = extractvalue %dx.types.ResRet.f32 %10258, 0
  %10260 = extractvalue %dx.types.ResRet.f32 %10258, 1
  %10261 = extractvalue %dx.types.ResRet.f32 %10258, 2
  %10262 = extractvalue %dx.types.ResRet.f32 %10258, 3
  %10263 = add nuw nsw i32 %10255, 2
  %10264 = uitofp i32 %10263 to float
  %10265 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %54, float %10253, float %10254, float %10264, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %10266 = extractvalue %dx.types.ResRet.f32 %10265, 0
  %10267 = extractvalue %dx.types.ResRet.f32 %10265, 1
  %10268 = extractvalue %dx.types.ResRet.f32 %10265, 2
  %10269 = extractvalue %dx.types.ResRet.f32 %10265, 3
  %10270 = call float @dx.op.binary.f32(i32 35, float %10260, float %10261)  ; FMax(a,b)
  %10271 = call float @dx.op.binary.f32(i32 35, float %10259, float %10270)  ; FMax(a,b)
  %10272 = call float @dx.op.binary.f32(i32 35, float %10271, float %10262)  ; FMax(a,b)
  %10273 = call float @dx.op.binary.f32(i32 36, float %10267, float %10268)  ; FMin(a,b)
  %10274 = call float @dx.op.binary.f32(i32 36, float %10266, float %10273)  ; FMin(a,b)
  %10275 = call float @dx.op.binary.f32(i32 36, float %10274, float %10269)  ; FMin(a,b)
  %10276 = fmul fast float %10272, 2.550000e+02
  %10277 = fadd fast float %10276, 0x3F70101020000000
  %10278 = fptoui float %10277 to i32
  %10279 = fmul fast float %10275, 2.550000e+02
  %10280 = fadd fast float %10279, 0x3F70101020000000
  %10281 = fptoui float %10280 to i32
  %10282 = icmp ult i32 %10278, %10281
  br i1 %10282, label %10283, label %10452

; <label>:10283                                   ; preds = %10240
  %10284 = fcmp fast ogt float %100, 9.843750e-01
  %10285 = fadd fast float %9078, -4.000000e+00
  %10286 = select i1 %10284, float -4.000000e+00, float %10285
  %10287 = call float @dx.op.binary.f32(i32 35, float %10286, float 0.000000e+00)  ; FMax(a,b)
  %10288 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %10289 = extractvalue %dx.types.CBufRet.f32 %10288, 0
  %10290 = fadd fast float %10289, %10287
  %10291 = extractvalue %dx.types.CBufRet.f32 %10288, 2
  %10292 = fmul fast float %10290, %10291
  %10293 = call float @dx.op.unary.f32(i32 23, float %10292)  ; Log(value)
  %10294 = extractvalue %dx.types.CBufRet.f32 %10288, 3
  %10295 = fmul fast float %10294, %10293
  %10296 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %10297 = extractvalue %dx.types.CBufRet.f32 %10296, 2
  %10298 = fmul fast float %10295, %10297
  %10299 = call float @dx.op.unary.f32(i32 7, float %10298)  ; Saturate(value)
  %10300 = uitofp i32 %10278 to float
  %10301 = uitofp i32 %10281 to float
  %10302 = fadd fast float %10300, 5.000000e-01
  %10303 = fadd fast float %10301, 5.000000e-01
  %10304 = fmul fast float %10297, %10302
  %10305 = fmul fast float %10297, %10303
  %10306 = fadd fast float %10304, 0x3F0FFB4800000000
  %10307 = fadd fast float %10305, 0xBF0FFB4800000000
  %10308 = call float @dx.op.binary.f32(i32 35, float %10299, float %10306)  ; FMax(a,b)
  %10309 = call float @dx.op.binary.f32(i32 36, float %10308, float %10307)  ; FMin(a,b)
  %10310 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %10311 = extractvalue %dx.types.CBufRet.f32 %10310, 1
  %10312 = extractvalue %dx.types.CBufRet.f32 %10310, 2
  %10313 = extractvalue %dx.types.CBufRet.f32 %10310, 0
  %10314 = select i1 %8816, float %10313, float 0.000000e+00
  %10315 = fmul fast float %10311, %10309
  %10316 = fadd fast float %10314, %10315
  %10317 = fadd fast float %10314, %10312
  %10318 = fsub fast float %10311, %10312
  %10319 = fadd fast float %10318, %10314
  %10320 = call float @dx.op.binary.f32(i32 35, float %10316, float %10317)  ; FMax(a,b)
  %10321 = call float @dx.op.binary.f32(i32 36, float %10320, float %10319)  ; FMin(a,b)
  %10322 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %52, float %10253, float %10254, float %10321, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10323 = extractvalue %dx.types.ResRet.f32 %10322, 0
  %10324 = extractvalue %dx.types.ResRet.f32 %10322, 1
  %10325 = extractvalue %dx.types.ResRet.f32 %10322, 2
  %10326 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %10327 = extractvalue %dx.types.CBufRet.i32 %10326, 0
  %10328 = extractvalue %dx.types.CBufRet.i32 %10326, 1
  %10329 = uitofp i32 %10327 to float
  %10330 = uitofp i32 %10328 to float
  %10331 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %10332 = extractvalue %dx.types.CBufRet.f32 %10331, 0
  %10333 = extractvalue %dx.types.CBufRet.f32 %10331, 1
  %10334 = fmul fast float %10329, %10253
  %10335 = fmul fast float %10330, %10254
  %10336 = fadd fast float %10334, -5.000000e-01
  %10337 = fadd fast float %10335, -5.000000e-01
  %10338 = call float @dx.op.unary.f32(i32 22, float %10336)  ; Frc(value)
  %10339 = call float @dx.op.unary.f32(i32 22, float %10337)  ; Frc(value)
  %10340 = fmul fast float %10338, %10338
  %10341 = fmul fast float %10340, %10338
  %10342 = fsub fast float 3.000000e+00, %10338
  %10343 = fmul fast float %10340, %10342
  %10344 = fmul fast float %10338, 3.000000e+00
  %10345 = fmul fast float %10341, 3.000000e+00
  %10346 = fmul fast float %10340, 6.000000e+00
  %10347 = fsub fast float %10345, %10346
  %10348 = fadd fast float %10347, 4.000000e+00
  %10349 = fmul fast float %10348, 0x3FC5555560000000
  %10350 = fmul fast float %10341, -3.000000e+00
  %10351 = fadd fast float %10340, %10338
  %10352 = fmul fast float %10351, 3.000000e+00
  %10353 = fadd fast float %10350, 1.000000e+00
  %10354 = fadd fast float %10353, %10352
  %10355 = fmul fast float %10341, 0x3FC5555560000000
  %10356 = fmul fast float %10339, %10339
  %10357 = fmul fast float %10356, %10339
  %10358 = fsub fast float 3.000000e+00, %10339
  %10359 = fmul fast float %10356, %10358
  %10360 = fmul fast float %10339, 3.000000e+00
  %10361 = fmul fast float %10357, 3.000000e+00
  %10362 = fmul fast float %10356, 6.000000e+00
  %10363 = fsub fast float %10361, %10362
  %10364 = fadd fast float %10363, 4.000000e+00
  %10365 = fmul fast float %10364, 0x3FC5555560000000
  %10366 = fmul fast float %10357, -3.000000e+00
  %10367 = fadd fast float %10356, %10339
  %10368 = fmul fast float %10367, 3.000000e+00
  %10369 = fadd fast float %10366, 1.000000e+00
  %10370 = fadd fast float %10369, %10368
  %10371 = fmul fast float %10357, 0x3FC5555560000000
  %10372 = fadd fast float %10338, 1.000000e+00
  %10373 = fsub fast float 1.000000e+00, %10344
  %10374 = fadd fast float %10373, %10343
  %10375 = fadd fast float %10374, %10348
  %10376 = fmul fast float %10375, 0x3FC5555560000000
  %10377 = fdiv fast float %10349, %10376
  %10378 = fsub fast float %10372, %10377
  %10379 = fsub fast float 1.000000e+00, %10338
  %10380 = fadd fast float %10354, %10341
  %10381 = fmul fast float %10380, 0x3FC5555560000000
  %10382 = fdiv fast float %10355, %10381
  %10383 = fadd fast float %10379, %10382
  %10384 = fadd fast float %10339, 1.000000e+00
  %10385 = fsub fast float 1.000000e+00, %10360
  %10386 = fadd fast float %10385, %10359
  %10387 = fadd fast float %10386, %10364
  %10388 = fmul fast float %10387, 0x3FC5555560000000
  %10389 = fdiv fast float %10365, %10388
  %10390 = fsub fast float %10384, %10389
  %10391 = fsub fast float 1.000000e+00, %10339
  %10392 = fadd fast float %10370, %10357
  %10393 = fmul fast float %10392, 0x3FC5555560000000
  %10394 = fdiv fast float %10371, %10393
  %10395 = fadd fast float %10394, %10391
  %10396 = fmul fast float %10378, %10332
  %10397 = fsub fast float %10253, %10396
  %10398 = fmul fast float %10383, %10332
  %10399 = fadd fast float %10398, %10253
  %10400 = fmul fast float %10395, %10333
  %10401 = fadd fast float %10400, %10254
  %10402 = fmul fast float %10390, %10333
  %10403 = fsub fast float %10254, %10402
  %10404 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %10397, float %10403, float %10321, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10405 = extractvalue %dx.types.ResRet.f32 %10404, 0
  %10406 = extractvalue %dx.types.ResRet.f32 %10404, 1
  %10407 = extractvalue %dx.types.ResRet.f32 %10404, 2
  %10408 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %10399, float %10403, float %10321, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10409 = extractvalue %dx.types.ResRet.f32 %10408, 0
  %10410 = extractvalue %dx.types.ResRet.f32 %10408, 1
  %10411 = extractvalue %dx.types.ResRet.f32 %10408, 2
  %10412 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %10397, float %10401, float %10321, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10413 = extractvalue %dx.types.ResRet.f32 %10412, 0
  %10414 = extractvalue %dx.types.ResRet.f32 %10412, 1
  %10415 = extractvalue %dx.types.ResRet.f32 %10412, 2
  %10416 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %10399, float %10401, float %10321, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10417 = extractvalue %dx.types.ResRet.f32 %10416, 0
  %10418 = extractvalue %dx.types.ResRet.f32 %10416, 1
  %10419 = extractvalue %dx.types.ResRet.f32 %10416, 2
  %10420 = fsub fast float %10413, %10405
  %10421 = fsub fast float %10414, %10406
  %10422 = fsub fast float %10415, %10407
  %10423 = fmul fast float %10420, %10393
  %10424 = fmul fast float %10421, %10393
  %10425 = fmul fast float %10422, %10393
  %10426 = fadd fast float %10423, %10405
  %10427 = fadd fast float %10424, %10406
  %10428 = fadd fast float %10425, %10407
  %10429 = fsub fast float %10417, %10409
  %10430 = fsub fast float %10418, %10410
  %10431 = fsub fast float %10419, %10411
  %10432 = fmul fast float %10429, %10393
  %10433 = fmul fast float %10430, %10393
  %10434 = fmul fast float %10431, %10393
  %10435 = fsub fast float %10409, %10426
  %10436 = fadd fast float %10435, %10432
  %10437 = fsub fast float %10410, %10427
  %10438 = fadd fast float %10437, %10433
  %10439 = fsub fast float %10411, %10428
  %10440 = fadd fast float %10439, %10434
  %10441 = fmul fast float %10436, %10381
  %10442 = fmul fast float %10438, %10381
  %10443 = fmul fast float %10440, %10381
  %10444 = fadd fast float %10441, %10426
  %10445 = fadd fast float %10442, %10427
  %10446 = fadd fast float %10443, %10428
  %10447 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %10448 = extractvalue %dx.types.CBufRet.f32 %10447, 1
  %10449 = fmul fast float %10444, %10448
  %10450 = fmul fast float %10445, %10448
  %10451 = fmul fast float %10446, %10448
  br label %10452

; <label>:10452                                   ; preds = %10283, %10240
  %10453 = phi float [ %10323, %10283 ], [ 1.000000e+00, %10240 ]
  %10454 = phi float [ %10324, %10283 ], [ 1.000000e+00, %10240 ]
  %10455 = phi float [ %10325, %10283 ], [ 1.000000e+00, %10240 ]
  %10456 = phi float [ %10449, %10283 ], [ 0.000000e+00, %10240 ]
  %10457 = phi float [ %10450, %10283 ], [ 0.000000e+00, %10240 ]
  %10458 = phi float [ %10451, %10283 ], [ 0.000000e+00, %10240 ]
  %10459 = fmul fast float %10456, %8794
  %10460 = fmul fast float %10457, %8794
  %10461 = fmul fast float %10458, %8794
  %10462 = fmul fast float %10453, %10247
  %10463 = call float @dx.op.dot3.f32(i32 55, float %10453, float %10454, float %10455, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10464 = call float @dx.op.dot3.f32(i32 55, float %10459, float %10460, float %10461, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10465 = select i1 %260, float %10463, float %10453
  %10466 = select i1 %260, float %10463, float %10454
  %10467 = select i1 %260, float 1.000000e+00, float %10455
  %10468 = select i1 %260, float %10464, float %10459
  %10469 = select i1 %260, float 0.000000e+00, float %10460
  %10470 = select i1 %260, float 0.000000e+00, float %10461
  %10471 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %10472 = extractvalue %dx.types.CBufRet.i32 %10471, 3
  %10473 = and i32 %10472, 3
  %10474 = icmp ne i32 %10473, 0
  %10475 = and i32 %10472, 4
  %10476 = icmp ne i32 %10475, 0
  %10477 = and i1 %10474, %10476
  %10478 = and i1 %260, %10477
  br i1 %10478, label %10479, label %10485

; <label>:10479                                   ; preds = %10452
  %10480 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %10481 = extractvalue %dx.types.CBufRet.f32 %10480, 1
  %10482 = fadd fast float %10462, -1.000000e+00
  %10483 = fmul fast float %10481, %10482
  %10484 = fadd fast float %10483, 1.000000e+00
  br label %10485

; <label>:10485                                   ; preds = %10479, %10452
  %10486 = phi float [ %10484, %10479 ], [ %10462, %10452 ]
  %10487 = fadd fast float %10244, %10241
  %10488 = fmul fast float %10465, %10487
  %10489 = fadd fast float %10488, %10468
  %10490 = fadd fast float %10245, %10242
  %10491 = fmul fast float %10466, %10490
  %10492 = fadd fast float %10491, %10469
  %10493 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %10494 = extractvalue %dx.types.CBufRet.f32 %10493, 0
  br i1 %260, label %10495, label %10519

; <label>:10495                                   ; preds = %10485
  %10496 = fadd fast float %10489, %10492
  %10497 = fmul fast float %10494, %10496
  %10498 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %10499 = extractvalue %dx.types.CBufRet.f32 %10498, 3
  %10500 = extractvalue %dx.types.CBufRet.f32 %8798, 1
  %10501 = fsub fast float %8803, %8797
  %10502 = fadd fast float %10501, %8804
  %10503 = fsub fast float %10502, %10500
  %10504 = extractvalue %dx.types.CBufRet.f32 %8798, 2
  %10505 = fmul fast float %10503, %10504
  %10506 = call float @dx.op.unary.f32(i32 7, float %10505)  ; Saturate(value)
  %10507 = fsub fast float %10506, %10499
  %10508 = fmul fast float %10507, %10486
  %10509 = fadd fast float %10508, %10499
  %10510 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %10511 = extractvalue %dx.types.CBufRet.f32 %10510, 0
  %10512 = fsub fast float %10509, %10511
  %10513 = fmul fast float %10512, 1.000000e+01
  %10514 = call float @dx.op.unary.f32(i32 7, float %10513)  ; Saturate(value)
  %10515 = fsub fast float %4417, %8794
  %10516 = fmul fast float %10514, %10515
  %10517 = fadd fast float %10516, %8794
  %10518 = fmul fast float %10517, %10509
  br label %10543

; <label>:10519                                   ; preds = %10485
  %10520 = fadd fast float %10246, %10243
  %10521 = fmul fast float %10467, %10520
  %10522 = fadd fast float %10521, %10470
  %10523 = fmul fast float %10494, %10489
  %10524 = fmul fast float %10494, %10492
  %10525 = fmul fast float %10494, %10522
  %10526 = call float @dx.op.binary.f32(i32 35, float %10524, float %10525)  ; FMax(a,b)
  %10527 = call float @dx.op.binary.f32(i32 35, float %10523, float %10526)  ; FMax(a,b)
  %10528 = call float @dx.op.binary.f32(i32 35, float %10527, float %8794)  ; FMax(a,b)
  %10529 = fcmp fast ugt float %10528, 0x3F10000000000000
  br i1 %10529, label %10531, label %10530

; <label>:10530                                   ; preds = %10519
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %10531

; <label>:10531                                   ; preds = %10530, %10519
  %10532 = add i32 %60, 356
  %10533 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %10532, i32 undef)  ; BufferLoad(srv,index,wot)
  %10534 = extractvalue %dx.types.ResRet.i32 %10533, 0
  %10535 = and i32 %10534, 32
  %10536 = icmp eq i32 %10535, 0
  br i1 %10536, label %10543, label %10537

; <label>:10537                                   ; preds = %10531
  %10538 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %10539 = extractvalue %dx.types.CBufRet.f32 %10538, 0
  %10540 = fmul fast float %10539, 0x3FE99999A0000000
  %10541 = fadd fast float %10539, %10523
  %10542 = fadd fast float %10540, %10525
  br label %10543

; <label>:10543                                   ; preds = %10537, %10531, %10495
  %10544 = phi float [ %10497, %10495 ], [ %10541, %10537 ], [ %10523, %10531 ]
  %10545 = phi float [ %10518, %10495 ], [ %10524, %10537 ], [ %10524, %10531 ]
  %10546 = phi float [ %10517, %10495 ], [ %10542, %10537 ], [ %10525, %10531 ]
  %10547 = phi float [ %10517, %10495 ], [ %8794, %10537 ], [ %8794, %10531 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %10548 = call float @dx.op.binary.f32(i32 36, float %10544, float 3.225500e+04)  ; FMin(a,b)
  %10549 = call float @dx.op.binary.f32(i32 36, float %10545, float 3.225500e+04)  ; FMin(a,b)
  %10550 = call float @dx.op.binary.f32(i32 36, float %10546, float 3.225500e+04)  ; FMin(a,b)
  %10551 = call float @dx.op.binary.f32(i32 36, float %10547, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %10548)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %10549)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %10550)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %10551)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %10547)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %10547)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %10547)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float %10547)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sample.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readnone
declare float @dx.op.tertiary.f32(i32, float, float, float) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.unaryBits.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot4.f32(i32, float, float, float, float, float, float, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float, float, float, float, float, float, float) #2

; Function Attrs: nounwind readnone
declare i32 @dx.op.tertiary.i32(i32, i32, i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

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
!dx.viewIdState = !{!73}
!dx.entryPoints = !{!74}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !62, !65}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61}
!6 = !{i32 0, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 3, i32 0, i32 -1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 4, i32 0, i32 -1, i32 2, i32 0, !7}
!9 = !{i32 2, [0 x %"class.Texture2DArray<vector<float, 4> >"]* undef, !"", i32 6, i32 0, i32 -1, i32 7, i32 0, !7}
!10 = !{i32 3, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 37, i32 1, i32 11, i32 0, null}
!11 = !{i32 4, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 52, i32 1, i32 4, i32 0, !7}
!12 = !{i32 5, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 33, i32 1, i32 2, i32 0, !7}
!13 = !{i32 6, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 3, i32 1, i32 11, i32 0, null}
!14 = !{i32 7, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 4, i32 1, i32 11, i32 0, null}
!15 = !{i32 8, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 5, i32 1, i32 11, i32 0, null}
!16 = !{i32 9, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 6, i32 1, i32 11, i32 0, null}
!17 = !{i32 10, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 69, i32 1, i32 2, i32 0, !7}
!18 = !{i32 11, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 18, i32 1, i32 11, i32 0, null}
!19 = !{i32 12, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 19, i32 1, i32 11, i32 0, null}
!20 = !{i32 13, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 20, i32 1, i32 11, i32 0, null}
!21 = !{i32 14, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 21, i32 1, i32 11, i32 0, null}
!22 = !{i32 15, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 37, i32 1, i32 2, i32 0, !7}
!23 = !{i32 16, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!24 = !{i32 17, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 58, i32 1, i32 2, i32 0, !7}
!25 = !{i32 18, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 59, i32 1, i32 2, i32 0, !7}
!26 = !{i32 19, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 60, i32 1, i32 2, i32 0, !7}
!27 = !{i32 20, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 45, i32 1, i32 11, i32 0, null}
!28 = !{i32 21, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 46, i32 1, i32 11, i32 0, null}
!29 = !{i32 22, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 47, i32 1, i32 11, i32 0, null}
!30 = !{i32 23, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 48, i32 1, i32 11, i32 0, null}
!31 = !{i32 24, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 57, i32 1, i32 2, i32 0, !7}
!32 = !{i32 25, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 69, i32 1, i32 11, i32 0, null}
!33 = !{i32 26, %"class.Texture2D<unsigned int>"* undef, !"", i32 2, i32 56, i32 1, i32 2, i32 0, !34}
!34 = !{i32 0, i32 5}
!35 = !{i32 27, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 35, i32 1, i32 7, i32 0, !7}
!36 = !{i32 28, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 34, i32 1, i32 2, i32 0, !7}
!37 = !{i32 29, %"class.Texture3D<float>"* undef, !"", i32 2, i32 31, i32 1, i32 4, i32 0, !7}
!38 = !{i32 30, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 10, i32 1, i32 11, i32 0, null}
!39 = !{i32 31, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 1, i32 1, i32 11, i32 0, null}
!40 = !{i32 32, %"class.Texture1D<float>"* undef, !"", i32 2, i32 32, i32 1, i32 1, i32 0, !7}
!41 = !{i32 33, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 8, i32 1, i32 7, i32 0, !7}
!42 = !{i32 34, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 1, i32 1, i32 2, i32 0, !7}
!43 = !{i32 35, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 2, i32 1, i32 2, i32 0, !7}
!44 = !{i32 36, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 3, i32 1, i32 2, i32 0, !7}
!45 = !{i32 37, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 4, i32 1, i32 2, i32 0, !7}
!46 = !{i32 38, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 80, i32 1, i32 7, i32 0, !47}
!47 = !{i32 0, i32 14}
!48 = !{i32 39, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 67, i32 1, i32 11, i32 0, null}
!49 = !{i32 40, %"class.Texture2D<float>"* undef, !"", i32 2, i32 7, i32 1, i32 2, i32 0, !7}
!50 = !{i32 41, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 6, i32 1, i32 2, i32 0, !7}
!51 = !{i32 42, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 5, i32 1, i32 2, i32 0, !7}
!52 = !{i32 43, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 38, i32 1, i32 2, i32 0, !7}
!53 = !{i32 44, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 12, i32 1, i32 11, i32 0, null}
!54 = !{i32 45, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 13, i32 1, i32 11, i32 0, null}
!55 = !{i32 46, %"class.Texture1D<float>"* undef, !"", i32 2, i32 30, i32 1, i32 1, i32 0, !7}
!56 = !{i32 47, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 44, i32 1, i32 4, i32 0, !7}
!57 = !{i32 48, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 45, i32 1, i32 4, i32 0, !7}
!58 = !{i32 49, %"class.Texture2DArray<float>"* undef, !"", i32 2, i32 47, i32 1, i32 7, i32 0, !7}
!59 = !{i32 50, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 85, i32 1, i32 7, i32 0, !47}
!60 = !{i32 51, %"class.Texture2D<float>"* undef, !"", i32 2, i32 83, i32 1, i32 2, i32 0, !7}
!61 = !{i32 52, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 86, i32 1, i32 2, i32 0, !7}
!62 = !{!63, !64}
!63 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!64 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 144, null}
!65 = !{!66, !67, !68, !69, !70, !71, !72}
!66 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!67 = !{i32 1, %struct.SamplerComparisonState* undef, !"", i32 0, i32 0, i32 1, i32 1, null}
!68 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!69 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!70 = !{i32 4, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!71 = !{i32 5, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!72 = !{i32 6, %struct.SamplerState* undef, !"", i32 0, i32 5, i32 1, i32 0, null}
!73 = !{[58 x i32] [i32 56, i32 8, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 0, i32 0, i32 255, i32 255, i32 255, i32 0, i32 255, i32 255, i32 255, i32 255, i32 7, i32 7, i32 255, i32 0, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 0, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 0, i32 0, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 0, i32 255, i32 0, i32 0, i32 0, i32 255, i32 0, i32 0, i32 0]}
!74 = !{void ()* @ps_main, !"ps_main", !75, !4, !101}
!75 = !{!76, !97, null}
!76 = !{!77, !80, !81, !83, !85, !86, !87, !88, !89, !90, !91, !92, !93, !95, !96}
!77 = !{i32 0, !"SV_Position", i8 9, i8 3, !78, i8 4, i32 1, i8 4, i32 0, i8 0, !79}
!78 = !{i32 0}
!79 = !{i32 3, i32 15}
!80 = !{i32 1, !"COLOR", i8 9, i8 0, !78, i8 2, i32 1, i8 4, i32 1, i8 0, !79}
!81 = !{i32 2, !"TEXCOORDS", i8 9, i8 0, !78, i8 2, i32 1, i8 4, i32 2, i8 0, !82}
!82 = !{i32 3, i32 3}
!83 = !{i32 3, !"NORMAL", i8 9, i8 0, !78, i8 2, i32 1, i8 3, i32 3, i8 0, !84}
!84 = !{i32 3, i32 7}
!85 = !{i32 4, !"TANGENT", i8 9, i8 0, !78, i8 2, i32 1, i8 4, i32 4, i8 0, !79}
!86 = !{i32 5, !"AMBIENT_COLOR", i8 9, i8 0, !78, i8 2, i32 1, i8 3, i32 5, i8 0, !84}
!87 = !{i32 6, !"HIGHLIGHT_DIR_VIS", i8 9, i8 0, !78, i8 2, i32 1, i8 4, i32 6, i8 0, !79}
!88 = !{i32 7, !"WGV_TEXCOORD", i8 9, i8 0, !78, i8 2, i32 1, i8 3, i32 7, i8 0, !84}
!89 = !{i32 8, !"WGV_NORMAL", i8 9, i8 0, !78, i8 2, i32 1, i8 4, i32 8, i8 0, !79}
!90 = !{i32 9, !"SECONDARY_TEXCOORDS", i8 9, i8 0, !78, i8 2, i32 1, i8 2, i32 9, i8 0, !82}
!91 = !{i32 10, !"SCEONDARY_NORMAL", i8 9, i8 0, !78, i8 2, i32 1, i8 4, i32 10, i8 0, !79}
!92 = !{i32 11, !"OBJECT_POSITION", i8 9, i8 0, !78, i8 2, i32 1, i8 4, i32 11, i8 0, !84}
!93 = !{i32 12, !"DECAL_VOLUME_GRID_INDEX", i8 5, i8 0, !78, i8 1, i32 1, i8 1, i32 12, i8 0, !94}
!94 = !{i32 3, i32 1}
!95 = !{i32 13, !"PACKED_TRI_DATA", i8 5, i8 0, !78, i8 1, i32 1, i8 4, i32 13, i8 0, !94}
!96 = !{i32 14, !"SV_SampleIndex", i8 5, i8 12, !78, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!97 = !{!98, !99}
!98 = !{i32 0, !"SV_Target", i8 9, i8 16, !78, i8 0, i32 1, i8 4, i32 0, i8 0, !79}
!99 = !{i32 1, !"SV_Target", i8 9, i8 16, !100, i8 0, i32 1, i8 4, i32 1, i8 0, !79}
!100 = !{i32 1}
!101 = !{i32 0, i64 16}
!102 = distinct !{!102, !"dx.controlflow.hints", i32 1}
!103 = distinct !{!103, !104}
!104 = !{!"llvm.loop.unroll.disable"}
!105 = distinct !{!105, !"dx.controlflow.hints", i32 1}
!106 = distinct !{!106, !"dx.controlflow.hints", i32 1}
!107 = distinct !{!107, !"dx.controlflow.hints", i32 1}
!108 = distinct !{!108, !"dx.controlflow.hints", i32 1}
!109 = distinct !{!109, !"dx.controlflow.hints", i32 1}
!110 = !{!111, !111, i64 0}
!111 = !{!"int", !112, i64 0}
!112 = !{!"omnipotent char", !113, i64 0}
!113 = !{!"Simple C/C++ TBAA"}
!114 = !{!115, !117, !119, !121}
!115 = distinct !{!115, !116, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!116 = distinct !{!116, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!117 = distinct !{!117, !118, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!118 = distinct !{!118, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!119 = distinct !{!119, !120, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z: %agg.result"}
!120 = distinct !{!120, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z"}
!121 = distinct !{!121, !122, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z: %agg.result"}
!122 = distinct !{!122, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z"}
!123 = distinct !{!123, !"dx.controlflow.hints", i32 1}
!124 = !{!125, !125, i64 0}
!125 = !{!"float", !112, i64 0}
!126 = distinct !{!126, !104}
!127 = distinct !{!127, !104}
!128 = distinct !{!128, !"dx.controlflow.hints", i32 1}
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
!139 = !{!140, !142, !144, !145, !147, !148, !149, !151, !152, !153}
!140 = distinct !{!140, !141, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!141 = distinct !{!141, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!142 = distinct !{!142, !143, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!143 = distinct !{!143, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!144 = distinct !{!144, !143, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!145 = distinct !{!145, !146, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %blendColor"}
!146 = distinct !{!146, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z"}
!147 = distinct !{!147, !146, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %addColor"}
!148 = distinct !{!148, !146, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %thermalExtinction"}
!149 = distinct !{!149, !150, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %blendColor"}
!150 = distinct !{!150, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z"}
!151 = distinct !{!151, !150, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %addColor"}
!152 = distinct !{!152, !150, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %thermalExtinction"}
!153 = distinct !{!153, !154, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z: %agg.result"}
!154 = distinct !{!154, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z"}
!155 = !{!156}
!156 = distinct !{!156, !157, !"\01?sort@@YAXAIAM00@Z: %c"}
!157 = distinct !{!157, !"\01?sort@@YAXAIAM00@Z"}
!158 = !{!159, !160, !140, !142, !144, !145, !147, !148, !149, !151, !152, !153}
!159 = distinct !{!159, !157, !"\01?sort@@YAXAIAM00@Z: %a"}
!160 = distinct !{!160, !157, !"\01?sort@@YAXAIAM00@Z: %b"}
!161 = !{!160}
!162 = !{!159, !156, !140, !142, !144, !145, !147, !148, !149, !151, !152, !153}
!163 = !{!159}
!164 = !{!160, !156, !140, !142, !144, !145, !147, !148, !149, !151, !152, !153}
!165 = !{!166}
!166 = distinct !{!166, !167, !"\01?sort@@YAXAIAM00@Z: %c"}
!167 = distinct !{!167, !"\01?sort@@YAXAIAM00@Z"}
!168 = !{!169, !170, !140, !142, !144, !145, !147, !148, !149, !151, !152, !153}
!169 = distinct !{!169, !167, !"\01?sort@@YAXAIAM00@Z: %a"}
!170 = distinct !{!170, !167, !"\01?sort@@YAXAIAM00@Z: %b"}
!171 = !{!170}
!172 = !{!169, !166, !140, !142, !144, !145, !147, !148, !149, !151, !152, !153}
!173 = !{!169}
!174 = !{!170, !166, !140, !142, !144, !145, !147, !148, !149, !151, !152, !153}
!175 = distinct !{!175, !"dx.controlflow.hints", i32 1}
!176 = distinct !{!176, !"dx.controlflow.hints", i32 2}
!177 = distinct !{!177, !"dx.controlflow.hints", i32 1}
!178 = distinct !{!178, !"dx.controlflow.hints", i32 1}
!179 = distinct !{!179, !"dx.controlflow.hints", i32 1}
!180 = distinct !{!180, !"dx.controlflow.hints", i32 1}
!181 = distinct !{!181, !"dx.controlflow.hints", i32 1}
!182 = distinct !{!182, !"dx.controlflow.hints", i32 1}
!183 = distinct !{!183, !"dx.controlflow.hints", i32 1}
!184 = distinct !{!184, !"dx.controlflow.hints", i32 1}
!185 = distinct !{!185, !"dx.controlflow.hints", i32 1}

