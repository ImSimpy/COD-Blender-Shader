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
; SH_RED                   0   xyzw        5     NONE   float   xyzw
; SH_GREEN                 0   xyzw        6     NONE   float   xyzw
; SH_BLUE                  0   xyzw        7     NONE   float   xyzw
; WGV_TEXCOORD             0   xyz         8     NONE   float   xyz 
; WGV_NORMAL               0   xyzw        9     NONE   float   xyzw
; SECONDARY_TEXCOORDS      0   xy         10     NONE   float   xy  
; SCEONDARY_NORMAL         0   xyzw       11     NONE   float   xyzw
; OBJECT_POSITION          0   xyzw       12     NONE   float   xyz 
; DECAL_VOLUME_GRID_INDEX     0   x          13     NONE    uint   x   
; ENTITY_IDS               0    yz        13     NONE    uint    y  
; PACKED_TRI_DATA          0   xyzw       14     NONE    uint   x   
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
; shader hash: 20a9dea98057b76161c57f7d79344df3
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
; SH_RED                   0                 linear       
; SH_GREEN                 0                 linear       
; SH_BLUE                  0                 linear       
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
;                                   texture    byte         r/o      T2     t37,space1     1
;                                   texture    byte         r/o      T3     t22,space1     1
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
;                                   texture     f32          2d     T18     t57,space2     1
;                                   texture    byte         r/o     T19     t69,space1     1
;                                   texture     u32          2d     T20     t56,space2     1
;                                   texture     f32     2darray     T21     t35,space2     1
;                                   texture     f32          2d     T22     t34,space2     1
;                                   texture     f32          3d     T23     t31,space2     1
;                                   texture     f32          2d     T24      t1,space2     1
;                                   texture     f32          2d     T25      t2,space2     1
;                                   texture     f32          2d     T26      t3,space2     1
;                                   texture     f32          2d     T27      t4,space2     1
;                                   textureunorm_f32     2darray     T28     t80,space2     1
;                                   texture    byte         r/o     T29     t67,space1     1
;                                   texture     f32          2d     T30      t7,space2     1
;                                   texture     f32          2d     T31      t6,space2     1
;                                   texture     f32          2d     T32      t5,space2     1
;                                   texture     f32          2d     T33     t38,space2     1
;                                   texture     f32          1d     T34     t30,space2     1
;                                   texture     f32          3d     T35     t44,space2     1
;                                   texture     f32          3d     T36     t45,space2     1
;                                   texture     f32     2darray     T37     t47,space2     1
;                                   textureunorm_f32     2darray     T38     t85,space2     1
;                                   texture     f32          2d     T39     t83,space2     1
;                                   texture     f32          2d     T40     t86,space2     1
;                                   texture     f32          2d     T41     t12,space2     1
;                                   texture     f32          2d     T42     t55,space2     1
;
;
; ViewId state:
;
; Number of inputs: 60, outputs: 8
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 36, 37, 38, 39, 40, 41, 44, 45, 46, 47, 48, 49, 50, 52, 53, 56 }
;   output 1 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 36, 37, 38, 39, 40, 41, 44, 45, 46, 47, 48, 49, 50, 52, 53, 56 }
;   output 2 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 24, 28, 29, 30, 31, 32, 33, 34, 36, 37, 38, 39, 40, 41, 44, 45, 46, 47, 48, 49, 50, 52, 53, 56 }
;   output 4 depends on inputs: { 0, 1, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 32, 33, 34, 36, 37, 38, 39, 40, 41, 44, 45, 46, 47, 48, 49, 50, 52, 53, 56 }
;   output 5 depends on inputs: { 0, 1, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 32, 33, 34, 36, 37, 38, 39, 40, 41, 44, 45, 46, 47, 48, 49, 50, 52, 53, 56 }
;   output 6 depends on inputs: { 0, 1, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 32, 33, 34, 36, 37, 38, 39, 40, 41, 44, 45, 46, 47, 48, 49, 50, 52, 53, 56 }
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
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 42, i32 55, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 41, i32 12, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 40, i32 86, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 39, i32 83, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 38, i32 85, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 37, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 36, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 35, i32 44, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 34, i32 30, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 33, i32 38, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 32, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 31, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 30, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 29, i32 67, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 28, i32 80, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 27, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 26, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 25, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 24, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 23, i32 31, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 22, i32 34, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 21, i32 35, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 20, i32 56, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 19, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 18, i32 57, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 58, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %27 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %28 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %29 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 21, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %30 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 20, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %31 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 19, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %32 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 18, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %33 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %34 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %35 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %36 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %37 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %38 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 33, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %39 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 52, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %40 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 22, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %41 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %42 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 6, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %43 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 5, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %44 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 4, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %45 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %46 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %47 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %48 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %49 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %50 = alloca [4 x i32], align 4
  %51 = call i32 @dx.op.loadInput.i32(i32 4, i32 15, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %52 = call i32 @dx.op.loadInput.i32(i32 4, i32 14, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %53 = call i32 @dx.op.loadInput.i32(i32 4, i32 13, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %54 = call float @dx.op.loadInput.f32(i32 4, i32 12, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %55 = call float @dx.op.loadInput.f32(i32 4, i32 12, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %56 = call float @dx.op.loadInput.f32(i32 4, i32 12, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %57 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %58 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %59 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %60 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %61 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %62 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %63 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %64 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %65 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %66 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %67 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %68 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %69 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %70 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %71 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %72 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %73 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %74 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %75 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %76 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %77 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %78 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %79 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %80 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %81 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %82 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %83 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %84 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %85 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %86 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %87 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %88 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %89 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %90 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %91 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %92 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %93 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %94 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %95 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %96 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %97 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %98 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %99 = alloca [12 x float], align 4
  %100 = alloca [12 x float], align 4
  %101 = alloca [4 x float], align 4
  %102 = alloca [4 x float], align 4
  %103 = alloca [4 x float], align 4
  %104 = alloca [4 x float], align 4
  %105 = alloca [3 x float], align 4
  %106 = alloca [3 x float], align 4
  %107 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %108 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %109 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %110 = extractvalue %dx.types.CBufRet.f32 %109, 0
  %111 = fmul fast float %110, %95
  %112 = fmul fast float %110, %96
  %113 = call float @dx.op.dot3.f32(i32 55, float %86, float %87, float %88, float %86, float %87, float %88)  ; Dot3(ax,ay,az,bx,by,bz)
  %114 = bitcast float %113 to i32
  %115 = ashr i32 %114, 1
  %116 = sub nsw i32 1597250115, %115
  %117 = bitcast i32 %116 to float
  %118 = fmul fast float %117, %86
  %119 = fmul fast float %117, %87
  %120 = fmul fast float %117, %88
  %121 = fmul fast float %87, %84
  %122 = fmul fast float %88, %83
  %123 = fsub fast float %121, %122
  %124 = fmul fast float %88, %82
  %125 = fmul fast float %86, %84
  %126 = fsub fast float %124, %125
  %127 = fmul fast float %86, %83
  %128 = fmul fast float %87, %82
  %129 = fsub fast float %127, %128
  %130 = fmul fast float %123, %85
  %131 = fmul fast float %126, %85
  %132 = fmul fast float %129, %85
  %133 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %134 = extractvalue %dx.types.CBufRet.f32 %133, 0
  %135 = fcmp fast une float %134, 0.000000e+00
  %136 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %137 = extractvalue %dx.types.CBufRet.f32 %136, 2
  %138 = extractvalue %dx.types.CBufRet.f32 %136, 3
  %139 = fmul fast float %111, 2.000000e+00
  %140 = fmul fast float %139, %137
  %141 = fmul fast float %112, 2.000000e+00
  %142 = fmul fast float %141, %138
  %143 = fsub fast float 1.000000e+00, %140
  %144 = fsub fast float 1.000000e+00, %142
  %145 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %146 = extractvalue %dx.types.CBufRet.f32 %145, 0
  %147 = extractvalue %dx.types.CBufRet.f32 %145, 1
  %148 = extractvalue %dx.types.CBufRet.f32 %145, 2
  %149 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %150 = extractvalue %dx.types.CBufRet.f32 %149, 0
  %151 = extractvalue %dx.types.CBufRet.f32 %149, 1
  %152 = extractvalue %dx.types.CBufRet.f32 %149, 2
  %153 = select i1 %135, float %146, float %150
  %154 = select i1 %135, float %147, float %151
  %155 = select i1 %135, float %148, float %152
  %156 = fmul fast float %153, %143
  %157 = fmul fast float %154, %143
  %158 = fmul fast float %155, %143
  %159 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %160 = extractvalue %dx.types.CBufRet.f32 %159, 0
  %161 = extractvalue %dx.types.CBufRet.f32 %159, 1
  %162 = extractvalue %dx.types.CBufRet.f32 %159, 2
  %163 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %164 = extractvalue %dx.types.CBufRet.f32 %163, 0
  %165 = extractvalue %dx.types.CBufRet.f32 %163, 1
  %166 = extractvalue %dx.types.CBufRet.f32 %163, 2
  %167 = select i1 %135, float %160, float %164
  %168 = select i1 %135, float %161, float %165
  %169 = select i1 %135, float %162, float %166
  %170 = fmul fast float %167, %144
  %171 = fmul fast float %168, %144
  %172 = fmul fast float %169, %144
  %173 = fadd fast float %170, %156
  %174 = fadd fast float %171, %157
  %175 = fadd fast float %172, %158
  %176 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %177 = extractvalue %dx.types.CBufRet.f32 %176, 0
  %178 = extractvalue %dx.types.CBufRet.f32 %176, 1
  %179 = extractvalue %dx.types.CBufRet.f32 %176, 2
  %180 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %181 = extractvalue %dx.types.CBufRet.f32 %180, 0
  %182 = extractvalue %dx.types.CBufRet.f32 %180, 1
  %183 = extractvalue %dx.types.CBufRet.f32 %180, 2
  %184 = select i1 %135, float %177, float %181
  %185 = select i1 %135, float %178, float %182
  %186 = select i1 %135, float %179, float %183
  %187 = fadd fast float %173, %184
  %188 = fadd fast float %174, %185
  %189 = fadd fast float %175, %186
  %190 = fmul fast float %187, %98
  %191 = fmul fast float %188, %98
  %192 = fmul fast float %189, %98
  %193 = shl i32 %52, 5
  %194 = add i32 %193, 4194304
  %195 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %194, i32 undef)  ; BufferLoad(srv,index,wot)
  %196 = extractvalue %dx.types.ResRet.i32 %195, 0
  %197 = extractvalue %dx.types.ResRet.i32 %195, 1
  %198 = extractvalue %dx.types.ResRet.i32 %195, 2
  %199 = extractvalue %dx.types.ResRet.i32 %195, 3
  %200 = add i32 %193, 4194320
  %201 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %200, i32 undef)  ; BufferLoad(srv,index,wot)
  %202 = extractvalue %dx.types.ResRet.i32 %201, 0
  %203 = extractvalue %dx.types.ResRet.i32 %201, 1
  %204 = bitcast i32 %202 to float
  %205 = bitcast i32 %203 to float
  %206 = add i32 %51, 360
  %207 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %206, i32 undef)  ; BufferLoad(srv,index,wot)
  %208 = extractvalue %dx.types.ResRet.i32 %207, 0
  %209 = extractvalue %dx.types.ResRet.i32 %207, 1
  %210 = extractvalue %dx.types.ResRet.i32 %207, 2
  %211 = extractvalue %dx.types.ResRet.i32 %207, 3
  %212 = bitcast i32 %208 to float
  %213 = bitcast i32 %209 to float
  %214 = bitcast i32 %210 to float
  %215 = bitcast i32 %211 to float
  %216 = call float @dx.op.dot3.f32(i32 55, float %118, float %119, float %120, float %118, float %119, float %120)  ; Dot3(ax,ay,az,bx,by,bz)
  %217 = call float @dx.op.unary.f32(i32 25, float %216)  ; Rsqrt(value)
  %218 = fmul fast float %217, %118
  %219 = fmul fast float %217, %119
  %220 = fmul fast float %217, %120
  %221 = call float @dx.op.dot3.f32(i32 55, float %190, float %191, float %192, float %190, float %191, float %192)  ; Dot3(ax,ay,az,bx,by,bz)
  %222 = call float @dx.op.unary.f32(i32 25, float %221)  ; Rsqrt(value)
  %223 = fmul fast float %222, %190
  %224 = fmul fast float %222, %191
  %225 = fmul fast float %222, %192
  %226 = call float @dx.op.dot3.f32(i32 55, float %223, float %224, float %225, float %218, float %219, float %220)  ; Dot3(ax,ay,az,bx,by,bz)
  %227 = fmul fast float %226, %226
  %228 = fmul fast float %227, %214
  %229 = fadd fast float %228, %215
  %230 = call float @dx.op.unary.f32(i32 7, float %229)  ; Saturate(value)
  %231 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 310)  ; CBufferLoadLegacy(handle,regIndex)
  %232 = extractvalue %dx.types.CBufRet.f32 %231, 3
  %233 = fmul fast float %232, %221
  %234 = fsub fast float %212, %233
  %235 = fmul fast float %234, %213
  %236 = call float @dx.op.unary.f32(i32 7, float %235)  ; Saturate(value)
  %237 = fmul fast float %236, %230
  %238 = fmul fast float %111, 5.000000e-01
  %239 = fmul fast float %112, 5.000000e-01
  %240 = fptosi float %238 to i32
  %241 = fptosi float %239 to i32
  %242 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %23, i32 0, i32 %240, i32 %241, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %243 = extractvalue %dx.types.ResRet.i32 %242, 0
  %244 = lshr i32 %243, 18
  %245 = uitofp i32 %244 to float
  %246 = fmul fast float %245, 0x3F4C00EBA0000000
  %247 = call float @dx.op.unary.f32(i32 21, float %246)  ; Exp(value)
  %248 = fadd fast float %247, -1.000000e+00
  %249 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %23, i32 0)  ; GetDimensions(handle,mipLevel)
  %250 = extractvalue %dx.types.Dimensions %249, 0
  %251 = sitofp i32 %250 to float
  %252 = extractvalue %dx.types.Dimensions %249, 1
  %253 = sitofp i32 %252 to float
  %254 = fcmp fast oge float %238, %251
  %255 = fcmp fast oge float %239, %253
  %256 = or i1 %254, %255
  %257 = select i1 %256, float 0x4197782600000000, float %248
  %258 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %259 = extractvalue %dx.types.CBufRet.f32 %258, 2
  %260 = extractvalue %dx.types.CBufRet.f32 %258, 3
  %261 = fmul fast float %259, %111
  %262 = fmul fast float %260, %112
  %263 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %264 = extractvalue %dx.types.ResRet.i32 %263, 0
  %265 = and i32 %264, 114688
  %266 = icmp ne i32 %265, 0
  %267 = select i1 %266, float %261, float 0.000000e+00
  %268 = select i1 %266, float %262, float 0.000000e+00
  %269 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %46, float %267, float %268, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %270 = extractvalue %dx.types.ResRet.f32 %269, 0
  %271 = fmul fast float %270, 2.550000e+02
  %272 = fptoui float %271 to i32
  %273 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %274 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %275 = extractvalue %dx.types.CBufRet.i32 %274, 3
  %276 = and i32 %275, 3
  %277 = icmp ne i32 %276, 0
  %278 = and i32 %275, 4
  %279 = icmp ne i32 %278, 0
  %280 = and i1 %277, %279
  br i1 %280, label %281, label %292

; <label>:281                                     ; preds = %0
  %282 = extractvalue %dx.types.CBufRet.f32 %273, 3
  %283 = fmul fast float %282, %112
  %284 = extractvalue %dx.types.CBufRet.f32 %273, 2
  %285 = fmul fast float %284, %111
  %286 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %45, float %285, float %283, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %287 = extractvalue %dx.types.ResRet.f32 %286, 0
  %288 = fsub fast float 1.000000e+00, %287
  %289 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %290 = extractvalue %dx.types.CBufRet.f32 %289, 0
  %291 = fcmp fast olt float %288, %290
  br label %295

; <label>:292                                     ; preds = %0
  %293 = icmp eq i32 %278, 0
  %294 = and i1 %277, %293
  br label %295

; <label>:295                                     ; preds = %292, %281
  %296 = phi i1 [ %291, %281 ], [ %294, %292 ]
  %297 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %298 = extractvalue %dx.types.CBufRet.f32 %297, 2
  %299 = fmul fast float %298, 0x3FE3C6EF40000000
  %300 = frem fast float %111, 2.560000e+02
  %301 = frem fast float %112, 2.560000e+02
  %302 = fptoui float %300 to i32
  %303 = fptoui float %301 to i32
  %304 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %28, i32 0, i32 %302, i32 %303, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %305 = extractvalue %dx.types.ResRet.f32 %304, 0
  %306 = fadd fast float %305, %299
  %307 = call float @dx.op.unary.f32(i32 22, float %306)  ; Frc(value)
  %308 = add i32 %51, 156
  %309 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %308, i32 undef)  ; BufferLoad(srv,index,wot)
  %310 = extractvalue %dx.types.ResRet.i32 %309, 0
  %311 = shl i32 %310, 4
  %312 = and i32 %311, 32752
  %313 = call float @dx.op.legacyF16ToF32(i32 131, i32 %312)  ; LegacyF16ToF32(value)
  %314 = lshr i32 %310, 7
  %315 = and i32 %314, 32752
  %316 = call float @dx.op.legacyF16ToF32(i32 131, i32 %315)  ; LegacyF16ToF32(value)
  %317 = lshr i32 %310, 22
  %318 = shl nuw nsw i32 %317, 5
  %319 = call float @dx.op.legacyF16ToF32(i32 131, i32 %318)  ; LegacyF16ToF32(value)
  %320 = add i32 %51, 216
  %321 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %320, i32 undef)  ; BufferLoad(srv,index,wot)
  %322 = extractvalue %dx.types.ResRet.i32 %321, 0
  %323 = and i32 %322, 255
  %324 = uitofp i32 %323 to float
  %325 = fmul fast float %324, 0x3F70101020000000
  %326 = lshr i32 %322, 8
  %327 = and i32 %326, 255
  %328 = uitofp i32 %327 to float
  %329 = fmul fast float %328, 0x3F70101020000000
  %330 = lshr i32 %322, 16
  %331 = and i32 %330, 255
  %332 = uitofp i32 %331 to float
  %333 = fmul fast float %332, 0x3F70101020000000
  %334 = add i32 %51, 36
  %335 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %334, i32 undef)  ; BufferLoad(srv,index,wot)
  %336 = extractvalue %dx.types.ResRet.i32 %335, 0
  %337 = and i32 %336, 65535
  %338 = call float @dx.op.legacyF16ToF32(i32 131, i32 %337)  ; LegacyF16ToF32(value)
  %339 = lshr i32 %336, 16
  %340 = call float @dx.op.legacyF16ToF32(i32 131, i32 %339)  ; LegacyF16ToF32(value)
  %341 = add i32 %51, 288
  %342 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %341, i32 undef)  ; BufferLoad(srv,index,wot)
  %343 = extractvalue %dx.types.ResRet.i32 %342, 0
  %344 = and i32 %343, 65535
  %345 = call float @dx.op.legacyF16ToF32(i32 131, i32 %344)  ; LegacyF16ToF32(value)
  %346 = lshr i32 %343, 16
  %347 = call float @dx.op.legacyF16ToF32(i32 131, i32 %346)  ; LegacyF16ToF32(value)
  %348 = fmul fast float %345, 0x3F50624DE0000000
  %349 = fmul fast float %347, 0x3F50624DE0000000
  %350 = add i32 %51, 172
  %351 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %350, i32 undef)  ; BufferLoad(srv,index,wot)
  %352 = extractvalue %dx.types.ResRet.i32 %351, 0
  %353 = shl i32 %352, 4
  %354 = and i32 %353, 32752
  %355 = call float @dx.op.legacyF16ToF32(i32 131, i32 %354)  ; LegacyF16ToF32(value)
  %356 = lshr i32 %352, 7
  %357 = and i32 %356, 32752
  %358 = call float @dx.op.legacyF16ToF32(i32 131, i32 %357)  ; LegacyF16ToF32(value)
  %359 = lshr i32 %352, 22
  %360 = shl nuw nsw i32 %359, 5
  %361 = call float @dx.op.legacyF16ToF32(i32 131, i32 %360)  ; LegacyF16ToF32(value)
  %362 = add i32 %51, 232
  %363 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %362, i32 undef)  ; BufferLoad(srv,index,wot)
  %364 = extractvalue %dx.types.ResRet.i32 %363, 0
  %365 = and i32 %364, 255
  %366 = uitofp i32 %365 to float
  %367 = fmul fast float %366, 0x3F70101020000000
  %368 = lshr i32 %364, 8
  %369 = and i32 %368, 255
  %370 = uitofp i32 %369 to float
  %371 = fmul fast float %370, 0x3F70101020000000
  %372 = lshr i32 %364, 16
  %373 = and i32 %372, 255
  %374 = uitofp i32 %373 to float
  %375 = fmul fast float %374, 0x3F70101020000000
  %376 = add i32 %51, 52
  %377 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %376, i32 undef)  ; BufferLoad(srv,index,wot)
  %378 = extractvalue %dx.types.ResRet.i32 %377, 0
  %379 = and i32 %378, 65535
  %380 = call float @dx.op.legacyF16ToF32(i32 131, i32 %379)  ; LegacyF16ToF32(value)
  %381 = lshr i32 %378, 16
  %382 = call float @dx.op.legacyF16ToF32(i32 131, i32 %381)  ; LegacyF16ToF32(value)
  %383 = add i32 %51, 304
  %384 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %383, i32 undef)  ; BufferLoad(srv,index,wot)
  %385 = extractvalue %dx.types.ResRet.i32 %384, 0
  %386 = and i32 %385, 65535
  %387 = call float @dx.op.legacyF16ToF32(i32 131, i32 %386)  ; LegacyF16ToF32(value)
  %388 = lshr i32 %385, 16
  %389 = call float @dx.op.legacyF16ToF32(i32 131, i32 %388)  ; LegacyF16ToF32(value)
  %390 = fmul fast float %387, 0x3F50624DE0000000
  %391 = fmul fast float %389, 0x3F50624DE0000000
  %392 = add i32 %51, 188
  %393 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %392, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %404 = add i32 %51, 248
  %405 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %404, i32 undef)  ; BufferLoad(srv,index,wot)
  %406 = extractvalue %dx.types.ResRet.i32 %405, 0
  %407 = and i32 %406, 255
  %408 = uitofp i32 %407 to float
  %409 = fmul fast float %408, 0x3F70101020000000
  %410 = lshr i32 %406, 8
  %411 = and i32 %410, 255
  %412 = uitofp i32 %411 to float
  %413 = fmul fast float %412, 0x3F70101020000000
  %414 = lshr i32 %406, 16
  %415 = and i32 %414, 255
  %416 = uitofp i32 %415 to float
  %417 = fmul fast float %416, 0x3F70101020000000
  %418 = add i32 %51, 68
  %419 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %418, i32 undef)  ; BufferLoad(srv,index,wot)
  %420 = extractvalue %dx.types.ResRet.i32 %419, 0
  %421 = and i32 %420, 65535
  %422 = call float @dx.op.legacyF16ToF32(i32 131, i32 %421)  ; LegacyF16ToF32(value)
  %423 = lshr i32 %420, 16
  %424 = call float @dx.op.legacyF16ToF32(i32 131, i32 %423)  ; LegacyF16ToF32(value)
  %425 = add i32 %51, 320
  %426 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %425, i32 undef)  ; BufferLoad(srv,index,wot)
  %427 = extractvalue %dx.types.ResRet.i32 %426, 0
  %428 = and i32 %427, 65535
  %429 = call float @dx.op.legacyF16ToF32(i32 131, i32 %428)  ; LegacyF16ToF32(value)
  %430 = lshr i32 %427, 16
  %431 = call float @dx.op.legacyF16ToF32(i32 131, i32 %430)  ; LegacyF16ToF32(value)
  %432 = fmul fast float %429, 0x3F50624DE0000000
  %433 = fmul fast float %431, 0x3F50624DE0000000
  %434 = add i32 %51, 204
  %435 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %434, i32 undef)  ; BufferLoad(srv,index,wot)
  %436 = extractvalue %dx.types.ResRet.i32 %435, 0
  %437 = shl i32 %436, 4
  %438 = and i32 %437, 32752
  %439 = call float @dx.op.legacyF16ToF32(i32 131, i32 %438)  ; LegacyF16ToF32(value)
  %440 = lshr i32 %436, 7
  %441 = and i32 %440, 32752
  %442 = call float @dx.op.legacyF16ToF32(i32 131, i32 %441)  ; LegacyF16ToF32(value)
  %443 = lshr i32 %436, 22
  %444 = shl nuw nsw i32 %443, 5
  %445 = call float @dx.op.legacyF16ToF32(i32 131, i32 %444)  ; LegacyF16ToF32(value)
  %446 = add i32 %51, 264
  %447 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %446, i32 undef)  ; BufferLoad(srv,index,wot)
  %448 = extractvalue %dx.types.ResRet.i32 %447, 0
  %449 = and i32 %448, 255
  %450 = uitofp i32 %449 to float
  %451 = fmul fast float %450, 0x3F70101020000000
  %452 = lshr i32 %448, 8
  %453 = and i32 %452, 255
  %454 = uitofp i32 %453 to float
  %455 = fmul fast float %454, 0x3F70101020000000
  %456 = lshr i32 %448, 16
  %457 = and i32 %456, 255
  %458 = uitofp i32 %457 to float
  %459 = fmul fast float %458, 0x3F70101020000000
  %460 = add i32 %51, 84
  %461 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %460, i32 undef)  ; BufferLoad(srv,index,wot)
  %462 = extractvalue %dx.types.ResRet.i32 %461, 0
  %463 = and i32 %462, 65535
  %464 = call float @dx.op.legacyF16ToF32(i32 131, i32 %463)  ; LegacyF16ToF32(value)
  %465 = lshr i32 %462, 16
  %466 = call float @dx.op.legacyF16ToF32(i32 131, i32 %465)  ; LegacyF16ToF32(value)
  %467 = add i32 %51, 336
  %468 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %467, i32 undef)  ; BufferLoad(srv,index,wot)
  %469 = extractvalue %dx.types.ResRet.i32 %468, 0
  %470 = and i32 %469, 65535
  %471 = call float @dx.op.legacyF16ToF32(i32 131, i32 %470)  ; LegacyF16ToF32(value)
  %472 = lshr i32 %469, 16
  %473 = call float @dx.op.legacyF16ToF32(i32 131, i32 %472)  ; LegacyF16ToF32(value)
  %474 = fmul fast float %471, 0x3F50624DE0000000
  %475 = fmul fast float %473, 0x3F50624DE0000000
  %476 = add i32 %51, 348
  %477 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %476, i32 undef)  ; BufferLoad(srv,index,wot)
  %478 = extractvalue %dx.types.ResRet.i32 %477, 0
  %479 = and i32 %478, 32
  %480 = icmp eq i32 %479, 0
  %481 = and i32 %478, 64
  %482 = icmp eq i32 %481, 0
  %483 = and i32 %478, 128
  %484 = icmp eq i32 %483, 0
  %485 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %476, i32 undef)  ; BufferLoad(srv,index,wot)
  %486 = extractvalue %dx.types.ResRet.i32 %485, 0
  %487 = and i32 %486, 2
  %488 = icmp eq i32 %487, 0
  br i1 %488, label %504, label %489

; <label>:489                                     ; preds = %295
  %490 = add i32 %51, 540
  %491 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %490, i32 undef)  ; BufferLoad(srv,index,wot)
  %492 = extractvalue %dx.types.ResRet.i32 %491, 0
  %493 = add i32 %492, 0
  %494 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %493, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %495 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %494, %dx.types.Handle %108, float %89, float %90, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %496 = extractvalue %dx.types.ResRet.f32 %495, 0
  %497 = extractvalue %dx.types.ResRet.f32 %495, 1
  %498 = extractvalue %dx.types.ResRet.f32 %495, 2
  %499 = extractvalue %dx.types.ResRet.f32 %495, 3
  %500 = fmul fast float %499, %91
  %501 = fmul fast float %496, %92
  %502 = fmul fast float %497, %93
  %503 = fmul fast float %498, %94
  br label %504

; <label>:504                                     ; preds = %489, %295
  %505 = phi float [ %94, %295 ], [ %503, %489 ]
  %506 = phi float [ %93, %295 ], [ %502, %489 ]
  %507 = phi float [ %92, %295 ], [ %501, %489 ]
  %508 = phi float [ %91, %295 ], [ %500, %489 ]
  %509 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %476, i32 undef)  ; BufferLoad(srv,index,wot)
  %510 = extractvalue %dx.types.ResRet.i32 %509, 0
  %511 = and i32 %510, 2
  %512 = icmp eq i32 %511, 0
  br i1 %512, label %532, label %513

; <label>:513                                     ; preds = %504
  %514 = add i32 %51, 44
  %515 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %514, i32 undef)  ; BufferLoad(srv,index,wot)
  %516 = extractvalue %dx.types.ResRet.i32 %515, 0
  %517 = and i32 %516, 1
  %518 = icmp ne i32 %517, 0
  %519 = select i1 %518, float %507, float 1.000000e+00
  %520 = add i32 %51, 60
  %521 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %520, i32 undef)  ; BufferLoad(srv,index,wot)
  %522 = extractvalue %dx.types.ResRet.i32 %521, 0
  %523 = and i32 %522, 1
  %524 = icmp ne i32 %523, 0
  %525 = select i1 %524, float %506, float 1.000000e+00
  %526 = add i32 %51, 76
  %527 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %526, i32 undef)  ; BufferLoad(srv,index,wot)
  %528 = extractvalue %dx.types.ResRet.i32 %527, 0
  %529 = and i32 %528, 1
  %530 = icmp ne i32 %529, 0
  %531 = select i1 %530, float %505, float 1.000000e+00
  br label %532

; <label>:532                                     ; preds = %513, %504
  %533 = phi float [ %505, %504 ], [ %531, %513 ]
  %534 = phi float [ %506, %504 ], [ %525, %513 ]
  %535 = phi float [ %507, %504 ], [ %519, %513 ]
  %536 = lshr i32 %510, 20
  %537 = and i32 %536, 3
  %538 = add nuw nsw i32 %537, 1
  %539 = add i32 %51, 24
  %540 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %539, i32 undef)  ; BufferLoad(srv,index,wot)
  %541 = extractvalue %dx.types.ResRet.i32 %540, 0
  %542 = add i32 %51, 28
  %543 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %542, i32 undef)  ; BufferLoad(srv,index,wot)
  %544 = extractvalue %dx.types.ResRet.i32 %543, 0
  %545 = or i32 %544, %541
  %546 = icmp eq i32 %545, 0
  br i1 %546, label %1134, label %547

; <label>:547                                     ; preds = %532
  %548 = and i32 %541, 262144
  %549 = icmp ne i32 %548, 0
  %550 = select i1 %549, float %57, float 1.000000e+00
  %551 = select i1 %549, float %58, float 0.000000e+00
  %552 = select i1 %549, float %59, float 0.000000e+00
  %553 = select i1 %549, float %60, float 1.000000e+00
  %554 = select i1 %549, float %61, float %89
  %555 = select i1 %549, float %62, float %90
  %556 = add i32 %51, 284
  %557 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %556, i32 undef)  ; BufferLoad(srv,index,wot)
  %558 = extractvalue %dx.types.ResRet.i32 %557, 0
  %559 = lshr i32 %558, 16
  %560 = call float @dx.op.legacyF16ToF32(i32 131, i32 %559)  ; LegacyF16ToF32(value)
  %561 = fmul fast float %560, 0x3F50624DE0000000
  %562 = add i32 %51, 88
  %563 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %562, i32 undef)  ; BufferLoad(srv,index,wot)
  %564 = extractvalue %dx.types.ResRet.i32 %563, 0
  %565 = lshr i32 %564, 16
  %566 = and i32 %565, 255
  %567 = lshr i32 %564, 24
  %568 = add i32 %51, 292
  %569 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %568, i32 undef)  ; BufferLoad(srv,index,wot)
  %570 = extractvalue %dx.types.ResRet.i32 %569, 0
  %571 = and i32 %570, 65535
  %572 = call float @dx.op.legacyF16ToF32(i32 131, i32 %571)  ; LegacyF16ToF32(value)
  %573 = lshr i32 %570, 16
  %574 = call float @dx.op.legacyF16ToF32(i32 131, i32 %573)  ; LegacyF16ToF32(value)
  %575 = add i32 %51, 32
  %576 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %575, i32 undef)  ; BufferLoad(srv,index,wot)
  %577 = extractvalue %dx.types.ResRet.i32 %576, 0
  %578 = lshr i32 %577, 22
  %579 = shl nuw nsw i32 %578, 5
  %580 = call float @dx.op.legacyF16ToF32(i32 131, i32 %579)  ; LegacyF16ToF32(value)
  %581 = shl i32 %577, 4
  %582 = and i32 %581, 32752
  %583 = call float @dx.op.legacyF16ToF32(i32 131, i32 %582)  ; LegacyF16ToF32(value)
  %584 = lshr i32 %577, 7
  %585 = and i32 %584, 32752
  %586 = call float @dx.op.legacyF16ToF32(i32 131, i32 %585)  ; LegacyF16ToF32(value)
  %587 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %588 = extractvalue %dx.types.CBufRet.f32 %587, 3
  %589 = fmul fast float %588, 1.000000e+03
  %590 = fmul fast float %348, %589
  %591 = call float @dx.op.unary.f32(i32 22, float %590)  ; Frc(value)
  %592 = fadd fast float %591, %338
  %593 = fmul fast float %349, %589
  %594 = call float @dx.op.unary.f32(i32 22, float %593)  ; Frc(value)
  %595 = fadd fast float %594, %340
  %596 = fmul fast float %561, %589
  %597 = call float @dx.op.unary.f32(i32 22, float %596)  ; Frc(value)
  %598 = fmul fast float %597, 0x401921FB60000000
  %599 = fadd fast float %598, %580
  %600 = call float @dx.op.unary.f32(i32 13, float %599)  ; Sin(value)
  %601 = call float @dx.op.unary.f32(i32 12, float %599)  ; Cos(value)
  %602 = fsub fast float -0.000000e+00, %600
  %603 = fadd fast float %554, -5.000000e-01
  %604 = fadd fast float %555, -5.000000e-01
  %605 = fmul fast float %572, %603
  %606 = fmul fast float %574, %604
  %607 = fadd fast float %605, 5.000000e-01
  %608 = fadd fast float %606, 5.000000e-01
  %609 = fmul fast float %583, %607
  %610 = fmul fast float %586, %608
  %611 = fmul fast float %601, %609
  %612 = call float @dx.op.tertiary.f32(i32 46, float %602, float %610, float %611)  ; FMad(a,b,c)
  %613 = fmul fast float %600, %609
  %614 = call float @dx.op.tertiary.f32(i32 46, float %601, float %610, float %613)  ; FMad(a,b,c)
  %615 = fadd fast float %592, %612
  %616 = fadd fast float %595, %614
  %617 = icmp ugt i32 %566, 1
  %618 = icmp ugt i32 %564, 33554431
  %619 = or i1 %618, %617
  br i1 %619, label %620, label %645

; <label>:620                                     ; preds = %547
  %621 = add i32 %51, 228
  %622 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %621, i32 undef)  ; BufferLoad(srv,index,wot)
  %623 = extractvalue %dx.types.ResRet.i32 %622, 0
  %624 = lshr i32 %623, 16
  %625 = call float @dx.op.legacyF16ToF32(i32 131, i32 %624)  ; LegacyF16ToF32(value)
  %626 = fmul fast float %588, %625
  %627 = call float @dx.op.unary.f32(i32 22, float %626)  ; Frc(value)
  %628 = mul nuw nsw i32 %566, %567
  %629 = uitofp i32 %628 to float
  %630 = fmul fast float %627, %629
  %631 = call float @dx.op.unary.f32(i32 27, float %630)  ; Round_ni(value)
  %632 = fptoui float %631 to i32
  %633 = urem i32 %632, %566
  %634 = udiv i32 %632, %567
  %635 = call float @dx.op.unary.f32(i32 22, float %615)  ; Frc(value)
  %636 = call float @dx.op.unary.f32(i32 22, float %616)  ; Frc(value)
  %637 = uitofp i32 %633 to float
  %638 = uitofp i32 %634 to float
  %639 = fadd fast float %635, %637
  %640 = fadd fast float %636, %638
  %641 = uitofp i32 %566 to float
  %642 = uitofp i32 %567 to float
  %643 = fdiv fast float %639, %641
  %644 = fdiv fast float %640, %642
  br label %645

; <label>:645                                     ; preds = %620, %547
  %646 = phi float [ %643, %620 ], [ %615, %547 ]
  %647 = phi float [ %644, %620 ], [ %616, %547 ]
  %648 = and i32 %541, 256
  %649 = icmp eq i32 %648, 0
  br i1 %649, label %696, label %650

; <label>:650                                     ; preds = %645
  %651 = add i32 %51, 488
  %652 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %651, i32 undef)  ; BufferLoad(srv,index,wot)
  %653 = extractvalue %dx.types.ResRet.i32 %652, 0
  %654 = add i32 %653, 0
  %655 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %654, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %656 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %655, %dx.types.Handle %108, float %646, float %647, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %657 = extractvalue %dx.types.ResRet.f32 %656, 0
  %658 = add i32 %51, 100
  %659 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %658, i32 undef)  ; BufferLoad(srv,index,wot)
  %660 = extractvalue %dx.types.ResRet.i32 %659, 0
  %661 = shl i32 %660, 4
  %662 = and i32 %661, 32752
  %663 = call float @dx.op.legacyF16ToF32(i32 131, i32 %662)  ; LegacyF16ToF32(value)
  %664 = lshr i32 %660, 7
  %665 = and i32 %664, 32752
  %666 = call float @dx.op.legacyF16ToF32(i32 131, i32 %665)  ; LegacyF16ToF32(value)
  %667 = fsub fast float 1.000000e+00, %508
  %668 = call float @dx.op.binary.f32(i32 35, float %667, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %669 = bitcast float %508 to i32
  %670 = sitofp i32 %669 to float
  %671 = fadd fast float %670, 0xC1CFBF8940000000
  %672 = fmul fast float %666, %671
  %673 = fadd fast float %672, 0x41CFBF8940000000
  %674 = fptosi float %673 to i32
  %675 = bitcast i32 %674 to float
  %676 = bitcast float %668 to i32
  %677 = sitofp i32 %676 to float
  %678 = fadd fast float %677, 0xC1CFBF8940000000
  %679 = fmul fast float %678, %666
  %680 = fadd fast float %679, 0x41CFBF8940000000
  %681 = fptosi float %680 to i32
  %682 = bitcast i32 %681 to float
  %683 = fmul fast float %675, %663
  %684 = fmul fast float %682, %663
  %685 = fsub fast float %668, %683
  %686 = fadd fast float %684, %668
  %687 = call float @dx.op.unary.f32(i32 7, float %685)  ; Saturate(value)
  %688 = call float @dx.op.unary.f32(i32 7, float %686)  ; Saturate(value)
  %689 = fsub fast float %657, %687
  %690 = fsub fast float %688, %687
  %691 = bitcast float %690 to i32
  %692 = sub nsw i32 2129859010, %691
  %693 = bitcast i32 %692 to float
  %694 = fmul fast float %693, %689
  %695 = call float @dx.op.unary.f32(i32 7, float %694)  ; Saturate(value)
  br label %696

; <label>:696                                     ; preds = %650, %645
  %697 = phi float [ %695, %650 ], [ %508, %645 ]
  %698 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %539, i32 undef)  ; BufferLoad(srv,index,wot)
  %699 = extractvalue %dx.types.ResRet.i32 %698, 0
  %700 = and i32 %699, 128
  %701 = icmp eq i32 %700, 0
  br i1 %701, label %718, label %702

; <label>:702                                     ; preds = %696
  %703 = add i32 %51, 472
  %704 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %703, i32 undef)  ; BufferLoad(srv,index,wot)
  %705 = extractvalue %dx.types.ResRet.i32 %704, 0
  %706 = add i32 %705, 0
  %707 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %706, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %708 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %707, %dx.types.Handle %108, float %646, float %647, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %709 = extractvalue %dx.types.ResRet.f32 %708, 0
  %710 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %539, i32 undef)  ; BufferLoad(srv,index,wot)
  %711 = extractvalue %dx.types.ResRet.i32 %710, 0
  %712 = and i32 %711, 524288
  %713 = icmp ne i32 %712, 0
  %714 = fcmp fast ogt float %709, 0x3FE0101020000000
  %715 = select i1 %714, float 1.000000e+00, float 0.000000e+00
  %716 = select i1 %713, float %715, float %709
  %717 = fmul fast float %716, %697
  br label %718

; <label>:718                                     ; preds = %702, %696
  %719 = phi float [ %717, %702 ], [ %697, %696 ]
  %720 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %539, i32 undef)  ; BufferLoad(srv,index,wot)
  %721 = extractvalue %dx.types.ResRet.i32 %720, 0
  %722 = and i32 %721, 16
  %723 = icmp eq i32 %722, 0
  br i1 %723, label %922, label %724

; <label>:724                                     ; preds = %718
  %725 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %562, i32 undef)  ; BufferLoad(srv,index,wot)
  %726 = extractvalue %dx.types.ResRet.i32 %725, 0
  %727 = add i32 %51, 424
  %728 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %727, i32 undef)  ; BufferLoad(srv,index,wot)
  %729 = extractvalue %dx.types.ResRet.i32 %728, 0
  %730 = add i32 %729, 0
  %731 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %730, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %732 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %731, %dx.types.Handle %107, float %646, float %647, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %733 = extractvalue %dx.types.ResRet.f32 %732, 0
  %734 = extractvalue %dx.types.ResRet.f32 %732, 1
  %735 = extractvalue %dx.types.ResRet.f32 %732, 2
  %736 = extractvalue %dx.types.ResRet.f32 %732, 3
  %737 = and i32 %726, 255
  %738 = uitofp i32 %737 to float
  %739 = lshr i32 %726, 8
  %740 = and i32 %739, 255
  %741 = uitofp i32 %740 to float
  %742 = fmul fast float %736, %738
  %743 = fadd fast float %742, %741
  %744 = fmul fast float %743, 0x3F70101000000000
  %745 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %539, i32 undef)  ; BufferLoad(srv,index,wot)
  %746 = extractvalue %dx.types.ResRet.i32 %745, 0
  %747 = and i32 %746, 512
  %748 = icmp eq i32 %747, 0
  br i1 %748, label %757, label %749

; <label>:749                                     ; preds = %724
  %750 = add i32 %51, 508
  %751 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %750, i32 undef)  ; BufferLoad(srv,index,wot)
  %752 = extractvalue %dx.types.ResRet.i32 %751, 0
  %753 = add i32 %752, 0
  %754 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %753, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %755 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %754, %dx.types.Handle %108, float %646, float %647, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %756 = extractvalue %dx.types.ResRet.f32 %755, 0
  br label %757

; <label>:757                                     ; preds = %749, %724
  %758 = phi float [ %756, %749 ], [ 1.000000e+00, %724 ]
  %759 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %539, i32 undef)  ; BufferLoad(srv,index,wot)
  %760 = extractvalue %dx.types.ResRet.i32 %759, 0
  %761 = and i32 %760, 33554432
  %762 = icmp eq i32 %761, 0
  br i1 %762, label %869, label %763

; <label>:763                                     ; preds = %757
  %764 = add i32 %51, 224
  %765 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %764, i32 undef)  ; BufferLoad(srv,index,wot)
  %766 = extractvalue %dx.types.ResRet.i32 %765, 0
  %767 = and i32 %766, 65535
  %768 = call float @dx.op.legacyF16ToF32(i32 131, i32 %767)  ; LegacyF16ToF32(value)
  %769 = lshr i32 %766, 16
  %770 = call float @dx.op.legacyF16ToF32(i32 131, i32 %769)  ; LegacyF16ToF32(value)
  %771 = add i32 %51, 228
  %772 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %771, i32 undef)  ; BufferLoad(srv,index,wot)
  %773 = extractvalue %dx.types.ResRet.i32 %772, 0
  %774 = and i32 %773, 65535
  %775 = call float @dx.op.legacyF16ToF32(i32 131, i32 %774)  ; LegacyF16ToF32(value)
  %776 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %320, i32 undef)  ; BufferLoad(srv,index,wot)
  %777 = extractvalue %dx.types.ResRet.i32 %776, 0
  %778 = lshr i32 %777, 24
  %779 = uitofp i32 %778 to float
  %780 = fmul fast float %779, 0x3F70101020000000
  %781 = and i32 %777, 255
  %782 = uitofp i32 %781 to float
  %783 = fmul fast float %782, 0x3F70101020000000
  %784 = lshr i32 %777, 8
  %785 = and i32 %784, 255
  %786 = uitofp i32 %785 to float
  %787 = fmul fast float %786, 0x3F70101020000000
  %788 = lshr i32 %777, 16
  %789 = and i32 %788, 255
  %790 = uitofp i32 %789 to float
  %791 = fmul fast float %790, 0x3F70101020000000
  %792 = add i32 %51, 220
  %793 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %792, i32 undef)  ; BufferLoad(srv,index,wot)
  %794 = extractvalue %dx.types.ResRet.i32 %793, 0
  %795 = lshr i32 %794, 24
  %796 = uitofp i32 %795 to float
  %797 = fmul fast float %796, 0x3F70101020000000
  %798 = and i32 %794, 255
  %799 = uitofp i32 %798 to float
  %800 = fmul fast float %799, 0x3F70101020000000
  %801 = lshr i32 %794, 8
  %802 = and i32 %801, 255
  %803 = uitofp i32 %802 to float
  %804 = fmul fast float %803, 0x3F70101020000000
  %805 = lshr i32 %794, 16
  %806 = and i32 %805, 255
  %807 = uitofp i32 %806 to float
  %808 = fmul fast float %807, 0x3F70101020000000
  %809 = bitcast float %733 to i32
  %810 = ashr i32 %809, 1
  %811 = sub nsw i32 1597463174, %810
  %812 = bitcast i32 %811 to float
  %813 = fmul fast float %733, 5.000000e-01
  %814 = fmul fast float %812, %812
  %815 = fmul fast float %814, %813
  %816 = fsub fast float 1.500000e+00, %815
  %817 = fmul fast float %812, %733
  %818 = fmul fast float %817, %816
  %819 = bitcast float %734 to i32
  %820 = ashr i32 %819, 1
  %821 = sub nsw i32 1597463174, %820
  %822 = bitcast i32 %821 to float
  %823 = fmul fast float %734, 5.000000e-01
  %824 = fmul fast float %822, %822
  %825 = fmul fast float %824, %823
  %826 = fsub fast float 1.500000e+00, %825
  %827 = fmul fast float %822, %734
  %828 = fmul fast float %827, %826
  %829 = bitcast float %735 to i32
  %830 = ashr i32 %829, 1
  %831 = sub nsw i32 1597463174, %830
  %832 = bitcast i32 %831 to float
  %833 = fmul fast float %735, 5.000000e-01
  %834 = fmul fast float %832, %832
  %835 = fmul fast float %834, %833
  %836 = fsub fast float 1.500000e+00, %835
  %837 = fmul fast float %832, %735
  %838 = fmul fast float %837, %836
  %839 = fsub fast float %818, %800
  %840 = fsub fast float %828, %804
  %841 = fsub fast float %838, %808
  %842 = fmul fast float %839, %768
  %843 = fmul fast float %840, %770
  %844 = fmul fast float %841, %775
  %845 = fadd fast float %842, %783
  %846 = fadd fast float %843, %787
  %847 = fadd fast float %844, %791
  %848 = call float @dx.op.unary.f32(i32 7, float %845)  ; Saturate(value)
  %849 = call float @dx.op.unary.f32(i32 7, float %846)  ; Saturate(value)
  %850 = call float @dx.op.unary.f32(i32 7, float %847)  ; Saturate(value)
  %851 = fmul fast float %848, %848
  %852 = fmul fast float %849, %849
  %853 = fmul fast float %850, %850
  %854 = fsub fast float %851, %733
  %855 = fsub fast float %852, %734
  %856 = fsub fast float %853, %735
  %857 = fmul fast float %854, %758
  %858 = fmul fast float %855, %758
  %859 = fmul fast float %856, %758
  %860 = fadd fast float %857, %733
  %861 = fadd fast float %858, %734
  %862 = fadd fast float %859, %735
  %863 = fadd fast float %780, %744
  %864 = fsub fast float %863, %797
  %865 = call float @dx.op.unary.f32(i32 7, float %864)  ; Saturate(value)
  %866 = fsub fast float %865, %744
  %867 = fmul fast float %866, %758
  %868 = fadd fast float %867, %744
  br label %922

; <label>:869                                     ; preds = %757
  %870 = and i32 %760, 134217728
  %871 = icmp eq i32 %870, 0
  br i1 %871, label %906, label %872

; <label>:872                                     ; preds = %869
  %873 = call float @dx.op.unary.f32(i32 24, float %325)  ; Sqrt(value)
  %874 = call float @dx.op.unary.f32(i32 24, float %329)  ; Sqrt(value)
  %875 = call float @dx.op.unary.f32(i32 24, float %333)  ; Sqrt(value)
  %876 = fadd fast float %873, -5.000000e-01
  %877 = fadd fast float %874, -5.000000e-01
  %878 = fadd fast float %875, -5.000000e-01
  %879 = fmul fast float %876, %758
  %880 = fmul fast float %877, %758
  %881 = fmul fast float %878, %758
  %882 = fadd fast float %879, 5.000000e-01
  %883 = fadd fast float %880, 5.000000e-01
  %884 = fadd fast float %881, 5.000000e-01
  %885 = call float @dx.op.unary.f32(i32 24, float %733)  ; Sqrt(value)
  %886 = call float @dx.op.unary.f32(i32 24, float %734)  ; Sqrt(value)
  %887 = call float @dx.op.unary.f32(i32 24, float %735)  ; Sqrt(value)
  %888 = fmul fast float %882, 2.000000e+00
  %889 = fsub fast float 1.000000e+00, %888
  %890 = fmul fast float %889, %885
  %891 = fadd fast float %890, %888
  %892 = fmul fast float %891, %885
  %893 = fmul fast float %883, 2.000000e+00
  %894 = fsub fast float 1.000000e+00, %893
  %895 = fmul fast float %894, %886
  %896 = fadd fast float %895, %893
  %897 = fmul fast float %896, %886
  %898 = fmul fast float %884, 2.000000e+00
  %899 = fsub fast float 1.000000e+00, %898
  %900 = fmul fast float %899, %887
  %901 = fadd fast float %900, %898
  %902 = fmul fast float %901, %887
  %903 = fmul fast float %892, %892
  %904 = fmul fast float %897, %897
  %905 = fmul fast float %902, %902
  br label %922

; <label>:906                                     ; preds = %869
  %907 = fmul fast float %325, %325
  %908 = fmul fast float %329, %329
  %909 = fmul fast float %333, %333
  %910 = fadd fast float %907, -1.000000e+00
  %911 = fadd fast float %908, -1.000000e+00
  %912 = fadd fast float %909, -1.000000e+00
  %913 = fmul fast float %758, %910
  %914 = fmul fast float %758, %911
  %915 = fmul fast float %758, %912
  %916 = fadd fast float %913, 1.000000e+00
  %917 = fadd fast float %914, 1.000000e+00
  %918 = fadd fast float %915, 1.000000e+00
  %919 = fmul fast float %916, %733
  %920 = fmul fast float %917, %734
  %921 = fmul fast float %918, %735
  br label %922

; <label>:922                                     ; preds = %906, %872, %763, %718
  %923 = phi float [ %868, %763 ], [ %744, %872 ], [ %744, %906 ], [ 0x3FA23C0BE0000000, %718 ]
  %924 = phi float [ %860, %763 ], [ %903, %872 ], [ %919, %906 ], [ 1.000000e+00, %718 ]
  %925 = phi float [ %861, %763 ], [ %904, %872 ], [ %920, %906 ], [ 1.000000e+00, %718 ]
  %926 = phi float [ %862, %763 ], [ %905, %872 ], [ %921, %906 ], [ 1.000000e+00, %718 ]
  %927 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %928 = extractvalue %dx.types.CBufRet.i32 %927, 1
  %929 = and i32 %928, 1
  %930 = icmp ne i32 %929, 0
  %931 = add i32 %51, 356
  %932 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %931, i32 undef)  ; BufferLoad(srv,index,wot)
  %933 = extractvalue %dx.types.ResRet.i32 %932, 0
  %934 = and i32 %933, 32
  %935 = icmp ne i32 %934, 0
  %936 = and i1 %930, %935
  %937 = select i1 %936, float 1.000000e+00, float %924
  %938 = select i1 %936, float 0x3FD3333340000000, float %925
  %939 = select i1 %936, float 0x3FD3333340000000, float %926
  %940 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %539, i32 undef)  ; BufferLoad(srv,index,wot)
  %941 = extractvalue %dx.types.ResRet.i32 %940, 0
  %942 = and i32 %941, 32
  %943 = icmp eq i32 %942, 0
  br i1 %943, label %1016, label %944

; <label>:944                                     ; preds = %922
  %945 = add i32 %51, 92
  %946 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %945, i32 undef)  ; BufferLoad(srv,index,wot)
  %947 = extractvalue %dx.types.ResRet.i32 %946, 0
  %948 = add i32 %51, 440
  %949 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %948, i32 undef)  ; BufferLoad(srv,index,wot)
  %950 = extractvalue %dx.types.ResRet.i32 %949, 0
  %951 = add i32 %950, 0
  %952 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %951, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %953 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %952, %dx.types.Handle %107, float %646, float %647, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %954 = extractvalue %dx.types.ResRet.f32 %953, 0
  %955 = extractvalue %dx.types.ResRet.f32 %953, 1
  %956 = extractvalue %dx.types.ResRet.f32 %953, 2
  %957 = extractvalue %dx.types.ResRet.f32 %953, 3
  %958 = and i32 %947, 255
  %959 = uitofp i32 %958 to float
  %960 = lshr i32 %947, 8
  %961 = and i32 %960, 255
  %962 = uitofp i32 %961 to float
  %963 = lshr i32 %947, 16
  %964 = and i32 %963, 255
  %965 = uitofp i32 %964 to float
  %966 = fmul fast float %965, 0x3F70101000000000
  %967 = fmul fast float %954, %959
  %968 = fadd fast float %967, %962
  %969 = fmul fast float %968, 0x3F70101000000000
  %970 = fadd fast float %955, -5.000000e-01
  %971 = fadd fast float %957, -5.000000e-01
  %972 = fmul fast float %970, %966
  %973 = fmul fast float %971, %966
  %974 = fadd fast float %972, 5.000000e-01
  %975 = fadd fast float %973, 5.000000e-01
  %976 = fmul fast float %974, 2.000000e+00
  %977 = fadd fast float %976, -1.000000e+00
  %978 = fmul fast float %975, 2.000000e+00
  %979 = fadd fast float %978, -1.000000e+00
  %980 = fadd fast float %977, %979
  %981 = fmul fast float %980, 5.000000e-01
  %982 = fsub fast float %977, %979
  %983 = fmul fast float %982, 5.000000e-01
  %984 = call float @dx.op.unary.f32(i32 6, float %981)  ; FAbs(value)
  %985 = fsub fast float 1.000000e+00, %984
  %986 = call float @dx.op.unary.f32(i32 6, float %983)  ; FAbs(value)
  %987 = fsub fast float %985, %986
  %988 = call float @dx.op.dot3.f32(i32 55, float %981, float %983, float %987, float %981, float %983, float %987)  ; Dot3(ax,ay,az,bx,by,bz)
  %989 = call float @dx.op.unary.f32(i32 25, float %988)  ; Rsqrt(value)
  %990 = fmul fast float %981, %989
  %991 = fmul fast float %983, %989
  %992 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %539, i32 undef)  ; BufferLoad(srv,index,wot)
  %993 = extractvalue %dx.types.ResRet.i32 %992, 0
  %994 = and i32 %993, 67108864
  %995 = icmp eq i32 %994, 0
  br i1 %995, label %1012, label %996

; <label>:996                                     ; preds = %944
  %997 = add i32 %51, 280
  %998 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %997, i32 undef)  ; BufferLoad(srv,index,wot)
  %999 = extractvalue %dx.types.ResRet.i32 %998, 0
  %1000 = and i32 %999, 65535
  %1001 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1000)  ; LegacyF16ToF32(value)
  %1002 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %556, i32 undef)  ; BufferLoad(srv,index,wot)
  %1003 = extractvalue %dx.types.ResRet.i32 %1002, 0
  %1004 = and i32 %1003, 65535
  %1005 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1004)  ; LegacyF16ToF32(value)
  %1006 = lshr i32 %999, 16
  %1007 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1006)  ; LegacyF16ToF32(value)
  %1008 = fsub fast float %969, %1007
  %1009 = fmul fast float %1008, %1001
  %1010 = fadd fast float %1009, %1005
  %1011 = call float @dx.op.unary.f32(i32 7, float %1010)  ; Saturate(value)
  br label %1012

; <label>:1012                                    ; preds = %996, %944
  %1013 = phi float [ %1011, %996 ], [ %969, %944 ]
  %1014 = call float @dx.op.dot2.f32(i32 54, float %990, float %991, float %550, float %551)  ; Dot2(ax,ay,bx,by)
  %1015 = call float @dx.op.dot2.f32(i32 54, float %990, float %991, float %552, float %553)  ; Dot2(ax,ay,bx,by)
  br label %1016

; <label>:1016                                    ; preds = %1012, %922
  %1017 = phi float [ %1013, %1012 ], [ 0x3FD6666660000000, %922 ]
  %1018 = phi float [ %1014, %1012 ], [ 0.000000e+00, %922 ]
  %1019 = phi float [ %1015, %1012 ], [ 0.000000e+00, %922 ]
  %1020 = phi float [ %956, %1012 ], [ 1.000000e+00, %922 ]
  %1021 = add i32 %51, 160
  %1022 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1021, i32 undef)  ; BufferLoad(srv,index,wot)
  %1023 = extractvalue %dx.types.ResRet.i32 %1022, 0
  %1024 = lshr i32 %1023, 22
  %1025 = shl nuw nsw i32 %1024, 5
  %1026 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1025)  ; LegacyF16ToF32(value)
  %1027 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %539, i32 undef)  ; BufferLoad(srv,index,wot)
  %1028 = extractvalue %dx.types.ResRet.i32 %1027, 0
  %1029 = and i32 %1028, 64
  %1030 = icmp eq i32 %1029, 0
  br i1 %1030, label %1064, label %1031

; <label>:1031                                    ; preds = %1016
  %1032 = add i32 %51, 456
  %1033 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1032, i32 undef)  ; BufferLoad(srv,index,wot)
  %1034 = extractvalue %dx.types.ResRet.i32 %1033, 0
  %1035 = add i32 %1034, 0
  %1036 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1035, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1037 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %539, i32 undef)  ; BufferLoad(srv,index,wot)
  %1038 = extractvalue %dx.types.ResRet.i32 %1037, 0
  %1039 = and i32 %1038, 131072
  %1040 = icmp eq i32 %1039, 0
  %1041 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1036, %dx.types.Handle %107, float %646, float %647, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1042 = extractvalue %dx.types.ResRet.f32 %1041, 0
  %1043 = extractvalue %dx.types.ResRet.f32 %1041, 1
  %1044 = extractvalue %dx.types.ResRet.f32 %1041, 2
  %1045 = fmul fast float %1042, %313
  %1046 = fmul fast float %1043, %316
  %1047 = fmul fast float %1044, %319
  br i1 %1040, label %1054, label %1048

; <label>:1048                                    ; preds = %1031
  %1049 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1050 = extractvalue %dx.types.CBufRet.f32 %1049, 0
  %1051 = fmul fast float %1050, %1045
  %1052 = fmul fast float %1050, %1046
  %1053 = fmul fast float %1050, %1047
  br label %1054

; <label>:1054                                    ; preds = %1048, %1031
  %1055 = phi float [ %1051, %1048 ], [ %1045, %1031 ]
  %1056 = phi float [ %1052, %1048 ], [ %1046, %1031 ]
  %1057 = phi float [ %1053, %1048 ], [ %1047, %1031 ]
  %1058 = fmul fast float %1055, %1026
  %1059 = select i1 %296, float %1058, float %1055
  %1060 = call float @dx.op.dot3.f32(i32 55, float %1059, float %1056, float %1057, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1061 = select i1 %296, float 0.000000e+00, float %1055
  %1062 = select i1 %296, float %1060, float %1056
  %1063 = select i1 %296, float 0.000000e+00, float %1057
  br label %1064

; <label>:1064                                    ; preds = %1054, %1016
  %1065 = phi float [ %1061, %1054 ], [ 0.000000e+00, %1016 ]
  %1066 = phi float [ %1062, %1054 ], [ 0.000000e+00, %1016 ]
  %1067 = phi float [ %1063, %1054 ], [ 0.000000e+00, %1016 ]
  %1068 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %539, i32 undef)  ; BufferLoad(srv,index,wot)
  %1069 = extractvalue %dx.types.ResRet.i32 %1068, 0
  %1070 = and i32 %1069, 10240
  %1071 = icmp eq i32 %1070, 0
  br i1 %1071, label %1116, label %1072

; <label>:1072                                    ; preds = %1064
  %1073 = add i32 %51, 524
  %1074 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1073, i32 undef)  ; BufferLoad(srv,index,wot)
  %1075 = extractvalue %dx.types.ResRet.i32 %1074, 0
  %1076 = add i32 %1075, 0
  %1077 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1076, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1078 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1077, %dx.types.Handle %108, float %646, float %647, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1079 = extractvalue %dx.types.ResRet.f32 %1078, 1
  %1080 = extractvalue %dx.types.ResRet.f32 %1078, 3
  %1081 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %539, i32 undef)  ; BufferLoad(srv,index,wot)
  %1082 = extractvalue %dx.types.ResRet.i32 %1081, 0
  %1083 = and i32 %1082, 1048576
  %1084 = icmp ne i32 %1083, 0
  %1085 = and i32 %1082, 8192
  %1086 = icmp eq i32 %1085, 0
  br i1 %1086, label %1102, label %1087

; <label>:1087                                    ; preds = %1072
  %1088 = extractvalue %dx.types.ResRet.f32 %1078, 2
  %1089 = select i1 %1084, float %1088, float %1079
  %1090 = extractvalue %dx.types.ResRet.f32 %1078, 0
  %1091 = select i1 %1084, float %1090, float %1079
  %1092 = add i32 %51, 96
  %1093 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1092, i32 undef)  ; BufferLoad(srv,index,wot)
  %1094 = extractvalue %dx.types.ResRet.i32 %1093, 0
  %1095 = lshr i32 %1094, 16
  %1096 = and i32 %1095, 255
  %1097 = uitofp i32 %1096 to float
  %1098 = fmul fast float %1097, 0x3F80101020000000
  %1099 = fmul fast float %1098, %1091
  %1100 = fmul fast float %1098, %1079
  %1101 = fmul fast float %1098, %1089
  br label %1102

; <label>:1102                                    ; preds = %1087, %1072
  %1103 = phi float [ %1099, %1087 ], [ 0.000000e+00, %1072 ]
  %1104 = phi float [ %1100, %1087 ], [ 0.000000e+00, %1072 ]
  %1105 = phi float [ %1101, %1087 ], [ 0.000000e+00, %1072 ]
  %1106 = and i32 %1082, 2048
  %1107 = icmp eq i32 %1106, 0
  br i1 %1107, label %1116, label %1108

; <label>:1108                                    ; preds = %1102
  %1109 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1021, i32 undef)  ; BufferLoad(srv,index,wot)
  %1110 = extractvalue %dx.types.ResRet.i32 %1109, 0
  %1111 = shl i32 %1110, 4
  %1112 = and i32 %1111, 32752
  %1113 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1112)  ; LegacyF16ToF32(value)
  %1114 = fmul fast float %1113, %1080
  %1115 = call float @dx.op.binary.f32(i32 35, float %1114, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1116

; <label>:1116                                    ; preds = %1108, %1102, %1064
  %1117 = phi float [ %1103, %1108 ], [ %1103, %1102 ], [ 0.000000e+00, %1064 ]
  %1118 = phi float [ %1104, %1108 ], [ %1104, %1102 ], [ 0.000000e+00, %1064 ]
  %1119 = phi float [ %1105, %1108 ], [ %1105, %1102 ], [ 0.000000e+00, %1064 ]
  %1120 = phi float [ %1115, %1108 ], [ 0x3F70101020000000, %1102 ], [ 0x3F70101020000000, %1064 ]
  %1121 = add i32 %51, 96
  %1122 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1121, i32 undef)  ; BufferLoad(srv,index,wot)
  %1123 = extractvalue %dx.types.ResRet.i32 %1122, 0
  %1124 = and i32 %1123, 255
  %1125 = uitofp i32 %1124 to float
  %1126 = lshr i32 %1123, 8
  %1127 = and i32 %1126, 255
  %1128 = uitofp i32 %1127 to float
  %1129 = call float @dx.op.dot3.f32(i32 55, float %937, float %938, float %939, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1130 = fmul fast float %1128, %1129
  %1131 = fadd fast float %1130, %1125
  %1132 = fmul fast float %1131, 0x3F70101020000000
  %1133 = call float @dx.op.unary.f32(i32 7, float %1132)  ; Saturate(value)
  br label %1134

; <label>:1134                                    ; preds = %1116, %532
  %1135 = phi float [ 0.000000e+00, %532 ], [ %1018, %1116 ]
  %1136 = phi float [ 0.000000e+00, %532 ], [ %1019, %1116 ]
  %1137 = phi float [ 0.000000e+00, %532 ], [ %937, %1116 ]
  %1138 = phi float [ 0.000000e+00, %532 ], [ %938, %1116 ]
  %1139 = phi float [ 0.000000e+00, %532 ], [ %939, %1116 ]
  %1140 = phi float [ 0.000000e+00, %532 ], [ %1065, %1116 ]
  %1141 = phi float [ 0.000000e+00, %532 ], [ %1066, %1116 ]
  %1142 = phi float [ 0.000000e+00, %532 ], [ %1067, %1116 ]
  %1143 = phi float [ 0.000000e+00, %532 ], [ %1117, %1116 ]
  %1144 = phi float [ 0.000000e+00, %532 ], [ %1118, %1116 ]
  %1145 = phi float [ 0.000000e+00, %532 ], [ %1119, %1116 ]
  %1146 = phi float [ 0.000000e+00, %532 ], [ %923, %1116 ]
  %1147 = phi float [ 0.000000e+00, %532 ], [ %719, %1116 ]
  %1148 = phi float [ 0.000000e+00, %532 ], [ %1017, %1116 ]
  %1149 = phi float [ 0.000000e+00, %532 ], [ %1020, %1116 ]
  %1150 = phi float [ 0.000000e+00, %532 ], [ %1120, %1116 ]
  %1151 = phi float [ 0.000000e+00, %532 ], [ %1133, %1116 ]
  br i1 %480, label %1965, label %1152

; <label>:1152                                    ; preds = %1134
  %1153 = icmp ult i32 %538, 2
  %1154 = add i32 %51, 40
  %1155 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1154, i32 undef)  ; BufferLoad(srv,index,wot)
  %1156 = extractvalue %dx.types.ResRet.i32 %1155, 0
  %1157 = add i32 %51, 44
  %1158 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1157, i32 undef)  ; BufferLoad(srv,index,wot)
  %1159 = extractvalue %dx.types.ResRet.i32 %1158, 0
  %1160 = or i32 %1159, %1156
  %1161 = icmp eq i32 %1160, 0
  br i1 %1161, label %1965, label %1162

; <label>:1162                                    ; preds = %1152
  %1163 = and i32 %1156, 262144
  %1164 = icmp ne i32 %1163, 0
  %1165 = select i1 %1164, float %57, float 1.000000e+00
  %1166 = select i1 %1164, float %58, float 0.000000e+00
  %1167 = select i1 %1164, float %59, float 0.000000e+00
  %1168 = select i1 %1164, float %60, float 1.000000e+00
  %1169 = select i1 %1164, float %61, float %89
  %1170 = select i1 %1164, float %62, float %90
  %1171 = add i32 %51, 300
  %1172 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1171, i32 undef)  ; BufferLoad(srv,index,wot)
  %1173 = extractvalue %dx.types.ResRet.i32 %1172, 0
  %1174 = lshr i32 %1173, 16
  %1175 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1174)  ; LegacyF16ToF32(value)
  %1176 = fmul fast float %1175, 0x3F50624DE0000000
  %1177 = add i32 %51, 104
  %1178 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1177, i32 undef)  ; BufferLoad(srv,index,wot)
  %1179 = extractvalue %dx.types.ResRet.i32 %1178, 0
  %1180 = lshr i32 %1179, 16
  %1181 = and i32 %1180, 255
  %1182 = lshr i32 %1179, 24
  %1183 = add i32 %51, 308
  %1184 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1183, i32 undef)  ; BufferLoad(srv,index,wot)
  %1185 = extractvalue %dx.types.ResRet.i32 %1184, 0
  %1186 = and i32 %1185, 65535
  %1187 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1186)  ; LegacyF16ToF32(value)
  %1188 = lshr i32 %1185, 16
  %1189 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1188)  ; LegacyF16ToF32(value)
  %1190 = add i32 %51, 48
  %1191 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1190, i32 undef)  ; BufferLoad(srv,index,wot)
  %1192 = extractvalue %dx.types.ResRet.i32 %1191, 0
  %1193 = lshr i32 %1192, 22
  %1194 = shl nuw nsw i32 %1193, 5
  %1195 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1194)  ; LegacyF16ToF32(value)
  %1196 = shl i32 %1192, 4
  %1197 = and i32 %1196, 32752
  %1198 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1197)  ; LegacyF16ToF32(value)
  %1199 = lshr i32 %1192, 7
  %1200 = and i32 %1199, 32752
  %1201 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1200)  ; LegacyF16ToF32(value)
  %1202 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1203 = extractvalue %dx.types.CBufRet.f32 %1202, 3
  %1204 = fmul fast float %1203, 1.000000e+03
  %1205 = fmul fast float %390, %1204
  %1206 = call float @dx.op.unary.f32(i32 22, float %1205)  ; Frc(value)
  %1207 = fadd fast float %1206, %380
  %1208 = fmul fast float %391, %1204
  %1209 = call float @dx.op.unary.f32(i32 22, float %1208)  ; Frc(value)
  %1210 = fadd fast float %1209, %382
  %1211 = fmul fast float %1176, %1204
  %1212 = call float @dx.op.unary.f32(i32 22, float %1211)  ; Frc(value)
  %1213 = fmul fast float %1212, 0x401921FB60000000
  %1214 = fadd fast float %1213, %1195
  %1215 = call float @dx.op.unary.f32(i32 13, float %1214)  ; Sin(value)
  %1216 = call float @dx.op.unary.f32(i32 12, float %1214)  ; Cos(value)
  %1217 = fsub fast float -0.000000e+00, %1215
  %1218 = fadd fast float %1169, -5.000000e-01
  %1219 = fadd fast float %1170, -5.000000e-01
  %1220 = fmul fast float %1187, %1218
  %1221 = fmul fast float %1189, %1219
  %1222 = fadd fast float %1220, 5.000000e-01
  %1223 = fadd fast float %1221, 5.000000e-01
  %1224 = fmul fast float %1198, %1222
  %1225 = fmul fast float %1201, %1223
  %1226 = fmul fast float %1216, %1224
  %1227 = call float @dx.op.tertiary.f32(i32 46, float %1217, float %1225, float %1226)  ; FMad(a,b,c)
  %1228 = fmul fast float %1215, %1224
  %1229 = call float @dx.op.tertiary.f32(i32 46, float %1216, float %1225, float %1228)  ; FMad(a,b,c)
  %1230 = fadd fast float %1207, %1227
  %1231 = fadd fast float %1210, %1229
  %1232 = icmp ugt i32 %1181, 1
  %1233 = icmp ugt i32 %1179, 33554431
  %1234 = or i1 %1233, %1232
  br i1 %1234, label %1235, label %1260

; <label>:1235                                    ; preds = %1162
  %1236 = add i32 %51, 244
  %1237 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1236, i32 undef)  ; BufferLoad(srv,index,wot)
  %1238 = extractvalue %dx.types.ResRet.i32 %1237, 0
  %1239 = lshr i32 %1238, 16
  %1240 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1239)  ; LegacyF16ToF32(value)
  %1241 = fmul fast float %1203, %1240
  %1242 = call float @dx.op.unary.f32(i32 22, float %1241)  ; Frc(value)
  %1243 = mul nuw nsw i32 %1181, %1182
  %1244 = uitofp i32 %1243 to float
  %1245 = fmul fast float %1242, %1244
  %1246 = call float @dx.op.unary.f32(i32 27, float %1245)  ; Round_ni(value)
  %1247 = fptoui float %1246 to i32
  %1248 = urem i32 %1247, %1181
  %1249 = udiv i32 %1247, %1182
  %1250 = call float @dx.op.unary.f32(i32 22, float %1230)  ; Frc(value)
  %1251 = call float @dx.op.unary.f32(i32 22, float %1231)  ; Frc(value)
  %1252 = uitofp i32 %1248 to float
  %1253 = uitofp i32 %1249 to float
  %1254 = fadd fast float %1250, %1252
  %1255 = fadd fast float %1251, %1253
  %1256 = uitofp i32 %1181 to float
  %1257 = uitofp i32 %1182 to float
  %1258 = fdiv fast float %1254, %1256
  %1259 = fdiv fast float %1255, %1257
  br label %1260

; <label>:1260                                    ; preds = %1235, %1162
  %1261 = phi float [ %1258, %1235 ], [ %1230, %1162 ]
  %1262 = phi float [ %1259, %1235 ], [ %1231, %1162 ]
  %1263 = and i32 %1156, 256
  %1264 = icmp eq i32 %1263, 0
  br i1 %1264, label %1311, label %1265

; <label>:1265                                    ; preds = %1260
  %1266 = add i32 %51, 492
  %1267 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1266, i32 undef)  ; BufferLoad(srv,index,wot)
  %1268 = extractvalue %dx.types.ResRet.i32 %1267, 0
  %1269 = add i32 %1268, 0
  %1270 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1269, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1271 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1270, %dx.types.Handle %108, float %1261, float %1262, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1272 = extractvalue %dx.types.ResRet.f32 %1271, 0
  %1273 = add i32 %51, 116
  %1274 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1273, i32 undef)  ; BufferLoad(srv,index,wot)
  %1275 = extractvalue %dx.types.ResRet.i32 %1274, 0
  %1276 = shl i32 %1275, 4
  %1277 = and i32 %1276, 32752
  %1278 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1277)  ; LegacyF16ToF32(value)
  %1279 = lshr i32 %1275, 7
  %1280 = and i32 %1279, 32752
  %1281 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1280)  ; LegacyF16ToF32(value)
  %1282 = fsub fast float 1.000000e+00, %535
  %1283 = call float @dx.op.binary.f32(i32 35, float %1282, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1284 = bitcast float %535 to i32
  %1285 = sitofp i32 %1284 to float
  %1286 = fadd fast float %1285, 0xC1CFBF8940000000
  %1287 = fmul fast float %1281, %1286
  %1288 = fadd fast float %1287, 0x41CFBF8940000000
  %1289 = fptosi float %1288 to i32
  %1290 = bitcast i32 %1289 to float
  %1291 = bitcast float %1283 to i32
  %1292 = sitofp i32 %1291 to float
  %1293 = fadd fast float %1292, 0xC1CFBF8940000000
  %1294 = fmul fast float %1293, %1281
  %1295 = fadd fast float %1294, 0x41CFBF8940000000
  %1296 = fptosi float %1295 to i32
  %1297 = bitcast i32 %1296 to float
  %1298 = fmul fast float %1290, %1278
  %1299 = fmul fast float %1297, %1278
  %1300 = fsub fast float %1283, %1298
  %1301 = fadd fast float %1299, %1283
  %1302 = call float @dx.op.unary.f32(i32 7, float %1300)  ; Saturate(value)
  %1303 = call float @dx.op.unary.f32(i32 7, float %1301)  ; Saturate(value)
  %1304 = fsub fast float %1272, %1302
  %1305 = fsub fast float %1303, %1302
  %1306 = bitcast float %1305 to i32
  %1307 = sub nsw i32 2129859010, %1306
  %1308 = bitcast i32 %1307 to float
  %1309 = fmul fast float %1308, %1304
  %1310 = call float @dx.op.unary.f32(i32 7, float %1309)  ; Saturate(value)
  br label %1311

; <label>:1311                                    ; preds = %1265, %1260
  %1312 = phi float [ %1310, %1265 ], [ %535, %1260 ]
  %1313 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1154, i32 undef)  ; BufferLoad(srv,index,wot)
  %1314 = extractvalue %dx.types.ResRet.i32 %1313, 0
  %1315 = and i32 %1314, 128
  %1316 = icmp eq i32 %1315, 0
  br i1 %1316, label %1333, label %1317

; <label>:1317                                    ; preds = %1311
  %1318 = add i32 %51, 476
  %1319 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1318, i32 undef)  ; BufferLoad(srv,index,wot)
  %1320 = extractvalue %dx.types.ResRet.i32 %1319, 0
  %1321 = add i32 %1320, 0
  %1322 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1321, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1323 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1322, %dx.types.Handle %108, float %1261, float %1262, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1324 = extractvalue %dx.types.ResRet.f32 %1323, 0
  %1325 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1154, i32 undef)  ; BufferLoad(srv,index,wot)
  %1326 = extractvalue %dx.types.ResRet.i32 %1325, 0
  %1327 = and i32 %1326, 524288
  %1328 = icmp ne i32 %1327, 0
  %1329 = fcmp fast ogt float %1324, 0x3FE0101020000000
  %1330 = select i1 %1329, float 1.000000e+00, float 0.000000e+00
  %1331 = select i1 %1328, float %1330, float %1324
  %1332 = fmul fast float %1331, %1312
  br label %1333

; <label>:1333                                    ; preds = %1317, %1311
  %1334 = phi float [ %1332, %1317 ], [ %1312, %1311 ]
  %1335 = fcmp fast ult float %1334, 0x3F70101020000000
  br i1 %1335, label %1965, label %1336

; <label>:1336                                    ; preds = %1333
  %1337 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1154, i32 undef)  ; BufferLoad(srv,index,wot)
  %1338 = extractvalue %dx.types.ResRet.i32 %1337, 0
  %1339 = and i32 %1338, 16
  %1340 = icmp eq i32 %1339, 0
  br i1 %1340, label %1539, label %1341

; <label>:1341                                    ; preds = %1336
  %1342 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1177, i32 undef)  ; BufferLoad(srv,index,wot)
  %1343 = extractvalue %dx.types.ResRet.i32 %1342, 0
  %1344 = add i32 %51, 428
  %1345 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1344, i32 undef)  ; BufferLoad(srv,index,wot)
  %1346 = extractvalue %dx.types.ResRet.i32 %1345, 0
  %1347 = add i32 %1346, 0
  %1348 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1347, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1349 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1348, %dx.types.Handle %107, float %1261, float %1262, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1350 = extractvalue %dx.types.ResRet.f32 %1349, 0
  %1351 = extractvalue %dx.types.ResRet.f32 %1349, 1
  %1352 = extractvalue %dx.types.ResRet.f32 %1349, 2
  %1353 = extractvalue %dx.types.ResRet.f32 %1349, 3
  %1354 = and i32 %1343, 255
  %1355 = uitofp i32 %1354 to float
  %1356 = lshr i32 %1343, 8
  %1357 = and i32 %1356, 255
  %1358 = uitofp i32 %1357 to float
  %1359 = fmul fast float %1353, %1355
  %1360 = fadd fast float %1359, %1358
  %1361 = fmul fast float %1360, 0x3F70101000000000
  %1362 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1154, i32 undef)  ; BufferLoad(srv,index,wot)
  %1363 = extractvalue %dx.types.ResRet.i32 %1362, 0
  %1364 = and i32 %1363, 512
  %1365 = icmp eq i32 %1364, 0
  br i1 %1365, label %1374, label %1366

; <label>:1366                                    ; preds = %1341
  %1367 = add i32 %51, 512
  %1368 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1367, i32 undef)  ; BufferLoad(srv,index,wot)
  %1369 = extractvalue %dx.types.ResRet.i32 %1368, 0
  %1370 = add i32 %1369, 0
  %1371 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1370, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1372 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1371, %dx.types.Handle %108, float %1261, float %1262, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1373 = extractvalue %dx.types.ResRet.f32 %1372, 0
  br label %1374

; <label>:1374                                    ; preds = %1366, %1341
  %1375 = phi float [ %1373, %1366 ], [ 1.000000e+00, %1341 ]
  %1376 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1154, i32 undef)  ; BufferLoad(srv,index,wot)
  %1377 = extractvalue %dx.types.ResRet.i32 %1376, 0
  %1378 = and i32 %1377, 33554432
  %1379 = icmp eq i32 %1378, 0
  br i1 %1379, label %1486, label %1380

; <label>:1380                                    ; preds = %1374
  %1381 = add i32 %51, 240
  %1382 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1381, i32 undef)  ; BufferLoad(srv,index,wot)
  %1383 = extractvalue %dx.types.ResRet.i32 %1382, 0
  %1384 = and i32 %1383, 65535
  %1385 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1384)  ; LegacyF16ToF32(value)
  %1386 = lshr i32 %1383, 16
  %1387 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1386)  ; LegacyF16ToF32(value)
  %1388 = add i32 %51, 244
  %1389 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1388, i32 undef)  ; BufferLoad(srv,index,wot)
  %1390 = extractvalue %dx.types.ResRet.i32 %1389, 0
  %1391 = and i32 %1390, 65535
  %1392 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1391)  ; LegacyF16ToF32(value)
  %1393 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %362, i32 undef)  ; BufferLoad(srv,index,wot)
  %1394 = extractvalue %dx.types.ResRet.i32 %1393, 0
  %1395 = lshr i32 %1394, 24
  %1396 = uitofp i32 %1395 to float
  %1397 = fmul fast float %1396, 0x3F70101020000000
  %1398 = and i32 %1394, 255
  %1399 = uitofp i32 %1398 to float
  %1400 = fmul fast float %1399, 0x3F70101020000000
  %1401 = lshr i32 %1394, 8
  %1402 = and i32 %1401, 255
  %1403 = uitofp i32 %1402 to float
  %1404 = fmul fast float %1403, 0x3F70101020000000
  %1405 = lshr i32 %1394, 16
  %1406 = and i32 %1405, 255
  %1407 = uitofp i32 %1406 to float
  %1408 = fmul fast float %1407, 0x3F70101020000000
  %1409 = add i32 %51, 236
  %1410 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1409, i32 undef)  ; BufferLoad(srv,index,wot)
  %1411 = extractvalue %dx.types.ResRet.i32 %1410, 0
  %1412 = lshr i32 %1411, 24
  %1413 = uitofp i32 %1412 to float
  %1414 = fmul fast float %1413, 0x3F70101020000000
  %1415 = and i32 %1411, 255
  %1416 = uitofp i32 %1415 to float
  %1417 = fmul fast float %1416, 0x3F70101020000000
  %1418 = lshr i32 %1411, 8
  %1419 = and i32 %1418, 255
  %1420 = uitofp i32 %1419 to float
  %1421 = fmul fast float %1420, 0x3F70101020000000
  %1422 = lshr i32 %1411, 16
  %1423 = and i32 %1422, 255
  %1424 = uitofp i32 %1423 to float
  %1425 = fmul fast float %1424, 0x3F70101020000000
  %1426 = bitcast float %1350 to i32
  %1427 = ashr i32 %1426, 1
  %1428 = sub nsw i32 1597463174, %1427
  %1429 = bitcast i32 %1428 to float
  %1430 = fmul fast float %1350, 5.000000e-01
  %1431 = fmul fast float %1429, %1429
  %1432 = fmul fast float %1431, %1430
  %1433 = fsub fast float 1.500000e+00, %1432
  %1434 = fmul fast float %1429, %1350
  %1435 = fmul fast float %1434, %1433
  %1436 = bitcast float %1351 to i32
  %1437 = ashr i32 %1436, 1
  %1438 = sub nsw i32 1597463174, %1437
  %1439 = bitcast i32 %1438 to float
  %1440 = fmul fast float %1351, 5.000000e-01
  %1441 = fmul fast float %1439, %1439
  %1442 = fmul fast float %1441, %1440
  %1443 = fsub fast float 1.500000e+00, %1442
  %1444 = fmul fast float %1439, %1351
  %1445 = fmul fast float %1444, %1443
  %1446 = bitcast float %1352 to i32
  %1447 = ashr i32 %1446, 1
  %1448 = sub nsw i32 1597463174, %1447
  %1449 = bitcast i32 %1448 to float
  %1450 = fmul fast float %1352, 5.000000e-01
  %1451 = fmul fast float %1449, %1449
  %1452 = fmul fast float %1451, %1450
  %1453 = fsub fast float 1.500000e+00, %1452
  %1454 = fmul fast float %1449, %1352
  %1455 = fmul fast float %1454, %1453
  %1456 = fsub fast float %1435, %1417
  %1457 = fsub fast float %1445, %1421
  %1458 = fsub fast float %1455, %1425
  %1459 = fmul fast float %1456, %1385
  %1460 = fmul fast float %1457, %1387
  %1461 = fmul fast float %1458, %1392
  %1462 = fadd fast float %1459, %1400
  %1463 = fadd fast float %1460, %1404
  %1464 = fadd fast float %1461, %1408
  %1465 = call float @dx.op.unary.f32(i32 7, float %1462)  ; Saturate(value)
  %1466 = call float @dx.op.unary.f32(i32 7, float %1463)  ; Saturate(value)
  %1467 = call float @dx.op.unary.f32(i32 7, float %1464)  ; Saturate(value)
  %1468 = fmul fast float %1465, %1465
  %1469 = fmul fast float %1466, %1466
  %1470 = fmul fast float %1467, %1467
  %1471 = fsub fast float %1468, %1350
  %1472 = fsub fast float %1469, %1351
  %1473 = fsub fast float %1470, %1352
  %1474 = fmul fast float %1471, %1375
  %1475 = fmul fast float %1472, %1375
  %1476 = fmul fast float %1473, %1375
  %1477 = fadd fast float %1474, %1350
  %1478 = fadd fast float %1475, %1351
  %1479 = fadd fast float %1476, %1352
  %1480 = fadd fast float %1397, %1361
  %1481 = fsub fast float %1480, %1414
  %1482 = call float @dx.op.unary.f32(i32 7, float %1481)  ; Saturate(value)
  %1483 = fsub fast float %1482, %1361
  %1484 = fmul fast float %1483, %1375
  %1485 = fadd fast float %1484, %1361
  br label %1539

; <label>:1486                                    ; preds = %1374
  %1487 = and i32 %1377, 134217728
  %1488 = icmp eq i32 %1487, 0
  br i1 %1488, label %1523, label %1489

; <label>:1489                                    ; preds = %1486
  %1490 = call float @dx.op.unary.f32(i32 24, float %367)  ; Sqrt(value)
  %1491 = call float @dx.op.unary.f32(i32 24, float %371)  ; Sqrt(value)
  %1492 = call float @dx.op.unary.f32(i32 24, float %375)  ; Sqrt(value)
  %1493 = fadd fast float %1490, -5.000000e-01
  %1494 = fadd fast float %1491, -5.000000e-01
  %1495 = fadd fast float %1492, -5.000000e-01
  %1496 = fmul fast float %1493, %1375
  %1497 = fmul fast float %1494, %1375
  %1498 = fmul fast float %1495, %1375
  %1499 = fadd fast float %1496, 5.000000e-01
  %1500 = fadd fast float %1497, 5.000000e-01
  %1501 = fadd fast float %1498, 5.000000e-01
  %1502 = call float @dx.op.unary.f32(i32 24, float %1350)  ; Sqrt(value)
  %1503 = call float @dx.op.unary.f32(i32 24, float %1351)  ; Sqrt(value)
  %1504 = call float @dx.op.unary.f32(i32 24, float %1352)  ; Sqrt(value)
  %1505 = fmul fast float %1499, 2.000000e+00
  %1506 = fsub fast float 1.000000e+00, %1505
  %1507 = fmul fast float %1506, %1502
  %1508 = fadd fast float %1507, %1505
  %1509 = fmul fast float %1508, %1502
  %1510 = fmul fast float %1500, 2.000000e+00
  %1511 = fsub fast float 1.000000e+00, %1510
  %1512 = fmul fast float %1511, %1503
  %1513 = fadd fast float %1512, %1510
  %1514 = fmul fast float %1513, %1503
  %1515 = fmul fast float %1501, 2.000000e+00
  %1516 = fsub fast float 1.000000e+00, %1515
  %1517 = fmul fast float %1516, %1504
  %1518 = fadd fast float %1517, %1515
  %1519 = fmul fast float %1518, %1504
  %1520 = fmul fast float %1509, %1509
  %1521 = fmul fast float %1514, %1514
  %1522 = fmul fast float %1519, %1519
  br label %1539

; <label>:1523                                    ; preds = %1486
  %1524 = fmul fast float %367, %367
  %1525 = fmul fast float %371, %371
  %1526 = fmul fast float %375, %375
  %1527 = fadd fast float %1524, -1.000000e+00
  %1528 = fadd fast float %1525, -1.000000e+00
  %1529 = fadd fast float %1526, -1.000000e+00
  %1530 = fmul fast float %1375, %1527
  %1531 = fmul fast float %1375, %1528
  %1532 = fmul fast float %1375, %1529
  %1533 = fadd fast float %1530, 1.000000e+00
  %1534 = fadd fast float %1531, 1.000000e+00
  %1535 = fadd fast float %1532, 1.000000e+00
  %1536 = fmul fast float %1533, %1350
  %1537 = fmul fast float %1534, %1351
  %1538 = fmul fast float %1535, %1352
  br label %1539

; <label>:1539                                    ; preds = %1523, %1489, %1380, %1336
  %1540 = phi float [ %1485, %1380 ], [ %1361, %1489 ], [ %1361, %1523 ], [ 0x3FA23C0BE0000000, %1336 ]
  %1541 = phi float [ %1477, %1380 ], [ %1520, %1489 ], [ %1536, %1523 ], [ 1.000000e+00, %1336 ]
  %1542 = phi float [ %1478, %1380 ], [ %1521, %1489 ], [ %1537, %1523 ], [ 1.000000e+00, %1336 ]
  %1543 = phi float [ %1479, %1380 ], [ %1522, %1489 ], [ %1538, %1523 ], [ 1.000000e+00, %1336 ]
  %1544 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1545 = extractvalue %dx.types.CBufRet.i32 %1544, 1
  %1546 = and i32 %1545, 1
  %1547 = icmp ne i32 %1546, 0
  %1548 = add i32 %51, 356
  %1549 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1548, i32 undef)  ; BufferLoad(srv,index,wot)
  %1550 = extractvalue %dx.types.ResRet.i32 %1549, 0
  %1551 = and i32 %1550, 32
  %1552 = icmp ne i32 %1551, 0
  %1553 = and i1 %1547, %1552
  %1554 = select i1 %1553, float 1.000000e+00, float %1541
  %1555 = select i1 %1553, float 0x3FD3333340000000, float %1542
  %1556 = select i1 %1553, float 0x3FD3333340000000, float %1543
  %1557 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1154, i32 undef)  ; BufferLoad(srv,index,wot)
  %1558 = extractvalue %dx.types.ResRet.i32 %1557, 0
  %1559 = and i32 %1558, 32
  %1560 = icmp eq i32 %1559, 0
  br i1 %1560, label %1633, label %1561

; <label>:1561                                    ; preds = %1539
  %1562 = add i32 %51, 108
  %1563 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1562, i32 undef)  ; BufferLoad(srv,index,wot)
  %1564 = extractvalue %dx.types.ResRet.i32 %1563, 0
  %1565 = add i32 %51, 444
  %1566 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1565, i32 undef)  ; BufferLoad(srv,index,wot)
  %1567 = extractvalue %dx.types.ResRet.i32 %1566, 0
  %1568 = add i32 %1567, 0
  %1569 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1568, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1570 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1569, %dx.types.Handle %107, float %1261, float %1262, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1571 = extractvalue %dx.types.ResRet.f32 %1570, 0
  %1572 = extractvalue %dx.types.ResRet.f32 %1570, 1
  %1573 = extractvalue %dx.types.ResRet.f32 %1570, 2
  %1574 = extractvalue %dx.types.ResRet.f32 %1570, 3
  %1575 = and i32 %1564, 255
  %1576 = uitofp i32 %1575 to float
  %1577 = lshr i32 %1564, 8
  %1578 = and i32 %1577, 255
  %1579 = uitofp i32 %1578 to float
  %1580 = lshr i32 %1564, 16
  %1581 = and i32 %1580, 255
  %1582 = uitofp i32 %1581 to float
  %1583 = fmul fast float %1582, 0x3F70101000000000
  %1584 = fmul fast float %1571, %1576
  %1585 = fadd fast float %1584, %1579
  %1586 = fmul fast float %1585, 0x3F70101000000000
  %1587 = fadd fast float %1572, -5.000000e-01
  %1588 = fadd fast float %1574, -5.000000e-01
  %1589 = fmul fast float %1587, %1583
  %1590 = fmul fast float %1588, %1583
  %1591 = fadd fast float %1589, 5.000000e-01
  %1592 = fadd fast float %1590, 5.000000e-01
  %1593 = fmul fast float %1591, 2.000000e+00
  %1594 = fadd fast float %1593, -1.000000e+00
  %1595 = fmul fast float %1592, 2.000000e+00
  %1596 = fadd fast float %1595, -1.000000e+00
  %1597 = fadd fast float %1594, %1596
  %1598 = fmul fast float %1597, 5.000000e-01
  %1599 = fsub fast float %1594, %1596
  %1600 = fmul fast float %1599, 5.000000e-01
  %1601 = call float @dx.op.unary.f32(i32 6, float %1598)  ; FAbs(value)
  %1602 = fsub fast float 1.000000e+00, %1601
  %1603 = call float @dx.op.unary.f32(i32 6, float %1600)  ; FAbs(value)
  %1604 = fsub fast float %1602, %1603
  %1605 = call float @dx.op.dot3.f32(i32 55, float %1598, float %1600, float %1604, float %1598, float %1600, float %1604)  ; Dot3(ax,ay,az,bx,by,bz)
  %1606 = call float @dx.op.unary.f32(i32 25, float %1605)  ; Rsqrt(value)
  %1607 = fmul fast float %1598, %1606
  %1608 = fmul fast float %1600, %1606
  %1609 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1154, i32 undef)  ; BufferLoad(srv,index,wot)
  %1610 = extractvalue %dx.types.ResRet.i32 %1609, 0
  %1611 = and i32 %1610, 67108864
  %1612 = icmp eq i32 %1611, 0
  br i1 %1612, label %1629, label %1613

; <label>:1613                                    ; preds = %1561
  %1614 = add i32 %51, 296
  %1615 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1614, i32 undef)  ; BufferLoad(srv,index,wot)
  %1616 = extractvalue %dx.types.ResRet.i32 %1615, 0
  %1617 = and i32 %1616, 65535
  %1618 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1617)  ; LegacyF16ToF32(value)
  %1619 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1171, i32 undef)  ; BufferLoad(srv,index,wot)
  %1620 = extractvalue %dx.types.ResRet.i32 %1619, 0
  %1621 = and i32 %1620, 65535
  %1622 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1621)  ; LegacyF16ToF32(value)
  %1623 = lshr i32 %1616, 16
  %1624 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1623)  ; LegacyF16ToF32(value)
  %1625 = fsub fast float %1586, %1624
  %1626 = fmul fast float %1625, %1618
  %1627 = fadd fast float %1626, %1622
  %1628 = call float @dx.op.unary.f32(i32 7, float %1627)  ; Saturate(value)
  br label %1629

; <label>:1629                                    ; preds = %1613, %1561
  %1630 = phi float [ %1628, %1613 ], [ %1586, %1561 ]
  %1631 = call float @dx.op.dot2.f32(i32 54, float %1607, float %1608, float %1165, float %1166)  ; Dot2(ax,ay,bx,by)
  %1632 = call float @dx.op.dot2.f32(i32 54, float %1607, float %1608, float %1167, float %1168)  ; Dot2(ax,ay,bx,by)
  br label %1633

; <label>:1633                                    ; preds = %1629, %1539
  %1634 = phi float [ %1630, %1629 ], [ 0x3FD6666660000000, %1539 ]
  %1635 = phi float [ %1631, %1629 ], [ 0.000000e+00, %1539 ]
  %1636 = phi float [ %1632, %1629 ], [ 0.000000e+00, %1539 ]
  %1637 = phi float [ %1573, %1629 ], [ 1.000000e+00, %1539 ]
  %1638 = add i32 %51, 176
  %1639 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1638, i32 undef)  ; BufferLoad(srv,index,wot)
  %1640 = extractvalue %dx.types.ResRet.i32 %1639, 0
  %1641 = lshr i32 %1640, 22
  %1642 = shl nuw nsw i32 %1641, 5
  %1643 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1642)  ; LegacyF16ToF32(value)
  %1644 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1154, i32 undef)  ; BufferLoad(srv,index,wot)
  %1645 = extractvalue %dx.types.ResRet.i32 %1644, 0
  %1646 = and i32 %1645, 64
  %1647 = icmp eq i32 %1646, 0
  br i1 %1647, label %1681, label %1648

; <label>:1648                                    ; preds = %1633
  %1649 = add i32 %51, 460
  %1650 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1649, i32 undef)  ; BufferLoad(srv,index,wot)
  %1651 = extractvalue %dx.types.ResRet.i32 %1650, 0
  %1652 = add i32 %1651, 0
  %1653 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1652, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1654 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1154, i32 undef)  ; BufferLoad(srv,index,wot)
  %1655 = extractvalue %dx.types.ResRet.i32 %1654, 0
  %1656 = and i32 %1655, 131072
  %1657 = icmp eq i32 %1656, 0
  %1658 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1653, %dx.types.Handle %107, float %1261, float %1262, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1659 = extractvalue %dx.types.ResRet.f32 %1658, 0
  %1660 = extractvalue %dx.types.ResRet.f32 %1658, 1
  %1661 = extractvalue %dx.types.ResRet.f32 %1658, 2
  %1662 = fmul fast float %1659, %355
  %1663 = fmul fast float %1660, %358
  %1664 = fmul fast float %1661, %361
  br i1 %1657, label %1671, label %1665

; <label>:1665                                    ; preds = %1648
  %1666 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1667 = extractvalue %dx.types.CBufRet.f32 %1666, 0
  %1668 = fmul fast float %1667, %1662
  %1669 = fmul fast float %1667, %1663
  %1670 = fmul fast float %1667, %1664
  br label %1671

; <label>:1671                                    ; preds = %1665, %1648
  %1672 = phi float [ %1668, %1665 ], [ %1662, %1648 ]
  %1673 = phi float [ %1669, %1665 ], [ %1663, %1648 ]
  %1674 = phi float [ %1670, %1665 ], [ %1664, %1648 ]
  %1675 = fmul fast float %1672, %1643
  %1676 = select i1 %296, float %1675, float %1672
  %1677 = call float @dx.op.dot3.f32(i32 55, float %1676, float %1673, float %1674, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1678 = select i1 %296, float 0.000000e+00, float %1672
  %1679 = select i1 %296, float %1677, float %1673
  %1680 = select i1 %296, float 0.000000e+00, float %1674
  br label %1681

; <label>:1681                                    ; preds = %1671, %1633
  %1682 = phi float [ %1678, %1671 ], [ 0.000000e+00, %1633 ]
  %1683 = phi float [ %1679, %1671 ], [ 0.000000e+00, %1633 ]
  %1684 = phi float [ %1680, %1671 ], [ 0.000000e+00, %1633 ]
  %1685 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1154, i32 undef)  ; BufferLoad(srv,index,wot)
  %1686 = extractvalue %dx.types.ResRet.i32 %1685, 0
  %1687 = and i32 %1686, 10240
  %1688 = icmp eq i32 %1687, 0
  br i1 %1688, label %1733, label %1689

; <label>:1689                                    ; preds = %1681
  %1690 = add i32 %51, 528
  %1691 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1690, i32 undef)  ; BufferLoad(srv,index,wot)
  %1692 = extractvalue %dx.types.ResRet.i32 %1691, 0
  %1693 = add i32 %1692, 0
  %1694 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1693, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1695 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1694, %dx.types.Handle %108, float %1261, float %1262, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1696 = extractvalue %dx.types.ResRet.f32 %1695, 1
  %1697 = extractvalue %dx.types.ResRet.f32 %1695, 3
  %1698 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1154, i32 undef)  ; BufferLoad(srv,index,wot)
  %1699 = extractvalue %dx.types.ResRet.i32 %1698, 0
  %1700 = and i32 %1699, 1048576
  %1701 = icmp ne i32 %1700, 0
  %1702 = and i32 %1699, 8192
  %1703 = icmp eq i32 %1702, 0
  br i1 %1703, label %1719, label %1704

; <label>:1704                                    ; preds = %1689
  %1705 = extractvalue %dx.types.ResRet.f32 %1695, 2
  %1706 = select i1 %1701, float %1705, float %1696
  %1707 = extractvalue %dx.types.ResRet.f32 %1695, 0
  %1708 = select i1 %1701, float %1707, float %1696
  %1709 = add i32 %51, 112
  %1710 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1709, i32 undef)  ; BufferLoad(srv,index,wot)
  %1711 = extractvalue %dx.types.ResRet.i32 %1710, 0
  %1712 = lshr i32 %1711, 16
  %1713 = and i32 %1712, 255
  %1714 = uitofp i32 %1713 to float
  %1715 = fmul fast float %1714, 0x3F80101020000000
  %1716 = fmul fast float %1715, %1708
  %1717 = fmul fast float %1715, %1696
  %1718 = fmul fast float %1715, %1706
  br label %1719

; <label>:1719                                    ; preds = %1704, %1689
  %1720 = phi float [ %1716, %1704 ], [ 0.000000e+00, %1689 ]
  %1721 = phi float [ %1717, %1704 ], [ 0.000000e+00, %1689 ]
  %1722 = phi float [ %1718, %1704 ], [ 0.000000e+00, %1689 ]
  %1723 = and i32 %1699, 2048
  %1724 = icmp eq i32 %1723, 0
  br i1 %1724, label %1733, label %1725

; <label>:1725                                    ; preds = %1719
  %1726 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1638, i32 undef)  ; BufferLoad(srv,index,wot)
  %1727 = extractvalue %dx.types.ResRet.i32 %1726, 0
  %1728 = shl i32 %1727, 4
  %1729 = and i32 %1728, 32752
  %1730 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1729)  ; LegacyF16ToF32(value)
  %1731 = fmul fast float %1730, %1697
  %1732 = call float @dx.op.binary.f32(i32 35, float %1731, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1733

; <label>:1733                                    ; preds = %1725, %1719, %1681
  %1734 = phi float [ %1720, %1725 ], [ %1720, %1719 ], [ 0.000000e+00, %1681 ]
  %1735 = phi float [ %1721, %1725 ], [ %1721, %1719 ], [ 0.000000e+00, %1681 ]
  %1736 = phi float [ %1722, %1725 ], [ %1722, %1719 ], [ 0.000000e+00, %1681 ]
  %1737 = phi float [ %1732, %1725 ], [ 0x3F70101020000000, %1719 ], [ 0x3F70101020000000, %1681 ]
  %1738 = add i32 %51, 112
  %1739 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1738, i32 undef)  ; BufferLoad(srv,index,wot)
  %1740 = extractvalue %dx.types.ResRet.i32 %1739, 0
  %1741 = and i32 %1740, 255
  %1742 = uitofp i32 %1741 to float
  %1743 = lshr i32 %1740, 8
  %1744 = and i32 %1743, 255
  %1745 = uitofp i32 %1744 to float
  %1746 = call float @dx.op.dot3.f32(i32 55, float %1554, float %1555, float %1556, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1747 = fmul fast float %1745, %1746
  %1748 = fadd fast float %1747, %1742
  %1749 = fmul fast float %1748, 0x3F70101020000000
  %1750 = call float @dx.op.unary.f32(i32 7, float %1749)  ; Saturate(value)
  br i1 %1153, label %1751, label %1759

; <label>:1751                                    ; preds = %1733
  %1752 = fsub fast float 1.000000e+00, %1334
  %1753 = fmul fast float %1752, %1137
  %1754 = fmul fast float %1752, %1138
  %1755 = fmul fast float %1752, %1139
  %1756 = fmul fast float %1752, %1140
  %1757 = fmul fast float %1752, %1141
  %1758 = fmul fast float %1752, %1142
  br label %1759

; <label>:1759                                    ; preds = %1751, %1733
  %1760 = phi float [ %1753, %1751 ], [ %1137, %1733 ]
  %1761 = phi float [ %1754, %1751 ], [ %1138, %1733 ]
  %1762 = phi float [ %1755, %1751 ], [ %1139, %1733 ]
  %1763 = phi float [ %1756, %1751 ], [ %1140, %1733 ]
  %1764 = phi float [ %1757, %1751 ], [ %1141, %1733 ]
  %1765 = phi float [ %1758, %1751 ], [ %1142, %1733 ]
  %1766 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1154, i32 undef)  ; BufferLoad(srv,index,wot)
  %1767 = extractvalue %dx.types.ResRet.i32 %1766, 0
  %1768 = and i32 %1767, 3
  %1769 = icmp eq i32 %1768, 3
  br i1 %1769, label %1848, label %1770

; <label>:1770                                    ; preds = %1759
  %1771 = and i32 %1767, 16
  %1772 = icmp ne i32 %1771, 0
  %1773 = select i1 %1772, float %1334, float 0.000000e+00
  %1774 = icmp eq i32 %1768, 0
  br i1 %1774, label %1775, label %1803

; <label>:1775                                    ; preds = %1770
  %1776 = and i32 %1767, 64
  %1777 = icmp ne i32 %1776, 0
  %1778 = select i1 %1777, float %1334, float 0.000000e+00
  %1779 = fsub fast float %1554, %1760
  %1780 = fsub fast float %1555, %1761
  %1781 = fsub fast float %1556, %1762
  %1782 = fmul fast float %1773, %1779
  %1783 = fmul fast float %1773, %1780
  %1784 = fmul fast float %1773, %1781
  %1785 = fadd fast float %1782, %1760
  %1786 = fadd fast float %1783, %1761
  %1787 = fadd fast float %1784, %1762
  %1788 = fsub fast float %1540, %1146
  %1789 = fmul fast float %1773, %1788
  %1790 = fadd fast float %1789, %1146
  %1791 = fsub fast float %1682, %1763
  %1792 = fsub fast float %1683, %1764
  %1793 = fsub fast float %1684, %1765
  %1794 = fmul fast float %1778, %1791
  %1795 = fmul fast float %1778, %1792
  %1796 = fmul fast float %1778, %1793
  %1797 = fadd fast float %1794, %1763
  %1798 = fadd fast float %1795, %1764
  %1799 = fadd fast float %1796, %1765
  %1800 = fsub fast float %1750, %1151
  %1801 = fmul fast float %1773, %1800
  %1802 = fadd fast float %1801, %1151
  br label %1848

; <label>:1803                                    ; preds = %1770
  %1804 = icmp eq i32 %1768, 1
  br i1 %1804, label %1805, label %1818

; <label>:1805                                    ; preds = %1803
  %1806 = fadd fast float %1554, -1.000000e+00
  %1807 = fadd fast float %1555, -1.000000e+00
  %1808 = fadd fast float %1556, -1.000000e+00
  %1809 = fmul fast float %1773, %1806
  %1810 = fmul fast float %1773, %1807
  %1811 = fmul fast float %1773, %1808
  %1812 = fadd fast float %1809, 1.000000e+00
  %1813 = fadd fast float %1810, 1.000000e+00
  %1814 = fadd fast float %1811, 1.000000e+00
  %1815 = fmul fast float %1812, %1760
  %1816 = fmul fast float %1813, %1761
  %1817 = fmul fast float %1814, %1762
  br label %1848

; <label>:1818                                    ; preds = %1803
  %1819 = icmp eq i32 %1768, 2
  br i1 %1819, label %1820, label %1848

; <label>:1820                                    ; preds = %1818
  %1821 = call float @dx.op.unary.f32(i32 24, float %1554)  ; Sqrt(value)
  %1822 = call float @dx.op.unary.f32(i32 24, float %1555)  ; Sqrt(value)
  %1823 = call float @dx.op.unary.f32(i32 24, float %1556)  ; Sqrt(value)
  %1824 = fadd fast float %1821, -5.000000e-01
  %1825 = fadd fast float %1822, -5.000000e-01
  %1826 = fadd fast float %1823, -5.000000e-01
  %1827 = fmul fast float %1824, %1773
  %1828 = fmul fast float %1825, %1773
  %1829 = fmul fast float %1826, %1773
  %1830 = fadd fast float %1827, 5.000000e-01
  %1831 = fadd fast float %1828, 5.000000e-01
  %1832 = fadd fast float %1829, 5.000000e-01
  %1833 = fmul fast float %1830, 2.000000e+00
  %1834 = fsub fast float 1.000000e+00, %1833
  %1835 = fmul fast float %1834, %1760
  %1836 = fadd fast float %1835, %1833
  %1837 = fmul fast float %1836, %1760
  %1838 = fmul fast float %1831, 2.000000e+00
  %1839 = fsub fast float 1.000000e+00, %1838
  %1840 = fmul fast float %1839, %1761
  %1841 = fadd fast float %1840, %1838
  %1842 = fmul fast float %1841, %1761
  %1843 = fmul fast float %1832, 2.000000e+00
  %1844 = fsub fast float 1.000000e+00, %1843
  %1845 = fmul fast float %1844, %1762
  %1846 = fadd fast float %1845, %1843
  %1847 = fmul fast float %1846, %1762
  br label %1848

; <label>:1848                                    ; preds = %1820, %1818, %1805, %1775, %1759
  %1849 = phi float [ %1760, %1759 ], [ %1837, %1820 ], [ %1760, %1818 ], [ %1815, %1805 ], [ %1785, %1775 ]
  %1850 = phi float [ %1761, %1759 ], [ %1842, %1820 ], [ %1761, %1818 ], [ %1816, %1805 ], [ %1786, %1775 ]
  %1851 = phi float [ %1762, %1759 ], [ %1847, %1820 ], [ %1762, %1818 ], [ %1817, %1805 ], [ %1787, %1775 ]
  %1852 = phi float [ %1763, %1759 ], [ %1763, %1820 ], [ %1763, %1818 ], [ %1763, %1805 ], [ %1797, %1775 ]
  %1853 = phi float [ %1764, %1759 ], [ %1764, %1820 ], [ %1764, %1818 ], [ %1764, %1805 ], [ %1798, %1775 ]
  %1854 = phi float [ %1765, %1759 ], [ %1765, %1820 ], [ %1765, %1818 ], [ %1765, %1805 ], [ %1799, %1775 ]
  %1855 = phi float [ %1146, %1759 ], [ %1146, %1820 ], [ %1146, %1818 ], [ %1146, %1805 ], [ %1790, %1775 ]
  %1856 = phi float [ %1151, %1759 ], [ %1151, %1820 ], [ %1151, %1818 ], [ %1151, %1805 ], [ %1802, %1775 ]
  %1857 = and i32 %1767, 12
  %1858 = icmp eq i32 %1857, 12
  br i1 %1858, label %1965, label %1859

; <label>:1859                                    ; preds = %1848
  %1860 = and i32 %1767, 2097184
  %1861 = icmp eq i32 %1860, 2097184
  %1862 = select i1 %1861, float %1334, float 0.000000e+00
  %1863 = and i32 %1767, 4194336
  %1864 = icmp eq i32 %1863, 4194336
  %1865 = select i1 %1864, float %1334, float 0.000000e+00
  %1866 = and i32 %1767, 8388640
  %1867 = icmp eq i32 %1866, 8388640
  %1868 = select i1 %1867, float %1334, float 0.000000e+00
  %1869 = and i32 %1767, 2048
  %1870 = icmp ne i32 %1869, 0
  %1871 = select i1 %1870, float %1334, float 0.000000e+00
  %1872 = and i32 %1767, 8192
  %1873 = icmp ne i32 %1872, 0
  %1874 = select i1 %1873, float %1334, float 0.000000e+00
  %1875 = icmp eq i32 %1857, 0
  br i1 %1875, label %1876, label %1901

; <label>:1876                                    ; preds = %1859
  %1877 = fsub fast float %1635, %1135
  %1878 = fsub fast float %1636, %1136
  %1879 = fmul fast float %1862, %1877
  %1880 = fmul fast float %1862, %1878
  %1881 = fadd fast float %1879, %1135
  %1882 = fadd fast float %1880, %1136
  %1883 = fsub fast float %1637, %1149
  %1884 = fmul fast float %1865, %1883
  %1885 = fadd fast float %1884, %1149
  %1886 = fsub fast float %1634, %1148
  %1887 = fmul fast float %1868, %1886
  %1888 = fadd fast float %1887, %1148
  %1889 = fsub fast float %1737, %1150
  %1890 = fmul fast float %1871, %1889
  %1891 = fadd fast float %1890, %1150
  %1892 = fsub fast float %1734, %1143
  %1893 = fsub fast float %1735, %1144
  %1894 = fsub fast float %1736, %1145
  %1895 = fmul fast float %1874, %1892
  %1896 = fmul fast float %1874, %1893
  %1897 = fmul fast float %1874, %1894
  %1898 = fadd fast float %1895, %1143
  %1899 = fadd fast float %1896, %1144
  %1900 = fadd fast float %1897, %1145
  br label %1965

; <label>:1901                                    ; preds = %1859
  %1902 = icmp eq i32 %1857, 4
  br i1 %1902, label %1903, label %1943

; <label>:1903                                    ; preds = %1901
  %1904 = fmul fast float %1862, %1635
  %1905 = fmul fast float %1862, %1636
  %1906 = fadd fast float %1904, %1135
  %1907 = fadd fast float %1905, %1136
  %1908 = call float @dx.op.binary.f32(i32 36, float %1149, float %1637)  ; FMin(a,b)
  %1909 = fsub fast float %1908, %1149
  %1910 = fmul fast float %1909, %1865
  %1911 = fadd fast float %1910, %1149
  %1912 = fadd fast float %1634, %1148
  %1913 = fmul fast float %1912, 0x3FF337FAE0000000
  %1914 = fmul fast float %1148, %1148
  %1915 = fmul fast float %1634, %1634
  %1916 = fadd fast float %1915, %1914
  %1917 = fmul fast float %1916, 0x3FE5152B00000000
  %1918 = fmul fast float %1148, 0xBFCC1F85E0000000
  %1919 = fmul fast float %1918, %1634
  %1920 = fadd fast float %1919, 0xBFE1363700000000
  %1921 = fadd fast float %1920, %1913
  %1922 = fsub fast float %1921, %1917
  %1923 = fmul fast float %1912, 0x3FBA6F0D00000000
  %1924 = fmul fast float %1916, 0x3FD0432880000000
  %1925 = fmul fast float %1148, 0xBFEF110800000000
  %1926 = fmul fast float %1925, %1634
  %1927 = fadd fast float %1926, 1.000000e+00
  %1928 = fsub fast float %1927, %1923
  %1929 = fadd fast float %1928, %1924
  %1930 = fdiv fast float %1922, %1929
  %1931 = call float @dx.op.unary.f32(i32 7, float %1930)  ; Saturate(value)
  %1932 = fsub fast float %1931, %1148
  %1933 = fmul fast float %1932, %1868
  %1934 = fadd fast float %1933, %1148
  %1935 = fmul fast float %1871, %1737
  %1936 = fadd fast float %1935, %1150
  %1937 = fmul fast float %1874, %1734
  %1938 = fmul fast float %1874, %1735
  %1939 = fmul fast float %1874, %1736
  %1940 = fadd fast float %1937, %1143
  %1941 = fadd fast float %1938, %1144
  %1942 = fadd fast float %1939, %1145
  br label %1965

; <label>:1943                                    ; preds = %1901
  %1944 = icmp eq i32 %1857, 8
  br i1 %1944, label %1945, label %1965

; <label>:1945                                    ; preds = %1943
  %1946 = fmul fast float %1862, %1635
  %1947 = fmul fast float %1862, %1636
  %1948 = fadd fast float %1946, %1135
  %1949 = fadd fast float %1947, %1136
  %1950 = call float @dx.op.binary.f32(i32 36, float %1149, float %1637)  ; FMin(a,b)
  %1951 = fsub fast float %1950, %1149
  %1952 = fmul fast float %1951, %1865
  %1953 = fadd fast float %1952, %1149
  %1954 = fsub fast float %1634, %1148
  %1955 = fmul fast float %1868, %1954
  %1956 = fadd fast float %1955, %1148
  %1957 = fmul fast float %1871, %1737
  %1958 = fadd fast float %1957, %1150
  %1959 = fmul fast float %1874, %1734
  %1960 = fmul fast float %1874, %1735
  %1961 = fmul fast float %1874, %1736
  %1962 = fadd fast float %1959, %1143
  %1963 = fadd fast float %1960, %1144
  %1964 = fadd fast float %1961, %1145
  br label %1965

; <label>:1965                                    ; preds = %1945, %1943, %1903, %1876, %1848, %1333, %1152, %1134
  %1966 = phi float [ %1135, %1848 ], [ %1135, %1333 ], [ %1135, %1134 ], [ %1948, %1945 ], [ %1135, %1943 ], [ %1906, %1903 ], [ %1881, %1876 ], [ %1135, %1152 ]
  %1967 = phi float [ %1136, %1848 ], [ %1136, %1333 ], [ %1136, %1134 ], [ %1949, %1945 ], [ %1136, %1943 ], [ %1907, %1903 ], [ %1882, %1876 ], [ %1136, %1152 ]
  %1968 = phi float [ %1849, %1848 ], [ %1137, %1333 ], [ %1137, %1134 ], [ %1849, %1945 ], [ %1849, %1943 ], [ %1849, %1903 ], [ %1849, %1876 ], [ %1137, %1152 ]
  %1969 = phi float [ %1850, %1848 ], [ %1138, %1333 ], [ %1138, %1134 ], [ %1850, %1945 ], [ %1850, %1943 ], [ %1850, %1903 ], [ %1850, %1876 ], [ %1138, %1152 ]
  %1970 = phi float [ %1851, %1848 ], [ %1139, %1333 ], [ %1139, %1134 ], [ %1851, %1945 ], [ %1851, %1943 ], [ %1851, %1903 ], [ %1851, %1876 ], [ %1139, %1152 ]
  %1971 = phi float [ %1852, %1848 ], [ %1140, %1333 ], [ %1140, %1134 ], [ %1852, %1945 ], [ %1852, %1943 ], [ %1852, %1903 ], [ %1852, %1876 ], [ %1140, %1152 ]
  %1972 = phi float [ %1853, %1848 ], [ %1141, %1333 ], [ %1141, %1134 ], [ %1853, %1945 ], [ %1853, %1943 ], [ %1853, %1903 ], [ %1853, %1876 ], [ %1141, %1152 ]
  %1973 = phi float [ %1854, %1848 ], [ %1142, %1333 ], [ %1142, %1134 ], [ %1854, %1945 ], [ %1854, %1943 ], [ %1854, %1903 ], [ %1854, %1876 ], [ %1142, %1152 ]
  %1974 = phi float [ %1143, %1848 ], [ %1143, %1333 ], [ %1143, %1134 ], [ %1962, %1945 ], [ %1143, %1943 ], [ %1940, %1903 ], [ %1898, %1876 ], [ %1143, %1152 ]
  %1975 = phi float [ %1144, %1848 ], [ %1144, %1333 ], [ %1144, %1134 ], [ %1963, %1945 ], [ %1144, %1943 ], [ %1941, %1903 ], [ %1899, %1876 ], [ %1144, %1152 ]
  %1976 = phi float [ %1145, %1848 ], [ %1145, %1333 ], [ %1145, %1134 ], [ %1964, %1945 ], [ %1145, %1943 ], [ %1942, %1903 ], [ %1900, %1876 ], [ %1145, %1152 ]
  %1977 = phi float [ %1855, %1848 ], [ %1146, %1333 ], [ %1146, %1134 ], [ %1855, %1945 ], [ %1855, %1943 ], [ %1855, %1903 ], [ %1855, %1876 ], [ %1146, %1152 ]
  %1978 = phi float [ %1148, %1848 ], [ %1148, %1333 ], [ %1148, %1134 ], [ %1956, %1945 ], [ %1148, %1943 ], [ %1934, %1903 ], [ %1888, %1876 ], [ %1148, %1152 ]
  %1979 = phi float [ %1149, %1848 ], [ %1149, %1333 ], [ %1149, %1134 ], [ %1953, %1945 ], [ %1149, %1943 ], [ %1911, %1903 ], [ %1885, %1876 ], [ %1149, %1152 ]
  %1980 = phi float [ %1150, %1848 ], [ %1150, %1333 ], [ %1150, %1134 ], [ %1958, %1945 ], [ %1150, %1943 ], [ %1936, %1903 ], [ %1891, %1876 ], [ %1150, %1152 ]
  %1981 = phi float [ %1856, %1848 ], [ %1151, %1333 ], [ %1151, %1134 ], [ %1856, %1945 ], [ %1856, %1943 ], [ %1856, %1903 ], [ %1856, %1876 ], [ %1151, %1152 ]
  br i1 %482, label %2795, label %1982

; <label>:1982                                    ; preds = %1965
  %1983 = icmp ult i32 %538, 3
  %1984 = add i32 %51, 56
  %1985 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1984, i32 undef)  ; BufferLoad(srv,index,wot)
  %1986 = extractvalue %dx.types.ResRet.i32 %1985, 0
  %1987 = add i32 %51, 60
  %1988 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1987, i32 undef)  ; BufferLoad(srv,index,wot)
  %1989 = extractvalue %dx.types.ResRet.i32 %1988, 0
  %1990 = or i32 %1989, %1986
  %1991 = icmp eq i32 %1990, 0
  br i1 %1991, label %2795, label %1992

; <label>:1992                                    ; preds = %1982
  %1993 = and i32 %1986, 262144
  %1994 = icmp ne i32 %1993, 0
  %1995 = select i1 %1994, float %57, float 1.000000e+00
  %1996 = select i1 %1994, float %58, float 0.000000e+00
  %1997 = select i1 %1994, float %59, float 0.000000e+00
  %1998 = select i1 %1994, float %60, float 1.000000e+00
  %1999 = select i1 %1994, float %61, float %89
  %2000 = select i1 %1994, float %62, float %90
  %2001 = add i32 %51, 316
  %2002 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2001, i32 undef)  ; BufferLoad(srv,index,wot)
  %2003 = extractvalue %dx.types.ResRet.i32 %2002, 0
  %2004 = lshr i32 %2003, 16
  %2005 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2004)  ; LegacyF16ToF32(value)
  %2006 = fmul fast float %2005, 0x3F50624DE0000000
  %2007 = add i32 %51, 120
  %2008 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2007, i32 undef)  ; BufferLoad(srv,index,wot)
  %2009 = extractvalue %dx.types.ResRet.i32 %2008, 0
  %2010 = lshr i32 %2009, 16
  %2011 = and i32 %2010, 255
  %2012 = lshr i32 %2009, 24
  %2013 = add i32 %51, 324
  %2014 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2013, i32 undef)  ; BufferLoad(srv,index,wot)
  %2015 = extractvalue %dx.types.ResRet.i32 %2014, 0
  %2016 = and i32 %2015, 65535
  %2017 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2016)  ; LegacyF16ToF32(value)
  %2018 = lshr i32 %2015, 16
  %2019 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2018)  ; LegacyF16ToF32(value)
  %2020 = add i32 %51, 64
  %2021 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2020, i32 undef)  ; BufferLoad(srv,index,wot)
  %2022 = extractvalue %dx.types.ResRet.i32 %2021, 0
  %2023 = lshr i32 %2022, 22
  %2024 = shl nuw nsw i32 %2023, 5
  %2025 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2024)  ; LegacyF16ToF32(value)
  %2026 = shl i32 %2022, 4
  %2027 = and i32 %2026, 32752
  %2028 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2027)  ; LegacyF16ToF32(value)
  %2029 = lshr i32 %2022, 7
  %2030 = and i32 %2029, 32752
  %2031 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2030)  ; LegacyF16ToF32(value)
  %2032 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2033 = extractvalue %dx.types.CBufRet.f32 %2032, 3
  %2034 = fmul fast float %2033, 1.000000e+03
  %2035 = fmul fast float %432, %2034
  %2036 = call float @dx.op.unary.f32(i32 22, float %2035)  ; Frc(value)
  %2037 = fadd fast float %2036, %422
  %2038 = fmul fast float %433, %2034
  %2039 = call float @dx.op.unary.f32(i32 22, float %2038)  ; Frc(value)
  %2040 = fadd fast float %2039, %424
  %2041 = fmul fast float %2006, %2034
  %2042 = call float @dx.op.unary.f32(i32 22, float %2041)  ; Frc(value)
  %2043 = fmul fast float %2042, 0x401921FB60000000
  %2044 = fadd fast float %2043, %2025
  %2045 = call float @dx.op.unary.f32(i32 13, float %2044)  ; Sin(value)
  %2046 = call float @dx.op.unary.f32(i32 12, float %2044)  ; Cos(value)
  %2047 = fsub fast float -0.000000e+00, %2045
  %2048 = fadd fast float %1999, -5.000000e-01
  %2049 = fadd fast float %2000, -5.000000e-01
  %2050 = fmul fast float %2017, %2048
  %2051 = fmul fast float %2019, %2049
  %2052 = fadd fast float %2050, 5.000000e-01
  %2053 = fadd fast float %2051, 5.000000e-01
  %2054 = fmul fast float %2028, %2052
  %2055 = fmul fast float %2031, %2053
  %2056 = fmul fast float %2046, %2054
  %2057 = call float @dx.op.tertiary.f32(i32 46, float %2047, float %2055, float %2056)  ; FMad(a,b,c)
  %2058 = fmul fast float %2045, %2054
  %2059 = call float @dx.op.tertiary.f32(i32 46, float %2046, float %2055, float %2058)  ; FMad(a,b,c)
  %2060 = fadd fast float %2037, %2057
  %2061 = fadd fast float %2040, %2059
  %2062 = icmp ugt i32 %2011, 1
  %2063 = icmp ugt i32 %2009, 33554431
  %2064 = or i1 %2063, %2062
  br i1 %2064, label %2065, label %2090

; <label>:2065                                    ; preds = %1992
  %2066 = add i32 %51, 260
  %2067 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2066, i32 undef)  ; BufferLoad(srv,index,wot)
  %2068 = extractvalue %dx.types.ResRet.i32 %2067, 0
  %2069 = lshr i32 %2068, 16
  %2070 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2069)  ; LegacyF16ToF32(value)
  %2071 = fmul fast float %2033, %2070
  %2072 = call float @dx.op.unary.f32(i32 22, float %2071)  ; Frc(value)
  %2073 = mul nuw nsw i32 %2011, %2012
  %2074 = uitofp i32 %2073 to float
  %2075 = fmul fast float %2072, %2074
  %2076 = call float @dx.op.unary.f32(i32 27, float %2075)  ; Round_ni(value)
  %2077 = fptoui float %2076 to i32
  %2078 = urem i32 %2077, %2011
  %2079 = udiv i32 %2077, %2012
  %2080 = call float @dx.op.unary.f32(i32 22, float %2060)  ; Frc(value)
  %2081 = call float @dx.op.unary.f32(i32 22, float %2061)  ; Frc(value)
  %2082 = uitofp i32 %2078 to float
  %2083 = uitofp i32 %2079 to float
  %2084 = fadd fast float %2080, %2082
  %2085 = fadd fast float %2081, %2083
  %2086 = uitofp i32 %2011 to float
  %2087 = uitofp i32 %2012 to float
  %2088 = fdiv fast float %2084, %2086
  %2089 = fdiv fast float %2085, %2087
  br label %2090

; <label>:2090                                    ; preds = %2065, %1992
  %2091 = phi float [ %2088, %2065 ], [ %2060, %1992 ]
  %2092 = phi float [ %2089, %2065 ], [ %2061, %1992 ]
  %2093 = and i32 %1986, 256
  %2094 = icmp eq i32 %2093, 0
  br i1 %2094, label %2141, label %2095

; <label>:2095                                    ; preds = %2090
  %2096 = add i32 %51, 496
  %2097 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2096, i32 undef)  ; BufferLoad(srv,index,wot)
  %2098 = extractvalue %dx.types.ResRet.i32 %2097, 0
  %2099 = add i32 %2098, 0
  %2100 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2099, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2101 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2100, %dx.types.Handle %108, float %2091, float %2092, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2102 = extractvalue %dx.types.ResRet.f32 %2101, 0
  %2103 = add i32 %51, 132
  %2104 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2103, i32 undef)  ; BufferLoad(srv,index,wot)
  %2105 = extractvalue %dx.types.ResRet.i32 %2104, 0
  %2106 = shl i32 %2105, 4
  %2107 = and i32 %2106, 32752
  %2108 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2107)  ; LegacyF16ToF32(value)
  %2109 = lshr i32 %2105, 7
  %2110 = and i32 %2109, 32752
  %2111 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2110)  ; LegacyF16ToF32(value)
  %2112 = fsub fast float 1.000000e+00, %534
  %2113 = call float @dx.op.binary.f32(i32 35, float %2112, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2114 = bitcast float %534 to i32
  %2115 = sitofp i32 %2114 to float
  %2116 = fadd fast float %2115, 0xC1CFBF8940000000
  %2117 = fmul fast float %2111, %2116
  %2118 = fadd fast float %2117, 0x41CFBF8940000000
  %2119 = fptosi float %2118 to i32
  %2120 = bitcast i32 %2119 to float
  %2121 = bitcast float %2113 to i32
  %2122 = sitofp i32 %2121 to float
  %2123 = fadd fast float %2122, 0xC1CFBF8940000000
  %2124 = fmul fast float %2123, %2111
  %2125 = fadd fast float %2124, 0x41CFBF8940000000
  %2126 = fptosi float %2125 to i32
  %2127 = bitcast i32 %2126 to float
  %2128 = fmul fast float %2120, %2108
  %2129 = fmul fast float %2127, %2108
  %2130 = fsub fast float %2113, %2128
  %2131 = fadd fast float %2129, %2113
  %2132 = call float @dx.op.unary.f32(i32 7, float %2130)  ; Saturate(value)
  %2133 = call float @dx.op.unary.f32(i32 7, float %2131)  ; Saturate(value)
  %2134 = fsub fast float %2102, %2132
  %2135 = fsub fast float %2133, %2132
  %2136 = bitcast float %2135 to i32
  %2137 = sub nsw i32 2129859010, %2136
  %2138 = bitcast i32 %2137 to float
  %2139 = fmul fast float %2138, %2134
  %2140 = call float @dx.op.unary.f32(i32 7, float %2139)  ; Saturate(value)
  br label %2141

; <label>:2141                                    ; preds = %2095, %2090
  %2142 = phi float [ %2140, %2095 ], [ %534, %2090 ]
  %2143 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1984, i32 undef)  ; BufferLoad(srv,index,wot)
  %2144 = extractvalue %dx.types.ResRet.i32 %2143, 0
  %2145 = and i32 %2144, 128
  %2146 = icmp eq i32 %2145, 0
  br i1 %2146, label %2163, label %2147

; <label>:2147                                    ; preds = %2141
  %2148 = add i32 %51, 480
  %2149 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2148, i32 undef)  ; BufferLoad(srv,index,wot)
  %2150 = extractvalue %dx.types.ResRet.i32 %2149, 0
  %2151 = add i32 %2150, 0
  %2152 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2151, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2153 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2152, %dx.types.Handle %108, float %2091, float %2092, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2154 = extractvalue %dx.types.ResRet.f32 %2153, 0
  %2155 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1984, i32 undef)  ; BufferLoad(srv,index,wot)
  %2156 = extractvalue %dx.types.ResRet.i32 %2155, 0
  %2157 = and i32 %2156, 524288
  %2158 = icmp ne i32 %2157, 0
  %2159 = fcmp fast ogt float %2154, 0x3FE0101020000000
  %2160 = select i1 %2159, float 1.000000e+00, float 0.000000e+00
  %2161 = select i1 %2158, float %2160, float %2154
  %2162 = fmul fast float %2161, %2142
  br label %2163

; <label>:2163                                    ; preds = %2147, %2141
  %2164 = phi float [ %2162, %2147 ], [ %2142, %2141 ]
  %2165 = fcmp fast ult float %2164, 0x3F70101020000000
  br i1 %2165, label %2795, label %2166

; <label>:2166                                    ; preds = %2163
  %2167 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1984, i32 undef)  ; BufferLoad(srv,index,wot)
  %2168 = extractvalue %dx.types.ResRet.i32 %2167, 0
  %2169 = and i32 %2168, 16
  %2170 = icmp eq i32 %2169, 0
  br i1 %2170, label %2369, label %2171

; <label>:2171                                    ; preds = %2166
  %2172 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2007, i32 undef)  ; BufferLoad(srv,index,wot)
  %2173 = extractvalue %dx.types.ResRet.i32 %2172, 0
  %2174 = add i32 %51, 432
  %2175 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2174, i32 undef)  ; BufferLoad(srv,index,wot)
  %2176 = extractvalue %dx.types.ResRet.i32 %2175, 0
  %2177 = add i32 %2176, 0
  %2178 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2177, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2179 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2178, %dx.types.Handle %107, float %2091, float %2092, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2180 = extractvalue %dx.types.ResRet.f32 %2179, 0
  %2181 = extractvalue %dx.types.ResRet.f32 %2179, 1
  %2182 = extractvalue %dx.types.ResRet.f32 %2179, 2
  %2183 = extractvalue %dx.types.ResRet.f32 %2179, 3
  %2184 = and i32 %2173, 255
  %2185 = uitofp i32 %2184 to float
  %2186 = lshr i32 %2173, 8
  %2187 = and i32 %2186, 255
  %2188 = uitofp i32 %2187 to float
  %2189 = fmul fast float %2183, %2185
  %2190 = fadd fast float %2189, %2188
  %2191 = fmul fast float %2190, 0x3F70101000000000
  %2192 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1984, i32 undef)  ; BufferLoad(srv,index,wot)
  %2193 = extractvalue %dx.types.ResRet.i32 %2192, 0
  %2194 = and i32 %2193, 512
  %2195 = icmp eq i32 %2194, 0
  br i1 %2195, label %2204, label %2196

; <label>:2196                                    ; preds = %2171
  %2197 = add i32 %51, 516
  %2198 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2197, i32 undef)  ; BufferLoad(srv,index,wot)
  %2199 = extractvalue %dx.types.ResRet.i32 %2198, 0
  %2200 = add i32 %2199, 0
  %2201 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2200, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2202 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2201, %dx.types.Handle %108, float %2091, float %2092, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2203 = extractvalue %dx.types.ResRet.f32 %2202, 0
  br label %2204

; <label>:2204                                    ; preds = %2196, %2171
  %2205 = phi float [ %2203, %2196 ], [ 1.000000e+00, %2171 ]
  %2206 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1984, i32 undef)  ; BufferLoad(srv,index,wot)
  %2207 = extractvalue %dx.types.ResRet.i32 %2206, 0
  %2208 = and i32 %2207, 33554432
  %2209 = icmp eq i32 %2208, 0
  br i1 %2209, label %2316, label %2210

; <label>:2210                                    ; preds = %2204
  %2211 = add i32 %51, 256
  %2212 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2211, i32 undef)  ; BufferLoad(srv,index,wot)
  %2213 = extractvalue %dx.types.ResRet.i32 %2212, 0
  %2214 = and i32 %2213, 65535
  %2215 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2214)  ; LegacyF16ToF32(value)
  %2216 = lshr i32 %2213, 16
  %2217 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2216)  ; LegacyF16ToF32(value)
  %2218 = add i32 %51, 260
  %2219 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2218, i32 undef)  ; BufferLoad(srv,index,wot)
  %2220 = extractvalue %dx.types.ResRet.i32 %2219, 0
  %2221 = and i32 %2220, 65535
  %2222 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2221)  ; LegacyF16ToF32(value)
  %2223 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %404, i32 undef)  ; BufferLoad(srv,index,wot)
  %2224 = extractvalue %dx.types.ResRet.i32 %2223, 0
  %2225 = lshr i32 %2224, 24
  %2226 = uitofp i32 %2225 to float
  %2227 = fmul fast float %2226, 0x3F70101020000000
  %2228 = and i32 %2224, 255
  %2229 = uitofp i32 %2228 to float
  %2230 = fmul fast float %2229, 0x3F70101020000000
  %2231 = lshr i32 %2224, 8
  %2232 = and i32 %2231, 255
  %2233 = uitofp i32 %2232 to float
  %2234 = fmul fast float %2233, 0x3F70101020000000
  %2235 = lshr i32 %2224, 16
  %2236 = and i32 %2235, 255
  %2237 = uitofp i32 %2236 to float
  %2238 = fmul fast float %2237, 0x3F70101020000000
  %2239 = add i32 %51, 252
  %2240 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2239, i32 undef)  ; BufferLoad(srv,index,wot)
  %2241 = extractvalue %dx.types.ResRet.i32 %2240, 0
  %2242 = lshr i32 %2241, 24
  %2243 = uitofp i32 %2242 to float
  %2244 = fmul fast float %2243, 0x3F70101020000000
  %2245 = and i32 %2241, 255
  %2246 = uitofp i32 %2245 to float
  %2247 = fmul fast float %2246, 0x3F70101020000000
  %2248 = lshr i32 %2241, 8
  %2249 = and i32 %2248, 255
  %2250 = uitofp i32 %2249 to float
  %2251 = fmul fast float %2250, 0x3F70101020000000
  %2252 = lshr i32 %2241, 16
  %2253 = and i32 %2252, 255
  %2254 = uitofp i32 %2253 to float
  %2255 = fmul fast float %2254, 0x3F70101020000000
  %2256 = bitcast float %2180 to i32
  %2257 = ashr i32 %2256, 1
  %2258 = sub nsw i32 1597463174, %2257
  %2259 = bitcast i32 %2258 to float
  %2260 = fmul fast float %2180, 5.000000e-01
  %2261 = fmul fast float %2259, %2259
  %2262 = fmul fast float %2261, %2260
  %2263 = fsub fast float 1.500000e+00, %2262
  %2264 = fmul fast float %2259, %2180
  %2265 = fmul fast float %2264, %2263
  %2266 = bitcast float %2181 to i32
  %2267 = ashr i32 %2266, 1
  %2268 = sub nsw i32 1597463174, %2267
  %2269 = bitcast i32 %2268 to float
  %2270 = fmul fast float %2181, 5.000000e-01
  %2271 = fmul fast float %2269, %2269
  %2272 = fmul fast float %2271, %2270
  %2273 = fsub fast float 1.500000e+00, %2272
  %2274 = fmul fast float %2269, %2181
  %2275 = fmul fast float %2274, %2273
  %2276 = bitcast float %2182 to i32
  %2277 = ashr i32 %2276, 1
  %2278 = sub nsw i32 1597463174, %2277
  %2279 = bitcast i32 %2278 to float
  %2280 = fmul fast float %2182, 5.000000e-01
  %2281 = fmul fast float %2279, %2279
  %2282 = fmul fast float %2281, %2280
  %2283 = fsub fast float 1.500000e+00, %2282
  %2284 = fmul fast float %2279, %2182
  %2285 = fmul fast float %2284, %2283
  %2286 = fsub fast float %2265, %2247
  %2287 = fsub fast float %2275, %2251
  %2288 = fsub fast float %2285, %2255
  %2289 = fmul fast float %2286, %2215
  %2290 = fmul fast float %2287, %2217
  %2291 = fmul fast float %2288, %2222
  %2292 = fadd fast float %2289, %2230
  %2293 = fadd fast float %2290, %2234
  %2294 = fadd fast float %2291, %2238
  %2295 = call float @dx.op.unary.f32(i32 7, float %2292)  ; Saturate(value)
  %2296 = call float @dx.op.unary.f32(i32 7, float %2293)  ; Saturate(value)
  %2297 = call float @dx.op.unary.f32(i32 7, float %2294)  ; Saturate(value)
  %2298 = fmul fast float %2295, %2295
  %2299 = fmul fast float %2296, %2296
  %2300 = fmul fast float %2297, %2297
  %2301 = fsub fast float %2298, %2180
  %2302 = fsub fast float %2299, %2181
  %2303 = fsub fast float %2300, %2182
  %2304 = fmul fast float %2301, %2205
  %2305 = fmul fast float %2302, %2205
  %2306 = fmul fast float %2303, %2205
  %2307 = fadd fast float %2304, %2180
  %2308 = fadd fast float %2305, %2181
  %2309 = fadd fast float %2306, %2182
  %2310 = fadd fast float %2227, %2191
  %2311 = fsub fast float %2310, %2244
  %2312 = call float @dx.op.unary.f32(i32 7, float %2311)  ; Saturate(value)
  %2313 = fsub fast float %2312, %2191
  %2314 = fmul fast float %2313, %2205
  %2315 = fadd fast float %2314, %2191
  br label %2369

; <label>:2316                                    ; preds = %2204
  %2317 = and i32 %2207, 134217728
  %2318 = icmp eq i32 %2317, 0
  br i1 %2318, label %2353, label %2319

; <label>:2319                                    ; preds = %2316
  %2320 = call float @dx.op.unary.f32(i32 24, float %409)  ; Sqrt(value)
  %2321 = call float @dx.op.unary.f32(i32 24, float %413)  ; Sqrt(value)
  %2322 = call float @dx.op.unary.f32(i32 24, float %417)  ; Sqrt(value)
  %2323 = fadd fast float %2320, -5.000000e-01
  %2324 = fadd fast float %2321, -5.000000e-01
  %2325 = fadd fast float %2322, -5.000000e-01
  %2326 = fmul fast float %2323, %2205
  %2327 = fmul fast float %2324, %2205
  %2328 = fmul fast float %2325, %2205
  %2329 = fadd fast float %2326, 5.000000e-01
  %2330 = fadd fast float %2327, 5.000000e-01
  %2331 = fadd fast float %2328, 5.000000e-01
  %2332 = call float @dx.op.unary.f32(i32 24, float %2180)  ; Sqrt(value)
  %2333 = call float @dx.op.unary.f32(i32 24, float %2181)  ; Sqrt(value)
  %2334 = call float @dx.op.unary.f32(i32 24, float %2182)  ; Sqrt(value)
  %2335 = fmul fast float %2329, 2.000000e+00
  %2336 = fsub fast float 1.000000e+00, %2335
  %2337 = fmul fast float %2336, %2332
  %2338 = fadd fast float %2337, %2335
  %2339 = fmul fast float %2338, %2332
  %2340 = fmul fast float %2330, 2.000000e+00
  %2341 = fsub fast float 1.000000e+00, %2340
  %2342 = fmul fast float %2341, %2333
  %2343 = fadd fast float %2342, %2340
  %2344 = fmul fast float %2343, %2333
  %2345 = fmul fast float %2331, 2.000000e+00
  %2346 = fsub fast float 1.000000e+00, %2345
  %2347 = fmul fast float %2346, %2334
  %2348 = fadd fast float %2347, %2345
  %2349 = fmul fast float %2348, %2334
  %2350 = fmul fast float %2339, %2339
  %2351 = fmul fast float %2344, %2344
  %2352 = fmul fast float %2349, %2349
  br label %2369

; <label>:2353                                    ; preds = %2316
  %2354 = fmul fast float %409, %409
  %2355 = fmul fast float %413, %413
  %2356 = fmul fast float %417, %417
  %2357 = fadd fast float %2354, -1.000000e+00
  %2358 = fadd fast float %2355, -1.000000e+00
  %2359 = fadd fast float %2356, -1.000000e+00
  %2360 = fmul fast float %2205, %2357
  %2361 = fmul fast float %2205, %2358
  %2362 = fmul fast float %2205, %2359
  %2363 = fadd fast float %2360, 1.000000e+00
  %2364 = fadd fast float %2361, 1.000000e+00
  %2365 = fadd fast float %2362, 1.000000e+00
  %2366 = fmul fast float %2363, %2180
  %2367 = fmul fast float %2364, %2181
  %2368 = fmul fast float %2365, %2182
  br label %2369

; <label>:2369                                    ; preds = %2353, %2319, %2210, %2166
  %2370 = phi float [ %2315, %2210 ], [ %2191, %2319 ], [ %2191, %2353 ], [ 0x3FA23C0BE0000000, %2166 ]
  %2371 = phi float [ %2307, %2210 ], [ %2350, %2319 ], [ %2366, %2353 ], [ 1.000000e+00, %2166 ]
  %2372 = phi float [ %2308, %2210 ], [ %2351, %2319 ], [ %2367, %2353 ], [ 1.000000e+00, %2166 ]
  %2373 = phi float [ %2309, %2210 ], [ %2352, %2319 ], [ %2368, %2353 ], [ 1.000000e+00, %2166 ]
  %2374 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2375 = extractvalue %dx.types.CBufRet.i32 %2374, 1
  %2376 = and i32 %2375, 1
  %2377 = icmp ne i32 %2376, 0
  %2378 = add i32 %51, 356
  %2379 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2378, i32 undef)  ; BufferLoad(srv,index,wot)
  %2380 = extractvalue %dx.types.ResRet.i32 %2379, 0
  %2381 = and i32 %2380, 32
  %2382 = icmp ne i32 %2381, 0
  %2383 = and i1 %2377, %2382
  %2384 = select i1 %2383, float 1.000000e+00, float %2371
  %2385 = select i1 %2383, float 0x3FD3333340000000, float %2372
  %2386 = select i1 %2383, float 0x3FD3333340000000, float %2373
  %2387 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1984, i32 undef)  ; BufferLoad(srv,index,wot)
  %2388 = extractvalue %dx.types.ResRet.i32 %2387, 0
  %2389 = and i32 %2388, 32
  %2390 = icmp eq i32 %2389, 0
  br i1 %2390, label %2463, label %2391

; <label>:2391                                    ; preds = %2369
  %2392 = add i32 %51, 124
  %2393 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2392, i32 undef)  ; BufferLoad(srv,index,wot)
  %2394 = extractvalue %dx.types.ResRet.i32 %2393, 0
  %2395 = add i32 %51, 448
  %2396 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2395, i32 undef)  ; BufferLoad(srv,index,wot)
  %2397 = extractvalue %dx.types.ResRet.i32 %2396, 0
  %2398 = add i32 %2397, 0
  %2399 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2398, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2400 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2399, %dx.types.Handle %107, float %2091, float %2092, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2401 = extractvalue %dx.types.ResRet.f32 %2400, 0
  %2402 = extractvalue %dx.types.ResRet.f32 %2400, 1
  %2403 = extractvalue %dx.types.ResRet.f32 %2400, 2
  %2404 = extractvalue %dx.types.ResRet.f32 %2400, 3
  %2405 = and i32 %2394, 255
  %2406 = uitofp i32 %2405 to float
  %2407 = lshr i32 %2394, 8
  %2408 = and i32 %2407, 255
  %2409 = uitofp i32 %2408 to float
  %2410 = lshr i32 %2394, 16
  %2411 = and i32 %2410, 255
  %2412 = uitofp i32 %2411 to float
  %2413 = fmul fast float %2412, 0x3F70101000000000
  %2414 = fmul fast float %2401, %2406
  %2415 = fadd fast float %2414, %2409
  %2416 = fmul fast float %2415, 0x3F70101000000000
  %2417 = fadd fast float %2402, -5.000000e-01
  %2418 = fadd fast float %2404, -5.000000e-01
  %2419 = fmul fast float %2417, %2413
  %2420 = fmul fast float %2418, %2413
  %2421 = fadd fast float %2419, 5.000000e-01
  %2422 = fadd fast float %2420, 5.000000e-01
  %2423 = fmul fast float %2421, 2.000000e+00
  %2424 = fadd fast float %2423, -1.000000e+00
  %2425 = fmul fast float %2422, 2.000000e+00
  %2426 = fadd fast float %2425, -1.000000e+00
  %2427 = fadd fast float %2424, %2426
  %2428 = fmul fast float %2427, 5.000000e-01
  %2429 = fsub fast float %2424, %2426
  %2430 = fmul fast float %2429, 5.000000e-01
  %2431 = call float @dx.op.unary.f32(i32 6, float %2428)  ; FAbs(value)
  %2432 = fsub fast float 1.000000e+00, %2431
  %2433 = call float @dx.op.unary.f32(i32 6, float %2430)  ; FAbs(value)
  %2434 = fsub fast float %2432, %2433
  %2435 = call float @dx.op.dot3.f32(i32 55, float %2428, float %2430, float %2434, float %2428, float %2430, float %2434)  ; Dot3(ax,ay,az,bx,by,bz)
  %2436 = call float @dx.op.unary.f32(i32 25, float %2435)  ; Rsqrt(value)
  %2437 = fmul fast float %2428, %2436
  %2438 = fmul fast float %2430, %2436
  %2439 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1984, i32 undef)  ; BufferLoad(srv,index,wot)
  %2440 = extractvalue %dx.types.ResRet.i32 %2439, 0
  %2441 = and i32 %2440, 67108864
  %2442 = icmp eq i32 %2441, 0
  br i1 %2442, label %2459, label %2443

; <label>:2443                                    ; preds = %2391
  %2444 = add i32 %51, 312
  %2445 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2444, i32 undef)  ; BufferLoad(srv,index,wot)
  %2446 = extractvalue %dx.types.ResRet.i32 %2445, 0
  %2447 = and i32 %2446, 65535
  %2448 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2447)  ; LegacyF16ToF32(value)
  %2449 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2001, i32 undef)  ; BufferLoad(srv,index,wot)
  %2450 = extractvalue %dx.types.ResRet.i32 %2449, 0
  %2451 = and i32 %2450, 65535
  %2452 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2451)  ; LegacyF16ToF32(value)
  %2453 = lshr i32 %2446, 16
  %2454 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2453)  ; LegacyF16ToF32(value)
  %2455 = fsub fast float %2416, %2454
  %2456 = fmul fast float %2455, %2448
  %2457 = fadd fast float %2456, %2452
  %2458 = call float @dx.op.unary.f32(i32 7, float %2457)  ; Saturate(value)
  br label %2459

; <label>:2459                                    ; preds = %2443, %2391
  %2460 = phi float [ %2458, %2443 ], [ %2416, %2391 ]
  %2461 = call float @dx.op.dot2.f32(i32 54, float %2437, float %2438, float %1995, float %1996)  ; Dot2(ax,ay,bx,by)
  %2462 = call float @dx.op.dot2.f32(i32 54, float %2437, float %2438, float %1997, float %1998)  ; Dot2(ax,ay,bx,by)
  br label %2463

; <label>:2463                                    ; preds = %2459, %2369
  %2464 = phi float [ %2460, %2459 ], [ 0x3FD6666660000000, %2369 ]
  %2465 = phi float [ %2461, %2459 ], [ 0.000000e+00, %2369 ]
  %2466 = phi float [ %2462, %2459 ], [ 0.000000e+00, %2369 ]
  %2467 = phi float [ %2403, %2459 ], [ 1.000000e+00, %2369 ]
  %2468 = add i32 %51, 192
  %2469 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2468, i32 undef)  ; BufferLoad(srv,index,wot)
  %2470 = extractvalue %dx.types.ResRet.i32 %2469, 0
  %2471 = lshr i32 %2470, 22
  %2472 = shl nuw nsw i32 %2471, 5
  %2473 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2472)  ; LegacyF16ToF32(value)
  %2474 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1984, i32 undef)  ; BufferLoad(srv,index,wot)
  %2475 = extractvalue %dx.types.ResRet.i32 %2474, 0
  %2476 = and i32 %2475, 64
  %2477 = icmp eq i32 %2476, 0
  br i1 %2477, label %2511, label %2478

; <label>:2478                                    ; preds = %2463
  %2479 = add i32 %51, 464
  %2480 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2479, i32 undef)  ; BufferLoad(srv,index,wot)
  %2481 = extractvalue %dx.types.ResRet.i32 %2480, 0
  %2482 = add i32 %2481, 0
  %2483 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2482, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2484 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1984, i32 undef)  ; BufferLoad(srv,index,wot)
  %2485 = extractvalue %dx.types.ResRet.i32 %2484, 0
  %2486 = and i32 %2485, 131072
  %2487 = icmp eq i32 %2486, 0
  %2488 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2483, %dx.types.Handle %107, float %2091, float %2092, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2489 = extractvalue %dx.types.ResRet.f32 %2488, 0
  %2490 = extractvalue %dx.types.ResRet.f32 %2488, 1
  %2491 = extractvalue %dx.types.ResRet.f32 %2488, 2
  %2492 = fmul fast float %2489, %397
  %2493 = fmul fast float %2490, %400
  %2494 = fmul fast float %2491, %403
  br i1 %2487, label %2501, label %2495

; <label>:2495                                    ; preds = %2478
  %2496 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2497 = extractvalue %dx.types.CBufRet.f32 %2496, 0
  %2498 = fmul fast float %2497, %2492
  %2499 = fmul fast float %2497, %2493
  %2500 = fmul fast float %2497, %2494
  br label %2501

; <label>:2501                                    ; preds = %2495, %2478
  %2502 = phi float [ %2498, %2495 ], [ %2492, %2478 ]
  %2503 = phi float [ %2499, %2495 ], [ %2493, %2478 ]
  %2504 = phi float [ %2500, %2495 ], [ %2494, %2478 ]
  %2505 = fmul fast float %2502, %2473
  %2506 = select i1 %296, float %2505, float %2502
  %2507 = call float @dx.op.dot3.f32(i32 55, float %2506, float %2503, float %2504, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2508 = select i1 %296, float 0.000000e+00, float %2502
  %2509 = select i1 %296, float %2507, float %2503
  %2510 = select i1 %296, float 0.000000e+00, float %2504
  br label %2511

; <label>:2511                                    ; preds = %2501, %2463
  %2512 = phi float [ %2508, %2501 ], [ 0.000000e+00, %2463 ]
  %2513 = phi float [ %2509, %2501 ], [ 0.000000e+00, %2463 ]
  %2514 = phi float [ %2510, %2501 ], [ 0.000000e+00, %2463 ]
  %2515 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1984, i32 undef)  ; BufferLoad(srv,index,wot)
  %2516 = extractvalue %dx.types.ResRet.i32 %2515, 0
  %2517 = and i32 %2516, 10240
  %2518 = icmp eq i32 %2517, 0
  br i1 %2518, label %2563, label %2519

; <label>:2519                                    ; preds = %2511
  %2520 = add i32 %51, 532
  %2521 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2520, i32 undef)  ; BufferLoad(srv,index,wot)
  %2522 = extractvalue %dx.types.ResRet.i32 %2521, 0
  %2523 = add i32 %2522, 0
  %2524 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2523, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2525 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2524, %dx.types.Handle %108, float %2091, float %2092, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2526 = extractvalue %dx.types.ResRet.f32 %2525, 1
  %2527 = extractvalue %dx.types.ResRet.f32 %2525, 3
  %2528 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1984, i32 undef)  ; BufferLoad(srv,index,wot)
  %2529 = extractvalue %dx.types.ResRet.i32 %2528, 0
  %2530 = and i32 %2529, 1048576
  %2531 = icmp ne i32 %2530, 0
  %2532 = and i32 %2529, 8192
  %2533 = icmp eq i32 %2532, 0
  br i1 %2533, label %2549, label %2534

; <label>:2534                                    ; preds = %2519
  %2535 = extractvalue %dx.types.ResRet.f32 %2525, 2
  %2536 = select i1 %2531, float %2535, float %2526
  %2537 = extractvalue %dx.types.ResRet.f32 %2525, 0
  %2538 = select i1 %2531, float %2537, float %2526
  %2539 = add i32 %51, 128
  %2540 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2539, i32 undef)  ; BufferLoad(srv,index,wot)
  %2541 = extractvalue %dx.types.ResRet.i32 %2540, 0
  %2542 = lshr i32 %2541, 16
  %2543 = and i32 %2542, 255
  %2544 = uitofp i32 %2543 to float
  %2545 = fmul fast float %2544, 0x3F80101020000000
  %2546 = fmul fast float %2545, %2538
  %2547 = fmul fast float %2545, %2526
  %2548 = fmul fast float %2545, %2536
  br label %2549

; <label>:2549                                    ; preds = %2534, %2519
  %2550 = phi float [ %2546, %2534 ], [ 0.000000e+00, %2519 ]
  %2551 = phi float [ %2547, %2534 ], [ 0.000000e+00, %2519 ]
  %2552 = phi float [ %2548, %2534 ], [ 0.000000e+00, %2519 ]
  %2553 = and i32 %2529, 2048
  %2554 = icmp eq i32 %2553, 0
  br i1 %2554, label %2563, label %2555

; <label>:2555                                    ; preds = %2549
  %2556 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2468, i32 undef)  ; BufferLoad(srv,index,wot)
  %2557 = extractvalue %dx.types.ResRet.i32 %2556, 0
  %2558 = shl i32 %2557, 4
  %2559 = and i32 %2558, 32752
  %2560 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2559)  ; LegacyF16ToF32(value)
  %2561 = fmul fast float %2560, %2527
  %2562 = call float @dx.op.binary.f32(i32 35, float %2561, float 0x3F70101020000000)  ; FMax(a,b)
  br label %2563

; <label>:2563                                    ; preds = %2555, %2549, %2511
  %2564 = phi float [ %2550, %2555 ], [ %2550, %2549 ], [ 0.000000e+00, %2511 ]
  %2565 = phi float [ %2551, %2555 ], [ %2551, %2549 ], [ 0.000000e+00, %2511 ]
  %2566 = phi float [ %2552, %2555 ], [ %2552, %2549 ], [ 0.000000e+00, %2511 ]
  %2567 = phi float [ %2562, %2555 ], [ 0x3F70101020000000, %2549 ], [ 0x3F70101020000000, %2511 ]
  %2568 = add i32 %51, 128
  %2569 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2568, i32 undef)  ; BufferLoad(srv,index,wot)
  %2570 = extractvalue %dx.types.ResRet.i32 %2569, 0
  %2571 = and i32 %2570, 255
  %2572 = uitofp i32 %2571 to float
  %2573 = lshr i32 %2570, 8
  %2574 = and i32 %2573, 255
  %2575 = uitofp i32 %2574 to float
  %2576 = call float @dx.op.dot3.f32(i32 55, float %2384, float %2385, float %2386, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2577 = fmul fast float %2575, %2576
  %2578 = fadd fast float %2577, %2572
  %2579 = fmul fast float %2578, 0x3F70101020000000
  %2580 = call float @dx.op.unary.f32(i32 7, float %2579)  ; Saturate(value)
  br i1 %1983, label %2581, label %2589

; <label>:2581                                    ; preds = %2563
  %2582 = fsub fast float 1.000000e+00, %2164
  %2583 = fmul fast float %2582, %1968
  %2584 = fmul fast float %2582, %1969
  %2585 = fmul fast float %2582, %1970
  %2586 = fmul fast float %2582, %1971
  %2587 = fmul fast float %2582, %1972
  %2588 = fmul fast float %2582, %1973
  br label %2589

; <label>:2589                                    ; preds = %2581, %2563
  %2590 = phi float [ %2583, %2581 ], [ %1968, %2563 ]
  %2591 = phi float [ %2584, %2581 ], [ %1969, %2563 ]
  %2592 = phi float [ %2585, %2581 ], [ %1970, %2563 ]
  %2593 = phi float [ %2586, %2581 ], [ %1971, %2563 ]
  %2594 = phi float [ %2587, %2581 ], [ %1972, %2563 ]
  %2595 = phi float [ %2588, %2581 ], [ %1973, %2563 ]
  %2596 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1984, i32 undef)  ; BufferLoad(srv,index,wot)
  %2597 = extractvalue %dx.types.ResRet.i32 %2596, 0
  %2598 = and i32 %2597, 3
  %2599 = icmp eq i32 %2598, 3
  br i1 %2599, label %2678, label %2600

; <label>:2600                                    ; preds = %2589
  %2601 = and i32 %2597, 16
  %2602 = icmp ne i32 %2601, 0
  %2603 = select i1 %2602, float %2164, float 0.000000e+00
  %2604 = icmp eq i32 %2598, 0
  br i1 %2604, label %2605, label %2633

; <label>:2605                                    ; preds = %2600
  %2606 = and i32 %2597, 64
  %2607 = icmp ne i32 %2606, 0
  %2608 = select i1 %2607, float %2164, float 0.000000e+00
  %2609 = fsub fast float %2384, %2590
  %2610 = fsub fast float %2385, %2591
  %2611 = fsub fast float %2386, %2592
  %2612 = fmul fast float %2603, %2609
  %2613 = fmul fast float %2603, %2610
  %2614 = fmul fast float %2603, %2611
  %2615 = fadd fast float %2612, %2590
  %2616 = fadd fast float %2613, %2591
  %2617 = fadd fast float %2614, %2592
  %2618 = fsub fast float %2370, %1977
  %2619 = fmul fast float %2603, %2618
  %2620 = fadd fast float %2619, %1977
  %2621 = fsub fast float %2512, %2593
  %2622 = fsub fast float %2513, %2594
  %2623 = fsub fast float %2514, %2595
  %2624 = fmul fast float %2608, %2621
  %2625 = fmul fast float %2608, %2622
  %2626 = fmul fast float %2608, %2623
  %2627 = fadd fast float %2624, %2593
  %2628 = fadd fast float %2625, %2594
  %2629 = fadd fast float %2626, %2595
  %2630 = fsub fast float %2580, %1981
  %2631 = fmul fast float %2603, %2630
  %2632 = fadd fast float %2631, %1981
  br label %2678

; <label>:2633                                    ; preds = %2600
  %2634 = icmp eq i32 %2598, 1
  br i1 %2634, label %2635, label %2648

; <label>:2635                                    ; preds = %2633
  %2636 = fadd fast float %2384, -1.000000e+00
  %2637 = fadd fast float %2385, -1.000000e+00
  %2638 = fadd fast float %2386, -1.000000e+00
  %2639 = fmul fast float %2603, %2636
  %2640 = fmul fast float %2603, %2637
  %2641 = fmul fast float %2603, %2638
  %2642 = fadd fast float %2639, 1.000000e+00
  %2643 = fadd fast float %2640, 1.000000e+00
  %2644 = fadd fast float %2641, 1.000000e+00
  %2645 = fmul fast float %2642, %2590
  %2646 = fmul fast float %2643, %2591
  %2647 = fmul fast float %2644, %2592
  br label %2678

; <label>:2648                                    ; preds = %2633
  %2649 = icmp eq i32 %2598, 2
  br i1 %2649, label %2650, label %2678

; <label>:2650                                    ; preds = %2648
  %2651 = call float @dx.op.unary.f32(i32 24, float %2384)  ; Sqrt(value)
  %2652 = call float @dx.op.unary.f32(i32 24, float %2385)  ; Sqrt(value)
  %2653 = call float @dx.op.unary.f32(i32 24, float %2386)  ; Sqrt(value)
  %2654 = fadd fast float %2651, -5.000000e-01
  %2655 = fadd fast float %2652, -5.000000e-01
  %2656 = fadd fast float %2653, -5.000000e-01
  %2657 = fmul fast float %2654, %2603
  %2658 = fmul fast float %2655, %2603
  %2659 = fmul fast float %2656, %2603
  %2660 = fadd fast float %2657, 5.000000e-01
  %2661 = fadd fast float %2658, 5.000000e-01
  %2662 = fadd fast float %2659, 5.000000e-01
  %2663 = fmul fast float %2660, 2.000000e+00
  %2664 = fsub fast float 1.000000e+00, %2663
  %2665 = fmul fast float %2664, %2590
  %2666 = fadd fast float %2665, %2663
  %2667 = fmul fast float %2666, %2590
  %2668 = fmul fast float %2661, 2.000000e+00
  %2669 = fsub fast float 1.000000e+00, %2668
  %2670 = fmul fast float %2669, %2591
  %2671 = fadd fast float %2670, %2668
  %2672 = fmul fast float %2671, %2591
  %2673 = fmul fast float %2662, 2.000000e+00
  %2674 = fsub fast float 1.000000e+00, %2673
  %2675 = fmul fast float %2674, %2592
  %2676 = fadd fast float %2675, %2673
  %2677 = fmul fast float %2676, %2592
  br label %2678

; <label>:2678                                    ; preds = %2650, %2648, %2635, %2605, %2589
  %2679 = phi float [ %2590, %2589 ], [ %2667, %2650 ], [ %2590, %2648 ], [ %2645, %2635 ], [ %2615, %2605 ]
  %2680 = phi float [ %2591, %2589 ], [ %2672, %2650 ], [ %2591, %2648 ], [ %2646, %2635 ], [ %2616, %2605 ]
  %2681 = phi float [ %2592, %2589 ], [ %2677, %2650 ], [ %2592, %2648 ], [ %2647, %2635 ], [ %2617, %2605 ]
  %2682 = phi float [ %2593, %2589 ], [ %2593, %2650 ], [ %2593, %2648 ], [ %2593, %2635 ], [ %2627, %2605 ]
  %2683 = phi float [ %2594, %2589 ], [ %2594, %2650 ], [ %2594, %2648 ], [ %2594, %2635 ], [ %2628, %2605 ]
  %2684 = phi float [ %2595, %2589 ], [ %2595, %2650 ], [ %2595, %2648 ], [ %2595, %2635 ], [ %2629, %2605 ]
  %2685 = phi float [ %1977, %2589 ], [ %1977, %2650 ], [ %1977, %2648 ], [ %1977, %2635 ], [ %2620, %2605 ]
  %2686 = phi float [ %1981, %2589 ], [ %1981, %2650 ], [ %1981, %2648 ], [ %1981, %2635 ], [ %2632, %2605 ]
  %2687 = and i32 %2597, 12
  %2688 = icmp eq i32 %2687, 12
  br i1 %2688, label %2795, label %2689

; <label>:2689                                    ; preds = %2678
  %2690 = and i32 %2597, 2097184
  %2691 = icmp eq i32 %2690, 2097184
  %2692 = select i1 %2691, float %2164, float 0.000000e+00
  %2693 = and i32 %2597, 4194336
  %2694 = icmp eq i32 %2693, 4194336
  %2695 = select i1 %2694, float %2164, float 0.000000e+00
  %2696 = and i32 %2597, 8388640
  %2697 = icmp eq i32 %2696, 8388640
  %2698 = select i1 %2697, float %2164, float 0.000000e+00
  %2699 = and i32 %2597, 2048
  %2700 = icmp ne i32 %2699, 0
  %2701 = select i1 %2700, float %2164, float 0.000000e+00
  %2702 = and i32 %2597, 8192
  %2703 = icmp ne i32 %2702, 0
  %2704 = select i1 %2703, float %2164, float 0.000000e+00
  %2705 = icmp eq i32 %2687, 0
  br i1 %2705, label %2706, label %2731

; <label>:2706                                    ; preds = %2689
  %2707 = fsub fast float %2465, %1966
  %2708 = fsub fast float %2466, %1967
  %2709 = fmul fast float %2692, %2707
  %2710 = fmul fast float %2692, %2708
  %2711 = fadd fast float %2709, %1966
  %2712 = fadd fast float %2710, %1967
  %2713 = fsub fast float %2467, %1979
  %2714 = fmul fast float %2695, %2713
  %2715 = fadd fast float %2714, %1979
  %2716 = fsub fast float %2464, %1978
  %2717 = fmul fast float %2698, %2716
  %2718 = fadd fast float %2717, %1978
  %2719 = fsub fast float %2567, %1980
  %2720 = fmul fast float %2701, %2719
  %2721 = fadd fast float %2720, %1980
  %2722 = fsub fast float %2564, %1974
  %2723 = fsub fast float %2565, %1975
  %2724 = fsub fast float %2566, %1976
  %2725 = fmul fast float %2704, %2722
  %2726 = fmul fast float %2704, %2723
  %2727 = fmul fast float %2704, %2724
  %2728 = fadd fast float %2725, %1974
  %2729 = fadd fast float %2726, %1975
  %2730 = fadd fast float %2727, %1976
  br label %2795

; <label>:2731                                    ; preds = %2689
  %2732 = icmp eq i32 %2687, 4
  br i1 %2732, label %2733, label %2773

; <label>:2733                                    ; preds = %2731
  %2734 = fmul fast float %2692, %2465
  %2735 = fmul fast float %2692, %2466
  %2736 = fadd fast float %2734, %1966
  %2737 = fadd fast float %2735, %1967
  %2738 = call float @dx.op.binary.f32(i32 36, float %1979, float %2467)  ; FMin(a,b)
  %2739 = fsub fast float %2738, %1979
  %2740 = fmul fast float %2739, %2695
  %2741 = fadd fast float %2740, %1979
  %2742 = fadd fast float %2464, %1978
  %2743 = fmul fast float %2742, 0x3FF337FAE0000000
  %2744 = fmul fast float %1978, %1978
  %2745 = fmul fast float %2464, %2464
  %2746 = fadd fast float %2745, %2744
  %2747 = fmul fast float %2746, 0x3FE5152B00000000
  %2748 = fmul fast float %1978, 0xBFCC1F85E0000000
  %2749 = fmul fast float %2748, %2464
  %2750 = fadd fast float %2749, 0xBFE1363700000000
  %2751 = fadd fast float %2750, %2743
  %2752 = fsub fast float %2751, %2747
  %2753 = fmul fast float %2742, 0x3FBA6F0D00000000
  %2754 = fmul fast float %2746, 0x3FD0432880000000
  %2755 = fmul fast float %1978, 0xBFEF110800000000
  %2756 = fmul fast float %2755, %2464
  %2757 = fadd fast float %2756, 1.000000e+00
  %2758 = fsub fast float %2757, %2753
  %2759 = fadd fast float %2758, %2754
  %2760 = fdiv fast float %2752, %2759
  %2761 = call float @dx.op.unary.f32(i32 7, float %2760)  ; Saturate(value)
  %2762 = fsub fast float %2761, %1978
  %2763 = fmul fast float %2762, %2698
  %2764 = fadd fast float %2763, %1978
  %2765 = fmul fast float %2701, %2567
  %2766 = fadd fast float %2765, %1980
  %2767 = fmul fast float %2704, %2564
  %2768 = fmul fast float %2704, %2565
  %2769 = fmul fast float %2704, %2566
  %2770 = fadd fast float %2767, %1974
  %2771 = fadd fast float %2768, %1975
  %2772 = fadd fast float %2769, %1976
  br label %2795

; <label>:2773                                    ; preds = %2731
  %2774 = icmp eq i32 %2687, 8
  br i1 %2774, label %2775, label %2795

; <label>:2775                                    ; preds = %2773
  %2776 = fmul fast float %2692, %2465
  %2777 = fmul fast float %2692, %2466
  %2778 = fadd fast float %2776, %1966
  %2779 = fadd fast float %2777, %1967
  %2780 = call float @dx.op.binary.f32(i32 36, float %1979, float %2467)  ; FMin(a,b)
  %2781 = fsub fast float %2780, %1979
  %2782 = fmul fast float %2781, %2695
  %2783 = fadd fast float %2782, %1979
  %2784 = fsub fast float %2464, %1978
  %2785 = fmul fast float %2698, %2784
  %2786 = fadd fast float %2785, %1978
  %2787 = fmul fast float %2701, %2567
  %2788 = fadd fast float %2787, %1980
  %2789 = fmul fast float %2704, %2564
  %2790 = fmul fast float %2704, %2565
  %2791 = fmul fast float %2704, %2566
  %2792 = fadd fast float %2789, %1974
  %2793 = fadd fast float %2790, %1975
  %2794 = fadd fast float %2791, %1976
  br label %2795

; <label>:2795                                    ; preds = %2775, %2773, %2733, %2706, %2678, %2163, %1982, %1965
  %2796 = phi float [ %1966, %2678 ], [ %1966, %2163 ], [ %1966, %1965 ], [ %2778, %2775 ], [ %1966, %2773 ], [ %2736, %2733 ], [ %2711, %2706 ], [ %1966, %1982 ]
  %2797 = phi float [ %1967, %2678 ], [ %1967, %2163 ], [ %1967, %1965 ], [ %2779, %2775 ], [ %1967, %2773 ], [ %2737, %2733 ], [ %2712, %2706 ], [ %1967, %1982 ]
  %2798 = phi float [ %2679, %2678 ], [ %1968, %2163 ], [ %1968, %1965 ], [ %2679, %2775 ], [ %2679, %2773 ], [ %2679, %2733 ], [ %2679, %2706 ], [ %1968, %1982 ]
  %2799 = phi float [ %2680, %2678 ], [ %1969, %2163 ], [ %1969, %1965 ], [ %2680, %2775 ], [ %2680, %2773 ], [ %2680, %2733 ], [ %2680, %2706 ], [ %1969, %1982 ]
  %2800 = phi float [ %2681, %2678 ], [ %1970, %2163 ], [ %1970, %1965 ], [ %2681, %2775 ], [ %2681, %2773 ], [ %2681, %2733 ], [ %2681, %2706 ], [ %1970, %1982 ]
  %2801 = phi float [ %2682, %2678 ], [ %1971, %2163 ], [ %1971, %1965 ], [ %2682, %2775 ], [ %2682, %2773 ], [ %2682, %2733 ], [ %2682, %2706 ], [ %1971, %1982 ]
  %2802 = phi float [ %2683, %2678 ], [ %1972, %2163 ], [ %1972, %1965 ], [ %2683, %2775 ], [ %2683, %2773 ], [ %2683, %2733 ], [ %2683, %2706 ], [ %1972, %1982 ]
  %2803 = phi float [ %2684, %2678 ], [ %1973, %2163 ], [ %1973, %1965 ], [ %2684, %2775 ], [ %2684, %2773 ], [ %2684, %2733 ], [ %2684, %2706 ], [ %1973, %1982 ]
  %2804 = phi float [ %1974, %2678 ], [ %1974, %2163 ], [ %1974, %1965 ], [ %2792, %2775 ], [ %1974, %2773 ], [ %2770, %2733 ], [ %2728, %2706 ], [ %1974, %1982 ]
  %2805 = phi float [ %1975, %2678 ], [ %1975, %2163 ], [ %1975, %1965 ], [ %2793, %2775 ], [ %1975, %2773 ], [ %2771, %2733 ], [ %2729, %2706 ], [ %1975, %1982 ]
  %2806 = phi float [ %1976, %2678 ], [ %1976, %2163 ], [ %1976, %1965 ], [ %2794, %2775 ], [ %1976, %2773 ], [ %2772, %2733 ], [ %2730, %2706 ], [ %1976, %1982 ]
  %2807 = phi float [ %2685, %2678 ], [ %1977, %2163 ], [ %1977, %1965 ], [ %2685, %2775 ], [ %2685, %2773 ], [ %2685, %2733 ], [ %2685, %2706 ], [ %1977, %1982 ]
  %2808 = phi float [ %1978, %2678 ], [ %1978, %2163 ], [ %1978, %1965 ], [ %2786, %2775 ], [ %1978, %2773 ], [ %2764, %2733 ], [ %2718, %2706 ], [ %1978, %1982 ]
  %2809 = phi float [ %1979, %2678 ], [ %1979, %2163 ], [ %1979, %1965 ], [ %2783, %2775 ], [ %1979, %2773 ], [ %2741, %2733 ], [ %2715, %2706 ], [ %1979, %1982 ]
  %2810 = phi float [ %1980, %2678 ], [ %1980, %2163 ], [ %1980, %1965 ], [ %2788, %2775 ], [ %1980, %2773 ], [ %2766, %2733 ], [ %2721, %2706 ], [ %1980, %1982 ]
  %2811 = phi float [ %2686, %2678 ], [ %1981, %2163 ], [ %1981, %1965 ], [ %2686, %2775 ], [ %2686, %2773 ], [ %2686, %2733 ], [ %2686, %2706 ], [ %1981, %1982 ]
  br i1 %484, label %3625, label %2812

; <label>:2812                                    ; preds = %2795
  %2813 = icmp ult i32 %538, 4
  %2814 = add i32 %51, 72
  %2815 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2814, i32 undef)  ; BufferLoad(srv,index,wot)
  %2816 = extractvalue %dx.types.ResRet.i32 %2815, 0
  %2817 = add i32 %51, 76
  %2818 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2817, i32 undef)  ; BufferLoad(srv,index,wot)
  %2819 = extractvalue %dx.types.ResRet.i32 %2818, 0
  %2820 = or i32 %2819, %2816
  %2821 = icmp eq i32 %2820, 0
  br i1 %2821, label %3625, label %2822

; <label>:2822                                    ; preds = %2812
  %2823 = and i32 %2816, 262144
  %2824 = icmp ne i32 %2823, 0
  %2825 = select i1 %2824, float %57, float 1.000000e+00
  %2826 = select i1 %2824, float %58, float 0.000000e+00
  %2827 = select i1 %2824, float %59, float 0.000000e+00
  %2828 = select i1 %2824, float %60, float 1.000000e+00
  %2829 = select i1 %2824, float %61, float %89
  %2830 = select i1 %2824, float %62, float %90
  %2831 = add i32 %51, 332
  %2832 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2831, i32 undef)  ; BufferLoad(srv,index,wot)
  %2833 = extractvalue %dx.types.ResRet.i32 %2832, 0
  %2834 = lshr i32 %2833, 16
  %2835 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2834)  ; LegacyF16ToF32(value)
  %2836 = fmul fast float %2835, 0x3F50624DE0000000
  %2837 = add i32 %51, 136
  %2838 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2837, i32 undef)  ; BufferLoad(srv,index,wot)
  %2839 = extractvalue %dx.types.ResRet.i32 %2838, 0
  %2840 = lshr i32 %2839, 16
  %2841 = and i32 %2840, 255
  %2842 = lshr i32 %2839, 24
  %2843 = add i32 %51, 340
  %2844 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2843, i32 undef)  ; BufferLoad(srv,index,wot)
  %2845 = extractvalue %dx.types.ResRet.i32 %2844, 0
  %2846 = and i32 %2845, 65535
  %2847 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2846)  ; LegacyF16ToF32(value)
  %2848 = lshr i32 %2845, 16
  %2849 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2848)  ; LegacyF16ToF32(value)
  %2850 = add i32 %51, 80
  %2851 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2850, i32 undef)  ; BufferLoad(srv,index,wot)
  %2852 = extractvalue %dx.types.ResRet.i32 %2851, 0
  %2853 = lshr i32 %2852, 22
  %2854 = shl nuw nsw i32 %2853, 5
  %2855 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2854)  ; LegacyF16ToF32(value)
  %2856 = shl i32 %2852, 4
  %2857 = and i32 %2856, 32752
  %2858 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2857)  ; LegacyF16ToF32(value)
  %2859 = lshr i32 %2852, 7
  %2860 = and i32 %2859, 32752
  %2861 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2860)  ; LegacyF16ToF32(value)
  %2862 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2863 = extractvalue %dx.types.CBufRet.f32 %2862, 3
  %2864 = fmul fast float %2863, 1.000000e+03
  %2865 = fmul fast float %474, %2864
  %2866 = call float @dx.op.unary.f32(i32 22, float %2865)  ; Frc(value)
  %2867 = fadd fast float %2866, %464
  %2868 = fmul fast float %475, %2864
  %2869 = call float @dx.op.unary.f32(i32 22, float %2868)  ; Frc(value)
  %2870 = fadd fast float %2869, %466
  %2871 = fmul fast float %2836, %2864
  %2872 = call float @dx.op.unary.f32(i32 22, float %2871)  ; Frc(value)
  %2873 = fmul fast float %2872, 0x401921FB60000000
  %2874 = fadd fast float %2873, %2855
  %2875 = call float @dx.op.unary.f32(i32 13, float %2874)  ; Sin(value)
  %2876 = call float @dx.op.unary.f32(i32 12, float %2874)  ; Cos(value)
  %2877 = fsub fast float -0.000000e+00, %2875
  %2878 = fadd fast float %2829, -5.000000e-01
  %2879 = fadd fast float %2830, -5.000000e-01
  %2880 = fmul fast float %2847, %2878
  %2881 = fmul fast float %2849, %2879
  %2882 = fadd fast float %2880, 5.000000e-01
  %2883 = fadd fast float %2881, 5.000000e-01
  %2884 = fmul fast float %2858, %2882
  %2885 = fmul fast float %2861, %2883
  %2886 = fmul fast float %2876, %2884
  %2887 = call float @dx.op.tertiary.f32(i32 46, float %2877, float %2885, float %2886)  ; FMad(a,b,c)
  %2888 = fmul fast float %2875, %2884
  %2889 = call float @dx.op.tertiary.f32(i32 46, float %2876, float %2885, float %2888)  ; FMad(a,b,c)
  %2890 = fadd fast float %2867, %2887
  %2891 = fadd fast float %2870, %2889
  %2892 = icmp ugt i32 %2841, 1
  %2893 = icmp ugt i32 %2839, 33554431
  %2894 = or i1 %2893, %2892
  br i1 %2894, label %2895, label %2920

; <label>:2895                                    ; preds = %2822
  %2896 = add i32 %51, 276
  %2897 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2896, i32 undef)  ; BufferLoad(srv,index,wot)
  %2898 = extractvalue %dx.types.ResRet.i32 %2897, 0
  %2899 = lshr i32 %2898, 16
  %2900 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2899)  ; LegacyF16ToF32(value)
  %2901 = fmul fast float %2863, %2900
  %2902 = call float @dx.op.unary.f32(i32 22, float %2901)  ; Frc(value)
  %2903 = mul nuw nsw i32 %2841, %2842
  %2904 = uitofp i32 %2903 to float
  %2905 = fmul fast float %2902, %2904
  %2906 = call float @dx.op.unary.f32(i32 27, float %2905)  ; Round_ni(value)
  %2907 = fptoui float %2906 to i32
  %2908 = urem i32 %2907, %2841
  %2909 = udiv i32 %2907, %2842
  %2910 = call float @dx.op.unary.f32(i32 22, float %2890)  ; Frc(value)
  %2911 = call float @dx.op.unary.f32(i32 22, float %2891)  ; Frc(value)
  %2912 = uitofp i32 %2908 to float
  %2913 = uitofp i32 %2909 to float
  %2914 = fadd fast float %2910, %2912
  %2915 = fadd fast float %2911, %2913
  %2916 = uitofp i32 %2841 to float
  %2917 = uitofp i32 %2842 to float
  %2918 = fdiv fast float %2914, %2916
  %2919 = fdiv fast float %2915, %2917
  br label %2920

; <label>:2920                                    ; preds = %2895, %2822
  %2921 = phi float [ %2918, %2895 ], [ %2890, %2822 ]
  %2922 = phi float [ %2919, %2895 ], [ %2891, %2822 ]
  %2923 = and i32 %2816, 256
  %2924 = icmp eq i32 %2923, 0
  br i1 %2924, label %2971, label %2925

; <label>:2925                                    ; preds = %2920
  %2926 = add i32 %51, 500
  %2927 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2926, i32 undef)  ; BufferLoad(srv,index,wot)
  %2928 = extractvalue %dx.types.ResRet.i32 %2927, 0
  %2929 = add i32 %2928, 0
  %2930 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2929, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2931 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2930, %dx.types.Handle %108, float %2921, float %2922, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2932 = extractvalue %dx.types.ResRet.f32 %2931, 0
  %2933 = add i32 %51, 148
  %2934 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2933, i32 undef)  ; BufferLoad(srv,index,wot)
  %2935 = extractvalue %dx.types.ResRet.i32 %2934, 0
  %2936 = shl i32 %2935, 4
  %2937 = and i32 %2936, 32752
  %2938 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2937)  ; LegacyF16ToF32(value)
  %2939 = lshr i32 %2935, 7
  %2940 = and i32 %2939, 32752
  %2941 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2940)  ; LegacyF16ToF32(value)
  %2942 = fsub fast float 1.000000e+00, %533
  %2943 = call float @dx.op.binary.f32(i32 35, float %2942, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2944 = bitcast float %533 to i32
  %2945 = sitofp i32 %2944 to float
  %2946 = fadd fast float %2945, 0xC1CFBF8940000000
  %2947 = fmul fast float %2941, %2946
  %2948 = fadd fast float %2947, 0x41CFBF8940000000
  %2949 = fptosi float %2948 to i32
  %2950 = bitcast i32 %2949 to float
  %2951 = bitcast float %2943 to i32
  %2952 = sitofp i32 %2951 to float
  %2953 = fadd fast float %2952, 0xC1CFBF8940000000
  %2954 = fmul fast float %2953, %2941
  %2955 = fadd fast float %2954, 0x41CFBF8940000000
  %2956 = fptosi float %2955 to i32
  %2957 = bitcast i32 %2956 to float
  %2958 = fmul fast float %2950, %2938
  %2959 = fmul fast float %2957, %2938
  %2960 = fsub fast float %2943, %2958
  %2961 = fadd fast float %2959, %2943
  %2962 = call float @dx.op.unary.f32(i32 7, float %2960)  ; Saturate(value)
  %2963 = call float @dx.op.unary.f32(i32 7, float %2961)  ; Saturate(value)
  %2964 = fsub fast float %2932, %2962
  %2965 = fsub fast float %2963, %2962
  %2966 = bitcast float %2965 to i32
  %2967 = sub nsw i32 2129859010, %2966
  %2968 = bitcast i32 %2967 to float
  %2969 = fmul fast float %2968, %2964
  %2970 = call float @dx.op.unary.f32(i32 7, float %2969)  ; Saturate(value)
  br label %2971

; <label>:2971                                    ; preds = %2925, %2920
  %2972 = phi float [ %2970, %2925 ], [ %533, %2920 ]
  %2973 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2814, i32 undef)  ; BufferLoad(srv,index,wot)
  %2974 = extractvalue %dx.types.ResRet.i32 %2973, 0
  %2975 = and i32 %2974, 128
  %2976 = icmp eq i32 %2975, 0
  br i1 %2976, label %2993, label %2977

; <label>:2977                                    ; preds = %2971
  %2978 = add i32 %51, 484
  %2979 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2978, i32 undef)  ; BufferLoad(srv,index,wot)
  %2980 = extractvalue %dx.types.ResRet.i32 %2979, 0
  %2981 = add i32 %2980, 0
  %2982 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2981, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2983 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2982, %dx.types.Handle %108, float %2921, float %2922, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2984 = extractvalue %dx.types.ResRet.f32 %2983, 0
  %2985 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2814, i32 undef)  ; BufferLoad(srv,index,wot)
  %2986 = extractvalue %dx.types.ResRet.i32 %2985, 0
  %2987 = and i32 %2986, 524288
  %2988 = icmp ne i32 %2987, 0
  %2989 = fcmp fast ogt float %2984, 0x3FE0101020000000
  %2990 = select i1 %2989, float 1.000000e+00, float 0.000000e+00
  %2991 = select i1 %2988, float %2990, float %2984
  %2992 = fmul fast float %2991, %2972
  br label %2993

; <label>:2993                                    ; preds = %2977, %2971
  %2994 = phi float [ %2992, %2977 ], [ %2972, %2971 ]
  %2995 = fcmp fast ult float %2994, 0x3F70101020000000
  br i1 %2995, label %3625, label %2996

; <label>:2996                                    ; preds = %2993
  %2997 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2814, i32 undef)  ; BufferLoad(srv,index,wot)
  %2998 = extractvalue %dx.types.ResRet.i32 %2997, 0
  %2999 = and i32 %2998, 16
  %3000 = icmp eq i32 %2999, 0
  br i1 %3000, label %3199, label %3001

; <label>:3001                                    ; preds = %2996
  %3002 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2837, i32 undef)  ; BufferLoad(srv,index,wot)
  %3003 = extractvalue %dx.types.ResRet.i32 %3002, 0
  %3004 = add i32 %51, 436
  %3005 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3004, i32 undef)  ; BufferLoad(srv,index,wot)
  %3006 = extractvalue %dx.types.ResRet.i32 %3005, 0
  %3007 = add i32 %3006, 0
  %3008 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3007, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3009 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3008, %dx.types.Handle %107, float %2921, float %2922, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3010 = extractvalue %dx.types.ResRet.f32 %3009, 0
  %3011 = extractvalue %dx.types.ResRet.f32 %3009, 1
  %3012 = extractvalue %dx.types.ResRet.f32 %3009, 2
  %3013 = extractvalue %dx.types.ResRet.f32 %3009, 3
  %3014 = and i32 %3003, 255
  %3015 = uitofp i32 %3014 to float
  %3016 = lshr i32 %3003, 8
  %3017 = and i32 %3016, 255
  %3018 = uitofp i32 %3017 to float
  %3019 = fmul fast float %3013, %3015
  %3020 = fadd fast float %3019, %3018
  %3021 = fmul fast float %3020, 0x3F70101000000000
  %3022 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2814, i32 undef)  ; BufferLoad(srv,index,wot)
  %3023 = extractvalue %dx.types.ResRet.i32 %3022, 0
  %3024 = and i32 %3023, 512
  %3025 = icmp eq i32 %3024, 0
  br i1 %3025, label %3034, label %3026

; <label>:3026                                    ; preds = %3001
  %3027 = add i32 %51, 520
  %3028 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3027, i32 undef)  ; BufferLoad(srv,index,wot)
  %3029 = extractvalue %dx.types.ResRet.i32 %3028, 0
  %3030 = add i32 %3029, 0
  %3031 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3030, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3032 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3031, %dx.types.Handle %108, float %2921, float %2922, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3033 = extractvalue %dx.types.ResRet.f32 %3032, 0
  br label %3034

; <label>:3034                                    ; preds = %3026, %3001
  %3035 = phi float [ %3033, %3026 ], [ 1.000000e+00, %3001 ]
  %3036 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2814, i32 undef)  ; BufferLoad(srv,index,wot)
  %3037 = extractvalue %dx.types.ResRet.i32 %3036, 0
  %3038 = and i32 %3037, 33554432
  %3039 = icmp eq i32 %3038, 0
  br i1 %3039, label %3146, label %3040

; <label>:3040                                    ; preds = %3034
  %3041 = add i32 %51, 272
  %3042 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3041, i32 undef)  ; BufferLoad(srv,index,wot)
  %3043 = extractvalue %dx.types.ResRet.i32 %3042, 0
  %3044 = and i32 %3043, 65535
  %3045 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3044)  ; LegacyF16ToF32(value)
  %3046 = lshr i32 %3043, 16
  %3047 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3046)  ; LegacyF16ToF32(value)
  %3048 = add i32 %51, 276
  %3049 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3048, i32 undef)  ; BufferLoad(srv,index,wot)
  %3050 = extractvalue %dx.types.ResRet.i32 %3049, 0
  %3051 = and i32 %3050, 65535
  %3052 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3051)  ; LegacyF16ToF32(value)
  %3053 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %446, i32 undef)  ; BufferLoad(srv,index,wot)
  %3054 = extractvalue %dx.types.ResRet.i32 %3053, 0
  %3055 = lshr i32 %3054, 24
  %3056 = uitofp i32 %3055 to float
  %3057 = fmul fast float %3056, 0x3F70101020000000
  %3058 = and i32 %3054, 255
  %3059 = uitofp i32 %3058 to float
  %3060 = fmul fast float %3059, 0x3F70101020000000
  %3061 = lshr i32 %3054, 8
  %3062 = and i32 %3061, 255
  %3063 = uitofp i32 %3062 to float
  %3064 = fmul fast float %3063, 0x3F70101020000000
  %3065 = lshr i32 %3054, 16
  %3066 = and i32 %3065, 255
  %3067 = uitofp i32 %3066 to float
  %3068 = fmul fast float %3067, 0x3F70101020000000
  %3069 = add i32 %51, 268
  %3070 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3069, i32 undef)  ; BufferLoad(srv,index,wot)
  %3071 = extractvalue %dx.types.ResRet.i32 %3070, 0
  %3072 = lshr i32 %3071, 24
  %3073 = uitofp i32 %3072 to float
  %3074 = fmul fast float %3073, 0x3F70101020000000
  %3075 = and i32 %3071, 255
  %3076 = uitofp i32 %3075 to float
  %3077 = fmul fast float %3076, 0x3F70101020000000
  %3078 = lshr i32 %3071, 8
  %3079 = and i32 %3078, 255
  %3080 = uitofp i32 %3079 to float
  %3081 = fmul fast float %3080, 0x3F70101020000000
  %3082 = lshr i32 %3071, 16
  %3083 = and i32 %3082, 255
  %3084 = uitofp i32 %3083 to float
  %3085 = fmul fast float %3084, 0x3F70101020000000
  %3086 = bitcast float %3010 to i32
  %3087 = ashr i32 %3086, 1
  %3088 = sub nsw i32 1597463174, %3087
  %3089 = bitcast i32 %3088 to float
  %3090 = fmul fast float %3010, 5.000000e-01
  %3091 = fmul fast float %3089, %3089
  %3092 = fmul fast float %3091, %3090
  %3093 = fsub fast float 1.500000e+00, %3092
  %3094 = fmul fast float %3089, %3010
  %3095 = fmul fast float %3094, %3093
  %3096 = bitcast float %3011 to i32
  %3097 = ashr i32 %3096, 1
  %3098 = sub nsw i32 1597463174, %3097
  %3099 = bitcast i32 %3098 to float
  %3100 = fmul fast float %3011, 5.000000e-01
  %3101 = fmul fast float %3099, %3099
  %3102 = fmul fast float %3101, %3100
  %3103 = fsub fast float 1.500000e+00, %3102
  %3104 = fmul fast float %3099, %3011
  %3105 = fmul fast float %3104, %3103
  %3106 = bitcast float %3012 to i32
  %3107 = ashr i32 %3106, 1
  %3108 = sub nsw i32 1597463174, %3107
  %3109 = bitcast i32 %3108 to float
  %3110 = fmul fast float %3012, 5.000000e-01
  %3111 = fmul fast float %3109, %3109
  %3112 = fmul fast float %3111, %3110
  %3113 = fsub fast float 1.500000e+00, %3112
  %3114 = fmul fast float %3109, %3012
  %3115 = fmul fast float %3114, %3113
  %3116 = fsub fast float %3095, %3077
  %3117 = fsub fast float %3105, %3081
  %3118 = fsub fast float %3115, %3085
  %3119 = fmul fast float %3116, %3045
  %3120 = fmul fast float %3117, %3047
  %3121 = fmul fast float %3118, %3052
  %3122 = fadd fast float %3119, %3060
  %3123 = fadd fast float %3120, %3064
  %3124 = fadd fast float %3121, %3068
  %3125 = call float @dx.op.unary.f32(i32 7, float %3122)  ; Saturate(value)
  %3126 = call float @dx.op.unary.f32(i32 7, float %3123)  ; Saturate(value)
  %3127 = call float @dx.op.unary.f32(i32 7, float %3124)  ; Saturate(value)
  %3128 = fmul fast float %3125, %3125
  %3129 = fmul fast float %3126, %3126
  %3130 = fmul fast float %3127, %3127
  %3131 = fsub fast float %3128, %3010
  %3132 = fsub fast float %3129, %3011
  %3133 = fsub fast float %3130, %3012
  %3134 = fmul fast float %3131, %3035
  %3135 = fmul fast float %3132, %3035
  %3136 = fmul fast float %3133, %3035
  %3137 = fadd fast float %3134, %3010
  %3138 = fadd fast float %3135, %3011
  %3139 = fadd fast float %3136, %3012
  %3140 = fadd fast float %3057, %3021
  %3141 = fsub fast float %3140, %3074
  %3142 = call float @dx.op.unary.f32(i32 7, float %3141)  ; Saturate(value)
  %3143 = fsub fast float %3142, %3021
  %3144 = fmul fast float %3143, %3035
  %3145 = fadd fast float %3144, %3021
  br label %3199

; <label>:3146                                    ; preds = %3034
  %3147 = and i32 %3037, 134217728
  %3148 = icmp eq i32 %3147, 0
  br i1 %3148, label %3183, label %3149

; <label>:3149                                    ; preds = %3146
  %3150 = call float @dx.op.unary.f32(i32 24, float %451)  ; Sqrt(value)
  %3151 = call float @dx.op.unary.f32(i32 24, float %455)  ; Sqrt(value)
  %3152 = call float @dx.op.unary.f32(i32 24, float %459)  ; Sqrt(value)
  %3153 = fadd fast float %3150, -5.000000e-01
  %3154 = fadd fast float %3151, -5.000000e-01
  %3155 = fadd fast float %3152, -5.000000e-01
  %3156 = fmul fast float %3153, %3035
  %3157 = fmul fast float %3154, %3035
  %3158 = fmul fast float %3155, %3035
  %3159 = fadd fast float %3156, 5.000000e-01
  %3160 = fadd fast float %3157, 5.000000e-01
  %3161 = fadd fast float %3158, 5.000000e-01
  %3162 = call float @dx.op.unary.f32(i32 24, float %3010)  ; Sqrt(value)
  %3163 = call float @dx.op.unary.f32(i32 24, float %3011)  ; Sqrt(value)
  %3164 = call float @dx.op.unary.f32(i32 24, float %3012)  ; Sqrt(value)
  %3165 = fmul fast float %3159, 2.000000e+00
  %3166 = fsub fast float 1.000000e+00, %3165
  %3167 = fmul fast float %3166, %3162
  %3168 = fadd fast float %3167, %3165
  %3169 = fmul fast float %3168, %3162
  %3170 = fmul fast float %3160, 2.000000e+00
  %3171 = fsub fast float 1.000000e+00, %3170
  %3172 = fmul fast float %3171, %3163
  %3173 = fadd fast float %3172, %3170
  %3174 = fmul fast float %3173, %3163
  %3175 = fmul fast float %3161, 2.000000e+00
  %3176 = fsub fast float 1.000000e+00, %3175
  %3177 = fmul fast float %3176, %3164
  %3178 = fadd fast float %3177, %3175
  %3179 = fmul fast float %3178, %3164
  %3180 = fmul fast float %3169, %3169
  %3181 = fmul fast float %3174, %3174
  %3182 = fmul fast float %3179, %3179
  br label %3199

; <label>:3183                                    ; preds = %3146
  %3184 = fmul fast float %451, %451
  %3185 = fmul fast float %455, %455
  %3186 = fmul fast float %459, %459
  %3187 = fadd fast float %3184, -1.000000e+00
  %3188 = fadd fast float %3185, -1.000000e+00
  %3189 = fadd fast float %3186, -1.000000e+00
  %3190 = fmul fast float %3035, %3187
  %3191 = fmul fast float %3035, %3188
  %3192 = fmul fast float %3035, %3189
  %3193 = fadd fast float %3190, 1.000000e+00
  %3194 = fadd fast float %3191, 1.000000e+00
  %3195 = fadd fast float %3192, 1.000000e+00
  %3196 = fmul fast float %3193, %3010
  %3197 = fmul fast float %3194, %3011
  %3198 = fmul fast float %3195, %3012
  br label %3199

; <label>:3199                                    ; preds = %3183, %3149, %3040, %2996
  %3200 = phi float [ %3145, %3040 ], [ %3021, %3149 ], [ %3021, %3183 ], [ 0x3FA23C0BE0000000, %2996 ]
  %3201 = phi float [ %3137, %3040 ], [ %3180, %3149 ], [ %3196, %3183 ], [ 1.000000e+00, %2996 ]
  %3202 = phi float [ %3138, %3040 ], [ %3181, %3149 ], [ %3197, %3183 ], [ 1.000000e+00, %2996 ]
  %3203 = phi float [ %3139, %3040 ], [ %3182, %3149 ], [ %3198, %3183 ], [ 1.000000e+00, %2996 ]
  %3204 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3205 = extractvalue %dx.types.CBufRet.i32 %3204, 1
  %3206 = and i32 %3205, 1
  %3207 = icmp ne i32 %3206, 0
  %3208 = add i32 %51, 356
  %3209 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3208, i32 undef)  ; BufferLoad(srv,index,wot)
  %3210 = extractvalue %dx.types.ResRet.i32 %3209, 0
  %3211 = and i32 %3210, 32
  %3212 = icmp ne i32 %3211, 0
  %3213 = and i1 %3207, %3212
  %3214 = select i1 %3213, float 1.000000e+00, float %3201
  %3215 = select i1 %3213, float 0x3FD3333340000000, float %3202
  %3216 = select i1 %3213, float 0x3FD3333340000000, float %3203
  %3217 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2814, i32 undef)  ; BufferLoad(srv,index,wot)
  %3218 = extractvalue %dx.types.ResRet.i32 %3217, 0
  %3219 = and i32 %3218, 32
  %3220 = icmp eq i32 %3219, 0
  br i1 %3220, label %3293, label %3221

; <label>:3221                                    ; preds = %3199
  %3222 = add i32 %51, 140
  %3223 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3222, i32 undef)  ; BufferLoad(srv,index,wot)
  %3224 = extractvalue %dx.types.ResRet.i32 %3223, 0
  %3225 = add i32 %51, 452
  %3226 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3225, i32 undef)  ; BufferLoad(srv,index,wot)
  %3227 = extractvalue %dx.types.ResRet.i32 %3226, 0
  %3228 = add i32 %3227, 0
  %3229 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3228, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3230 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3229, %dx.types.Handle %107, float %2921, float %2922, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3231 = extractvalue %dx.types.ResRet.f32 %3230, 0
  %3232 = extractvalue %dx.types.ResRet.f32 %3230, 1
  %3233 = extractvalue %dx.types.ResRet.f32 %3230, 2
  %3234 = extractvalue %dx.types.ResRet.f32 %3230, 3
  %3235 = and i32 %3224, 255
  %3236 = uitofp i32 %3235 to float
  %3237 = lshr i32 %3224, 8
  %3238 = and i32 %3237, 255
  %3239 = uitofp i32 %3238 to float
  %3240 = lshr i32 %3224, 16
  %3241 = and i32 %3240, 255
  %3242 = uitofp i32 %3241 to float
  %3243 = fmul fast float %3242, 0x3F70101000000000
  %3244 = fmul fast float %3231, %3236
  %3245 = fadd fast float %3244, %3239
  %3246 = fmul fast float %3245, 0x3F70101000000000
  %3247 = fadd fast float %3232, -5.000000e-01
  %3248 = fadd fast float %3234, -5.000000e-01
  %3249 = fmul fast float %3247, %3243
  %3250 = fmul fast float %3248, %3243
  %3251 = fadd fast float %3249, 5.000000e-01
  %3252 = fadd fast float %3250, 5.000000e-01
  %3253 = fmul fast float %3251, 2.000000e+00
  %3254 = fadd fast float %3253, -1.000000e+00
  %3255 = fmul fast float %3252, 2.000000e+00
  %3256 = fadd fast float %3255, -1.000000e+00
  %3257 = fadd fast float %3254, %3256
  %3258 = fmul fast float %3257, 5.000000e-01
  %3259 = fsub fast float %3254, %3256
  %3260 = fmul fast float %3259, 5.000000e-01
  %3261 = call float @dx.op.unary.f32(i32 6, float %3258)  ; FAbs(value)
  %3262 = fsub fast float 1.000000e+00, %3261
  %3263 = call float @dx.op.unary.f32(i32 6, float %3260)  ; FAbs(value)
  %3264 = fsub fast float %3262, %3263
  %3265 = call float @dx.op.dot3.f32(i32 55, float %3258, float %3260, float %3264, float %3258, float %3260, float %3264)  ; Dot3(ax,ay,az,bx,by,bz)
  %3266 = call float @dx.op.unary.f32(i32 25, float %3265)  ; Rsqrt(value)
  %3267 = fmul fast float %3258, %3266
  %3268 = fmul fast float %3260, %3266
  %3269 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2814, i32 undef)  ; BufferLoad(srv,index,wot)
  %3270 = extractvalue %dx.types.ResRet.i32 %3269, 0
  %3271 = and i32 %3270, 67108864
  %3272 = icmp eq i32 %3271, 0
  br i1 %3272, label %3289, label %3273

; <label>:3273                                    ; preds = %3221
  %3274 = add i32 %51, 328
  %3275 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3274, i32 undef)  ; BufferLoad(srv,index,wot)
  %3276 = extractvalue %dx.types.ResRet.i32 %3275, 0
  %3277 = and i32 %3276, 65535
  %3278 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3277)  ; LegacyF16ToF32(value)
  %3279 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2831, i32 undef)  ; BufferLoad(srv,index,wot)
  %3280 = extractvalue %dx.types.ResRet.i32 %3279, 0
  %3281 = and i32 %3280, 65535
  %3282 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3281)  ; LegacyF16ToF32(value)
  %3283 = lshr i32 %3276, 16
  %3284 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3283)  ; LegacyF16ToF32(value)
  %3285 = fsub fast float %3246, %3284
  %3286 = fmul fast float %3285, %3278
  %3287 = fadd fast float %3286, %3282
  %3288 = call float @dx.op.unary.f32(i32 7, float %3287)  ; Saturate(value)
  br label %3289

; <label>:3289                                    ; preds = %3273, %3221
  %3290 = phi float [ %3288, %3273 ], [ %3246, %3221 ]
  %3291 = call float @dx.op.dot2.f32(i32 54, float %3267, float %3268, float %2825, float %2826)  ; Dot2(ax,ay,bx,by)
  %3292 = call float @dx.op.dot2.f32(i32 54, float %3267, float %3268, float %2827, float %2828)  ; Dot2(ax,ay,bx,by)
  br label %3293

; <label>:3293                                    ; preds = %3289, %3199
  %3294 = phi float [ %3290, %3289 ], [ 0x3FD6666660000000, %3199 ]
  %3295 = phi float [ %3291, %3289 ], [ 0.000000e+00, %3199 ]
  %3296 = phi float [ %3292, %3289 ], [ 0.000000e+00, %3199 ]
  %3297 = phi float [ %3233, %3289 ], [ 1.000000e+00, %3199 ]
  %3298 = add i32 %51, 208
  %3299 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3298, i32 undef)  ; BufferLoad(srv,index,wot)
  %3300 = extractvalue %dx.types.ResRet.i32 %3299, 0
  %3301 = lshr i32 %3300, 22
  %3302 = shl nuw nsw i32 %3301, 5
  %3303 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3302)  ; LegacyF16ToF32(value)
  %3304 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2814, i32 undef)  ; BufferLoad(srv,index,wot)
  %3305 = extractvalue %dx.types.ResRet.i32 %3304, 0
  %3306 = and i32 %3305, 64
  %3307 = icmp eq i32 %3306, 0
  br i1 %3307, label %3341, label %3308

; <label>:3308                                    ; preds = %3293
  %3309 = add i32 %51, 468
  %3310 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3309, i32 undef)  ; BufferLoad(srv,index,wot)
  %3311 = extractvalue %dx.types.ResRet.i32 %3310, 0
  %3312 = add i32 %3311, 0
  %3313 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3312, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3314 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2814, i32 undef)  ; BufferLoad(srv,index,wot)
  %3315 = extractvalue %dx.types.ResRet.i32 %3314, 0
  %3316 = and i32 %3315, 131072
  %3317 = icmp eq i32 %3316, 0
  %3318 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3313, %dx.types.Handle %107, float %2921, float %2922, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3319 = extractvalue %dx.types.ResRet.f32 %3318, 0
  %3320 = extractvalue %dx.types.ResRet.f32 %3318, 1
  %3321 = extractvalue %dx.types.ResRet.f32 %3318, 2
  %3322 = fmul fast float %3319, %439
  %3323 = fmul fast float %3320, %442
  %3324 = fmul fast float %3321, %445
  br i1 %3317, label %3331, label %3325

; <label>:3325                                    ; preds = %3308
  %3326 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3327 = extractvalue %dx.types.CBufRet.f32 %3326, 0
  %3328 = fmul fast float %3327, %3322
  %3329 = fmul fast float %3327, %3323
  %3330 = fmul fast float %3327, %3324
  br label %3331

; <label>:3331                                    ; preds = %3325, %3308
  %3332 = phi float [ %3328, %3325 ], [ %3322, %3308 ]
  %3333 = phi float [ %3329, %3325 ], [ %3323, %3308 ]
  %3334 = phi float [ %3330, %3325 ], [ %3324, %3308 ]
  %3335 = fmul fast float %3332, %3303
  %3336 = select i1 %296, float %3335, float %3332
  %3337 = call float @dx.op.dot3.f32(i32 55, float %3336, float %3333, float %3334, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3338 = select i1 %296, float 0.000000e+00, float %3332
  %3339 = select i1 %296, float %3337, float %3333
  %3340 = select i1 %296, float 0.000000e+00, float %3334
  br label %3341

; <label>:3341                                    ; preds = %3331, %3293
  %3342 = phi float [ %3338, %3331 ], [ 0.000000e+00, %3293 ]
  %3343 = phi float [ %3339, %3331 ], [ 0.000000e+00, %3293 ]
  %3344 = phi float [ %3340, %3331 ], [ 0.000000e+00, %3293 ]
  %3345 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2814, i32 undef)  ; BufferLoad(srv,index,wot)
  %3346 = extractvalue %dx.types.ResRet.i32 %3345, 0
  %3347 = and i32 %3346, 10240
  %3348 = icmp eq i32 %3347, 0
  br i1 %3348, label %3393, label %3349

; <label>:3349                                    ; preds = %3341
  %3350 = add i32 %51, 536
  %3351 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3350, i32 undef)  ; BufferLoad(srv,index,wot)
  %3352 = extractvalue %dx.types.ResRet.i32 %3351, 0
  %3353 = add i32 %3352, 0
  %3354 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3353, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3355 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3354, %dx.types.Handle %108, float %2921, float %2922, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3356 = extractvalue %dx.types.ResRet.f32 %3355, 1
  %3357 = extractvalue %dx.types.ResRet.f32 %3355, 3
  %3358 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2814, i32 undef)  ; BufferLoad(srv,index,wot)
  %3359 = extractvalue %dx.types.ResRet.i32 %3358, 0
  %3360 = and i32 %3359, 1048576
  %3361 = icmp ne i32 %3360, 0
  %3362 = and i32 %3359, 8192
  %3363 = icmp eq i32 %3362, 0
  br i1 %3363, label %3379, label %3364

; <label>:3364                                    ; preds = %3349
  %3365 = extractvalue %dx.types.ResRet.f32 %3355, 2
  %3366 = select i1 %3361, float %3365, float %3356
  %3367 = extractvalue %dx.types.ResRet.f32 %3355, 0
  %3368 = select i1 %3361, float %3367, float %3356
  %3369 = add i32 %51, 144
  %3370 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3369, i32 undef)  ; BufferLoad(srv,index,wot)
  %3371 = extractvalue %dx.types.ResRet.i32 %3370, 0
  %3372 = lshr i32 %3371, 16
  %3373 = and i32 %3372, 255
  %3374 = uitofp i32 %3373 to float
  %3375 = fmul fast float %3374, 0x3F80101020000000
  %3376 = fmul fast float %3375, %3368
  %3377 = fmul fast float %3375, %3356
  %3378 = fmul fast float %3375, %3366
  br label %3379

; <label>:3379                                    ; preds = %3364, %3349
  %3380 = phi float [ %3376, %3364 ], [ 0.000000e+00, %3349 ]
  %3381 = phi float [ %3377, %3364 ], [ 0.000000e+00, %3349 ]
  %3382 = phi float [ %3378, %3364 ], [ 0.000000e+00, %3349 ]
  %3383 = and i32 %3359, 2048
  %3384 = icmp eq i32 %3383, 0
  br i1 %3384, label %3393, label %3385

; <label>:3385                                    ; preds = %3379
  %3386 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3298, i32 undef)  ; BufferLoad(srv,index,wot)
  %3387 = extractvalue %dx.types.ResRet.i32 %3386, 0
  %3388 = shl i32 %3387, 4
  %3389 = and i32 %3388, 32752
  %3390 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3389)  ; LegacyF16ToF32(value)
  %3391 = fmul fast float %3390, %3357
  %3392 = call float @dx.op.binary.f32(i32 35, float %3391, float 0x3F70101020000000)  ; FMax(a,b)
  br label %3393

; <label>:3393                                    ; preds = %3385, %3379, %3341
  %3394 = phi float [ %3380, %3385 ], [ %3380, %3379 ], [ 0.000000e+00, %3341 ]
  %3395 = phi float [ %3381, %3385 ], [ %3381, %3379 ], [ 0.000000e+00, %3341 ]
  %3396 = phi float [ %3382, %3385 ], [ %3382, %3379 ], [ 0.000000e+00, %3341 ]
  %3397 = phi float [ %3392, %3385 ], [ 0x3F70101020000000, %3379 ], [ 0x3F70101020000000, %3341 ]
  %3398 = add i32 %51, 144
  %3399 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3398, i32 undef)  ; BufferLoad(srv,index,wot)
  %3400 = extractvalue %dx.types.ResRet.i32 %3399, 0
  %3401 = and i32 %3400, 255
  %3402 = uitofp i32 %3401 to float
  %3403 = lshr i32 %3400, 8
  %3404 = and i32 %3403, 255
  %3405 = uitofp i32 %3404 to float
  %3406 = call float @dx.op.dot3.f32(i32 55, float %3214, float %3215, float %3216, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3407 = fmul fast float %3405, %3406
  %3408 = fadd fast float %3407, %3402
  %3409 = fmul fast float %3408, 0x3F70101020000000
  %3410 = call float @dx.op.unary.f32(i32 7, float %3409)  ; Saturate(value)
  br i1 %2813, label %3411, label %3419

; <label>:3411                                    ; preds = %3393
  %3412 = fsub fast float 1.000000e+00, %2994
  %3413 = fmul fast float %3412, %2798
  %3414 = fmul fast float %3412, %2799
  %3415 = fmul fast float %3412, %2800
  %3416 = fmul fast float %3412, %2801
  %3417 = fmul fast float %3412, %2802
  %3418 = fmul fast float %3412, %2803
  br label %3419

; <label>:3419                                    ; preds = %3411, %3393
  %3420 = phi float [ %3413, %3411 ], [ %2798, %3393 ]
  %3421 = phi float [ %3414, %3411 ], [ %2799, %3393 ]
  %3422 = phi float [ %3415, %3411 ], [ %2800, %3393 ]
  %3423 = phi float [ %3416, %3411 ], [ %2801, %3393 ]
  %3424 = phi float [ %3417, %3411 ], [ %2802, %3393 ]
  %3425 = phi float [ %3418, %3411 ], [ %2803, %3393 ]
  %3426 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2814, i32 undef)  ; BufferLoad(srv,index,wot)
  %3427 = extractvalue %dx.types.ResRet.i32 %3426, 0
  %3428 = and i32 %3427, 3
  %3429 = icmp eq i32 %3428, 3
  br i1 %3429, label %3508, label %3430

; <label>:3430                                    ; preds = %3419
  %3431 = and i32 %3427, 16
  %3432 = icmp ne i32 %3431, 0
  %3433 = select i1 %3432, float %2994, float 0.000000e+00
  %3434 = icmp eq i32 %3428, 0
  br i1 %3434, label %3435, label %3463

; <label>:3435                                    ; preds = %3430
  %3436 = and i32 %3427, 64
  %3437 = icmp ne i32 %3436, 0
  %3438 = select i1 %3437, float %2994, float 0.000000e+00
  %3439 = fsub fast float %3214, %3420
  %3440 = fsub fast float %3215, %3421
  %3441 = fsub fast float %3216, %3422
  %3442 = fmul fast float %3433, %3439
  %3443 = fmul fast float %3433, %3440
  %3444 = fmul fast float %3433, %3441
  %3445 = fadd fast float %3442, %3420
  %3446 = fadd fast float %3443, %3421
  %3447 = fadd fast float %3444, %3422
  %3448 = fsub fast float %3200, %2807
  %3449 = fmul fast float %3433, %3448
  %3450 = fadd fast float %3449, %2807
  %3451 = fsub fast float %3342, %3423
  %3452 = fsub fast float %3343, %3424
  %3453 = fsub fast float %3344, %3425
  %3454 = fmul fast float %3438, %3451
  %3455 = fmul fast float %3438, %3452
  %3456 = fmul fast float %3438, %3453
  %3457 = fadd fast float %3454, %3423
  %3458 = fadd fast float %3455, %3424
  %3459 = fadd fast float %3456, %3425
  %3460 = fsub fast float %3410, %2811
  %3461 = fmul fast float %3433, %3460
  %3462 = fadd fast float %3461, %2811
  br label %3508

; <label>:3463                                    ; preds = %3430
  %3464 = icmp eq i32 %3428, 1
  br i1 %3464, label %3465, label %3478

; <label>:3465                                    ; preds = %3463
  %3466 = fadd fast float %3214, -1.000000e+00
  %3467 = fadd fast float %3215, -1.000000e+00
  %3468 = fadd fast float %3216, -1.000000e+00
  %3469 = fmul fast float %3433, %3466
  %3470 = fmul fast float %3433, %3467
  %3471 = fmul fast float %3433, %3468
  %3472 = fadd fast float %3469, 1.000000e+00
  %3473 = fadd fast float %3470, 1.000000e+00
  %3474 = fadd fast float %3471, 1.000000e+00
  %3475 = fmul fast float %3472, %3420
  %3476 = fmul fast float %3473, %3421
  %3477 = fmul fast float %3474, %3422
  br label %3508

; <label>:3478                                    ; preds = %3463
  %3479 = icmp eq i32 %3428, 2
  br i1 %3479, label %3480, label %3508

; <label>:3480                                    ; preds = %3478
  %3481 = call float @dx.op.unary.f32(i32 24, float %3214)  ; Sqrt(value)
  %3482 = call float @dx.op.unary.f32(i32 24, float %3215)  ; Sqrt(value)
  %3483 = call float @dx.op.unary.f32(i32 24, float %3216)  ; Sqrt(value)
  %3484 = fadd fast float %3481, -5.000000e-01
  %3485 = fadd fast float %3482, -5.000000e-01
  %3486 = fadd fast float %3483, -5.000000e-01
  %3487 = fmul fast float %3484, %3433
  %3488 = fmul fast float %3485, %3433
  %3489 = fmul fast float %3486, %3433
  %3490 = fadd fast float %3487, 5.000000e-01
  %3491 = fadd fast float %3488, 5.000000e-01
  %3492 = fadd fast float %3489, 5.000000e-01
  %3493 = fmul fast float %3490, 2.000000e+00
  %3494 = fsub fast float 1.000000e+00, %3493
  %3495 = fmul fast float %3494, %3420
  %3496 = fadd fast float %3495, %3493
  %3497 = fmul fast float %3496, %3420
  %3498 = fmul fast float %3491, 2.000000e+00
  %3499 = fsub fast float 1.000000e+00, %3498
  %3500 = fmul fast float %3499, %3421
  %3501 = fadd fast float %3500, %3498
  %3502 = fmul fast float %3501, %3421
  %3503 = fmul fast float %3492, 2.000000e+00
  %3504 = fsub fast float 1.000000e+00, %3503
  %3505 = fmul fast float %3504, %3422
  %3506 = fadd fast float %3505, %3503
  %3507 = fmul fast float %3506, %3422
  br label %3508

; <label>:3508                                    ; preds = %3480, %3478, %3465, %3435, %3419
  %3509 = phi float [ %3420, %3419 ], [ %3497, %3480 ], [ %3420, %3478 ], [ %3475, %3465 ], [ %3445, %3435 ]
  %3510 = phi float [ %3421, %3419 ], [ %3502, %3480 ], [ %3421, %3478 ], [ %3476, %3465 ], [ %3446, %3435 ]
  %3511 = phi float [ %3422, %3419 ], [ %3507, %3480 ], [ %3422, %3478 ], [ %3477, %3465 ], [ %3447, %3435 ]
  %3512 = phi float [ %3423, %3419 ], [ %3423, %3480 ], [ %3423, %3478 ], [ %3423, %3465 ], [ %3457, %3435 ]
  %3513 = phi float [ %3424, %3419 ], [ %3424, %3480 ], [ %3424, %3478 ], [ %3424, %3465 ], [ %3458, %3435 ]
  %3514 = phi float [ %3425, %3419 ], [ %3425, %3480 ], [ %3425, %3478 ], [ %3425, %3465 ], [ %3459, %3435 ]
  %3515 = phi float [ %2807, %3419 ], [ %2807, %3480 ], [ %2807, %3478 ], [ %2807, %3465 ], [ %3450, %3435 ]
  %3516 = phi float [ %2811, %3419 ], [ %2811, %3480 ], [ %2811, %3478 ], [ %2811, %3465 ], [ %3462, %3435 ]
  %3517 = and i32 %3427, 12
  %3518 = icmp eq i32 %3517, 12
  br i1 %3518, label %3625, label %3519

; <label>:3519                                    ; preds = %3508
  %3520 = and i32 %3427, 2097184
  %3521 = icmp eq i32 %3520, 2097184
  %3522 = select i1 %3521, float %2994, float 0.000000e+00
  %3523 = and i32 %3427, 4194336
  %3524 = icmp eq i32 %3523, 4194336
  %3525 = select i1 %3524, float %2994, float 0.000000e+00
  %3526 = and i32 %3427, 8388640
  %3527 = icmp eq i32 %3526, 8388640
  %3528 = select i1 %3527, float %2994, float 0.000000e+00
  %3529 = and i32 %3427, 2048
  %3530 = icmp ne i32 %3529, 0
  %3531 = select i1 %3530, float %2994, float 0.000000e+00
  %3532 = and i32 %3427, 8192
  %3533 = icmp ne i32 %3532, 0
  %3534 = select i1 %3533, float %2994, float 0.000000e+00
  %3535 = icmp eq i32 %3517, 0
  br i1 %3535, label %3536, label %3561

; <label>:3536                                    ; preds = %3519
  %3537 = fsub fast float %3295, %2796
  %3538 = fsub fast float %3296, %2797
  %3539 = fmul fast float %3522, %3537
  %3540 = fmul fast float %3522, %3538
  %3541 = fadd fast float %3539, %2796
  %3542 = fadd fast float %3540, %2797
  %3543 = fsub fast float %3297, %2809
  %3544 = fmul fast float %3525, %3543
  %3545 = fadd fast float %3544, %2809
  %3546 = fsub fast float %3294, %2808
  %3547 = fmul fast float %3528, %3546
  %3548 = fadd fast float %3547, %2808
  %3549 = fsub fast float %3397, %2810
  %3550 = fmul fast float %3531, %3549
  %3551 = fadd fast float %3550, %2810
  %3552 = fsub fast float %3394, %2804
  %3553 = fsub fast float %3395, %2805
  %3554 = fsub fast float %3396, %2806
  %3555 = fmul fast float %3534, %3552
  %3556 = fmul fast float %3534, %3553
  %3557 = fmul fast float %3534, %3554
  %3558 = fadd fast float %3555, %2804
  %3559 = fadd fast float %3556, %2805
  %3560 = fadd fast float %3557, %2806
  br label %3625

; <label>:3561                                    ; preds = %3519
  %3562 = icmp eq i32 %3517, 4
  br i1 %3562, label %3563, label %3603

; <label>:3563                                    ; preds = %3561
  %3564 = fmul fast float %3522, %3295
  %3565 = fmul fast float %3522, %3296
  %3566 = fadd fast float %3564, %2796
  %3567 = fadd fast float %3565, %2797
  %3568 = call float @dx.op.binary.f32(i32 36, float %2809, float %3297)  ; FMin(a,b)
  %3569 = fsub fast float %3568, %2809
  %3570 = fmul fast float %3569, %3525
  %3571 = fadd fast float %3570, %2809
  %3572 = fadd fast float %3294, %2808
  %3573 = fmul fast float %3572, 0x3FF337FAE0000000
  %3574 = fmul fast float %2808, %2808
  %3575 = fmul fast float %3294, %3294
  %3576 = fadd fast float %3575, %3574
  %3577 = fmul fast float %3576, 0x3FE5152B00000000
  %3578 = fmul fast float %2808, 0xBFCC1F85E0000000
  %3579 = fmul fast float %3578, %3294
  %3580 = fadd fast float %3579, 0xBFE1363700000000
  %3581 = fadd fast float %3580, %3573
  %3582 = fsub fast float %3581, %3577
  %3583 = fmul fast float %3572, 0x3FBA6F0D00000000
  %3584 = fmul fast float %3576, 0x3FD0432880000000
  %3585 = fmul fast float %2808, 0xBFEF110800000000
  %3586 = fmul fast float %3585, %3294
  %3587 = fadd fast float %3586, 1.000000e+00
  %3588 = fsub fast float %3587, %3583
  %3589 = fadd fast float %3588, %3584
  %3590 = fdiv fast float %3582, %3589
  %3591 = call float @dx.op.unary.f32(i32 7, float %3590)  ; Saturate(value)
  %3592 = fsub fast float %3591, %2808
  %3593 = fmul fast float %3592, %3528
  %3594 = fadd fast float %3593, %2808
  %3595 = fmul fast float %3531, %3397
  %3596 = fadd fast float %3595, %2810
  %3597 = fmul fast float %3534, %3394
  %3598 = fmul fast float %3534, %3395
  %3599 = fmul fast float %3534, %3396
  %3600 = fadd fast float %3597, %2804
  %3601 = fadd fast float %3598, %2805
  %3602 = fadd fast float %3599, %2806
  br label %3625

; <label>:3603                                    ; preds = %3561
  %3604 = icmp eq i32 %3517, 8
  br i1 %3604, label %3605, label %3625

; <label>:3605                                    ; preds = %3603
  %3606 = fmul fast float %3522, %3295
  %3607 = fmul fast float %3522, %3296
  %3608 = fadd fast float %3606, %2796
  %3609 = fadd fast float %3607, %2797
  %3610 = call float @dx.op.binary.f32(i32 36, float %2809, float %3297)  ; FMin(a,b)
  %3611 = fsub fast float %3610, %2809
  %3612 = fmul fast float %3611, %3525
  %3613 = fadd fast float %3612, %2809
  %3614 = fsub fast float %3294, %2808
  %3615 = fmul fast float %3528, %3614
  %3616 = fadd fast float %3615, %2808
  %3617 = fmul fast float %3531, %3397
  %3618 = fadd fast float %3617, %2810
  %3619 = fmul fast float %3534, %3394
  %3620 = fmul fast float %3534, %3395
  %3621 = fmul fast float %3534, %3396
  %3622 = fadd fast float %3619, %2804
  %3623 = fadd fast float %3620, %2805
  %3624 = fadd fast float %3621, %2806
  br label %3625

; <label>:3625                                    ; preds = %3605, %3603, %3563, %3536, %3508, %2993, %2812, %2795
  %3626 = phi float [ %2796, %3508 ], [ %2796, %2993 ], [ %2796, %2795 ], [ %2796, %2812 ], [ %3541, %3536 ], [ %3566, %3563 ], [ %2796, %3603 ], [ %3608, %3605 ]
  %3627 = phi float [ %2797, %3508 ], [ %2797, %2993 ], [ %2797, %2795 ], [ %2797, %2812 ], [ %3542, %3536 ], [ %3567, %3563 ], [ %2797, %3603 ], [ %3609, %3605 ]
  %3628 = phi float [ %3509, %3508 ], [ %2798, %2993 ], [ %2798, %2795 ], [ %2798, %2812 ], [ %3509, %3536 ], [ %3509, %3563 ], [ %3509, %3603 ], [ %3509, %3605 ]
  %3629 = phi float [ %3510, %3508 ], [ %2799, %2993 ], [ %2799, %2795 ], [ %2799, %2812 ], [ %3510, %3536 ], [ %3510, %3563 ], [ %3510, %3603 ], [ %3510, %3605 ]
  %3630 = phi float [ %3511, %3508 ], [ %2800, %2993 ], [ %2800, %2795 ], [ %2800, %2812 ], [ %3511, %3536 ], [ %3511, %3563 ], [ %3511, %3603 ], [ %3511, %3605 ]
  %3631 = phi float [ %3512, %3508 ], [ %2801, %2993 ], [ %2801, %2795 ], [ %2801, %2812 ], [ %3512, %3536 ], [ %3512, %3563 ], [ %3512, %3603 ], [ %3512, %3605 ]
  %3632 = phi float [ %3513, %3508 ], [ %2802, %2993 ], [ %2802, %2795 ], [ %2802, %2812 ], [ %3513, %3536 ], [ %3513, %3563 ], [ %3513, %3603 ], [ %3513, %3605 ]
  %3633 = phi float [ %3514, %3508 ], [ %2803, %2993 ], [ %2803, %2795 ], [ %2803, %2812 ], [ %3514, %3536 ], [ %3514, %3563 ], [ %3514, %3603 ], [ %3514, %3605 ]
  %3634 = phi float [ %2804, %3508 ], [ %2804, %2993 ], [ %2804, %2795 ], [ %2804, %2812 ], [ %3558, %3536 ], [ %3600, %3563 ], [ %2804, %3603 ], [ %3622, %3605 ]
  %3635 = phi float [ %2805, %3508 ], [ %2805, %2993 ], [ %2805, %2795 ], [ %2805, %2812 ], [ %3559, %3536 ], [ %3601, %3563 ], [ %2805, %3603 ], [ %3623, %3605 ]
  %3636 = phi float [ %2806, %3508 ], [ %2806, %2993 ], [ %2806, %2795 ], [ %2806, %2812 ], [ %3560, %3536 ], [ %3602, %3563 ], [ %2806, %3603 ], [ %3624, %3605 ]
  %3637 = phi float [ %3515, %3508 ], [ %2807, %2993 ], [ %2807, %2795 ], [ %2807, %2812 ], [ %3515, %3536 ], [ %3515, %3563 ], [ %3515, %3603 ], [ %3515, %3605 ]
  %3638 = phi float [ %2808, %3508 ], [ %2808, %2993 ], [ %2808, %2795 ], [ %2808, %2812 ], [ %3548, %3536 ], [ %3594, %3563 ], [ %2808, %3603 ], [ %3616, %3605 ]
  %3639 = phi float [ %2809, %3508 ], [ %2809, %2993 ], [ %2809, %2795 ], [ %2809, %2812 ], [ %3545, %3536 ], [ %3571, %3563 ], [ %2809, %3603 ], [ %3613, %3605 ]
  %3640 = phi float [ %2810, %3508 ], [ %2810, %2993 ], [ %2810, %2795 ], [ %2810, %2812 ], [ %3551, %3536 ], [ %3596, %3563 ], [ %2810, %3603 ], [ %3618, %3605 ]
  %3641 = phi float [ %3516, %3508 ], [ %2811, %2993 ], [ %2811, %2795 ], [ %2811, %2812 ], [ %3516, %3536 ], [ %3516, %3563 ], [ %3516, %3603 ], [ %3516, %3605 ]
  %3642 = add i32 %51, 408
  %3643 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3642, i32 undef)  ; BufferLoad(srv,index,wot)
  %3644 = extractvalue %dx.types.ResRet.i32 %3643, 0
  %3645 = extractvalue %dx.types.ResRet.i32 %3643, 1
  %3646 = bitcast i32 %3644 to float
  %3647 = bitcast i32 %3645 to float
  %3648 = fcmp fast oge float %3646, 0.000000e+00
  %3649 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3650 = extractvalue %dx.types.CBufRet.f32 %3649, 0
  %3651 = select i1 %3648, float %3646, float %3650
  %3652 = fadd fast float %3651, %204
  %3653 = fmul fast float %3647, %205
  %3654 = add i32 %51, 504
  %3655 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3654, i32 undef)  ; BufferLoad(srv,index,wot)
  %3656 = extractvalue %dx.types.ResRet.i32 %3655, 0
  %3657 = add i32 %3656, 0
  %3658 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3657, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3659 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3658, %dx.types.Handle %108, float %89, float %90, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3660 = extractvalue %dx.types.ResRet.f32 %3659, 0
  %3661 = fmul fast float %3653, %3660
  %3662 = fadd fast float %3652, %3661
  %3663 = and i32 %196, 65535
  %3664 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3663)  ; LegacyF16ToF32(value)
  %3665 = lshr i32 %196, 16
  %3666 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3665)  ; LegacyF16ToF32(value)
  %3667 = and i32 %197, 65535
  %3668 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3667)  ; LegacyF16ToF32(value)
  %3669 = fmul fast float %3664, %3628
  %3670 = fmul fast float %3666, %3629
  %3671 = fmul fast float %3668, %3630
  %3672 = shl i32 %198, 4
  %3673 = and i32 %3672, 32752
  %3674 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3673)  ; LegacyF16ToF32(value)
  %3675 = lshr i32 %198, 7
  %3676 = and i32 %3675, 32752
  %3677 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3676)  ; LegacyF16ToF32(value)
  %3678 = lshr i32 %198, 22
  %3679 = shl nuw nsw i32 %3678, 5
  %3680 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3679)  ; LegacyF16ToF32(value)
  %3681 = and i32 %199, 65535
  %3682 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3681)  ; LegacyF16ToF32(value)
  %3683 = fmul fast float %3674, %3631
  %3684 = fmul fast float %3683, %3682
  %3685 = fmul fast float %3677, %3632
  %3686 = fmul fast float %3685, %3682
  %3687 = fmul fast float %3680, %3633
  %3688 = fmul fast float %3687, %3682
  %3689 = call float @dx.op.dot2.f32(i32 54, float %3626, float %3627, float %3626, float %3627)  ; Dot2(ax,ay,bx,by)
  %3690 = fmul fast float %3689, 0x3FE3333340000000
  %3691 = fsub fast float 1.000000e+00, %3690
  %3692 = call float @dx.op.dot3.f32(i32 55, float %3626, float %3627, float %3691, float %3626, float %3627, float %3691)  ; Dot3(ax,ay,az,bx,by,bz)
  %3693 = call float @dx.op.unary.f32(i32 25, float %3692)  ; Rsqrt(value)
  %3694 = fmul fast float %3693, %3626
  %3695 = fmul fast float %3693, %3627
  %3696 = fmul fast float %3691, %3693
  %3697 = fmul fast float %3696, %118
  %3698 = fmul fast float %3696, %119
  %3699 = fmul fast float %3696, %120
  %3700 = fmul fast float %3694, %82
  %3701 = fmul fast float %3694, %83
  %3702 = fmul fast float %3694, %84
  %3703 = fadd fast float %3697, %3700
  %3704 = fadd fast float %3698, %3701
  %3705 = fadd fast float %3699, %3702
  %3706 = fmul fast float %130, %3695
  %3707 = fmul fast float %131, %3695
  %3708 = fmul fast float %132, %3695
  %3709 = fadd fast float %3703, %3706
  %3710 = fadd fast float %3704, %3707
  %3711 = fadd fast float %3705, %3708
  %3712 = call float @dx.op.dot3.f32(i32 55, float %3709, float %3710, float %3711, float %3709, float %3710, float %3711)  ; Dot3(ax,ay,az,bx,by,bz)
  %3713 = call float @dx.op.unary.f32(i32 25, float %3712)  ; Rsqrt(value)
  %3714 = fmul fast float %3709, %3713
  %3715 = fmul fast float %3710, %3713
  %3716 = fmul fast float %3711, %3713
  %3717 = icmp eq i32 %53, 65535
  br i1 %3717, label %4285, label %3718

; <label>:3718                                    ; preds = %3625
  %3719 = call float @dx.op.unary.f32(i32 83, float %54)  ; DerivCoarseX(value)
  %3720 = call float @dx.op.unary.f32(i32 83, float %55)  ; DerivCoarseX(value)
  %3721 = call float @dx.op.unary.f32(i32 83, float %56)  ; DerivCoarseX(value)
  %3722 = call float @dx.op.unary.f32(i32 84, float %54)  ; DerivCoarseY(value)
  %3723 = call float @dx.op.unary.f32(i32 84, float %55)  ; DerivCoarseY(value)
  %3724 = call float @dx.op.unary.f32(i32 84, float %56)  ; DerivCoarseY(value)
  %3725 = fadd fast float %3719, %54
  %3726 = fadd fast float %3720, %55
  %3727 = fadd fast float %3721, %56
  %3728 = fadd fast float %3722, %54
  %3729 = fadd fast float %3723, %55
  %3730 = fadd fast float %3724, %56
  %3731 = mul i32 %53, 48
  %3732 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %3731, i32 undef)  ; BufferLoad(srv,index,wot)
  %3733 = extractvalue %dx.types.ResRet.f32 %3732, 0
  %3734 = extractvalue %dx.types.ResRet.f32 %3732, 1
  %3735 = extractvalue %dx.types.ResRet.f32 %3732, 2
  %3736 = add i32 %3731, 16
  %3737 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %3736, i32 undef)  ; BufferLoad(srv,index,wot)
  %3738 = extractvalue %dx.types.ResRet.f32 %3737, 0
  %3739 = extractvalue %dx.types.ResRet.f32 %3737, 1
  %3740 = extractvalue %dx.types.ResRet.f32 %3737, 2
  %3741 = add i32 %3731, 32
  %3742 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %3741, i32 undef)  ; BufferLoad(srv,index,wot)
  %3743 = extractvalue %dx.types.ResRet.f32 %3742, 0
  %3744 = extractvalue %dx.types.ResRet.f32 %3742, 1
  %3745 = extractvalue %dx.types.ResRet.f32 %3742, 2
  %3746 = extractvalue %dx.types.ResRet.f32 %3742, 3
  %3747 = bitcast float %3746 to i32
  %3748 = fmul fast float %3733, %54
  %3749 = fmul fast float %3734, %55
  %3750 = fmul fast float %3735, %56
  %3751 = fsub fast float %3748, %3738
  %3752 = fsub fast float %3749, %3739
  %3753 = fsub fast float %3750, %3740
  %3754 = call float @dx.op.unary.f32(i32 7, float %3751)  ; Saturate(value)
  %3755 = call float @dx.op.unary.f32(i32 7, float %3752)  ; Saturate(value)
  %3756 = call float @dx.op.unary.f32(i32 7, float %3753)  ; Saturate(value)
  %3757 = fmul fast float %3754, %3743
  %3758 = fmul fast float %3755, %3744
  %3759 = fmul fast float %3756, %3745
  %3760 = fadd fast float %3743, -1.000000e+00
  %3761 = fadd fast float %3744, -1.000000e+00
  %3762 = fadd fast float %3745, -1.000000e+00
  %3763 = call float @dx.op.unary.f32(i32 27, float %3757)  ; Round_ni(value)
  %3764 = call float @dx.op.unary.f32(i32 27, float %3758)  ; Round_ni(value)
  %3765 = call float @dx.op.unary.f32(i32 27, float %3759)  ; Round_ni(value)
  %3766 = call float @dx.op.binary.f32(i32 36, float %3763, float %3760)  ; FMin(a,b)
  %3767 = call float @dx.op.binary.f32(i32 36, float %3764, float %3761)  ; FMin(a,b)
  %3768 = call float @dx.op.binary.f32(i32 36, float %3765, float %3762)  ; FMin(a,b)
  %3769 = fmul fast float %3768, %3744
  %3770 = fadd fast float %3769, %3767
  %3771 = fmul fast float %3770, %3743
  %3772 = fadd fast float %3771, %3766
  %3773 = fptosi float %3772 to i32
  %3774 = add nsw i32 %3773, %3747
  %3775 = shl nsw i32 %3774, 2
  %3776 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3775, i32 undef)  ; BufferLoad(srv,index,wot)
  %3777 = extractvalue %dx.types.ResRet.i32 %3776, 0
  %3778 = lshr i32 %3777, 16
  %3779 = icmp eq i32 %3778, 0
  br i1 %3779, label %4251, label %3780

; <label>:3780                                    ; preds = %3718
  br label %3781

; <label>:3781                                    ; preds = %3905, %3780
  %3782 = phi i32 [ %3807, %3905 ], [ %3778, %3780 ]
  %3783 = phi float [ %3906, %3905 ], [ 0.000000e+00, %3780 ]
  %3784 = phi float [ %3907, %3905 ], [ %3662, %3780 ]
  %3785 = phi float [ %3908, %3905 ], [ %3641, %3780 ]
  %3786 = phi float [ %3909, %3905 ], [ 0.000000e+00, %3780 ]
  %3787 = phi float [ %3910, %3905 ], [ 0.000000e+00, %3780 ]
  %3788 = phi float [ %3911, %3905 ], [ %3634, %3780 ]
  %3789 = phi float [ %3912, %3905 ], [ %3635, %3780 ]
  %3790 = phi float [ %3913, %3905 ], [ %3636, %3780 ]
  %3791 = phi float [ %3914, %3905 ], [ %3684, %3780 ]
  %3792 = phi float [ %3915, %3905 ], [ %3686, %3780 ]
  %3793 = phi float [ %3916, %3905 ], [ %3688, %3780 ]
  %3794 = phi float [ %3917, %3905 ], [ %3714, %3780 ]
  %3795 = phi float [ %3918, %3905 ], [ %3715, %3780 ]
  %3796 = phi float [ %3919, %3905 ], [ %3716, %3780 ]
  %3797 = phi float [ %3920, %3905 ], [ %3639, %3780 ]
  %3798 = phi float [ %3921, %3905 ], [ %3638, %3780 ]
  %3799 = phi float [ %3922, %3905 ], [ 0.000000e+00, %3780 ]
  %3800 = phi float [ %3923, %3905 ], [ %3637, %3780 ]
  %3801 = phi float [ %3924, %3905 ], [ %3669, %3780 ]
  %3802 = phi float [ %3925, %3905 ], [ %3670, %3780 ]
  %3803 = phi float [ %3926, %3905 ], [ %3671, %3780 ]
  %3804 = shl nuw nsw i32 %3782, 2
  %3805 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %3804, i32 undef)  ; BufferLoad(srv,index,wot)
  %3806 = extractvalue %dx.types.ResRet.i32 %3805, 0
  %3807 = lshr i32 %3806, 16
  %3808 = shl i32 %3806, 8
  %3809 = and i32 %3808, 16776960
  %3810 = or i32 %3809, 48
  %3811 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %3810, i32 undef)  ; BufferLoad(srv,index,wot)
  %3812 = extractvalue %dx.types.ResRet.f32 %3811, 0
  %3813 = extractvalue %dx.types.ResRet.f32 %3811, 1
  %3814 = extractvalue %dx.types.ResRet.f32 %3811, 2
  %3815 = or i32 %3809, 64
  %3816 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %3815, i32 undef)  ; BufferLoad(srv,index,wot)
  %3817 = extractvalue %dx.types.ResRet.i32 %3816, 0
  %3818 = extractvalue %dx.types.ResRet.i32 %3816, 1
  %3819 = or i32 %3809, 80
  %3820 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %3819, i32 undef)  ; BufferLoad(srv,index,wot)
  %3821 = extractvalue %dx.types.ResRet.f32 %3820, 2
  %3822 = extractvalue %dx.types.ResRet.f32 %3820, 3
  %3823 = or i32 %3809, 96
  %3824 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %3823, i32 undef)  ; BufferLoad(srv,index,wot)
  %3825 = extractvalue %dx.types.ResRet.f32 %3824, 0
  %3826 = extractvalue %dx.types.ResRet.f32 %3824, 1
  %3827 = extractvalue %dx.types.ResRet.f32 %3824, 2
  %3828 = extractvalue %dx.types.ResRet.f32 %3824, 3
  %3829 = or i32 %3809, 112
  %3830 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %3829, i32 undef)  ; BufferLoad(srv,index,wot)
  %3831 = extractvalue %dx.types.ResRet.f32 %3830, 2
  %3832 = or i32 %3809, 128
  %3833 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %3832, i32 undef)  ; BufferLoad(srv,index,wot)
  %3834 = extractvalue %dx.types.ResRet.f32 %3833, 0
  %3835 = extractvalue %dx.types.ResRet.f32 %3833, 1
  %3836 = extractvalue %dx.types.ResRet.f32 %3833, 2
  %3837 = extractvalue %dx.types.ResRet.f32 %3833, 3
  %3838 = or i32 %3809, 144
  %3839 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %3838, i32 undef)  ; BufferLoad(srv,index,wot)
  %3840 = extractvalue %dx.types.ResRet.f32 %3839, 0
  %3841 = extractvalue %dx.types.ResRet.f32 %3839, 1
  %3842 = extractvalue %dx.types.ResRet.f32 %3839, 2
  %3843 = extractvalue %dx.types.ResRet.f32 %3839, 3
  %3844 = or i32 %3809, 160
  %3845 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %3844, i32 undef)  ; BufferLoad(srv,index,wot)
  %3846 = extractvalue %dx.types.ResRet.f32 %3845, 0
  %3847 = extractvalue %dx.types.ResRet.f32 %3845, 1
  %3848 = extractvalue %dx.types.ResRet.f32 %3845, 2
  %3849 = extractvalue %dx.types.ResRet.f32 %3845, 3
  %3850 = or i32 %3809, 192
  %3851 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %3850, i32 undef)  ; BufferLoad(srv,index,wot)
  %3852 = extractvalue %dx.types.ResRet.i32 %3851, 0
  %3853 = or i32 %3809, 208
  %3854 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %3853, i32 undef)  ; BufferLoad(srv,index,wot)
  %3855 = extractvalue %dx.types.ResRet.f32 %3854, 0
  %3856 = or i32 %3809, 248
  %3857 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %3856, i32 undef)  ; BufferLoad(srv,index,wot)
  %3858 = extractvalue %dx.types.ResRet.f32 %3857, 0
  %3859 = extractvalue %dx.types.ResRet.f32 %3857, 1
  %3860 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %3809, i32 undef)  ; BufferLoad(srv,index,wot)
  %3861 = extractvalue %dx.types.ResRet.f32 %3860, 0
  %3862 = extractvalue %dx.types.ResRet.f32 %3860, 1
  %3863 = extractvalue %dx.types.ResRet.f32 %3860, 2
  %3864 = extractvalue %dx.types.ResRet.f32 %3860, 3
  %3865 = call float @dx.op.dot4.f32(i32 56, float %3861, float %3862, float %3863, float %3864, float %54, float %55, float %56, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3866 = or i32 %3809, 16
  %3867 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %3866, i32 undef)  ; BufferLoad(srv,index,wot)
  %3868 = extractvalue %dx.types.ResRet.f32 %3867, 0
  %3869 = extractvalue %dx.types.ResRet.f32 %3867, 1
  %3870 = extractvalue %dx.types.ResRet.f32 %3867, 2
  %3871 = extractvalue %dx.types.ResRet.f32 %3867, 3
  %3872 = call float @dx.op.dot4.f32(i32 56, float %3868, float %3869, float %3870, float %3871, float %54, float %55, float %56, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3873 = or i32 %3809, 32
  %3874 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %3873, i32 undef)  ; BufferLoad(srv,index,wot)
  %3875 = extractvalue %dx.types.ResRet.f32 %3874, 0
  %3876 = extractvalue %dx.types.ResRet.f32 %3874, 1
  %3877 = extractvalue %dx.types.ResRet.f32 %3874, 2
  %3878 = extractvalue %dx.types.ResRet.f32 %3874, 3
  %3879 = call float @dx.op.dot4.f32(i32 56, float %3875, float %3876, float %3877, float %3878, float %54, float %55, float %56, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3880 = call float @dx.op.unary.f32(i32 27, float %3865)  ; Round_ni(value)
  %3881 = call float @dx.op.unary.f32(i32 6, float %3880)  ; FAbs(value)
  %3882 = call float @dx.op.unary.f32(i32 27, float %3872)  ; Round_ni(value)
  %3883 = call float @dx.op.unary.f32(i32 6, float %3882)  ; FAbs(value)
  %3884 = call float @dx.op.unary.f32(i32 6, float %3879)  ; FAbs(value)
  %3885 = call float @dx.op.unary.f32(i32 27, float %3884)  ; Round_ni(value)
  %3886 = fadd fast float %3883, %3881
  %3887 = fadd fast float %3886, %3885
  %3888 = fcmp fast oeq float %3887, 0.000000e+00
  %3889 = call float @dx.op.dot4.f32(i32 56, float %3861, float %3862, float %3863, float %3864, float %3725, float %3726, float %3727, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3890 = call float @dx.op.dot4.f32(i32 56, float %3868, float %3869, float %3870, float %3871, float %3725, float %3726, float %3727, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3891 = call float @dx.op.dot4.f32(i32 56, float %3861, float %3862, float %3863, float %3864, float %3728, float %3729, float %3730, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3892 = call float @dx.op.dot4.f32(i32 56, float %3868, float %3869, float %3870, float %3871, float %3728, float %3729, float %3730, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3893 = fsub fast float %3889, %3865
  %3894 = fsub fast float %3891, %3865
  %3895 = fsub fast float %3890, %3872
  %3896 = fsub fast float %3892, %3872
  %3897 = call float @dx.op.dot3.f32(i32 55, float %3812, float %3813, float %3814, float %118, float %119, float %120)  ; Dot3(ax,ay,az,bx,by,bz)
  %3898 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3899 = extractvalue %dx.types.CBufRet.f32 %3898, 2
  %3900 = fadd fast float %3899, %3897
  %3901 = call float @dx.op.unary.f32(i32 7, float %3900)  ; Saturate(value)
  %3902 = extractvalue %dx.types.CBufRet.f32 %3898, 0
  %3903 = fcmp fast ogt float %3901, %3902
  %3904 = and i1 %3888, %3903
  br i1 %3904, label %3928, label %3905

; <label>:3905                                    ; preds = %4237, %4011, %3928, %3781
  %3906 = phi float [ %3783, %3928 ], [ %4014, %4011 ], [ %4014, %4237 ], [ %3783, %3781 ]
  %3907 = phi float [ %3784, %3928 ], [ %3784, %4011 ], [ %4213, %4237 ], [ %3784, %3781 ]
  %3908 = phi float [ %3785, %3928 ], [ %3785, %4011 ], [ %4211, %4237 ], [ %3785, %3781 ]
  %3909 = phi float [ %3786, %3928 ], [ %3786, %4011 ], [ %4138, %4237 ], [ %3786, %3781 ]
  %3910 = phi float [ %3787, %3928 ], [ %3787, %4011 ], [ %4136, %4237 ], [ %3787, %3781 ]
  %3911 = phi float [ %3788, %3928 ], [ %3788, %4011 ], [ %4181, %4237 ], [ %3788, %3781 ]
  %3912 = phi float [ %3789, %3928 ], [ %3789, %4011 ], [ %4182, %4237 ], [ %3789, %3781 ]
  %3913 = phi float [ %3790, %3928 ], [ %3790, %4011 ], [ %4183, %4237 ], [ %3790, %3781 ]
  %3914 = phi float [ %3791, %3928 ], [ %3791, %4011 ], [ %4247, %4237 ], [ %3791, %3781 ]
  %3915 = phi float [ %3792, %3928 ], [ %3792, %4011 ], [ %4248, %4237 ], [ %3792, %3781 ]
  %3916 = phi float [ %3793, %3928 ], [ %3793, %4011 ], [ %4249, %4237 ], [ %3793, %3781 ]
  %3917 = phi float [ %3794, %3928 ], [ %3794, %4011 ], [ %4117, %4237 ], [ %3794, %3781 ]
  %3918 = phi float [ %3795, %3928 ], [ %3795, %4011 ], [ %4118, %4237 ], [ %3795, %3781 ]
  %3919 = phi float [ %3796, %3928 ], [ %3796, %4011 ], [ %4119, %4237 ], [ %3796, %3781 ]
  %3920 = phi float [ %3797, %3928 ], [ %3797, %4011 ], [ %4191, %4237 ], [ %3797, %3781 ]
  %3921 = phi float [ %3798, %3928 ], [ %3798, %4011 ], [ %4188, %4237 ], [ %3798, %3781 ]
  %3922 = phi float [ %3799, %3928 ], [ %3799, %4011 ], [ %4185, %4237 ], [ %3799, %3781 ]
  %3923 = phi float [ %3800, %3928 ], [ %3800, %4011 ], [ %4134, %4237 ], [ %3800, %3781 ]
  %3924 = phi float [ %3801, %3928 ], [ %3801, %4011 ], [ %4129, %4237 ], [ %3801, %3781 ]
  %3925 = phi float [ %3802, %3928 ], [ %3802, %4011 ], [ %4130, %4237 ], [ %3802, %3781 ]
  %3926 = phi float [ %3803, %3928 ], [ %3803, %4011 ], [ %4131, %4237 ], [ %3803, %3781 ]
  %3927 = icmp eq i32 %3807, 0
  br i1 %3927, label %4250, label %3781

; <label>:3928                                    ; preds = %3781
  %3929 = extractvalue %dx.types.ResRet.f32 %3811, 3
  %3930 = extractvalue %dx.types.ResRet.f32 %3830, 3
  %3931 = extractvalue %dx.types.ResRet.f32 %3830, 1
  %3932 = extractvalue %dx.types.ResRet.f32 %3830, 0
  %3933 = extractvalue %dx.types.ResRet.f32 %3820, 1
  %3934 = extractvalue %dx.types.ResRet.f32 %3820, 0
  %3935 = extractvalue %dx.types.ResRet.i32 %3816, 3
  %3936 = extractvalue %dx.types.ResRet.i32 %3816, 2
  %3937 = bitcast float %3929 to i32
  %3938 = add i32 %3935, 0
  %3939 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3938, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3940 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3941 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3939, %dx.types.Handle %3940, float %3865, float %3872, float undef, float undef, i32 0, i32 0, i32 undef, float %3893, float %3895, float undef, float %3894, float %3896, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3942 = extractvalue %dx.types.ResRet.f32 %3941, 0
  %3943 = fmul fast float %3942, %3934
  %3944 = fadd fast float %3943, %3933
  %3945 = call float @dx.op.unary.f32(i32 7, float %3944)  ; Saturate(value)
  %3946 = fmul fast float %3865, %3825
  %3947 = call float @dx.op.tertiary.f32(i32 46, float %3826, float %3872, float %3946)  ; FMad(a,b,c)
  %3948 = fadd fast float %3947, %3932
  %3949 = fmul fast float %3865, %3827
  %3950 = call float @dx.op.tertiary.f32(i32 46, float %3828, float %3872, float %3949)  ; FMad(a,b,c)
  %3951 = fadd fast float %3950, %3931
  %3952 = fmul fast float %3893, %3825
  %3953 = call float @dx.op.tertiary.f32(i32 46, float %3826, float %3895, float %3952)  ; FMad(a,b,c)
  %3954 = fmul fast float %3893, %3827
  %3955 = call float @dx.op.tertiary.f32(i32 46, float %3828, float %3895, float %3954)  ; FMad(a,b,c)
  %3956 = fmul fast float %3894, %3825
  %3957 = call float @dx.op.tertiary.f32(i32 46, float %3826, float %3896, float %3956)  ; FMad(a,b,c)
  %3958 = fmul fast float %3894, %3827
  %3959 = call float @dx.op.tertiary.f32(i32 46, float %3828, float %3896, float %3958)  ; FMad(a,b,c)
  %3960 = add i32 %3936, 0
  %3961 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3960, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3962 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3961, %dx.types.Handle %3940, float %3948, float %3951, float undef, float undef, i32 0, i32 0, i32 undef, float %3953, float %3955, float undef, float %3957, float %3959, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3963 = extractvalue %dx.types.ResRet.f32 %3962, 0
  %3964 = and i32 %3937, 1024
  %3965 = icmp ne i32 %3964, 0
  %3966 = fcmp fast ogt float %3963, 0x3FE0101020000000
  %3967 = uitofp i1 %3966 to float
  %3968 = select i1 %3965, float %3967, float %3963
  %3969 = and i32 %3937, 8192
  %3970 = icmp ne i32 %3969, 0
  %3971 = select i1 %3970, float %3930, float 1.000000e+00
  %3972 = fmul fast float %3865, 2.000000e+00
  %3973 = fadd fast float %3972, -1.000000e+00
  %3974 = call float @dx.op.unary.f32(i32 6, float %3973)  ; FAbs(value)
  %3975 = fmul fast float %3974, %3858
  %3976 = fsub fast float %3975, %3858
  %3977 = call float @dx.op.unary.f32(i32 7, float %3976)  ; Saturate(value)
  %3978 = fmul fast float %3872, 2.000000e+00
  %3979 = fadd fast float %3978, -1.000000e+00
  %3980 = call float @dx.op.unary.f32(i32 6, float %3979)  ; FAbs(value)
  %3981 = fmul fast float %3980, %3859
  %3982 = fsub fast float %3981, %3859
  %3983 = call float @dx.op.unary.f32(i32 7, float %3982)  ; Saturate(value)
  %3984 = fmul fast float %3884, %3821
  %3985 = fsub fast float %3984, %3821
  %3986 = call float @dx.op.unary.f32(i32 7, float %3985)  ; Saturate(value)
  %3987 = fmul fast float %3945, %3971
  %3988 = fmul fast float %3987, %3942
  %3989 = fmul fast float %3988, %3977
  %3990 = fmul fast float %3989, %3968
  %3991 = fmul fast float %3990, %3983
  %3992 = fmul fast float %3991, %3986
  %3993 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3994 = extractvalue %dx.types.CBufRet.f32 %3993, 1
  %3995 = extractvalue %dx.types.CBufRet.f32 %3993, 0
  %3996 = fsub fast float %3901, %3995
  %3997 = fmul fast float %3996, %3994
  %3998 = call float @dx.op.unary.f32(i32 7, float %3997)  ; Saturate(value)
  %3999 = fmul fast float %3992, %3822
  %4000 = fadd fast float %3992, %3822
  %4001 = fmul fast float %4000, %3831
  %4002 = fsub fast float %4001, %3831
  %4003 = call float @dx.op.unary.f32(i32 7, float %4002)  ; Saturate(value)
  %4004 = and i32 %3937, 128
  %4005 = icmp ne i32 %4004, 0
  %4006 = select i1 %4005, float %4003, float %3999
  %4007 = fmul fast float %4006, %3998
  %4008 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4009 = extractvalue %dx.types.CBufRet.f32 %4008, 0
  %4010 = fcmp fast ugt float %4007, %4009
  br i1 %4010, label %4011, label %3905

; <label>:4011                                    ; preds = %3928
  %4012 = select i1 %3970, float %4007, float 0.000000e+00
  %4013 = fadd fast float %4012, %3783
  %4014 = call float @dx.op.unary.f32(i32 7, float %4013)  ; Saturate(value)
  br i1 %3970, label %3905, label %4015

; <label>:4015                                    ; preds = %4011
  %4016 = and i32 %3937, 4
  %4017 = and i32 %3937, 8
  %4018 = add i32 %3817, 0
  %4019 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4018, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4020 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4021 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4019, %dx.types.Handle %4020, float %3948, float %3951, float undef, float undef, i32 0, i32 0, i32 undef, float %3953, float %3955, float undef, float %3957, float %3959, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4022 = extractvalue %dx.types.ResRet.f32 %4021, 0
  %4023 = extractvalue %dx.types.ResRet.f32 %4021, 1
  %4024 = extractvalue %dx.types.ResRet.f32 %4021, 2
  %4025 = extractvalue %dx.types.ResRet.f32 %4021, 3
  %4026 = bitcast float %3843 to i32
  %4027 = and i32 %4026, 255
  %4028 = uitofp i32 %4027 to float
  %4029 = lshr i32 %4026, 8
  %4030 = and i32 %4029, 255
  %4031 = uitofp i32 %4030 to float
  %4032 = fmul fast float %4025, %4028
  %4033 = fadd fast float %4032, %4031
  %4034 = fmul fast float %4033, 0x3F70101000000000
  %4035 = add i32 %3818, 0
  %4036 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4035, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4037 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4036, %dx.types.Handle %4020, float %3948, float %3951, float undef, float undef, i32 0, i32 0, i32 undef, float %3953, float %3955, float undef, float %3957, float %3959, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4038 = extractvalue %dx.types.ResRet.f32 %4037, 0
  %4039 = extractvalue %dx.types.ResRet.f32 %4037, 1
  %4040 = extractvalue %dx.types.ResRet.f32 %4037, 2
  %4041 = extractvalue %dx.types.ResRet.f32 %4037, 3
  %4042 = bitcast float %3837 to i32
  %4043 = and i32 %4042, 255
  %4044 = uitofp i32 %4043 to float
  %4045 = lshr i32 %4042, 8
  %4046 = and i32 %4045, 255
  %4047 = uitofp i32 %4046 to float
  %4048 = lshr i32 %4042, 16
  %4049 = and i32 %4048, 255
  %4050 = uitofp i32 %4049 to float
  %4051 = fmul fast float %4050, 0x3F70101000000000
  %4052 = fmul fast float %4038, %4044
  %4053 = fadd fast float %4052, %4047
  %4054 = fmul fast float %4053, 0x3F70101000000000
  %4055 = fadd fast float %4039, -5.000000e-01
  %4056 = fadd fast float %4041, -5.000000e-01
  %4057 = fmul fast float %4055, %4051
  %4058 = fmul fast float %4056, %4051
  %4059 = fadd fast float %4057, 5.000000e-01
  %4060 = fadd fast float %4058, 5.000000e-01
  %4061 = fmul fast float %4022, %3846
  %4062 = fmul fast float %4023, %3847
  %4063 = fmul fast float %4024, %3848
  %4064 = fmul fast float %4059, 2.000000e+00
  %4065 = fadd fast float %4064, -1.000000e+00
  %4066 = fmul fast float %4060, 2.000000e+00
  %4067 = fadd fast float %4066, -1.000000e+00
  %4068 = fadd fast float %4065, %4067
  %4069 = fmul fast float %4068, 5.000000e-01
  %4070 = fsub fast float %4065, %4067
  %4071 = fmul fast float %4070, 5.000000e-01
  %4072 = call float @dx.op.unary.f32(i32 6, float %4069)  ; FAbs(value)
  %4073 = fsub fast float 1.000000e+00, %4072
  %4074 = call float @dx.op.unary.f32(i32 6, float %4071)  ; FAbs(value)
  %4075 = fsub fast float %4073, %4074
  %4076 = call float @dx.op.dot3.f32(i32 55, float %4069, float %4071, float %4075, float %4069, float %4071, float %4075)  ; Dot3(ax,ay,az,bx,by,bz)
  %4077 = call float @dx.op.unary.f32(i32 25, float %4076)  ; Rsqrt(value)
  %4078 = fmul fast float %4069, %4077
  %4079 = fmul fast float %4071, %4077
  %4080 = fmul fast float %4077, %4075
  %4081 = fmul fast float %4080, %3812
  %4082 = fmul fast float %4080, %3813
  %4083 = fmul fast float %4080, %3814
  %4084 = fmul fast float %4078, %3834
  %4085 = fmul fast float %4078, %3835
  %4086 = fmul fast float %4078, %3836
  %4087 = fadd fast float %4084, %4081
  %4088 = fadd fast float %4085, %4082
  %4089 = fadd fast float %4086, %4083
  %4090 = fmul fast float %4079, %3840
  %4091 = fmul fast float %4079, %3841
  %4092 = fmul fast float %4079, %3842
  %4093 = fadd fast float %4087, %4090
  %4094 = fadd fast float %4088, %4091
  %4095 = fadd fast float %4089, %4092
  %4096 = call float @dx.op.dot3.f32(i32 55, float %4093, float %4094, float %4095, float %4093, float %4094, float %4095)  ; Dot3(ax,ay,az,bx,by,bz)
  %4097 = call float @dx.op.unary.f32(i32 25, float %4096)  ; Rsqrt(value)
  %4098 = fmul fast float %4093, %4097
  %4099 = fmul fast float %4094, %4097
  %4100 = fmul fast float %4095, %4097
  %4101 = icmp ne i32 %4017, 0
  %4102 = select i1 %4101, float 1.000000e+00, float 0.000000e+00
  %4103 = fmul fast float %4007, %4102
  %4104 = and i32 %3937, 1
  %4105 = icmp eq i32 %4104, 0
  br i1 %4105, label %4106, label %4110

; <label>:4106                                    ; preds = %4015
  %4107 = fsub fast float %4098, %3794
  %4108 = fsub fast float %4099, %3795
  %4109 = fsub fast float %4100, %3796
  br label %4110

; <label>:4110                                    ; preds = %4106, %4015
  %4111 = phi float [ %4107, %4106 ], [ %4098, %4015 ]
  %4112 = phi float [ %4108, %4106 ], [ %4099, %4015 ]
  %4113 = phi float [ %4109, %4106 ], [ %4100, %4015 ]
  %4114 = fmul float %4113, %4103
  %4115 = fmul float %4112, %4103
  %4116 = fmul float %4111, %4103
  %4117 = fadd fast float %4116, %3794
  %4118 = fadd fast float %4115, %3795
  %4119 = fadd fast float %4114, %3796
  %4120 = icmp ne i32 %4016, 0
  %4121 = select i1 %4120, float 1.000000e+00, float 0.000000e+00
  %4122 = fmul fast float %4007, %4121
  %4123 = fsub fast float %4061, %3801
  %4124 = fsub fast float %4062, %3802
  %4125 = fsub fast float %4063, %3803
  %4126 = fmul fast float %4123, %4122
  %4127 = fmul fast float %4124, %4122
  %4128 = fmul fast float %4125, %4122
  %4129 = fadd fast float %4126, %3801
  %4130 = fadd fast float %4127, %3802
  %4131 = fadd fast float %4128, %3803
  %4132 = fsub fast float %4034, %3800
  %4133 = fmul fast float %4132, %4122
  %4134 = fadd fast float %4133, %3800
  %4135 = fmul fast float %4122, %3787
  %4136 = fsub fast float %3787, %4135
  %4137 = fmul fast float %4122, %3786
  %4138 = fsub fast float %3786, %4137
  %4139 = bitcast float %3855 to i32
  %4140 = lshr i32 %4139, 16
  %4141 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4140)  ; LegacyF16ToF32(value)
  %4142 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %476, i32 undef)  ; BufferLoad(srv,index,wot)
  %4143 = extractvalue %dx.types.ResRet.i32 %4142, 0
  %4144 = and i32 %4143, 1
  %4145 = icmp eq i32 %4144, 0
  br i1 %4145, label %4146, label %4171

; <label>:4146                                    ; preds = %4110
  %4147 = fadd fast float %4034, 0xBFB99999A0000000
  %4148 = call float @dx.op.unary.f32(i32 7, float %4147)  ; Saturate(value)
  %4149 = fmul fast float %4148, 0x3FF1C71C80000000
  %4150 = fsub fast float 1.000000e+00, %4149
  %4151 = call float @dx.op.unary.f32(i32 7, float %4150)  ; Saturate(value)
  %4152 = fmul fast float %4151, %4061
  %4153 = fmul fast float %4151, %4062
  %4154 = fmul fast float %4151, %4063
  %4155 = call float @dx.op.unary.f32(i32 7, float %4152)  ; Saturate(value)
  %4156 = call float @dx.op.unary.f32(i32 7, float %4153)  ; Saturate(value)
  %4157 = call float @dx.op.unary.f32(i32 7, float %4154)  ; Saturate(value)
  %4158 = call float @dx.op.binary.f32(i32 35, float %4156, float %4157)  ; FMax(a,b)
  %4159 = call float @dx.op.binary.f32(i32 35, float %4155, float %4158)  ; FMax(a,b)
  %4160 = fcmp fast ogt float %4159, 0.000000e+00
  %4161 = bitcast float %4159 to i32
  %4162 = sub nsw i32 2129859010, %4161
  %4163 = bitcast i32 %4162 to float
  %4164 = select i1 %4160, float %4163, float 0.000000e+00
  %4165 = fmul fast float %4155, %4141
  %4166 = fmul fast float %4156, %4141
  %4167 = fmul fast float %4157, %4141
  %4168 = fmul fast float %4165, %4164
  %4169 = fmul fast float %4166, %4164
  %4170 = fmul fast float %4167, %4164
  br label %4171

; <label>:4171                                    ; preds = %4146, %4110
  %4172 = phi float [ %4141, %4110 ], [ %4168, %4146 ]
  %4173 = phi float [ %4141, %4110 ], [ %4169, %4146 ]
  %4174 = phi float [ %4141, %4110 ], [ %4170, %4146 ]
  %4175 = fsub fast float %4172, %3788
  %4176 = fsub fast float %4173, %3789
  %4177 = fsub fast float %4174, %3790
  %4178 = fmul fast float %4175, %4122
  %4179 = fmul fast float %4176, %4122
  %4180 = fmul fast float %4177, %4122
  %4181 = fadd fast float %4178, %3788
  %4182 = fadd fast float %4179, %3789
  %4183 = fadd fast float %4180, %3790
  %4184 = fadd fast float %4007, %3799
  %4185 = call float @dx.op.unary.f32(i32 7, float %4184)  ; Saturate(value)
  %4186 = fsub fast float %4054, %3798
  %4187 = fmul fast float %4186, %4103
  %4188 = fadd fast float %4187, %3798
  %4189 = fsub fast float %4040, %3797
  %4190 = fmul fast float %4189, %4103
  %4191 = fadd fast float %4190, %3797
  %4192 = call float @dx.op.dot3.f32(i32 55, float %4061, float %4062, float %4063, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4193 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %4194 = extractvalue %dx.types.CBufRet.f32 %4193, 0
  %4195 = extractvalue %dx.types.CBufRet.f32 %4193, 1
  %4196 = fmul fast float %4195, %4192
  %4197 = fadd fast float %4196, %4194
  %4198 = call float @dx.op.unary.f32(i32 7, float %4197)  ; Saturate(value)
  %4199 = bitcast float %3849 to i32
  %4200 = and i32 %4199, 65535
  %4201 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4200)  ; LegacyF16ToF32(value)
  %4202 = lshr i32 %4199, 16
  %4203 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4202)  ; LegacyF16ToF32(value)
  %4204 = fcmp fast oge float %4201, 0.000000e+00
  %4205 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4206 = extractvalue %dx.types.CBufRet.f32 %4205, 0
  %4207 = select i1 %4204, float %4201, float %4206
  %4208 = fadd fast float %4207, %4203
  %4209 = fsub fast float %4198, %3785
  %4210 = fmul fast float %4209, %4007
  %4211 = fadd fast float %4210, %3785
  %4212 = fmul fast float %4208, %4007
  %4213 = call float @dx.op.binary.f32(i32 35, float %3784, float %4212)  ; FMax(a,b)
  %4214 = and i32 %3937, 16
  %4215 = icmp eq i32 %4214, 0
  br i1 %4215, label %4237, label %4216

; <label>:4216                                    ; preds = %4171
  %4217 = add i32 %3852, 0
  %4218 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4217, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4219 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4218, %dx.types.Handle %4020, float %3948, float %3951, float undef, float undef, i32 0, i32 0, i32 undef, float %3953, float %3955, float undef, float %3957, float %3959, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4220 = extractvalue %dx.types.ResRet.f32 %4219, 0
  %4221 = extractvalue %dx.types.ResRet.f32 %4219, 1
  %4222 = extractvalue %dx.types.ResRet.f32 %4219, 2
  %4223 = and i32 %4139, 65535
  %4224 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4223)  ; LegacyF16ToF32(value)
  %4225 = fmul fast float %4220, %3846
  %4226 = fmul fast float %4221, %3847
  %4227 = fmul fast float %4222, %3848
  %4228 = and i32 %3937, 16384
  %4229 = icmp ne i32 %4228, 0
  %4230 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4231 = extractvalue %dx.types.CBufRet.f32 %4230, 0
  %4232 = select i1 %4229, float %4231, float 1.000000e+00
  %4233 = fmul fast float %4232, %4224
  %4234 = fmul fast float %4225, %4233
  %4235 = fmul fast float %4226, %4233
  %4236 = fmul fast float %4227, %4233
  br label %4237

; <label>:4237                                    ; preds = %4216, %4171
  %4238 = phi float [ %4234, %4216 ], [ 0.000000e+00, %4171 ]
  %4239 = phi float [ %4235, %4216 ], [ 0.000000e+00, %4171 ]
  %4240 = phi float [ %4236, %4216 ], [ 0.000000e+00, %4171 ]
  %4241 = fsub fast float %4238, %3791
  %4242 = fsub fast float %4239, %3792
  %4243 = fsub fast float %4240, %3793
  %4244 = fmul fast float %4241, %4007
  %4245 = fmul fast float %4242, %4007
  %4246 = fmul fast float %4243, %4007
  %4247 = fadd fast float %4244, %3791
  %4248 = fadd fast float %4245, %3792
  %4249 = fadd fast float %4246, %3793
  br label %3905

; <label>:4250                                    ; preds = %3905
  br label %4251

; <label>:4251                                    ; preds = %4250, %3718
  %4252 = phi float [ 0.000000e+00, %3718 ], [ %3906, %4250 ]
  %4253 = phi float [ %3662, %3718 ], [ %3907, %4250 ]
  %4254 = phi float [ %3641, %3718 ], [ %3908, %4250 ]
  %4255 = phi float [ 0.000000e+00, %3718 ], [ %3909, %4250 ]
  %4256 = phi float [ 0.000000e+00, %3718 ], [ %3910, %4250 ]
  %4257 = phi float [ %3634, %3718 ], [ %3911, %4250 ]
  %4258 = phi float [ %3635, %3718 ], [ %3912, %4250 ]
  %4259 = phi float [ %3636, %3718 ], [ %3913, %4250 ]
  %4260 = phi float [ %3684, %3718 ], [ %3914, %4250 ]
  %4261 = phi float [ %3686, %3718 ], [ %3915, %4250 ]
  %4262 = phi float [ %3688, %3718 ], [ %3916, %4250 ]
  %4263 = phi float [ %3714, %3718 ], [ %3917, %4250 ]
  %4264 = phi float [ %3715, %3718 ], [ %3918, %4250 ]
  %4265 = phi float [ %3716, %3718 ], [ %3919, %4250 ]
  %4266 = phi float [ %3639, %3718 ], [ %3920, %4250 ]
  %4267 = phi float [ %3638, %3718 ], [ %3921, %4250 ]
  %4268 = phi float [ 0.000000e+00, %3718 ], [ %3922, %4250 ]
  %4269 = phi float [ %3637, %3718 ], [ %3923, %4250 ]
  %4270 = phi float [ %3669, %3718 ], [ %3924, %4250 ]
  %4271 = phi float [ %3670, %3718 ], [ %3925, %4250 ]
  %4272 = phi float [ %3671, %3718 ], [ %3926, %4250 ]
  %4273 = call float @dx.op.dot3.f32(i32 55, float %4263, float %4264, float %4265, float %4263, float %4264, float %4265)  ; Dot3(ax,ay,az,bx,by,bz)
  %4274 = call float @dx.op.unary.f32(i32 25, float %4273)  ; Rsqrt(value)
  %4275 = fmul fast float %4274, %4263
  %4276 = fmul fast float %4274, %4264
  %4277 = fmul fast float %4274, %4265
  %4278 = fadd fast float %4268, %1147
  %4279 = call float @dx.op.unary.f32(i32 7, float %4278)  ; Saturate(value)
  %4280 = call float @dx.op.dot3.f32(i32 55, float %4275, float %4276, float %4277, float %4275, float %4276, float %4277)  ; Dot3(ax,ay,az,bx,by,bz)
  %4281 = call float @dx.op.unary.f32(i32 25, float %4280)  ; Rsqrt(value)
  %4282 = fmul fast float %4281, %4275
  %4283 = fmul fast float %4281, %4276
  %4284 = fmul fast float %4281, %4277
  br label %4285

; <label>:4285                                    ; preds = %4251, %3625
  %4286 = phi float [ %4282, %4251 ], [ %3714, %3625 ]
  %4287 = phi float [ %4283, %4251 ], [ %3715, %3625 ]
  %4288 = phi float [ %4284, %4251 ], [ %3716, %3625 ]
  %4289 = phi float [ %4270, %4251 ], [ %3669, %3625 ]
  %4290 = phi float [ %4271, %4251 ], [ %3670, %3625 ]
  %4291 = phi float [ %4272, %4251 ], [ %3671, %3625 ]
  %4292 = phi float [ %4260, %4251 ], [ %3684, %3625 ]
  %4293 = phi float [ %4261, %4251 ], [ %3686, %3625 ]
  %4294 = phi float [ %4262, %4251 ], [ %3688, %3625 ]
  %4295 = phi float [ %4257, %4251 ], [ %3634, %3625 ]
  %4296 = phi float [ %4258, %4251 ], [ %3635, %3625 ]
  %4297 = phi float [ %4259, %4251 ], [ %3636, %3625 ]
  %4298 = phi float [ %4269, %4251 ], [ %3637, %3625 ]
  %4299 = phi float [ %4279, %4251 ], [ %1147, %3625 ]
  %4300 = phi float [ %4267, %4251 ], [ %3638, %3625 ]
  %4301 = phi float [ %4266, %4251 ], [ %3639, %3625 ]
  %4302 = phi float [ %4256, %4251 ], [ 0.000000e+00, %3625 ]
  %4303 = phi float [ %4255, %4251 ], [ 0.000000e+00, %3625 ]
  %4304 = phi float [ %4252, %4251 ], [ 0.000000e+00, %3625 ]
  %4305 = phi float [ %4253, %4251 ], [ %3662, %3625 ]
  %4306 = phi float [ %4254, %4251 ], [ %3641, %3625 ]
  %4307 = add i32 %51, 392
  %4308 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %4307, i32 undef)  ; BufferLoad(srv,index,wot)
  %4309 = extractvalue %dx.types.ResRet.i32 %4308, 0
  %4310 = extractvalue %dx.types.ResRet.i32 %4308, 1
  %4311 = extractvalue %dx.types.ResRet.i32 %4308, 2
  %4312 = extractvalue %dx.types.ResRet.i32 %4308, 3
  %4313 = bitcast i32 %4309 to float
  %4314 = bitcast i32 %4310 to float
  %4315 = bitcast i32 %4311 to float
  %4316 = bitcast i32 %4312 to float
  %4317 = fsub fast float %4289, %4313
  %4318 = fsub fast float %4290, %4314
  %4319 = fsub fast float %4291, %4315
  %4320 = fmul fast float %4317, %237
  %4321 = fmul fast float %4318, %237
  %4322 = fmul fast float %4319, %237
  %4323 = fadd fast float %4320, %4313
  %4324 = fadd fast float %4321, %4314
  %4325 = fadd fast float %4322, %4315
  %4326 = fsub fast float %4299, %4316
  %4327 = fmul fast float %4326, %237
  %4328 = fadd fast float %4327, %4316
  %4329 = fadd fast float %4298, 0xBFB99999A0000000
  %4330 = call float @dx.op.unary.f32(i32 7, float %4329)  ; Saturate(value)
  %4331 = fmul fast float %4330, 0x3FF1C71C80000000
  %4332 = call float @dx.op.binary.f32(i32 36, float %4298, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4333 = fsub fast float 1.000000e+00, %4331
  %4334 = call float @dx.op.unary.f32(i32 7, float %4333)  ; Saturate(value)
  %4335 = fmul fast float %4323, %4334
  %4336 = fmul fast float %4324, %4334
  %4337 = fmul fast float %4325, %4334
  %4338 = call float @dx.op.unary.f32(i32 7, float %4335)  ; Saturate(value)
  %4339 = call float @dx.op.unary.f32(i32 7, float %4336)  ; Saturate(value)
  %4340 = call float @dx.op.unary.f32(i32 7, float %4337)  ; Saturate(value)
  %4341 = fmul fast float %4323, %4331
  %4342 = fmul fast float %4324, %4331
  %4343 = fmul fast float %4325, %4331
  %4344 = fadd fast float %4341, %4332
  %4345 = fadd fast float %4342, %4332
  %4346 = fadd fast float %4343, %4332
  %4347 = call float @dx.op.unary.f32(i32 7, float %4344)  ; Saturate(value)
  %4348 = call float @dx.op.unary.f32(i32 7, float %4345)  ; Saturate(value)
  %4349 = call float @dx.op.unary.f32(i32 7, float %4346)  ; Saturate(value)
  %4350 = call float @dx.op.unary.f32(i32 7, float %4300)  ; Saturate(value)
  %4351 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %476, i32 undef)  ; BufferLoad(srv,index,wot)
  %4352 = extractvalue %dx.types.ResRet.i32 %4351, 0
  %4353 = and i32 %4352, 1
  %4354 = icmp eq i32 %4353, 0
  br i1 %4354, label %4369, label %4355

; <label>:4355                                    ; preds = %4285
  %4356 = call float @dx.op.binary.f32(i32 35, float %4339, float %4340)  ; FMax(a,b)
  %4357 = call float @dx.op.binary.f32(i32 35, float %4338, float %4356)  ; FMax(a,b)
  %4358 = fcmp fast ogt float %4357, 0.000000e+00
  %4359 = bitcast float %4357 to i32
  %4360 = sub nsw i32 2129859010, %4359
  %4361 = bitcast i32 %4360 to float
  %4362 = select i1 %4358, float %4361, float 0.000000e+00
  %4363 = fmul fast float %4338, %4295
  %4364 = fmul fast float %4339, %4296
  %4365 = fmul fast float %4340, %4297
  %4366 = fmul fast float %4363, %4362
  %4367 = fmul fast float %4364, %4362
  %4368 = fmul fast float %4365, %4362
  br label %4369

; <label>:4369                                    ; preds = %4355, %4285
  %4370 = phi float [ %4366, %4355 ], [ %4295, %4285 ]
  %4371 = phi float [ %4367, %4355 ], [ %4296, %4285 ]
  %4372 = phi float [ %4368, %4355 ], [ %4297, %4285 ]
  %4373 = fadd fast float %4338, 0xBFD51EB860000000
  %4374 = fadd fast float %4339, 0xBFD51EB860000000
  %4375 = fadd fast float %4340, 0xBFD51EB860000000
  %4376 = fmul fast float %4373, %4373
  %4377 = fmul fast float %4374, %4374
  %4378 = fmul fast float %4375, %4375
  %4379 = fmul fast float %4376, %4376
  %4380 = fmul fast float %4379, 1.000000e+02
  %4381 = fmul fast float %4377, %4377
  %4382 = fmul fast float %4381, 1.000000e+02
  %4383 = fmul fast float %4378, %4378
  %4384 = fmul fast float %4383, 1.000000e+02
  %4385 = fadd fast float %4380, 3.500000e+00
  %4386 = fadd fast float %4382, 3.500000e+00
  %4387 = fadd fast float %4384, 3.500000e+00
  %4388 = call float @dx.op.binary.f32(i32 35, float %4370, float 0x3F0FFB4800000000)  ; FMax(a,b)
  %4389 = call float @dx.op.binary.f32(i32 35, float %4371, float 0x3F0FFB4800000000)  ; FMax(a,b)
  %4390 = call float @dx.op.binary.f32(i32 35, float %4372, float 0x3F0FFB4800000000)  ; FMax(a,b)
  %4391 = fdiv fast float %4385, %4388
  %4392 = fdiv fast float %4386, %4389
  %4393 = fdiv fast float %4387, %4390
  %4394 = fmul fast float %3640, 0xBFF7154760000000
  %4395 = fmul fast float %4394, %4391
  %4396 = call float @dx.op.unary.f32(i32 21, float %4395)  ; Exp(value)
  %4397 = fmul fast float %4396, 2.500000e-01
  %4398 = fmul fast float %3640, 0xBFDEC709E0000000
  %4399 = fmul fast float %4398, %4391
  %4400 = call float @dx.op.unary.f32(i32 21, float %4399)  ; Exp(value)
  %4401 = fmul fast float %4400, 7.500000e-01
  %4402 = fmul fast float %4394, %4392
  %4403 = call float @dx.op.unary.f32(i32 21, float %4402)  ; Exp(value)
  %4404 = fmul fast float %4403, 2.500000e-01
  %4405 = fmul fast float %4398, %4392
  %4406 = call float @dx.op.unary.f32(i32 21, float %4405)  ; Exp(value)
  %4407 = fmul fast float %4406, 7.500000e-01
  %4408 = fmul fast float %4394, %4393
  %4409 = call float @dx.op.unary.f32(i32 21, float %4408)  ; Exp(value)
  %4410 = fmul fast float %4409, 2.500000e-01
  %4411 = fmul fast float %4398, %4393
  %4412 = call float @dx.op.unary.f32(i32 21, float %4411)  ; Exp(value)
  %4413 = fmul fast float %4412, 7.500000e-01
  %4414 = fadd fast float %4397, %4401
  %4415 = fadd fast float %4404, %4407
  %4416 = fadd fast float %4410, %4413
  %4417 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4418 = extractvalue %dx.types.CBufRet.i32 %4417, 3
  %4419 = and i32 %4418, 8
  %4420 = icmp ne i32 %4419, 0
  %4421 = call float @dx.op.binary.f32(i32 35, float %4338, float %4323)  ; FMax(a,b)
  %4422 = call float @dx.op.binary.f32(i32 35, float %4339, float %4323)  ; FMax(a,b)
  %4423 = call float @dx.op.binary.f32(i32 35, float %4340, float %4323)  ; FMax(a,b)
  %4424 = call float @dx.op.dot3.f32(i32 55, float %4338, float %4339, float %4340, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4425 = select i1 %296, float %4323, float %4338
  %4426 = select i1 %296, float %4424, float %4339
  %4427 = select i1 %296, float 1.000000e+00, float %4340
  %4428 = select i1 %4420, float %4421, float %4425
  %4429 = select i1 %4420, float %4422, float %4426
  %4430 = select i1 %4420, float %4423, float %4427
  %4431 = and i32 %272, 3
  %4432 = select i1 %266, i32 %4431, i32 0
  %4433 = icmp eq i32 %4432, 1
  br i1 %4433, label %4434, label %4510

; <label>:4434                                    ; preds = %4369
  %4435 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4436 = extractvalue %dx.types.CBufRet.f32 %4435, 0
  %4437 = extractvalue %dx.types.CBufRet.f32 %4435, 1
  %4438 = fadd fast float %4436, %190
  %4439 = fadd fast float %4437, %191
  %4440 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4441 = extractvalue %dx.types.CBufRet.f32 %4440, 0
  %4442 = extractvalue %dx.types.CBufRet.f32 %4440, 1
  %4443 = fsub fast float %4438, %4441
  %4444 = fsub fast float %4439, %4442
  %4445 = fmul fast float %4443, %4443
  %4446 = fmul fast float %4444, %4444
  %4447 = fadd fast float %4445, %4446
  %4448 = call float @dx.op.unary.f32(i32 24, float %4447)  ; Sqrt(value)
  %4449 = extractvalue %dx.types.CBufRet.f32 %4440, 2
  %4450 = fcmp fast olt float %4448, %4449
  br i1 %4450, label %4451, label %4504

; <label>:4451                                    ; preds = %4434
  %4452 = extractvalue %dx.types.CBufRet.f32 %4435, 2
  %4453 = fadd fast float %4452, %192
  %4454 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4455 = extractvalue %dx.types.CBufRet.f32 %4454, 0
  %4456 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4457 = extractvalue %dx.types.CBufRet.f32 %4456, 0
  %4458 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4459 = extractvalue %dx.types.CBufRet.f32 %4458, 0
  %4460 = extractvalue %dx.types.CBufRet.f32 %4454, 1
  %4461 = extractvalue %dx.types.CBufRet.f32 %4456, 1
  %4462 = extractvalue %dx.types.CBufRet.f32 %4458, 1
  %4463 = extractvalue %dx.types.CBufRet.f32 %4454, 3
  %4464 = extractvalue %dx.types.CBufRet.f32 %4456, 3
  %4465 = extractvalue %dx.types.CBufRet.f32 %4458, 3
  %4466 = fadd fast float %4463, %4438
  %4467 = fadd fast float %4464, %4439
  %4468 = fadd fast float %4453, %4465
  %4469 = fmul fast float %4466, %4455
  %4470 = call float @dx.op.tertiary.f32(i32 46, float %4467, float %4457, float %4469)  ; FMad(a,b,c)
  %4471 = call float @dx.op.tertiary.f32(i32 46, float %4468, float %4459, float %4470)  ; FMad(a,b,c)
  %4472 = fmul fast float %4466, %4460
  %4473 = call float @dx.op.tertiary.f32(i32 46, float %4467, float %4461, float %4472)  ; FMad(a,b,c)
  %4474 = call float @dx.op.tertiary.f32(i32 46, float %4468, float %4462, float %4473)  ; FMad(a,b,c)
  %4475 = fsub fast float %4471, %4463
  %4476 = fsub fast float %4474, %4464
  %4477 = fsub fast float %4475, %4441
  %4478 = fadd fast float %4477, %4449
  %4479 = fsub fast float %4476, %4442
  %4480 = fadd fast float %4479, %4449
  %4481 = extractvalue %dx.types.CBufRet.f32 %4440, 3
  %4482 = fmul fast float %4478, %4481
  %4483 = fmul fast float %4480, %4481
  %4484 = call float @dx.op.unary.f32(i32 7, float %4482)  ; Saturate(value)
  %4485 = call float @dx.op.unary.f32(i32 7, float %4483)  ; Saturate(value)
  %4486 = fsub fast float 1.000000e+00, %4484
  %4487 = fsub fast float 1.000000e+00, %4485
  %4488 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %45, float %4486, float %4487, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4489 = extractvalue %dx.types.ResRet.f32 %4488, 0
  %4490 = fcmp fast ugt float %4489, 0.000000e+00
  br i1 %4490, label %4491, label %4504

; <label>:4491                                    ; preds = %4451
  %4492 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4493 = extractvalue %dx.types.CBufRet.f32 %4492, 2
  %4494 = fmul fast float %4493, %4489
  %4495 = extractvalue %dx.types.CBufRet.f32 %4492, 3
  %4496 = fadd fast float %4495, %4494
  %4497 = extractvalue %dx.types.CBufRet.f32 %4458, 2
  %4498 = fadd fast float %4496, %4465
  %4499 = fmul fast float %4471, %4459
  %4500 = call float @dx.op.tertiary.f32(i32 46, float %4474, float %4462, float %4499)  ; FMad(a,b,c)
  %4501 = call float @dx.op.tertiary.f32(i32 46, float %4498, float %4497, float %4500)  ; FMad(a,b,c)
  %4502 = fsub fast float %4501, %4465
  %4503 = fsub fast float %4502, %4452
  br label %4504

; <label>:4504                                    ; preds = %4491, %4451, %4434
  %4505 = phi i1 [ true, %4491 ], [ false, %4451 ], [ false, %4434 ]
  %4506 = phi float [ %4503, %4491 ], [ -1.310720e+05, %4451 ], [ -1.310720e+05, %4434 ]
  %4507 = fsub fast float %4506, %192
  %4508 = call float @dx.op.unary.f32(i32 7, float %4507)  ; Saturate(value)
  %4509 = select i1 %4505, float %4508, float 1.000000e+00
  br label %4510

; <label>:4510                                    ; preds = %4504, %4369
  %4511 = phi float [ %4509, %4504 ], [ 0.000000e+00, %4369 ]
  %4512 = icmp eq i32 %4432, 3
  %4513 = select i1 %4512, float 1.000000e+00, float %4511
  %4514 = call float @dx.op.binary.f32(i32 35, float %4304, float %4513)  ; FMax(a,b)
  %4515 = fcmp fast olt float %4513, 1.000000e+00
  br i1 %4515, label %4516, label %4689

; <label>:4516                                    ; preds = %4510
  %4517 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 369)  ; CBufferLoadLegacy(handle,regIndex)
  %4518 = extractvalue %dx.types.CBufRet.i32 %4517, 0
  %4519 = and i32 %4518, 7
  %4520 = icmp eq i32 %4519, 0
  br i1 %4520, label %4592, label %4521

; <label>:4521                                    ; preds = %4516
  %4522 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %4523 = extractvalue %dx.types.CBufRet.f32 %4522, 0
  %4524 = extractvalue %dx.types.CBufRet.f32 %4522, 1
  %4525 = extractvalue %dx.types.CBufRet.f32 %4522, 2
  %4526 = fadd fast float %4523, %190
  %4527 = fadd fast float %4524, %191
  %4528 = fadd fast float %4525, %192
  %4529 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 151)  ; CBufferLoadLegacy(handle,regIndex)
  %4530 = extractvalue %dx.types.CBufRet.f32 %4529, 0
  %4531 = extractvalue %dx.types.CBufRet.f32 %4529, 1
  %4532 = extractvalue %dx.types.CBufRet.f32 %4529, 2
  %4533 = extractvalue %dx.types.CBufRet.f32 %4529, 3
  %4534 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 152)  ; CBufferLoadLegacy(handle,regIndex)
  %4535 = extractvalue %dx.types.CBufRet.f32 %4534, 0
  %4536 = extractvalue %dx.types.CBufRet.f32 %4534, 1
  %4537 = extractvalue %dx.types.CBufRet.f32 %4534, 2
  %4538 = extractvalue %dx.types.CBufRet.f32 %4534, 3
  %4539 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 153)  ; CBufferLoadLegacy(handle,regIndex)
  %4540 = extractvalue %dx.types.CBufRet.f32 %4539, 0
  %4541 = extractvalue %dx.types.CBufRet.f32 %4539, 1
  %4542 = extractvalue %dx.types.CBufRet.f32 %4539, 2
  %4543 = extractvalue %dx.types.CBufRet.f32 %4539, 3
  %4544 = fmul fast float %4526, %4530
  %4545 = call float @dx.op.tertiary.f32(i32 46, float %4527, float %4531, float %4544)  ; FMad(a,b,c)
  %4546 = call float @dx.op.tertiary.f32(i32 46, float %4528, float %4532, float %4545)  ; FMad(a,b,c)
  %4547 = fadd fast float %4546, %4533
  %4548 = fmul fast float %4535, %4526
  %4549 = call float @dx.op.tertiary.f32(i32 46, float %4527, float %4536, float %4548)  ; FMad(a,b,c)
  %4550 = call float @dx.op.tertiary.f32(i32 46, float %4528, float %4537, float %4549)  ; FMad(a,b,c)
  %4551 = fadd fast float %4550, %4538
  %4552 = fmul fast float %4540, %4526
  %4553 = call float @dx.op.tertiary.f32(i32 46, float %4527, float %4541, float %4552)  ; FMad(a,b,c)
  %4554 = call float @dx.op.tertiary.f32(i32 46, float %4528, float %4542, float %4553)  ; FMad(a,b,c)
  %4555 = fadd fast float %4554, %4543
  %4556 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 155)  ; CBufferLoadLegacy(handle,regIndex)
  %4557 = extractvalue %dx.types.CBufRet.f32 %4556, 1
  %4558 = extractvalue %dx.types.CBufRet.f32 %4556, 0
  %4559 = fmul fast float %4558, %307
  %4560 = fadd fast float %4555, %4559
  %4561 = fmul fast float %307, 0x401921FB60000000
  %4562 = call float @dx.op.unary.f32(i32 13, float %4561)  ; Sin(value)
  %4563 = call float @dx.op.unary.f32(i32 12, float %4561)  ; Cos(value)
  %4564 = fmul fast float %4563, %4557
  %4565 = call float @dx.op.tertiary.f32(i32 46, float %4562, float %4557, float 0.000000e+00)  ; FMad(a,b,c)
  %4566 = fmul fast float %4557, %4562
  %4567 = fsub fast float -0.000000e+00, %4566
  %4568 = call float @dx.op.tertiary.f32(i32 46, float %4563, float %4557, float 0.000000e+00)  ; FMad(a,b,c)
  br label %4569

; <label>:4569                                    ; preds = %4569, %4521
  %4570 = phi float [ 0.000000e+00, %4521 ], [ %4584, %4569 ]
  %4571 = phi i32 [ 0, %4521 ], [ %4585, %4569 ]
  %4572 = getelementptr [4 x float], [4 x float]* @PCF_OFFSETS_4.0, i32 0, i32 %4571
  %4573 = getelementptr [4 x float], [4 x float]* @PCF_OFFSETS_4.1, i32 0, i32 %4571
  %4574 = load float, float* %4572, align 4
  %4575 = load float, float* %4573, align 4
  %4576 = fmul fast float %4564, %4574
  %4577 = call float @dx.op.tertiary.f32(i32 46, float %4575, float %4567, float %4576)  ; FMad(a,b,c)
  %4578 = fmul fast float %4574, %4565
  %4579 = call float @dx.op.tertiary.f32(i32 46, float %4575, float %4568, float %4578)  ; FMad(a,b,c)
  %4580 = fadd fast float %4547, %4577
  %4581 = fadd fast float %4551, %4579
  %4582 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %2, %dx.types.Handle %47, float %4580, float %4581, float undef, float undef, i32 0, i32 0, i32 undef, float %4560)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4583 = extractvalue %dx.types.ResRet.f32 %4582, 0
  %4584 = fadd fast float %4583, %4570
  %4585 = add nuw nsw i32 %4571, 1
  %4586 = icmp eq i32 %4585, 4
  br i1 %4586, label %4587, label %4569

; <label>:4587                                    ; preds = %4569
  %4588 = fmul fast float %4584, 2.500000e-01
  %4589 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 370)  ; CBufferLoadLegacy(handle,regIndex)
  %4590 = extractvalue %dx.types.CBufRet.f32 %4589, 1
  %4591 = fmul fast float %4590, %4588
  br label %4592

; <label>:4592                                    ; preds = %4587, %4516
  %4593 = phi float [ %4588, %4587 ], [ 0.000000e+00, %4516 ]
  %4594 = phi float [ %4591, %4587 ], [ 0.000000e+00, %4516 ]
  %4595 = fcmp uge float %67, 0.000000e+00
  br i1 %4595, label %4596, label %4607

; <label>:4596                                    ; preds = %4592
  %4597 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %39, %dx.types.Handle %43, float %67, float %68, float %69, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4598 = extractvalue %dx.types.ResRet.f32 %4597, 0
  %4599 = extractvalue %dx.types.ResRet.f32 %4597, 1
  %4600 = extractvalue %dx.types.ResRet.f32 %4597, 2
  %4601 = fadd fast float %4598, %4514
  %4602 = fcmp fast ogt float %66, 0.000000e+00
  %4603 = call float @dx.op.dot3.f32(i32 55, float %63, float %64, float %65, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4604 = select i1 %4602, float 1.000000e+00, float %4603
  %4605 = fmul fast float %4604, %4600
  %4606 = select i1 %4602, float 0.000000e+00, float %4594
  br label %4689

; <label>:4607                                    ; preds = %4592
  %4608 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 369)  ; CBufferLoadLegacy(handle,regIndex)
  %4609 = extractvalue %dx.types.CBufRet.i32 %4608, 0
  %4610 = and i32 %4609, 7
  %4611 = icmp eq i32 %4610, 0
  br i1 %4611, label %4689, label %4612

; <label>:4612                                    ; preds = %4607
  %4613 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 370)  ; CBufferLoadLegacy(handle,regIndex)
  %4614 = extractvalue %dx.types.CBufRet.f32 %4613, 0
  %4615 = fmul fast float %4614, %4593
  %4616 = fadd fast float %4615, %4514
  %4617 = extractvalue %dx.types.CBufRet.f32 %4613, 2
  %4618 = fmul fast float %4617, %4593
  %4619 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 371)  ; CBufferLoadLegacy(handle,regIndex)
  %4620 = extractvalue %dx.types.CBufRet.f32 %4619, 0
  %4621 = fmul fast float %4620, %4593
  %4622 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %4623 = and i32 %4609, 8
  %4624 = icmp eq i32 %4623, 0
  br i1 %4624, label %4689, label %4625

; <label>:4625                                    ; preds = %4612
  %4626 = extractvalue %dx.types.CBufRet.f32 %4622, 2
  %4627 = fadd fast float %4626, %192
  %4628 = extractvalue %dx.types.CBufRet.f32 %4622, 1
  %4629 = fadd fast float %4628, %191
  %4630 = extractvalue %dx.types.CBufRet.f32 %4622, 0
  %4631 = fadd fast float %4630, %190
  %4632 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 377)  ; CBufferLoadLegacy(handle,regIndex)
  %4633 = extractvalue %dx.types.CBufRet.f32 %4632, 0
  %4634 = extractvalue %dx.types.CBufRet.f32 %4632, 1
  %4635 = extractvalue %dx.types.CBufRet.f32 %4632, 2
  %4636 = fsub fast float %4631, %4633
  %4637 = fsub fast float %4629, %4634
  %4638 = fsub fast float %4627, %4635
  %4639 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 378)  ; CBufferLoadLegacy(handle,regIndex)
  %4640 = extractvalue %dx.types.CBufRet.f32 %4639, 0
  %4641 = extractvalue %dx.types.CBufRet.f32 %4639, 1
  %4642 = extractvalue %dx.types.CBufRet.f32 %4639, 2
  %4643 = fmul fast float %4636, %4640
  %4644 = fmul fast float %4637, %4641
  %4645 = fmul fast float %4638, %4642
  %4646 = fcmp fast oge float %4643, 0.000000e+00
  %4647 = fcmp fast oge float %4644, 0.000000e+00
  %4648 = fcmp fast oge float %4645, 0.000000e+00
  %4649 = and i1 %4646, %4647
  %4650 = and i1 %4648, %4649
  %4651 = fcmp fast ole float %4643, 1.000000e+00
  %4652 = fcmp fast ole float %4644, 1.000000e+00
  %4653 = fcmp fast ole float %4645, 1.000000e+00
  %4654 = and i1 %4651, %4652
  %4655 = and i1 %4653, %4654
  %4656 = and i1 %4650, %4655
  br i1 %4656, label %4657, label %4689

; <label>:4657                                    ; preds = %4625
  %4658 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 379)  ; CBufferLoadLegacy(handle,regIndex)
  %4659 = extractvalue %dx.types.CBufRet.i32 %4658, 0
  %4660 = icmp eq i32 %4659, 0
  br i1 %4660, label %4667, label %4661

; <label>:4661                                    ; preds = %4657
  %4662 = add i32 %4659, 0
  %4663 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4662, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4664 = fsub fast float -0.000000e+00, %4644
  %4665 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %4663, %dx.types.Handle %108, float %4643, float %4664, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %4666 = extractvalue %dx.types.ResRet.f32 %4665, 0
  br label %4667

; <label>:4667                                    ; preds = %4661, %4657
  %4668 = phi float [ %4666, %4661 ], [ 1.000000e+00, %4657 ]
  %4669 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 369)  ; CBufferLoadLegacy(handle,regIndex)
  %4670 = extractvalue %dx.types.CBufRet.i32 %4669, 0
  %4671 = and i32 %4670, 32
  %4672 = icmp ne i32 %4671, 0
  %4673 = fmul fast float %4668, %4593
  %4674 = select i1 %4672, float %4668, float %4673
  %4675 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 379)  ; CBufferLoadLegacy(handle,regIndex)
  %4676 = extractvalue %dx.types.CBufRet.f32 %4675, 1
  %4677 = fmul fast float %4674, %4676
  %4678 = fadd fast float %4677, %4616
  %4679 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 380)  ; CBufferLoadLegacy(handle,regIndex)
  %4680 = extractvalue %dx.types.CBufRet.f32 %4679, 0
  %4681 = fmul fast float %4674, %4680
  %4682 = fadd fast float %4681, %4594
  %4683 = extractvalue %dx.types.CBufRet.f32 %4679, 1
  %4684 = fmul fast float %4674, %4683
  %4685 = fadd fast float %4684, %4618
  %4686 = extractvalue %dx.types.CBufRet.f32 %4679, 2
  %4687 = fmul fast float %4686, %4674
  %4688 = fadd fast float %4687, %4621
  br label %4689

; <label>:4689                                    ; preds = %4667, %4625, %4612, %4607, %4596, %4510
  %4690 = phi float [ %4514, %4607 ], [ %4514, %4510 ], [ %4601, %4596 ], [ %4678, %4667 ], [ %4616, %4625 ], [ %4616, %4612 ]
  %4691 = phi float [ %4594, %4607 ], [ 0.000000e+00, %4510 ], [ %4606, %4596 ], [ %4682, %4667 ], [ %4594, %4625 ], [ %4594, %4612 ]
  %4692 = phi float [ 0.000000e+00, %4607 ], [ 0.000000e+00, %4510 ], [ %4599, %4596 ], [ %4685, %4667 ], [ %4618, %4625 ], [ %4618, %4612 ]
  %4693 = phi float [ 0.000000e+00, %4607 ], [ 0.000000e+00, %4510 ], [ %4605, %4596 ], [ %4688, %4667 ], [ %4621, %4625 ], [ %4621, %4612 ]
  %4694 = call float @dx.op.unary.f32(i32 7, float %4690)  ; Saturate(value)
  %4695 = call float @dx.op.unary.f32(i32 7, float %4691)  ; Saturate(value)
  %4696 = call float @dx.op.unary.f32(i32 7, float %4692)  ; Saturate(value)
  %4697 = call float @dx.op.unary.f32(i32 7, float %4693)  ; Saturate(value)
  %4698 = fcmp fast une float %4696, 0.000000e+00
  %4699 = fcmp fast une float %4697, 0.000000e+00
  %4700 = or i1 %4698, %4699
  br i1 %4700, label %4701, label %5260

; <label>:4701                                    ; preds = %4689
  br i1 %4698, label %4702, label %4975

; <label>:4702                                    ; preds = %4701
  %4703 = call float @dx.op.unary.f32(i32 23, float %4301)  ; Log(value)
  %4704 = fmul fast float %4703, 4.000000e+00
  %4705 = call float @dx.op.unary.f32(i32 21, float %4704)  ; Exp(value)
  %4706 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4707 = extractvalue %dx.types.CBufRet.f32 %4706, 0
  %4708 = fmul fast float %4707, %54
  %4709 = fmul fast float %4707, %55
  %4710 = fmul fast float %4707, %56
  %4711 = call float @dx.op.unary.f32(i32 6, float %63)  ; FAbs(value)
  %4712 = call float @dx.op.unary.f32(i32 6, float %64)  ; FAbs(value)
  %4713 = call float @dx.op.unary.f32(i32 6, float %65)  ; FAbs(value)
  %4714 = call float @dx.op.unary.f32(i32 23, float %4711)  ; Log(value)
  %4715 = call float @dx.op.unary.f32(i32 23, float %4712)  ; Log(value)
  %4716 = call float @dx.op.unary.f32(i32 23, float %4713)  ; Log(value)
  %4717 = fmul fast float %4714, 4.000000e+00
  %4718 = fmul fast float %4715, 4.000000e+00
  %4719 = fmul fast float %4716, 4.000000e+00
  %4720 = call float @dx.op.unary.f32(i32 21, float %4717)  ; Exp(value)
  %4721 = call float @dx.op.unary.f32(i32 21, float %4718)  ; Exp(value)
  %4722 = call float @dx.op.unary.f32(i32 21, float %4719)  ; Exp(value)
  %4723 = fadd fast float %4721, %4720
  %4724 = fadd fast float %4723, %4722
  %4725 = fdiv fast float 1.000000e+00, %4724
  %4726 = fmul fast float %4725, %4720
  %4727 = fcmp fast ogt float %63, 0.000000e+00
  %4728 = fcmp fast ogt float %64, 0.000000e+00
  %4729 = fcmp fast ogt float %65, 0.000000e+00
  %4730 = fcmp fast olt float %63, 0.000000e+00
  %4731 = fcmp fast olt float %64, 0.000000e+00
  %4732 = fcmp fast olt float %65, 0.000000e+00
  %4733 = zext i1 %4727 to i32
  %4734 = zext i1 %4728 to i32
  %4735 = zext i1 %4729 to i32
  %4736 = zext i1 %4730 to i32
  %4737 = zext i1 %4731 to i32
  %4738 = zext i1 %4732 to i32
  %4739 = sub nsw i32 %4733, %4736
  %4740 = sub nsw i32 %4734, %4737
  %4741 = sub nsw i32 %4735, %4738
  %4742 = call float @dx.op.unary.f32(i32 83, float %4708)  ; DerivCoarseX(value)
  %4743 = call float @dx.op.unary.f32(i32 83, float %4709)  ; DerivCoarseX(value)
  %4744 = call float @dx.op.unary.f32(i32 83, float %4710)  ; DerivCoarseX(value)
  %4745 = call float @dx.op.unary.f32(i32 84, float %4708)  ; DerivCoarseY(value)
  %4746 = call float @dx.op.unary.f32(i32 84, float %4709)  ; DerivCoarseY(value)
  %4747 = call float @dx.op.unary.f32(i32 84, float %4710)  ; DerivCoarseY(value)
  %4748 = fcmp fast ole float %307, %4726
  %4749 = fmul fast float %4725, %4723
  %4750 = fcmp fast ole float %307, %4749
  %4751 = select i1 %4750, float %4710, float %4708
  %4752 = select i1 %4750, float %4708, float %4709
  %4753 = select i1 %4748, float %4709, float %4751
  %4754 = select i1 %4748, float %4710, float %4752
  %4755 = select i1 %4750, float %4744, float %4742
  %4756 = select i1 %4750, float %4742, float %4743
  %4757 = select i1 %4748, float %4743, float %4755
  %4758 = select i1 %4748, float %4744, float %4756
  %4759 = select i1 %4750, float %4747, float %4745
  %4760 = select i1 %4750, float %4745, float %4746
  %4761 = select i1 %4748, float %4746, float %4759
  %4762 = select i1 %4748, float %4747, float %4760
  %4763 = call float @dx.op.unary.f32(i32 27, float %4753)  ; Round_ni(value)
  %4764 = call float @dx.op.unary.f32(i32 27, float %4754)  ; Round_ni(value)
  %4765 = fptosi float %4763 to i32
  %4766 = fptosi float %4764 to i32
  %4767 = xor i32 %4766, %4765
  %4768 = sitofp i32 %4767 to float
  %4769 = fptosi float %4768 to i32
  %4770 = sitofp i32 %4769 to float
  %4771 = fmul fast float %4770, 0x3FE3C6EF40000000
  %4772 = frem fast float %4763, 2.560000e+02
  %4773 = frem fast float %4764, 2.560000e+02
  %4774 = fptoui float %4772 to i32
  %4775 = fptoui float %4773 to i32
  %4776 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %28, i32 0, i32 %4774, i32 %4775, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4777 = extractvalue %dx.types.ResRet.f32 %4776, 0
  %4778 = extractvalue %dx.types.ResRet.f32 %4776, 1
  %4779 = extractvalue %dx.types.ResRet.f32 %4776, 2
  %4780 = fadd fast float %4777, %4771
  %4781 = fadd fast float %4778, %4771
  %4782 = fadd fast float %4779, %4771
  %4783 = call float @dx.op.unary.f32(i32 22, float %4780)  ; Frc(value)
  %4784 = call float @dx.op.unary.f32(i32 22, float %4781)  ; Frc(value)
  %4785 = call float @dx.op.unary.f32(i32 22, float %4782)  ; Frc(value)
  %4786 = fmul fast float %4785, 0x401921FB60000000
  %4787 = call float @dx.op.unary.f32(i32 13, float %4786)  ; Sin(value)
  %4788 = call float @dx.op.unary.f32(i32 12, float %4786)  ; Cos(value)
  %4789 = fsub fast float -0.000000e+00, %4788
  %4790 = fmul fast float %4788, %4753
  %4791 = call float @dx.op.tertiary.f32(i32 46, float %4787, float %4754, float %4790)  ; FMad(a,b,c)
  %4792 = fmul fast float %4787, %4753
  %4793 = call float @dx.op.tertiary.f32(i32 46, float %4789, float %4754, float %4792)  ; FMad(a,b,c)
  %4794 = fadd fast float %4791, %4783
  %4795 = fadd fast float %4793, %4784
  %4796 = extractvalue %dx.types.CBufRet.f32 %4706, 3
  %4797 = bitcast float %4796 to i32
  %4798 = icmp eq i32 %4797, 0
  br i1 %4798, label %4837, label %4799

; <label>:4799                                    ; preds = %4702
  %4800 = add i32 %4797, 0
  %4801 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4800, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4802 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4801, %dx.types.Handle %108, float %4794, float %4795, float undef, float undef, i32 0, i32 0, i32 undef, float %4757, float %4758, float undef, float %4761, float %4762, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4803 = extractvalue %dx.types.ResRet.f32 %4802, 0
  %4804 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4805 = extractvalue %dx.types.CBufRet.f32 %4804, 1
  %4806 = extractvalue %dx.types.CBufRet.f32 %4804, 2
  %4807 = fsub fast float 1.000000e+00, %4696
  %4808 = call float @dx.op.binary.f32(i32 35, float %4807, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4809 = bitcast float %4696 to i32
  %4810 = sitofp i32 %4809 to float
  %4811 = fadd fast float %4810, 0xC1CFBF8940000000
  %4812 = fmul fast float %4806, %4811
  %4813 = fadd fast float %4812, 0x41CFBF8940000000
  %4814 = fptosi float %4813 to i32
  %4815 = bitcast i32 %4814 to float
  %4816 = bitcast float %4808 to i32
  %4817 = sitofp i32 %4816 to float
  %4818 = fadd fast float %4817, 0xC1CFBF8940000000
  %4819 = fmul fast float %4818, %4806
  %4820 = fadd fast float %4819, 0x41CFBF8940000000
  %4821 = fptosi float %4820 to i32
  %4822 = bitcast i32 %4821 to float
  %4823 = fmul fast float %4815, %4805
  %4824 = fmul fast float %4822, %4805
  %4825 = fsub fast float %4808, %4823
  %4826 = fadd fast float %4824, %4808
  %4827 = call float @dx.op.unary.f32(i32 7, float %4825)  ; Saturate(value)
  %4828 = call float @dx.op.unary.f32(i32 7, float %4826)  ; Saturate(value)
  %4829 = fsub fast float %4803, %4827
  %4830 = fsub fast float %4828, %4827
  %4831 = bitcast float %4830 to i32
  %4832 = sub nsw i32 2129859010, %4831
  %4833 = bitcast i32 %4832 to float
  %4834 = fmul fast float %4833, %4829
  %4835 = call float @dx.op.unary.f32(i32 7, float %4834)  ; Saturate(value)
  %4836 = fcmp fast olt float %4835, 0x3F70101020000000
  br i1 %4836, label %4975, label %4837

; <label>:4837                                    ; preds = %4799, %4702
  %4838 = phi float [ %4835, %4799 ], [ %4696, %4702 ]
  %4839 = fmul fast float %4838, %4705
  %4840 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4841 = extractvalue %dx.types.CBufRet.i32 %4840, 1
  %4842 = extractvalue %dx.types.CBufRet.i32 %4840, 0
  %4843 = add i32 %4842, 0
  %4844 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4843, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4845 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4844, %dx.types.Handle %107, float %4794, float %4795, float undef, float undef, i32 0, i32 0, i32 undef, float %4757, float %4758, float undef, float %4761, float %4762, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4846 = extractvalue %dx.types.ResRet.f32 %4845, 0
  %4847 = extractvalue %dx.types.ResRet.f32 %4845, 1
  %4848 = extractvalue %dx.types.ResRet.f32 %4845, 2
  %4849 = extractvalue %dx.types.ResRet.f32 %4845, 3
  %4850 = and i32 %4841, 255
  %4851 = uitofp i32 %4850 to float
  %4852 = lshr i32 %4841, 8
  %4853 = and i32 %4852, 255
  %4854 = uitofp i32 %4853 to float
  %4855 = fmul fast float %4849, %4851
  %4856 = fadd fast float %4855, %4854
  %4857 = fmul fast float %4856, 0x3F70101000000000
  %4858 = fadd fast float %4857, 0xBFB99999A0000000
  %4859 = call float @dx.op.unary.f32(i32 7, float %4858)  ; Saturate(value)
  %4860 = fmul fast float %4859, 0x3FF1C71C80000000
  %4861 = call float @dx.op.binary.f32(i32 36, float %4857, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4862 = fsub fast float 1.000000e+00, %4860
  %4863 = call float @dx.op.unary.f32(i32 7, float %4862)  ; Saturate(value)
  %4864 = fmul fast float %4863, %4846
  %4865 = fmul fast float %4863, %4847
  %4866 = fmul fast float %4863, %4848
  %4867 = call float @dx.op.unary.f32(i32 7, float %4864)  ; Saturate(value)
  %4868 = call float @dx.op.unary.f32(i32 7, float %4865)  ; Saturate(value)
  %4869 = call float @dx.op.unary.f32(i32 7, float %4866)  ; Saturate(value)
  %4870 = fmul fast float %4860, %4846
  %4871 = fmul fast float %4860, %4847
  %4872 = fmul fast float %4860, %4848
  %4873 = fadd fast float %4870, %4861
  %4874 = fadd fast float %4871, %4861
  %4875 = fadd fast float %4872, %4861
  %4876 = call float @dx.op.unary.f32(i32 7, float %4873)  ; Saturate(value)
  %4877 = call float @dx.op.unary.f32(i32 7, float %4874)  ; Saturate(value)
  %4878 = call float @dx.op.unary.f32(i32 7, float %4875)  ; Saturate(value)
  %4879 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4880 = extractvalue %dx.types.CBufRet.i32 %4879, 3
  %4881 = extractvalue %dx.types.CBufRet.i32 %4879, 2
  %4882 = add i32 %4881, 0
  %4883 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4882, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4884 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4883, %dx.types.Handle %107, float %4794, float %4795, float undef, float undef, i32 0, i32 0, i32 undef, float %4757, float %4758, float undef, float %4761, float %4762, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4885 = extractvalue %dx.types.ResRet.f32 %4884, 0
  %4886 = extractvalue %dx.types.ResRet.f32 %4884, 1
  %4887 = extractvalue %dx.types.ResRet.f32 %4884, 2
  %4888 = extractvalue %dx.types.ResRet.f32 %4884, 3
  %4889 = and i32 %4880, 255
  %4890 = uitofp i32 %4889 to float
  %4891 = lshr i32 %4880, 8
  %4892 = and i32 %4891, 255
  %4893 = uitofp i32 %4892 to float
  %4894 = lshr i32 %4880, 16
  %4895 = and i32 %4894, 255
  %4896 = uitofp i32 %4895 to float
  %4897 = fmul fast float %4896, 0x3F70101000000000
  %4898 = fmul fast float %4885, %4890
  %4899 = fadd fast float %4898, %4893
  %4900 = fmul fast float %4899, 0x3F70101000000000
  %4901 = fadd fast float %4886, -5.000000e-01
  %4902 = fadd fast float %4888, -5.000000e-01
  %4903 = fmul fast float %4901, %4897
  %4904 = fmul fast float %4902, %4897
  %4905 = fadd fast float %4903, 5.000000e-01
  %4906 = fadd fast float %4904, 5.000000e-01
  %4907 = fmul fast float %4905, 2.000000e+00
  %4908 = fadd fast float %4907, -1.000000e+00
  %4909 = fmul fast float %4906, 2.000000e+00
  %4910 = fadd fast float %4909, -1.000000e+00
  %4911 = fadd fast float %4908, %4910
  %4912 = fmul fast float %4911, 5.000000e-01
  %4913 = fsub fast float %4908, %4910
  %4914 = fmul fast float %4913, 5.000000e-01
  %4915 = call float @dx.op.unary.f32(i32 6, float %4912)  ; FAbs(value)
  %4916 = fsub fast float 1.000000e+00, %4915
  %4917 = call float @dx.op.unary.f32(i32 6, float %4914)  ; FAbs(value)
  %4918 = fsub fast float %4916, %4917
  %4919 = call float @dx.op.dot3.f32(i32 55, float %4912, float %4914, float %4918, float %4912, float %4914, float %4918)  ; Dot3(ax,ay,az,bx,by,bz)
  %4920 = call float @dx.op.unary.f32(i32 25, float %4919)  ; Rsqrt(value)
  %4921 = fmul fast float %4912, %4920
  %4922 = fmul fast float %4914, %4920
  %4923 = select i1 %4750, i32 %4740, i32 %4741
  %4924 = select i1 %4748, i32 %4739, i32 %4923
  %4925 = sitofp i32 %4924 to float
  %4926 = fmul fast float %4918, %4925
  %4927 = fmul fast float %4926, %4920
  %4928 = select i1 %4750, float %4927, float %4922
  %4929 = select i1 %4750, float %4922, float %4927
  %4930 = select i1 %4748, float %4927, float %4921
  %4931 = select i1 %4748, float %4922, float %4928
  %4932 = select i1 %4748, float %4921, float %4929
  %4933 = fsub fast float %4867, %4428
  %4934 = fsub fast float %4868, %4429
  %4935 = fsub fast float %4869, %4430
  %4936 = fmul fast float %4933, %4839
  %4937 = fmul fast float %4934, %4839
  %4938 = fmul fast float %4935, %4839
  %4939 = fadd fast float %4936, %4428
  %4940 = fadd fast float %4937, %4429
  %4941 = fadd fast float %4938, %4430
  %4942 = fsub fast float %4876, %4347
  %4943 = fsub fast float %4877, %4348
  %4944 = fsub fast float %4878, %4349
  %4945 = fmul fast float %4942, %4839
  %4946 = fmul fast float %4943, %4839
  %4947 = fmul fast float %4944, %4839
  %4948 = fadd fast float %4945, %4347
  %4949 = fadd fast float %4946, %4348
  %4950 = fadd fast float %4947, %4349
  %4951 = fadd fast float %4930, %4286
  %4952 = fadd fast float %4931, %4287
  %4953 = fadd fast float %4932, %4288
  %4954 = call float @dx.op.dot3.f32(i32 55, float %4951, float %4952, float %4953, float %4951, float %4952, float %4953)  ; Dot3(ax,ay,az,bx,by,bz)
  %4955 = call float @dx.op.unary.f32(i32 25, float %4954)  ; Rsqrt(value)
  %4956 = fmul fast float %4951, %4955
  %4957 = fmul fast float %4952, %4955
  %4958 = fmul fast float %4953, %4955
  %4959 = fsub fast float %4956, %4286
  %4960 = fsub fast float %4957, %4287
  %4961 = fsub fast float %4958, %4288
  %4962 = fmul fast float %4959, %4839
  %4963 = fmul fast float %4960, %4839
  %4964 = fmul fast float %4961, %4839
  %4965 = fadd fast float %4962, %4286
  %4966 = fadd fast float %4963, %4287
  %4967 = fadd fast float %4964, %4288
  %4968 = call float @dx.op.binary.f32(i32 36, float %4301, float %4887)  ; FMin(a,b)
  %4969 = fsub fast float %4968, %4301
  %4970 = fmul fast float %4969, %4839
  %4971 = fadd fast float %4970, %4301
  %4972 = fsub fast float %4900, %4350
  %4973 = fmul fast float %4972, %4839
  %4974 = fadd fast float %4973, %4350
  br label %4975

; <label>:4975                                    ; preds = %4837, %4799, %4701
  %4976 = phi float [ %4948, %4837 ], [ %4347, %4799 ], [ %4347, %4701 ]
  %4977 = phi float [ %4949, %4837 ], [ %4348, %4799 ], [ %4348, %4701 ]
  %4978 = phi float [ %4950, %4837 ], [ %4349, %4799 ], [ %4349, %4701 ]
  %4979 = phi float [ %4939, %4837 ], [ %4428, %4799 ], [ %4428, %4701 ]
  %4980 = phi float [ %4940, %4837 ], [ %4429, %4799 ], [ %4429, %4701 ]
  %4981 = phi float [ %4941, %4837 ], [ %4430, %4799 ], [ %4430, %4701 ]
  %4982 = phi float [ %4965, %4837 ], [ %4286, %4799 ], [ %4286, %4701 ]
  %4983 = phi float [ %4966, %4837 ], [ %4287, %4799 ], [ %4287, %4701 ]
  %4984 = phi float [ %4967, %4837 ], [ %4288, %4799 ], [ %4288, %4701 ]
  %4985 = phi float [ %4974, %4837 ], [ %4350, %4799 ], [ %4350, %4701 ]
  %4986 = phi float [ %4971, %4837 ], [ %4301, %4799 ], [ %4301, %4701 ]
  br i1 %4699, label %4987, label %5260

; <label>:4987                                    ; preds = %4975
  %4988 = call float @dx.op.unary.f32(i32 23, float %4986)  ; Log(value)
  %4989 = fmul fast float %4988, 4.000000e+00
  %4990 = call float @dx.op.unary.f32(i32 21, float %4989)  ; Exp(value)
  %4991 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4992 = extractvalue %dx.types.CBufRet.f32 %4991, 0
  %4993 = fmul fast float %4992, %54
  %4994 = fmul fast float %4992, %55
  %4995 = fmul fast float %4992, %56
  %4996 = call float @dx.op.unary.f32(i32 6, float %63)  ; FAbs(value)
  %4997 = call float @dx.op.unary.f32(i32 6, float %64)  ; FAbs(value)
  %4998 = call float @dx.op.unary.f32(i32 6, float %65)  ; FAbs(value)
  %4999 = call float @dx.op.unary.f32(i32 23, float %4996)  ; Log(value)
  %5000 = call float @dx.op.unary.f32(i32 23, float %4997)  ; Log(value)
  %5001 = call float @dx.op.unary.f32(i32 23, float %4998)  ; Log(value)
  %5002 = fmul fast float %4999, 4.000000e+00
  %5003 = fmul fast float %5000, 4.000000e+00
  %5004 = fmul fast float %5001, 4.000000e+00
  %5005 = call float @dx.op.unary.f32(i32 21, float %5002)  ; Exp(value)
  %5006 = call float @dx.op.unary.f32(i32 21, float %5003)  ; Exp(value)
  %5007 = call float @dx.op.unary.f32(i32 21, float %5004)  ; Exp(value)
  %5008 = fadd fast float %5006, %5005
  %5009 = fadd fast float %5008, %5007
  %5010 = fdiv fast float 1.000000e+00, %5009
  %5011 = fmul fast float %5010, %5005
  %5012 = fcmp fast ogt float %63, 0.000000e+00
  %5013 = fcmp fast ogt float %64, 0.000000e+00
  %5014 = fcmp fast ogt float %65, 0.000000e+00
  %5015 = fcmp fast olt float %63, 0.000000e+00
  %5016 = fcmp fast olt float %64, 0.000000e+00
  %5017 = fcmp fast olt float %65, 0.000000e+00
  %5018 = zext i1 %5012 to i32
  %5019 = zext i1 %5013 to i32
  %5020 = zext i1 %5014 to i32
  %5021 = zext i1 %5015 to i32
  %5022 = zext i1 %5016 to i32
  %5023 = zext i1 %5017 to i32
  %5024 = sub nsw i32 %5018, %5021
  %5025 = sub nsw i32 %5019, %5022
  %5026 = sub nsw i32 %5020, %5023
  %5027 = call float @dx.op.unary.f32(i32 83, float %4993)  ; DerivCoarseX(value)
  %5028 = call float @dx.op.unary.f32(i32 83, float %4994)  ; DerivCoarseX(value)
  %5029 = call float @dx.op.unary.f32(i32 83, float %4995)  ; DerivCoarseX(value)
  %5030 = call float @dx.op.unary.f32(i32 84, float %4993)  ; DerivCoarseY(value)
  %5031 = call float @dx.op.unary.f32(i32 84, float %4994)  ; DerivCoarseY(value)
  %5032 = call float @dx.op.unary.f32(i32 84, float %4995)  ; DerivCoarseY(value)
  %5033 = fcmp fast ole float %307, %5011
  %5034 = fmul fast float %5010, %5008
  %5035 = fcmp fast ole float %307, %5034
  %5036 = select i1 %5035, float %4995, float %4993
  %5037 = select i1 %5035, float %4993, float %4994
  %5038 = select i1 %5033, float %4994, float %5036
  %5039 = select i1 %5033, float %4995, float %5037
  %5040 = select i1 %5035, float %5029, float %5027
  %5041 = select i1 %5035, float %5027, float %5028
  %5042 = select i1 %5033, float %5028, float %5040
  %5043 = select i1 %5033, float %5029, float %5041
  %5044 = select i1 %5035, float %5032, float %5030
  %5045 = select i1 %5035, float %5030, float %5031
  %5046 = select i1 %5033, float %5031, float %5044
  %5047 = select i1 %5033, float %5032, float %5045
  %5048 = call float @dx.op.unary.f32(i32 27, float %5038)  ; Round_ni(value)
  %5049 = call float @dx.op.unary.f32(i32 27, float %5039)  ; Round_ni(value)
  %5050 = fptosi float %5048 to i32
  %5051 = fptosi float %5049 to i32
  %5052 = xor i32 %5051, %5050
  %5053 = sitofp i32 %5052 to float
  %5054 = fptosi float %5053 to i32
  %5055 = sitofp i32 %5054 to float
  %5056 = fmul fast float %5055, 0x3FE3C6EF40000000
  %5057 = frem fast float %5048, 2.560000e+02
  %5058 = frem fast float %5049, 2.560000e+02
  %5059 = fptoui float %5057 to i32
  %5060 = fptoui float %5058 to i32
  %5061 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %28, i32 0, i32 %5059, i32 %5060, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5062 = extractvalue %dx.types.ResRet.f32 %5061, 0
  %5063 = extractvalue %dx.types.ResRet.f32 %5061, 1
  %5064 = extractvalue %dx.types.ResRet.f32 %5061, 2
  %5065 = fadd fast float %5062, %5056
  %5066 = fadd fast float %5063, %5056
  %5067 = fadd fast float %5064, %5056
  %5068 = call float @dx.op.unary.f32(i32 22, float %5065)  ; Frc(value)
  %5069 = call float @dx.op.unary.f32(i32 22, float %5066)  ; Frc(value)
  %5070 = call float @dx.op.unary.f32(i32 22, float %5067)  ; Frc(value)
  %5071 = fmul fast float %5070, 0x401921FB60000000
  %5072 = call float @dx.op.unary.f32(i32 13, float %5071)  ; Sin(value)
  %5073 = call float @dx.op.unary.f32(i32 12, float %5071)  ; Cos(value)
  %5074 = fsub fast float -0.000000e+00, %5073
  %5075 = fmul fast float %5073, %5038
  %5076 = call float @dx.op.tertiary.f32(i32 46, float %5072, float %5039, float %5075)  ; FMad(a,b,c)
  %5077 = fmul fast float %5072, %5038
  %5078 = call float @dx.op.tertiary.f32(i32 46, float %5074, float %5039, float %5077)  ; FMad(a,b,c)
  %5079 = fadd fast float %5076, %5068
  %5080 = fadd fast float %5078, %5069
  %5081 = extractvalue %dx.types.CBufRet.f32 %4991, 3
  %5082 = bitcast float %5081 to i32
  %5083 = icmp eq i32 %5082, 0
  br i1 %5083, label %5122, label %5084

; <label>:5084                                    ; preds = %4987
  %5085 = add i32 %5082, 0
  %5086 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5085, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5087 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5086, %dx.types.Handle %108, float %5079, float %5080, float undef, float undef, i32 0, i32 0, i32 undef, float %5042, float %5043, float undef, float %5046, float %5047, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5088 = extractvalue %dx.types.ResRet.f32 %5087, 0
  %5089 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %5090 = extractvalue %dx.types.CBufRet.f32 %5089, 1
  %5091 = extractvalue %dx.types.CBufRet.f32 %5089, 2
  %5092 = fsub fast float 1.000000e+00, %4697
  %5093 = call float @dx.op.binary.f32(i32 35, float %5092, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %5094 = bitcast float %4697 to i32
  %5095 = sitofp i32 %5094 to float
  %5096 = fadd fast float %5095, 0xC1CFBF8940000000
  %5097 = fmul fast float %5091, %5096
  %5098 = fadd fast float %5097, 0x41CFBF8940000000
  %5099 = fptosi float %5098 to i32
  %5100 = bitcast i32 %5099 to float
  %5101 = bitcast float %5093 to i32
  %5102 = sitofp i32 %5101 to float
  %5103 = fadd fast float %5102, 0xC1CFBF8940000000
  %5104 = fmul fast float %5103, %5091
  %5105 = fadd fast float %5104, 0x41CFBF8940000000
  %5106 = fptosi float %5105 to i32
  %5107 = bitcast i32 %5106 to float
  %5108 = fmul fast float %5100, %5090
  %5109 = fmul fast float %5107, %5090
  %5110 = fsub fast float %5093, %5108
  %5111 = fadd fast float %5109, %5093
  %5112 = call float @dx.op.unary.f32(i32 7, float %5110)  ; Saturate(value)
  %5113 = call float @dx.op.unary.f32(i32 7, float %5111)  ; Saturate(value)
  %5114 = fsub fast float %5088, %5112
  %5115 = fsub fast float %5113, %5112
  %5116 = bitcast float %5115 to i32
  %5117 = sub nsw i32 2129859010, %5116
  %5118 = bitcast i32 %5117 to float
  %5119 = fmul fast float %5118, %5114
  %5120 = call float @dx.op.unary.f32(i32 7, float %5119)  ; Saturate(value)
  %5121 = fcmp fast olt float %5120, 0x3F70101020000000
  br i1 %5121, label %5260, label %5122

; <label>:5122                                    ; preds = %5084, %4987
  %5123 = phi float [ %5120, %5084 ], [ %4697, %4987 ]
  %5124 = fmul fast float %5123, %4990
  %5125 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %5126 = extractvalue %dx.types.CBufRet.i32 %5125, 1
  %5127 = extractvalue %dx.types.CBufRet.i32 %5125, 0
  %5128 = add i32 %5127, 0
  %5129 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5128, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5130 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5129, %dx.types.Handle %107, float %5079, float %5080, float undef, float undef, i32 0, i32 0, i32 undef, float %5042, float %5043, float undef, float %5046, float %5047, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5131 = extractvalue %dx.types.ResRet.f32 %5130, 0
  %5132 = extractvalue %dx.types.ResRet.f32 %5130, 1
  %5133 = extractvalue %dx.types.ResRet.f32 %5130, 2
  %5134 = extractvalue %dx.types.ResRet.f32 %5130, 3
  %5135 = and i32 %5126, 255
  %5136 = uitofp i32 %5135 to float
  %5137 = lshr i32 %5126, 8
  %5138 = and i32 %5137, 255
  %5139 = uitofp i32 %5138 to float
  %5140 = fmul fast float %5134, %5136
  %5141 = fadd fast float %5140, %5139
  %5142 = fmul fast float %5141, 0x3F70101000000000
  %5143 = fadd fast float %5142, 0xBFB99999A0000000
  %5144 = call float @dx.op.unary.f32(i32 7, float %5143)  ; Saturate(value)
  %5145 = fmul fast float %5144, 0x3FF1C71C80000000
  %5146 = call float @dx.op.binary.f32(i32 36, float %5142, float 0x3FB99999A0000000)  ; FMin(a,b)
  %5147 = fsub fast float 1.000000e+00, %5145
  %5148 = call float @dx.op.unary.f32(i32 7, float %5147)  ; Saturate(value)
  %5149 = fmul fast float %5148, %5131
  %5150 = fmul fast float %5148, %5132
  %5151 = fmul fast float %5148, %5133
  %5152 = call float @dx.op.unary.f32(i32 7, float %5149)  ; Saturate(value)
  %5153 = call float @dx.op.unary.f32(i32 7, float %5150)  ; Saturate(value)
  %5154 = call float @dx.op.unary.f32(i32 7, float %5151)  ; Saturate(value)
  %5155 = fmul fast float %5145, %5131
  %5156 = fmul fast float %5145, %5132
  %5157 = fmul fast float %5145, %5133
  %5158 = fadd fast float %5155, %5146
  %5159 = fadd fast float %5156, %5146
  %5160 = fadd fast float %5157, %5146
  %5161 = call float @dx.op.unary.f32(i32 7, float %5158)  ; Saturate(value)
  %5162 = call float @dx.op.unary.f32(i32 7, float %5159)  ; Saturate(value)
  %5163 = call float @dx.op.unary.f32(i32 7, float %5160)  ; Saturate(value)
  %5164 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %5165 = extractvalue %dx.types.CBufRet.i32 %5164, 3
  %5166 = extractvalue %dx.types.CBufRet.i32 %5164, 2
  %5167 = add i32 %5166, 0
  %5168 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5167, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5169 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5168, %dx.types.Handle %107, float %5079, float %5080, float undef, float undef, i32 0, i32 0, i32 undef, float %5042, float %5043, float undef, float %5046, float %5047, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5170 = extractvalue %dx.types.ResRet.f32 %5169, 0
  %5171 = extractvalue %dx.types.ResRet.f32 %5169, 1
  %5172 = extractvalue %dx.types.ResRet.f32 %5169, 2
  %5173 = extractvalue %dx.types.ResRet.f32 %5169, 3
  %5174 = and i32 %5165, 255
  %5175 = uitofp i32 %5174 to float
  %5176 = lshr i32 %5165, 8
  %5177 = and i32 %5176, 255
  %5178 = uitofp i32 %5177 to float
  %5179 = lshr i32 %5165, 16
  %5180 = and i32 %5179, 255
  %5181 = uitofp i32 %5180 to float
  %5182 = fmul fast float %5181, 0x3F70101000000000
  %5183 = fmul fast float %5170, %5175
  %5184 = fadd fast float %5183, %5178
  %5185 = fmul fast float %5184, 0x3F70101000000000
  %5186 = fadd fast float %5171, -5.000000e-01
  %5187 = fadd fast float %5173, -5.000000e-01
  %5188 = fmul fast float %5186, %5182
  %5189 = fmul fast float %5187, %5182
  %5190 = fadd fast float %5188, 5.000000e-01
  %5191 = fadd fast float %5189, 5.000000e-01
  %5192 = fmul fast float %5190, 2.000000e+00
  %5193 = fadd fast float %5192, -1.000000e+00
  %5194 = fmul fast float %5191, 2.000000e+00
  %5195 = fadd fast float %5194, -1.000000e+00
  %5196 = fadd fast float %5193, %5195
  %5197 = fmul fast float %5196, 5.000000e-01
  %5198 = fsub fast float %5193, %5195
  %5199 = fmul fast float %5198, 5.000000e-01
  %5200 = call float @dx.op.unary.f32(i32 6, float %5197)  ; FAbs(value)
  %5201 = fsub fast float 1.000000e+00, %5200
  %5202 = call float @dx.op.unary.f32(i32 6, float %5199)  ; FAbs(value)
  %5203 = fsub fast float %5201, %5202
  %5204 = call float @dx.op.dot3.f32(i32 55, float %5197, float %5199, float %5203, float %5197, float %5199, float %5203)  ; Dot3(ax,ay,az,bx,by,bz)
  %5205 = call float @dx.op.unary.f32(i32 25, float %5204)  ; Rsqrt(value)
  %5206 = fmul fast float %5197, %5205
  %5207 = fmul fast float %5199, %5205
  %5208 = select i1 %5035, i32 %5025, i32 %5026
  %5209 = select i1 %5033, i32 %5024, i32 %5208
  %5210 = sitofp i32 %5209 to float
  %5211 = fmul fast float %5203, %5210
  %5212 = fmul fast float %5211, %5205
  %5213 = select i1 %5035, float %5212, float %5207
  %5214 = select i1 %5035, float %5207, float %5212
  %5215 = select i1 %5033, float %5212, float %5206
  %5216 = select i1 %5033, float %5207, float %5213
  %5217 = select i1 %5033, float %5206, float %5214
  %5218 = fsub fast float %5152, %4979
  %5219 = fsub fast float %5153, %4980
  %5220 = fsub fast float %5154, %4981
  %5221 = fmul fast float %5218, %5124
  %5222 = fmul fast float %5219, %5124
  %5223 = fmul fast float %5220, %5124
  %5224 = fadd fast float %5221, %4979
  %5225 = fadd fast float %5222, %4980
  %5226 = fadd fast float %5223, %4981
  %5227 = fsub fast float %5161, %4976
  %5228 = fsub fast float %5162, %4977
  %5229 = fsub fast float %5163, %4978
  %5230 = fmul fast float %5227, %5124
  %5231 = fmul fast float %5228, %5124
  %5232 = fmul fast float %5229, %5124
  %5233 = fadd fast float %5230, %4976
  %5234 = fadd fast float %5231, %4977
  %5235 = fadd fast float %5232, %4978
  %5236 = fadd fast float %5215, %4982
  %5237 = fadd fast float %5216, %4983
  %5238 = fadd fast float %5217, %4984
  %5239 = call float @dx.op.dot3.f32(i32 55, float %5236, float %5237, float %5238, float %5236, float %5237, float %5238)  ; Dot3(ax,ay,az,bx,by,bz)
  %5240 = call float @dx.op.unary.f32(i32 25, float %5239)  ; Rsqrt(value)
  %5241 = fmul fast float %5236, %5240
  %5242 = fmul fast float %5237, %5240
  %5243 = fmul fast float %5238, %5240
  %5244 = fsub fast float %5241, %4982
  %5245 = fsub fast float %5242, %4983
  %5246 = fsub fast float %5243, %4984
  %5247 = fmul fast float %5244, %5124
  %5248 = fmul fast float %5245, %5124
  %5249 = fmul fast float %5246, %5124
  %5250 = fadd fast float %5247, %4982
  %5251 = fadd fast float %5248, %4983
  %5252 = fadd fast float %5249, %4984
  %5253 = call float @dx.op.binary.f32(i32 36, float %4986, float %5172)  ; FMin(a,b)
  %5254 = fsub fast float %5253, %4986
  %5255 = fmul fast float %5254, %5124
  %5256 = fadd fast float %5255, %4986
  %5257 = fsub fast float %5185, %4985
  %5258 = fmul fast float %5257, %5124
  %5259 = fadd fast float %5258, %4985
  br label %5260

; <label>:5260                                    ; preds = %5122, %5084, %4975, %4689
  %5261 = phi float [ %5233, %5122 ], [ %4976, %5084 ], [ %4976, %4975 ], [ %4347, %4689 ]
  %5262 = phi float [ %5234, %5122 ], [ %4977, %5084 ], [ %4977, %4975 ], [ %4348, %4689 ]
  %5263 = phi float [ %5235, %5122 ], [ %4978, %5084 ], [ %4978, %4975 ], [ %4349, %4689 ]
  %5264 = phi float [ %5224, %5122 ], [ %4979, %5084 ], [ %4979, %4975 ], [ %4428, %4689 ]
  %5265 = phi float [ %5225, %5122 ], [ %4980, %5084 ], [ %4980, %4975 ], [ %4429, %4689 ]
  %5266 = phi float [ %5226, %5122 ], [ %4981, %5084 ], [ %4981, %4975 ], [ %4430, %4689 ]
  %5267 = phi float [ %5250, %5122 ], [ %4982, %5084 ], [ %4982, %4975 ], [ %4286, %4689 ]
  %5268 = phi float [ %5251, %5122 ], [ %4983, %5084 ], [ %4983, %4975 ], [ %4287, %4689 ]
  %5269 = phi float [ %5252, %5122 ], [ %4984, %5084 ], [ %4984, %4975 ], [ %4288, %4689 ]
  %5270 = phi float [ %5259, %5122 ], [ %4985, %5084 ], [ %4985, %4975 ], [ %4350, %4689 ]
  %5271 = phi float [ %5256, %5122 ], [ %4986, %5084 ], [ %4986, %4975 ], [ %4301, %4689 ]
  %5272 = fcmp fast une float %4694, 0.000000e+00
  %5273 = fsub fast float -0.000000e+00, %223
  %5274 = fsub fast float -0.000000e+00, %224
  %5275 = fsub fast float -0.000000e+00, %225
  br i1 %5272, label %5276, label %5630

; <label>:5276                                    ; preds = %5260
  %5277 = call float @dx.op.dot3.f32(i32 55, float %5273, float %5274, float %5275, float %118, float %119, float %120)  ; Dot3(ax,ay,az,bx,by,bz)
  %5278 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %5279 = fmul fast float %4694, 2.500000e+00
  %5280 = call float @dx.op.unary.f32(i32 7, float %5279)  ; Saturate(value)
  %5281 = fmul fast float %4694, 0x4013FFFFE0000000
  %5282 = fadd fast float %5281, 0xBFFFFFFFE0000000
  %5283 = call float @dx.op.unary.f32(i32 7, float %5282)  ; Saturate(value)
  %5284 = fmul fast float %4694, 0x4004000020000000
  %5285 = fadd fast float %5284, 0xBFF8000040000000
  %5286 = call float @dx.op.unary.f32(i32 7, float %5285)  ; Saturate(value)
  %5287 = fmul fast float %4329, 1.000000e+01
  %5288 = call float @dx.op.unary.f32(i32 7, float %5287)  ; Saturate(value)
  %5289 = fmul fast float %5288, 2.000000e+00
  %5290 = fsub fast float 3.000000e+00, %5289
  %5291 = fmul fast float %5288, %5288
  %5292 = fmul fast float %5291, %5290
  %5293 = fsub fast float 1.000000e+00, %5292
  %5294 = fsub fast float 0x3FE3333340000000, %5270
  %5295 = fmul fast float %5294, 0x400AAAAAA0000000
  %5296 = call float @dx.op.unary.f32(i32 7, float %5295)  ; Saturate(value)
  %5297 = fmul fast float %5293, %5296
  %5298 = fmul fast float %5264, 0x3FEA2B8620000000
  %5299 = fmul fast float %5265, 0x3FEA2B8620000000
  %5300 = fmul fast float %5266, 0x3FEA2B8620000000
  %5301 = fadd fast float %5298, 0x3FC81DFBA0000000
  %5302 = fmul fast float %5301, %5264
  %5303 = fadd fast float %5302, 0x3F910E6020000000
  %5304 = fadd fast float %5299, 0x3FC81DFBA0000000
  %5305 = fmul fast float %5304, %5265
  %5306 = fadd fast float %5305, 0x3F910E6020000000
  %5307 = fadd fast float %5300, 0x3FC81DFBA0000000
  %5308 = fmul fast float %5307, %5266
  %5309 = fadd fast float %5308, 0x3F910E6020000000
  %5310 = call float @dx.op.unary.f32(i32 7, float %5303)  ; Saturate(value)
  %5311 = call float @dx.op.unary.f32(i32 7, float %5306)  ; Saturate(value)
  %5312 = call float @dx.op.unary.f32(i32 7, float %5309)  ; Saturate(value)
  %5313 = fsub fast float %5310, %5264
  %5314 = fsub fast float %5311, %5265
  %5315 = fsub fast float %5312, %5266
  %5316 = fmul fast float %5313, %5280
  %5317 = fmul fast float %5316, %5297
  %5318 = fmul fast float %5314, %5280
  %5319 = fmul fast float %5318, %5297
  %5320 = fmul fast float %5315, %5280
  %5321 = fmul fast float %5320, %5297
  %5322 = fadd fast float %5317, %5264
  %5323 = fadd fast float %5319, %5265
  %5324 = fadd fast float %5321, %5266
  %5325 = fmul fast float %5271, %5271
  %5326 = fmul fast float %5325, %5325
  %5327 = fadd fast float %5283, 1.000000e+00
  %5328 = fsub fast float %5327, %5297
  %5329 = call float @dx.op.unary.f32(i32 7, float %5328)  ; Saturate(value)
  %5330 = call float @dx.op.dot3.f32(i32 55, float %118, float %119, float %120, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5331 = call float @dx.op.unary.f32(i32 7, float %5330)  ; Saturate(value)
  %5332 = fsub fast float 1.000000e+00, %5326
  %5333 = call float @dx.op.binary.f32(i32 36, float %5329, float %5332)  ; FMin(a,b)
  %5334 = call float @dx.op.unary.f32(i32 7, float %5286)  ; Saturate(value)
  %5335 = call float @dx.op.binary.f32(i32 35, float %5333, float %5334)  ; FMax(a,b)
  %5336 = fadd fast float %5331, 0xBFE4CCCCC0000000
  %5337 = fmul fast float %5336, 0x4006DB6DA0000000
  %5338 = call float @dx.op.unary.f32(i32 7, float %5337)  ; Saturate(value)
  %5339 = fmul fast float %5338, 2.000000e+00
  %5340 = fsub fast float 3.000000e+00, %5339
  %5341 = bitcast float %5261 to i32
  %5342 = ashr i32 %5341, 1
  %5343 = add nsw i32 %5342, 532487669
  %5344 = bitcast i32 %5343 to float
  %5345 = fsub fast float 1.000000e+00, %5344
  %5346 = bitcast float %5345 to i32
  %5347 = sub nsw i32 2129859010, %5346
  %5348 = bitcast i32 %5347 to float
  %5349 = fmul fast float %5348, 2.000000e+00
  %5350 = bitcast float %5262 to i32
  %5351 = ashr i32 %5350, 1
  %5352 = add nsw i32 %5351, 532487669
  %5353 = bitcast i32 %5352 to float
  %5354 = fsub fast float 1.000000e+00, %5353
  %5355 = bitcast float %5354 to i32
  %5356 = sub nsw i32 2129859010, %5355
  %5357 = bitcast i32 %5356 to float
  %5358 = fmul fast float %5357, 2.000000e+00
  %5359 = bitcast float %5263 to i32
  %5360 = ashr i32 %5359, 1
  %5361 = add nsw i32 %5360, 532487669
  %5362 = bitcast i32 %5361 to float
  %5363 = fsub fast float 1.000000e+00, %5362
  %5364 = bitcast float %5363 to i32
  %5365 = sub nsw i32 2129859010, %5364
  %5366 = bitcast i32 %5365 to float
  %5367 = fmul fast float %5366, 2.000000e+00
  %5368 = fsub fast float 0x4002A9FBE0000000, %5349
  %5369 = fadd fast float %5349, 0x3FD54FDF00000000
  %5370 = bitcast float %5369 to i32
  %5371 = sub nsw i32 2129859010, %5370
  %5372 = bitcast i32 %5371 to float
  %5373 = fmul fast float %5372, %5368
  %5374 = fmul fast float %5373, %5373
  %5375 = fsub fast float 0x4002A9FBE0000000, %5358
  %5376 = fadd fast float %5358, 0x3FD54FDF00000000
  %5377 = bitcast float %5376 to i32
  %5378 = sub nsw i32 2129859010, %5377
  %5379 = bitcast i32 %5378 to float
  %5380 = fmul fast float %5379, %5375
  %5381 = fmul fast float %5380, %5380
  %5382 = fsub fast float 0x4002A9FBE0000000, %5367
  %5383 = fadd fast float %5367, 0x3FD54FDF00000000
  %5384 = bitcast float %5383 to i32
  %5385 = sub nsw i32 2129859010, %5384
  %5386 = bitcast i32 %5385 to float
  %5387 = fmul fast float %5386, %5382
  %5388 = fmul fast float %5387, %5387
  %5389 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5374)  ; FMax(a,b)
  %5390 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5381)  ; FMax(a,b)
  %5391 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5388)  ; FMax(a,b)
  %5392 = fsub fast float 1.000000e+00, %5277
  %5393 = fadd fast float %5392, %5293
  %5394 = call float @dx.op.unary.f32(i32 7, float %5393)  ; Saturate(value)
  %5395 = fsub fast float 1.000000e+00, %4513
  %5396 = fmul fast float %5335, %5395
  %5397 = fmul fast float %5338, %5338
  %5398 = fmul fast float %5397, %5396
  %5399 = fmul fast float %5398, %5340
  %5400 = fmul fast float %5395, 0xBFE99999A0000000
  %5401 = fmul fast float %5400, %5280
  %5402 = fmul fast float %5401, %5297
  %5403 = fadd fast float %5402, 1.000000e+00
  %5404 = fadd fast float %5270, -1.000000e+00
  %5405 = fmul fast float %5403, %5404
  %5406 = fadd fast float %5405, 1.000000e+00
  %5407 = fsub fast float %5389, %5261
  %5408 = fsub fast float %5390, %5262
  %5409 = fsub fast float %5391, %5263
  %5410 = fmul fast float %5399, %5407
  %5411 = fmul fast float %5399, %5408
  %5412 = fmul fast float %5399, %5409
  %5413 = fadd fast float %5410, %5261
  %5414 = fadd fast float %5411, %5262
  %5415 = fadd fast float %5412, %5263
  %5416 = fsub fast float %118, %5267
  %5417 = fsub fast float %119, %5268
  %5418 = fsub fast float %120, %5269
  %5419 = fmul fast float %5399, %5416
  %5420 = fmul fast float %5399, %5417
  %5421 = fmul fast float %5399, %5418
  %5422 = fadd fast float %5419, %5267
  %5423 = fadd fast float %5420, %5268
  %5424 = fadd fast float %5421, %5269
  %5425 = fmul fast float %5399, %5394
  %5426 = call float @dx.op.unary.f32(i32 7, float %5406)  ; Saturate(value)
  %5427 = fsub fast float 1.000000e+00, %5426
  %5428 = fmul fast float %5425, %5427
  %5429 = fadd fast float %5428, %5426
  %5430 = fsub fast float 1.000000e+00, %5271
  %5431 = fmul fast float %5399, %5430
  %5432 = fadd fast float %5431, %5271
  %5433 = fcmp fast une float %4695, 0.000000e+00
  %5434 = fcmp fast ogt float %5331, 0x3FE4CCCCC0000000
  %5435 = and i1 %5433, %5434
  br i1 %5435, label %5436, label %5622

; <label>:5436                                    ; preds = %5276
  %5437 = extractvalue %dx.types.CBufRet.f32 %5278, 1
  %5438 = fadd fast float %5437, %191
  %5439 = extractvalue %dx.types.CBufRet.f32 %5278, 0
  %5440 = fadd fast float %5439, %190
  %5441 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %5442 = extractvalue %dx.types.CBufRet.f32 %5441, 3
  %5443 = fadd fast float %5442, 0x3FC0A3D700000000
  %5444 = fmul fast float %5443, 0x3FF6666660000000
  %5445 = fmul fast float %5442, 0x3FF2978D40000000
  %5446 = fmul fast float %5442, 0x3FF5BA5E40000000
  %5447 = fmul fast float %5442, 0x3FF94FDF40000000
  %5448 = call float @dx.op.unary.f32(i32 6, float %5440)  ; FAbs(value)
  %5449 = call float @dx.op.unary.f32(i32 6, float %5438)  ; FAbs(value)
  %5450 = fmul fast float %5448, 0x3F8EB851E0000000
  %5451 = fmul fast float %5449, 0x3F8EB851E0000000
  %5452 = fmul fast float %4695, 4.000000e+00
  %5453 = call float @dx.op.unary.f32(i32 7, float %5452)  ; Saturate(value)
  %5454 = fadd fast float %5450, 2.500000e-01
  %5455 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %44, float %5454, float %5451, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5456 = extractvalue %dx.types.ResRet.f32 %5455, 0
  %5457 = extractvalue %dx.types.ResRet.f32 %5455, 1
  %5458 = extractvalue %dx.types.ResRet.f32 %5455, 2
  %5459 = extractvalue %dx.types.ResRet.f32 %5455, 3
  %5460 = fmul fast float %5457, 2.000000e+00
  %5461 = fmul fast float %5458, 2.000000e+00
  %5462 = fadd fast float %5460, -1.000000e+00
  %5463 = fadd fast float %5461, -1.000000e+00
  %5464 = fsub fast float 1.000000e+00, %5453
  %5465 = fmul fast float %5464, 8.000000e+00
  %5466 = call float @dx.op.unary.f32(i32 21, float %5465)  ; Exp(value)
  %5467 = fmul fast float %5459, %5466
  %5468 = fadd fast float %5444, -1.000000e+00
  %5469 = fadd fast float %5468, %5459
  %5470 = fadd fast float %5469, %5467
  %5471 = frem fast float %5470, %5466
  %5472 = fcmp fast ole float %5471, 1.000000e+00
  %5473 = call float @dx.op.unary.f32(i32 22, float %5471)  ; Frc(value)
  %5474 = select i1 %5472, float %5473, float 0.000000e+00
  %5475 = fadd fast float %5456, -1.000000e+00
  %5476 = fadd fast float %5475, %5474
  %5477 = fsub fast float 1.000000e+00, %5474
  %5478 = call float @dx.op.unary.f32(i32 7, float %5477)  ; Saturate(value)
  %5479 = fmul fast float %5478, %5456
  %5480 = fmul fast float %5476, 8.000000e+00
  %5481 = call float @dx.op.binary.f32(i32 35, float %5480, float 0.000000e+00)  ; FMax(a,b)
  %5482 = call float @dx.op.binary.f32(i32 36, float %5481, float 4.000000e+00)  ; FMin(a,b)
  %5483 = fmul fast float %5482, 0x400921FB60000000
  %5484 = call float @dx.op.unary.f32(i32 13, float %5483)  ; Sin(value)
  %5485 = fadd fast float %5474, -1.000000e+00
  %5486 = fmul fast float %5479, %5485
  %5487 = fmul fast float %5486, %5484
  %5488 = fmul fast float %5487, %5462
  %5489 = fmul fast float %5487, %5463
  %5490 = fadd fast float %5452, -1.000000e+00
  %5491 = call float @dx.op.unary.f32(i32 7, float %5490)  ; Saturate(value)
  %5492 = fadd fast float %5450, 0xBFE19999A0000000
  %5493 = fadd fast float %5451, 0x3FD3D70A40000000
  %5494 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %44, float %5492, float %5493, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5495 = extractvalue %dx.types.ResRet.f32 %5494, 0
  %5496 = extractvalue %dx.types.ResRet.f32 %5494, 1
  %5497 = extractvalue %dx.types.ResRet.f32 %5494, 2
  %5498 = extractvalue %dx.types.ResRet.f32 %5494, 3
  %5499 = fmul fast float %5496, 2.000000e+00
  %5500 = fmul fast float %5497, 2.000000e+00
  %5501 = fadd fast float %5499, -1.000000e+00
  %5502 = fadd fast float %5500, -1.000000e+00
  %5503 = fsub fast float 1.000000e+00, %5491
  %5504 = fmul fast float %5503, 8.000000e+00
  %5505 = call float @dx.op.unary.f32(i32 21, float %5504)  ; Exp(value)
  %5506 = fmul fast float %5498, %5505
  %5507 = fadd fast float %5445, 0xBFE5B22D00000000
  %5508 = fadd fast float %5507, %5498
  %5509 = fadd fast float %5508, %5506
  %5510 = frem fast float %5509, %5505
  %5511 = fcmp fast ole float %5510, 1.000000e+00
  %5512 = call float @dx.op.unary.f32(i32 22, float %5510)  ; Frc(value)
  %5513 = select i1 %5511, float %5512, float 0.000000e+00
  %5514 = fadd fast float %5495, -1.000000e+00
  %5515 = fadd fast float %5514, %5513
  %5516 = fsub fast float 1.000000e+00, %5513
  %5517 = call float @dx.op.unary.f32(i32 7, float %5516)  ; Saturate(value)
  %5518 = fmul fast float %5517, %5495
  %5519 = fmul fast float %5515, 8.000000e+00
  %5520 = call float @dx.op.binary.f32(i32 35, float %5519, float 0.000000e+00)  ; FMax(a,b)
  %5521 = call float @dx.op.binary.f32(i32 36, float %5520, float 4.000000e+00)  ; FMin(a,b)
  %5522 = fmul fast float %5521, 0x400921FB60000000
  %5523 = call float @dx.op.unary.f32(i32 13, float %5522)  ; Sin(value)
  %5524 = fadd fast float %5513, -1.000000e+00
  %5525 = fmul fast float %5518, %5524
  %5526 = fmul fast float %5525, %5523
  %5527 = fmul fast float %5526, %5501
  %5528 = fmul fast float %5526, %5502
  %5529 = fadd fast float %5452, -2.000000e+00
  %5530 = call float @dx.op.unary.f32(i32 7, float %5529)  ; Saturate(value)
  %5531 = fadd fast float %5450, 0x3FE3333340000000
  %5532 = fadd fast float %5451, 0x3FEB333340000000
  %5533 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %44, float %5531, float %5532, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5534 = extractvalue %dx.types.ResRet.f32 %5533, 0
  %5535 = extractvalue %dx.types.ResRet.f32 %5533, 1
  %5536 = extractvalue %dx.types.ResRet.f32 %5533, 2
  %5537 = extractvalue %dx.types.ResRet.f32 %5533, 3
  %5538 = fmul fast float %5535, 2.000000e+00
  %5539 = fmul fast float %5536, 2.000000e+00
  %5540 = fadd fast float %5538, -1.000000e+00
  %5541 = fadd fast float %5539, -1.000000e+00
  %5542 = fsub fast float 1.000000e+00, %5530
  %5543 = fmul fast float %5542, 8.000000e+00
  %5544 = call float @dx.op.unary.f32(i32 21, float %5543)  ; Exp(value)
  %5545 = fmul fast float %5537, %5544
  %5546 = fadd fast float %5446, 0xBFD5E35400000000
  %5547 = fadd fast float %5546, %5537
  %5548 = fadd fast float %5547, %5545
  %5549 = frem fast float %5548, %5544
  %5550 = fcmp fast ole float %5549, 1.000000e+00
  %5551 = call float @dx.op.unary.f32(i32 22, float %5549)  ; Frc(value)
  %5552 = select i1 %5550, float %5551, float 0.000000e+00
  %5553 = fadd fast float %5534, -1.000000e+00
  %5554 = fadd fast float %5553, %5552
  %5555 = fsub fast float 1.000000e+00, %5552
  %5556 = call float @dx.op.unary.f32(i32 7, float %5555)  ; Saturate(value)
  %5557 = fmul fast float %5556, %5534
  %5558 = fmul fast float %5554, 8.000000e+00
  %5559 = call float @dx.op.binary.f32(i32 35, float %5558, float 0.000000e+00)  ; FMax(a,b)
  %5560 = call float @dx.op.binary.f32(i32 36, float %5559, float 4.000000e+00)  ; FMin(a,b)
  %5561 = fmul fast float %5560, 0x400921FB60000000
  %5562 = call float @dx.op.unary.f32(i32 13, float %5561)  ; Sin(value)
  %5563 = fadd fast float %5552, -1.000000e+00
  %5564 = fmul fast float %5557, %5563
  %5565 = fmul fast float %5564, %5562
  %5566 = fmul fast float %5565, %5540
  %5567 = fmul fast float %5565, %5541
  %5568 = fadd fast float %5452, -3.000000e+00
  %5569 = call float @dx.op.unary.f32(i32 7, float %5568)  ; Saturate(value)
  %5570 = fadd fast float %5450, 5.000000e-01
  %5571 = fadd fast float %5451, -7.500000e-01
  %5572 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %44, float %5570, float %5571, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5573 = extractvalue %dx.types.ResRet.f32 %5572, 0
  %5574 = extractvalue %dx.types.ResRet.f32 %5572, 1
  %5575 = extractvalue %dx.types.ResRet.f32 %5572, 2
  %5576 = extractvalue %dx.types.ResRet.f32 %5572, 3
  %5577 = fmul fast float %5574, 2.000000e+00
  %5578 = fmul fast float %5575, 2.000000e+00
  %5579 = fadd fast float %5577, -1.000000e+00
  %5580 = fadd fast float %5578, -1.000000e+00
  %5581 = fsub fast float 1.000000e+00, %5569
  %5582 = fmul fast float %5581, 8.000000e+00
  %5583 = call float @dx.op.unary.f32(i32 21, float %5582)  ; Exp(value)
  %5584 = fmul fast float %5576, %5583
  %5585 = fadd fast float %5447, 0xBF78938000000000
  %5586 = fadd fast float %5585, %5576
  %5587 = fadd fast float %5586, %5584
  %5588 = frem fast float %5587, %5583
  %5589 = fcmp fast ole float %5588, 1.000000e+00
  %5590 = call float @dx.op.unary.f32(i32 22, float %5588)  ; Frc(value)
  %5591 = select i1 %5589, float %5590, float 0.000000e+00
  %5592 = fadd fast float %5573, -1.000000e+00
  %5593 = fadd fast float %5592, %5591
  %5594 = fsub fast float 1.000000e+00, %5591
  %5595 = call float @dx.op.unary.f32(i32 7, float %5594)  ; Saturate(value)
  %5596 = fmul fast float %5595, %5573
  %5597 = fmul fast float %5593, 8.000000e+00
  %5598 = call float @dx.op.binary.f32(i32 35, float %5597, float 0.000000e+00)  ; FMax(a,b)
  %5599 = call float @dx.op.binary.f32(i32 36, float %5598, float 4.000000e+00)  ; FMin(a,b)
  %5600 = fmul fast float %5599, 0x400921FB60000000
  %5601 = call float @dx.op.unary.f32(i32 13, float %5600)  ; Sin(value)
  %5602 = fadd fast float %5591, -1.000000e+00
  %5603 = fmul fast float %5596, %5602
  %5604 = fmul fast float %5603, %5601
  %5605 = fmul fast float %5604, %5579
  %5606 = fmul fast float %5604, %5580
  %5607 = fadd fast float %5527, %5488
  %5608 = fadd fast float %5528, %5489
  %5609 = fadd fast float %5607, %5566
  %5610 = fadd fast float %5608, %5567
  %5611 = fadd fast float %5609, %5605
  %5612 = fadd fast float %5610, %5606
  %5613 = fmul fast float %5331, 0x4006DB6DA0000000
  %5614 = fadd fast float %5613, 0xBFFDB6DB40000000
  %5615 = call float @dx.op.unary.f32(i32 7, float %5614)  ; Saturate(value)
  %5616 = fmul fast float %5615, %5280
  %5617 = fmul fast float %5616, %5395
  %5618 = fmul fast float %5617, %5611
  %5619 = fmul fast float %5617, %5612
  %5620 = fadd fast float %5618, %5422
  %5621 = fadd fast float %5619, %5423
  br label %5622

; <label>:5622                                    ; preds = %5436, %5276
  %5623 = phi float [ %5422, %5276 ], [ %5620, %5436 ]
  %5624 = phi float [ %5423, %5276 ], [ %5621, %5436 ]
  %5625 = call float @dx.op.dot3.f32(i32 55, float %5623, float %5624, float %5424, float %5623, float %5624, float %5424)  ; Dot3(ax,ay,az,bx,by,bz)
  %5626 = call float @dx.op.unary.f32(i32 25, float %5625)  ; Rsqrt(value)
  %5627 = fmul fast float %5626, %5623
  %5628 = fmul fast float %5626, %5624
  %5629 = fmul fast float %5626, %5424
  br label %5630

; <label>:5630                                    ; preds = %5622, %5260
  %5631 = phi float [ %5413, %5622 ], [ %5261, %5260 ]
  %5632 = phi float [ %5414, %5622 ], [ %5262, %5260 ]
  %5633 = phi float [ %5415, %5622 ], [ %5263, %5260 ]
  %5634 = phi float [ %5322, %5622 ], [ %5264, %5260 ]
  %5635 = phi float [ %5323, %5622 ], [ %5265, %5260 ]
  %5636 = phi float [ %5324, %5622 ], [ %5266, %5260 ]
  %5637 = phi float [ %5627, %5622 ], [ %5267, %5260 ]
  %5638 = phi float [ %5628, %5622 ], [ %5268, %5260 ]
  %5639 = phi float [ %5629, %5622 ], [ %5269, %5260 ]
  %5640 = phi float [ %5429, %5622 ], [ %5270, %5260 ]
  %5641 = phi float [ %5432, %5622 ], [ %5271, %5260 ]
  %5642 = select i1 %296, float 0.000000e+00, float %5633
  %5643 = call float @dx.op.dot3.f32(i32 55, float %5637, float %5638, float %5639, float %5273, float %5274, float %5275)  ; Dot3(ax,ay,az,bx,by,bz)
  %5644 = call float @dx.op.unary.f32(i32 7, float %5643)  ; Saturate(value)
  %5645 = call float @dx.op.dot3.f32(i32 55, float %223, float %224, float %225, float %5637, float %5638, float %5639)  ; Dot3(ax,ay,az,bx,by,bz)
  %5646 = fmul fast float %5645, 2.000000e+00
  %5647 = fmul fast float %5646, %5637
  %5648 = fmul fast float %5646, %5638
  %5649 = fmul fast float %5646, %5639
  %5650 = fsub fast float %223, %5647
  %5651 = fsub fast float %224, %5648
  %5652 = fsub fast float %225, %5649
  %5653 = call float @dx.op.binary.f32(i32 36, float %5641, float 1.000000e+00)  ; FMin(a,b)
  %5654 = fsub fast float 1.000000e+00, %5653
  %5655 = bitcast float %5654 to i32
  %5656 = ashr i32 %5655, 1
  %5657 = add nsw i32 %5656, 532487669
  %5658 = bitcast i32 %5657 to float
  %5659 = fsub fast float 1.000000e+00, %5640
  %5660 = call float @dx.op.binary.f32(i32 35, float %5659, float 0x3F847AE140000000)  ; FMax(a,b)
  %5661 = fmul fast float %5660, %5660
  %5662 = fmul fast float %5661, %5661
  %5663 = call float @dx.op.unary.f32(i32 7, float %5644)  ; Saturate(value)
  %5664 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %45, float %5658, float %5662, float %5663, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5665 = extractvalue %dx.types.ResRet.f32 %5664, 0
  %5666 = fsub fast float 1.000000e+00, %5641
  %5667 = bitcast float %5666 to i32
  %5668 = sub nsw i32 2129859010, %5667
  %5669 = call float @dx.op.dot3.f32(i32 55, float %78, float %74, float %70, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5670 = fmul fast float %5669, 0x3FD20DD760000000
  %5671 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %78)  ; FMax(a,b)
  %5672 = call float @dx.op.dot3.f32(i32 55, float %79, float %80, float %81, float %79, float %80, float %81)  ; Dot3(ax,ay,az,bx,by,bz)
  %5673 = fcmp fast oeq float %5672, 0.000000e+00
  %5674 = fcmp fast oeq float %5671, 0.000000e+00
  %5675 = or i1 %5674, %5673
  br i1 %5675, label %5705, label %5676

; <label>:5676                                    ; preds = %5630
  %5677 = fsub fast float -0.000000e+00, %81
  %5678 = fsub fast float -0.000000e+00, %79
  %5679 = call float @dx.op.unary.f32(i32 24, float %5672)  ; Sqrt(value)
  %5680 = fdiv fast float %5679, %5671
  %5681 = fcmp fast ogt float %5680, 0x3FFB6F8900000000
  %5682 = select i1 %5681, float 0x3FFB6F8900000000, float %5680
  %5683 = fmul fast float %5682, 0x3FE8A23460000000
  %5684 = call float @dx.op.unary.f32(i32 7, float %5683)  ; Saturate(value)
  %5685 = call float @dx.op.binary.f32(i32 35, float %5682, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5686 = fmul fast float %5684, %5671
  %5687 = fmul fast float %5685, 0x3FF279A740000000
  %5688 = fadd fast float %5687, -1.000000e+00
  %5689 = call float @dx.op.dot3.f32(i32 55, float %5677, float %5678, float %80, float %5677, float %5678, float %80)  ; Dot3(ax,ay,az,bx,by,bz)
  %5690 = call float @dx.op.unary.f32(i32 25, float %5689)  ; Rsqrt(value)
  %5691 = fmul fast float %5690, %5677
  %5692 = fmul fast float %5690, %5678
  %5693 = fmul fast float %5690, %80
  %5694 = fmul fast float %5688, %5688
  %5695 = fsub fast float 1.000000e+00, %5694
  %5696 = fmul fast float %5685, 0x40005F8BE0000000
  %5697 = fsub fast float 0x400C5BF8A0000000, %5696
  %5698 = fdiv fast float %5686, %5697
  %5699 = fmul fast float %5698, 0x3FEE31C3C0000000
  %5700 = fmul fast float %5699, %5695
  %5701 = fmul fast float %5685, 0x3FDACB7480000000
  %5702 = fadd fast float %5701, 0xBFD7347680000000
  %5703 = fmul fast float %5702, %5698
  %5704 = fmul fast float %5703, %5695
  br label %5705

; <label>:5705                                    ; preds = %5676, %5630
  %5706 = phi float [ %5691, %5676 ], [ 0.000000e+00, %5630 ]
  %5707 = phi float [ %5692, %5676 ], [ 0.000000e+00, %5630 ]
  %5708 = phi float [ %5693, %5676 ], [ 0.000000e+00, %5630 ]
  %5709 = phi float [ %5700, %5676 ], [ 0.000000e+00, %5630 ]
  %5710 = phi float [ %5704, %5676 ], [ 0.000000e+00, %5630 ]
  %5711 = call float @dx.op.dot3.f32(i32 55, float %5706, float %5707, float %5708, float %5637, float %5638, float %5639)  ; Dot3(ax,ay,az,bx,by,bz)
  %5712 = fmul fast float %5711, 0x3FDF454380000000
  %5713 = fmul fast float %5711, %5711
  %5714 = fmul fast float %5713, 0x3FEE471020000000
  %5715 = fadd fast float %5714, 0xBFD42F6020000000
  %5716 = fmul fast float %5671, 0x3FD20DD760000000
  %5717 = fmul fast float %5715, %5710
  %5718 = fadd fast float %5717, %5716
  %5719 = fmul fast float %5712, %5709
  %5720 = fadd fast float %5718, %5719
  %5721 = fsub fast float %5718, %5719
  %5722 = call float @dx.op.dot3.f32(i32 55, float %5706, float %5707, float %5708, float %5650, float %5651, float %5652)  ; Dot3(ax,ay,az,bx,by,bz)
  %5723 = fmul fast float %5722, 0x3FDF454380000000
  %5724 = fmul fast float %5722, %5722
  %5725 = fmul fast float %5724, 0x3FEE471020000000
  %5726 = fadd fast float %5725, 0xBFD42F6020000000
  %5727 = call float @dx.op.dot3.f32(i32 55, float %5671, float %5709, float %5710, float 0x3FD20DD760000000, float %5723, float %5726)  ; Dot3(ax,ay,az,bx,by,bz)
  %5728 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %74)  ; FMax(a,b)
  %5729 = call float @dx.op.dot3.f32(i32 55, float %75, float %76, float %77, float %75, float %76, float %77)  ; Dot3(ax,ay,az,bx,by,bz)
  %5730 = fcmp fast oeq float %5729, 0.000000e+00
  %5731 = fcmp fast oeq float %5728, 0.000000e+00
  %5732 = or i1 %5731, %5730
  br i1 %5732, label %5762, label %5733

; <label>:5733                                    ; preds = %5705
  %5734 = fsub fast float -0.000000e+00, %77
  %5735 = fsub fast float -0.000000e+00, %75
  %5736 = call float @dx.op.unary.f32(i32 24, float %5729)  ; Sqrt(value)
  %5737 = fdiv fast float %5736, %5728
  %5738 = fcmp fast ogt float %5737, 0x3FFB6F8900000000
  %5739 = select i1 %5738, float 0x3FFB6F8900000000, float %5737
  %5740 = fmul fast float %5739, 0x3FE8A23460000000
  %5741 = call float @dx.op.unary.f32(i32 7, float %5740)  ; Saturate(value)
  %5742 = call float @dx.op.binary.f32(i32 35, float %5739, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5743 = fmul fast float %5741, %5728
  %5744 = fmul fast float %5742, 0x3FF279A740000000
  %5745 = fadd fast float %5744, -1.000000e+00
  %5746 = call float @dx.op.dot3.f32(i32 55, float %5734, float %5735, float %76, float %5734, float %5735, float %76)  ; Dot3(ax,ay,az,bx,by,bz)
  %5747 = call float @dx.op.unary.f32(i32 25, float %5746)  ; Rsqrt(value)
  %5748 = fmul fast float %5747, %5734
  %5749 = fmul fast float %5747, %5735
  %5750 = fmul fast float %5747, %76
  %5751 = fmul fast float %5745, %5745
  %5752 = fsub fast float 1.000000e+00, %5751
  %5753 = fmul fast float %5742, 0x40005F8BE0000000
  %5754 = fsub fast float 0x400C5BF8A0000000, %5753
  %5755 = fdiv fast float %5743, %5754
  %5756 = fmul fast float %5755, 0x3FEE31C3C0000000
  %5757 = fmul fast float %5756, %5752
  %5758 = fmul fast float %5742, 0x3FDACB7480000000
  %5759 = fadd fast float %5758, 0xBFD7347680000000
  %5760 = fmul fast float %5759, %5755
  %5761 = fmul fast float %5760, %5752
  br label %5762

; <label>:5762                                    ; preds = %5733, %5705
  %5763 = phi float [ %5748, %5733 ], [ 0.000000e+00, %5705 ]
  %5764 = phi float [ %5749, %5733 ], [ 0.000000e+00, %5705 ]
  %5765 = phi float [ %5750, %5733 ], [ 0.000000e+00, %5705 ]
  %5766 = phi float [ %5757, %5733 ], [ 0.000000e+00, %5705 ]
  %5767 = phi float [ %5761, %5733 ], [ 0.000000e+00, %5705 ]
  %5768 = call float @dx.op.dot3.f32(i32 55, float %5763, float %5764, float %5765, float %5637, float %5638, float %5639)  ; Dot3(ax,ay,az,bx,by,bz)
  %5769 = fmul fast float %5768, 0x3FDF454380000000
  %5770 = fmul fast float %5768, %5768
  %5771 = fmul fast float %5770, 0x3FEE471020000000
  %5772 = fadd fast float %5771, 0xBFD42F6020000000
  %5773 = fmul fast float %5728, 0x3FD20DD760000000
  %5774 = fmul fast float %5772, %5767
  %5775 = fadd fast float %5774, %5773
  %5776 = fmul fast float %5769, %5766
  %5777 = fadd fast float %5775, %5776
  %5778 = fsub fast float %5775, %5776
  %5779 = call float @dx.op.dot3.f32(i32 55, float %5763, float %5764, float %5765, float %5650, float %5651, float %5652)  ; Dot3(ax,ay,az,bx,by,bz)
  %5780 = fmul fast float %5779, 0x3FDF454380000000
  %5781 = fmul fast float %5779, %5779
  %5782 = fmul fast float %5781, 0x3FEE471020000000
  %5783 = fadd fast float %5782, 0xBFD42F6020000000
  %5784 = call float @dx.op.dot3.f32(i32 55, float %5728, float %5766, float %5767, float 0x3FD20DD760000000, float %5780, float %5783)  ; Dot3(ax,ay,az,bx,by,bz)
  %5785 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %70)  ; FMax(a,b)
  %5786 = call float @dx.op.dot3.f32(i32 55, float %71, float %72, float %73, float %71, float %72, float %73)  ; Dot3(ax,ay,az,bx,by,bz)
  %5787 = fcmp fast oeq float %5786, 0.000000e+00
  %5788 = fcmp fast oeq float %5785, 0.000000e+00
  %5789 = or i1 %5788, %5787
  br i1 %5789, label %5819, label %5790

; <label>:5790                                    ; preds = %5762
  %5791 = fsub fast float -0.000000e+00, %73
  %5792 = fsub fast float -0.000000e+00, %71
  %5793 = call float @dx.op.unary.f32(i32 24, float %5786)  ; Sqrt(value)
  %5794 = fdiv fast float %5793, %5785
  %5795 = fcmp fast ogt float %5794, 0x3FFB6F8900000000
  %5796 = select i1 %5795, float 0x3FFB6F8900000000, float %5794
  %5797 = fmul fast float %5796, 0x3FE8A23460000000
  %5798 = call float @dx.op.unary.f32(i32 7, float %5797)  ; Saturate(value)
  %5799 = call float @dx.op.binary.f32(i32 35, float %5796, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5800 = fmul fast float %5798, %5785
  %5801 = fmul fast float %5799, 0x3FF279A740000000
  %5802 = fadd fast float %5801, -1.000000e+00
  %5803 = call float @dx.op.dot3.f32(i32 55, float %5791, float %5792, float %72, float %5791, float %5792, float %72)  ; Dot3(ax,ay,az,bx,by,bz)
  %5804 = call float @dx.op.unary.f32(i32 25, float %5803)  ; Rsqrt(value)
  %5805 = fmul fast float %5804, %5791
  %5806 = fmul fast float %5804, %5792
  %5807 = fmul fast float %5804, %72
  %5808 = fmul fast float %5802, %5802
  %5809 = fsub fast float 1.000000e+00, %5808
  %5810 = fmul fast float %5799, 0x40005F8BE0000000
  %5811 = fsub fast float 0x400C5BF8A0000000, %5810
  %5812 = fdiv fast float %5800, %5811
  %5813 = fmul fast float %5812, 0x3FEE31C3C0000000
  %5814 = fmul fast float %5813, %5809
  %5815 = fmul fast float %5799, 0x3FDACB7480000000
  %5816 = fadd fast float %5815, 0xBFD7347680000000
  %5817 = fmul fast float %5816, %5812
  %5818 = fmul fast float %5817, %5809
  br label %5819

; <label>:5819                                    ; preds = %5790, %5762
  %5820 = phi float [ %5805, %5790 ], [ 0.000000e+00, %5762 ]
  %5821 = phi float [ %5806, %5790 ], [ 0.000000e+00, %5762 ]
  %5822 = phi float [ %5807, %5790 ], [ 0.000000e+00, %5762 ]
  %5823 = phi float [ %5814, %5790 ], [ 0.000000e+00, %5762 ]
  %5824 = phi float [ %5818, %5790 ], [ 0.000000e+00, %5762 ]
  %5825 = call float @dx.op.dot3.f32(i32 55, float %5820, float %5821, float %5822, float %5637, float %5638, float %5639)  ; Dot3(ax,ay,az,bx,by,bz)
  %5826 = fmul fast float %5825, 0x3FDF454380000000
  %5827 = fmul fast float %5825, %5825
  %5828 = fmul fast float %5827, 0x3FEE471020000000
  %5829 = fadd fast float %5828, 0xBFD42F6020000000
  %5830 = fmul fast float %5785, 0x3FD20DD760000000
  %5831 = fmul fast float %5829, %5824
  %5832 = fadd fast float %5831, %5830
  %5833 = fmul fast float %5826, %5823
  %5834 = fadd fast float %5832, %5833
  %5835 = fsub fast float %5832, %5833
  %5836 = call float @dx.op.dot3.f32(i32 55, float %5820, float %5821, float %5822, float %5650, float %5651, float %5652)  ; Dot3(ax,ay,az,bx,by,bz)
  %5837 = fmul fast float %5836, 0x3FDF454380000000
  %5838 = fmul fast float %5836, %5836
  %5839 = fmul fast float %5838, 0x3FEE471020000000
  %5840 = fadd fast float %5839, 0xBFD42F6020000000
  %5841 = call float @dx.op.dot3.f32(i32 55, float %5785, float %5823, float %5824, float 0x3FD20DD760000000, float %5837, float %5840)  ; Dot3(ax,ay,az,bx,by,bz)
  %5842 = call float @dx.op.binary.f32(i32 35, float %5720, float 0.000000e+00)  ; FMax(a,b)
  %5843 = call float @dx.op.binary.f32(i32 35, float %5777, float 0.000000e+00)  ; FMax(a,b)
  %5844 = call float @dx.op.binary.f32(i32 35, float %5834, float 0.000000e+00)  ; FMax(a,b)
  %5845 = call float @dx.op.binary.f32(i32 35, float %5721, float 0.000000e+00)  ; FMax(a,b)
  %5846 = call float @dx.op.binary.f32(i32 35, float %5778, float 0.000000e+00)  ; FMax(a,b)
  %5847 = call float @dx.op.binary.f32(i32 35, float %5835, float 0.000000e+00)  ; FMax(a,b)
  %5848 = call float @dx.op.binary.f32(i32 35, float %5727, float 0.000000e+00)  ; FMax(a,b)
  %5849 = call float @dx.op.binary.f32(i32 35, float %5784, float 0.000000e+00)  ; FMax(a,b)
  %5850 = call float @dx.op.binary.f32(i32 35, float %5841, float 0.000000e+00)  ; FMax(a,b)
  %5851 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5852 = extractvalue %dx.types.CBufRet.f32 %5851, 0
  %5853 = call float @dx.op.binary.f32(i32 36, float %5634, float %5852)  ; FMin(a,b)
  %5854 = fmul fast float %5853, %5654
  %5855 = fsub fast float 1.000000e+00, %5854
  %5856 = bitcast float %5855 to i32
  %5857 = sub nsw i32 2129859010, %5856
  %5858 = bitcast i32 %5857 to float
  %5859 = call float @dx.op.binary.f32(i32 36, float %5635, float %5852)  ; FMin(a,b)
  %5860 = fmul fast float %5859, %5654
  %5861 = fsub fast float 1.000000e+00, %5860
  %5862 = bitcast float %5861 to i32
  %5863 = sub nsw i32 2129859010, %5862
  %5864 = bitcast i32 %5863 to float
  %5865 = call float @dx.op.binary.f32(i32 36, float %5636, float %5852)  ; FMin(a,b)
  %5866 = fmul fast float %5865, %5654
  %5867 = fsub fast float 1.000000e+00, %5866
  %5868 = bitcast float %5867 to i32
  %5869 = sub nsw i32 2129859010, %5868
  %5870 = bitcast i32 %5869 to float
  %5871 = fmul fast float %5842, %5653
  %5872 = fmul fast float %5871, %5858
  %5873 = fmul fast float %5843, %5653
  %5874 = fmul fast float %5873, %5864
  %5875 = fmul fast float %5844, %5653
  %5876 = fmul fast float %5875, %5870
  %5877 = call float @dx.op.binary.f32(i32 36, float %5631, float %5852)  ; FMin(a,b)
  %5878 = fmul fast float %5877, %5654
  %5879 = fsub fast float 1.000000e+00, %5878
  %5880 = bitcast float %5879 to i32
  %5881 = sub nsw i32 2129859010, %5880
  %5882 = bitcast i32 %5881 to float
  %5883 = call float @dx.op.binary.f32(i32 36, float %5632, float %5852)  ; FMin(a,b)
  %5884 = fmul fast float %5883, %5654
  %5885 = fsub fast float 1.000000e+00, %5884
  %5886 = bitcast float %5885 to i32
  %5887 = sub nsw i32 2129859010, %5886
  %5888 = bitcast i32 %5887 to float
  %5889 = call float @dx.op.binary.f32(i32 36, float %5642, float %5852)  ; FMin(a,b)
  %5890 = fmul fast float %5889, %5654
  %5891 = fsub fast float 1.000000e+00, %5890
  %5892 = bitcast float %5891 to i32
  %5893 = sub nsw i32 2129859010, %5892
  %5894 = bitcast i32 %5893 to float
  %5895 = fmul fast float %5848, %5653
  %5896 = fmul fast float %5895, %5882
  %5897 = fmul fast float %5849, %5653
  %5898 = fmul fast float %5897, %5888
  %5899 = fmul fast float %5850, %5653
  %5900 = fmul fast float %5899, %5894
  %5901 = call float @dx.op.dot3.f32(i32 55, float %5872, float %5874, float %5876, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5902 = select i1 %296, float 0.000000e+00, float %5872
  %5903 = select i1 %296, float %5901, float %5874
  %5904 = select i1 %296, float 0.000000e+00, float %5876
  %5905 = call float @dx.op.dot3.f32(i32 55, float %5845, float %5846, float %5847, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5906 = select i1 %296, float 0.000000e+00, float %5845
  %5907 = select i1 %296, float %5905, float %5846
  %5908 = select i1 %296, float 0.000000e+00, float %5847
  %5909 = call float @dx.op.dot3.f32(i32 55, float %5896, float %5898, float %5900, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5910 = select i1 %296, float 0.000000e+00, float %5896
  %5911 = select i1 %296, float %5909, float %5898
  %5912 = select i1 %296, float 0.000000e+00, float %5900
  %5913 = fmul fast float %5644, 9.843750e-01
  %5914 = fmul fast float %5640, 9.843750e-01
  %5915 = fadd fast float %5913, 7.812500e-03
  %5916 = fadd fast float %5914, 7.812500e-03
  %5917 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %38, %dx.types.Handle %45, float %5915, float %5916, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5918 = extractvalue %dx.types.ResRet.f32 %5917, 2
  %5919 = extractvalue %dx.types.ResRet.f32 %5917, 3
  %5920 = fmul fast float %5918, %5631
  %5921 = fmul fast float %5918, %5632
  %5922 = fmul fast float %5918, %5642
  %5923 = fadd fast float %5920, %5919
  %5924 = fadd fast float %5921, %5919
  %5925 = fadd fast float %5922, %5919
  %5926 = fcmp fast ogt float %4302, 0.000000e+00
  br i1 %5926, label %5927, label %5953

; <label>:5927                                    ; preds = %5819
  %5928 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %45, float %4302, float %5644, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5929 = extractvalue %dx.types.ResRet.f32 %5928, 0
  %5930 = extractvalue %dx.types.ResRet.f32 %5928, 1
  %5931 = extractvalue %dx.types.ResRet.f32 %5928, 2
  %5932 = fadd fast float %5929, -5.000000e-01
  %5933 = fadd fast float %5930, -5.000000e-01
  %5934 = fadd fast float %5931, -5.000000e-01
  %5935 = fsub fast float 1.000000e+00, %5631
  %5936 = fsub fast float 1.000000e+00, %5632
  %5937 = fsub fast float 1.000000e+00, %5642
  %5938 = fmul fast float %5631, 4.000000e+00
  %5939 = fmul fast float %5938, %5935
  %5940 = fmul fast float %5939, %5932
  %5941 = fmul fast float %5632, 4.000000e+00
  %5942 = fmul fast float %5941, %5936
  %5943 = fmul fast float %5942, %5933
  %5944 = fmul fast float %5642, 4.000000e+00
  %5945 = fmul fast float %5944, %5937
  %5946 = fmul fast float %5945, %5934
  %5947 = fadd fast float %5940, %5923
  %5948 = fadd fast float %5943, %5924
  %5949 = fadd fast float %5946, %5925
  %5950 = call float @dx.op.unary.f32(i32 7, float %5947)  ; Saturate(value)
  %5951 = call float @dx.op.unary.f32(i32 7, float %5948)  ; Saturate(value)
  %5952 = call float @dx.op.unary.f32(i32 7, float %5949)  ; Saturate(value)
  br label %5953

; <label>:5953                                    ; preds = %5927, %5819
  %5954 = phi float [ %5950, %5927 ], [ %5923, %5819 ]
  %5955 = phi float [ %5951, %5927 ], [ %5924, %5819 ]
  %5956 = phi float [ %5952, %5927 ], [ %5925, %5819 ]
  %5957 = call float @dx.op.binary.f32(i32 35, float %5955, float %5956)  ; FMax(a,b)
  %5958 = call float @dx.op.binary.f32(i32 35, float %5954, float %5957)  ; FMax(a,b)
  %5959 = fsub fast float 1.000000e+00, %5958
  %5960 = fmul fast float %5958, %5640
  %5961 = fadd fast float %5960, %5640
  %5962 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 252)  ; CBufferLoadLegacy(handle,regIndex)
  %5963 = extractvalue %dx.types.CBufRet.f32 %5962, 2
  %5964 = extractvalue %dx.types.CBufRet.f32 %5962, 3
  %5965 = fmul fast float %5961, %5963
  %5966 = fadd fast float %5965, %5964
  %5967 = call float @dx.op.unary.f32(i32 7, float %5966)  ; Saturate(value)
  %5968 = fsub fast float 1.000000e+00, %5665
  %5969 = fadd fast float %5968, %5967
  %5970 = call float @dx.op.unary.f32(i32 7, float %5969)  ; Saturate(value)
  %5971 = fcmp fast olt float %5970, 1.000000e+00
  br i1 %5971, label %5972, label %6420

; <label>:5972                                    ; preds = %5953
  %5973 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %5974 = extractvalue %dx.types.CBufRet.f32 %5973, 2
  %5975 = extractvalue %dx.types.CBufRet.f32 %5973, 3
  %5976 = fmul fast float %5974, %111
  %5977 = fmul fast float %5975, %112
  %5978 = fptoui float %5976 to i32
  %5979 = fptoui float %5977 to i32
  %5980 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %5981 = extractvalue %dx.types.CBufRet.f32 %5980, 0
  %5982 = extractvalue %dx.types.CBufRet.f32 %5980, 2
  %5983 = extractvalue %dx.types.CBufRet.f32 %5980, 3
  %5984 = fadd fast float %98, -4.000000e+00
  %5985 = call float @dx.op.binary.f32(i32 35, float %5984, float 0.000000e+00)  ; FMax(a,b)
  %5986 = fadd fast float %5985, %5981
  %5987 = fmul fast float %5986, %5982
  %5988 = call float @dx.op.unary.f32(i32 23, float %5987)  ; Log(value)
  %5989 = fmul fast float %5988, %5983
  %5990 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5991 = extractvalue %dx.types.CBufRet.f32 %5990, 2
  %5992 = fmul fast float %5989, %5991
  %5993 = call float @dx.op.unary.f32(i32 7, float %5992)  ; Saturate(value)
  %5994 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5995 = extractvalue %dx.types.CBufRet.i32 %5994, 1
  %5996 = add i32 %5995, -1
  %5997 = uitofp i32 %5995 to float
  %5998 = fmul fast float %5997, %5993
  %5999 = fptoui float %5998 to i32
  %6000 = call i32 @dx.op.binary.i32(i32 40, i32 %5999, i32 %5996)  ; UMin(a,b)
  %6001 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %6002 = extractvalue %dx.types.CBufRet.i32 %6001, 2
  %6003 = extractvalue %dx.types.CBufRet.i32 %6001, 3
  %6004 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5979, i32 %6002, i32 %5978)  ; UMad(a,b,c)
  %6005 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6000, i32 %6003, i32 %6004)  ; UMad(a,b,c)
  %6006 = call float @dx.op.binary.f32(i32 35, float %98, float 0.000000e+00)  ; FMax(a,b)
  %6007 = fptoui float %6006 to i32
  %6008 = lshr i32 %6007, 5
  %6009 = call i32 @dx.op.binary.i32(i32 40, i32 %6008, i32 8191)  ; UMin(a,b)
  br i1 false, label %6010, label %6017

; <label>:6010                                    ; preds = %5972
  %6011 = fadd fast float 0.000000e+00, %5652
  %6012 = call float @dx.op.dot3.f32(i32 55, float %5650, float %5651, float %6011, float %5650, float %5651, float %6011)  ; Dot3(ax,ay,az,bx,by,bz)
  %6013 = call float @dx.op.unary.f32(i32 25, float %6012)  ; Rsqrt(value)
  %6014 = fmul fast float %6013, %5650
  %6015 = fmul fast float %6013, %5651
  %6016 = fmul fast float %6011, %6013
  br label %6017

; <label>:6017                                    ; preds = %6010, %5972
  %6018 = phi float [ %6014, %6010 ], [ %5650, %5972 ]
  %6019 = phi float [ %6015, %6010 ], [ %5651, %5972 ]
  %6020 = phi float [ %6016, %6010 ], [ %5652, %5972 ]
  %6021 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6022 = extractvalue %dx.types.CBufRet.i32 %6021, 2
  %6023 = add nsw i32 %6022, -1
  %6024 = call i32 @dx.op.binary.i32(i32 37, i32 %6023, i32 0)  ; IMax(a,b)
  %6025 = shl i32 %6009, 2
  %6026 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %6025, i32 undef)  ; BufferLoad(srv,index,wot)
  %6027 = extractvalue %dx.types.ResRet.i32 %6026, 0
  %6028 = lshr i32 %6027, 16
  %6029 = and i32 %6027, 65535
  %6030 = lshr i32 %6027, 21
  %6031 = lshr i32 %6029, 5
  %6032 = call i32 @dx.op.binary.i32(i32 40, i32 %6031, i32 %6024)  ; UMin(a,b)
  %6033 = icmp ugt i32 %6030, %6032
  br i1 %6033, label %6396, label %6034

; <label>:6034                                    ; preds = %6017
  br label %6035

; <label>:6035                                    ; preds = %6388, %6034
  %6036 = phi float [ %6389, %6388 ], [ 0.000000e+00, %6034 ]
  %6037 = phi float [ %6390, %6388 ], [ 0.000000e+00, %6034 ]
  %6038 = phi float [ %6391, %6388 ], [ 0.000000e+00, %6034 ]
  %6039 = phi float [ %6392, %6388 ], [ 1.000000e+00, %6034 ]
  %6040 = phi i32 [ %6393, %6388 ], [ %6030, %6034 ]
  %6041 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6042 = extractvalue %dx.types.CBufRet.i32 %6041, 2
  %6043 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6005, i32 %6042, i32 %6040)  ; UMad(a,b,c)
  %6044 = shl i32 %6043, 2
  %6045 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 %6044, i32 undef)  ; BufferLoad(srv,index,wot)
  %6046 = extractvalue %dx.types.ResRet.i32 %6045, 0
  %6047 = shl i32 %6040, 5
  %6048 = sub nsw i32 %6028, %6047
  %6049 = call i32 @dx.op.binary.i32(i32 37, i32 %6048, i32 0)  ; IMax(a,b)
  %6050 = call i32 @dx.op.binary.i32(i32 38, i32 %6049, i32 31)  ; IMin(a,b)
  %6051 = sub nsw i32 1, %6028
  %6052 = add nsw i32 %6051, %6029
  %6053 = call i32 @dx.op.binary.i32(i32 37, i32 %6052, i32 0)  ; IMax(a,b)
  %6054 = call i32 @dx.op.binary.i32(i32 38, i32 %6053, i32 32)  ; IMin(a,b)
  %6055 = and i32 %6054, 31
  %6056 = shl i32 -1, %6055
  %6057 = xor i32 %6056, -1
  %6058 = and i32 %6050, 31
  %6059 = shl i32 %6057, %6058
  %6060 = icmp eq i32 %6054, 32
  %6061 = select i1 %6060, i32 -1, i32 %6059
  %6062 = and i32 %6061, %6046
  %6063 = icmp eq i32 %6062, 0
  br i1 %6063, label %6388, label %6064

; <label>:6064                                    ; preds = %6035
  br label %6065

; <label>:6065                                    ; preds = %6171, %6064
  %6066 = phi float [ %6172, %6171 ], [ %6036, %6064 ]
  %6067 = phi float [ %6173, %6171 ], [ %6037, %6064 ]
  %6068 = phi float [ %6174, %6171 ], [ %6038, %6064 ]
  %6069 = phi float [ %6175, %6171 ], [ %6039, %6064 ]
  %6070 = phi i32 [ %6075, %6171 ], [ %6062, %6064 ]
  %6071 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %6070)  ; FirstbitLo(value)
  %6072 = add i32 %6071, %6047
  %6073 = and i32 %6071, 31
  %6074 = shl i32 1, %6073
  %6075 = xor i32 %6074, %6070
  %6076 = mul i32 %6072, 72
  %6077 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %6076, i32 undef)  ; BufferLoad(srv,index,wot)
  %6078 = extractvalue %dx.types.ResRet.f32 %6077, 0
  %6079 = extractvalue %dx.types.ResRet.f32 %6077, 1
  %6080 = extractvalue %dx.types.ResRet.f32 %6077, 2
  %6081 = add i32 %6076, 12
  %6082 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %6081, i32 undef)  ; BufferLoad(srv,index,wot)
  %6083 = extractvalue %dx.types.ResRet.i32 %6082, 0
  %6084 = add i32 %6076, 16
  %6085 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %6084, i32 undef)  ; BufferLoad(srv,index,wot)
  %6086 = extractvalue %dx.types.ResRet.f32 %6085, 0
  %6087 = extractvalue %dx.types.ResRet.f32 %6085, 1
  %6088 = extractvalue %dx.types.ResRet.f32 %6085, 2
  %6089 = add i32 %6076, 28
  %6090 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %6089, i32 undef)  ; BufferLoad(srv,index,wot)
  %6091 = extractvalue %dx.types.ResRet.f32 %6090, 0
  %6092 = add i32 %6076, 32
  %6093 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %6092, i32 undef)  ; BufferLoad(srv,index,wot)
  %6094 = extractvalue %dx.types.ResRet.f32 %6093, 0
  %6095 = extractvalue %dx.types.ResRet.f32 %6093, 1
  %6096 = extractvalue %dx.types.ResRet.f32 %6093, 2
  %6097 = extractvalue %dx.types.ResRet.f32 %6093, 3
  %6098 = add i32 %6076, 48
  %6099 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %6098, i32 undef)  ; BufferLoad(srv,index,wot)
  %6100 = extractvalue %dx.types.ResRet.f32 %6099, 0
  %6101 = extractvalue %dx.types.ResRet.f32 %6099, 1
  %6102 = add i32 %6076, 56
  %6103 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %6102, i32 undef)  ; BufferLoad(srv,index,wot)
  %6104 = extractvalue %dx.types.ResRet.f32 %6103, 0
  %6105 = extractvalue %dx.types.ResRet.f32 %6103, 1
  %6106 = add i32 %6076, 64
  %6107 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %6106, i32 undef)  ; BufferLoad(srv,index,wot)
  %6108 = extractvalue %dx.types.ResRet.f32 %6107, 0
  %6109 = extractvalue %dx.types.ResRet.f32 %6107, 1
  %6110 = mul i32 %6072, 60
  %6111 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %36, i32 %6110, i32 undef)  ; BufferLoad(srv,index,wot)
  %6112 = extractvalue %dx.types.ResRet.f32 %6111, 0
  %6113 = extractvalue %dx.types.ResRet.f32 %6111, 1
  %6114 = extractvalue %dx.types.ResRet.f32 %6111, 2
  %6115 = add i32 %6110, 12
  %6116 = add i32 %6110, 48
  %6117 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %36, i32 %6116, i32 undef)  ; BufferLoad(srv,index,wot)
  %6118 = extractvalue %dx.types.ResRet.f32 %6117, 0
  %6119 = extractvalue %dx.types.ResRet.f32 %6117, 1
  %6120 = extractvalue %dx.types.ResRet.f32 %6117, 2
  %6121 = and i32 %6083, 32767
  %6122 = bitcast float %6078 to i32
  %6123 = icmp eq i32 %6122, -1
  %6124 = bitcast float %6079 to i32
  %6125 = and i32 %6083, 32768
  %6126 = icmp ne i32 %6125, 0
  %6127 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %6128 = extractvalue %dx.types.CBufRet.f32 %6127, 0
  %6129 = extractvalue %dx.types.CBufRet.f32 %6127, 1
  %6130 = extractvalue %dx.types.CBufRet.f32 %6127, 2
  %6131 = fsub fast float %6112, %6128
  %6132 = fsub fast float %6113, %6129
  %6133 = fsub fast float %6114, %6130
  %6134 = fsub fast float %190, %6131
  %6135 = fsub fast float %191, %6132
  %6136 = fsub fast float %192, %6133
  %6137 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %36, i32 %6115, i32 undef)  ; BufferLoad(srv,index,wot)
  %6138 = extractvalue %dx.types.ResRet.f32 %6137, 0
  %6139 = extractvalue %dx.types.ResRet.f32 %6137, 1
  %6140 = extractvalue %dx.types.ResRet.f32 %6137, 2
  %6141 = call float @dx.op.dot3.f32(i32 55, float %6134, float %6135, float %6136, float %6138, float %6139, float %6140)  ; Dot3(ax,ay,az,bx,by,bz)
  %6142 = add i32 %6110, 24
  %6143 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %36, i32 %6142, i32 undef)  ; BufferLoad(srv,index,wot)
  %6144 = extractvalue %dx.types.ResRet.f32 %6143, 0
  %6145 = extractvalue %dx.types.ResRet.f32 %6143, 1
  %6146 = extractvalue %dx.types.ResRet.f32 %6143, 2
  %6147 = call float @dx.op.dot3.f32(i32 55, float %6134, float %6135, float %6136, float %6144, float %6145, float %6146)  ; Dot3(ax,ay,az,bx,by,bz)
  %6148 = add i32 %6110, 36
  %6149 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %36, i32 %6148, i32 undef)  ; BufferLoad(srv,index,wot)
  %6150 = extractvalue %dx.types.ResRet.f32 %6149, 0
  %6151 = extractvalue %dx.types.ResRet.f32 %6149, 1
  %6152 = extractvalue %dx.types.ResRet.f32 %6149, 2
  %6153 = call float @dx.op.dot3.f32(i32 55, float %6134, float %6135, float %6136, float %6150, float %6151, float %6152)  ; Dot3(ax,ay,az,bx,by,bz)
  %6154 = call float @dx.op.unary.f32(i32 6, float %6141)  ; FAbs(value)
  %6155 = call float @dx.op.unary.f32(i32 6, float %6147)  ; FAbs(value)
  %6156 = call float @dx.op.unary.f32(i32 6, float %6153)  ; FAbs(value)
  %6157 = fsub fast float %6118, %6154
  %6158 = fsub fast float %6119, %6155
  %6159 = fsub fast float %6120, %6156
  %6160 = fmul fast float %6157, %6086
  %6161 = fmul fast float %6158, %6087
  %6162 = fmul fast float %6159, %6088
  %6163 = call float @dx.op.binary.f32(i32 36, float %6161, float %6162)  ; FMin(a,b)
  %6164 = call float @dx.op.binary.f32(i32 36, float %6160, float %6163)  ; FMin(a,b)
  %6165 = call float @dx.op.unary.f32(i32 7, float %6164)  ; Saturate(value)
  %6166 = call float @dx.op.binary.f32(i32 36, float %6069, float %6165)  ; FMin(a,b)
  %6167 = uitofp i1 %6126 to float
  %6168 = fsub fast float 1.000000e+00, %6167
  %6169 = fmul fast float %6166, %6168
  %6170 = fcmp fast ogt float %6169, 0.000000e+00
  br i1 %6170, label %6177, label %6171

; <label>:6171                                    ; preds = %6319, %6065
  %6172 = phi float [ %6383, %6319 ], [ %6066, %6065 ]
  %6173 = phi float [ %6384, %6319 ], [ %6067, %6065 ]
  %6174 = phi float [ %6385, %6319 ], [ %6068, %6065 ]
  %6175 = phi float [ %6386, %6319 ], [ %6069, %6065 ]
  %6176 = icmp eq i32 %6070, %6074
  br i1 %6176, label %6387, label %6065

; <label>:6177                                    ; preds = %6065
  br i1 %6123, label %6235, label %6178

; <label>:6178                                    ; preds = %6177
  %6179 = fsub fast float -0.000000e+00, %6138
  %6180 = fsub fast float -0.000000e+00, %6139
  %6181 = fsub fast float -0.000000e+00, %6140
  %6182 = call float @dx.op.dot3.f32(i32 55, float %6018, float %6019, float %6020, float %6179, float %6180, float %6181)  ; Dot3(ax,ay,az,bx,by,bz)
  %6183 = fsub fast float -0.000000e+00, %6182
  %6184 = call float @dx.op.dot3.f32(i32 55, float %6134, float %6135, float %6136, float %6179, float %6180, float %6181)  ; Dot3(ax,ay,az,bx,by,bz)
  %6185 = fadd fast float %6184, %6101
  %6186 = fadd fast float %6100, %6184
  %6187 = fsub fast float -0.000000e+00, %6186
  %6188 = fcmp ogt float %6182, -0.000000e+00
  %6189 = select i1 %6188, float %6187, float %6185
  %6190 = call float @dx.op.unary.f32(i32 6, float %6183)  ; FAbs(value)
  %6191 = fdiv fast float 1.000000e+00, %6190
  %6192 = fmul fast float %6189, %6191
  %6193 = call float @dx.op.binary.f32(i32 35, float %6192, float 0.000000e+00)  ; FMax(a,b)
  %6194 = fsub fast float -0.000000e+00, %6144
  %6195 = fsub fast float -0.000000e+00, %6145
  %6196 = fsub fast float -0.000000e+00, %6146
  %6197 = call float @dx.op.dot3.f32(i32 55, float %6018, float %6019, float %6020, float %6194, float %6195, float %6196)  ; Dot3(ax,ay,az,bx,by,bz)
  %6198 = fsub fast float -0.000000e+00, %6197
  %6199 = call float @dx.op.dot3.f32(i32 55, float %6134, float %6135, float %6136, float %6194, float %6195, float %6196)  ; Dot3(ax,ay,az,bx,by,bz)
  %6200 = fadd fast float %6199, %6105
  %6201 = fadd fast float %6104, %6199
  %6202 = fsub fast float -0.000000e+00, %6201
  %6203 = fcmp ogt float %6197, -0.000000e+00
  %6204 = select i1 %6203, float %6202, float %6200
  %6205 = call float @dx.op.unary.f32(i32 6, float %6198)  ; FAbs(value)
  %6206 = fdiv fast float 1.000000e+00, %6205
  %6207 = fmul fast float %6204, %6206
  %6208 = call float @dx.op.binary.f32(i32 35, float %6207, float 0.000000e+00)  ; FMax(a,b)
  %6209 = fsub fast float -0.000000e+00, %6150
  %6210 = fsub fast float -0.000000e+00, %6151
  %6211 = fsub fast float -0.000000e+00, %6152
  %6212 = call float @dx.op.dot3.f32(i32 55, float %6018, float %6019, float %6020, float %6209, float %6210, float %6211)  ; Dot3(ax,ay,az,bx,by,bz)
  %6213 = fsub fast float -0.000000e+00, %6212
  %6214 = call float @dx.op.dot3.f32(i32 55, float %6134, float %6135, float %6136, float %6209, float %6210, float %6211)  ; Dot3(ax,ay,az,bx,by,bz)
  %6215 = fadd fast float %6214, %6109
  %6216 = fadd fast float %6108, %6214
  %6217 = fsub fast float -0.000000e+00, %6216
  %6218 = fcmp ogt float %6212, -0.000000e+00
  %6219 = select i1 %6218, float %6217, float %6215
  %6220 = call float @dx.op.unary.f32(i32 6, float %6213)  ; FAbs(value)
  %6221 = fdiv fast float 1.000000e+00, %6220
  %6222 = fmul fast float %6219, %6221
  %6223 = call float @dx.op.binary.f32(i32 35, float %6222, float 0.000000e+00)  ; FMax(a,b)
  %6224 = call float @dx.op.binary.f32(i32 36, float %6208, float %6223)  ; FMin(a,b)
  %6225 = call float @dx.op.binary.f32(i32 36, float %6193, float %6224)  ; FMin(a,b)
  %6226 = fmul fast float %6225, %6018
  %6227 = fmul fast float %6225, %6019
  %6228 = fmul fast float %6225, %6020
  %6229 = fadd fast float %6226, %190
  %6230 = fadd fast float %6227, %191
  %6231 = fadd fast float %6228, %192
  %6232 = fsub fast float %6229, %6078
  %6233 = fsub fast float %6230, %6079
  %6234 = fsub fast float %6231, %6080
  br label %6242

; <label>:6235                                    ; preds = %6177
  %6236 = fmul fast float %6018, 8.096000e+03
  %6237 = fmul fast float %6019, 8.096000e+03
  %6238 = fmul fast float %6020, 8.096000e+03
  %6239 = fadd fast float %6236, %190
  %6240 = fadd fast float %6237, %191
  %6241 = fadd fast float %6238, %192
  br label %6242

; <label>:6242                                    ; preds = %6235, %6178
  %6243 = phi float [ %6018, %6235 ], [ %6232, %6178 ]
  %6244 = phi float [ %6019, %6235 ], [ %6233, %6178 ]
  %6245 = phi float [ %6020, %6235 ], [ %6234, %6178 ]
  %6246 = phi float [ %6239, %6235 ], [ %6229, %6178 ]
  %6247 = phi float [ %6240, %6235 ], [ %6230, %6178 ]
  %6248 = phi float [ %6241, %6235 ], [ %6231, %6178 ]
  %6249 = fcmp fast olt float %6097, 1.000000e+00
  br i1 %6249, label %6250, label %6281, !dx.controlflow.hints !94

; <label>:6250                                    ; preds = %6242
  %6251 = fmul fast float %6245, %6095
  %6252 = fmul fast float %6244, %6096
  %6253 = fsub fast float %6251, %6252
  %6254 = fmul fast float %6243, %6096
  %6255 = fmul fast float %6245, %6094
  %6256 = fsub fast float %6254, %6255
  %6257 = fmul fast float %6244, %6094
  %6258 = fmul fast float %6243, %6095
  %6259 = fsub fast float %6257, %6258
  %6260 = fmul fast float %6253, 2.000000e+00
  %6261 = fmul fast float %6256, 2.000000e+00
  %6262 = fmul fast float %6259, 2.000000e+00
  %6263 = fmul fast float %6260, %6097
  %6264 = fmul fast float %6261, %6097
  %6265 = fmul fast float %6262, %6097
  %6266 = fmul fast float %6262, %6095
  %6267 = fmul fast float %6261, %6096
  %6268 = fmul fast float %6260, %6096
  %6269 = fmul fast float %6262, %6094
  %6270 = fmul fast float %6261, %6094
  %6271 = fmul fast float %6260, %6095
  %6272 = fadd fast float %6266, %6243
  %6273 = fadd fast float %6272, %6263
  %6274 = fsub fast float %6273, %6267
  %6275 = fsub fast float %6244, %6269
  %6276 = fadd fast float %6275, %6264
  %6277 = fadd fast float %6276, %6268
  %6278 = fadd fast float %6265, %6245
  %6279 = fsub fast float %6278, %6271
  %6280 = fadd fast float %6279, %6270
  br label %6281

; <label>:6281                                    ; preds = %6250, %6242
  %6282 = phi float [ %6274, %6250 ], [ %6243, %6242 ]
  %6283 = phi float [ %6277, %6250 ], [ %6244, %6242 ]
  %6284 = phi float [ %6280, %6250 ], [ %6245, %6242 ]
  br i1 %6123, label %6316, label %6285

; <label>:6285                                    ; preds = %6281
  %6286 = fmul fast float %5640, 0x400187C840000000
  %6287 = fadd fast float %6286, 0xC00EFC2120000000
  %6288 = fmul fast float %6287, %5640
  %6289 = fadd fast float %6288, 0x3FE5D16340000000
  %6290 = fmul fast float %6289, %5640
  %6291 = fadd fast float %6290, 1.000000e+00
  %6292 = call float @dx.op.unary.f32(i32 7, float %6291)  ; Saturate(value)
  %6293 = fsub fast float %6246, %190
  %6294 = fsub fast float %6247, %191
  %6295 = fsub fast float %6248, %192
  %6296 = fsub fast float %6246, %6078
  %6297 = fsub fast float %6247, %6079
  %6298 = fsub fast float %6248, %6080
  %6299 = call float @dx.op.dot3.f32(i32 55, float %6293, float %6294, float %6295, float %6293, float %6294, float %6295)  ; Dot3(ax,ay,az,bx,by,bz)
  %6300 = call float @dx.op.dot3.f32(i32 55, float %6296, float %6297, float %6298, float %6296, float %6297, float %6298)  ; Dot3(ax,ay,az,bx,by,bz)
  %6301 = fadd fast float %6300, 0x3EE4F8B580000000
  %6302 = fdiv fast float %6299, %6301
  %6303 = bitcast float %6302 to i32
  %6304 = ashr i32 %6303, 1
  %6305 = add nsw i32 %6304, 532487669
  %6306 = bitcast i32 %6305 to float
  %6307 = fmul fast float %6306, %6292
  %6308 = call float @dx.op.unary.f32(i32 7, float %6307)  ; Saturate(value)
  %6309 = fmul fast float %6308, 0x4009981AE0000000
  %6310 = fsub fast float 0x40111BBD80000000, %6309
  %6311 = fmul fast float %6310, %6308
  %6312 = fadd fast float %6311, 0xC0009F6020000000
  %6313 = fmul fast float %6312, %6308
  %6314 = fadd fast float %6313, 1.000000e+00
  %6315 = call float @dx.op.unary.f32(i32 7, float %6314)  ; Saturate(value)
  br label %6319

; <label>:6316                                    ; preds = %6281
  %6317 = icmp ne i32 %6124, -1
  %6318 = zext i1 %6317 to i32
  br label %6319

; <label>:6319                                    ; preds = %6316, %6285
  %6320 = phi float [ %5640, %6316 ], [ %6315, %6285 ]
  %6321 = phi i32 [ %6318, %6316 ], [ 0, %6285 ]
  %6322 = fmul float %6320, 5.000000e+00
  %6323 = fsub float 5.000000e+00, %6322
  %6324 = icmp ne i32 %6321, 0
  %6325 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %6326 = extractvalue %dx.types.CBufRet.f32 %6325, 3
  %6327 = fadd fast float %6326, %6323
  %6328 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6327)  ; FMax(a,b)
  %6329 = call float @dx.op.unary.f32(i32 6, float %6282)  ; FAbs(value)
  %6330 = call float @dx.op.unary.f32(i32 6, float %6283)  ; FAbs(value)
  %6331 = fadd fast float %6330, %6329
  %6332 = call float @dx.op.unary.f32(i32 6, float %6284)  ; FAbs(value)
  %6333 = fadd fast float %6331, %6332
  %6334 = fcmp fast oeq float %6333, 0.000000e+00
  %6335 = fdiv fast float 1.000000e+00, %6333
  %6336 = select i1 %6334, float 1.000000e+00, float %6335
  %6337 = fmul fast float %6336, %6282
  %6338 = fmul fast float %6336, %6283
  %6339 = call float @dx.op.unary.f32(i32 6, float %6338)  ; FAbs(value)
  %6340 = call float @dx.op.unary.f32(i32 6, float %6337)  ; FAbs(value)
  %6341 = fsub fast float 1.000000e+00, %6339
  %6342 = fsub fast float 1.000000e+00, %6340
  %6343 = fcmp fast oge float %6337, 0.000000e+00
  %6344 = fcmp fast oge float %6338, 0.000000e+00
  %6345 = select i1 %6343, float 1.000000e+00, float -1.000000e+00
  %6346 = select i1 %6344, float 1.000000e+00, float -1.000000e+00
  %6347 = fcmp fast ole float %6284, 0.000000e+00
  %6348 = fmul fast float %6345, %6341
  %6349 = fmul fast float %6346, %6342
  %6350 = select i1 %6347, float %6348, float %6337
  %6351 = select i1 %6347, float %6349, float %6338
  %6352 = fmul fast float %6350, 5.000000e-01
  %6353 = fmul fast float %6351, 5.000000e-01
  %6354 = fadd fast float %6352, 5.000000e-01
  %6355 = fadd fast float %6353, 5.000000e-01
  %6356 = uitofp i32 %6121 to float
  %6357 = call float @dx.op.binary.f32(i32 36, float %6328, float 3.000000e+00)  ; FMin(a,b)
  %6358 = fadd fast float %6357, 2.000000e+00
  %6359 = call float @dx.op.unary.f32(i32 21, float %6358)  ; Exp(value)
  %6360 = extractvalue %dx.types.CBufRet.f32 %6325, 1
  %6361 = fmul fast float %6360, %6359
  %6362 = fmul fast float %6361, 2.000000e+00
  %6363 = fsub fast float 1.000000e+00, %6362
  %6364 = fmul fast float %6354, %6363
  %6365 = fmul fast float %6355, %6363
  %6366 = fadd fast float %6364, %6361
  %6367 = fadd fast float %6365, %6361
  %6368 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %43, float %6366, float %6367, float %6356, float undef, i32 0, i32 0, i32 undef, float %6328)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6369 = extractvalue %dx.types.ResRet.f32 %6368, 0
  %6370 = extractvalue %dx.types.ResRet.f32 %6368, 1
  %6371 = extractvalue %dx.types.ResRet.f32 %6368, 2
  %6372 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6373 = extractvalue %dx.types.CBufRet.f32 %6372, 3
  %6374 = fmul fast float %6373, %6091
  %6375 = call float @dx.op.binary.f32(i32 36, float %5670, float %6374)  ; FMin(a,b)
  %6376 = select i1 %6324, float %6375, float %6374
  %6377 = fmul fast float %6369, %6169
  %6378 = fmul fast float %6377, %6376
  %6379 = fmul fast float %6370, %6169
  %6380 = fmul fast float %6379, %6376
  %6381 = fmul fast float %6371, %6169
  %6382 = fmul fast float %6381, %6376
  %6383 = fadd fast float %6378, %6066
  %6384 = fadd fast float %6380, %6067
  %6385 = fadd fast float %6382, %6068
  %6386 = fsub fast float %6069, %6169
  br label %6171

; <label>:6387                                    ; preds = %6171
  br label %6388

; <label>:6388                                    ; preds = %6387, %6035
  %6389 = phi float [ %6036, %6035 ], [ %6172, %6387 ]
  %6390 = phi float [ %6037, %6035 ], [ %6173, %6387 ]
  %6391 = phi float [ %6038, %6035 ], [ %6174, %6387 ]
  %6392 = phi float [ %6039, %6035 ], [ %6175, %6387 ]
  %6393 = add i32 %6040, 1
  %6394 = icmp ugt i32 %6393, %6032
  br i1 %6394, label %6395, label %6035, !llvm.loop !95

; <label>:6395                                    ; preds = %6388
  br label %6396

; <label>:6396                                    ; preds = %6395, %6017
  %6397 = phi float [ 0.000000e+00, %6017 ], [ %6389, %6395 ]
  %6398 = phi float [ 0.000000e+00, %6017 ], [ %6390, %6395 ]
  %6399 = phi float [ 0.000000e+00, %6017 ], [ %6391, %6395 ]
  %6400 = call float @dx.op.dot3.f32(i32 55, float %6397, float %6398, float %6399, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6401 = select i1 %296, float 0.000000e+00, float %6397
  %6402 = select i1 %296, float %6400, float %6398
  %6403 = select i1 %296, float 0.000000e+00, float %6399
  %6404 = fcmp fast olt float %5970, 0.000000e+00
  %6405 = call float @dx.op.unary.f32(i32 6, float %5970)  ; FAbs(value)
  %6406 = fmul fast float %6405, %5910
  %6407 = fmul fast float %6405, %5911
  %6408 = fmul fast float %6405, %5912
  %6409 = select i1 %6404, float %5910, float %6406
  %6410 = select i1 %6404, float %5911, float %6407
  %6411 = select i1 %6404, float %5912, float %6408
  %6412 = fsub fast float 1.000000e+00, %6405
  %6413 = call float @dx.op.unary.f32(i32 7, float %6412)  ; Saturate(value)
  %6414 = fmul fast float %6413, %6401
  %6415 = fmul fast float %6413, %6402
  %6416 = fmul fast float %6413, %6403
  %6417 = fadd fast float %6409, %6414
  %6418 = fadd fast float %6410, %6415
  %6419 = fadd fast float %6411, %6416
  br label %6420

; <label>:6420                                    ; preds = %6396, %5953
  %6421 = phi float [ %5910, %5953 ], [ %6417, %6396 ]
  %6422 = phi float [ %5911, %5953 ], [ %6418, %6396 ]
  %6423 = phi float [ %5912, %5953 ], [ %6419, %6396 ]
  %6424 = call float @dx.op.dot3.f32(i32 55, float %5634, float %5635, float %5636, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6425 = fcmp fast ogt float %6424, 0x3E7FF19E20000000
  %6426 = fdiv fast float 1.000000e+00, %6424
  %6427 = select i1 %6425, float %6426, float 0.000000e+00
  %6428 = fmul fast float %6427, %5634
  %6429 = fmul fast float %6427, %5635
  %6430 = fmul fast float %6427, %5636
  %6431 = fadd fast float %6428, -1.000000e+00
  %6432 = fadd fast float %6429, -1.000000e+00
  %6433 = fadd fast float %6430, -1.000000e+00
  %6434 = fmul fast float %6431, 5.000000e-01
  %6435 = fmul fast float %6432, 5.000000e-01
  %6436 = fmul fast float %6433, 5.000000e-01
  %6437 = fadd fast float %6434, 1.000000e+00
  %6438 = fadd fast float %6435, 1.000000e+00
  %6439 = fadd fast float %6436, 1.000000e+00
  %6440 = fmul fast float %5959, %4414
  %6441 = fmul fast float %5959, %4415
  %6442 = fmul fast float %5959, %4416
  %6443 = fadd fast float %6440, -1.000000e+00
  %6444 = fadd fast float %6441, -1.000000e+00
  %6445 = fadd fast float %6442, -1.000000e+00
  %6446 = fmul fast float %6443, %4328
  %6447 = fmul fast float %6444, %4328
  %6448 = fmul fast float %6445, %4328
  %6449 = fmul fast float %6421, %5954
  %6450 = fmul fast float %6422, %5955
  %6451 = fmul fast float %6423, %5956
  %6452 = fsub fast float 1.000000e+00, %5644
  %6453 = bitcast float %6452 to i32
  %6454 = sitofp i32 %6453 to float
  %6455 = fmul fast float %6454, 5.000000e+00
  %6456 = fadd fast float %6455, 0xC1EFBF8940000000
  %6457 = fptosi float %6456 to i32
  %6458 = bitcast i32 %6457 to float
  %6459 = fmul fast float %6458, %4303
  %6460 = fmul fast float %5902, %6459
  %6461 = fmul fast float %6460, %5959
  %6462 = fmul fast float %6461, %6437
  %6463 = fmul fast float %5903, %6459
  %6464 = fmul fast float %6463, %5959
  %6465 = fmul fast float %6464, %6438
  %6466 = fmul fast float %5904, %6459
  %6467 = fmul fast float %6466, %5959
  %6468 = fmul fast float %6467, %6439
  %6469 = fadd fast float %6449, %4292
  %6470 = fadd fast float %6469, %6462
  %6471 = fmul fast float %6470, %4328
  %6472 = fadd fast float %6450, %4293
  %6473 = fadd fast float %6472, %6465
  %6474 = fmul fast float %6473, %4328
  %6475 = fadd fast float %6451, %4294
  %6476 = fadd fast float %6475, %6468
  %6477 = fmul fast float %6476, %4328
  %6478 = fadd fast float %6448, 1.000000e+00
  %6479 = fadd fast float %6447, 1.000000e+00
  %6480 = fadd fast float %6446, 1.000000e+00
  %6481 = fmul fast float %5959, %5904
  %6482 = fmul fast float %5959, %5903
  %6483 = fmul fast float %5959, %5902
  %6484 = fmul fast float %6480, %5906
  %6485 = fmul fast float %6479, %5907
  %6486 = fmul fast float %6478, %5908
  %6487 = fadd fast float %6484, %6483
  %6488 = fmul fast float %6487, %4328
  %6489 = fadd fast float %6485, %6482
  %6490 = fmul fast float %6489, %4328
  %6491 = fadd fast float %6486, %6481
  %6492 = fmul fast float %6491, %4328
  %6493 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %6494 = extractvalue %dx.types.CBufRet.f32 %6493, 3
  %6495 = fcmp fast oeq float %6494, 0.000000e+00
  br i1 %6495, label %8179, label %6496

; <label>:6496                                    ; preds = %6420
  %6497 = extractvalue %dx.types.CBufRet.f32 %6493, 0
  %6498 = extractvalue %dx.types.CBufRet.f32 %6493, 1
  %6499 = extractvalue %dx.types.CBufRet.f32 %6493, 2
  %6500 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %6501 = extractvalue %dx.types.CBufRet.f32 %6500, 0
  %6502 = extractvalue %dx.types.CBufRet.f32 %6500, 1
  %6503 = extractvalue %dx.types.CBufRet.f32 %6500, 2
  %6504 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %6505 = extractvalue %dx.types.CBufRet.f32 %6504, 0
  %6506 = extractvalue %dx.types.CBufRet.f32 %6504, 1
  %6507 = call float @dx.op.dot3.f32(i32 55, float %6501, float %6502, float %6503, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6508 = select i1 %296, float %6505, float %6501
  %6509 = select i1 %296, float %6507, float %6502
  %6510 = select i1 %296, float %6506, float %6503
  %6511 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %6512 = extractvalue %dx.types.CBufRet.f32 %6511, 2
  %6513 = fmul fast float %6512, %118
  %6514 = fmul fast float %6512, %119
  %6515 = fmul fast float %6512, %120
  %6516 = fadd fast float %6513, %190
  %6517 = fadd fast float %6514, %191
  %6518 = fadd fast float %6515, %192
  %6519 = fcmp fast olt float %6494, 0.000000e+00
  br i1 %6519, label %7777, label %6520

; <label>:6520                                    ; preds = %6496
  %6521 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6522 = extractvalue %dx.types.CBufRet.f32 %6521, 0
  %6523 = extractvalue %dx.types.CBufRet.f32 %6521, 1
  %6524 = extractvalue %dx.types.CBufRet.f32 %6521, 2
  %6525 = extractvalue %dx.types.CBufRet.f32 %6521, 3
  %6526 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %6527 = extractvalue %dx.types.CBufRet.f32 %6526, 0
  %6528 = extractvalue %dx.types.CBufRet.f32 %6526, 1
  %6529 = extractvalue %dx.types.CBufRet.f32 %6526, 2
  %6530 = extractvalue %dx.types.CBufRet.f32 %6526, 3
  %6531 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %6532 = extractvalue %dx.types.CBufRet.f32 %6531, 0
  %6533 = extractvalue %dx.types.CBufRet.f32 %6531, 1
  %6534 = extractvalue %dx.types.CBufRet.f32 %6531, 2
  %6535 = extractvalue %dx.types.CBufRet.f32 %6531, 3
  %6536 = fmul fast float %6522, %6516
  %6537 = call float @dx.op.tertiary.f32(i32 46, float %6517, float %6523, float %6536)  ; FMad(a,b,c)
  %6538 = call float @dx.op.tertiary.f32(i32 46, float %6518, float %6524, float %6537)  ; FMad(a,b,c)
  %6539 = fadd fast float %6538, %6525
  %6540 = fmul fast float %6527, %6516
  %6541 = call float @dx.op.tertiary.f32(i32 46, float %6517, float %6528, float %6540)  ; FMad(a,b,c)
  %6542 = call float @dx.op.tertiary.f32(i32 46, float %6518, float %6529, float %6541)  ; FMad(a,b,c)
  %6543 = fadd fast float %6542, %6530
  %6544 = fmul fast float %6532, %6516
  %6545 = call float @dx.op.tertiary.f32(i32 46, float %6517, float %6533, float %6544)  ; FMad(a,b,c)
  %6546 = call float @dx.op.tertiary.f32(i32 46, float %6518, float %6534, float %6545)  ; FMad(a,b,c)
  %6547 = fadd fast float %6546, %6535
  %6548 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %6549 = extractvalue %dx.types.CBufRet.f32 %6548, 0
  %6550 = fcmp fast une float %6549, 0.000000e+00
  %6551 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %6552 = extractvalue %dx.types.CBufRet.f32 %6551, 0
  %6553 = extractvalue %dx.types.CBufRet.f32 %6551, 1
  %6554 = extractvalue %dx.types.CBufRet.f32 %6551, 3
  %6555 = fmul fast float %6554, %6539
  %6556 = fmul fast float %6554, %6543
  %6557 = fadd fast float %6555, %6552
  %6558 = fadd fast float %6556, %6553
  %6559 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %6560 = extractvalue %dx.types.CBufRet.f32 %6559, 0
  %6561 = extractvalue %dx.types.CBufRet.f32 %6559, 1
  %6562 = extractvalue %dx.types.CBufRet.f32 %6559, 3
  %6563 = fmul fast float %6562, %6539
  %6564 = fmul fast float %6562, %6543
  %6565 = fadd fast float %6563, %6560
  %6566 = fadd fast float %6564, %6561
  %6567 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %6568 = extractvalue %dx.types.CBufRet.f32 %6567, 1
  %6569 = fsub fast float %6568, %6547
  %6570 = extractvalue %dx.types.CBufRet.f32 %6567, 2
  %6571 = fmul fast float %6569, %6570
  %6572 = fsub fast float 1.000000e+00, %6571
  %6573 = call float @dx.op.unary.f32(i32 7, float %6572)  ; Saturate(value)
  br i1 %6550, label %6634, label %6574

; <label>:6574                                    ; preds = %6520
  %6575 = extractvalue %dx.types.CBufRet.f32 %6559, 2
  %6576 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6577 = extractvalue %dx.types.CBufRet.f32 %6576, 2
  %6578 = fadd fast float %6577, %6575
  %6579 = fcmp fast ogt float %6578, 0.000000e+00
  br i1 %6579, label %6580, label %6604

; <label>:6580                                    ; preds = %6574
  %6581 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %6582 = extractvalue %dx.types.CBufRet.f32 %6581, 0
  %6583 = extractvalue %dx.types.CBufRet.f32 %6581, 1
  %6584 = fsub fast float %6565, %6582
  %6585 = fsub fast float %6566, %6583
  %6586 = fcmp fast olt float %6584, 0.000000e+00
  %6587 = fcmp fast olt float %6585, 0.000000e+00
  %6588 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %6589 = extractvalue %dx.types.CBufRet.f32 %6588, 0
  %6590 = extractvalue %dx.types.CBufRet.f32 %6588, 1
  %6591 = extractvalue %dx.types.CBufRet.f32 %6588, 2
  %6592 = extractvalue %dx.types.CBufRet.f32 %6588, 3
  %6593 = select i1 %6586, float %6589, float %6591
  %6594 = select i1 %6587, float %6590, float %6592
  %6595 = fmul fast float %6593, %6584
  %6596 = fmul fast float %6594, %6585
  %6597 = call float @dx.op.unary.f32(i32 6, float %6595)  ; FAbs(value)
  %6598 = call float @dx.op.unary.f32(i32 6, float %6596)  ; FAbs(value)
  %6599 = extractvalue %dx.types.CBufRet.f32 %6511, 0
  %6600 = call float @dx.op.binary.f32(i32 35, float %6597, float %6598)  ; FMax(a,b)
  %6601 = fsub fast float %6599, %6600
  %6602 = call float @dx.op.unary.f32(i32 7, float %6601)  ; Saturate(value)
  %6603 = fmul fast float %6602, %6573
  br label %6604

; <label>:6604                                    ; preds = %6580, %6574
  %6605 = phi float [ %6603, %6580 ], [ 0.000000e+00, %6574 ]
  %6606 = extractvalue %dx.types.CBufRet.f32 %6551, 2
  %6607 = extractvalue %dx.types.CBufRet.f32 %6576, 1
  %6608 = fadd fast float %6607, %6606
  %6609 = fcmp fast ogt float %6608, 0.000000e+00
  br i1 %6609, label %6610, label %6634

; <label>:6610                                    ; preds = %6604
  %6611 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %6612 = extractvalue %dx.types.CBufRet.f32 %6611, 0
  %6613 = extractvalue %dx.types.CBufRet.f32 %6611, 1
  %6614 = fsub fast float %6557, %6612
  %6615 = fsub fast float %6558, %6613
  %6616 = fcmp fast olt float %6614, 0.000000e+00
  %6617 = fcmp fast olt float %6615, 0.000000e+00
  %6618 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %6619 = extractvalue %dx.types.CBufRet.f32 %6618, 0
  %6620 = extractvalue %dx.types.CBufRet.f32 %6618, 1
  %6621 = extractvalue %dx.types.CBufRet.f32 %6618, 2
  %6622 = extractvalue %dx.types.CBufRet.f32 %6618, 3
  %6623 = select i1 %6616, float %6619, float %6621
  %6624 = select i1 %6617, float %6620, float %6622
  %6625 = fmul fast float %6623, %6614
  %6626 = fmul fast float %6624, %6615
  %6627 = call float @dx.op.unary.f32(i32 6, float %6625)  ; FAbs(value)
  %6628 = call float @dx.op.unary.f32(i32 6, float %6626)  ; FAbs(value)
  %6629 = extractvalue %dx.types.CBufRet.f32 %6511, 0
  %6630 = call float @dx.op.binary.f32(i32 35, float %6627, float %6628)  ; FMax(a,b)
  %6631 = fsub fast float %6629, %6630
  %6632 = call float @dx.op.unary.f32(i32 7, float %6631)  ; Saturate(value)
  %6633 = fmul fast float %6632, %6573
  br label %6634

; <label>:6634                                    ; preds = %6610, %6604, %6520
  %6635 = phi float [ 0.000000e+00, %6520 ], [ %6633, %6610 ], [ 0.000000e+00, %6604 ]
  %6636 = phi float [ 0.000000e+00, %6520 ], [ %6605, %6610 ], [ %6605, %6604 ]
  %6637 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %6638 = extractvalue %dx.types.CBufRet.f32 %6637, 1
  %6639 = call float @dx.op.unary.f32(i32 7, float %6638)  ; Saturate(value)
  %6640 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %6641 = extractvalue %dx.types.CBufRet.f32 %6640, 0
  %6642 = extractvalue %dx.types.CBufRet.f32 %6640, 1
  %6643 = fsub fast float %6539, %6641
  %6644 = fsub fast float %6543, %6642
  %6645 = fcmp fast olt float %6643, 0.000000e+00
  %6646 = fcmp fast olt float %6644, 0.000000e+00
  %6647 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %6648 = extractvalue %dx.types.CBufRet.f32 %6647, 0
  %6649 = extractvalue %dx.types.CBufRet.f32 %6647, 1
  %6650 = extractvalue %dx.types.CBufRet.f32 %6647, 2
  %6651 = extractvalue %dx.types.CBufRet.f32 %6647, 3
  %6652 = select i1 %6645, float %6648, float %6650
  %6653 = select i1 %6646, float %6649, float %6651
  %6654 = fmul fast float %6652, %6643
  %6655 = fmul fast float %6653, %6644
  %6656 = call float @dx.op.unary.f32(i32 6, float %6654)  ; FAbs(value)
  %6657 = call float @dx.op.unary.f32(i32 6, float %6655)  ; FAbs(value)
  %6658 = extractvalue %dx.types.CBufRet.f32 %6511, 0
  %6659 = call float @dx.op.binary.f32(i32 35, float %6656, float %6657)  ; FMax(a,b)
  %6660 = fsub fast float %6658, %6659
  %6661 = call float @dx.op.unary.f32(i32 7, float %6660)  ; Saturate(value)
  %6662 = call float @dx.op.binary.f32(i32 36, float %6661, float %6639)  ; FMin(a,b)
  %6663 = fmul fast float %6662, %6573
  %6664 = fsub fast float %6635, %6663
  %6665 = fsub fast float %6636, %6635
  %6666 = fsub fast float %6665, %6663
  %6667 = call float @dx.op.binary.f32(i32 35, float %6635, float %6636)  ; FMax(a,b)
  %6668 = call float @dx.op.binary.f32(i32 35, float %6663, float %6667)  ; FMax(a,b)
  %6669 = fcmp fast olt float %6668, 1.000000e+00
  br i1 %6669, label %6670, label %7068, !dx.controlflow.hints !97

; <label>:6670                                    ; preds = %6634
  %6671 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %6672 = extractvalue %dx.types.CBufRet.f32 %6671, 0
  %6673 = fcmp fast une float %6672, 0.000000e+00
  br i1 %6673, label %6674, label %7068, !dx.controlflow.hints !98

; <label>:6674                                    ; preds = %6670
  %6675 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %6676 = extractvalue %dx.types.CBufRet.f32 %6675, 0
  %6677 = extractvalue %dx.types.CBufRet.f32 %6675, 1
  %6678 = extractvalue %dx.types.CBufRet.f32 %6675, 2
  %6679 = extractvalue %dx.types.CBufRet.f32 %6675, 3
  %6680 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %6681 = extractvalue %dx.types.CBufRet.f32 %6680, 0
  %6682 = extractvalue %dx.types.CBufRet.f32 %6680, 1
  %6683 = extractvalue %dx.types.CBufRet.f32 %6680, 2
  %6684 = extractvalue %dx.types.CBufRet.f32 %6680, 3
  %6685 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %6686 = extractvalue %dx.types.CBufRet.f32 %6685, 0
  %6687 = extractvalue %dx.types.CBufRet.f32 %6685, 1
  %6688 = extractvalue %dx.types.CBufRet.f32 %6685, 2
  %6689 = extractvalue %dx.types.CBufRet.f32 %6685, 3
  %6690 = fmul fast float %6676, %6516
  %6691 = call float @dx.op.tertiary.f32(i32 46, float %6517, float %6677, float %6690)  ; FMad(a,b,c)
  %6692 = call float @dx.op.tertiary.f32(i32 46, float %6518, float %6678, float %6691)  ; FMad(a,b,c)
  %6693 = fadd fast float %6692, %6679
  %6694 = fmul fast float %6681, %6516
  %6695 = call float @dx.op.tertiary.f32(i32 46, float %6517, float %6682, float %6694)  ; FMad(a,b,c)
  %6696 = call float @dx.op.tertiary.f32(i32 46, float %6518, float %6683, float %6695)  ; FMad(a,b,c)
  %6697 = fadd fast float %6696, %6684
  %6698 = fmul fast float %6686, %6516
  %6699 = call float @dx.op.tertiary.f32(i32 46, float %6517, float %6687, float %6698)  ; FMad(a,b,c)
  %6700 = call float @dx.op.tertiary.f32(i32 46, float %6518, float %6688, float %6699)  ; FMad(a,b,c)
  %6701 = fadd fast float %6700, %6689
  %6702 = fcmp fast oge float %6693, 1.000000e+00
  %6703 = fcmp fast oge float %6697, 1.000000e+00
  %6704 = or i1 %6702, %6703
  %6705 = fcmp fast olt float %6693, 0.000000e+00
  %6706 = fcmp fast olt float %6697, 0.000000e+00
  %6707 = or i1 %6705, %6706
  %6708 = or i1 %6704, %6707
  br i1 %6708, label %7068, label %6709, !dx.controlflow.hints !99

; <label>:6709                                    ; preds = %6674
  %6710 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %6711 = extractvalue %dx.types.CBufRet.f32 %6710, 0
  %6712 = extractvalue %dx.types.CBufRet.f32 %6710, 1
  %6713 = extractvalue %dx.types.CBufRet.f32 %6710, 2
  %6714 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %6715 = extractvalue %dx.types.CBufRet.i32 %6714, 2
  %6716 = uitofp i32 %6715 to float
  %6717 = extractvalue %dx.types.CBufRet.i32 %6714, 3
  %6718 = uitofp i32 %6717 to float
  %6719 = extractvalue %dx.types.CBufRet.f32 %6710, 3
  %6720 = fmul fast float %6719, 2.000000e+00
  %6721 = fsub fast float %6693, %6711
  %6722 = fsub fast float %6697, %6712
  %6723 = fmul fast float %6720, %6721
  %6724 = fmul fast float %6720, %6722
  %6725 = fdiv fast float 1.000000e+00, %6499
  %6726 = fmul fast float %6724, %6725
  %6727 = call float @dx.op.unary.f32(i32 6, float %6726)  ; FAbs(value)
  %6728 = fmul fast float %6713, %6518
  %6729 = fmul fast float %6728, %6720
  %6730 = call float @dx.op.unary.f32(i32 6, float %6729)  ; FAbs(value)
  %6731 = call float @dx.op.unary.f32(i32 6, float %6723)  ; FAbs(value)
  %6732 = call float @dx.op.binary.f32(i32 35, float %6730, float %6727)  ; FMax(a,b)
  %6733 = call float @dx.op.binary.f32(i32 35, float %6731, float %6732)  ; FMax(a,b)
  %6734 = fmul fast float %6733, 2.000000e+00
  %6735 = call float @dx.op.unary.f32(i32 23, float %6734)  ; Log(value)
  %6736 = call float @dx.op.binary.f32(i32 35, float %6735, float %6716)  ; FMax(a,b)
  %6737 = call float @dx.op.unary.f32(i32 22, float %6736)  ; Frc(value)
  %6738 = fadd fast float %6737, 0xBFEA666660000000
  %6739 = fmul fast float %6738, 8.000000e+00
  %6740 = call float @dx.op.unary.f32(i32 7, float %6739)  ; Saturate(value)
  %6741 = call float @dx.op.unary.f32(i32 27, float %6736)  ; Round_ni(value)
  %6742 = fadd fast float %6741, %6740
  %6743 = call float @dx.op.binary.f32(i32 36, float %6742, float %6718)  ; FMin(a,b)
  %6744 = call float @dx.op.unary.f32(i32 27, float %6743)  ; Round_ni(value)
  %6745 = fsub fast float -0.000000e+00, %6744
  %6746 = call float @dx.op.unary.f32(i32 21, float %6745)  ; Exp(value)
  %6747 = fmul fast float %6746, %6720
  %6748 = fmul fast float %6747, %6693
  %6749 = fmul fast float %6747, %6697
  %6750 = fmul fast float %6748, 2.500000e-01
  %6751 = fmul fast float %6749, 2.500000e-01
  %6752 = fadd fast float %6750, 5.000000e-01
  %6753 = fadd fast float %6751, 5.000000e-01
  %6754 = fsub fast float %6718, %6716
  %6755 = fptoui float %6754 to i32
  %6756 = add i32 %6755, 320
  %6757 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 %6756)  ; CBufferLoadLegacy(handle,regIndex)
  %6758 = extractvalue %dx.types.CBufRet.f32 %6757, 0
  %6759 = extractvalue %dx.types.CBufRet.f32 %6757, 1
  %6760 = fcmp fast une float %6743, %6718
  %6761 = fsub fast float %6693, %6758
  %6762 = fsub fast float %6697, %6759
  %6763 = call float @dx.op.unary.f32(i32 6, float %6761)  ; FAbs(value)
  %6764 = call float @dx.op.unary.f32(i32 6, float %6762)  ; FAbs(value)
  %6765 = fmul fast float %6763, %6747
  %6766 = fmul fast float %6764, %6747
  %6767 = fcmp fast olt float %6765, 1.000000e+00
  %6768 = fcmp fast olt float %6766, 1.000000e+00
  %6769 = and i1 %6767, %6768
  %6770 = or i1 %6760, %6769
  br i1 %6770, label %6771, label %7068, !dx.controlflow.hints !100

; <label>:6771                                    ; preds = %6709
  %6772 = fmul fast float %6749, 5.000000e-01
  %6773 = fmul fast float %6748, 5.000000e-01
  %6774 = fadd fast float %6772, 5.000000e-01
  %6775 = fadd fast float %6773, 5.000000e-01
  %6776 = sitofp i32 %6715 to float
  %6777 = fsub fast float %6743, %6776
  %6778 = call float @dx.op.unary.f32(i32 27, float %6777)  ; Round_ni(value)
  %6779 = call float @dx.op.unary.f32(i32 22, float %6743)  ; Frc(value)
  %6780 = call float @dx.op.unary.f32(i32 22, float %6775)  ; Frc(value)
  %6781 = call float @dx.op.unary.f32(i32 22, float %6774)  ; Frc(value)
  %6782 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %44, float %6780, float %6781, float %6778, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6783 = extractvalue %dx.types.ResRet.f32 %6782, 0
  %6784 = extractvalue %dx.types.ResRet.f32 %6782, 1
  %6785 = extractvalue %dx.types.ResRet.f32 %6782, 2
  %6786 = extractvalue %dx.types.ResRet.f32 %6782, 3
  %6787 = fcmp fast ogt float %6779, 0.000000e+00
  br i1 %6787, label %6788, label %6809, !dx.controlflow.hints !101

; <label>:6788                                    ; preds = %6771
  %6789 = fadd fast float %6778, 1.000000e+00
  %6790 = call float @dx.op.unary.f32(i32 22, float %6752)  ; Frc(value)
  %6791 = call float @dx.op.unary.f32(i32 22, float %6753)  ; Frc(value)
  %6792 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %44, float %6790, float %6791, float %6789, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6793 = extractvalue %dx.types.ResRet.f32 %6792, 0
  %6794 = extractvalue %dx.types.ResRet.f32 %6792, 1
  %6795 = extractvalue %dx.types.ResRet.f32 %6792, 2
  %6796 = extractvalue %dx.types.ResRet.f32 %6792, 3
  %6797 = fsub fast float %6793, %6783
  %6798 = fsub fast float %6794, %6784
  %6799 = fsub fast float %6795, %6785
  %6800 = fsub fast float %6796, %6786
  %6801 = fmul fast float %6797, %6779
  %6802 = fmul fast float %6798, %6779
  %6803 = fmul fast float %6799, %6779
  %6804 = fmul fast float %6800, %6779
  %6805 = fadd fast float %6801, %6783
  %6806 = fadd fast float %6802, %6784
  %6807 = fadd fast float %6803, %6785
  %6808 = fadd fast float %6804, %6786
  br label %6809

; <label>:6809                                    ; preds = %6788, %6771
  %6810 = phi float [ %6805, %6788 ], [ %6783, %6771 ]
  %6811 = phi float [ %6806, %6788 ], [ %6784, %6771 ]
  %6812 = phi float [ %6807, %6788 ], [ %6785, %6771 ]
  %6813 = phi float [ %6808, %6788 ], [ %6786, %6771 ]
  %6814 = fadd fast float %6810, -5.000000e-01
  %6815 = fadd fast float %6812, -5.000000e-01
  %6816 = fmul fast float %6814, 0xBFD5555560000000
  %6817 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %6815, float %6816)  ; FMad(a,b,c)
  %6818 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %6811, float 0.000000e+00)  ; FMad(a,b,c)
  %6819 = fadd fast float %6818, %6813
  %6820 = fmul fast float %6814, -7.500000e-01
  %6821 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %6815, float %6820)  ; FMad(a,b,c)
  %6822 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %6811, float 0.000000e+00)  ; FMad(a,b,c)
  %6823 = fadd fast float %6822, %6813
  %6824 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %6825 = extractvalue %dx.types.CBufRet.f32 %6824, 0
  %6826 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %6827 = extractvalue %dx.types.CBufRet.f32 %6826, 0
  %6828 = extractvalue %dx.types.CBufRet.f32 %6826, 1
  %6829 = extractvalue %dx.types.CBufRet.f32 %6826, 2
  %6830 = extractvalue %dx.types.CBufRet.f32 %6826, 3
  %6831 = fsub fast float %6827, %6817
  %6832 = fsub fast float %6828, %6819
  %6833 = fsub fast float %6829, %6821
  %6834 = fsub fast float %6830, %6823
  %6835 = fmul fast float %6831, %6825
  %6836 = fmul fast float %6832, %6825
  %6837 = fmul fast float %6833, %6825
  %6838 = fmul fast float %6834, %6825
  %6839 = fadd fast float %6835, %6817
  %6840 = fadd fast float %6836, %6819
  %6841 = fadd fast float %6837, %6821
  %6842 = fadd fast float %6838, %6823
  %6843 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %6844 = extractvalue %dx.types.ResRet.i32 %6843, 0
  %6845 = and i32 %6844, 536870911
  %6846 = uitofp i32 %6845 to float
  %6847 = fmul fast float %6846, %6693
  %6848 = fmul fast float %6846, %6697
  %6849 = fptoui float %6847 to i32
  %6850 = fptoui float %6848 to i32
  %6851 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6852 = extractvalue %dx.types.ResRet.i32 %6851, 0
  %6853 = and i32 %6852, 31
  %6854 = lshr i32 %6849, %6853
  %6855 = lshr i32 %6850, %6853
  %6856 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6857 = extractvalue %dx.types.ResRet.i32 %6856, 0
  %6858 = and i32 %6857, 31
  %6859 = shl i32 1, %6858
  %6860 = call i32 @dx.op.binary.i32(i32 40, i32 %6859, i32 4)  ; UMin(a,b)
  %6861 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %6862 = extractvalue %dx.types.ResRet.i32 %6861, 0
  %6863 = extractvalue %dx.types.ResRet.i32 %6861, 1
  %6864 = icmp eq i32 %6860, 0
  br i1 %6864, label %6906, label %6865

; <label>:6865                                    ; preds = %6809
  br label %6866

; <label>:6866                                    ; preds = %6894, %6865
  %6867 = phi i32 [ %6897, %6894 ], [ 0, %6865 ]
  %6868 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6869 = extractvalue %dx.types.ResRet.i32 %6868, 0
  %6870 = lshr i32 %6869, 16
  %6871 = and i32 %6870, 31
  %6872 = shl i32 %6855, %6871
  %6873 = add i32 %6872, %6854
  %6874 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6875 = extractvalue %dx.types.ResRet.i32 %6874, 0
  %6876 = and i32 %6875, 31
  %6877 = shl i32 %6873, %6876
  %6878 = add i32 %6877, %6867
  %6879 = shl i32 %6878, 2
  %6880 = add i32 %6879, 32
  %6881 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6880, i32 undef)  ; BufferLoad(srv,index,wot)
  %6882 = extractvalue %dx.types.ResRet.i32 %6881, 0
  %6883 = icmp slt i32 %6882, 0
  %6884 = getelementptr [12 x float], [12 x float]* %99, i32 0, i32 %6867
  %6885 = getelementptr [12 x float], [12 x float]* %100, i32 0, i32 %6867
  %6886 = bitcast float* %6884 to i32*
  %6887 = bitcast float* %6885 to i32*
  br i1 %6883, label %6888, label %6894

; <label>:6888                                    ; preds = %6866
  %6889 = and i32 %6882, 1073741823
  %6890 = add nuw nsw i32 %6889, 20
  %6891 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6890, i32 undef)  ; BufferLoad(srv,index,wot)
  %6892 = extractvalue %dx.types.ResRet.i32 %6891, 0
  %6893 = extractvalue %dx.types.ResRet.i32 %6891, 1
  br label %6894

; <label>:6894                                    ; preds = %6888, %6866
  %6895 = phi i32 [ %6892, %6888 ], [ %6862, %6866 ]
  %6896 = phi i32 [ %6893, %6888 ], [ %6863, %6866 ]
  store i32 %6895, i32* %6886, align 4
  store i32 %6896, i32* %6887, align 4
  %6897 = add nuw i32 %6867, 1
  %6898 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %6899 = extractvalue %dx.types.CBufRet.i32 %6898, 2
  %6900 = icmp eq i32 %6899, 0
  %6901 = icmp ugt i32 %6882, -1073741825
  %6902 = and i1 %6901, %6900
  %6903 = icmp ult i32 %6897, %6860
  %6904 = and i1 %6902, %6903
  br i1 %6904, label %6866, label %6905

; <label>:6905                                    ; preds = %6894
  br label %6906

; <label>:6906                                    ; preds = %6905, %6809
  %6907 = phi i32 [ 0, %6809 ], [ %6897, %6905 ]
  %6908 = extractvalue %dx.types.CBufRet.f32 %6671, 2
  %6909 = fptoui float %6908 to i32
  %6910 = icmp eq i32 %6909, 0
  br i1 %6910, label %6962, label %6911

; <label>:6911                                    ; preds = %6906
  br label %6912

; <label>:6912                                    ; preds = %6957, %6911
  %6913 = phi i32 [ %6958, %6957 ], [ %6907, %6911 ]
  %6914 = phi i32 [ %6959, %6957 ], [ 0, %6911 ]
  %6915 = lshr i32 %6914, 2
  %6916 = and i32 %6914, 3
  %6917 = add nuw nsw i32 %6915, 83
  %6918 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 %6917)  ; CBufferLoadLegacy(handle,regIndex)
  %6919 = extractvalue %dx.types.CBufRet.i32 %6918, 0
  %6920 = extractvalue %dx.types.CBufRet.i32 %6918, 1
  %6921 = extractvalue %dx.types.CBufRet.i32 %6918, 2
  %6922 = extractvalue %dx.types.CBufRet.i32 %6918, 3
  %6923 = getelementptr inbounds [4 x i32], [4 x i32]* %50, i32 0, i32 0
  store i32 %6919, i32* %6923, align 4
  %6924 = getelementptr inbounds [4 x i32], [4 x i32]* %50, i32 0, i32 1
  store i32 %6920, i32* %6924, align 4
  %6925 = getelementptr inbounds [4 x i32], [4 x i32]* %50, i32 0, i32 2
  store i32 %6921, i32* %6925, align 4
  %6926 = getelementptr inbounds [4 x i32], [4 x i32]* %50, i32 0, i32 3
  store i32 %6922, i32* %6926, align 4
  %6927 = getelementptr inbounds [4 x i32], [4 x i32]* %50, i32 0, i32 %6916
  %6928 = load i32, i32* %6927, align 4, !tbaa !102, !noalias !106
  %6929 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6930 = extractvalue %dx.types.ResRet.i32 %6929, 0
  %6931 = lshr i32 %6930, 16
  %6932 = and i32 %6931, 31
  %6933 = shl i32 %6855, %6932
  %6934 = add i32 %6933, %6854
  %6935 = shl i32 %6934, 2
  %6936 = add i32 %6935, %6928
  %6937 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6936, i32 undef)  ; BufferLoad(srv,index,wot)
  %6938 = extractvalue %dx.types.ResRet.i32 %6937, 0
  %6939 = icmp eq i32 %6938, 0
  br i1 %6939, label %6957, label %6940

; <label>:6940                                    ; preds = %6912
  %6941 = icmp slt i32 %6938, 0
  %6942 = getelementptr [12 x float], [12 x float]* %99, i32 0, i32 %6913
  %6943 = getelementptr [12 x float], [12 x float]* %100, i32 0, i32 %6913
  %6944 = bitcast float* %6942 to i32*
  %6945 = bitcast float* %6943 to i32*
  br i1 %6941, label %6946, label %6953

; <label>:6946                                    ; preds = %6940
  %6947 = and i32 %6938, 1073741823
  %6948 = add i32 %6928, 20
  %6949 = add i32 %6948, %6947
  %6950 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6949, i32 undef)  ; BufferLoad(srv,index,wot)
  %6951 = extractvalue %dx.types.ResRet.i32 %6950, 0
  %6952 = extractvalue %dx.types.ResRet.i32 %6950, 1
  br label %6953

; <label>:6953                                    ; preds = %6946, %6940
  %6954 = phi i32 [ %6951, %6946 ], [ %6862, %6940 ]
  %6955 = phi i32 [ %6952, %6946 ], [ %6863, %6940 ]
  store i32 %6954, i32* %6944, align 4
  store i32 %6955, i32* %6945, align 4
  %6956 = add i32 %6913, 1
  br label %6957

; <label>:6957                                    ; preds = %6953, %6912
  %6958 = phi i32 [ %6913, %6912 ], [ %6956, %6953 ]
  %6959 = add nuw i32 %6914, 1
  %6960 = icmp eq i32 %6959, %6909
  br i1 %6960, label %6961, label %6912

; <label>:6961                                    ; preds = %6957
  br label %6962

; <label>:6962                                    ; preds = %6961, %6906
  %6963 = phi i32 [ %6907, %6906 ], [ %6958, %6961 ]
  %6964 = icmp eq i32 %6963, 1
  %6965 = getelementptr [12 x float], [12 x float]* %99, i32 0, i32 0
  %6966 = getelementptr [12 x float], [12 x float]* %100, i32 0, i32 0
  br i1 %6964, label %6967, label %6970

; <label>:6967                                    ; preds = %6962
  %6968 = load float, float* %6965, align 4
  %6969 = load float, float* %6966, align 4
  br label %6997

; <label>:6970                                    ; preds = %6962
  %6971 = load float, float* %6965, align 4
  %6972 = load float, float* %6966, align 4
  %6973 = fdiv fast float 1.000000e+00, %6972
  %6974 = fsub fast float %6971, %6973
  %6975 = icmp ugt i32 %6963, 1
  br i1 %6975, label %6976, label %6992

; <label>:6976                                    ; preds = %6970
  br label %6977

; <label>:6977                                    ; preds = %6977, %6976
  %6978 = phi float [ %6987, %6977 ], [ %6974, %6976 ]
  %6979 = phi float [ %6988, %6977 ], [ %6971, %6976 ]
  %6980 = phi i32 [ %6989, %6977 ], [ 1, %6976 ]
  %6981 = getelementptr [12 x float], [12 x float]* %99, i32 0, i32 %6980
  %6982 = load float, float* %6981, align 4
  %6983 = getelementptr [12 x float], [12 x float]* %100, i32 0, i32 %6980
  %6984 = load float, float* %6983, align 4
  %6985 = fdiv fast float 1.000000e+00, %6984
  %6986 = fsub fast float %6982, %6985
  %6987 = call float @dx.op.binary.f32(i32 36, float %6978, float %6986)  ; FMin(a,b)
  %6988 = call float @dx.op.binary.f32(i32 35, float %6979, float %6982)  ; FMax(a,b)
  %6989 = add nuw i32 %6980, 1
  %6990 = icmp eq i32 %6989, %6963
  br i1 %6990, label %6991, label %6977

; <label>:6991                                    ; preds = %6977
  br label %6992

; <label>:6992                                    ; preds = %6991, %6970
  %6993 = phi float [ %6974, %6970 ], [ %6987, %6991 ]
  %6994 = phi float [ %6971, %6970 ], [ %6988, %6991 ]
  %6995 = fsub fast float %6994, %6993
  %6996 = fdiv fast float 1.000000e+00, %6995
  br label %6997

; <label>:6997                                    ; preds = %6992, %6967
  %6998 = phi float [ %6968, %6967 ], [ %6994, %6992 ]
  %6999 = phi float [ %6969, %6967 ], [ %6996, %6992 ]
  %7000 = fadd fast float %6701, %6998
  %7001 = fmul fast float %7000, %6999
  %7002 = call float @dx.op.unary.f32(i32 7, float %7001)  ; Saturate(value)
  %7003 = fmul fast float %7002, 2.000000e+00
  %7004 = fsub fast float 1.000000e+00, %7003
  %7005 = fmul fast float %6839, %6839
  %7006 = fsub fast float %6840, %7005
  %7007 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %7006)  ; FMax(a,b)
  %7008 = fdiv fast float 1.000000e+00, %7007
  %7009 = fmul fast float %6840, %6839
  %7010 = fsub fast float %6841, %7009
  %7011 = fsub fast float %7004, %6839
  %7012 = fmul fast float %7004, %7004
  %7013 = fsub fast float %7012, %6840
  %7014 = fmul fast float %7008, %7010
  %7015 = fmul fast float %7014, %7011
  %7016 = fsub fast float %7013, %7015
  %7017 = fmul fast float %6840, %6840
  %7018 = fsub fast float %6842, %7017
  %7019 = fmul fast float %7010, %7010
  %7020 = fmul fast float %7019, %7008
  %7021 = fsub fast float %7018, %7020
  %7022 = fdiv fast float %7016, %7021
  %7023 = fmul fast float %7022, %7010
  %7024 = fsub fast float %7011, %7023
  %7025 = fmul fast float %7024, %7008
  %7026 = fmul fast float %7025, %6839
  %7027 = fsub fast float 1.000000e+00, %7026
  %7028 = fmul fast float %7022, %6840
  %7029 = fsub fast float %7027, %7028
  %7030 = fmul fast float %7025, %7025
  %7031 = fmul fast float %7022, 4.000000e+00
  %7032 = fmul fast float %7031, %7029
  %7033 = fsub fast float %7030, %7032
  %7034 = call float @dx.op.unary.f32(i32 24, float %7033)  ; Sqrt(value)
  %7035 = fcmp fast oge float %7025, 0.000000e+00
  %7036 = fsub fast float -0.000000e+00, %7034
  %7037 = select i1 %7035, float %7036, float %7034
  %7038 = fsub fast float %7037, %7025
  %7039 = fdiv fast float %7038, %7022
  %7040 = fdiv fast float %7029, %7038
  %7041 = fmul fast float %7039, 5.000000e-01
  %7042 = fmul fast float %7040, 2.000000e+00
  %7043 = select i1 %7035, float %7041, float %7042
  %7044 = select i1 %7035, float %7042, float %7041
  %7045 = call float @dx.op.binary.f32(i32 35, float %7043, float %7044)  ; FMax(a,b)
  %7046 = call float @dx.op.binary.f32(i32 36, float %7043, float %7044)  ; FMin(a,b)
  %7047 = fcmp fast ogt float %7004, %7045
  %7048 = fsub fast float %7004, %7046
  %7049 = fsub fast float %7004, %7045
  %7050 = fsub fast float %7045, %7046
  %7051 = select i1 %7047, float %7049, float %7050
  %7052 = fmul float %7048, %7051
  %7053 = select i1 %7047, float %7046, float %7004
  %7054 = fcmp fast ogt float %7004, %7046
  %7055 = fmul fast float %7053, %7045
  %7056 = fadd fast float %7053, %7045
  %7057 = fmul fast float %7056, %6839
  %7058 = fadd fast float %7055, %6840
  %7059 = fsub fast float %7058, %7057
  %7060 = fdiv fast float %7059, %7052
  %7061 = select i1 %7054, float %7060, float 0.000000e+00
  %7062 = fsub fast float 1.000000e+00, %7061
  %7063 = select i1 %7047, float %7062, float %7061
  %7064 = call float @dx.op.unary.f32(i32 7, float %7063)  ; Saturate(value)
  %7065 = extractvalue %dx.types.CBufRet.f32 %6824, 3
  %7066 = fmul fast float %7065, %7064
  %7067 = fsub fast float 1.000000e+00, %7066
  br label %7068

; <label>:7068                                    ; preds = %6997, %6709, %6674, %6670, %6634
  %7069 = phi float [ 1.000000e+00, %6634 ], [ %7067, %6997 ], [ 1.000000e+00, %6674 ], [ 1.000000e+00, %6709 ], [ 1.000000e+00, %6670 ]
  %7070 = fcmp fast ogt float %6666, 0.000000e+00
  br i1 %7070, label %7071, label %7235, !dx.controlflow.hints !115

; <label>:7071                                    ; preds = %7068
  %7072 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %7073 = extractvalue %dx.types.CBufRet.f32 %7072, 2
  %7074 = fadd fast float %7073, %6547
  %7075 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %7076 = extractvalue %dx.types.CBufRet.f32 %7075, 2
  %7077 = extractvalue %dx.types.CBufRet.f32 %7075, 3
  %7078 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %7079 = extractvalue %dx.types.CBufRet.f32 %7078, 2
  %7080 = call float @dx.op.binary.f32(i32 35, float %7074, float 0.000000e+00)  ; FMax(a,b)
  %7081 = fadd fast float %7080, 0x3F10000000000000
  %7082 = fcmp fast oeq float %7079, 0.000000e+00
  br i1 %7082, label %7083, label %7150

; <label>:7083                                    ; preds = %7071
  %7084 = extractvalue %dx.types.CBufRet.f32 %7075, 1
  %7085 = extractvalue %dx.types.CBufRet.f32 %7075, 0
  %7086 = fmul fast float %7085, %6565
  %7087 = fmul fast float %7084, %6566
  %7088 = fadd fast float %7086, 5.000000e-01
  %7089 = call float @dx.op.unary.f32(i32 27, float %7088)  ; Round_ni(value)
  %7090 = fadd fast float %7087, 5.000000e-01
  %7091 = call float @dx.op.unary.f32(i32 27, float %7090)  ; Round_ni(value)
  %7092 = fsub fast float %7088, %7089
  %7093 = fsub fast float %7090, %7091
  %7094 = fadd fast float %7089, -5.000000e-01
  %7095 = fadd fast float %7091, -5.000000e-01
  %7096 = fmul fast float %7092, 2.000000e+00
  %7097 = fsub fast float 3.000000e+00, %7096
  %7098 = fadd fast float %7096, 1.000000e+00
  %7099 = fsub fast float 2.000000e+00, %7092
  %7100 = bitcast float %7097 to i32
  %7101 = sub nsw i32 2129859010, %7100
  %7102 = bitcast i32 %7101 to float
  %7103 = fmul fast float %7102, %7099
  %7104 = fadd fast float %7103, -1.000000e+00
  %7105 = bitcast float %7098 to i32
  %7106 = sub nsw i32 2129859010, %7105
  %7107 = bitcast i32 %7106 to float
  %7108 = fmul fast float %7107, %7092
  %7109 = fadd fast float %7108, 1.000000e+00
  %7110 = fmul fast float %7093, 2.000000e+00
  %7111 = fsub fast float 3.000000e+00, %7110
  %7112 = fadd fast float %7110, 1.000000e+00
  %7113 = fsub fast float 2.000000e+00, %7093
  %7114 = bitcast float %7111 to i32
  %7115 = sub nsw i32 2129859010, %7114
  %7116 = bitcast i32 %7115 to float
  %7117 = fmul fast float %7116, %7113
  %7118 = fadd fast float %7117, -1.000000e+00
  %7119 = bitcast float %7112 to i32
  %7120 = sub nsw i32 2129859010, %7119
  %7121 = bitcast i32 %7120 to float
  %7122 = fmul fast float %7121, %7093
  %7123 = fadd fast float %7122, 1.000000e+00
  %7124 = fadd fast float %7104, %7094
  %7125 = fmul fast float %7124, %7076
  %7126 = fadd fast float %7118, %7095
  %7127 = fmul fast float %7126, %7077
  %7128 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %47, float %7125, float %7127, float undef, float undef, i32 0, i32 0, i32 undef, float %7081)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7129 = extractvalue %dx.types.ResRet.f32 %7128, 0
  %7130 = fmul fast float %7129, %7097
  %7131 = fadd fast float %7109, %7094
  %7132 = fmul fast float %7131, %7076
  %7133 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %47, float %7132, float %7127, float undef, float undef, i32 0, i32 0, i32 undef, float %7081)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7134 = extractvalue %dx.types.ResRet.f32 %7133, 0
  %7135 = fmul fast float %7134, %7098
  %7136 = fadd fast float %7123, %7095
  %7137 = fmul fast float %7136, %7077
  %7138 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %47, float %7125, float %7137, float undef, float undef, i32 0, i32 0, i32 undef, float %7081)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7139 = extractvalue %dx.types.ResRet.f32 %7138, 0
  %7140 = fmul fast float %7139, %7097
  %7141 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %47, float %7132, float %7137, float undef, float undef, i32 0, i32 0, i32 undef, float %7081)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7142 = extractvalue %dx.types.ResRet.f32 %7141, 0
  %7143 = fmul fast float %7142, %7098
  %7144 = fadd fast float %7143, %7140
  %7145 = fmul fast float %7144, %7112
  %7146 = fadd fast float %7135, %7130
  %7147 = fmul fast float %7146, %7111
  %7148 = fadd fast float %7147, %7145
  %7149 = fmul fast float %7148, 6.250000e-02
  br label %7235

; <label>:7150                                    ; preds = %7071
  %7151 = fmul fast float %307, 0x401921FB60000000
  %7152 = call float @dx.op.unary.f32(i32 13, float %7151)  ; Sin(value)
  %7153 = call float @dx.op.unary.f32(i32 12, float %7151)  ; Cos(value)
  %7154 = fsub fast float -0.000000e+00, %7152
  br label %7155

; <label>:7155                                    ; preds = %7204, %7150
  %7156 = phi float [ 0.000000e+00, %7150 ], [ %7199, %7204 ]
  %7157 = phi float [ 0.000000e+00, %7150 ], [ %7201, %7204 ]
  %7158 = phi i32 [ 0, %7150 ], [ %7205, %7204 ]
  %7159 = mul i32 %7158, 2
  %7160 = add i32 0, %7159
  %7161 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7160
  %7162 = load float, float* %7161, align 4
  %7163 = mul i32 %7158, 2
  %7164 = add i32 1, %7163
  %7165 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7164
  %7166 = load float, float* %7165, align 4
  %7167 = fmul fast float %7162, %7153
  %7168 = call float @dx.op.tertiary.f32(i32 46, float %7166, float %7154, float %7167)  ; FMad(a,b,c)
  %7169 = fmul fast float %7162, %7152
  %7170 = call float @dx.op.tertiary.f32(i32 46, float %7166, float %7153, float %7169)  ; FMad(a,b,c)
  %7171 = fmul fast float %7168, %7079
  %7172 = fmul fast float %7170, %7079
  %7173 = fadd fast float %7171, %6565
  %7174 = fadd fast float %7172, %6566
  %7175 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %16, %dx.types.Handle %46, float %7173, float %7174, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7176 = extractvalue %dx.types.ResRet.f32 %7175, 0
  %7177 = extractvalue %dx.types.ResRet.f32 %7175, 1
  %7178 = extractvalue %dx.types.ResRet.f32 %7175, 2
  %7179 = extractvalue %dx.types.ResRet.f32 %7175, 3
  %7180 = getelementptr inbounds [4 x float], [4 x float]* %104, i32 0, i32 0
  store float %7176, float* %7180, align 4
  %7181 = getelementptr inbounds [4 x float], [4 x float]* %104, i32 0, i32 1
  store float %7177, float* %7181, align 4
  %7182 = getelementptr inbounds [4 x float], [4 x float]* %104, i32 0, i32 2
  store float %7178, float* %7182, align 4
  %7183 = getelementptr inbounds [4 x float], [4 x float]* %104, i32 0, i32 3
  store float %7179, float* %7183, align 4
  %7184 = fsub fast float %7176, %7081
  %7185 = fcmp fast olt float %7184, 0.000000e+00
  %7186 = select i1 %7185, float 0.000000e+00, float 1.000000e+00
  %7187 = fadd fast float %7186, %7156
  %7188 = fmul fast float %7186, %7184
  %7189 = fadd fast float %7188, %7157
  br label %7190

; <label>:7190                                    ; preds = %7190, %7155
  %7191 = phi i32 [ 1, %7155 ], [ %7202, %7190 ]
  %7192 = phi float [ %7189, %7155 ], [ %7201, %7190 ]
  %7193 = phi float [ %7187, %7155 ], [ %7199, %7190 ]
  %7194 = getelementptr [4 x float], [4 x float]* %104, i32 0, i32 %7191
  %7195 = load float, float* %7194, align 4, !tbaa !116, !noalias !106
  %7196 = fsub fast float %7195, %7081
  %7197 = fcmp fast olt float %7196, 0.000000e+00
  %7198 = select i1 %7197, float 0.000000e+00, float 1.000000e+00
  %7199 = fadd fast float %7198, %7193
  %7200 = fmul fast float %7198, %7196
  %7201 = fadd fast float %7200, %7192
  %7202 = add nuw nsw i32 %7191, 1
  %7203 = icmp eq i32 %7202, 4
  br i1 %7203, label %7204, label %7190, !llvm.loop !118

; <label>:7204                                    ; preds = %7190
  %7205 = add nuw nsw i32 %7158, 1
  %7206 = icmp eq i32 %7205, 8
  br i1 %7206, label %7207, label %7155, !llvm.loop !119

; <label>:7207                                    ; preds = %7204
  %7208 = fdiv fast float 1.000000e+00, %7199
  %7209 = fmul fast float %7208, %7201
  %7210 = fdiv fast float 1.000000e+00, %7081
  %7211 = fmul fast float %7209, %7210
  %7212 = call float @dx.op.unary.f32(i32 7, float %7211)  ; Saturate(value)
  %7213 = call float @dx.op.binary.f32(i32 35, float %7212, float 0.000000e+00)  ; FMax(a,b)
  %7214 = fmul fast float %7199, 3.125000e-02
  %7215 = call float @dx.op.unary.f32(i32 7, float %7214)  ; Saturate(value)
  %7216 = fmul fast float %7215, 2.000000e+00
  %7217 = fadd fast float %7216, -1.000000e+00
  %7218 = fcmp fast ogt float %7217, 0.000000e+00
  %7219 = fcmp fast olt float %7217, 0.000000e+00
  %7220 = zext i1 %7218 to i32
  %7221 = zext i1 %7219 to i32
  %7222 = sub nsw i32 %7220, %7221
  %7223 = sitofp i32 %7222 to float
  %7224 = fmul fast float %7223, %7217
  %7225 = fsub fast float 1.000000e+00, %7224
  %7226 = fmul fast float %7225, %7225
  %7227 = fmul fast float %7226, %7225
  %7228 = fsub fast float %7225, %7227
  %7229 = fmul fast float %7228, %7213
  %7230 = fsub fast float 1.000000e+00, %7227
  %7231 = fsub fast float %7230, %7229
  %7232 = fmul fast float %7223, 5.000000e-01
  %7233 = fmul fast float %7232, %7231
  %7234 = fsub fast float 5.000000e-01, %7233
  br label %7235

; <label>:7235                                    ; preds = %7207, %7083, %7068
  %7236 = phi float [ 1.000000e+00, %7068 ], [ %7149, %7083 ], [ %7234, %7207 ]
  %7237 = fcmp fast ogt float %6664, 0.000000e+00
  br i1 %7237, label %7238, label %7402, !dx.controlflow.hints !120

; <label>:7238                                    ; preds = %7235
  %7239 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %7240 = extractvalue %dx.types.CBufRet.f32 %7239, 1
  %7241 = fadd fast float %7240, %6547
  %7242 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %7243 = extractvalue %dx.types.CBufRet.f32 %7242, 2
  %7244 = extractvalue %dx.types.CBufRet.f32 %7242, 3
  %7245 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %7246 = extractvalue %dx.types.CBufRet.f32 %7245, 1
  %7247 = call float @dx.op.binary.f32(i32 35, float %7241, float 0.000000e+00)  ; FMax(a,b)
  %7248 = fadd fast float %7247, 0x3F10000000000000
  %7249 = fcmp fast oeq float %7246, 0.000000e+00
  br i1 %7249, label %7250, label %7317

; <label>:7250                                    ; preds = %7238
  %7251 = extractvalue %dx.types.CBufRet.f32 %7242, 1
  %7252 = extractvalue %dx.types.CBufRet.f32 %7242, 0
  %7253 = fmul fast float %7252, %6557
  %7254 = fmul fast float %7251, %6558
  %7255 = fadd fast float %7253, 5.000000e-01
  %7256 = call float @dx.op.unary.f32(i32 27, float %7255)  ; Round_ni(value)
  %7257 = fadd fast float %7254, 5.000000e-01
  %7258 = call float @dx.op.unary.f32(i32 27, float %7257)  ; Round_ni(value)
  %7259 = fsub fast float %7255, %7256
  %7260 = fsub fast float %7257, %7258
  %7261 = fadd fast float %7256, -5.000000e-01
  %7262 = fadd fast float %7258, -5.000000e-01
  %7263 = fmul fast float %7259, 2.000000e+00
  %7264 = fsub fast float 3.000000e+00, %7263
  %7265 = fadd fast float %7263, 1.000000e+00
  %7266 = fsub fast float 2.000000e+00, %7259
  %7267 = bitcast float %7264 to i32
  %7268 = sub nsw i32 2129859010, %7267
  %7269 = bitcast i32 %7268 to float
  %7270 = fmul fast float %7269, %7266
  %7271 = fadd fast float %7270, -1.000000e+00
  %7272 = bitcast float %7265 to i32
  %7273 = sub nsw i32 2129859010, %7272
  %7274 = bitcast i32 %7273 to float
  %7275 = fmul fast float %7274, %7259
  %7276 = fadd fast float %7275, 1.000000e+00
  %7277 = fmul fast float %7260, 2.000000e+00
  %7278 = fsub fast float 3.000000e+00, %7277
  %7279 = fadd fast float %7277, 1.000000e+00
  %7280 = fsub fast float 2.000000e+00, %7260
  %7281 = bitcast float %7278 to i32
  %7282 = sub nsw i32 2129859010, %7281
  %7283 = bitcast i32 %7282 to float
  %7284 = fmul fast float %7283, %7280
  %7285 = fadd fast float %7284, -1.000000e+00
  %7286 = bitcast float %7279 to i32
  %7287 = sub nsw i32 2129859010, %7286
  %7288 = bitcast i32 %7287 to float
  %7289 = fmul fast float %7288, %7260
  %7290 = fadd fast float %7289, 1.000000e+00
  %7291 = fadd fast float %7271, %7261
  %7292 = fmul fast float %7291, %7243
  %7293 = fadd fast float %7285, %7262
  %7294 = fmul fast float %7293, %7244
  %7295 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %47, float %7292, float %7294, float undef, float undef, i32 0, i32 0, i32 undef, float %7248)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7296 = extractvalue %dx.types.ResRet.f32 %7295, 0
  %7297 = fmul fast float %7296, %7264
  %7298 = fadd fast float %7276, %7261
  %7299 = fmul fast float %7298, %7243
  %7300 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %47, float %7299, float %7294, float undef, float undef, i32 0, i32 0, i32 undef, float %7248)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7301 = extractvalue %dx.types.ResRet.f32 %7300, 0
  %7302 = fmul fast float %7301, %7265
  %7303 = fadd fast float %7290, %7262
  %7304 = fmul fast float %7303, %7244
  %7305 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %47, float %7292, float %7304, float undef, float undef, i32 0, i32 0, i32 undef, float %7248)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7306 = extractvalue %dx.types.ResRet.f32 %7305, 0
  %7307 = fmul fast float %7306, %7264
  %7308 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %47, float %7299, float %7304, float undef, float undef, i32 0, i32 0, i32 undef, float %7248)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7309 = extractvalue %dx.types.ResRet.f32 %7308, 0
  %7310 = fmul fast float %7309, %7265
  %7311 = fadd fast float %7310, %7307
  %7312 = fmul fast float %7311, %7279
  %7313 = fadd fast float %7302, %7297
  %7314 = fmul fast float %7313, %7278
  %7315 = fadd fast float %7314, %7312
  %7316 = fmul fast float %7315, 6.250000e-02
  br label %7402

; <label>:7317                                    ; preds = %7238
  %7318 = fmul fast float %307, 0x401921FB60000000
  %7319 = call float @dx.op.unary.f32(i32 13, float %7318)  ; Sin(value)
  %7320 = call float @dx.op.unary.f32(i32 12, float %7318)  ; Cos(value)
  %7321 = fsub fast float -0.000000e+00, %7319
  br label %7322

; <label>:7322                                    ; preds = %7371, %7317
  %7323 = phi float [ 0.000000e+00, %7317 ], [ %7366, %7371 ]
  %7324 = phi float [ 0.000000e+00, %7317 ], [ %7368, %7371 ]
  %7325 = phi i32 [ 0, %7317 ], [ %7372, %7371 ]
  %7326 = mul i32 %7325, 2
  %7327 = add i32 0, %7326
  %7328 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7327
  %7329 = load float, float* %7328, align 4
  %7330 = mul i32 %7325, 2
  %7331 = add i32 1, %7330
  %7332 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7331
  %7333 = load float, float* %7332, align 4
  %7334 = fmul fast float %7329, %7320
  %7335 = call float @dx.op.tertiary.f32(i32 46, float %7333, float %7321, float %7334)  ; FMad(a,b,c)
  %7336 = fmul fast float %7329, %7319
  %7337 = call float @dx.op.tertiary.f32(i32 46, float %7333, float %7320, float %7336)  ; FMad(a,b,c)
  %7338 = fmul fast float %7335, %7246
  %7339 = fmul fast float %7337, %7246
  %7340 = fadd fast float %7338, %6557
  %7341 = fadd fast float %7339, %6558
  %7342 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %17, %dx.types.Handle %46, float %7340, float %7341, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7343 = extractvalue %dx.types.ResRet.f32 %7342, 0
  %7344 = extractvalue %dx.types.ResRet.f32 %7342, 1
  %7345 = extractvalue %dx.types.ResRet.f32 %7342, 2
  %7346 = extractvalue %dx.types.ResRet.f32 %7342, 3
  %7347 = getelementptr inbounds [4 x float], [4 x float]* %103, i32 0, i32 0
  store float %7343, float* %7347, align 4
  %7348 = getelementptr inbounds [4 x float], [4 x float]* %103, i32 0, i32 1
  store float %7344, float* %7348, align 4
  %7349 = getelementptr inbounds [4 x float], [4 x float]* %103, i32 0, i32 2
  store float %7345, float* %7349, align 4
  %7350 = getelementptr inbounds [4 x float], [4 x float]* %103, i32 0, i32 3
  store float %7346, float* %7350, align 4
  %7351 = fsub fast float %7343, %7248
  %7352 = fcmp fast olt float %7351, 0.000000e+00
  %7353 = select i1 %7352, float 0.000000e+00, float 1.000000e+00
  %7354 = fadd fast float %7353, %7323
  %7355 = fmul fast float %7353, %7351
  %7356 = fadd fast float %7355, %7324
  br label %7357

; <label>:7357                                    ; preds = %7357, %7322
  %7358 = phi i32 [ 1, %7322 ], [ %7369, %7357 ]
  %7359 = phi float [ %7356, %7322 ], [ %7368, %7357 ]
  %7360 = phi float [ %7354, %7322 ], [ %7366, %7357 ]
  %7361 = getelementptr [4 x float], [4 x float]* %103, i32 0, i32 %7358
  %7362 = load float, float* %7361, align 4, !tbaa !116, !noalias !106
  %7363 = fsub fast float %7362, %7248
  %7364 = fcmp fast olt float %7363, 0.000000e+00
  %7365 = select i1 %7364, float 0.000000e+00, float 1.000000e+00
  %7366 = fadd fast float %7365, %7360
  %7367 = fmul fast float %7365, %7363
  %7368 = fadd fast float %7367, %7359
  %7369 = add nuw nsw i32 %7358, 1
  %7370 = icmp eq i32 %7369, 4
  br i1 %7370, label %7371, label %7357, !llvm.loop !118

; <label>:7371                                    ; preds = %7357
  %7372 = add nuw nsw i32 %7325, 1
  %7373 = icmp eq i32 %7372, 8
  br i1 %7373, label %7374, label %7322, !llvm.loop !119

; <label>:7374                                    ; preds = %7371
  %7375 = fdiv fast float 1.000000e+00, %7366
  %7376 = fmul fast float %7375, %7368
  %7377 = fdiv fast float 1.000000e+00, %7248
  %7378 = fmul fast float %7376, %7377
  %7379 = call float @dx.op.unary.f32(i32 7, float %7378)  ; Saturate(value)
  %7380 = call float @dx.op.binary.f32(i32 35, float %7379, float 0.000000e+00)  ; FMax(a,b)
  %7381 = fmul fast float %7366, 3.125000e-02
  %7382 = call float @dx.op.unary.f32(i32 7, float %7381)  ; Saturate(value)
  %7383 = fmul fast float %7382, 2.000000e+00
  %7384 = fadd fast float %7383, -1.000000e+00
  %7385 = fcmp fast ogt float %7384, 0.000000e+00
  %7386 = fcmp fast olt float %7384, 0.000000e+00
  %7387 = zext i1 %7385 to i32
  %7388 = zext i1 %7386 to i32
  %7389 = sub nsw i32 %7387, %7388
  %7390 = sitofp i32 %7389 to float
  %7391 = fmul fast float %7390, %7384
  %7392 = fsub fast float 1.000000e+00, %7391
  %7393 = fmul fast float %7392, %7392
  %7394 = fmul fast float %7393, %7392
  %7395 = fsub fast float %7392, %7394
  %7396 = fmul fast float %7395, %7380
  %7397 = fsub fast float 1.000000e+00, %7394
  %7398 = fsub fast float %7397, %7396
  %7399 = fmul fast float %7390, 5.000000e-01
  %7400 = fmul fast float %7399, %7398
  %7401 = fsub fast float 5.000000e-01, %7400
  br label %7402

; <label>:7402                                    ; preds = %7374, %7250, %7235
  %7403 = phi float [ 1.000000e+00, %7235 ], [ %7316, %7250 ], [ %7401, %7374 ]
  %7404 = fcmp fast ogt float %6663, 0.000000e+00
  br i1 %7404, label %7405, label %7723, !dx.controlflow.hints !121

; <label>:7405                                    ; preds = %7402
  %7406 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %7407 = extractvalue %dx.types.CBufRet.f32 %7406, 0
  %7408 = fadd fast float %7407, %6547
  %7409 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %7410 = extractvalue %dx.types.CBufRet.f32 %7409, 2
  %7411 = extractvalue %dx.types.CBufRet.f32 %7409, 3
  %7412 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %7413 = extractvalue %dx.types.CBufRet.f32 %7412, 0
  %7414 = call float @dx.op.binary.f32(i32 35, float %7408, float 0.000000e+00)  ; FMax(a,b)
  %7415 = fadd fast float %7414, 0x3F10000000000000
  %7416 = fcmp fast oeq float %7413, 0.000000e+00
  br i1 %6550, label %7417, label %7570, !dx.controlflow.hints !122

; <label>:7417                                    ; preds = %7405
  br i1 %7416, label %7418, label %7485

; <label>:7418                                    ; preds = %7417
  %7419 = extractvalue %dx.types.CBufRet.f32 %7409, 1
  %7420 = extractvalue %dx.types.CBufRet.f32 %7409, 0
  %7421 = fmul fast float %7420, %6539
  %7422 = fmul fast float %7419, %6543
  %7423 = fadd fast float %7421, 5.000000e-01
  %7424 = call float @dx.op.unary.f32(i32 27, float %7423)  ; Round_ni(value)
  %7425 = fadd fast float %7422, 5.000000e-01
  %7426 = call float @dx.op.unary.f32(i32 27, float %7425)  ; Round_ni(value)
  %7427 = fsub fast float %7423, %7424
  %7428 = fsub fast float %7425, %7426
  %7429 = fadd fast float %7424, -5.000000e-01
  %7430 = fadd fast float %7426, -5.000000e-01
  %7431 = fmul fast float %7427, 2.000000e+00
  %7432 = fsub fast float 3.000000e+00, %7431
  %7433 = fadd fast float %7431, 1.000000e+00
  %7434 = fsub fast float 2.000000e+00, %7427
  %7435 = bitcast float %7432 to i32
  %7436 = sub nsw i32 2129859010, %7435
  %7437 = bitcast i32 %7436 to float
  %7438 = fmul fast float %7437, %7434
  %7439 = fadd fast float %7438, -1.000000e+00
  %7440 = bitcast float %7433 to i32
  %7441 = sub nsw i32 2129859010, %7440
  %7442 = bitcast i32 %7441 to float
  %7443 = fmul fast float %7442, %7427
  %7444 = fadd fast float %7443, 1.000000e+00
  %7445 = fmul fast float %7428, 2.000000e+00
  %7446 = fsub fast float 3.000000e+00, %7445
  %7447 = fadd fast float %7445, 1.000000e+00
  %7448 = fsub fast float 2.000000e+00, %7428
  %7449 = bitcast float %7446 to i32
  %7450 = sub nsw i32 2129859010, %7449
  %7451 = bitcast i32 %7450 to float
  %7452 = fmul fast float %7451, %7448
  %7453 = fadd fast float %7452, -1.000000e+00
  %7454 = bitcast float %7447 to i32
  %7455 = sub nsw i32 2129859010, %7454
  %7456 = bitcast i32 %7455 to float
  %7457 = fmul fast float %7456, %7428
  %7458 = fadd fast float %7457, 1.000000e+00
  %7459 = fadd fast float %7439, %7429
  %7460 = fmul fast float %7459, %7410
  %7461 = fadd fast float %7453, %7430
  %7462 = fmul fast float %7461, %7411
  %7463 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %47, float %7460, float %7462, float undef, float undef, i32 0, i32 0, i32 undef, float %7415)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7464 = extractvalue %dx.types.ResRet.f32 %7463, 0
  %7465 = fmul fast float %7464, %7432
  %7466 = fadd fast float %7444, %7429
  %7467 = fmul fast float %7466, %7410
  %7468 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %47, float %7467, float %7462, float undef, float undef, i32 0, i32 0, i32 undef, float %7415)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7469 = extractvalue %dx.types.ResRet.f32 %7468, 0
  %7470 = fmul fast float %7469, %7433
  %7471 = fadd fast float %7458, %7430
  %7472 = fmul fast float %7471, %7411
  %7473 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %47, float %7460, float %7472, float undef, float undef, i32 0, i32 0, i32 undef, float %7415)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7474 = extractvalue %dx.types.ResRet.f32 %7473, 0
  %7475 = fmul fast float %7474, %7432
  %7476 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %47, float %7467, float %7472, float undef, float undef, i32 0, i32 0, i32 undef, float %7415)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7477 = extractvalue %dx.types.ResRet.f32 %7476, 0
  %7478 = fmul fast float %7477, %7433
  %7479 = fadd fast float %7478, %7475
  %7480 = fmul fast float %7479, %7447
  %7481 = fadd fast float %7470, %7465
  %7482 = fmul fast float %7481, %7446
  %7483 = fadd fast float %7482, %7480
  %7484 = fmul fast float %7483, 6.250000e-02
  br label %7723

; <label>:7485                                    ; preds = %7417
  %7486 = fmul fast float %307, 0x401921FB60000000
  %7487 = call float @dx.op.unary.f32(i32 13, float %7486)  ; Sin(value)
  %7488 = call float @dx.op.unary.f32(i32 12, float %7486)  ; Cos(value)
  %7489 = fsub fast float -0.000000e+00, %7487
  br label %7490

; <label>:7490                                    ; preds = %7539, %7485
  %7491 = phi float [ 0.000000e+00, %7485 ], [ %7534, %7539 ]
  %7492 = phi float [ 0.000000e+00, %7485 ], [ %7536, %7539 ]
  %7493 = phi i32 [ 0, %7485 ], [ %7540, %7539 ]
  %7494 = mul i32 %7493, 2
  %7495 = add i32 0, %7494
  %7496 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7495
  %7497 = load float, float* %7496, align 4
  %7498 = mul i32 %7493, 2
  %7499 = add i32 1, %7498
  %7500 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7499
  %7501 = load float, float* %7500, align 4
  %7502 = fmul fast float %7497, %7488
  %7503 = call float @dx.op.tertiary.f32(i32 46, float %7501, float %7489, float %7502)  ; FMad(a,b,c)
  %7504 = fmul fast float %7497, %7487
  %7505 = call float @dx.op.tertiary.f32(i32 46, float %7501, float %7488, float %7504)  ; FMad(a,b,c)
  %7506 = fmul fast float %7503, %7413
  %7507 = fmul fast float %7505, %7413
  %7508 = fadd fast float %7506, %6539
  %7509 = fadd fast float %7507, %6543
  %7510 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %19, %dx.types.Handle %46, float %7508, float %7509, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7511 = extractvalue %dx.types.ResRet.f32 %7510, 0
  %7512 = extractvalue %dx.types.ResRet.f32 %7510, 1
  %7513 = extractvalue %dx.types.ResRet.f32 %7510, 2
  %7514 = extractvalue %dx.types.ResRet.f32 %7510, 3
  %7515 = getelementptr inbounds [4 x float], [4 x float]* %102, i32 0, i32 0
  store float %7511, float* %7515, align 4
  %7516 = getelementptr inbounds [4 x float], [4 x float]* %102, i32 0, i32 1
  store float %7512, float* %7516, align 4
  %7517 = getelementptr inbounds [4 x float], [4 x float]* %102, i32 0, i32 2
  store float %7513, float* %7517, align 4
  %7518 = getelementptr inbounds [4 x float], [4 x float]* %102, i32 0, i32 3
  store float %7514, float* %7518, align 4
  %7519 = fsub fast float %7511, %7415
  %7520 = fcmp fast olt float %7519, 0.000000e+00
  %7521 = select i1 %7520, float 0.000000e+00, float 1.000000e+00
  %7522 = fadd fast float %7521, %7491
  %7523 = fmul fast float %7521, %7519
  %7524 = fadd fast float %7523, %7492
  br label %7525

; <label>:7525                                    ; preds = %7525, %7490
  %7526 = phi i32 [ 1, %7490 ], [ %7537, %7525 ]
  %7527 = phi float [ %7524, %7490 ], [ %7536, %7525 ]
  %7528 = phi float [ %7522, %7490 ], [ %7534, %7525 ]
  %7529 = getelementptr [4 x float], [4 x float]* %102, i32 0, i32 %7526
  %7530 = load float, float* %7529, align 4, !tbaa !116, !noalias !106
  %7531 = fsub fast float %7530, %7415
  %7532 = fcmp fast olt float %7531, 0.000000e+00
  %7533 = select i1 %7532, float 0.000000e+00, float 1.000000e+00
  %7534 = fadd fast float %7533, %7528
  %7535 = fmul fast float %7533, %7531
  %7536 = fadd fast float %7535, %7527
  %7537 = add nuw nsw i32 %7526, 1
  %7538 = icmp eq i32 %7537, 4
  br i1 %7538, label %7539, label %7525, !llvm.loop !118

; <label>:7539                                    ; preds = %7525
  %7540 = add nuw nsw i32 %7493, 1
  %7541 = icmp eq i32 %7540, 8
  br i1 %7541, label %7542, label %7490, !llvm.loop !119

; <label>:7542                                    ; preds = %7539
  %7543 = fdiv fast float 1.000000e+00, %7534
  %7544 = fmul fast float %7543, %7536
  %7545 = fdiv fast float 1.000000e+00, %7415
  %7546 = fmul fast float %7544, %7545
  %7547 = call float @dx.op.unary.f32(i32 7, float %7546)  ; Saturate(value)
  %7548 = call float @dx.op.binary.f32(i32 35, float %7547, float 0.000000e+00)  ; FMax(a,b)
  %7549 = fmul fast float %7534, 3.125000e-02
  %7550 = call float @dx.op.unary.f32(i32 7, float %7549)  ; Saturate(value)
  %7551 = fmul fast float %7550, 2.000000e+00
  %7552 = fadd fast float %7551, -1.000000e+00
  %7553 = fcmp fast ogt float %7552, 0.000000e+00
  %7554 = fcmp fast olt float %7552, 0.000000e+00
  %7555 = zext i1 %7553 to i32
  %7556 = zext i1 %7554 to i32
  %7557 = sub nsw i32 %7555, %7556
  %7558 = sitofp i32 %7557 to float
  %7559 = fmul fast float %7558, %7552
  %7560 = fsub fast float 1.000000e+00, %7559
  %7561 = fmul fast float %7560, %7560
  %7562 = fmul fast float %7561, %7560
  %7563 = fsub fast float %7560, %7562
  %7564 = fmul fast float %7563, %7548
  %7565 = fsub fast float 1.000000e+00, %7562
  %7566 = fsub fast float %7565, %7564
  %7567 = fmul fast float %7558, 5.000000e-01
  %7568 = fmul fast float %7567, %7566
  %7569 = fsub fast float 5.000000e-01, %7568
  br label %7723

; <label>:7570                                    ; preds = %7405
  br i1 %7416, label %7571, label %7638

; <label>:7571                                    ; preds = %7570
  %7572 = extractvalue %dx.types.CBufRet.f32 %7409, 1
  %7573 = extractvalue %dx.types.CBufRet.f32 %7409, 0
  %7574 = fmul fast float %7573, %6539
  %7575 = fmul fast float %7572, %6543
  %7576 = fadd fast float %7574, 5.000000e-01
  %7577 = call float @dx.op.unary.f32(i32 27, float %7576)  ; Round_ni(value)
  %7578 = fadd fast float %7575, 5.000000e-01
  %7579 = call float @dx.op.unary.f32(i32 27, float %7578)  ; Round_ni(value)
  %7580 = fsub fast float %7576, %7577
  %7581 = fsub fast float %7578, %7579
  %7582 = fadd fast float %7577, -5.000000e-01
  %7583 = fadd fast float %7579, -5.000000e-01
  %7584 = fmul fast float %7580, 2.000000e+00
  %7585 = fsub fast float 3.000000e+00, %7584
  %7586 = fadd fast float %7584, 1.000000e+00
  %7587 = fsub fast float 2.000000e+00, %7580
  %7588 = bitcast float %7585 to i32
  %7589 = sub nsw i32 2129859010, %7588
  %7590 = bitcast i32 %7589 to float
  %7591 = fmul fast float %7590, %7587
  %7592 = fadd fast float %7591, -1.000000e+00
  %7593 = bitcast float %7586 to i32
  %7594 = sub nsw i32 2129859010, %7593
  %7595 = bitcast i32 %7594 to float
  %7596 = fmul fast float %7595, %7580
  %7597 = fadd fast float %7596, 1.000000e+00
  %7598 = fmul fast float %7581, 2.000000e+00
  %7599 = fsub fast float 3.000000e+00, %7598
  %7600 = fadd fast float %7598, 1.000000e+00
  %7601 = fsub fast float 2.000000e+00, %7581
  %7602 = bitcast float %7599 to i32
  %7603 = sub nsw i32 2129859010, %7602
  %7604 = bitcast i32 %7603 to float
  %7605 = fmul fast float %7604, %7601
  %7606 = fadd fast float %7605, -1.000000e+00
  %7607 = bitcast float %7600 to i32
  %7608 = sub nsw i32 2129859010, %7607
  %7609 = bitcast i32 %7608 to float
  %7610 = fmul fast float %7609, %7581
  %7611 = fadd fast float %7610, 1.000000e+00
  %7612 = fadd fast float %7592, %7582
  %7613 = fmul fast float %7612, %7410
  %7614 = fadd fast float %7606, %7583
  %7615 = fmul fast float %7614, %7411
  %7616 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %47, float %7613, float %7615, float undef, float undef, i32 0, i32 0, i32 undef, float %7415)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7617 = extractvalue %dx.types.ResRet.f32 %7616, 0
  %7618 = fmul fast float %7617, %7585
  %7619 = fadd fast float %7597, %7582
  %7620 = fmul fast float %7619, %7410
  %7621 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %47, float %7620, float %7615, float undef, float undef, i32 0, i32 0, i32 undef, float %7415)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7622 = extractvalue %dx.types.ResRet.f32 %7621, 0
  %7623 = fmul fast float %7622, %7586
  %7624 = fadd fast float %7611, %7583
  %7625 = fmul fast float %7624, %7411
  %7626 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %47, float %7613, float %7625, float undef, float undef, i32 0, i32 0, i32 undef, float %7415)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7627 = extractvalue %dx.types.ResRet.f32 %7626, 0
  %7628 = fmul fast float %7627, %7585
  %7629 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %47, float %7620, float %7625, float undef, float undef, i32 0, i32 0, i32 undef, float %7415)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7630 = extractvalue %dx.types.ResRet.f32 %7629, 0
  %7631 = fmul fast float %7630, %7586
  %7632 = fadd fast float %7631, %7628
  %7633 = fmul fast float %7632, %7600
  %7634 = fadd fast float %7623, %7618
  %7635 = fmul fast float %7634, %7599
  %7636 = fadd fast float %7635, %7633
  %7637 = fmul fast float %7636, 6.250000e-02
  br label %7723

; <label>:7638                                    ; preds = %7570
  %7639 = fmul fast float %307, 0x401921FB60000000
  %7640 = call float @dx.op.unary.f32(i32 13, float %7639)  ; Sin(value)
  %7641 = call float @dx.op.unary.f32(i32 12, float %7639)  ; Cos(value)
  %7642 = fsub fast float -0.000000e+00, %7640
  br label %7643

; <label>:7643                                    ; preds = %7692, %7638
  %7644 = phi float [ 0.000000e+00, %7638 ], [ %7687, %7692 ]
  %7645 = phi float [ 0.000000e+00, %7638 ], [ %7689, %7692 ]
  %7646 = phi i32 [ 0, %7638 ], [ %7693, %7692 ]
  %7647 = mul i32 %7646, 2
  %7648 = add i32 0, %7647
  %7649 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7648
  %7650 = load float, float* %7649, align 4
  %7651 = mul i32 %7646, 2
  %7652 = add i32 1, %7651
  %7653 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7652
  %7654 = load float, float* %7653, align 4
  %7655 = fmul fast float %7650, %7641
  %7656 = call float @dx.op.tertiary.f32(i32 46, float %7654, float %7642, float %7655)  ; FMad(a,b,c)
  %7657 = fmul fast float %7650, %7640
  %7658 = call float @dx.op.tertiary.f32(i32 46, float %7654, float %7641, float %7657)  ; FMad(a,b,c)
  %7659 = fmul fast float %7656, %7413
  %7660 = fmul fast float %7658, %7413
  %7661 = fadd fast float %7659, %6539
  %7662 = fadd fast float %7660, %6543
  %7663 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %18, %dx.types.Handle %46, float %7661, float %7662, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7664 = extractvalue %dx.types.ResRet.f32 %7663, 0
  %7665 = extractvalue %dx.types.ResRet.f32 %7663, 1
  %7666 = extractvalue %dx.types.ResRet.f32 %7663, 2
  %7667 = extractvalue %dx.types.ResRet.f32 %7663, 3
  %7668 = getelementptr inbounds [4 x float], [4 x float]* %101, i32 0, i32 0
  store float %7664, float* %7668, align 4
  %7669 = getelementptr inbounds [4 x float], [4 x float]* %101, i32 0, i32 1
  store float %7665, float* %7669, align 4
  %7670 = getelementptr inbounds [4 x float], [4 x float]* %101, i32 0, i32 2
  store float %7666, float* %7670, align 4
  %7671 = getelementptr inbounds [4 x float], [4 x float]* %101, i32 0, i32 3
  store float %7667, float* %7671, align 4
  %7672 = fsub fast float %7664, %7415
  %7673 = fcmp fast olt float %7672, 0.000000e+00
  %7674 = select i1 %7673, float 0.000000e+00, float 1.000000e+00
  %7675 = fadd fast float %7674, %7644
  %7676 = fmul fast float %7674, %7672
  %7677 = fadd fast float %7676, %7645
  br label %7678

; <label>:7678                                    ; preds = %7678, %7643
  %7679 = phi i32 [ 1, %7643 ], [ %7690, %7678 ]
  %7680 = phi float [ %7677, %7643 ], [ %7689, %7678 ]
  %7681 = phi float [ %7675, %7643 ], [ %7687, %7678 ]
  %7682 = getelementptr [4 x float], [4 x float]* %101, i32 0, i32 %7679
  %7683 = load float, float* %7682, align 4, !tbaa !116, !noalias !106
  %7684 = fsub fast float %7683, %7415
  %7685 = fcmp fast olt float %7684, 0.000000e+00
  %7686 = select i1 %7685, float 0.000000e+00, float 1.000000e+00
  %7687 = fadd fast float %7686, %7681
  %7688 = fmul fast float %7686, %7684
  %7689 = fadd fast float %7688, %7680
  %7690 = add nuw nsw i32 %7679, 1
  %7691 = icmp eq i32 %7690, 4
  br i1 %7691, label %7692, label %7678, !llvm.loop !118

; <label>:7692                                    ; preds = %7678
  %7693 = add nuw nsw i32 %7646, 1
  %7694 = icmp eq i32 %7693, 8
  br i1 %7694, label %7695, label %7643, !llvm.loop !119

; <label>:7695                                    ; preds = %7692
  %7696 = fdiv fast float 1.000000e+00, %7687
  %7697 = fmul fast float %7696, %7689
  %7698 = fdiv fast float 1.000000e+00, %7415
  %7699 = fmul fast float %7697, %7698
  %7700 = call float @dx.op.unary.f32(i32 7, float %7699)  ; Saturate(value)
  %7701 = call float @dx.op.binary.f32(i32 35, float %7700, float 0.000000e+00)  ; FMax(a,b)
  %7702 = fmul fast float %7687, 3.125000e-02
  %7703 = call float @dx.op.unary.f32(i32 7, float %7702)  ; Saturate(value)
  %7704 = fmul fast float %7703, 2.000000e+00
  %7705 = fadd fast float %7704, -1.000000e+00
  %7706 = fcmp fast ogt float %7705, 0.000000e+00
  %7707 = fcmp fast olt float %7705, 0.000000e+00
  %7708 = zext i1 %7706 to i32
  %7709 = zext i1 %7707 to i32
  %7710 = sub nsw i32 %7708, %7709
  %7711 = sitofp i32 %7710 to float
  %7712 = fmul fast float %7711, %7705
  %7713 = fsub fast float 1.000000e+00, %7712
  %7714 = fmul fast float %7713, %7713
  %7715 = fmul fast float %7714, %7713
  %7716 = fsub fast float %7713, %7715
  %7717 = fmul fast float %7716, %7701
  %7718 = fsub fast float 1.000000e+00, %7715
  %7719 = fsub fast float %7718, %7717
  %7720 = fmul fast float %7711, 5.000000e-01
  %7721 = fmul fast float %7720, %7719
  %7722 = fsub fast float 5.000000e-01, %7721
  br label %7723

; <label>:7723                                    ; preds = %7695, %7571, %7542, %7418, %7402
  %7724 = phi float [ 1.000000e+00, %7402 ], [ %7484, %7418 ], [ %7569, %7542 ], [ %7637, %7571 ], [ %7722, %7695 ]
  %7725 = fsub fast float %7236, %7069
  %7726 = fmul fast float %7725, %6636
  %7727 = fadd fast float %7726, %7069
  %7728 = fsub fast float %7403, %7727
  %7729 = fmul fast float %7728, %6635
  %7730 = fadd fast float %7729, %7727
  %7731 = fsub fast float %7724, %7730
  %7732 = fmul fast float %7731, %6663
  %7733 = fadd fast float %7732, %7730
  %7734 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %7735 = extractvalue %dx.types.CBufRet.f32 %7734, 2
  %7736 = fcmp fast ogt float %7735, 0.000000e+00
  br i1 %7736, label %7737, label %7777, !dx.controlflow.hints !123

; <label>:7737                                    ; preds = %7723
  %7738 = fcmp fast ugt float %7735, 0.000000e+00
  br i1 %7738, label %7739, label %7774

; <label>:7739                                    ; preds = %7737
  %7740 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %7741 = extractvalue %dx.types.CBufRet.f32 %7740, 0
  %7742 = extractvalue %dx.types.CBufRet.f32 %7740, 1
  %7743 = extractvalue %dx.types.CBufRet.f32 %7740, 2
  %7744 = extractvalue %dx.types.CBufRet.f32 %7740, 3
  %7745 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %7746 = extractvalue %dx.types.CBufRet.f32 %7745, 0
  %7747 = extractvalue %dx.types.CBufRet.f32 %7745, 1
  %7748 = extractvalue %dx.types.CBufRet.f32 %7745, 2
  %7749 = extractvalue %dx.types.CBufRet.f32 %7745, 3
  %7750 = extractvalue %dx.types.CBufRet.f32 %7734, 0
  %7751 = extractvalue %dx.types.CBufRet.f32 %7734, 1
  %7752 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %7753 = extractvalue %dx.types.CBufRet.f32 %7752, 0
  %7754 = extractvalue %dx.types.CBufRet.f32 %7752, 1
  %7755 = extractvalue %dx.types.CBufRet.f32 %7752, 2
  %7756 = fadd fast float %7753, %6516
  %7757 = fadd fast float %7754, %6517
  %7758 = fadd fast float %7755, %6518
  %7759 = fmul fast float %7756, %7741
  %7760 = call float @dx.op.tertiary.f32(i32 46, float %7742, float %7757, float %7759)  ; FMad(a,b,c)
  %7761 = call float @dx.op.tertiary.f32(i32 46, float %7743, float %7758, float %7760)  ; FMad(a,b,c)
  %7762 = fadd fast float %7761, %7744
  %7763 = fmul fast float %7756, %7746
  %7764 = call float @dx.op.tertiary.f32(i32 46, float %7747, float %7757, float %7763)  ; FMad(a,b,c)
  %7765 = call float @dx.op.tertiary.f32(i32 46, float %7748, float %7758, float %7764)  ; FMad(a,b,c)
  %7766 = fadd fast float %7765, %7749
  %7767 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %42, float %7762, float %7766, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %7768 = extractvalue %dx.types.ResRet.f32 %7767, 0
  %7769 = fmul fast float %7768, %7751
  %7770 = fadd fast float %7769, %7750
  %7771 = call float @dx.op.unary.f32(i32 7, float %7770)  ; Saturate(value)
  %7772 = fmul fast float %7771, %7735
  %7773 = fsub fast float 1.000000e+00, %7772
  br label %7774

; <label>:7774                                    ; preds = %7739, %7737
  %7775 = phi float [ %7773, %7739 ], [ 1.000000e+00, %7737 ]
  %7776 = fmul fast float %7775, %7733
  br label %7777

; <label>:7777                                    ; preds = %7774, %7723, %6496
  %7778 = phi float [ 1.000000e+00, %6496 ], [ %7776, %7774 ], [ %7733, %7723 ]
  %7779 = call float @dx.op.binary.f32(i32 36, float %7778, float %7778)  ; FMin(a,b)
  %7780 = call float @dx.op.binary.f32(i32 36, float %7778, float %7779)  ; FMin(a,b)
  %7781 = fcmp fast ogt float %7780, 0.000000e+00
  br i1 %7781, label %7782, label %7948, !dx.controlflow.hints !124

; <label>:7782                                    ; preds = %7777
  %7783 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %7784 = extractvalue %dx.types.CBufRet.f32 %7783, 0
  %7785 = extractvalue %dx.types.CBufRet.f32 %7783, 1
  %7786 = extractvalue %dx.types.CBufRet.f32 %7783, 2
  %7787 = extractvalue %dx.types.CBufRet.f32 %7783, 3
  %7788 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %7789 = extractvalue %dx.types.CBufRet.f32 %7788, 0
  %7790 = extractvalue %dx.types.CBufRet.f32 %7788, 1
  %7791 = extractvalue %dx.types.CBufRet.f32 %7788, 2
  %7792 = extractvalue %dx.types.CBufRet.f32 %7788, 3
  %7793 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %7794 = extractvalue %dx.types.CBufRet.f32 %7793, 0
  %7795 = extractvalue %dx.types.CBufRet.f32 %7793, 1
  %7796 = extractvalue %dx.types.CBufRet.f32 %7793, 2
  %7797 = extractvalue %dx.types.CBufRet.f32 %7793, 3
  %7798 = fmul fast float %7784, %6516
  %7799 = call float @dx.op.tertiary.f32(i32 46, float %6517, float %7785, float %7798)  ; FMad(a,b,c)
  %7800 = call float @dx.op.tertiary.f32(i32 46, float %6518, float %7786, float %7799)  ; FMad(a,b,c)
  %7801 = fadd fast float %7800, %7787
  %7802 = fmul fast float %7789, %6516
  %7803 = call float @dx.op.tertiary.f32(i32 46, float %6517, float %7790, float %7802)  ; FMad(a,b,c)
  %7804 = call float @dx.op.tertiary.f32(i32 46, float %6518, float %7791, float %7803)  ; FMad(a,b,c)
  %7805 = fadd fast float %7804, %7792
  %7806 = fmul fast float %7794, %6516
  %7807 = call float @dx.op.tertiary.f32(i32 46, float %6517, float %7795, float %7806)  ; FMad(a,b,c)
  %7808 = call float @dx.op.tertiary.f32(i32 46, float %6518, float %7796, float %7807)  ; FMad(a,b,c)
  %7809 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %7810 = extractvalue %dx.types.CBufRet.f32 %7809, 0
  %7811 = extractvalue %dx.types.CBufRet.f32 %7809, 1
  %7812 = extractvalue %dx.types.CBufRet.f32 %7809, 3
  %7813 = fmul fast float %7812, %7801
  %7814 = fmul fast float %7812, %7805
  %7815 = fadd fast float %7813, %7810
  %7816 = fadd fast float %7814, %7811
  %7817 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %7818 = extractvalue %dx.types.CBufRet.f32 %7817, 0
  %7819 = extractvalue %dx.types.CBufRet.f32 %7817, 1
  %7820 = fsub fast float %7815, %7818
  %7821 = fsub fast float %7816, %7819
  %7822 = fcmp fast olt float %7820, 0.000000e+00
  %7823 = fcmp fast olt float %7821, 0.000000e+00
  %7824 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %7825 = extractvalue %dx.types.CBufRet.f32 %7824, 0
  %7826 = extractvalue %dx.types.CBufRet.f32 %7824, 1
  %7827 = extractvalue %dx.types.CBufRet.f32 %7824, 2
  %7828 = extractvalue %dx.types.CBufRet.f32 %7824, 3
  %7829 = select i1 %7822, float %7825, float %7827
  %7830 = select i1 %7823, float %7826, float %7828
  %7831 = fmul fast float %7829, %7820
  %7832 = fmul fast float %7830, %7821
  %7833 = call float @dx.op.unary.f32(i32 6, float %7831)  ; FAbs(value)
  %7834 = call float @dx.op.unary.f32(i32 6, float %7832)  ; FAbs(value)
  %7835 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %7836 = extractvalue %dx.types.CBufRet.f32 %7835, 0
  %7837 = call float @dx.op.binary.f32(i32 35, float %7833, float %7834)  ; FMax(a,b)
  %7838 = fsub fast float %7836, %7837
  %7839 = call float @dx.op.unary.f32(i32 7, float %7838)  ; Saturate(value)
  %7840 = fcmp fast ogt float %7839, 0.000000e+00
  br i1 %7840, label %7841, label %7882, !dx.controlflow.hints !125

; <label>:7841                                    ; preds = %7782
  %7842 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %45, float %7815, float %7816, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7843 = extractvalue %dx.types.ResRet.f32 %7842, 1
  %7844 = fcmp fast ogt float %7843, 0.000000e+00
  br i1 %7844, label %7845, label %7877

; <label>:7845                                    ; preds = %7841
  %7846 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %45, float %7815, float %7816, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7847 = extractvalue %dx.types.ResRet.f32 %7846, 0
  %7848 = extractvalue %dx.types.ResRet.f32 %7846, 1
  %7849 = extractvalue %dx.types.ResRet.f32 %7846, 2
  %7850 = extractvalue %dx.types.ResRet.f32 %7846, 3
  %7851 = fsub fast float 1.000000e+00, %7797
  %7852 = fsub fast float %7851, %7808
  %7853 = fmul fast float %7852, 0x400921FB60000000
  %7854 = fadd fast float %7853, 0x3FF921FB60000000
  %7855 = call float @dx.op.unary.f32(i32 13, float %7854)  ; Sin(value)
  %7856 = fadd fast float %7855, -1.000000e+00
  %7857 = fmul fast float %7856, 0x3FD45F3060000000
  %7858 = fmul fast float %7852, 0x401921FB60000000
  %7859 = fadd fast float %7858, 0x400921FB60000000
  %7860 = call float @dx.op.unary.f32(i32 13, float %7859)  ; Sin(value)
  %7861 = fadd fast float %7860, 0x3E7777A5C0000000
  %7862 = fmul fast float %7861, 0x3FC45F3060000000
  %7863 = fmul fast float %7852, 0x4022D97C80000000
  %7864 = fadd fast float %7863, 0x4012D97C80000000
  %7865 = call float @dx.op.unary.f32(i32 13, float %7864)  ; Sin(value)
  %7866 = fadd fast float %7865, 1.000000e+00
  %7867 = fmul fast float %7866, 0x3FBB2995E0000000
  %7868 = fmul fast float %7852, 0x402921FB60000000
  %7869 = fadd fast float %7868, 0x401921FB60000000
  %7870 = call float @dx.op.unary.f32(i32 13, float %7869)  ; Sin(value)
  %7871 = fadd fast float %7870, 0xBE8777A5C0000000
  %7872 = fmul fast float %7871, 0x3FB45F3060000000
  %7873 = call float @dx.op.dot4.f32(i32 56, float %7847, float %7848, float %7849, float %7850, float %7857, float %7862, float %7867, float %7872)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %7874 = fmul fast float %7873, 0xBFF7154760000000
  %7875 = call float @dx.op.unary.f32(i32 21, float %7874)  ; Exp(value)
  %7876 = call float @dx.op.unary.f32(i32 7, float %7875)  ; Saturate(value)
  br label %7877

; <label>:7877                                    ; preds = %7845, %7841
  %7878 = phi float [ %7876, %7845 ], [ 1.000000e+00, %7841 ]
  %7879 = fadd fast float %7878, -1.000000e+00
  %7880 = fmul fast float %7879, %7839
  %7881 = fadd fast float %7880, 1.000000e+00
  br label %7882

; <label>:7882                                    ; preds = %7877, %7782
  %7883 = phi float [ %7881, %7877 ], [ 1.000000e+00, %7782 ]
  %7884 = fmul fast float %7883, %7778
  %7885 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %7886 = extractvalue %dx.types.CBufRet.f32 %7885, 0
  %7887 = extractvalue %dx.types.CBufRet.f32 %7885, 1
  %7888 = extractvalue %dx.types.CBufRet.f32 %7885, 2
  %7889 = fadd fast float %7886, %190
  %7890 = fadd fast float %7887, %191
  %7891 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %7892 = extractvalue %dx.types.CBufRet.f32 %7891, 1
  %7893 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %7894 = extractvalue %dx.types.CBufRet.f32 %7893, 0
  %7895 = extractvalue %dx.types.CBufRet.f32 %7893, 1
  %7896 = extractvalue %dx.types.CBufRet.f32 %7893, 2
  %7897 = fsub fast float -0.000000e+00, %7889
  %7898 = fsub fast float -0.000000e+00, %7890
  %7899 = fsub fast float -0.000000e+00, %192
  %7900 = fsub fast float %7899, %7888
  %7901 = fadd fast float %7900, %7892
  %7902 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7897, float %7898, float %7901)  ; Dot3(ax,ay,az,bx,by,bz)
  %7903 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7894, float %7895, float %7896)  ; Dot3(ax,ay,az,bx,by,bz)
  %7904 = fdiv fast float 1.000000e+00, %7903
  %7905 = fmul fast float %7904, %7902
  %7906 = fmul fast float %7894, %7905
  %7907 = fmul fast float %7895, %7905
  %7908 = fadd fast float %7906, %7889
  %7909 = fadd fast float %7907, %7890
  %7910 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %7911 = extractvalue %dx.types.CBufRet.f32 %7910, 0
  %7912 = extractvalue %dx.types.CBufRet.f32 %7910, 1
  %7913 = fsub fast float %7908, %7911
  %7914 = fsub fast float %7909, %7912
  %7915 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %7916 = extractvalue %dx.types.CBufRet.f32 %7915, 2
  %7917 = extractvalue %dx.types.CBufRet.f32 %7915, 3
  %7918 = fmul fast float %7913, %7916
  %7919 = fmul fast float %7914, %7917
  %7920 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %7921 = extractvalue %dx.types.CBufRet.i32 %7920, 3
  %7922 = icmp eq i32 %7921, 0
  br i1 %7922, label %7928, label %7923

; <label>:7923                                    ; preds = %7882
  %7924 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %44, float %7918, float %7919, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7925 = extractvalue %dx.types.ResRet.f32 %7924, 0
  %7926 = extractvalue %dx.types.ResRet.f32 %7924, 1
  %7927 = extractvalue %dx.types.ResRet.f32 %7924, 2
  br label %7933

; <label>:7928                                    ; preds = %7882
  %7929 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %45, float %7918, float %7919, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7930 = extractvalue %dx.types.ResRet.f32 %7929, 0
  %7931 = extractvalue %dx.types.ResRet.f32 %7929, 1
  %7932 = extractvalue %dx.types.ResRet.f32 %7929, 2
  br label %7933

; <label>:7933                                    ; preds = %7928, %7923
  %7934 = phi float [ %7925, %7923 ], [ %7930, %7928 ]
  %7935 = phi float [ %7926, %7923 ], [ %7931, %7928 ]
  %7936 = phi float [ %7927, %7923 ], [ %7932, %7928 ]
  %7937 = extractvalue %dx.types.CBufRet.f32 %7891, 2
  %7938 = fmul fast float %7937, %7934
  %7939 = extractvalue %dx.types.CBufRet.f32 %7891, 0
  %7940 = fsub fast float %7905, %7939
  %7941 = fsub fast float %7940, %7938
  %7942 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7941)  ; FMax(a,b)
  %7943 = fmul fast float %7942, %7935
  %7944 = call float @dx.op.binary.f32(i32 36, float %7936, float %7943)  ; FMin(a,b)
  %7945 = fmul fast float %7944, 0xBFF7154760000000
  %7946 = call float @dx.op.unary.f32(i32 21, float %7945)  ; Exp(value)
  %7947 = fmul fast float %7884, %7946
  br label %7948

; <label>:7948                                    ; preds = %7933, %7777
  %7949 = phi float [ %7947, %7933 ], [ %7778, %7777 ]
  %7950 = call float @dx.op.binary.f32(i32 36, float %7949, float %7949)  ; FMin(a,b)
  %7951 = call float @dx.op.binary.f32(i32 36, float %7949, float %7950)  ; FMin(a,b)
  %7952 = fcmp fast ogt float %7951, 0.000000e+00
  br i1 %7952, label %7953, label %8179, !dx.controlflow.hints !126

; <label>:7953                                    ; preds = %7948
  %7954 = bitcast i32 %5668 to float
  %7955 = fmul fast float %7949, %6508
  %7956 = fmul fast float %7949, %6509
  %7957 = fmul fast float %7949, %6510
  %7958 = fsub fast float %6497, %223
  %7959 = fsub fast float %6498, %224
  %7960 = fsub fast float %6499, %225
  %7961 = call float @dx.op.dot3.f32(i32 55, float %7958, float %7959, float %7960, float %7958, float %7959, float %7960)  ; Dot3(ax,ay,az,bx,by,bz)
  %7962 = call float @dx.op.unary.f32(i32 25, float %7961)  ; Rsqrt(value)
  %7963 = fmul fast float %7962, %7958
  %7964 = fmul fast float %7962, %7959
  %7965 = fmul fast float %7962, %7960
  %7966 = call float @dx.op.dot3.f32(i32 55, float %6497, float %6498, float %6499, float %5637, float %5638, float %5639)  ; Dot3(ax,ay,az,bx,by,bz)
  %7967 = call float @dx.op.dot3.f32(i32 55, float %5273, float %5274, float %5275, float %7963, float %7964, float %7965)  ; Dot3(ax,ay,az,bx,by,bz)
  %7968 = call float @dx.op.unary.f32(i32 7, float %7966)  ; Saturate(value)
  %7969 = fmul fast float %7968, %7968
  %7970 = fmul fast float %7969, %7954
  %7971 = call float @dx.op.unary.f32(i32 7, float %7970)  ; Saturate(value)
  %7972 = fmul fast float %7971, %7968
  %7973 = call float @dx.op.dot3.f32(i32 55, float %5637, float %5638, float %5639, float %7963, float %7964, float %7965)  ; Dot3(ax,ay,az,bx,by,bz)
  %7974 = fmul fast float %7973, %7973
  %7975 = call float @dx.op.unary.f32(i32 6, float %7966)  ; FAbs(value)
  %7976 = fsub fast float 1.000000e+00, %5662
  %7977 = fmul fast float %5644, %5644
  %7978 = fmul fast float %7977, %7976
  %7979 = fadd fast float %7978, %5662
  %7980 = bitcast float %7979 to i32
  %7981 = ashr i32 %7980, 1
  %7982 = add nsw i32 %7981, 532487669
  %7983 = bitcast i32 %7982 to float
  %7984 = fadd fast float %7983, %5644
  %7985 = fmul fast float %5662, %7974
  %7986 = fsub fast float 1.000000e+00, %7974
  %7987 = fadd fast float %7986, %7985
  %7988 = fmul fast float %7975, %7975
  %7989 = fmul fast float %7988, %7976
  %7990 = fadd fast float %7989, %5662
  %7991 = bitcast float %7990 to i32
  %7992 = ashr i32 %7991, 1
  %7993 = add nsw i32 %7992, 532487669
  %7994 = bitcast i32 %7993 to float
  %7995 = fadd fast float %7994, %7975
  %7996 = fmul fast float %7987, %7987
  %7997 = fmul fast float %7996, %7984
  %7998 = fmul fast float %7997, %7995
  %7999 = fdiv fast float 0x3FF0A00000000000, %7998
  %8000 = fmul fast float %7999, %5662
  %8001 = call float @dx.op.unary.f32(i32 6, float %7967)  ; FAbs(value)
  %8002 = fsub fast float 1.000000e+00, %8001
  %8003 = bitcast float %8002 to i32
  %8004 = sitofp i32 %8003 to float
  %8005 = fmul fast float %8004, 5.000000e+00
  %8006 = fadd fast float %8005, 0xC1EFBF8940000000
  %8007 = fptosi float %8006 to i32
  %8008 = bitcast i32 %8007 to float
  %8009 = fsub fast float 1.000000e+00, %5631
  %8010 = fsub fast float 1.000000e+00, %5632
  %8011 = fsub fast float 1.000000e+00, %5642
  %8012 = fmul fast float %8008, %8009
  %8013 = fmul fast float %8008, %8010
  %8014 = fmul fast float %8008, %8011
  %8015 = fadd fast float %8012, %5631
  %8016 = fadd fast float %8013, %5632
  %8017 = fadd fast float %8014, %5642
  br i1 %5926, label %8018, label %8041

; <label>:8018                                    ; preds = %7953
  %8019 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %45, float %4302, float %8001, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8020 = extractvalue %dx.types.ResRet.f32 %8019, 0
  %8021 = extractvalue %dx.types.ResRet.f32 %8019, 1
  %8022 = extractvalue %dx.types.ResRet.f32 %8019, 2
  %8023 = fadd fast float %8020, -5.000000e-01
  %8024 = fadd fast float %8021, -5.000000e-01
  %8025 = fadd fast float %8022, -5.000000e-01
  %8026 = fmul fast float %5631, 4.000000e+00
  %8027 = fmul fast float %8026, %8009
  %8028 = fmul fast float %8027, %8023
  %8029 = fmul fast float %5632, 4.000000e+00
  %8030 = fmul fast float %8029, %8010
  %8031 = fmul fast float %8030, %8024
  %8032 = fmul fast float %5642, 4.000000e+00
  %8033 = fmul fast float %8032, %8011
  %8034 = fmul fast float %8033, %8025
  %8035 = fadd fast float %8028, %8015
  %8036 = fadd fast float %8031, %8016
  %8037 = fadd fast float %8034, %8017
  %8038 = call float @dx.op.unary.f32(i32 7, float %8035)  ; Saturate(value)
  %8039 = call float @dx.op.unary.f32(i32 7, float %8036)  ; Saturate(value)
  %8040 = call float @dx.op.unary.f32(i32 7, float %8037)  ; Saturate(value)
  br label %8041

; <label>:8041                                    ; preds = %8018, %7953
  %8042 = phi float [ %8038, %8018 ], [ %8015, %7953 ]
  %8043 = phi float [ %8039, %8018 ], [ %8016, %7953 ]
  %8044 = phi float [ %8040, %8018 ], [ %8017, %7953 ]
  %8045 = fmul fast float %7966, 9.843750e-01
  %8046 = fadd fast float %8045, 7.812500e-03
  %8047 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %38, %dx.types.Handle %45, float %8046, float %5916, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8048 = extractvalue %dx.types.ResRet.f32 %8047, 2
  %8049 = extractvalue %dx.types.ResRet.f32 %8047, 3
  %8050 = fmul fast float %8048, %5631
  %8051 = fmul fast float %8048, %5632
  %8052 = fmul fast float %8048, %5642
  %8053 = fadd fast float %8050, %8049
  %8054 = fadd fast float %8051, %8049
  %8055 = fadd fast float %8052, %8049
  br i1 %5926, label %8056, label %8079

; <label>:8056                                    ; preds = %8041
  %8057 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %45, float %4302, float %7966, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8058 = extractvalue %dx.types.ResRet.f32 %8057, 0
  %8059 = extractvalue %dx.types.ResRet.f32 %8057, 1
  %8060 = extractvalue %dx.types.ResRet.f32 %8057, 2
  %8061 = fadd fast float %8058, -5.000000e-01
  %8062 = fadd fast float %8059, -5.000000e-01
  %8063 = fadd fast float %8060, -5.000000e-01
  %8064 = fmul fast float %5631, 4.000000e+00
  %8065 = fmul fast float %8064, %8009
  %8066 = fmul fast float %8065, %8061
  %8067 = fmul fast float %5632, 4.000000e+00
  %8068 = fmul fast float %8067, %8010
  %8069 = fmul fast float %8068, %8062
  %8070 = fmul fast float %5642, 4.000000e+00
  %8071 = fmul fast float %8070, %8011
  %8072 = fmul fast float %8071, %8063
  %8073 = fadd fast float %8066, %8053
  %8074 = fadd fast float %8069, %8054
  %8075 = fadd fast float %8072, %8055
  %8076 = call float @dx.op.unary.f32(i32 7, float %8073)  ; Saturate(value)
  %8077 = call float @dx.op.unary.f32(i32 7, float %8074)  ; Saturate(value)
  %8078 = call float @dx.op.unary.f32(i32 7, float %8075)  ; Saturate(value)
  br label %8079

; <label>:8079                                    ; preds = %8056, %8041
  %8080 = phi float [ %8076, %8056 ], [ %8053, %8041 ]
  %8081 = phi float [ %8077, %8056 ], [ %8054, %8041 ]
  %8082 = phi float [ %8078, %8056 ], [ %8055, %8041 ]
  %8083 = call float @dx.op.binary.f32(i32 35, float %8081, float %8082)  ; FMax(a,b)
  %8084 = call float @dx.op.binary.f32(i32 35, float %8080, float %8083)  ; FMax(a,b)
  %8085 = fsub fast float 1.000000e+00, %8084
  %8086 = fsub fast float -0.000000e+00, %5637
  %8087 = fsub fast float -0.000000e+00, %5638
  %8088 = fsub fast float -0.000000e+00, %5639
  %8089 = call float @dx.op.dot3.f32(i32 55, float %6497, float %6498, float %6499, float %8086, float %8087, float %8088)  ; Dot3(ax,ay,az,bx,by,bz)
  %8090 = call float @dx.op.unary.f32(i32 7, float %8089)  ; Saturate(value)
  %8091 = fmul fast float %8090, 9.843750e-01
  %8092 = fadd fast float %8091, 7.812500e-03
  %8093 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %38, %dx.types.Handle %45, float %8092, float %5916, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8094 = extractvalue %dx.types.ResRet.f32 %8093, 2
  %8095 = extractvalue %dx.types.ResRet.f32 %8093, 3
  %8096 = fmul fast float %8094, %5631
  %8097 = fmul fast float %8094, %5632
  %8098 = fmul fast float %8094, %5642
  %8099 = fadd fast float %8096, %8095
  %8100 = fadd fast float %8097, %8095
  %8101 = fadd fast float %8098, %8095
  br i1 %5926, label %8102, label %8125

; <label>:8102                                    ; preds = %8079
  %8103 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %45, float %4302, float %8090, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8104 = extractvalue %dx.types.ResRet.f32 %8103, 0
  %8105 = extractvalue %dx.types.ResRet.f32 %8103, 1
  %8106 = extractvalue %dx.types.ResRet.f32 %8103, 2
  %8107 = fadd fast float %8104, -5.000000e-01
  %8108 = fadd fast float %8105, -5.000000e-01
  %8109 = fadd fast float %8106, -5.000000e-01
  %8110 = fmul fast float %5631, 4.000000e+00
  %8111 = fmul fast float %8110, %8009
  %8112 = fmul fast float %8111, %8107
  %8113 = fmul fast float %5632, 4.000000e+00
  %8114 = fmul fast float %8113, %8010
  %8115 = fmul fast float %8114, %8108
  %8116 = fmul fast float %5642, 4.000000e+00
  %8117 = fmul fast float %8116, %8011
  %8118 = fmul fast float %8117, %8109
  %8119 = fadd fast float %8112, %8099
  %8120 = fadd fast float %8115, %8100
  %8121 = fadd fast float %8118, %8101
  %8122 = call float @dx.op.unary.f32(i32 7, float %8119)  ; Saturate(value)
  %8123 = call float @dx.op.unary.f32(i32 7, float %8120)  ; Saturate(value)
  %8124 = call float @dx.op.unary.f32(i32 7, float %8121)  ; Saturate(value)
  br label %8125

; <label>:8125                                    ; preds = %8102, %8079
  %8126 = phi float [ %8122, %8102 ], [ %8099, %8079 ]
  %8127 = phi float [ %8123, %8102 ], [ %8100, %8079 ]
  %8128 = phi float [ %8124, %8102 ], [ %8101, %8079 ]
  %8129 = call float @dx.op.binary.f32(i32 35, float %8127, float %8128)  ; FMax(a,b)
  %8130 = call float @dx.op.binary.f32(i32 35, float %8126, float %8129)  ; FMax(a,b)
  %8131 = fsub fast float 1.000000e+00, %8130
  %8132 = fmul fast float %8131, %8090
  %8133 = fmul fast float %8132, %4414
  %8134 = fmul fast float %8132, %4415
  %8135 = fmul fast float %8132, %4416
  %8136 = fmul fast float %8042, %8000
  %8137 = fmul fast float %8043, %8000
  %8138 = fmul fast float %8044, %8000
  %8139 = fsub fast float 1.000000e+00, %7967
  %8140 = bitcast float %8139 to i32
  %8141 = sitofp i32 %8140 to float
  %8142 = fmul fast float %8141, 5.000000e+00
  %8143 = fadd fast float %8142, 0xC1EFBF8940000000
  %8144 = fptosi float %8143 to i32
  %8145 = bitcast i32 %8144 to float
  %8146 = fmul fast float %8145, %4303
  %8147 = fmul fast float %8085, %8146
  %8148 = fmul fast float %8147, %6437
  %8149 = fmul fast float %8147, %6438
  %8150 = fmul fast float %8147, %6439
  %8151 = fmul fast float %8085, %7972
  %8152 = fadd fast float %8148, %8136
  %8153 = fadd fast float %8149, %8137
  %8154 = fadd fast float %8150, %8138
  %8155 = fadd fast float %8133, %8151
  %8156 = fadd fast float %8134, %8151
  %8157 = fadd fast float %8135, %8151
  %8158 = fmul fast float %8155, %7955
  %8159 = fmul fast float %8156, %7956
  %8160 = fmul fast float %8157, %7957
  %8161 = fmul fast float %7972, %7955
  %8162 = fmul fast float %8161, %8152
  %8163 = fmul fast float %7972, %7956
  %8164 = fmul fast float %8163, %8153
  %8165 = fmul fast float %7972, %7957
  %8166 = fmul fast float %8165, %8154
  %8167 = fadd fast float %8158, %6487
  %8168 = fmul fast float %8167, %4328
  %8169 = fadd fast float %8159, %6489
  %8170 = fmul fast float %8169, %4328
  %8171 = fadd fast float %8160, %6491
  %8172 = fmul fast float %8171, %4328
  %8173 = fadd fast float %8162, %6470
  %8174 = fmul fast float %8173, %4328
  %8175 = fadd fast float %8164, %6473
  %8176 = fmul fast float %8175, %4328
  %8177 = fadd fast float %8166, %6476
  %8178 = fmul fast float %8177, %4328
  br label %8179

; <label>:8179                                    ; preds = %8125, %7948, %6420
  %8180 = phi float [ %6471, %6420 ], [ %6471, %7948 ], [ %8174, %8125 ]
  %8181 = phi float [ %6474, %6420 ], [ %6474, %7948 ], [ %8176, %8125 ]
  %8182 = phi float [ %6477, %6420 ], [ %6477, %7948 ], [ %8178, %8125 ]
  %8183 = phi float [ %6488, %6420 ], [ %6488, %7948 ], [ %8168, %8125 ]
  %8184 = phi float [ %6490, %6420 ], [ %6490, %7948 ], [ %8170, %8125 ]
  %8185 = phi float [ %6492, %6420 ], [ %6492, %7948 ], [ %8172, %8125 ]
  %8186 = fmul fast float %4328, %6446
  %8187 = fsub fast float -0.000000e+00, %8186
  %8188 = fmul fast float %4328, %6447
  %8189 = fsub fast float -0.000000e+00, %8188
  %8190 = fmul fast float %4328, %6448
  %8191 = fsub fast float -0.000000e+00, %8190
  %8192 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %8193 = extractvalue %dx.types.CBufRet.f32 %8192, 0
  %8194 = fmul fast float %8193, %6452
  %8195 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %8196 = extractvalue %dx.types.CBufRet.f32 %8195, 3
  %8197 = fsub fast float 1.000000e+00, %4306
  %8198 = call float @dx.op.unary.f32(i32 7, float %8197)  ; Saturate(value)
  %8199 = fadd fast float %8185, %4305
  %8200 = fmul fast float %8199, %4306
  %8201 = fmul fast float %8198, %8196
  %8202 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %4307, i32 undef)  ; BufferLoad(srv,index,wot)
  %8203 = extractvalue %dx.types.ResRet.i32 %8202, 3
  %8204 = bitcast i32 %8203 to float
  %8205 = fsub fast float %8187, %8204
  %8206 = fsub fast float %8189, %8204
  %8207 = fsub fast float %8191, %8204
  %8208 = fmul fast float %8205, %237
  %8209 = fmul fast float %8206, %237
  %8210 = fmul fast float %8207, %237
  %8211 = fadd fast float %8208, %8204
  %8212 = fadd fast float %8209, %8204
  %8213 = fadd fast float %8210, %8204
  %8214 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %8215 = extractvalue %dx.types.CBufRet.f32 %8214, 3
  %8216 = fmul fast float %8183, %5634
  %8217 = fmul fast float %8184, %5635
  %8218 = fmul fast float %8185, %5636
  %8219 = fcmp fast ogt float %98, %257
  %8220 = and i1 %8219, %4433
  %8221 = or i1 %4512, %8220
  %8222 = icmp eq i32 %4432, 2
  %8223 = fcmp fast ole float %98, %257
  %8224 = and i1 %8223, %8222
  %8225 = or i1 %8224, %8221
  br i1 %8220, label %8226, label %8483

; <label>:8226                                    ; preds = %8179
  %8227 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %8228 = extractvalue %dx.types.CBufRet.f32 %8227, 2
  %8229 = extractvalue %dx.types.CBufRet.f32 %8227, 3
  %8230 = fmul fast float %8228, %111
  %8231 = fmul fast float %8229, %112
  %8232 = call float @dx.op.unary.f32(i32 7, float %8230)  ; Saturate(value)
  %8233 = call float @dx.op.unary.f32(i32 7, float %8231)  ; Saturate(value)
  %8234 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %45, float %8232, float %8233, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8235 = extractvalue %dx.types.ResRet.f32 %8234, 0
  %8236 = extractvalue %dx.types.ResRet.f32 %8234, 1
  %8237 = extractvalue %dx.types.ResRet.f32 %8234, 2
  %8238 = extractvalue %dx.types.ResRet.f32 %8234, 3
  %8239 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %45, float %8232, float %8233, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8240 = extractvalue %dx.types.ResRet.f32 %8239, 0
  %8241 = extractvalue %dx.types.ResRet.f32 %8239, 1
  %8242 = extractvalue %dx.types.ResRet.f32 %8239, 2
  %8243 = extractvalue %dx.types.ResRet.f32 %8239, 3
  %8244 = call float @dx.op.binary.f32(i32 35, float %8236, float %8237)  ; FMax(a,b)
  %8245 = call float @dx.op.binary.f32(i32 35, float %8235, float %8244)  ; FMax(a,b)
  %8246 = call float @dx.op.binary.f32(i32 35, float %8245, float %8238)  ; FMax(a,b)
  %8247 = call float @dx.op.binary.f32(i32 36, float %8241, float %8242)  ; FMin(a,b)
  %8248 = call float @dx.op.binary.f32(i32 36, float %8240, float %8247)  ; FMin(a,b)
  %8249 = call float @dx.op.binary.f32(i32 36, float %8248, float %8243)  ; FMin(a,b)
  %8250 = fmul fast float %8246, 2.550000e+02
  %8251 = fadd fast float %8250, 0x3F70101020000000
  %8252 = fptoui float %8251 to i32
  %8253 = fmul fast float %8249, 2.550000e+02
  %8254 = fadd fast float %8253, 0x3F70101020000000
  %8255 = fptoui float %8254 to i32
  %8256 = icmp ult i32 %8252, %8255
  br i1 %8256, label %8257, label %8425

; <label>:8257                                    ; preds = %8226
  %8258 = fcmp fast ogt float %97, 9.843750e-01
  %8259 = fadd fast float %98, -4.000000e+00
  %8260 = select i1 %8258, float -4.000000e+00, float %8259
  %8261 = call float @dx.op.binary.f32(i32 35, float %8260, float 0.000000e+00)  ; FMax(a,b)
  %8262 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %8263 = extractvalue %dx.types.CBufRet.f32 %8262, 0
  %8264 = fadd fast float %8263, %8261
  %8265 = extractvalue %dx.types.CBufRet.f32 %8262, 2
  %8266 = fmul fast float %8264, %8265
  %8267 = call float @dx.op.unary.f32(i32 23, float %8266)  ; Log(value)
  %8268 = extractvalue %dx.types.CBufRet.f32 %8262, 3
  %8269 = fmul fast float %8268, %8267
  %8270 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8271 = extractvalue %dx.types.CBufRet.f32 %8270, 2
  %8272 = fmul fast float %8269, %8271
  %8273 = call float @dx.op.unary.f32(i32 7, float %8272)  ; Saturate(value)
  %8274 = uitofp i32 %8252 to float
  %8275 = uitofp i32 %8255 to float
  %8276 = fadd fast float %8274, 5.000000e-01
  %8277 = fadd fast float %8275, 5.000000e-01
  %8278 = fmul fast float %8271, %8276
  %8279 = fmul fast float %8271, %8277
  %8280 = fadd fast float %8278, 0x3F0FFB4800000000
  %8281 = fadd fast float %8279, 0xBF0FFB4800000000
  %8282 = call float @dx.op.binary.f32(i32 35, float %8273, float %8280)  ; FMax(a,b)
  %8283 = call float @dx.op.binary.f32(i32 36, float %8282, float %8281)  ; FMin(a,b)
  %8284 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %8285 = extractvalue %dx.types.CBufRet.f32 %8284, 1
  %8286 = extractvalue %dx.types.CBufRet.f32 %8284, 2
  %8287 = extractvalue %dx.types.CBufRet.f32 %8284, 0
  %8288 = fmul fast float %8285, %8283
  %8289 = fadd fast float %8287, %8288
  %8290 = fadd fast float %8287, %8286
  %8291 = fsub fast float %8285, %8286
  %8292 = fadd fast float %8291, %8287
  %8293 = call float @dx.op.binary.f32(i32 35, float %8289, float %8290)  ; FMax(a,b)
  %8294 = call float @dx.op.binary.f32(i32 36, float %8293, float %8292)  ; FMin(a,b)
  %8295 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %43, float %8232, float %8233, float %8294, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8296 = extractvalue %dx.types.ResRet.f32 %8295, 0
  %8297 = extractvalue %dx.types.ResRet.f32 %8295, 1
  %8298 = extractvalue %dx.types.ResRet.f32 %8295, 2
  %8299 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %8300 = extractvalue %dx.types.CBufRet.i32 %8299, 0
  %8301 = extractvalue %dx.types.CBufRet.i32 %8299, 1
  %8302 = uitofp i32 %8300 to float
  %8303 = uitofp i32 %8301 to float
  %8304 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %8305 = extractvalue %dx.types.CBufRet.f32 %8304, 0
  %8306 = extractvalue %dx.types.CBufRet.f32 %8304, 1
  %8307 = fmul fast float %8302, %8232
  %8308 = fmul fast float %8303, %8233
  %8309 = fadd fast float %8307, -5.000000e-01
  %8310 = fadd fast float %8308, -5.000000e-01
  %8311 = call float @dx.op.unary.f32(i32 22, float %8309)  ; Frc(value)
  %8312 = call float @dx.op.unary.f32(i32 22, float %8310)  ; Frc(value)
  %8313 = fmul fast float %8311, %8311
  %8314 = fmul fast float %8313, %8311
  %8315 = fsub fast float 3.000000e+00, %8311
  %8316 = fmul fast float %8313, %8315
  %8317 = fmul fast float %8311, 3.000000e+00
  %8318 = fmul fast float %8314, 3.000000e+00
  %8319 = fmul fast float %8313, 6.000000e+00
  %8320 = fsub fast float %8318, %8319
  %8321 = fadd fast float %8320, 4.000000e+00
  %8322 = fmul fast float %8321, 0x3FC5555560000000
  %8323 = fmul fast float %8314, -3.000000e+00
  %8324 = fadd fast float %8313, %8311
  %8325 = fmul fast float %8324, 3.000000e+00
  %8326 = fadd fast float %8323, 1.000000e+00
  %8327 = fadd fast float %8326, %8325
  %8328 = fmul fast float %8314, 0x3FC5555560000000
  %8329 = fmul fast float %8312, %8312
  %8330 = fmul fast float %8329, %8312
  %8331 = fsub fast float 3.000000e+00, %8312
  %8332 = fmul fast float %8329, %8331
  %8333 = fmul fast float %8312, 3.000000e+00
  %8334 = fmul fast float %8330, 3.000000e+00
  %8335 = fmul fast float %8329, 6.000000e+00
  %8336 = fsub fast float %8334, %8335
  %8337 = fadd fast float %8336, 4.000000e+00
  %8338 = fmul fast float %8337, 0x3FC5555560000000
  %8339 = fmul fast float %8330, -3.000000e+00
  %8340 = fadd fast float %8329, %8312
  %8341 = fmul fast float %8340, 3.000000e+00
  %8342 = fadd fast float %8339, 1.000000e+00
  %8343 = fadd fast float %8342, %8341
  %8344 = fmul fast float %8330, 0x3FC5555560000000
  %8345 = fadd fast float %8311, 1.000000e+00
  %8346 = fsub fast float 1.000000e+00, %8317
  %8347 = fadd fast float %8346, %8316
  %8348 = fadd fast float %8347, %8321
  %8349 = fmul fast float %8348, 0x3FC5555560000000
  %8350 = fdiv fast float %8322, %8349
  %8351 = fsub fast float %8345, %8350
  %8352 = fsub fast float 1.000000e+00, %8311
  %8353 = fadd fast float %8327, %8314
  %8354 = fmul fast float %8353, 0x3FC5555560000000
  %8355 = fdiv fast float %8328, %8354
  %8356 = fadd fast float %8352, %8355
  %8357 = fadd fast float %8312, 1.000000e+00
  %8358 = fsub fast float 1.000000e+00, %8333
  %8359 = fadd fast float %8358, %8332
  %8360 = fadd fast float %8359, %8337
  %8361 = fmul fast float %8360, 0x3FC5555560000000
  %8362 = fdiv fast float %8338, %8361
  %8363 = fsub fast float %8357, %8362
  %8364 = fsub fast float 1.000000e+00, %8312
  %8365 = fadd fast float %8343, %8330
  %8366 = fmul fast float %8365, 0x3FC5555560000000
  %8367 = fdiv fast float %8344, %8366
  %8368 = fadd fast float %8367, %8364
  %8369 = fmul fast float %8351, %8305
  %8370 = fsub fast float %8232, %8369
  %8371 = fmul fast float %8356, %8305
  %8372 = fadd fast float %8371, %8232
  %8373 = fmul fast float %8368, %8306
  %8374 = fadd fast float %8373, %8233
  %8375 = fmul fast float %8363, %8306
  %8376 = fsub fast float %8233, %8375
  %8377 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %43, float %8370, float %8376, float %8294, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8378 = extractvalue %dx.types.ResRet.f32 %8377, 0
  %8379 = extractvalue %dx.types.ResRet.f32 %8377, 1
  %8380 = extractvalue %dx.types.ResRet.f32 %8377, 2
  %8381 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %43, float %8372, float %8376, float %8294, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8382 = extractvalue %dx.types.ResRet.f32 %8381, 0
  %8383 = extractvalue %dx.types.ResRet.f32 %8381, 1
  %8384 = extractvalue %dx.types.ResRet.f32 %8381, 2
  %8385 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %43, float %8370, float %8374, float %8294, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8386 = extractvalue %dx.types.ResRet.f32 %8385, 0
  %8387 = extractvalue %dx.types.ResRet.f32 %8385, 1
  %8388 = extractvalue %dx.types.ResRet.f32 %8385, 2
  %8389 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %43, float %8372, float %8374, float %8294, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8390 = extractvalue %dx.types.ResRet.f32 %8389, 0
  %8391 = extractvalue %dx.types.ResRet.f32 %8389, 1
  %8392 = extractvalue %dx.types.ResRet.f32 %8389, 2
  %8393 = fsub fast float %8386, %8378
  %8394 = fsub fast float %8387, %8379
  %8395 = fsub fast float %8388, %8380
  %8396 = fmul fast float %8393, %8366
  %8397 = fmul fast float %8394, %8366
  %8398 = fmul fast float %8395, %8366
  %8399 = fadd fast float %8396, %8378
  %8400 = fadd fast float %8397, %8379
  %8401 = fadd fast float %8398, %8380
  %8402 = fsub fast float %8390, %8382
  %8403 = fsub fast float %8391, %8383
  %8404 = fsub fast float %8392, %8384
  %8405 = fmul fast float %8402, %8366
  %8406 = fmul fast float %8403, %8366
  %8407 = fmul fast float %8404, %8366
  %8408 = fsub fast float %8382, %8399
  %8409 = fadd fast float %8408, %8405
  %8410 = fsub fast float %8383, %8400
  %8411 = fadd fast float %8410, %8406
  %8412 = fsub fast float %8384, %8401
  %8413 = fadd fast float %8412, %8407
  %8414 = fmul fast float %8409, %8354
  %8415 = fmul fast float %8411, %8354
  %8416 = fmul fast float %8413, %8354
  %8417 = fadd fast float %8414, %8399
  %8418 = fadd fast float %8415, %8400
  %8419 = fadd fast float %8416, %8401
  %8420 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8421 = extractvalue %dx.types.CBufRet.f32 %8420, 1
  %8422 = fmul fast float %8417, %8421
  %8423 = fmul fast float %8418, %8421
  %8424 = fmul fast float %8419, %8421
  br label %8425

; <label>:8425                                    ; preds = %8257, %8226
  %8426 = phi float [ %8296, %8257 ], [ 1.000000e+00, %8226 ]
  %8427 = phi float [ %8297, %8257 ], [ 1.000000e+00, %8226 ]
  %8428 = phi float [ %8298, %8257 ], [ 1.000000e+00, %8226 ]
  %8429 = phi float [ %8422, %8257 ], [ 0.000000e+00, %8226 ]
  %8430 = phi float [ %8423, %8257 ], [ 0.000000e+00, %8226 ]
  %8431 = phi float [ %8424, %8257 ], [ 0.000000e+00, %8226 ]
  %8432 = fmul fast float %8429, %8211
  %8433 = fmul fast float %8430, %8212
  %8434 = fmul fast float %8431, %8213
  %8435 = call float @dx.op.dot3.f32(i32 55, float %8426, float %8427, float %8428, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8436 = call float @dx.op.dot3.f32(i32 55, float %8432, float %8433, float %8434, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8437 = select i1 %296, float %8435, float %8426
  %8438 = select i1 %296, float %8435, float %8427
  %8439 = select i1 %296, float 1.000000e+00, float %8428
  %8440 = select i1 %296, float %8436, float %8432
  %8441 = select i1 %296, float 0.000000e+00, float %8433
  %8442 = select i1 %296, float 0.000000e+00, float %8434
  %8443 = fmul fast float %8437, %8216
  %8444 = fmul fast float %8438, %8217
  %8445 = fmul fast float %8439, %8218
  %8446 = fadd fast float %8443, %8440
  %8447 = fadd fast float %8444, %8441
  %8448 = fadd fast float %8442, %8445
  %8449 = fmul fast float %8437, %8180
  %8450 = fmul fast float %8438, %8181
  %8451 = fmul fast float %8439, %8182
  %8452 = fmul fast float %139, %8228
  %8453 = fmul fast float %141, %8229
  %8454 = fsub fast float 1.000000e+00, %8452
  %8455 = fsub fast float 1.000000e+00, %8453
  %8456 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %8457 = extractvalue %dx.types.CBufRet.f32 %8456, 0
  %8458 = extractvalue %dx.types.CBufRet.f32 %8456, 1
  %8459 = extractvalue %dx.types.CBufRet.f32 %8456, 2
  %8460 = fmul fast float %8454, %8457
  %8461 = fmul fast float %8454, %8458
  %8462 = fmul fast float %8454, %8459
  %8463 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %8464 = extractvalue %dx.types.CBufRet.f32 %8463, 0
  %8465 = extractvalue %dx.types.CBufRet.f32 %8463, 1
  %8466 = extractvalue %dx.types.CBufRet.f32 %8463, 2
  %8467 = fmul fast float %8455, %8464
  %8468 = fmul fast float %8455, %8465
  %8469 = fmul fast float %8455, %8466
  %8470 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %8471 = extractvalue %dx.types.CBufRet.f32 %8470, 0
  %8472 = extractvalue %dx.types.CBufRet.f32 %8470, 1
  %8473 = extractvalue %dx.types.CBufRet.f32 %8470, 2
  %8474 = fadd fast float %8467, %8471
  %8475 = fadd fast float %8474, %8460
  %8476 = fadd fast float %8468, %8472
  %8477 = fadd fast float %8476, %8461
  %8478 = fadd fast float %8469, %8473
  %8479 = fadd fast float %8478, %8462
  %8480 = fmul fast float %8475, %257
  %8481 = fmul fast float %8477, %257
  %8482 = fmul fast float %8479, %257
  br label %8483

; <label>:8483                                    ; preds = %8425, %8179
  %8484 = phi float [ %8480, %8425 ], [ %190, %8179 ]
  %8485 = phi float [ %8481, %8425 ], [ %191, %8179 ]
  %8486 = phi float [ %8482, %8425 ], [ %192, %8179 ]
  %8487 = phi float [ %257, %8425 ], [ %98, %8179 ]
  %8488 = phi float [ %8446, %8425 ], [ %8216, %8179 ]
  %8489 = phi float [ %8447, %8425 ], [ %8217, %8179 ]
  %8490 = phi float [ %8448, %8425 ], [ %8218, %8179 ]
  %8491 = phi float [ %8449, %8425 ], [ %8180, %8179 ]
  %8492 = phi float [ %8450, %8425 ], [ %8181, %8179 ]
  %8493 = phi float [ %8451, %8425 ], [ %8182, %8179 ]
  %8494 = phi float [ %8426, %8425 ], [ 1.000000e+00, %8179 ]
  br i1 %8225, label %9649, label %8495

; <label>:8495                                    ; preds = %8483
  %8496 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %8497 = extractvalue %dx.types.CBufRet.f32 %8496, 0
  %8498 = extractvalue %dx.types.CBufRet.f32 %8496, 1
  %8499 = extractvalue %dx.types.CBufRet.f32 %8496, 2
  %8500 = extractvalue %dx.types.CBufRet.f32 %8496, 3
  %8501 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %8502 = extractvalue %dx.types.CBufRet.f32 %8501, 0
  %8503 = extractvalue %dx.types.CBufRet.f32 %8501, 1
  %8504 = extractvalue %dx.types.CBufRet.f32 %8501, 2
  %8505 = extractvalue %dx.types.CBufRet.f32 %8501, 3
  %8506 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %8507 = extractvalue %dx.types.CBufRet.f32 %8506, 0
  %8508 = extractvalue %dx.types.CBufRet.f32 %8506, 1
  %8509 = extractvalue %dx.types.CBufRet.f32 %8506, 2
  %8510 = extractvalue %dx.types.CBufRet.f32 %8506, 3
  %8511 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %8512 = extractvalue %dx.types.CBufRet.f32 %8511, 0
  %8513 = extractvalue %dx.types.CBufRet.f32 %8511, 1
  %8514 = extractvalue %dx.types.CBufRet.f32 %8511, 2
  %8515 = extractvalue %dx.types.CBufRet.f32 %8511, 3
  %8516 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %8517 = extractvalue %dx.types.CBufRet.f32 %8516, 3
  %8518 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %8519 = extractvalue %dx.types.CBufRet.f32 %8518, 3
  %8520 = extractvalue %dx.types.CBufRet.f32 %8518, 0
  %8521 = extractvalue %dx.types.CBufRet.f32 %8518, 1
  %8522 = extractvalue %dx.types.CBufRet.f32 %8518, 2
  %8523 = fcmp fast olt float %8522, -5.000000e-01
  %8524 = call float @dx.op.dot3.f32(i32 55, float %8484, float %8485, float %8486, float %8484, float %8485, float %8486)  ; Dot3(ax,ay,az,bx,by,bz)
  %8525 = call float @dx.op.unary.f32(i32 25, float %8524)  ; Rsqrt(value)
  %8526 = fmul fast float %8525, %8524
  %8527 = fmul fast float %8525, %8484
  %8528 = fmul fast float %8525, %8485
  %8529 = fmul fast float %8525, %8486
  %8530 = fadd fast float %8526, %8500
  %8531 = call float @dx.op.dot3.f32(i32 55, float %8527, float %8528, float %8529, float %8497, float %8498, float %8499)  ; Dot3(ax,ay,az,bx,by,bz)
  %8532 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8533 = extractvalue %dx.types.CBufRet.i32 %8532, 1
  %8534 = and i32 %8533, 1
  %8535 = icmp ne i32 %8534, 0
  %8536 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %8537 = extractvalue %dx.types.CBufRet.f32 %8536, 2
  %8538 = fcmp fast ogt float %8537, 0.000000e+00
  %8539 = and i1 %8535, %8538
  br i1 %8539, label %8540, label %8946, !dx.controlflow.hints !127

; <label>:8540                                    ; preds = %8495
  %8541 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %8542 = extractvalue %dx.types.CBufRet.f32 %8541, 3
  %8543 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8544 = extractvalue %dx.types.CBufRet.f32 %8543, 2
  %8545 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8546 = extractvalue %dx.types.CBufRet.f32 %8545, 2
  %8547 = fsub fast float %8544, %8546
  %8548 = and i32 %8533, 2
  %8549 = extractvalue %dx.types.CBufRet.i32 %8532, 0
  %8550 = call i32 @dx.op.binary.i32(i32 40, i32 %8549, i32 3)  ; UMin(a,b)
  %8551 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %8552 = extractvalue %dx.types.CBufRet.f32 %8551, 0
  %8553 = extractvalue %dx.types.CBufRet.f32 %8551, 1
  %8554 = extractvalue %dx.types.CBufRet.f32 %8545, 0
  %8555 = extractvalue %dx.types.CBufRet.f32 %8545, 1
  %8556 = fsub fast float %8552, %8554
  %8557 = fsub fast float %8553, %8555
  %8558 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %8559 = extractvalue %dx.types.CBufRet.f32 %8558, 0
  %8560 = fcmp fast ogt float %8559, 0.000000e+00
  %8561 = fsub fast float -0.000000e+00, %8556
  %8562 = fsub fast float -0.000000e+00, %8557
  %8563 = call float @dx.op.dot2.f32(i32 54, float %8527, float %8528, float %8527, float %8528)  ; Dot2(ax,ay,bx,by)
  %8564 = call float @dx.op.dot2.f32(i32 54, float %8527, float %8528, float %8561, float %8562)  ; Dot2(ax,ay,bx,by)
  %8565 = fmul fast float %8564, 2.000000e+00
  %8566 = call float @dx.op.dot2.f32(i32 54, float %8561, float %8562, float %8561, float %8562)  ; Dot2(ax,ay,bx,by)
  %8567 = fmul fast float %8559, %8559
  %8568 = fsub fast float %8566, %8567
  %8569 = fmul fast float %8565, %8565
  %8570 = fmul fast float %8563, 4.000000e+00
  %8571 = fmul fast float %8570, %8568
  %8572 = fsub fast float %8569, %8571
  %8573 = fcmp fast ogt float %8572, 0.000000e+00
  br i1 %8573, label %8574, label %8589

; <label>:8574                                    ; preds = %8540
  %8575 = fcmp fast ogt float %8565, 0.000000e+00
  %8576 = call float @dx.op.unary.f32(i32 24, float %8572)  ; Sqrt(value)
  %8577 = fsub fast float -0.000000e+00, %8576
  %8578 = select i1 %8575, float %8576, float %8577
  %8579 = fadd fast float %8578, %8565
  %8580 = fmul float %8579, -5.000000e-01
  %8581 = fdiv fast float %8580, %8563
  %8582 = call float @dx.op.binary.f32(i32 35, float %8581, float 0.000000e+00)  ; FMax(a,b)
  %8583 = call float @dx.op.binary.f32(i32 36, float %8526, float %8582)  ; FMin(a,b)
  %8584 = fdiv fast float %8568, %8580
  %8585 = call float @dx.op.binary.f32(i32 35, float %8584, float 0.000000e+00)  ; FMax(a,b)
  %8586 = call float @dx.op.binary.f32(i32 36, float %8526, float %8585)  ; FMin(a,b)
  %8587 = call float @dx.op.binary.f32(i32 36, float %8583, float %8586)  ; FMin(a,b)
  %8588 = call float @dx.op.binary.f32(i32 35, float %8583, float %8586)  ; FMax(a,b)
  br label %8589

; <label>:8589                                    ; preds = %8574, %8540
  %8590 = phi float [ %8588, %8574 ], [ -1.000000e+00, %8540 ]
  %8591 = phi float [ %8587, %8574 ], [ -1.000000e+00, %8540 ]
  %8592 = phi i1 [ true, %8574 ], [ false, %8540 ]
  %8593 = and i1 %8560, %8592
  br i1 %8593, label %8594, label %8596

; <label>:8594                                    ; preds = %8589
  %8595 = fcmp fast oeq float %8591, %8590
  br i1 %8595, label %8899, label %8597

; <label>:8596                                    ; preds = %8589
  br i1 %8560, label %8899, label %8597

; <label>:8597                                    ; preds = %8596, %8594
  %8598 = phi float [ %8526, %8596 ], [ %8590, %8594 ]
  %8599 = phi float [ 0.000000e+00, %8596 ], [ %8591, %8594 ]
  %8600 = icmp ne i32 %8548, 0
  %8601 = fmul fast float %8598, %8529
  %8602 = fadd fast float %8601, %8542
  %8603 = fmul fast float %8602, %8598
  %8604 = select i1 %8600, float 0.000000e+00, float %8603
  %8605 = fcmp fast oeq float %8529, 0.000000e+00
  %8606 = fdiv fast float %8547, %8529
  %8607 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8606)  ; FMax(a,b)
  %8608 = select i1 %8605, float %8598, float %8607
  %8609 = call float @dx.op.binary.f32(i32 36, float %8598, float %8608)  ; FMin(a,b)
  %8610 = fcmp fast ogt float %8529, 0.000000e+00
  %8611 = fcmp fast olt float %8547, 0.000000e+00
  br i1 %8610, label %8612, label %8669

; <label>:8612                                    ; preds = %8597
  %8613 = icmp eq i32 %8548, 0
  br i1 %8611, label %8614, label %8658

; <label>:8614                                    ; preds = %8612
  %8615 = select i1 %8613, float %8598, float 0.000000e+00
  %8616 = fsub fast float -0.000000e+00, %8615
  %8617 = call float @dx.op.unary.f32(i32 6, float %8616)  ; FAbs(value)
  %8618 = fmul fast float %8615, %8529
  %8619 = fadd fast float %8618, %8542
  %8620 = fmul fast float %8617, %8619
  %8621 = fsub fast float %8604, %8620
  %8622 = fsub fast float %8598, %8617
  %8623 = select i1 %8613, float %8622, float 0.000000e+00
  %8624 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8625 = extractvalue %dx.types.CBufRet.f32 %8624, 0
  %8626 = extractvalue %dx.types.CBufRet.f32 %8624, 1
  %8627 = extractvalue %dx.types.CBufRet.f32 %8624, 2
  %8628 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8629 = extractvalue %dx.types.CBufRet.f32 %8628, 0
  %8630 = extractvalue %dx.types.CBufRet.f32 %8628, 1
  %8631 = extractvalue %dx.types.CBufRet.f32 %8628, 2
  %8632 = extractvalue %dx.types.CBufRet.f32 %8628, 3
  %8633 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8634 = extractvalue %dx.types.CBufRet.f32 %8633, 3
  %8635 = call float @dx.op.binary.f32(i32 36, float %8621, float %8634)  ; FMin(a,b)
  %8636 = fmul fast float %8632, %8623
  %8637 = call float @dx.op.unary.f32(i32 7, float %8636)  ; Saturate(value)
  %8638 = fsub fast float %8629, %8625
  %8639 = fsub fast float %8630, %8626
  %8640 = fsub fast float %8631, %8627
  %8641 = fmul fast float %8637, %8638
  %8642 = fmul fast float %8637, %8639
  %8643 = fmul fast float %8637, %8640
  %8644 = fadd fast float %8641, %8625
  %8645 = fadd fast float %8642, %8626
  %8646 = fadd fast float %8643, %8627
  %8647 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8648 = extractvalue %dx.types.CBufRet.f32 %8647, 0
  %8649 = extractvalue %dx.types.CBufRet.f32 %8647, 1
  %8650 = fadd fast float %8649, %8648
  %8651 = call float @dx.op.unary.f32(i32 7, float %8650)  ; Saturate(value)
  %8652 = extractvalue %dx.types.CBufRet.f32 %8647, 2
  %8653 = extractvalue %dx.types.CBufRet.f32 %8647, 3
  %8654 = fadd fast float %8653, %8652
  %8655 = call float @dx.op.unary.f32(i32 7, float %8654)  ; Saturate(value)
  %8656 = fmul fast float %8651, %8635
  %8657 = fmul fast float %8656, %8655
  br label %8899

; <label>:8658                                    ; preds = %8612
  br i1 %8613, label %8659, label %8680

; <label>:8659                                    ; preds = %8658
  %8660 = call float @dx.op.binary.f32(i32 36, float %8609, float %8599)  ; FMin(a,b)
  %8661 = fsub fast float %8609, %8660
  %8662 = fsub fast float %8661, %8598
  %8663 = call float @dx.op.unary.f32(i32 6, float %8662)  ; FAbs(value)
  %8664 = fadd fast float %8661, %8598
  %8665 = fmul fast float %8664, %8529
  %8666 = fadd fast float %8665, %8542
  %8667 = fmul fast float %8666, %8663
  %8668 = fsub fast float %8604, %8667
  br label %8680

; <label>:8669                                    ; preds = %8597
  br i1 %8611, label %8670, label %8680

; <label>:8670                                    ; preds = %8669
  %8671 = call float @dx.op.binary.f32(i32 35, float %8599, float %8609)  ; FMax(a,b)
  %8672 = icmp eq i32 %8548, 0
  %8673 = select i1 %8672, float %8609, float 0.000000e+00
  %8674 = fsub fast float -0.000000e+00, %8673
  %8675 = call float @dx.op.unary.f32(i32 6, float %8674)  ; FAbs(value)
  %8676 = fmul fast float %8673, %8529
  %8677 = fadd fast float %8676, %8542
  %8678 = fmul fast float %8675, %8677
  %8679 = fsub fast float %8604, %8678
  br label %8680

; <label>:8680                                    ; preds = %8670, %8669, %8659, %8658
  %8681 = phi float [ %8599, %8658 ], [ %8599, %8659 ], [ %8671, %8670 ], [ %8599, %8669 ]
  %8682 = phi float [ 0.000000e+00, %8658 ], [ %8663, %8659 ], [ %8675, %8670 ], [ 0.000000e+00, %8669 ]
  %8683 = phi float [ %8604, %8658 ], [ %8668, %8659 ], [ %8679, %8670 ], [ %8604, %8669 ]
  %8684 = phi float [ %8609, %8658 ], [ %8609, %8659 ], [ %8598, %8670 ], [ %8598, %8669 ]
  %8685 = getelementptr inbounds [3 x float], [3 x float]* %105, i32 0, i32 0
  store float -1.000000e+00, float* %8685, align 4, !tbaa !116, !noalias !128
  %8686 = getelementptr inbounds [3 x float], [3 x float]* %105, i32 0, i32 1
  store float -1.000000e+00, float* %8686, align 4, !tbaa !116, !noalias !128
  %8687 = getelementptr inbounds [3 x float], [3 x float]* %105, i32 0, i32 2
  store float -1.000000e+00, float* %8687, align 4, !tbaa !116, !noalias !128
  %8688 = getelementptr inbounds [3 x float], [3 x float]* %106, i32 0, i32 0
  store float -1.000000e+00, float* %8688, align 4, !tbaa !116, !noalias !128
  %8689 = getelementptr inbounds [3 x float], [3 x float]* %106, i32 0, i32 1
  store float -1.000000e+00, float* %8689, align 4, !tbaa !116, !noalias !128
  %8690 = getelementptr inbounds [3 x float], [3 x float]* %106, i32 0, i32 2
  store float -1.000000e+00, float* %8690, align 4, !tbaa !116, !noalias !128
  %8691 = icmp sgt i32 %8550, 0
  br i1 %8691, label %8692, label %8753

; <label>:8692                                    ; preds = %8680
  br label %8693

; <label>:8693                                    ; preds = %8742, %8692
  %8694 = phi i32 [ %8743, %8742 ], [ 0, %8692 ]
  %8695 = phi i32 [ %8744, %8742 ], [ 0, %8692 ]
  %8696 = add nuw i32 %8695, 171
  %8697 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 %8696)  ; CBufferLoadLegacy(handle,regIndex)
  %8698 = extractvalue %dx.types.CBufRet.f32 %8697, 0
  %8699 = extractvalue %dx.types.CBufRet.f32 %8697, 1
  %8700 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8701 = extractvalue %dx.types.CBufRet.f32 %8700, 0
  %8702 = extractvalue %dx.types.CBufRet.f32 %8700, 1
  %8703 = fsub fast float %8698, %8701
  %8704 = fsub fast float %8699, %8702
  %8705 = extractvalue %dx.types.CBufRet.f32 %8697, 2
  %8706 = fsub fast float -0.000000e+00, %8703
  %8707 = fsub fast float -0.000000e+00, %8704
  %8708 = call float @dx.op.dot2.f32(i32 54, float %8527, float %8528, float %8706, float %8707)  ; Dot2(ax,ay,bx,by)
  %8709 = fmul fast float %8708, 2.000000e+00
  %8710 = call float @dx.op.dot2.f32(i32 54, float %8706, float %8707, float %8706, float %8707)  ; Dot2(ax,ay,bx,by)
  %8711 = fmul fast float %8705, %8705
  %8712 = fsub fast float %8710, %8711
  %8713 = fmul fast float %8709, %8709
  %8714 = fmul fast float %8570, %8712
  %8715 = fsub fast float %8713, %8714
  %8716 = fcmp fast ogt float %8715, 0.000000e+00
  br i1 %8716, label %8717, label %8732

; <label>:8717                                    ; preds = %8693
  %8718 = fcmp fast ogt float %8709, 0.000000e+00
  %8719 = call float @dx.op.unary.f32(i32 24, float %8715)  ; Sqrt(value)
  %8720 = fsub fast float -0.000000e+00, %8719
  %8721 = select i1 %8718, float %8719, float %8720
  %8722 = fadd fast float %8721, %8709
  %8723 = fmul float %8722, -5.000000e-01
  %8724 = fdiv fast float %8723, %8563
  %8725 = call float @dx.op.binary.f32(i32 35, float %8724, float 0.000000e+00)  ; FMax(a,b)
  %8726 = call float @dx.op.binary.f32(i32 36, float %8598, float %8725)  ; FMin(a,b)
  %8727 = fdiv fast float %8712, %8723
  %8728 = call float @dx.op.binary.f32(i32 35, float %8727, float 0.000000e+00)  ; FMax(a,b)
  %8729 = call float @dx.op.binary.f32(i32 36, float %8598, float %8728)  ; FMin(a,b)
  %8730 = call float @dx.op.binary.f32(i32 36, float %8726, float %8729)  ; FMin(a,b)
  %8731 = call float @dx.op.binary.f32(i32 35, float %8726, float %8729)  ; FMax(a,b)
  br label %8732

; <label>:8732                                    ; preds = %8717, %8693
  %8733 = phi float [ %8731, %8717 ], [ -1.000000e+00, %8693 ]
  %8734 = phi float [ %8730, %8717 ], [ -1.000000e+00, %8693 ]
  %8735 = phi i1 [ true, %8717 ], [ false, %8693 ]
  br i1 %8735, label %8736, label %8742

; <label>:8736                                    ; preds = %8732
  %8737 = call float @dx.op.binary.f32(i32 35, float %8681, float %8734)  ; FMax(a,b)
  %8738 = getelementptr inbounds [3 x float], [3 x float]* %105, i32 0, i32 %8695
  store float %8737, float* %8738, align 4, !tbaa !116, !noalias !128
  %8739 = call float @dx.op.binary.f32(i32 35, float %8681, float %8733)  ; FMax(a,b)
  %8740 = getelementptr inbounds [3 x float], [3 x float]* %106, i32 0, i32 %8695
  store float %8739, float* %8740, align 4, !tbaa !116, !noalias !128
  %8741 = add nsw i32 %8694, 1
  br label %8742

; <label>:8742                                    ; preds = %8736, %8732
  %8743 = phi i32 [ %8741, %8736 ], [ %8694, %8732 ]
  %8744 = add nuw nsw i32 %8695, 1
  %8745 = icmp eq i32 %8744, %8550
  br i1 %8745, label %8746, label %8693

; <label>:8746                                    ; preds = %8742
  %8747 = load float, float* %8687, align 4, !tbaa !116, !alias.scope !144, !noalias !147
  %8748 = load float, float* %8686, align 4, !tbaa !116, !alias.scope !150, !noalias !151
  %8749 = load float, float* %8685, align 4, !tbaa !116, !alias.scope !152, !noalias !153
  %8750 = load float, float* %8690, align 4, !tbaa !116, !alias.scope !154, !noalias !157
  %8751 = load float, float* %8689, align 4, !tbaa !116, !alias.scope !160, !noalias !161
  %8752 = load float, float* %8688, align 4, !tbaa !116, !alias.scope !162, !noalias !163
  br label %8753

; <label>:8753                                    ; preds = %8746, %8680
  %8754 = phi float [ -1.000000e+00, %8680 ], [ %8752, %8746 ]
  %8755 = phi float [ -1.000000e+00, %8680 ], [ %8751, %8746 ]
  %8756 = phi float [ -1.000000e+00, %8680 ], [ %8750, %8746 ]
  %8757 = phi float [ -1.000000e+00, %8680 ], [ %8749, %8746 ]
  %8758 = phi float [ -1.000000e+00, %8680 ], [ %8748, %8746 ]
  %8759 = phi float [ -1.000000e+00, %8680 ], [ %8747, %8746 ]
  %8760 = phi i32 [ 0, %8680 ], [ %8743, %8746 ]
  %8761 = call float @dx.op.binary.f32(i32 36, float %8758, float %8759)  ; FMin(a,b)
  %8762 = call float @dx.op.binary.f32(i32 36, float %8757, float %8761)  ; FMin(a,b)
  %8763 = call float @dx.op.binary.f32(i32 35, float %8757, float %8758)  ; FMax(a,b)
  %8764 = call float @dx.op.binary.f32(i32 36, float %8763, float %8759)  ; FMin(a,b)
  %8765 = call float @dx.op.binary.f32(i32 36, float %8757, float %8758)  ; FMin(a,b)
  %8766 = call float @dx.op.binary.f32(i32 35, float %8765, float %8764)  ; FMax(a,b)
  %8767 = call float @dx.op.binary.f32(i32 35, float %8758, float %8759)  ; FMax(a,b)
  %8768 = call float @dx.op.binary.f32(i32 35, float %8757, float %8767)  ; FMax(a,b)
  store float %8762, float* %8685, align 4, !tbaa !116, !alias.scope !152, !noalias !153
  store float %8766, float* %8686, align 4, !tbaa !116, !alias.scope !150, !noalias !151
  store float %8768, float* %8687, align 4, !tbaa !116, !alias.scope !144, !noalias !147
  %8769 = call float @dx.op.binary.f32(i32 36, float %8755, float %8756)  ; FMin(a,b)
  %8770 = call float @dx.op.binary.f32(i32 36, float %8754, float %8769)  ; FMin(a,b)
  %8771 = call float @dx.op.binary.f32(i32 35, float %8754, float %8755)  ; FMax(a,b)
  %8772 = call float @dx.op.binary.f32(i32 36, float %8771, float %8756)  ; FMin(a,b)
  %8773 = call float @dx.op.binary.f32(i32 36, float %8754, float %8755)  ; FMin(a,b)
  %8774 = call float @dx.op.binary.f32(i32 35, float %8773, float %8772)  ; FMax(a,b)
  %8775 = call float @dx.op.binary.f32(i32 35, float %8755, float %8756)  ; FMax(a,b)
  %8776 = call float @dx.op.binary.f32(i32 35, float %8754, float %8775)  ; FMax(a,b)
  store float %8770, float* %8688, align 4, !tbaa !116, !alias.scope !162, !noalias !163
  store float %8774, float* %8689, align 4, !tbaa !116, !alias.scope !160, !noalias !161
  store float %8776, float* %8690, align 4, !tbaa !116, !alias.scope !154, !noalias !157
  %8777 = sub nsw i32 3, %8760
  %8778 = icmp sgt i32 %8777, 2
  br i1 %8778, label %8779, label %8817

; <label>:8779                                    ; preds = %8753
  %8780 = icmp eq i32 %8548, 0
  %8781 = fsub fast float %8598, %8682
  %8782 = select i1 %8780, float %8781, float %8682
  %8783 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8784 = extractvalue %dx.types.CBufRet.f32 %8783, 0
  %8785 = extractvalue %dx.types.CBufRet.f32 %8783, 1
  %8786 = extractvalue %dx.types.CBufRet.f32 %8783, 2
  %8787 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8788 = extractvalue %dx.types.CBufRet.f32 %8787, 0
  %8789 = extractvalue %dx.types.CBufRet.f32 %8787, 1
  %8790 = extractvalue %dx.types.CBufRet.f32 %8787, 2
  %8791 = extractvalue %dx.types.CBufRet.f32 %8787, 3
  %8792 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8793 = extractvalue %dx.types.CBufRet.f32 %8792, 3
  %8794 = call float @dx.op.binary.f32(i32 36, float %8683, float %8793)  ; FMin(a,b)
  %8795 = fmul fast float %8791, %8782
  %8796 = call float @dx.op.unary.f32(i32 7, float %8795)  ; Saturate(value)
  %8797 = fsub fast float %8788, %8784
  %8798 = fsub fast float %8789, %8785
  %8799 = fsub fast float %8790, %8786
  %8800 = fmul fast float %8796, %8797
  %8801 = fmul fast float %8796, %8798
  %8802 = fmul fast float %8796, %8799
  %8803 = fadd fast float %8800, %8784
  %8804 = fadd fast float %8801, %8785
  %8805 = fadd fast float %8802, %8786
  %8806 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8807 = extractvalue %dx.types.CBufRet.f32 %8806, 0
  %8808 = extractvalue %dx.types.CBufRet.f32 %8806, 1
  %8809 = fadd fast float %8808, %8807
  %8810 = call float @dx.op.unary.f32(i32 7, float %8809)  ; Saturate(value)
  %8811 = extractvalue %dx.types.CBufRet.f32 %8806, 2
  %8812 = extractvalue %dx.types.CBufRet.f32 %8806, 3
  %8813 = fadd fast float %8812, %8811
  %8814 = call float @dx.op.unary.f32(i32 7, float %8813)  ; Saturate(value)
  %8815 = fmul fast float %8810, %8794
  %8816 = fmul fast float %8815, %8814
  br label %8899

; <label>:8817                                    ; preds = %8753
  %8818 = getelementptr inbounds [3 x float], [3 x float]* %105, i32 0, i32 %8777
  %8819 = load float, float* %8818, align 4, !tbaa !116, !noalias !128
  %8820 = fcmp fast olt float %8819, %8684
  %8821 = icmp sgt i32 %8760, 0
  %8822 = and i1 %8821, %8820
  br i1 %8822, label %8823, label %8860

; <label>:8823                                    ; preds = %8817
  br label %8824

; <label>:8824                                    ; preds = %8853, %8823
  %8825 = phi float [ %8854, %8853 ], [ %8682, %8823 ]
  %8826 = phi float [ %8855, %8853 ], [ %8683, %8823 ]
  %8827 = phi float [ %8835, %8853 ], [ %8819, %8823 ]
  %8828 = phi i32 [ %8832, %8853 ], [ %8777, %8823 ]
  %8829 = getelementptr inbounds [3 x float], [3 x float]* %106, i32 0, i32 %8828
  %8830 = load float, float* %8829, align 4, !tbaa !116, !noalias !128
  %8831 = icmp slt i32 %8828, 2
  %8832 = add nsw i32 %8828, 1
  %8833 = getelementptr inbounds [3 x float], [3 x float]* %105, i32 0, i32 %8832
  %8834 = load float, float* %8833, align 4, !tbaa !116, !noalias !128
  %8835 = select i1 %8831, float %8834, float %8598
  %8836 = call float @dx.op.binary.f32(i32 36, float %8835, float %8830)  ; FMin(a,b)
  %8837 = call float @dx.op.binary.f32(i32 36, float %8684, float %8836)  ; FMin(a,b)
  %8838 = icmp eq i32 %8548, 0
  %8839 = fadd fast float %8837, %8827
  %8840 = fmul fast float %8839, %8529
  %8841 = fadd fast float %8840, %8542
  br i1 %8838, label %8847, label %8842

; <label>:8842                                    ; preds = %8824
  %8843 = fsub fast float %8837, %8827
  %8844 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8843)  ; FMax(a,b)
  %8845 = fmul fast float %8844, %8841
  %8846 = fadd fast float %8845, %8826
  br label %8853

; <label>:8847                                    ; preds = %8824
  %8848 = fsub fast float %8827, %8837
  %8849 = call float @dx.op.unary.f32(i32 6, float %8848)  ; FAbs(value)
  %8850 = fadd fast float %8849, %8825
  %8851 = fmul fast float %8849, %8841
  %8852 = fsub fast float %8826, %8851
  br label %8853

; <label>:8853                                    ; preds = %8847, %8842
  %8854 = phi float [ %8844, %8842 ], [ %8850, %8847 ]
  %8855 = phi float [ %8846, %8842 ], [ %8852, %8847 ]
  %8856 = fcmp fast olt float %8835, %8684
  %8857 = icmp slt i32 %8832, 3
  %8858 = and i1 %8857, %8856
  br i1 %8858, label %8824, label %8859

; <label>:8859                                    ; preds = %8853
  br label %8860

; <label>:8860                                    ; preds = %8859, %8817
  %8861 = phi float [ %8682, %8817 ], [ %8854, %8859 ]
  %8862 = phi float [ %8683, %8817 ], [ %8855, %8859 ]
  %8863 = fsub fast float %8598, %8861
  %8864 = select i1 %8600, float %8861, float %8863
  %8865 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8866 = extractvalue %dx.types.CBufRet.f32 %8865, 0
  %8867 = extractvalue %dx.types.CBufRet.f32 %8865, 1
  %8868 = extractvalue %dx.types.CBufRet.f32 %8865, 2
  %8869 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8870 = extractvalue %dx.types.CBufRet.f32 %8869, 0
  %8871 = extractvalue %dx.types.CBufRet.f32 %8869, 1
  %8872 = extractvalue %dx.types.CBufRet.f32 %8869, 2
  %8873 = extractvalue %dx.types.CBufRet.f32 %8869, 3
  %8874 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8875 = extractvalue %dx.types.CBufRet.f32 %8874, 3
  %8876 = call float @dx.op.binary.f32(i32 36, float %8862, float %8875)  ; FMin(a,b)
  %8877 = fmul fast float %8873, %8864
  %8878 = call float @dx.op.unary.f32(i32 7, float %8877)  ; Saturate(value)
  %8879 = fsub fast float %8870, %8866
  %8880 = fsub fast float %8871, %8867
  %8881 = fsub fast float %8872, %8868
  %8882 = fmul fast float %8878, %8879
  %8883 = fmul fast float %8878, %8880
  %8884 = fmul fast float %8878, %8881
  %8885 = fadd fast float %8882, %8866
  %8886 = fadd fast float %8883, %8867
  %8887 = fadd fast float %8884, %8868
  %8888 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8889 = extractvalue %dx.types.CBufRet.f32 %8888, 0
  %8890 = extractvalue %dx.types.CBufRet.f32 %8888, 1
  %8891 = fadd fast float %8890, %8889
  %8892 = call float @dx.op.unary.f32(i32 7, float %8891)  ; Saturate(value)
  %8893 = extractvalue %dx.types.CBufRet.f32 %8888, 2
  %8894 = extractvalue %dx.types.CBufRet.f32 %8888, 3
  %8895 = fadd fast float %8894, %8893
  %8896 = call float @dx.op.unary.f32(i32 7, float %8895)  ; Saturate(value)
  %8897 = fmul fast float %8892, %8876
  %8898 = fmul fast float %8897, %8896
  br label %8899

; <label>:8899                                    ; preds = %8860, %8779, %8614, %8596, %8594
  %8900 = phi float [ %8623, %8614 ], [ %8782, %8779 ], [ %8864, %8860 ], [ 0.000000e+00, %8594 ], [ 0.000000e+00, %8596 ]
  %8901 = phi float [ %8657, %8614 ], [ %8816, %8779 ], [ %8898, %8860 ], [ 0.000000e+00, %8594 ], [ 0.000000e+00, %8596 ]
  %8902 = phi float [ %8644, %8614 ], [ %8803, %8779 ], [ %8885, %8860 ], [ 0.000000e+00, %8594 ], [ 0.000000e+00, %8596 ]
  %8903 = phi float [ %8645, %8614 ], [ %8804, %8779 ], [ %8886, %8860 ], [ 0.000000e+00, %8594 ], [ 0.000000e+00, %8596 ]
  %8904 = phi float [ %8646, %8614 ], [ %8805, %8779 ], [ %8887, %8860 ], [ 0.000000e+00, %8594 ], [ 0.000000e+00, %8596 ]
  %8905 = fmul fast float %8537, %8901
  %8906 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8907 = extractvalue %dx.types.CBufRet.f32 %8906, 2
  %8908 = fsub fast float %8544, %8907
  %8909 = fcmp fast olt float %8905, -2.000000e+01
  %8910 = call float @dx.op.unary.f32(i32 21, float %8905)  ; Exp(value)
  %8911 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %8912 = extractvalue %dx.types.CBufRet.f32 %8911, 2
  %8913 = extractvalue %dx.types.CBufRet.f32 %8911, 3
  %8914 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %8915 = extractvalue %dx.types.CBufRet.f32 %8914, 2
  %8916 = fmul fast float %8913, %8908
  %8917 = call float @dx.op.unary.f32(i32 7, float %8916)  ; Saturate(value)
  %8918 = fsub fast float 1.000000e+00, %8917
  %8919 = fmul fast float %8529, 5.000000e-01
  %8920 = fadd fast float %8919, 5.000000e-01
  %8921 = call float @dx.op.unary.f32(i32 7, float %8920)  ; Saturate(value)
  %8922 = fsub fast float 1.000000e+00, %8921
  %8923 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %8918)  ; FMax(a,b)
  %8924 = fdiv fast float %8922, %8923
  %8925 = fsub fast float %8908, %8486
  %8926 = call float @dx.op.unary.f32(i32 6, float %8925)  ; FAbs(value)
  %8927 = fmul fast float %8926, %8912
  %8928 = call float @dx.op.unary.f32(i32 7, float %8924)  ; Saturate(value)
  %8929 = fsub fast float 1.000000e+00, %8927
  %8930 = fmul fast float %8929, %8928
  %8931 = fadd fast float %8930, %8927
  %8932 = fmul fast float %8915, %8908
  %8933 = call float @dx.op.unary.f32(i32 7, float %8932)  ; Saturate(value)
  %8934 = fsub fast float 1.000000e+00, %8931
  %8935 = fmul fast float %8934, %8933
  %8936 = fadd fast float %8935, %8931
  %8937 = call float @dx.op.unary.f32(i32 7, float %8936)  ; Saturate(value)
  %8938 = fadd fast float %8910, -1.000000e+00
  %8939 = select i1 %8909, float -1.000000e+00, float %8938
  %8940 = fmul fast float %8937, %8939
  %8941 = fadd fast float %8940, 1.000000e+00
  %8942 = fsub fast float -0.000000e+00, %8940
  %8943 = fmul fast float %8902, %8942
  %8944 = fmul fast float %8903, %8942
  %8945 = fmul fast float %8904, %8942
  br label %8946

; <label>:8946                                    ; preds = %8899, %8495
  %8947 = phi float [ %8900, %8899 ], [ 0.000000e+00, %8495 ]
  %8948 = phi float [ %8941, %8899 ], [ 1.000000e+00, %8495 ]
  %8949 = phi float [ %8943, %8899 ], [ 0.000000e+00, %8495 ]
  %8950 = phi float [ %8944, %8899 ], [ 0.000000e+00, %8495 ]
  %8951 = phi float [ %8945, %8899 ], [ 0.000000e+00, %8495 ]
  %8952 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %8953 = extractvalue %dx.types.CBufRet.f32 %8952, 1
  %8954 = fsub fast float 1.000000e+00, %8948
  %8955 = fmul fast float %8954, %8530
  %8956 = fmul fast float %8955, %8953
  %8957 = fsub fast float %8530, %8956
  br i1 %8523, label %8958, label %8987, !dx.controlflow.hints !164

; <label>:8958                                    ; preds = %8946
  %8959 = fmul fast float %8531, %8520
  %8960 = fadd fast float %8959, %8521
  %8961 = call float @dx.op.unary.f32(i32 7, float %8960)  ; Saturate(value)
  %8962 = fmul fast float %8502, %8957
  %8963 = fsub fast float -0.000000e+00, %8962
  %8964 = fmul fast float %8503, %8957
  %8965 = fsub fast float -0.000000e+00, %8964
  %8966 = call float @dx.op.unary.f32(i32 21, float %8963)  ; Exp(value)
  %8967 = call float @dx.op.unary.f32(i32 21, float %8965)  ; Exp(value)
  %8968 = call float @dx.op.binary.f32(i32 35, float %8510, float %8966)  ; FMax(a,b)
  %8969 = call float @dx.op.binary.f32(i32 35, float %8510, float %8967)  ; FMax(a,b)
  %8970 = fsub fast float %8969, %8968
  %8971 = fmul fast float %8970, %8961
  %8972 = fadd fast float %8971, %8968
  %8973 = call float @dx.op.unary.f32(i32 7, float %8972)  ; Saturate(value)
  %8974 = fsub fast float %8507, %8512
  %8975 = fsub fast float %8508, %8513
  %8976 = fsub fast float %8509, %8514
  %8977 = fmul fast float %8961, %8974
  %8978 = fmul fast float %8961, %8975
  %8979 = fmul fast float %8961, %8976
  %8980 = fadd fast float %8977, %8512
  %8981 = fadd fast float %8978, %8513
  %8982 = fadd fast float %8979, %8514
  %8983 = fsub fast float 1.000000e+00, %8973
  %8984 = fmul fast float %8983, %8980
  %8985 = fmul fast float %8983, %8981
  %8986 = fmul fast float %8983, %8982
  br label %9046

; <label>:8987                                    ; preds = %8946
  %8988 = fmul fast float %8957, %8519
  %8989 = call float @dx.op.unary.f32(i32 7, float %8988)  ; Saturate(value)
  %8990 = fsub fast float 2.000000e+00, %8989
  %8991 = fmul fast float %8989, 9.921875e-01
  %8992 = fmul fast float %8991, %8990
  %8993 = fadd fast float %8992, 3.906250e-03
  %8994 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %45, float %8993, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8995 = extractvalue %dx.types.ResRet.f32 %8994, 0
  %8996 = fsub fast float %8989, %8995
  %8997 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8996)  ; FMax(a,b)
  %8998 = fmul fast float %8505, %8486
  %8999 = call float @dx.op.unary.f32(i32 6, float %8998)  ; FAbs(value)
  %9000 = fcmp fast ogt float %8999, 0x3EB0C6F7A0000000
  br i1 %9000, label %9001, label %9007, !dx.controlflow.hints !165

; <label>:9001                                    ; preds = %8987
  %9002 = fmul fast float %8998, 0xBFF7154760000000
  %9003 = call float @dx.op.unary.f32(i32 21, float %9002)  ; Exp(value)
  %9004 = fsub fast float 1.000000e+00, %9003
  %9005 = fdiv fast float %9004, %8998
  %9006 = fmul fast float %9005, %8515
  br label %9007

; <label>:9007                                    ; preds = %9001, %8987
  %9008 = phi float [ %9006, %9001 ], [ %8515, %8987 ]
  %9009 = fadd fast float %9008, %8517
  %9010 = fmul fast float %9009, %8997
  %9011 = fmul fast float %8502, %9010
  %9012 = fsub fast float -0.000000e+00, %9011
  %9013 = fmul fast float %8503, %9010
  %9014 = fsub fast float -0.000000e+00, %9013
  %9015 = fmul fast float %8504, %9010
  %9016 = fsub fast float -0.000000e+00, %9015
  %9017 = call float @dx.op.unary.f32(i32 21, float %9012)  ; Exp(value)
  %9018 = call float @dx.op.unary.f32(i32 21, float %9014)  ; Exp(value)
  %9019 = call float @dx.op.unary.f32(i32 21, float %9016)  ; Exp(value)
  %9020 = fmul fast float %8531, %8531
  %9021 = fadd fast float %9020, 1.000000e+00
  %9022 = fmul fast float %9021, 0x3FAE8EC8A0000000
  %9023 = fmul fast float %9022, %8512
  %9024 = fmul fast float %9022, %8513
  %9025 = fmul fast float %9022, %8514
  %9026 = fmul fast float %8531, %8510
  %9027 = fsub fast float 1.000000e+00, %9026
  %9028 = fmul fast float %8510, %8510
  %9029 = fsub fast float 1.000000e+00, %9028
  %9030 = fmul fast float %9029, 0x3FB45F3060000000
  %9031 = fmul fast float %9027, %9027
  %9032 = fdiv fast float 1.000000e+00, %9031
  %9033 = fmul fast float %9030, %9032
  %9034 = fmul fast float %9033, %8507
  %9035 = fmul fast float %9033, %8508
  %9036 = fmul fast float %9033, %8509
  %9037 = fadd fast float %9034, %9023
  %9038 = fadd fast float %9035, %9024
  %9039 = fadd fast float %9036, %9025
  %9040 = fsub fast float 1.000000e+00, %9017
  %9041 = fsub fast float 1.000000e+00, %9018
  %9042 = fsub fast float 1.000000e+00, %9019
  %9043 = fmul fast float %9037, %9040
  %9044 = fmul fast float %9038, %9041
  %9045 = fmul fast float %9039, %9042
  br label %9046

; <label>:9046                                    ; preds = %9007, %8958
  %9047 = phi float [ %8984, %8958 ], [ %9043, %9007 ]
  %9048 = phi float [ %8985, %8958 ], [ %9044, %9007 ]
  %9049 = phi float [ %8986, %8958 ], [ %9045, %9007 ]
  %9050 = phi float [ %8973, %8958 ], [ %9017, %9007 ]
  %9051 = phi float [ %8973, %8958 ], [ %9018, %9007 ]
  %9052 = phi float [ %8973, %8958 ], [ %9019, %9007 ]
  br i1 %8539, label %9053, label %9251, !dx.controlflow.hints !166

; <label>:9053                                    ; preds = %9046
  %9054 = extractvalue %dx.types.CBufRet.f32 %8952, 0
  %9055 = fmul fast float %9054, %8954
  %9056 = fsub fast float %8949, %9047
  %9057 = fsub fast float %8950, %9048
  %9058 = fsub fast float %8951, %9049
  %9059 = fmul fast float %9055, %9056
  %9060 = fmul fast float %9055, %9057
  %9061 = fmul fast float %9055, %9058
  %9062 = fadd fast float %9059, %9047
  %9063 = fadd fast float %9060, %9048
  %9064 = fadd fast float %9061, %9049
  %9065 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9050)  ; FMax(a,b)
  %9066 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9051)  ; FMax(a,b)
  %9067 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9052)  ; FMax(a,b)
  %9068 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8948)  ; FMax(a,b)
  %9069 = call float @dx.op.binary.f32(i32 35, float %8947, float %8957)  ; FMax(a,b)
  %9070 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %9069)  ; FMax(a,b)
  %9071 = fdiv fast float %8947, %9070
  %9072 = call float @dx.op.unary.f32(i32 7, float %9071)  ; Saturate(value)
  %9073 = fdiv fast float %8957, %9070
  %9074 = call float @dx.op.unary.f32(i32 7, float %9073)  ; Saturate(value)
  %9075 = fcmp fast une float %9068, 1.000000e+00
  br i1 %9075, label %9076, label %9089, !dx.controlflow.hints !167

; <label>:9076                                    ; preds = %9053
  %9077 = call float @dx.op.unary.f32(i32 23, float %9068)  ; Log(value)
  %9078 = fmul fast float %9077, 0x3FE62E4300000000
  %9079 = fmul fast float %8949, %9078
  %9080 = fsub fast float -0.000000e+00, %9079
  %9081 = fmul fast float %8950, %9078
  %9082 = fsub fast float -0.000000e+00, %9081
  %9083 = fmul fast float %8951, %9078
  %9084 = fsub fast float -0.000000e+00, %9083
  %9085 = fsub fast float 1.000000e+00, %9068
  %9086 = fdiv fast float %9080, %9085
  %9087 = fdiv fast float %9082, %9085
  %9088 = fdiv fast float %9084, %9085
  br label %9089

; <label>:9089                                    ; preds = %9076, %9053
  %9090 = phi float [ %9086, %9076 ], [ %8949, %9053 ]
  %9091 = phi float [ %9087, %9076 ], [ %8950, %9053 ]
  %9092 = phi float [ %9088, %9076 ], [ %8951, %9053 ]
  %9093 = phi float [ %9078, %9076 ], [ 0.000000e+00, %9053 ]
  %9094 = fcmp fast une float %9065, 1.000000e+00
  br i1 %9094, label %9095, label %9102, !dx.controlflow.hints !168

; <label>:9095                                    ; preds = %9089
  %9096 = call float @dx.op.unary.f32(i32 23, float %9065)  ; Log(value)
  %9097 = fmul fast float %9096, 0x3FE62E4300000000
  %9098 = fmul fast float %9062, %9097
  %9099 = fsub fast float -0.000000e+00, %9098
  %9100 = fsub fast float 1.000000e+00, %9065
  %9101 = fdiv fast float %9099, %9100
  br label %9102

; <label>:9102                                    ; preds = %9095, %9089
  %9103 = phi float [ %9101, %9095 ], [ %9062, %9089 ]
  %9104 = phi float [ %9097, %9095 ], [ 0.000000e+00, %9089 ]
  %9105 = fcmp fast une float %9066, 1.000000e+00
  br i1 %9105, label %9106, label %9113, !dx.controlflow.hints !168

; <label>:9106                                    ; preds = %9102
  %9107 = call float @dx.op.unary.f32(i32 23, float %9066)  ; Log(value)
  %9108 = fmul fast float %9107, 0x3FE62E4300000000
  %9109 = fmul fast float %9063, %9108
  %9110 = fsub fast float -0.000000e+00, %9109
  %9111 = fsub fast float 1.000000e+00, %9066
  %9112 = fdiv fast float %9110, %9111
  br label %9113

; <label>:9113                                    ; preds = %9106, %9102
  %9114 = phi float [ %9112, %9106 ], [ %9063, %9102 ]
  %9115 = phi float [ %9108, %9106 ], [ 0.000000e+00, %9102 ]
  %9116 = fcmp fast une float %9067, 1.000000e+00
  br i1 %9116, label %9117, label %9124, !dx.controlflow.hints !168

; <label>:9117                                    ; preds = %9113
  %9118 = call float @dx.op.unary.f32(i32 23, float %9067)  ; Log(value)
  %9119 = fmul fast float %9118, 0x3FE62E4300000000
  %9120 = fmul fast float %9064, %9119
  %9121 = fsub fast float -0.000000e+00, %9120
  %9122 = fsub fast float 1.000000e+00, %9067
  %9123 = fdiv fast float %9121, %9122
  br label %9124

; <label>:9124                                    ; preds = %9117, %9113
  %9125 = phi float [ %9123, %9117 ], [ %9064, %9113 ]
  %9126 = phi float [ %9119, %9117 ], [ 0.000000e+00, %9113 ]
  %9127 = fmul fast float %9090, %9074
  %9128 = fmul fast float %9091, %9074
  %9129 = fmul fast float %9092, %9074
  %9130 = fmul fast float %9093, %9074
  %9131 = fmul fast float %9103, %9072
  %9132 = fmul fast float %9114, %9072
  %9133 = fmul fast float %9125, %9072
  %9134 = fmul fast float %9104, %9072
  %9135 = fmul fast float %9115, %9072
  %9136 = fmul fast float %9126, %9072
  %9137 = fadd fast float %9131, %9127
  %9138 = fadd fast float %9132, %9128
  %9139 = fadd fast float %9133, %9129
  %9140 = fadd fast float %9134, %9130
  %9141 = fadd fast float %9135, %9130
  %9142 = fadd fast float %9136, %9130
  %9143 = fcmp fast une float %9140, 0.000000e+00
  br i1 %9143, label %9144, label %9151, !dx.controlflow.hints !169

; <label>:9144                                    ; preds = %9124
  %9145 = fmul fast float %9140, 0x3FF7154760000000
  %9146 = call float @dx.op.unary.f32(i32 21, float %9145)  ; Exp(value)
  %9147 = fsub fast float 1.000000e+00, %9146
  %9148 = fmul fast float %9137, %9147
  %9149 = fsub fast float -0.000000e+00, %9148
  %9150 = fdiv fast float %9149, %9140
  br label %9151

; <label>:9151                                    ; preds = %9144, %9124
  %9152 = phi float [ %9146, %9144 ], [ 1.000000e+00, %9124 ]
  %9153 = phi float [ %9150, %9144 ], [ %9137, %9124 ]
  %9154 = fcmp fast une float %9141, 0.000000e+00
  br i1 %9154, label %9155, label %9162, !dx.controlflow.hints !169

; <label>:9155                                    ; preds = %9151
  %9156 = fmul fast float %9141, 0x3FF7154760000000
  %9157 = call float @dx.op.unary.f32(i32 21, float %9156)  ; Exp(value)
  %9158 = fsub fast float 1.000000e+00, %9157
  %9159 = fmul fast float %9138, %9158
  %9160 = fsub fast float -0.000000e+00, %9159
  %9161 = fdiv fast float %9160, %9141
  br label %9162

; <label>:9162                                    ; preds = %9155, %9151
  %9163 = phi float [ %9157, %9155 ], [ 1.000000e+00, %9151 ]
  %9164 = phi float [ %9161, %9155 ], [ %9138, %9151 ]
  %9165 = fcmp fast une float %9142, 0.000000e+00
  br i1 %9165, label %9166, label %9173, !dx.controlflow.hints !169

; <label>:9166                                    ; preds = %9162
  %9167 = fmul fast float %9142, 0x3FF7154760000000
  %9168 = call float @dx.op.unary.f32(i32 21, float %9167)  ; Exp(value)
  %9169 = fsub fast float 1.000000e+00, %9168
  %9170 = fmul fast float %9139, %9169
  %9171 = fsub fast float -0.000000e+00, %9170
  %9172 = fdiv fast float %9171, %9142
  br label %9173

; <label>:9173                                    ; preds = %9166, %9162
  %9174 = phi float [ %9168, %9166 ], [ 1.000000e+00, %9162 ]
  %9175 = phi float [ %9172, %9166 ], [ %9139, %9162 ]
  %9176 = fcmp fast ogt float %9072, %9074
  br i1 %9176, label %9177, label %9197

; <label>:9177                                    ; preds = %9173
  %9178 = fsub fast float 1.000000e+00, %9074
  %9179 = fmul fast float %9090, %9178
  %9180 = fmul fast float %9091, %9178
  %9181 = fmul fast float %9092, %9178
  %9182 = fmul fast float %9093, %9178
  %9183 = fcmp fast une float %9182, 0.000000e+00
  br i1 %9183, label %9184, label %9235, !dx.controlflow.hints !170

; <label>:9184                                    ; preds = %9177
  %9185 = fmul fast float %9182, 0x3FF7154760000000
  %9186 = call float @dx.op.unary.f32(i32 21, float %9185)  ; Exp(value)
  %9187 = fsub fast float 1.000000e+00, %9186
  %9188 = fmul fast float %9179, %9187
  %9189 = fsub fast float -0.000000e+00, %9188
  %9190 = fmul fast float %9180, %9187
  %9191 = fsub fast float -0.000000e+00, %9190
  %9192 = fmul fast float %9181, %9187
  %9193 = fsub fast float -0.000000e+00, %9192
  %9194 = fdiv fast float %9189, %9182
  %9195 = fdiv fast float %9191, %9182
  %9196 = fdiv fast float %9193, %9182
  br label %9235

; <label>:9197                                    ; preds = %9173
  %9198 = fsub fast float 1.000000e+00, %9072
  %9199 = fmul fast float %9103, %9198
  %9200 = fmul fast float %9114, %9198
  %9201 = fmul fast float %9125, %9198
  %9202 = fmul fast float %9104, %9198
  %9203 = fmul fast float %9115, %9198
  %9204 = fmul fast float %9126, %9198
  %9205 = fcmp fast une float %9202, 0.000000e+00
  br i1 %9205, label %9206, label %9213, !dx.controlflow.hints !169

; <label>:9206                                    ; preds = %9197
  %9207 = fmul fast float %9202, 0x3FF7154760000000
  %9208 = call float @dx.op.unary.f32(i32 21, float %9207)  ; Exp(value)
  %9209 = fsub fast float 1.000000e+00, %9208
  %9210 = fmul fast float %9199, %9209
  %9211 = fsub fast float -0.000000e+00, %9210
  %9212 = fdiv fast float %9211, %9202
  br label %9213

; <label>:9213                                    ; preds = %9206, %9197
  %9214 = phi float [ %9212, %9206 ], [ %9199, %9197 ]
  %9215 = phi float [ %9208, %9206 ], [ 1.000000e+00, %9197 ]
  %9216 = fcmp fast une float %9203, 0.000000e+00
  br i1 %9216, label %9217, label %9224, !dx.controlflow.hints !169

; <label>:9217                                    ; preds = %9213
  %9218 = fmul fast float %9203, 0x3FF7154760000000
  %9219 = call float @dx.op.unary.f32(i32 21, float %9218)  ; Exp(value)
  %9220 = fsub fast float 1.000000e+00, %9219
  %9221 = fmul fast float %9200, %9220
  %9222 = fsub fast float -0.000000e+00, %9221
  %9223 = fdiv fast float %9222, %9203
  br label %9224

; <label>:9224                                    ; preds = %9217, %9213
  %9225 = phi float [ %9223, %9217 ], [ %9200, %9213 ]
  %9226 = phi float [ %9219, %9217 ], [ 1.000000e+00, %9213 ]
  %9227 = fcmp fast une float %9204, 0.000000e+00
  br i1 %9227, label %9228, label %9235, !dx.controlflow.hints !169

; <label>:9228                                    ; preds = %9224
  %9229 = fmul fast float %9204, 0x3FF7154760000000
  %9230 = call float @dx.op.unary.f32(i32 21, float %9229)  ; Exp(value)
  %9231 = fsub fast float 1.000000e+00, %9230
  %9232 = fmul fast float %9201, %9231
  %9233 = fsub fast float -0.000000e+00, %9232
  %9234 = fdiv fast float %9233, %9204
  br label %9235

; <label>:9235                                    ; preds = %9228, %9224, %9184, %9177
  %9236 = phi float [ %9234, %9228 ], [ %9196, %9184 ], [ %9181, %9177 ], [ %9201, %9224 ]
  %9237 = phi float [ %9225, %9228 ], [ %9195, %9184 ], [ %9180, %9177 ], [ %9225, %9224 ]
  %9238 = phi float [ %9214, %9228 ], [ %9194, %9184 ], [ %9179, %9177 ], [ %9214, %9224 ]
  %9239 = phi float [ %9230, %9228 ], [ %9186, %9184 ], [ 1.000000e+00, %9177 ], [ 1.000000e+00, %9224 ]
  %9240 = phi float [ %9226, %9228 ], [ %9186, %9184 ], [ 1.000000e+00, %9177 ], [ %9226, %9224 ]
  %9241 = phi float [ %9215, %9228 ], [ %9186, %9184 ], [ 1.000000e+00, %9177 ], [ %9215, %9224 ]
  %9242 = fmul fast float %9241, %9153
  %9243 = fmul fast float %9240, %9164
  %9244 = fmul fast float %9239, %9175
  %9245 = fadd fast float %9242, %9238
  %9246 = fadd fast float %9243, %9237
  %9247 = fadd fast float %9244, %9236
  %9248 = fmul fast float %9241, %9152
  %9249 = fmul fast float %9240, %9163
  %9250 = fmul fast float %9239, %9174
  br label %9251

; <label>:9251                                    ; preds = %9235, %9046
  %9252 = phi float [ %9250, %9235 ], [ %9052, %9046 ]
  %9253 = phi float [ %9249, %9235 ], [ %9051, %9046 ]
  %9254 = phi float [ %9248, %9235 ], [ %9050, %9046 ]
  %9255 = phi float [ %9247, %9235 ], [ %9049, %9046 ]
  %9256 = phi float [ %9246, %9235 ], [ %9048, %9046 ]
  %9257 = phi float [ %9245, %9235 ], [ %9047, %9046 ]
  %9258 = fmul fast float %9257, %8211
  %9259 = fmul fast float %9256, %8212
  %9260 = fmul fast float %9255, %8213
  %9261 = fmul fast float %9254, %8494
  %9262 = call float @dx.op.dot3.f32(i32 55, float %9254, float %9253, float %9252, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9263 = call float @dx.op.dot3.f32(i32 55, float %9258, float %9259, float %9260, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9264 = select i1 %296, float %9262, float %9254
  %9265 = select i1 %296, float %9262, float %9253
  %9266 = select i1 %296, float 1.000000e+00, float %9252
  %9267 = select i1 %296, float %9263, float %9258
  %9268 = select i1 %296, float 0.000000e+00, float %9259
  %9269 = select i1 %296, float 0.000000e+00, float %9260
  %9270 = fmul fast float %9264, %8488
  %9271 = fmul fast float %9265, %8489
  %9272 = fmul fast float %9266, %8490
  %9273 = fadd fast float %9270, %9267
  %9274 = fadd fast float %9271, %9268
  %9275 = fadd fast float %9269, %9272
  %9276 = fmul fast float %9264, %8491
  %9277 = fmul fast float %9265, %8492
  %9278 = fmul fast float %9266, %8493
  %9279 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %9280 = extractvalue %dx.types.CBufRet.i32 %9279, 0
  %9281 = icmp eq i32 %9280, 0
  br i1 %9281, label %9649, label %9282, !dx.controlflow.hints !171

; <label>:9282                                    ; preds = %9251
  %9283 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %9284 = extractvalue %dx.types.CBufRet.f32 %9283, 2
  %9285 = extractvalue %dx.types.CBufRet.f32 %9283, 3
  %9286 = fmul fast float %9284, %111
  %9287 = fmul fast float %9285, %112
  %9288 = fmul fast float %9286, 2.000000e+00
  %9289 = fmul fast float %9287, 2.000000e+00
  %9290 = fsub fast float 1.000000e+00, %9288
  %9291 = fsub fast float 1.000000e+00, %9289
  %9292 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %9293 = extractvalue %dx.types.CBufRet.f32 %9292, 0
  %9294 = extractvalue %dx.types.CBufRet.f32 %9292, 1
  %9295 = extractvalue %dx.types.CBufRet.f32 %9292, 2
  %9296 = fmul fast float %9290, %9293
  %9297 = fmul fast float %9290, %9294
  %9298 = fmul fast float %9290, %9295
  %9299 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %9300 = extractvalue %dx.types.CBufRet.f32 %9299, 0
  %9301 = extractvalue %dx.types.CBufRet.f32 %9299, 1
  %9302 = extractvalue %dx.types.CBufRet.f32 %9299, 2
  %9303 = fmul fast float %9291, %9300
  %9304 = fmul fast float %9291, %9301
  %9305 = fmul fast float %9291, %9302
  %9306 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %9307 = extractvalue %dx.types.CBufRet.f32 %9306, 0
  %9308 = extractvalue %dx.types.CBufRet.f32 %9306, 1
  %9309 = extractvalue %dx.types.CBufRet.f32 %9306, 2
  %9310 = fadd fast float %9303, %9307
  %9311 = fadd fast float %9310, %9296
  %9312 = fadd fast float %9304, %9308
  %9313 = fadd fast float %9312, %9297
  %9314 = fadd fast float %9305, %9309
  %9315 = fadd fast float %9314, %9298
  %9316 = fmul fast float %9311, %8487
  %9317 = fmul fast float %9313, %8487
  %9318 = fmul fast float %9315, %8487
  %9319 = fmul fast float %9316, %9316
  %9320 = fmul fast float %9317, %9317
  %9321 = fadd fast float %9319, %9320
  %9322 = fmul fast float %9318, %9318
  %9323 = fadd fast float %9321, %9322
  %9324 = call float @dx.op.unary.f32(i32 24, float %9323)  ; Sqrt(value)
  %9325 = extractvalue %dx.types.CBufRet.f32 %8214, 0
  %9326 = fsub fast float %9324, %9325
  %9327 = extractvalue %dx.types.CBufRet.f32 %8214, 2
  %9328 = fmul fast float %9326, %9327
  %9329 = call float @dx.op.unary.f32(i32 7, float %9328)  ; Saturate(value)
  %9330 = fadd fast float %9329, -5.000000e-01
  %9331 = fmul fast float %9330, 2.000000e+00
  %9332 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %9333 = extractvalue %dx.types.CBufRet.f32 %9332, 2
  %9334 = call float @dx.op.binary.f32(i32 36, float %9333, float %9331)  ; FMin(a,b)
  %9335 = fsub fast float -0.000000e+00, %9333
  %9336 = fcmp fast ogt float %9334, %9335
  br i1 %9336, label %9337, label %9649, !dx.controlflow.hints !172

; <label>:9337                                    ; preds = %9282
  %9338 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %9339 = extractvalue %dx.types.CBufRet.f32 %9338, 3
  %9340 = fcmp fast ogt float %9339, 0.000000e+00
  br i1 %9340, label %9341, label %9416, !dx.controlflow.hints !173

; <label>:9341                                    ; preds = %9337
  %9342 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %27, i32 0)  ; GetDimensions(handle,mipLevel)
  %9343 = extractvalue %dx.types.Dimensions %9342, 0
  %9344 = sitofp i32 %9343 to float
  %9345 = extractvalue %dx.types.Dimensions %9342, 1
  %9346 = sitofp i32 %9345 to float
  %9347 = fmul fast float %9286, %9344
  %9348 = fmul fast float %9287, %9346
  %9349 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %9350 = extractvalue %dx.types.CBufRet.f32 %9349, 1
  %9351 = fsub fast float -0.000000e+00, %9350
  %9352 = fptoui float %9351 to i32
  %9353 = fptoui float %9347 to i32
  %9354 = fptoui float %9348 to i32
  %9355 = and i32 %9352, 31
  %9356 = lshr i32 %9353, %9355
  %9357 = lshr i32 %9354, %9355
  %9358 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %27, i32 %9352, i32 %9356, i32 %9357, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %9359 = extractvalue %dx.types.ResRet.f32 %9358, 0
  %9360 = fcmp fast olt float %9359, -1.000000e+00
  %9361 = fcmp fast ogt float %9359, -1.000000e+00
  %9362 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %9363 = extractvalue %dx.types.CBufRet.f32 %9362, 1
  %9364 = select i1 %9361, float %9363, float 1.000000e+00
  %9365 = fadd fast float %9359, 1.000000e+00
  %9366 = fmul fast float %9364, %9365
  %9367 = call float @dx.op.unary.f32(i32 6, float %9366)  ; FAbs(value)
  %9368 = extractvalue %dx.types.CBufRet.f32 %9362, 3
  %9369 = fcmp fast oge float %9367, %9368
  %9370 = select i1 %9369, float 0x4197782600000000, float %9367
  %9371 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %9372 = extractvalue %dx.types.CBufRet.f32 %9371, 0
  %9373 = extractvalue %dx.types.CBufRet.f32 %9371, 1
  %9374 = extractvalue %dx.types.CBufRet.f32 %9371, 2
  %9375 = select i1 %9360, float %9372, float %9293
  %9376 = select i1 %9360, float %9373, float %9294
  %9377 = select i1 %9360, float %9374, float %9295
  %9378 = fmul fast float %9375, %9290
  %9379 = fmul fast float %9376, %9290
  %9380 = fmul fast float %9377, %9290
  %9381 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %9382 = extractvalue %dx.types.CBufRet.f32 %9381, 0
  %9383 = extractvalue %dx.types.CBufRet.f32 %9381, 1
  %9384 = extractvalue %dx.types.CBufRet.f32 %9381, 2
  %9385 = select i1 %9360, float %9382, float %9300
  %9386 = select i1 %9360, float %9383, float %9301
  %9387 = select i1 %9360, float %9384, float %9302
  %9388 = fmul fast float %9385, %9291
  %9389 = fmul fast float %9386, %9291
  %9390 = fmul fast float %9387, %9291
  %9391 = fadd fast float %9388, %9378
  %9392 = fadd fast float %9389, %9379
  %9393 = fadd fast float %9390, %9380
  %9394 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %9395 = extractvalue %dx.types.CBufRet.f32 %9394, 0
  %9396 = extractvalue %dx.types.CBufRet.f32 %9394, 1
  %9397 = extractvalue %dx.types.CBufRet.f32 %9394, 2
  %9398 = select i1 %9360, float %9395, float %9307
  %9399 = select i1 %9360, float %9396, float %9308
  %9400 = select i1 %9360, float %9397, float %9309
  %9401 = fadd fast float %9391, %9398
  %9402 = fadd fast float %9392, %9399
  %9403 = fadd fast float %9393, %9400
  %9404 = fmul fast float %9401, %9370
  %9405 = fmul fast float %9402, %9370
  %9406 = fmul fast float %9403, %9370
  %9407 = fmul fast float %9404, %9404
  %9408 = fmul fast float %9405, %9405
  %9409 = fadd fast float %9407, %9408
  %9410 = fmul fast float %9406, %9406
  %9411 = fadd fast float %9409, %9410
  %9412 = call float @dx.op.unary.f32(i32 24, float %9411)  ; Sqrt(value)
  %9413 = fsub fast float %9412, %9325
  %9414 = fmul fast float %9413, %9327
  %9415 = call float @dx.op.unary.f32(i32 7, float %9414)  ; Saturate(value)
  br label %9416

; <label>:9416                                    ; preds = %9341, %9337
  %9417 = phi float [ %9415, %9341 ], [ 1.000000e+00, %9337 ]
  %9418 = fmul fast float %9334, 5.000000e-01
  %9419 = fadd fast float %9418, 5.000000e-01
  %9420 = call float @dx.op.unary.f32(i32 22, float %9419)  ; Frc(value)
  %9421 = call float @dx.op.unary.f32(i32 27, float %9420)  ; Round_ni(value)
  %9422 = call float @dx.op.unary.f32(i32 22, float %9420)  ; Frc(value)
  %9423 = fmul fast float %9422, 2.000000e+00
  %9424 = fadd fast float %9423, -1.000000e+00
  %9425 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %45, float %9286, float %9287, float %9421, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9426 = extractvalue %dx.types.ResRet.f32 %9425, 0
  %9427 = extractvalue %dx.types.ResRet.f32 %9425, 1
  %9428 = extractvalue %dx.types.ResRet.f32 %9425, 2
  %9429 = extractvalue %dx.types.ResRet.f32 %9425, 3
  %9430 = fadd fast float %9426, -5.000000e-01
  %9431 = fadd fast float %9428, -5.000000e-01
  %9432 = fmul fast float %9430, 0xBFD5555560000000
  %9433 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %9431, float %9432)  ; FMad(a,b,c)
  %9434 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %9427, float 0.000000e+00)  ; FMad(a,b,c)
  %9435 = fadd fast float %9434, %9429
  %9436 = fmul fast float %9430, -7.500000e-01
  %9437 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %9431, float %9436)  ; FMad(a,b,c)
  %9438 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %9427, float 0.000000e+00)  ; FMad(a,b,c)
  %9439 = fadd fast float %9438, %9429
  %9440 = call float @dx.op.binary.f32(i32 35, float %9433, float -1.000000e+00)  ; FMax(a,b)
  %9441 = call float @dx.op.binary.f32(i32 35, float %9435, float -1.000000e+00)  ; FMax(a,b)
  %9442 = call float @dx.op.binary.f32(i32 35, float %9437, float -1.000000e+00)  ; FMax(a,b)
  %9443 = call float @dx.op.binary.f32(i32 35, float %9439, float -1.000000e+00)  ; FMax(a,b)
  %9444 = call float @dx.op.binary.f32(i32 36, float %9440, float 1.000000e+00)  ; FMin(a,b)
  %9445 = call float @dx.op.binary.f32(i32 36, float %9441, float 1.000000e+00)  ; FMin(a,b)
  %9446 = call float @dx.op.binary.f32(i32 36, float %9442, float 1.000000e+00)  ; FMin(a,b)
  %9447 = call float @dx.op.binary.f32(i32 36, float %9443, float 1.000000e+00)  ; FMin(a,b)
  %9448 = fcmp fast olt float %9444, 0x3FEFFF8020000000
  br i1 %9448, label %9449, label %9564, !dx.controlflow.hints !174

; <label>:9449                                    ; preds = %9416
  %9450 = extractvalue %dx.types.CBufRet.f32 %9332, 3
  %9451 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %9452 = extractvalue %dx.types.CBufRet.f32 %9451, 0
  %9453 = extractvalue %dx.types.CBufRet.f32 %9451, 1
  %9454 = extractvalue %dx.types.CBufRet.f32 %9451, 2
  %9455 = extractvalue %dx.types.CBufRet.f32 %9451, 3
  %9456 = fsub fast float %9452, %9444
  %9457 = fsub fast float %9453, %9445
  %9458 = fsub fast float %9454, %9446
  %9459 = fsub fast float %9455, %9447
  %9460 = fmul fast float %9456, %9450
  %9461 = fmul fast float %9457, %9450
  %9462 = fmul fast float %9458, %9450
  %9463 = fmul fast float %9459, %9450
  %9464 = fadd fast float %9460, %9444
  %9465 = fadd fast float %9461, %9445
  %9466 = fsub fast float -0.000000e+00, %9465
  %9467 = fadd fast float %9462, %9446
  %9468 = fadd fast float %9463, %9447
  %9469 = fmul fast float %9464, %9464
  %9470 = fsub fast float %9465, %9469
  %9471 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %9470)  ; FMax(a,b)
  %9472 = fdiv fast float 1.000000e+00, %9471
  %9473 = fmul fast float %9465, %9464
  %9474 = fsub fast float %9467, %9473
  %9475 = fsub fast float %9424, %9464
  %9476 = fmul fast float %9424, %9424
  %9477 = fsub fast float %9476, %9465
  %9478 = fmul fast float %9475, %9472
  %9479 = fmul fast float %9478, %9474
  %9480 = fsub fast float %9477, %9479
  %9481 = fmul fast float %9465, %9465
  %9482 = fsub fast float %9468, %9481
  %9483 = fmul fast float %9474, %9474
  %9484 = fmul fast float %9483, %9472
  %9485 = fsub fast float %9482, %9484
  %9486 = fdiv fast float %9480, %9485
  %9487 = fmul fast float %9474, %9486
  %9488 = fsub fast float %9475, %9487
  %9489 = fmul fast float %9488, %9472
  %9490 = fmul fast float %9489, %9464
  %9491 = fsub fast float 1.000000e+00, %9490
  %9492 = fmul fast float %9465, %9486
  %9493 = fsub fast float %9491, %9492
  %9494 = fmul fast float %9489, %9489
  %9495 = fmul fast float %9486, 4.000000e+00
  %9496 = fmul fast float %9495, %9493
  %9497 = fsub fast float %9494, %9496
  %9498 = call float @dx.op.unary.f32(i32 24, float %9497)  ; Sqrt(value)
  %9499 = fcmp fast oge float %9489, 0.000000e+00
  %9500 = fsub fast float -0.000000e+00, %9498
  %9501 = select i1 %9499, float %9500, float %9498
  %9502 = fsub fast float %9501, %9489
  %9503 = fdiv fast float %9502, %9486
  %9504 = fdiv fast float %9493, %9502
  %9505 = fmul fast float %9503, 5.000000e-01
  %9506 = fmul fast float %9504, 2.000000e+00
  %9507 = select i1 %9499, float %9505, float %9506
  %9508 = select i1 %9499, float %9506, float %9505
  %9509 = call float @dx.op.binary.f32(i32 35, float %9507, float %9508)  ; FMax(a,b)
  %9510 = call float @dx.op.binary.f32(i32 36, float %9507, float %9508)  ; FMin(a,b)
  %9511 = fcmp fast ogt float %9424, %9510
  br i1 %9511, label %9512, label %9522

; <label>:9512                                    ; preds = %9449
  %9513 = fsub fast float %9424, %9510
  %9514 = fsub fast float %9509, %9510
  %9515 = fmul fast float %9513, %9514
  %9516 = fmul fast float %9509, %9424
  %9517 = fadd fast float %9509, %9424
  %9518 = fmul fast float %9517, %9464
  %9519 = fadd fast float %9516, %9465
  %9520 = fsub fast float %9519, %9518
  %9521 = fdiv fast float %9520, %9515
  br label %9522

; <label>:9522                                    ; preds = %9512, %9449
  %9523 = phi float [ %9521, %9512 ], [ 0.000000e+00, %9449 ]
  %9524 = fcmp fast ogt float %9424, %9509
  %9525 = fsub fast float %9424, %9509
  br i1 %9524, label %9526, label %9536

; <label>:9526                                    ; preds = %9522
  %9527 = fsub fast float %9509, %9510
  %9528 = fmul fast float %9527, %9525
  %9529 = fmul fast float %9510, %9424
  %9530 = fadd fast float %9510, %9424
  %9531 = fmul fast float %9530, %9464
  %9532 = fsub fast float %9466, %9529
  %9533 = fadd fast float %9532, %9531
  %9534 = fdiv fast float %9533, %9528
  %9535 = fadd fast float %9534, %9523
  br label %9536

; <label>:9536                                    ; preds = %9526, %9522
  %9537 = phi float [ %9535, %9526 ], [ %9523, %9522 ]
  %9538 = fsub fast float %9424, %9510
  %9539 = fmul fast float %9538, %9525
  %9540 = fmul fast float %9510, %9509
  %9541 = fadd fast float %9510, %9509
  %9542 = fmul fast float %9541, %9464
  %9543 = fadd fast float %9540, %9465
  %9544 = fsub fast float %9543, %9542
  %9545 = fdiv fast float %9544, %9539
  %9546 = call float @dx.op.unary.f32(i32 7, float %9537)  ; Saturate(value)
  %9547 = fcmp fast oeq float %8215, 0.000000e+00
  %9548 = extractvalue %dx.types.CBufRet.f32 %9332, 0
  %9549 = fcmp fast oeq float %9548, 0.000000e+00
  %9550 = or i1 %9547, %9549
  %9551 = fmul fast float %9548, 2.000000e+00
  %9552 = fadd fast float %9333, %9334
  %9553 = fdiv fast float %9552, %9551
  %9554 = call float @dx.op.unary.f32(i32 7, float %9553)  ; Saturate(value)
  %9555 = fmul fast float %9554, 2.000000e+00
  %9556 = fsub fast float 3.000000e+00, %9555
  %9557 = fmul fast float %9554, %9554
  %9558 = fmul fast float %9557, %9556
  %9559 = select i1 %9550, float 1.000000e+00, float %9558
  %9560 = fmul fast float %9545, %8215
  %9561 = fadd fast float %9546, %9560
  %9562 = call float @dx.op.unary.f32(i32 7, float %9561)  ; Saturate(value)
  %9563 = fmul fast float %9559, %9562
  br label %9564

; <label>:9564                                    ; preds = %9536, %9416
  %9565 = phi float [ %9563, %9536 ], [ 0.000000e+00, %9416 ]
  %9566 = fsub fast float 1.000000e+00, %9565
  %9567 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %45, float %9286, float %9287, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9568 = extractvalue %dx.types.ResRet.f32 %9567, 0
  %9569 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %9570 = extractvalue %dx.types.CBufRet.i32 %9569, 2
  %9571 = icmp eq i32 %9570, 0
  br i1 %9571, label %9577, label %9572

; <label>:9572                                    ; preds = %9564
  %9573 = call float @dx.op.unary.f32(i32 7, float %9565)  ; Saturate(value)
  %9574 = fadd fast float %9568, -1.000000e+00
  %9575 = fmul fast float %9573, %9574
  %9576 = fadd fast float %9575, 1.000000e+00
  br label %9577

; <label>:9577                                    ; preds = %9572, %9564
  %9578 = phi float [ %9576, %9572 ], [ %9566, %9564 ]
  br i1 %9340, label %9579, label %9597

; <label>:9579                                    ; preds = %9577
  %9580 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %9581 = extractvalue %dx.types.CBufRet.f32 %9580, 1
  %9582 = fsub fast float %9417, %9581
  %9583 = call float @dx.op.unary.f32(i32 7, float %9582)  ; Saturate(value)
  %9584 = fsub fast float %9417, %9339
  %9585 = call float @dx.op.unary.f32(i32 7, float %9584)  ; Saturate(value)
  %9586 = fsub fast float %9583, %9585
  %9587 = fsub fast float %9419, %9585
  %9588 = fdiv fast float %9587, %9586
  %9589 = call float @dx.op.unary.f32(i32 7, float %9588)  ; Saturate(value)
  %9590 = fmul fast float %9589, 2.000000e+00
  %9591 = fsub fast float 3.000000e+00, %9590
  %9592 = fsub fast float %9568, %9578
  %9593 = fmul fast float %9589, %9589
  %9594 = fmul fast float %9593, %9592
  %9595 = fmul fast float %9594, %9591
  %9596 = fadd fast float %9595, %9578
  br label %9597

; <label>:9597                                    ; preds = %9579, %9577
  %9598 = phi float [ %9596, %9579 ], [ %9578, %9577 ]
  %9599 = call float @dx.op.binary.f32(i32 35, float %9568, float %9598)  ; FMax(a,b)
  %9600 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %9601 = extractvalue %dx.types.CBufRet.i32 %9600, 2
  %9602 = and i32 %9601, 1
  %9603 = icmp eq i32 %9602, 0
  %9604 = fcmp fast une float %9599, 1.000000e+00
  %9605 = and i1 %9604, %9603
  br i1 %9605, label %9606, label %9625

; <label>:9606                                    ; preds = %9597
  %9607 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %45, float %9286, float %9287, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9608 = extractvalue %dx.types.ResRet.f32 %9607, 0
  %9609 = extractvalue %dx.types.ResRet.f32 %9607, 1
  %9610 = extractvalue %dx.types.ResRet.f32 %9607, 2
  %9611 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9612 = extractvalue %dx.types.CBufRet.f32 %9611, 1
  %9613 = fmul fast float %9612, %9608
  %9614 = fmul fast float %9612, %9609
  %9615 = fmul fast float %9612, %9610
  %9616 = fcmp fast ogt float %9568, 0x3FEFFF2E40000000
  %9617 = fsub fast float 1.000000e+00, %9599
  %9618 = fsub fast float 1.000000e+00, %9568
  %9619 = fdiv fast float %9617, %9618
  %9620 = call float @dx.op.unary.f32(i32 7, float %9619)  ; Saturate(value)
  %9621 = select i1 %9616, float 0.000000e+00, float %9620
  %9622 = fmul fast float %9613, %9621
  %9623 = fmul fast float %9614, %9621
  %9624 = fmul fast float %9615, %9621
  br label %9625

; <label>:9625                                    ; preds = %9606, %9597
  %9626 = phi float [ 0.000000e+00, %9597 ], [ %9622, %9606 ]
  %9627 = phi float [ 0.000000e+00, %9597 ], [ %9623, %9606 ]
  %9628 = phi float [ 0.000000e+00, %9597 ], [ %9624, %9606 ]
  %9629 = fmul fast float %9626, %8211
  %9630 = fmul fast float %9627, %8212
  %9631 = fmul fast float %9628, %8213
  %9632 = fmul fast float %9599, %9261
  %9633 = call float @dx.op.dot3.f32(i32 55, float %9599, float %9599, float %9599, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9634 = call float @dx.op.dot3.f32(i32 55, float %9629, float %9630, float %9631, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9635 = select i1 %296, float %9633, float %9599
  %9636 = select i1 %296, float 1.000000e+00, float %9599
  %9637 = select i1 %296, float %9634, float %9629
  %9638 = select i1 %296, float 0.000000e+00, float %9630
  %9639 = select i1 %296, float 0.000000e+00, float %9631
  %9640 = fmul fast float %9635, %9273
  %9641 = fmul fast float %9635, %9274
  %9642 = fmul fast float %9636, %9275
  %9643 = fadd fast float %9640, %9637
  %9644 = fadd fast float %9641, %9638
  %9645 = fadd fast float %9639, %9642
  %9646 = fmul fast float %9635, %9276
  %9647 = fmul fast float %9635, %9277
  %9648 = fmul fast float %9636, %9278
  br label %9649

; <label>:9649                                    ; preds = %9625, %9282, %9251, %8483
  %9650 = phi float [ %8488, %8483 ], [ %9273, %9251 ], [ %9643, %9625 ], [ %9273, %9282 ]
  %9651 = phi float [ %8489, %8483 ], [ %9274, %9251 ], [ %9644, %9625 ], [ %9274, %9282 ]
  %9652 = phi float [ %8490, %8483 ], [ %9275, %9251 ], [ %9645, %9625 ], [ %9275, %9282 ]
  %9653 = phi float [ %8491, %8483 ], [ %9276, %9251 ], [ %9646, %9625 ], [ %9276, %9282 ]
  %9654 = phi float [ %8492, %8483 ], [ %9277, %9251 ], [ %9647, %9625 ], [ %9277, %9282 ]
  %9655 = phi float [ %8493, %8483 ], [ %9278, %9251 ], [ %9648, %9625 ], [ %9278, %9282 ]
  %9656 = phi float [ %8494, %8483 ], [ %9261, %9251 ], [ %9632, %9625 ], [ %9261, %9282 ]
  %9657 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %9658 = extractvalue %dx.types.CBufRet.f32 %9657, 2
  %9659 = extractvalue %dx.types.CBufRet.f32 %9657, 3
  %9660 = fmul fast float %9658, %111
  %9661 = fmul fast float %9659, %112
  %9662 = call float @dx.op.unary.f32(i32 7, float %9660)  ; Saturate(value)
  %9663 = call float @dx.op.unary.f32(i32 7, float %9661)  ; Saturate(value)
  %9664 = select i1 %8225, i32 2, i32 0
  %9665 = or i32 %9664, 1
  %9666 = uitofp i32 %9665 to float
  %9667 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %45, float %9662, float %9663, float %9666, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9668 = extractvalue %dx.types.ResRet.f32 %9667, 0
  %9669 = extractvalue %dx.types.ResRet.f32 %9667, 1
  %9670 = extractvalue %dx.types.ResRet.f32 %9667, 2
  %9671 = extractvalue %dx.types.ResRet.f32 %9667, 3
  %9672 = add nuw nsw i32 %9664, 2
  %9673 = uitofp i32 %9672 to float
  %9674 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %45, float %9662, float %9663, float %9673, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9675 = extractvalue %dx.types.ResRet.f32 %9674, 0
  %9676 = extractvalue %dx.types.ResRet.f32 %9674, 1
  %9677 = extractvalue %dx.types.ResRet.f32 %9674, 2
  %9678 = extractvalue %dx.types.ResRet.f32 %9674, 3
  %9679 = call float @dx.op.binary.f32(i32 35, float %9669, float %9670)  ; FMax(a,b)
  %9680 = call float @dx.op.binary.f32(i32 35, float %9668, float %9679)  ; FMax(a,b)
  %9681 = call float @dx.op.binary.f32(i32 35, float %9680, float %9671)  ; FMax(a,b)
  %9682 = call float @dx.op.binary.f32(i32 36, float %9676, float %9677)  ; FMin(a,b)
  %9683 = call float @dx.op.binary.f32(i32 36, float %9675, float %9682)  ; FMin(a,b)
  %9684 = call float @dx.op.binary.f32(i32 36, float %9683, float %9678)  ; FMin(a,b)
  %9685 = fmul fast float %9681, 2.550000e+02
  %9686 = fadd fast float %9685, 0x3F70101020000000
  %9687 = fptoui float %9686 to i32
  %9688 = fmul fast float %9684, 2.550000e+02
  %9689 = fadd fast float %9688, 0x3F70101020000000
  %9690 = fptoui float %9689 to i32
  %9691 = icmp ult i32 %9687, %9690
  br i1 %9691, label %9692, label %9861

; <label>:9692                                    ; preds = %9649
  %9693 = fcmp fast ogt float %97, 9.843750e-01
  %9694 = fadd fast float %8487, -4.000000e+00
  %9695 = select i1 %9693, float -4.000000e+00, float %9694
  %9696 = call float @dx.op.binary.f32(i32 35, float %9695, float 0.000000e+00)  ; FMax(a,b)
  %9697 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %9698 = extractvalue %dx.types.CBufRet.f32 %9697, 0
  %9699 = fadd fast float %9698, %9696
  %9700 = extractvalue %dx.types.CBufRet.f32 %9697, 2
  %9701 = fmul fast float %9699, %9700
  %9702 = call float @dx.op.unary.f32(i32 23, float %9701)  ; Log(value)
  %9703 = extractvalue %dx.types.CBufRet.f32 %9697, 3
  %9704 = fmul fast float %9703, %9702
  %9705 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %9706 = extractvalue %dx.types.CBufRet.f32 %9705, 2
  %9707 = fmul fast float %9704, %9706
  %9708 = call float @dx.op.unary.f32(i32 7, float %9707)  ; Saturate(value)
  %9709 = uitofp i32 %9687 to float
  %9710 = uitofp i32 %9690 to float
  %9711 = fadd fast float %9709, 5.000000e-01
  %9712 = fadd fast float %9710, 5.000000e-01
  %9713 = fmul fast float %9706, %9711
  %9714 = fmul fast float %9706, %9712
  %9715 = fadd fast float %9713, 0x3F0FFB4800000000
  %9716 = fadd fast float %9714, 0xBF0FFB4800000000
  %9717 = call float @dx.op.binary.f32(i32 35, float %9708, float %9715)  ; FMax(a,b)
  %9718 = call float @dx.op.binary.f32(i32 36, float %9717, float %9716)  ; FMin(a,b)
  %9719 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %9720 = extractvalue %dx.types.CBufRet.f32 %9719, 1
  %9721 = extractvalue %dx.types.CBufRet.f32 %9719, 2
  %9722 = extractvalue %dx.types.CBufRet.f32 %9719, 0
  %9723 = select i1 %8225, float %9722, float 0.000000e+00
  %9724 = fmul fast float %9720, %9718
  %9725 = fadd fast float %9723, %9724
  %9726 = fadd fast float %9723, %9721
  %9727 = fsub fast float %9720, %9721
  %9728 = fadd fast float %9727, %9723
  %9729 = call float @dx.op.binary.f32(i32 35, float %9725, float %9726)  ; FMax(a,b)
  %9730 = call float @dx.op.binary.f32(i32 36, float %9729, float %9728)  ; FMin(a,b)
  %9731 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %43, float %9662, float %9663, float %9730, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9732 = extractvalue %dx.types.ResRet.f32 %9731, 0
  %9733 = extractvalue %dx.types.ResRet.f32 %9731, 1
  %9734 = extractvalue %dx.types.ResRet.f32 %9731, 2
  %9735 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %9736 = extractvalue %dx.types.CBufRet.i32 %9735, 0
  %9737 = extractvalue %dx.types.CBufRet.i32 %9735, 1
  %9738 = uitofp i32 %9736 to float
  %9739 = uitofp i32 %9737 to float
  %9740 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %9741 = extractvalue %dx.types.CBufRet.f32 %9740, 0
  %9742 = extractvalue %dx.types.CBufRet.f32 %9740, 1
  %9743 = fmul fast float %9738, %9662
  %9744 = fmul fast float %9739, %9663
  %9745 = fadd fast float %9743, -5.000000e-01
  %9746 = fadd fast float %9744, -5.000000e-01
  %9747 = call float @dx.op.unary.f32(i32 22, float %9745)  ; Frc(value)
  %9748 = call float @dx.op.unary.f32(i32 22, float %9746)  ; Frc(value)
  %9749 = fmul fast float %9747, %9747
  %9750 = fmul fast float %9749, %9747
  %9751 = fsub fast float 3.000000e+00, %9747
  %9752 = fmul fast float %9749, %9751
  %9753 = fmul fast float %9747, 3.000000e+00
  %9754 = fmul fast float %9750, 3.000000e+00
  %9755 = fmul fast float %9749, 6.000000e+00
  %9756 = fsub fast float %9754, %9755
  %9757 = fadd fast float %9756, 4.000000e+00
  %9758 = fmul fast float %9757, 0x3FC5555560000000
  %9759 = fmul fast float %9750, -3.000000e+00
  %9760 = fadd fast float %9749, %9747
  %9761 = fmul fast float %9760, 3.000000e+00
  %9762 = fadd fast float %9759, 1.000000e+00
  %9763 = fadd fast float %9762, %9761
  %9764 = fmul fast float %9750, 0x3FC5555560000000
  %9765 = fmul fast float %9748, %9748
  %9766 = fmul fast float %9765, %9748
  %9767 = fsub fast float 3.000000e+00, %9748
  %9768 = fmul fast float %9765, %9767
  %9769 = fmul fast float %9748, 3.000000e+00
  %9770 = fmul fast float %9766, 3.000000e+00
  %9771 = fmul fast float %9765, 6.000000e+00
  %9772 = fsub fast float %9770, %9771
  %9773 = fadd fast float %9772, 4.000000e+00
  %9774 = fmul fast float %9773, 0x3FC5555560000000
  %9775 = fmul fast float %9766, -3.000000e+00
  %9776 = fadd fast float %9765, %9748
  %9777 = fmul fast float %9776, 3.000000e+00
  %9778 = fadd fast float %9775, 1.000000e+00
  %9779 = fadd fast float %9778, %9777
  %9780 = fmul fast float %9766, 0x3FC5555560000000
  %9781 = fadd fast float %9747, 1.000000e+00
  %9782 = fsub fast float 1.000000e+00, %9753
  %9783 = fadd fast float %9782, %9752
  %9784 = fadd fast float %9783, %9757
  %9785 = fmul fast float %9784, 0x3FC5555560000000
  %9786 = fdiv fast float %9758, %9785
  %9787 = fsub fast float %9781, %9786
  %9788 = fsub fast float 1.000000e+00, %9747
  %9789 = fadd fast float %9763, %9750
  %9790 = fmul fast float %9789, 0x3FC5555560000000
  %9791 = fdiv fast float %9764, %9790
  %9792 = fadd fast float %9788, %9791
  %9793 = fadd fast float %9748, 1.000000e+00
  %9794 = fsub fast float 1.000000e+00, %9769
  %9795 = fadd fast float %9794, %9768
  %9796 = fadd fast float %9795, %9773
  %9797 = fmul fast float %9796, 0x3FC5555560000000
  %9798 = fdiv fast float %9774, %9797
  %9799 = fsub fast float %9793, %9798
  %9800 = fsub fast float 1.000000e+00, %9748
  %9801 = fadd fast float %9779, %9766
  %9802 = fmul fast float %9801, 0x3FC5555560000000
  %9803 = fdiv fast float %9780, %9802
  %9804 = fadd fast float %9803, %9800
  %9805 = fmul fast float %9787, %9741
  %9806 = fsub fast float %9662, %9805
  %9807 = fmul fast float %9792, %9741
  %9808 = fadd fast float %9807, %9662
  %9809 = fmul fast float %9804, %9742
  %9810 = fadd fast float %9809, %9663
  %9811 = fmul fast float %9799, %9742
  %9812 = fsub fast float %9663, %9811
  %9813 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %43, float %9806, float %9812, float %9730, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9814 = extractvalue %dx.types.ResRet.f32 %9813, 0
  %9815 = extractvalue %dx.types.ResRet.f32 %9813, 1
  %9816 = extractvalue %dx.types.ResRet.f32 %9813, 2
  %9817 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %43, float %9808, float %9812, float %9730, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9818 = extractvalue %dx.types.ResRet.f32 %9817, 0
  %9819 = extractvalue %dx.types.ResRet.f32 %9817, 1
  %9820 = extractvalue %dx.types.ResRet.f32 %9817, 2
  %9821 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %43, float %9806, float %9810, float %9730, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9822 = extractvalue %dx.types.ResRet.f32 %9821, 0
  %9823 = extractvalue %dx.types.ResRet.f32 %9821, 1
  %9824 = extractvalue %dx.types.ResRet.f32 %9821, 2
  %9825 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %43, float %9808, float %9810, float %9730, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9826 = extractvalue %dx.types.ResRet.f32 %9825, 0
  %9827 = extractvalue %dx.types.ResRet.f32 %9825, 1
  %9828 = extractvalue %dx.types.ResRet.f32 %9825, 2
  %9829 = fsub fast float %9822, %9814
  %9830 = fsub fast float %9823, %9815
  %9831 = fsub fast float %9824, %9816
  %9832 = fmul fast float %9829, %9802
  %9833 = fmul fast float %9830, %9802
  %9834 = fmul fast float %9831, %9802
  %9835 = fadd fast float %9832, %9814
  %9836 = fadd fast float %9833, %9815
  %9837 = fadd fast float %9834, %9816
  %9838 = fsub fast float %9826, %9818
  %9839 = fsub fast float %9827, %9819
  %9840 = fsub fast float %9828, %9820
  %9841 = fmul fast float %9838, %9802
  %9842 = fmul fast float %9839, %9802
  %9843 = fmul fast float %9840, %9802
  %9844 = fsub fast float %9818, %9835
  %9845 = fadd fast float %9844, %9841
  %9846 = fsub fast float %9819, %9836
  %9847 = fadd fast float %9846, %9842
  %9848 = fsub fast float %9820, %9837
  %9849 = fadd fast float %9848, %9843
  %9850 = fmul fast float %9845, %9790
  %9851 = fmul fast float %9847, %9790
  %9852 = fmul fast float %9849, %9790
  %9853 = fadd fast float %9850, %9835
  %9854 = fadd fast float %9851, %9836
  %9855 = fadd fast float %9852, %9837
  %9856 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9857 = extractvalue %dx.types.CBufRet.f32 %9856, 1
  %9858 = fmul fast float %9853, %9857
  %9859 = fmul fast float %9854, %9857
  %9860 = fmul fast float %9855, %9857
  br label %9861

; <label>:9861                                    ; preds = %9692, %9649
  %9862 = phi float [ %9732, %9692 ], [ 1.000000e+00, %9649 ]
  %9863 = phi float [ %9733, %9692 ], [ 1.000000e+00, %9649 ]
  %9864 = phi float [ %9734, %9692 ], [ 1.000000e+00, %9649 ]
  %9865 = phi float [ %9858, %9692 ], [ 0.000000e+00, %9649 ]
  %9866 = phi float [ %9859, %9692 ], [ 0.000000e+00, %9649 ]
  %9867 = phi float [ %9860, %9692 ], [ 0.000000e+00, %9649 ]
  %9868 = fmul fast float %9865, %8211
  %9869 = fmul fast float %9866, %8212
  %9870 = fmul fast float %9867, %8213
  %9871 = fmul fast float %9862, %9656
  %9872 = call float @dx.op.dot3.f32(i32 55, float %9862, float %9863, float %9864, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9873 = call float @dx.op.dot3.f32(i32 55, float %9868, float %9869, float %9870, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9874 = select i1 %296, float %9872, float %9862
  %9875 = select i1 %296, float %9872, float %9863
  %9876 = select i1 %296, float 1.000000e+00, float %9864
  %9877 = select i1 %296, float %9873, float %9868
  %9878 = select i1 %296, float 0.000000e+00, float %9869
  %9879 = select i1 %296, float 0.000000e+00, float %9870
  %9880 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %9881 = extractvalue %dx.types.CBufRet.i32 %9880, 3
  %9882 = and i32 %9881, 3
  %9883 = icmp ne i32 %9882, 0
  %9884 = and i32 %9881, 4
  %9885 = icmp ne i32 %9884, 0
  %9886 = and i1 %9883, %9885
  %9887 = and i1 %296, %9886
  br i1 %9887, label %9888, label %9894

; <label>:9888                                    ; preds = %9861
  %9889 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %9890 = extractvalue %dx.types.CBufRet.f32 %9889, 1
  %9891 = fadd fast float %9871, -1.000000e+00
  %9892 = fmul fast float %9890, %9891
  %9893 = fadd fast float %9892, 1.000000e+00
  br label %9894

; <label>:9894                                    ; preds = %9888, %9861
  %9895 = phi float [ %9893, %9888 ], [ %9871, %9861 ]
  %9896 = fadd fast float %9653, %9650
  %9897 = fmul fast float %9874, %9896
  %9898 = fadd fast float %9897, %9877
  %9899 = fadd fast float %9654, %9651
  %9900 = fmul fast float %9875, %9899
  %9901 = fadd fast float %9900, %9878
  %9902 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9903 = extractvalue %dx.types.CBufRet.f32 %9902, 0
  br i1 %296, label %9904, label %9919

; <label>:9904                                    ; preds = %9894
  %9905 = fadd fast float %9898, %9901
  %9906 = fmul fast float %9903, %9905
  %9907 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %9908 = extractvalue %dx.types.CBufRet.f32 %9907, 3
  %9909 = extractvalue %dx.types.CBufRet.f32 %8195, 1
  %9910 = fsub fast float %8200, %8194
  %9911 = fadd fast float %9910, %8201
  %9912 = fsub fast float %9911, %9909
  %9913 = extractvalue %dx.types.CBufRet.f32 %8195, 2
  %9914 = fmul fast float %9912, %9913
  %9915 = call float @dx.op.unary.f32(i32 7, float %9914)  ; Saturate(value)
  %9916 = fsub fast float %9915, %9908
  %9917 = fmul fast float %9916, %9895
  %9918 = fadd fast float %9917, %9908
  br label %9945

; <label>:9919                                    ; preds = %9894
  %9920 = fadd fast float %9655, %9652
  %9921 = fmul fast float %9876, %9920
  %9922 = fadd fast float %9921, %9879
  %9923 = fmul fast float %9903, %9898
  %9924 = fmul fast float %9903, %9901
  %9925 = fmul fast float %9903, %9922
  %9926 = call float @dx.op.binary.f32(i32 35, float %9924, float %9925)  ; FMax(a,b)
  %9927 = call float @dx.op.binary.f32(i32 35, float %9923, float %9926)  ; FMax(a,b)
  %9928 = call float @dx.op.binary.f32(i32 35, float %8212, float %8213)  ; FMax(a,b)
  %9929 = call float @dx.op.binary.f32(i32 35, float %8211, float %9928)  ; FMax(a,b)
  %9930 = call float @dx.op.binary.f32(i32 35, float %9927, float %9929)  ; FMax(a,b)
  %9931 = fcmp fast ugt float %9930, 0x3F10000000000000
  br i1 %9931, label %9933, label %9932

; <label>:9932                                    ; preds = %9919
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %9933

; <label>:9933                                    ; preds = %9932, %9919
  %9934 = add i32 %51, 356
  %9935 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %9934, i32 undef)  ; BufferLoad(srv,index,wot)
  %9936 = extractvalue %dx.types.ResRet.i32 %9935, 0
  %9937 = and i32 %9936, 32
  %9938 = icmp eq i32 %9937, 0
  br i1 %9938, label %9945, label %9939

; <label>:9939                                    ; preds = %9933
  %9940 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %9941 = extractvalue %dx.types.CBufRet.f32 %9940, 0
  %9942 = fmul fast float %9941, 0x3FE99999A0000000
  %9943 = fadd fast float %9941, %9923
  %9944 = fadd fast float %9942, %9925
  br label %9945

; <label>:9945                                    ; preds = %9939, %9933, %9904
  %9946 = phi float [ 1.000000e+00, %9904 ], [ %8212, %9939 ], [ %8212, %9933 ]
  %9947 = phi float [ 1.000000e+00, %9904 ], [ %8213, %9939 ], [ %8213, %9933 ]
  %9948 = phi float [ %9906, %9904 ], [ %9943, %9939 ], [ %9923, %9933 ]
  %9949 = phi float [ %9918, %9904 ], [ %9924, %9939 ], [ %9924, %9933 ]
  %9950 = phi float [ 1.000000e+00, %9904 ], [ %9944, %9939 ], [ %9925, %9933 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %9951 = call float @dx.op.binary.f32(i32 36, float %9948, float 3.225500e+04)  ; FMin(a,b)
  %9952 = call float @dx.op.binary.f32(i32 36, float %9949, float 3.225500e+04)  ; FMin(a,b)
  %9953 = call float @dx.op.binary.f32(i32 36, float %9950, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %9951)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %9952)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %9953)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %9954 = call float @dx.op.binary.f32(i32 36, float %8211, float 3.225500e+04)  ; FMin(a,b)
  %9955 = call float @dx.op.binary.f32(i32 36, float %9946, float 3.225500e+04)  ; FMin(a,b)
  %9956 = call float @dx.op.binary.f32(i32 36, float %9947, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %9954)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %9955)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %9956)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sample.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

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
!dx.viewIdState = !{!63}
!dx.entryPoints = !{!64}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !52, !55}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !29, !30, !31, !32, !33, !34, !35, !36, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51}
!6 = !{i32 0, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 3, i32 0, i32 -1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 4, i32 0, i32 -1, i32 2, i32 0, !7}
!9 = !{i32 2, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 37, i32 1, i32 11, i32 0, null}
!10 = !{i32 3, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 22, i32 1, i32 11, i32 0, null}
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
!25 = !{i32 18, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 57, i32 1, i32 2, i32 0, !7}
!26 = !{i32 19, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 69, i32 1, i32 11, i32 0, null}
!27 = !{i32 20, %"class.Texture2D<unsigned int>"* undef, !"", i32 2, i32 56, i32 1, i32 2, i32 0, !28}
!28 = !{i32 0, i32 5}
!29 = !{i32 21, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 35, i32 1, i32 7, i32 0, !7}
!30 = !{i32 22, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 34, i32 1, i32 2, i32 0, !7}
!31 = !{i32 23, %"class.Texture3D<float>"* undef, !"", i32 2, i32 31, i32 1, i32 4, i32 0, !7}
!32 = !{i32 24, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 1, i32 1, i32 2, i32 0, !7}
!33 = !{i32 25, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 2, i32 1, i32 2, i32 0, !7}
!34 = !{i32 26, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 3, i32 1, i32 2, i32 0, !7}
!35 = !{i32 27, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 4, i32 1, i32 2, i32 0, !7}
!36 = !{i32 28, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 80, i32 1, i32 7, i32 0, !37}
!37 = !{i32 0, i32 14}
!38 = !{i32 29, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 67, i32 1, i32 11, i32 0, null}
!39 = !{i32 30, %"class.Texture2D<float>"* undef, !"", i32 2, i32 7, i32 1, i32 2, i32 0, !7}
!40 = !{i32 31, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 6, i32 1, i32 2, i32 0, !7}
!41 = !{i32 32, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 5, i32 1, i32 2, i32 0, !7}
!42 = !{i32 33, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 38, i32 1, i32 2, i32 0, !7}
!43 = !{i32 34, %"class.Texture1D<float>"* undef, !"", i32 2, i32 30, i32 1, i32 1, i32 0, !7}
!44 = !{i32 35, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 44, i32 1, i32 4, i32 0, !7}
!45 = !{i32 36, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 45, i32 1, i32 4, i32 0, !7}
!46 = !{i32 37, %"class.Texture2DArray<float>"* undef, !"", i32 2, i32 47, i32 1, i32 7, i32 0, !7}
!47 = !{i32 38, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 85, i32 1, i32 7, i32 0, !37}
!48 = !{i32 39, %"class.Texture2D<float>"* undef, !"", i32 2, i32 83, i32 1, i32 2, i32 0, !7}
!49 = !{i32 40, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 86, i32 1, i32 2, i32 0, !7}
!50 = !{i32 41, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 12, i32 1, i32 2, i32 0, !7}
!51 = !{i32 42, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 55, i32 1, i32 2, i32 0, !7}
!52 = !{!53, !54}
!53 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!54 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 144, null}
!55 = !{!56, !57, !58, !59, !60, !61, !62}
!56 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!57 = !{i32 1, %struct.SamplerComparisonState* undef, !"", i32 0, i32 0, i32 1, i32 1, null}
!58 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!59 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!60 = !{i32 4, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!61 = !{i32 5, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!62 = !{i32 6, %struct.SamplerState* undef, !"", i32 0, i32 5, i32 1, i32 0, null}
!63 = !{[62 x i32] [i32 60, i32 8, i32 119, i32 119, i32 7, i32 119, i32 119, i32 119, i32 119, i32 119, i32 119, i32 119, i32 0, i32 0, i32 119, i32 119, i32 119, i32 0, i32 119, i32 119, i32 119, i32 119, i32 7, i32 3, i32 3, i32 3, i32 7, i32 3, i32 3, i32 3, i32 7, i32 7, i32 7, i32 7, i32 119, i32 119, i32 119, i32 0, i32 119, i32 119, i32 119, i32 119, i32 119, i32 119, i32 0, i32 0, i32 119, i32 119, i32 119, i32 119, i32 119, i32 119, i32 119, i32 0, i32 119, i32 119, i32 0, i32 0, i32 119, i32 0, i32 0, i32 0]}
!64 = !{void ()* @ps_main, !"ps_main", !65, !4, !93}
!65 = !{!66, !89, null}
!66 = !{!67, !70, !71, !73, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !86, !87, !88}
!67 = !{i32 0, !"SV_Position", i8 9, i8 3, !68, i8 4, i32 1, i8 4, i32 0, i8 0, !69}
!68 = !{i32 0}
!69 = !{i32 3, i32 15}
!70 = !{i32 1, !"COLOR", i8 9, i8 0, !68, i8 2, i32 1, i8 4, i32 1, i8 0, !69}
!71 = !{i32 2, !"TEXCOORDS", i8 9, i8 0, !68, i8 2, i32 1, i8 4, i32 2, i8 0, !72}
!72 = !{i32 3, i32 3}
!73 = !{i32 3, !"NORMAL", i8 9, i8 0, !68, i8 2, i32 1, i8 3, i32 3, i8 0, !74}
!74 = !{i32 3, i32 7}
!75 = !{i32 4, !"TANGENT", i8 9, i8 0, !68, i8 2, i32 1, i8 4, i32 4, i8 0, !69}
!76 = !{i32 5, !"SH_RED", i8 9, i8 0, !68, i8 2, i32 1, i8 4, i32 5, i8 0, !69}
!77 = !{i32 6, !"SH_GREEN", i8 9, i8 0, !68, i8 2, i32 1, i8 4, i32 6, i8 0, !69}
!78 = !{i32 7, !"SH_BLUE", i8 9, i8 0, !68, i8 2, i32 1, i8 4, i32 7, i8 0, !69}
!79 = !{i32 8, !"WGV_TEXCOORD", i8 9, i8 0, !68, i8 2, i32 1, i8 3, i32 8, i8 0, !74}
!80 = !{i32 9, !"WGV_NORMAL", i8 9, i8 0, !68, i8 2, i32 1, i8 4, i32 9, i8 0, !69}
!81 = !{i32 10, !"SECONDARY_TEXCOORDS", i8 9, i8 0, !68, i8 2, i32 1, i8 2, i32 10, i8 0, !72}
!82 = !{i32 11, !"SCEONDARY_NORMAL", i8 9, i8 0, !68, i8 2, i32 1, i8 4, i32 11, i8 0, !69}
!83 = !{i32 12, !"OBJECT_POSITION", i8 9, i8 0, !68, i8 2, i32 1, i8 4, i32 12, i8 0, !74}
!84 = !{i32 13, !"DECAL_VOLUME_GRID_INDEX", i8 5, i8 0, !68, i8 1, i32 1, i8 1, i32 13, i8 0, !85}
!85 = !{i32 3, i32 1}
!86 = !{i32 14, !"ENTITY_IDS", i8 5, i8 0, !68, i8 1, i32 1, i8 2, i32 13, i8 1, !85}
!87 = !{i32 15, !"PACKED_TRI_DATA", i8 5, i8 0, !68, i8 1, i32 1, i8 4, i32 14, i8 0, !85}
!88 = !{i32 16, !"SV_SampleIndex", i8 5, i8 12, !68, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!89 = !{!90, !91}
!90 = !{i32 0, !"SV_Target", i8 9, i8 16, !68, i8 0, i32 1, i8 4, i32 0, i8 0, !69}
!91 = !{i32 1, !"SV_Target", i8 9, i8 16, !92, i8 0, i32 1, i8 4, i32 1, i8 0, !69}
!92 = !{i32 1}
!93 = !{i32 0, i64 16}
!94 = distinct !{!94, !"dx.controlflow.hints", i32 1}
!95 = distinct !{!95, !96}
!96 = !{!"llvm.loop.unroll.disable"}
!97 = distinct !{!97, !"dx.controlflow.hints", i32 1}
!98 = distinct !{!98, !"dx.controlflow.hints", i32 1}
!99 = distinct !{!99, !"dx.controlflow.hints", i32 1}
!100 = distinct !{!100, !"dx.controlflow.hints", i32 1}
!101 = distinct !{!101, !"dx.controlflow.hints", i32 1}
!102 = !{!103, !103, i64 0}
!103 = !{!"int", !104, i64 0}
!104 = !{!"omnipotent char", !105, i64 0}
!105 = !{!"Simple C/C++ TBAA"}
!106 = !{!107, !109, !111, !113}
!107 = distinct !{!107, !108, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!108 = distinct !{!108, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!109 = distinct !{!109, !110, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!110 = distinct !{!110, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!111 = distinct !{!111, !112, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z: %agg.result"}
!112 = distinct !{!112, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z"}
!113 = distinct !{!113, !114, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z: %agg.result"}
!114 = distinct !{!114, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z"}
!115 = distinct !{!115, !"dx.controlflow.hints", i32 1}
!116 = !{!117, !117, i64 0}
!117 = !{!"float", !104, i64 0}
!118 = distinct !{!118, !96}
!119 = distinct !{!119, !96}
!120 = distinct !{!120, !"dx.controlflow.hints", i32 1}
!121 = distinct !{!121, !"dx.controlflow.hints", i32 1}
!122 = distinct !{!122, !"dx.controlflow.hints", i32 1}
!123 = distinct !{!123, !"dx.controlflow.hints", i32 1}
!124 = distinct !{!124, !"dx.controlflow.hints", i32 1}
!125 = distinct !{!125, !"dx.controlflow.hints", i32 1}
!126 = distinct !{!126, !"dx.controlflow.hints", i32 1}
!127 = distinct !{!127, !"dx.controlflow.hints", i32 1}
!128 = !{!129, !131, !133, !134, !136, !137, !138, !140, !141, !142}
!129 = distinct !{!129, !130, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!130 = distinct !{!130, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!131 = distinct !{!131, !132, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!132 = distinct !{!132, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!133 = distinct !{!133, !132, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!134 = distinct !{!134, !135, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %blendColor"}
!135 = distinct !{!135, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z"}
!136 = distinct !{!136, !135, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %addColor"}
!137 = distinct !{!137, !135, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %thermalExtinction"}
!138 = distinct !{!138, !139, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %blendColor"}
!139 = distinct !{!139, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z"}
!140 = distinct !{!140, !139, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %addColor"}
!141 = distinct !{!141, !139, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %thermalExtinction"}
!142 = distinct !{!142, !143, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z: %agg.result"}
!143 = distinct !{!143, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z"}
!144 = !{!145}
!145 = distinct !{!145, !146, !"\01?sort@@YAXAIAM00@Z: %c"}
!146 = distinct !{!146, !"\01?sort@@YAXAIAM00@Z"}
!147 = !{!148, !149, !129, !131, !133, !134, !136, !137, !138, !140, !141, !142}
!148 = distinct !{!148, !146, !"\01?sort@@YAXAIAM00@Z: %a"}
!149 = distinct !{!149, !146, !"\01?sort@@YAXAIAM00@Z: %b"}
!150 = !{!149}
!151 = !{!148, !145, !129, !131, !133, !134, !136, !137, !138, !140, !141, !142}
!152 = !{!148}
!153 = !{!149, !145, !129, !131, !133, !134, !136, !137, !138, !140, !141, !142}
!154 = !{!155}
!155 = distinct !{!155, !156, !"\01?sort@@YAXAIAM00@Z: %c"}
!156 = distinct !{!156, !"\01?sort@@YAXAIAM00@Z"}
!157 = !{!158, !159, !129, !131, !133, !134, !136, !137, !138, !140, !141, !142}
!158 = distinct !{!158, !156, !"\01?sort@@YAXAIAM00@Z: %a"}
!159 = distinct !{!159, !156, !"\01?sort@@YAXAIAM00@Z: %b"}
!160 = !{!159}
!161 = !{!158, !155, !129, !131, !133, !134, !136, !137, !138, !140, !141, !142}
!162 = !{!158}
!163 = !{!159, !155, !129, !131, !133, !134, !136, !137, !138, !140, !141, !142}
!164 = distinct !{!164, !"dx.controlflow.hints", i32 1}
!165 = distinct !{!165, !"dx.controlflow.hints", i32 2}
!166 = distinct !{!166, !"dx.controlflow.hints", i32 1}
!167 = distinct !{!167, !"dx.controlflow.hints", i32 1}
!168 = distinct !{!168, !"dx.controlflow.hints", i32 1}
!169 = distinct !{!169, !"dx.controlflow.hints", i32 1}
!170 = distinct !{!170, !"dx.controlflow.hints", i32 1}
!171 = distinct !{!171, !"dx.controlflow.hints", i32 1}
!172 = distinct !{!172, !"dx.controlflow.hints", i32 1}
!173 = distinct !{!173, !"dx.controlflow.hints", i32 1}
!174 = distinct !{!174, !"dx.controlflow.hints", i32 1}

