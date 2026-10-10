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
; shader hash: bdcc831143c7322742fec80b37275722
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
;   output 3 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 28, 29, 30, 31, 32, 33, 34, 36, 37, 38, 39, 40, 41, 44, 45, 46, 47, 48, 49, 50, 52, 53, 56 }
;   output 4 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 28, 29, 30, 31, 32, 33, 34, 36, 37, 38, 39, 40, 41, 44, 45, 46, 47, 48, 49, 50, 52, 53, 56 }
;   output 5 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 28, 29, 30, 31, 32, 33, 34, 36, 37, 38, 39, 40, 41, 44, 45, 46, 47, 48, 49, 50, 52, 53, 56 }
;   output 6 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 28, 29, 30, 31, 32, 33, 34, 36, 37, 38, 39, 40, 41, 44, 45, 46, 47, 48, 49, 50, 52, 53, 56 }
;   output 7 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 28, 29, 30, 31, 32, 33, 34, 36, 37, 38, 39, 40, 41, 44, 45, 46, 47, 48, 49, 50, 52, 53, 56 }
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

@PCF_OFFSETS_8.v.1dim = internal constant [16 x float] [float 0xBFE6A09020000000, float 0x3FE6A09020000000, float 0.000000e+00, float -8.750000e-01, float 0x3FE0F837C0000000, float 0x3FE0F837C0000000, float -6.250000e-01, float 0.000000e+00, float 0x3FD6A161E0000000, float 0xBFD6A161E0000000, float 0.000000e+00, float 3.750000e-01, float 0xBFC6A161E0000000, float 0xBFC6A161E0000000, float 1.250000e-01, float 0.000000e+00], align 4

define void @ps_main() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 40, i32 86, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 39, i32 83, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 38, i32 85, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 37, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 36, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 35, i32 44, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 34, i32 30, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 33, i32 38, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 32, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 31, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 30, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 29, i32 67, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 28, i32 80, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 27, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 26, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 25, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 24, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 23, i32 31, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 22, i32 34, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 21, i32 35, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 20, i32 56, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 19, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 18, i32 57, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 58, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %27 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 21, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %28 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 20, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %29 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 19, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %30 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 18, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %31 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %32 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %33 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %34 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %35 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %36 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 33, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %37 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 52, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %38 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 22, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %39 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %40 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 6, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %41 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 5, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %42 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 4, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %43 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %44 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %45 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %46 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %47 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %48 = alloca [4 x i32], align 4
  %49 = call i32 @dx.op.loadInput.i32(i32 4, i32 15, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %50 = call i32 @dx.op.loadInput.i32(i32 4, i32 14, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %51 = call i32 @dx.op.loadInput.i32(i32 4, i32 13, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %52 = call float @dx.op.loadInput.f32(i32 4, i32 12, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %53 = call float @dx.op.loadInput.f32(i32 4, i32 12, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %54 = call float @dx.op.loadInput.f32(i32 4, i32 12, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %55 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %56 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %57 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %58 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %59 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %60 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %61 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %62 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %63 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %64 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %65 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %66 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %67 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %68 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %69 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %70 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %71 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %72 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %73 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %74 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %75 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %76 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %77 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %78 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %79 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %80 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %81 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %82 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %83 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %84 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %85 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %86 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %87 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %88 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %89 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %90 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %91 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %92 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %93 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %94 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %95 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %96 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %97 = alloca [12 x float], align 4
  %98 = alloca [12 x float], align 4
  %99 = alloca [4 x float], align 4
  %100 = alloca [4 x float], align 4
  %101 = alloca [4 x float], align 4
  %102 = alloca [4 x float], align 4
  %103 = alloca [3 x float], align 4
  %104 = alloca [3 x float], align 4
  %105 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %106 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %107 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %108 = extractvalue %dx.types.CBufRet.f32 %107, 0
  %109 = fmul fast float %108, %93
  %110 = fmul fast float %108, %94
  %111 = call float @dx.op.dot3.f32(i32 55, float %84, float %85, float %86, float %84, float %85, float %86)  ; Dot3(ax,ay,az,bx,by,bz)
  %112 = bitcast float %111 to i32
  %113 = ashr i32 %112, 1
  %114 = sub nsw i32 1597250115, %113
  %115 = bitcast i32 %114 to float
  %116 = fmul fast float %115, %84
  %117 = fmul fast float %115, %85
  %118 = fmul fast float %115, %86
  %119 = fmul fast float %85, %82
  %120 = fmul fast float %86, %81
  %121 = fsub fast float %119, %120
  %122 = fmul fast float %86, %80
  %123 = fmul fast float %84, %82
  %124 = fsub fast float %122, %123
  %125 = fmul fast float %84, %81
  %126 = fmul fast float %85, %80
  %127 = fsub fast float %125, %126
  %128 = fmul fast float %121, %83
  %129 = fmul fast float %124, %83
  %130 = fmul fast float %127, %83
  %131 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %132 = extractvalue %dx.types.CBufRet.f32 %131, 0
  %133 = fcmp fast une float %132, 0.000000e+00
  %134 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %135 = extractvalue %dx.types.CBufRet.f32 %134, 2
  %136 = extractvalue %dx.types.CBufRet.f32 %134, 3
  %137 = fmul fast float %109, 2.000000e+00
  %138 = fmul fast float %137, %135
  %139 = fmul fast float %110, 2.000000e+00
  %140 = fmul fast float %139, %136
  %141 = fsub fast float 1.000000e+00, %138
  %142 = fsub fast float 1.000000e+00, %140
  %143 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %144 = extractvalue %dx.types.CBufRet.f32 %143, 0
  %145 = extractvalue %dx.types.CBufRet.f32 %143, 1
  %146 = extractvalue %dx.types.CBufRet.f32 %143, 2
  %147 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %148 = extractvalue %dx.types.CBufRet.f32 %147, 0
  %149 = extractvalue %dx.types.CBufRet.f32 %147, 1
  %150 = extractvalue %dx.types.CBufRet.f32 %147, 2
  %151 = select i1 %133, float %144, float %148
  %152 = select i1 %133, float %145, float %149
  %153 = select i1 %133, float %146, float %150
  %154 = fmul fast float %151, %141
  %155 = fmul fast float %152, %141
  %156 = fmul fast float %153, %141
  %157 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %158 = extractvalue %dx.types.CBufRet.f32 %157, 0
  %159 = extractvalue %dx.types.CBufRet.f32 %157, 1
  %160 = extractvalue %dx.types.CBufRet.f32 %157, 2
  %161 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %162 = extractvalue %dx.types.CBufRet.f32 %161, 0
  %163 = extractvalue %dx.types.CBufRet.f32 %161, 1
  %164 = extractvalue %dx.types.CBufRet.f32 %161, 2
  %165 = select i1 %133, float %158, float %162
  %166 = select i1 %133, float %159, float %163
  %167 = select i1 %133, float %160, float %164
  %168 = fmul fast float %165, %142
  %169 = fmul fast float %166, %142
  %170 = fmul fast float %167, %142
  %171 = fadd fast float %168, %154
  %172 = fadd fast float %169, %155
  %173 = fadd fast float %170, %156
  %174 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %175 = extractvalue %dx.types.CBufRet.f32 %174, 0
  %176 = extractvalue %dx.types.CBufRet.f32 %174, 1
  %177 = extractvalue %dx.types.CBufRet.f32 %174, 2
  %178 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %179 = extractvalue %dx.types.CBufRet.f32 %178, 0
  %180 = extractvalue %dx.types.CBufRet.f32 %178, 1
  %181 = extractvalue %dx.types.CBufRet.f32 %178, 2
  %182 = select i1 %133, float %175, float %179
  %183 = select i1 %133, float %176, float %180
  %184 = select i1 %133, float %177, float %181
  %185 = fadd fast float %171, %182
  %186 = fadd fast float %172, %183
  %187 = fadd fast float %173, %184
  %188 = fmul fast float %185, %96
  %189 = fmul fast float %186, %96
  %190 = fmul fast float %187, %96
  %191 = shl i32 %50, 5
  %192 = add i32 %191, 4194304
  %193 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %192, i32 undef)  ; BufferLoad(srv,index,wot)
  %194 = extractvalue %dx.types.ResRet.i32 %193, 0
  %195 = extractvalue %dx.types.ResRet.i32 %193, 1
  %196 = extractvalue %dx.types.ResRet.i32 %193, 2
  %197 = extractvalue %dx.types.ResRet.i32 %193, 3
  %198 = add i32 %191, 4194320
  %199 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %198, i32 undef)  ; BufferLoad(srv,index,wot)
  %200 = extractvalue %dx.types.ResRet.i32 %199, 0
  %201 = extractvalue %dx.types.ResRet.i32 %199, 1
  %202 = bitcast i32 %200 to float
  %203 = bitcast i32 %201 to float
  %204 = fmul fast float %109, 5.000000e-01
  %205 = fmul fast float %110, 5.000000e-01
  %206 = fptosi float %204 to i32
  %207 = fptosi float %205 to i32
  %208 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %21, i32 0, i32 %206, i32 %207, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %209 = extractvalue %dx.types.ResRet.i32 %208, 0
  %210 = lshr i32 %209, 18
  %211 = uitofp i32 %210 to float
  %212 = fmul fast float %211, 0x3F4C00EBA0000000
  %213 = call float @dx.op.unary.f32(i32 21, float %212)  ; Exp(value)
  %214 = fadd fast float %213, -1.000000e+00
  %215 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %21, i32 0)  ; GetDimensions(handle,mipLevel)
  %216 = extractvalue %dx.types.Dimensions %215, 0
  %217 = sitofp i32 %216 to float
  %218 = extractvalue %dx.types.Dimensions %215, 1
  %219 = sitofp i32 %218 to float
  %220 = fcmp fast oge float %204, %217
  %221 = fcmp fast oge float %205, %219
  %222 = or i1 %220, %221
  %223 = select i1 %222, float 0x4197782600000000, float %214
  %224 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %225 = extractvalue %dx.types.CBufRet.f32 %224, 2
  %226 = extractvalue %dx.types.CBufRet.f32 %224, 3
  %227 = fmul fast float %225, %109
  %228 = fmul fast float %226, %110
  %229 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %230 = extractvalue %dx.types.ResRet.i32 %229, 0
  %231 = and i32 %230, 114688
  %232 = icmp ne i32 %231, 0
  %233 = select i1 %232, float %227, float 0.000000e+00
  %234 = select i1 %232, float %228, float 0.000000e+00
  %235 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %44, float %233, float %234, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %236 = extractvalue %dx.types.ResRet.f32 %235, 0
  %237 = fmul fast float %236, 2.550000e+02
  %238 = fptoui float %237 to i32
  %239 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %240 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %241 = extractvalue %dx.types.CBufRet.i32 %240, 3
  %242 = and i32 %241, 3
  %243 = icmp ne i32 %242, 0
  %244 = and i32 %241, 4
  %245 = icmp ne i32 %244, 0
  %246 = and i1 %243, %245
  br i1 %246, label %247, label %258

; <label>:247                                     ; preds = %0
  %248 = extractvalue %dx.types.CBufRet.f32 %239, 3
  %249 = fmul fast float %248, %110
  %250 = extractvalue %dx.types.CBufRet.f32 %239, 2
  %251 = fmul fast float %250, %109
  %252 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %43, float %251, float %249, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %253 = extractvalue %dx.types.ResRet.f32 %252, 0
  %254 = fsub fast float 1.000000e+00, %253
  %255 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %256 = extractvalue %dx.types.CBufRet.f32 %255, 0
  %257 = fcmp fast olt float %254, %256
  br label %261

; <label>:258                                     ; preds = %0
  %259 = icmp eq i32 %244, 0
  %260 = and i1 %243, %259
  br label %261

; <label>:261                                     ; preds = %258, %247
  %262 = phi i1 [ %257, %247 ], [ %260, %258 ]
  %263 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %264 = extractvalue %dx.types.CBufRet.f32 %263, 2
  %265 = fmul fast float %264, 0x3FE3C6EF40000000
  %266 = frem fast float %109, 2.560000e+02
  %267 = frem fast float %110, 2.560000e+02
  %268 = fptoui float %266 to i32
  %269 = fptoui float %267 to i32
  %270 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %26, i32 0, i32 %268, i32 %269, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %271 = extractvalue %dx.types.ResRet.f32 %270, 0
  %272 = fadd fast float %271, %265
  %273 = call float @dx.op.unary.f32(i32 22, float %272)  ; Frc(value)
  %274 = add i32 %49, 156
  %275 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %274, i32 undef)  ; BufferLoad(srv,index,wot)
  %276 = extractvalue %dx.types.ResRet.i32 %275, 0
  %277 = shl i32 %276, 4
  %278 = and i32 %277, 32752
  %279 = call float @dx.op.legacyF16ToF32(i32 131, i32 %278)  ; LegacyF16ToF32(value)
  %280 = lshr i32 %276, 7
  %281 = and i32 %280, 32752
  %282 = call float @dx.op.legacyF16ToF32(i32 131, i32 %281)  ; LegacyF16ToF32(value)
  %283 = lshr i32 %276, 22
  %284 = shl nuw nsw i32 %283, 5
  %285 = call float @dx.op.legacyF16ToF32(i32 131, i32 %284)  ; LegacyF16ToF32(value)
  %286 = add i32 %49, 216
  %287 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %286, i32 undef)  ; BufferLoad(srv,index,wot)
  %288 = extractvalue %dx.types.ResRet.i32 %287, 0
  %289 = and i32 %288, 255
  %290 = uitofp i32 %289 to float
  %291 = fmul fast float %290, 0x3F70101020000000
  %292 = lshr i32 %288, 8
  %293 = and i32 %292, 255
  %294 = uitofp i32 %293 to float
  %295 = fmul fast float %294, 0x3F70101020000000
  %296 = lshr i32 %288, 16
  %297 = and i32 %296, 255
  %298 = uitofp i32 %297 to float
  %299 = fmul fast float %298, 0x3F70101020000000
  %300 = add i32 %49, 36
  %301 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %300, i32 undef)  ; BufferLoad(srv,index,wot)
  %302 = extractvalue %dx.types.ResRet.i32 %301, 0
  %303 = and i32 %302, 65535
  %304 = call float @dx.op.legacyF16ToF32(i32 131, i32 %303)  ; LegacyF16ToF32(value)
  %305 = lshr i32 %302, 16
  %306 = call float @dx.op.legacyF16ToF32(i32 131, i32 %305)  ; LegacyF16ToF32(value)
  %307 = add i32 %49, 288
  %308 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %307, i32 undef)  ; BufferLoad(srv,index,wot)
  %309 = extractvalue %dx.types.ResRet.i32 %308, 0
  %310 = and i32 %309, 65535
  %311 = call float @dx.op.legacyF16ToF32(i32 131, i32 %310)  ; LegacyF16ToF32(value)
  %312 = lshr i32 %309, 16
  %313 = call float @dx.op.legacyF16ToF32(i32 131, i32 %312)  ; LegacyF16ToF32(value)
  %314 = fmul fast float %311, 0x3F50624DE0000000
  %315 = fmul fast float %313, 0x3F50624DE0000000
  %316 = add i32 %49, 172
  %317 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %316, i32 undef)  ; BufferLoad(srv,index,wot)
  %318 = extractvalue %dx.types.ResRet.i32 %317, 0
  %319 = shl i32 %318, 4
  %320 = and i32 %319, 32752
  %321 = call float @dx.op.legacyF16ToF32(i32 131, i32 %320)  ; LegacyF16ToF32(value)
  %322 = lshr i32 %318, 7
  %323 = and i32 %322, 32752
  %324 = call float @dx.op.legacyF16ToF32(i32 131, i32 %323)  ; LegacyF16ToF32(value)
  %325 = lshr i32 %318, 22
  %326 = shl nuw nsw i32 %325, 5
  %327 = call float @dx.op.legacyF16ToF32(i32 131, i32 %326)  ; LegacyF16ToF32(value)
  %328 = add i32 %49, 232
  %329 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %328, i32 undef)  ; BufferLoad(srv,index,wot)
  %330 = extractvalue %dx.types.ResRet.i32 %329, 0
  %331 = and i32 %330, 255
  %332 = uitofp i32 %331 to float
  %333 = fmul fast float %332, 0x3F70101020000000
  %334 = lshr i32 %330, 8
  %335 = and i32 %334, 255
  %336 = uitofp i32 %335 to float
  %337 = fmul fast float %336, 0x3F70101020000000
  %338 = lshr i32 %330, 16
  %339 = and i32 %338, 255
  %340 = uitofp i32 %339 to float
  %341 = fmul fast float %340, 0x3F70101020000000
  %342 = add i32 %49, 52
  %343 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %342, i32 undef)  ; BufferLoad(srv,index,wot)
  %344 = extractvalue %dx.types.ResRet.i32 %343, 0
  %345 = and i32 %344, 65535
  %346 = call float @dx.op.legacyF16ToF32(i32 131, i32 %345)  ; LegacyF16ToF32(value)
  %347 = lshr i32 %344, 16
  %348 = call float @dx.op.legacyF16ToF32(i32 131, i32 %347)  ; LegacyF16ToF32(value)
  %349 = add i32 %49, 304
  %350 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %349, i32 undef)  ; BufferLoad(srv,index,wot)
  %351 = extractvalue %dx.types.ResRet.i32 %350, 0
  %352 = and i32 %351, 65535
  %353 = call float @dx.op.legacyF16ToF32(i32 131, i32 %352)  ; LegacyF16ToF32(value)
  %354 = lshr i32 %351, 16
  %355 = call float @dx.op.legacyF16ToF32(i32 131, i32 %354)  ; LegacyF16ToF32(value)
  %356 = fmul fast float %353, 0x3F50624DE0000000
  %357 = fmul fast float %355, 0x3F50624DE0000000
  %358 = add i32 %49, 188
  %359 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %358, i32 undef)  ; BufferLoad(srv,index,wot)
  %360 = extractvalue %dx.types.ResRet.i32 %359, 0
  %361 = shl i32 %360, 4
  %362 = and i32 %361, 32752
  %363 = call float @dx.op.legacyF16ToF32(i32 131, i32 %362)  ; LegacyF16ToF32(value)
  %364 = lshr i32 %360, 7
  %365 = and i32 %364, 32752
  %366 = call float @dx.op.legacyF16ToF32(i32 131, i32 %365)  ; LegacyF16ToF32(value)
  %367 = lshr i32 %360, 22
  %368 = shl nuw nsw i32 %367, 5
  %369 = call float @dx.op.legacyF16ToF32(i32 131, i32 %368)  ; LegacyF16ToF32(value)
  %370 = add i32 %49, 248
  %371 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %370, i32 undef)  ; BufferLoad(srv,index,wot)
  %372 = extractvalue %dx.types.ResRet.i32 %371, 0
  %373 = and i32 %372, 255
  %374 = uitofp i32 %373 to float
  %375 = fmul fast float %374, 0x3F70101020000000
  %376 = lshr i32 %372, 8
  %377 = and i32 %376, 255
  %378 = uitofp i32 %377 to float
  %379 = fmul fast float %378, 0x3F70101020000000
  %380 = lshr i32 %372, 16
  %381 = and i32 %380, 255
  %382 = uitofp i32 %381 to float
  %383 = fmul fast float %382, 0x3F70101020000000
  %384 = add i32 %49, 68
  %385 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %384, i32 undef)  ; BufferLoad(srv,index,wot)
  %386 = extractvalue %dx.types.ResRet.i32 %385, 0
  %387 = and i32 %386, 65535
  %388 = call float @dx.op.legacyF16ToF32(i32 131, i32 %387)  ; LegacyF16ToF32(value)
  %389 = lshr i32 %386, 16
  %390 = call float @dx.op.legacyF16ToF32(i32 131, i32 %389)  ; LegacyF16ToF32(value)
  %391 = add i32 %49, 320
  %392 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %391, i32 undef)  ; BufferLoad(srv,index,wot)
  %393 = extractvalue %dx.types.ResRet.i32 %392, 0
  %394 = and i32 %393, 65535
  %395 = call float @dx.op.legacyF16ToF32(i32 131, i32 %394)  ; LegacyF16ToF32(value)
  %396 = lshr i32 %393, 16
  %397 = call float @dx.op.legacyF16ToF32(i32 131, i32 %396)  ; LegacyF16ToF32(value)
  %398 = fmul fast float %395, 0x3F50624DE0000000
  %399 = fmul fast float %397, 0x3F50624DE0000000
  %400 = add i32 %49, 204
  %401 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %400, i32 undef)  ; BufferLoad(srv,index,wot)
  %402 = extractvalue %dx.types.ResRet.i32 %401, 0
  %403 = shl i32 %402, 4
  %404 = and i32 %403, 32752
  %405 = call float @dx.op.legacyF16ToF32(i32 131, i32 %404)  ; LegacyF16ToF32(value)
  %406 = lshr i32 %402, 7
  %407 = and i32 %406, 32752
  %408 = call float @dx.op.legacyF16ToF32(i32 131, i32 %407)  ; LegacyF16ToF32(value)
  %409 = lshr i32 %402, 22
  %410 = shl nuw nsw i32 %409, 5
  %411 = call float @dx.op.legacyF16ToF32(i32 131, i32 %410)  ; LegacyF16ToF32(value)
  %412 = add i32 %49, 264
  %413 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %412, i32 undef)  ; BufferLoad(srv,index,wot)
  %414 = extractvalue %dx.types.ResRet.i32 %413, 0
  %415 = and i32 %414, 255
  %416 = uitofp i32 %415 to float
  %417 = fmul fast float %416, 0x3F70101020000000
  %418 = lshr i32 %414, 8
  %419 = and i32 %418, 255
  %420 = uitofp i32 %419 to float
  %421 = fmul fast float %420, 0x3F70101020000000
  %422 = lshr i32 %414, 16
  %423 = and i32 %422, 255
  %424 = uitofp i32 %423 to float
  %425 = fmul fast float %424, 0x3F70101020000000
  %426 = add i32 %49, 84
  %427 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %426, i32 undef)  ; BufferLoad(srv,index,wot)
  %428 = extractvalue %dx.types.ResRet.i32 %427, 0
  %429 = and i32 %428, 65535
  %430 = call float @dx.op.legacyF16ToF32(i32 131, i32 %429)  ; LegacyF16ToF32(value)
  %431 = lshr i32 %428, 16
  %432 = call float @dx.op.legacyF16ToF32(i32 131, i32 %431)  ; LegacyF16ToF32(value)
  %433 = add i32 %49, 336
  %434 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %433, i32 undef)  ; BufferLoad(srv,index,wot)
  %435 = extractvalue %dx.types.ResRet.i32 %434, 0
  %436 = and i32 %435, 65535
  %437 = call float @dx.op.legacyF16ToF32(i32 131, i32 %436)  ; LegacyF16ToF32(value)
  %438 = lshr i32 %435, 16
  %439 = call float @dx.op.legacyF16ToF32(i32 131, i32 %438)  ; LegacyF16ToF32(value)
  %440 = fmul fast float %437, 0x3F50624DE0000000
  %441 = fmul fast float %439, 0x3F50624DE0000000
  %442 = add i32 %49, 348
  %443 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %442, i32 undef)  ; BufferLoad(srv,index,wot)
  %444 = extractvalue %dx.types.ResRet.i32 %443, 0
  %445 = and i32 %444, 32
  %446 = icmp eq i32 %445, 0
  %447 = and i32 %444, 64
  %448 = icmp eq i32 %447, 0
  %449 = and i32 %444, 128
  %450 = icmp eq i32 %449, 0
  %451 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %442, i32 undef)  ; BufferLoad(srv,index,wot)
  %452 = extractvalue %dx.types.ResRet.i32 %451, 0
  %453 = and i32 %452, 2
  %454 = icmp eq i32 %453, 0
  br i1 %454, label %470, label %455

; <label>:455                                     ; preds = %261
  %456 = add i32 %49, 508
  %457 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %456, i32 undef)  ; BufferLoad(srv,index,wot)
  %458 = extractvalue %dx.types.ResRet.i32 %457, 0
  %459 = add i32 %458, 0
  %460 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %459, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %461 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %460, %dx.types.Handle %106, float %87, float %88, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %462 = extractvalue %dx.types.ResRet.f32 %461, 0
  %463 = extractvalue %dx.types.ResRet.f32 %461, 1
  %464 = extractvalue %dx.types.ResRet.f32 %461, 2
  %465 = extractvalue %dx.types.ResRet.f32 %461, 3
  %466 = fmul fast float %465, %89
  %467 = fmul fast float %462, %90
  %468 = fmul fast float %463, %91
  %469 = fmul fast float %464, %92
  br label %470

; <label>:470                                     ; preds = %455, %261
  %471 = phi float [ %92, %261 ], [ %469, %455 ]
  %472 = phi float [ %91, %261 ], [ %468, %455 ]
  %473 = phi float [ %90, %261 ], [ %467, %455 ]
  %474 = phi float [ %89, %261 ], [ %466, %455 ]
  %475 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %442, i32 undef)  ; BufferLoad(srv,index,wot)
  %476 = extractvalue %dx.types.ResRet.i32 %475, 0
  %477 = and i32 %476, 2
  %478 = icmp eq i32 %477, 0
  br i1 %478, label %498, label %479

; <label>:479                                     ; preds = %470
  %480 = add i32 %49, 44
  %481 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %480, i32 undef)  ; BufferLoad(srv,index,wot)
  %482 = extractvalue %dx.types.ResRet.i32 %481, 0
  %483 = and i32 %482, 1
  %484 = icmp ne i32 %483, 0
  %485 = select i1 %484, float %473, float 1.000000e+00
  %486 = add i32 %49, 60
  %487 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %486, i32 undef)  ; BufferLoad(srv,index,wot)
  %488 = extractvalue %dx.types.ResRet.i32 %487, 0
  %489 = and i32 %488, 1
  %490 = icmp ne i32 %489, 0
  %491 = select i1 %490, float %472, float 1.000000e+00
  %492 = add i32 %49, 76
  %493 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %492, i32 undef)  ; BufferLoad(srv,index,wot)
  %494 = extractvalue %dx.types.ResRet.i32 %493, 0
  %495 = and i32 %494, 1
  %496 = icmp ne i32 %495, 0
  %497 = select i1 %496, float %471, float 1.000000e+00
  br label %498

; <label>:498                                     ; preds = %479, %470
  %499 = phi float [ %471, %470 ], [ %497, %479 ]
  %500 = phi float [ %472, %470 ], [ %491, %479 ]
  %501 = phi float [ %473, %470 ], [ %485, %479 ]
  %502 = lshr i32 %476, 20
  %503 = and i32 %502, 3
  %504 = add nuw nsw i32 %503, 1
  %505 = add i32 %49, 24
  %506 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %505, i32 undef)  ; BufferLoad(srv,index,wot)
  %507 = extractvalue %dx.types.ResRet.i32 %506, 0
  %508 = add i32 %49, 28
  %509 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %508, i32 undef)  ; BufferLoad(srv,index,wot)
  %510 = extractvalue %dx.types.ResRet.i32 %509, 0
  %511 = or i32 %510, %507
  %512 = icmp eq i32 %511, 0
  br i1 %512, label %1158, label %513

; <label>:513                                     ; preds = %498
  %514 = and i32 %507, 262144
  %515 = icmp ne i32 %514, 0
  %516 = select i1 %515, float %55, float 1.000000e+00
  %517 = select i1 %515, float %56, float 0.000000e+00
  %518 = select i1 %515, float %57, float 0.000000e+00
  %519 = select i1 %515, float %58, float 1.000000e+00
  %520 = select i1 %515, float %59, float %87
  %521 = select i1 %515, float %60, float %88
  %522 = add i32 %49, 284
  %523 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %522, i32 undef)  ; BufferLoad(srv,index,wot)
  %524 = extractvalue %dx.types.ResRet.i32 %523, 0
  %525 = lshr i32 %524, 16
  %526 = call float @dx.op.legacyF16ToF32(i32 131, i32 %525)  ; LegacyF16ToF32(value)
  %527 = fmul fast float %526, 0x3F50624DE0000000
  %528 = add i32 %49, 88
  %529 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %528, i32 undef)  ; BufferLoad(srv,index,wot)
  %530 = extractvalue %dx.types.ResRet.i32 %529, 0
  %531 = lshr i32 %530, 16
  %532 = and i32 %531, 255
  %533 = lshr i32 %530, 24
  %534 = add i32 %49, 292
  %535 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %534, i32 undef)  ; BufferLoad(srv,index,wot)
  %536 = extractvalue %dx.types.ResRet.i32 %535, 0
  %537 = and i32 %536, 65535
  %538 = call float @dx.op.legacyF16ToF32(i32 131, i32 %537)  ; LegacyF16ToF32(value)
  %539 = lshr i32 %536, 16
  %540 = call float @dx.op.legacyF16ToF32(i32 131, i32 %539)  ; LegacyF16ToF32(value)
  %541 = add i32 %49, 32
  %542 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %541, i32 undef)  ; BufferLoad(srv,index,wot)
  %543 = extractvalue %dx.types.ResRet.i32 %542, 0
  %544 = lshr i32 %543, 22
  %545 = shl nuw nsw i32 %544, 5
  %546 = call float @dx.op.legacyF16ToF32(i32 131, i32 %545)  ; LegacyF16ToF32(value)
  %547 = shl i32 %543, 4
  %548 = and i32 %547, 32752
  %549 = call float @dx.op.legacyF16ToF32(i32 131, i32 %548)  ; LegacyF16ToF32(value)
  %550 = lshr i32 %543, 7
  %551 = and i32 %550, 32752
  %552 = call float @dx.op.legacyF16ToF32(i32 131, i32 %551)  ; LegacyF16ToF32(value)
  %553 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %554 = extractvalue %dx.types.CBufRet.f32 %553, 3
  %555 = fmul fast float %554, 1.000000e+03
  %556 = fmul fast float %314, %555
  %557 = call float @dx.op.unary.f32(i32 22, float %556)  ; Frc(value)
  %558 = fadd fast float %557, %304
  %559 = fmul fast float %315, %555
  %560 = call float @dx.op.unary.f32(i32 22, float %559)  ; Frc(value)
  %561 = fadd fast float %560, %306
  %562 = fmul fast float %527, %555
  %563 = call float @dx.op.unary.f32(i32 22, float %562)  ; Frc(value)
  %564 = fmul fast float %563, 0x401921FB60000000
  %565 = fadd fast float %564, %546
  %566 = call float @dx.op.unary.f32(i32 13, float %565)  ; Sin(value)
  %567 = call float @dx.op.unary.f32(i32 12, float %565)  ; Cos(value)
  %568 = fsub fast float -0.000000e+00, %566
  %569 = fadd fast float %520, -5.000000e-01
  %570 = fadd fast float %521, -5.000000e-01
  %571 = fmul fast float %538, %569
  %572 = fmul fast float %540, %570
  %573 = fadd fast float %571, 5.000000e-01
  %574 = fadd fast float %572, 5.000000e-01
  %575 = fmul fast float %549, %573
  %576 = fmul fast float %552, %574
  %577 = fmul fast float %567, %575
  %578 = call float @dx.op.tertiary.f32(i32 46, float %568, float %576, float %577)  ; FMad(a,b,c)
  %579 = fmul fast float %566, %575
  %580 = call float @dx.op.tertiary.f32(i32 46, float %567, float %576, float %579)  ; FMad(a,b,c)
  %581 = fadd fast float %558, %578
  %582 = fadd fast float %561, %580
  %583 = icmp ugt i32 %532, 1
  %584 = icmp ugt i32 %530, 33554431
  %585 = or i1 %584, %583
  br i1 %585, label %586, label %611

; <label>:586                                     ; preds = %513
  %587 = add i32 %49, 228
  %588 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %587, i32 undef)  ; BufferLoad(srv,index,wot)
  %589 = extractvalue %dx.types.ResRet.i32 %588, 0
  %590 = lshr i32 %589, 16
  %591 = call float @dx.op.legacyF16ToF32(i32 131, i32 %590)  ; LegacyF16ToF32(value)
  %592 = fmul fast float %554, %591
  %593 = call float @dx.op.unary.f32(i32 22, float %592)  ; Frc(value)
  %594 = mul nuw nsw i32 %532, %533
  %595 = uitofp i32 %594 to float
  %596 = fmul fast float %593, %595
  %597 = call float @dx.op.unary.f32(i32 27, float %596)  ; Round_ni(value)
  %598 = fptoui float %597 to i32
  %599 = urem i32 %598, %532
  %600 = udiv i32 %598, %533
  %601 = call float @dx.op.unary.f32(i32 22, float %581)  ; Frc(value)
  %602 = call float @dx.op.unary.f32(i32 22, float %582)  ; Frc(value)
  %603 = uitofp i32 %599 to float
  %604 = uitofp i32 %600 to float
  %605 = fadd fast float %601, %603
  %606 = fadd fast float %602, %604
  %607 = uitofp i32 %532 to float
  %608 = uitofp i32 %533 to float
  %609 = fdiv fast float %605, %607
  %610 = fdiv fast float %606, %608
  br label %611

; <label>:611                                     ; preds = %586, %513
  %612 = phi float [ %609, %586 ], [ %581, %513 ]
  %613 = phi float [ %610, %586 ], [ %582, %513 ]
  %614 = and i32 %507, 256
  %615 = icmp eq i32 %614, 0
  br i1 %615, label %662, label %616

; <label>:616                                     ; preds = %611
  %617 = add i32 %49, 440
  %618 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %617, i32 undef)  ; BufferLoad(srv,index,wot)
  %619 = extractvalue %dx.types.ResRet.i32 %618, 0
  %620 = add i32 %619, 0
  %621 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %620, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %622 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %621, %dx.types.Handle %106, float %612, float %613, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %623 = extractvalue %dx.types.ResRet.f32 %622, 0
  %624 = add i32 %49, 100
  %625 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %624, i32 undef)  ; BufferLoad(srv,index,wot)
  %626 = extractvalue %dx.types.ResRet.i32 %625, 0
  %627 = shl i32 %626, 4
  %628 = and i32 %627, 32752
  %629 = call float @dx.op.legacyF16ToF32(i32 131, i32 %628)  ; LegacyF16ToF32(value)
  %630 = lshr i32 %626, 7
  %631 = and i32 %630, 32752
  %632 = call float @dx.op.legacyF16ToF32(i32 131, i32 %631)  ; LegacyF16ToF32(value)
  %633 = fsub fast float 1.000000e+00, %474
  %634 = call float @dx.op.binary.f32(i32 35, float %633, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %635 = bitcast float %474 to i32
  %636 = sitofp i32 %635 to float
  %637 = fadd fast float %636, 0xC1CFBF8940000000
  %638 = fmul fast float %632, %637
  %639 = fadd fast float %638, 0x41CFBF8940000000
  %640 = fptosi float %639 to i32
  %641 = bitcast i32 %640 to float
  %642 = bitcast float %634 to i32
  %643 = sitofp i32 %642 to float
  %644 = fadd fast float %643, 0xC1CFBF8940000000
  %645 = fmul fast float %644, %632
  %646 = fadd fast float %645, 0x41CFBF8940000000
  %647 = fptosi float %646 to i32
  %648 = bitcast i32 %647 to float
  %649 = fmul fast float %641, %629
  %650 = fmul fast float %648, %629
  %651 = fsub fast float %634, %649
  %652 = fadd fast float %650, %634
  %653 = call float @dx.op.unary.f32(i32 7, float %651)  ; Saturate(value)
  %654 = call float @dx.op.unary.f32(i32 7, float %652)  ; Saturate(value)
  %655 = fsub fast float %623, %653
  %656 = fsub fast float %654, %653
  %657 = bitcast float %656 to i32
  %658 = sub nsw i32 2129859010, %657
  %659 = bitcast i32 %658 to float
  %660 = fmul fast float %659, %655
  %661 = call float @dx.op.unary.f32(i32 7, float %660)  ; Saturate(value)
  br label %662

; <label>:662                                     ; preds = %616, %611
  %663 = phi float [ %661, %616 ], [ %474, %611 ]
  %664 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %505, i32 undef)  ; BufferLoad(srv,index,wot)
  %665 = extractvalue %dx.types.ResRet.i32 %664, 0
  %666 = and i32 %665, 128
  %667 = icmp eq i32 %666, 0
  br i1 %667, label %684, label %668

; <label>:668                                     ; preds = %662
  %669 = add i32 %49, 424
  %670 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %669, i32 undef)  ; BufferLoad(srv,index,wot)
  %671 = extractvalue %dx.types.ResRet.i32 %670, 0
  %672 = add i32 %671, 0
  %673 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %672, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %674 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %673, %dx.types.Handle %106, float %612, float %613, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %675 = extractvalue %dx.types.ResRet.f32 %674, 0
  %676 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %505, i32 undef)  ; BufferLoad(srv,index,wot)
  %677 = extractvalue %dx.types.ResRet.i32 %676, 0
  %678 = and i32 %677, 524288
  %679 = icmp ne i32 %678, 0
  %680 = fcmp fast ogt float %675, 0x3FE0101020000000
  %681 = select i1 %680, float 1.000000e+00, float 0.000000e+00
  %682 = select i1 %679, float %681, float %675
  %683 = fmul fast float %682, %663
  br label %684

; <label>:684                                     ; preds = %668, %662
  %685 = phi float [ %683, %668 ], [ %663, %662 ]
  %686 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %505, i32 undef)  ; BufferLoad(srv,index,wot)
  %687 = extractvalue %dx.types.ResRet.i32 %686, 0
  %688 = and i32 %687, 16
  %689 = icmp eq i32 %688, 0
  br i1 %689, label %888, label %690

; <label>:690                                     ; preds = %684
  %691 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %528, i32 undef)  ; BufferLoad(srv,index,wot)
  %692 = extractvalue %dx.types.ResRet.i32 %691, 0
  %693 = add i32 %49, 376
  %694 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %693, i32 undef)  ; BufferLoad(srv,index,wot)
  %695 = extractvalue %dx.types.ResRet.i32 %694, 0
  %696 = add i32 %695, 0
  %697 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %696, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %698 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %697, %dx.types.Handle %105, float %612, float %613, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %699 = extractvalue %dx.types.ResRet.f32 %698, 0
  %700 = extractvalue %dx.types.ResRet.f32 %698, 1
  %701 = extractvalue %dx.types.ResRet.f32 %698, 2
  %702 = extractvalue %dx.types.ResRet.f32 %698, 3
  %703 = and i32 %692, 255
  %704 = uitofp i32 %703 to float
  %705 = lshr i32 %692, 8
  %706 = and i32 %705, 255
  %707 = uitofp i32 %706 to float
  %708 = fmul fast float %702, %704
  %709 = fadd fast float %708, %707
  %710 = fmul fast float %709, 0x3F70101000000000
  %711 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %505, i32 undef)  ; BufferLoad(srv,index,wot)
  %712 = extractvalue %dx.types.ResRet.i32 %711, 0
  %713 = and i32 %712, 512
  %714 = icmp eq i32 %713, 0
  br i1 %714, label %723, label %715

; <label>:715                                     ; preds = %690
  %716 = add i32 %49, 460
  %717 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %716, i32 undef)  ; BufferLoad(srv,index,wot)
  %718 = extractvalue %dx.types.ResRet.i32 %717, 0
  %719 = add i32 %718, 0
  %720 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %719, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %721 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %720, %dx.types.Handle %106, float %612, float %613, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %722 = extractvalue %dx.types.ResRet.f32 %721, 0
  br label %723

; <label>:723                                     ; preds = %715, %690
  %724 = phi float [ %722, %715 ], [ 1.000000e+00, %690 ]
  %725 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %505, i32 undef)  ; BufferLoad(srv,index,wot)
  %726 = extractvalue %dx.types.ResRet.i32 %725, 0
  %727 = and i32 %726, 33554432
  %728 = icmp eq i32 %727, 0
  br i1 %728, label %835, label %729

; <label>:729                                     ; preds = %723
  %730 = add i32 %49, 224
  %731 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %730, i32 undef)  ; BufferLoad(srv,index,wot)
  %732 = extractvalue %dx.types.ResRet.i32 %731, 0
  %733 = and i32 %732, 65535
  %734 = call float @dx.op.legacyF16ToF32(i32 131, i32 %733)  ; LegacyF16ToF32(value)
  %735 = lshr i32 %732, 16
  %736 = call float @dx.op.legacyF16ToF32(i32 131, i32 %735)  ; LegacyF16ToF32(value)
  %737 = add i32 %49, 228
  %738 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %737, i32 undef)  ; BufferLoad(srv,index,wot)
  %739 = extractvalue %dx.types.ResRet.i32 %738, 0
  %740 = and i32 %739, 65535
  %741 = call float @dx.op.legacyF16ToF32(i32 131, i32 %740)  ; LegacyF16ToF32(value)
  %742 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %286, i32 undef)  ; BufferLoad(srv,index,wot)
  %743 = extractvalue %dx.types.ResRet.i32 %742, 0
  %744 = lshr i32 %743, 24
  %745 = uitofp i32 %744 to float
  %746 = fmul fast float %745, 0x3F70101020000000
  %747 = and i32 %743, 255
  %748 = uitofp i32 %747 to float
  %749 = fmul fast float %748, 0x3F70101020000000
  %750 = lshr i32 %743, 8
  %751 = and i32 %750, 255
  %752 = uitofp i32 %751 to float
  %753 = fmul fast float %752, 0x3F70101020000000
  %754 = lshr i32 %743, 16
  %755 = and i32 %754, 255
  %756 = uitofp i32 %755 to float
  %757 = fmul fast float %756, 0x3F70101020000000
  %758 = add i32 %49, 220
  %759 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %758, i32 undef)  ; BufferLoad(srv,index,wot)
  %760 = extractvalue %dx.types.ResRet.i32 %759, 0
  %761 = lshr i32 %760, 24
  %762 = uitofp i32 %761 to float
  %763 = fmul fast float %762, 0x3F70101020000000
  %764 = and i32 %760, 255
  %765 = uitofp i32 %764 to float
  %766 = fmul fast float %765, 0x3F70101020000000
  %767 = lshr i32 %760, 8
  %768 = and i32 %767, 255
  %769 = uitofp i32 %768 to float
  %770 = fmul fast float %769, 0x3F70101020000000
  %771 = lshr i32 %760, 16
  %772 = and i32 %771, 255
  %773 = uitofp i32 %772 to float
  %774 = fmul fast float %773, 0x3F70101020000000
  %775 = bitcast float %699 to i32
  %776 = ashr i32 %775, 1
  %777 = sub nsw i32 1597463174, %776
  %778 = bitcast i32 %777 to float
  %779 = fmul fast float %699, 5.000000e-01
  %780 = fmul fast float %778, %778
  %781 = fmul fast float %780, %779
  %782 = fsub fast float 1.500000e+00, %781
  %783 = fmul fast float %778, %699
  %784 = fmul fast float %783, %782
  %785 = bitcast float %700 to i32
  %786 = ashr i32 %785, 1
  %787 = sub nsw i32 1597463174, %786
  %788 = bitcast i32 %787 to float
  %789 = fmul fast float %700, 5.000000e-01
  %790 = fmul fast float %788, %788
  %791 = fmul fast float %790, %789
  %792 = fsub fast float 1.500000e+00, %791
  %793 = fmul fast float %788, %700
  %794 = fmul fast float %793, %792
  %795 = bitcast float %701 to i32
  %796 = ashr i32 %795, 1
  %797 = sub nsw i32 1597463174, %796
  %798 = bitcast i32 %797 to float
  %799 = fmul fast float %701, 5.000000e-01
  %800 = fmul fast float %798, %798
  %801 = fmul fast float %800, %799
  %802 = fsub fast float 1.500000e+00, %801
  %803 = fmul fast float %798, %701
  %804 = fmul fast float %803, %802
  %805 = fsub fast float %784, %766
  %806 = fsub fast float %794, %770
  %807 = fsub fast float %804, %774
  %808 = fmul fast float %805, %734
  %809 = fmul fast float %806, %736
  %810 = fmul fast float %807, %741
  %811 = fadd fast float %808, %749
  %812 = fadd fast float %809, %753
  %813 = fadd fast float %810, %757
  %814 = call float @dx.op.unary.f32(i32 7, float %811)  ; Saturate(value)
  %815 = call float @dx.op.unary.f32(i32 7, float %812)  ; Saturate(value)
  %816 = call float @dx.op.unary.f32(i32 7, float %813)  ; Saturate(value)
  %817 = fmul fast float %814, %814
  %818 = fmul fast float %815, %815
  %819 = fmul fast float %816, %816
  %820 = fsub fast float %817, %699
  %821 = fsub fast float %818, %700
  %822 = fsub fast float %819, %701
  %823 = fmul fast float %820, %724
  %824 = fmul fast float %821, %724
  %825 = fmul fast float %822, %724
  %826 = fadd fast float %823, %699
  %827 = fadd fast float %824, %700
  %828 = fadd fast float %825, %701
  %829 = fadd fast float %746, %710
  %830 = fsub fast float %829, %763
  %831 = call float @dx.op.unary.f32(i32 7, float %830)  ; Saturate(value)
  %832 = fsub fast float %831, %710
  %833 = fmul fast float %832, %724
  %834 = fadd fast float %833, %710
  br label %888

; <label>:835                                     ; preds = %723
  %836 = and i32 %726, 134217728
  %837 = icmp eq i32 %836, 0
  br i1 %837, label %872, label %838

; <label>:838                                     ; preds = %835
  %839 = call float @dx.op.unary.f32(i32 24, float %291)  ; Sqrt(value)
  %840 = call float @dx.op.unary.f32(i32 24, float %295)  ; Sqrt(value)
  %841 = call float @dx.op.unary.f32(i32 24, float %299)  ; Sqrt(value)
  %842 = fadd fast float %839, -5.000000e-01
  %843 = fadd fast float %840, -5.000000e-01
  %844 = fadd fast float %841, -5.000000e-01
  %845 = fmul fast float %842, %724
  %846 = fmul fast float %843, %724
  %847 = fmul fast float %844, %724
  %848 = fadd fast float %845, 5.000000e-01
  %849 = fadd fast float %846, 5.000000e-01
  %850 = fadd fast float %847, 5.000000e-01
  %851 = call float @dx.op.unary.f32(i32 24, float %699)  ; Sqrt(value)
  %852 = call float @dx.op.unary.f32(i32 24, float %700)  ; Sqrt(value)
  %853 = call float @dx.op.unary.f32(i32 24, float %701)  ; Sqrt(value)
  %854 = fmul fast float %848, 2.000000e+00
  %855 = fsub fast float 1.000000e+00, %854
  %856 = fmul fast float %855, %851
  %857 = fadd fast float %856, %854
  %858 = fmul fast float %857, %851
  %859 = fmul fast float %849, 2.000000e+00
  %860 = fsub fast float 1.000000e+00, %859
  %861 = fmul fast float %860, %852
  %862 = fadd fast float %861, %859
  %863 = fmul fast float %862, %852
  %864 = fmul fast float %850, 2.000000e+00
  %865 = fsub fast float 1.000000e+00, %864
  %866 = fmul fast float %865, %853
  %867 = fadd fast float %866, %864
  %868 = fmul fast float %867, %853
  %869 = fmul fast float %858, %858
  %870 = fmul fast float %863, %863
  %871 = fmul fast float %868, %868
  br label %888

; <label>:872                                     ; preds = %835
  %873 = fmul fast float %291, %291
  %874 = fmul fast float %295, %295
  %875 = fmul fast float %299, %299
  %876 = fadd fast float %873, -1.000000e+00
  %877 = fadd fast float %874, -1.000000e+00
  %878 = fadd fast float %875, -1.000000e+00
  %879 = fmul fast float %724, %876
  %880 = fmul fast float %724, %877
  %881 = fmul fast float %724, %878
  %882 = fadd fast float %879, 1.000000e+00
  %883 = fadd fast float %880, 1.000000e+00
  %884 = fadd fast float %881, 1.000000e+00
  %885 = fmul fast float %882, %699
  %886 = fmul fast float %883, %700
  %887 = fmul fast float %884, %701
  br label %888

; <label>:888                                     ; preds = %872, %838, %729, %684
  %889 = phi float [ %834, %729 ], [ %710, %838 ], [ %710, %872 ], [ 0x3FA23C0BE0000000, %684 ]
  %890 = phi float [ %826, %729 ], [ %869, %838 ], [ %885, %872 ], [ 1.000000e+00, %684 ]
  %891 = phi float [ %827, %729 ], [ %870, %838 ], [ %886, %872 ], [ 1.000000e+00, %684 ]
  %892 = phi float [ %828, %729 ], [ %871, %838 ], [ %887, %872 ], [ 1.000000e+00, %684 ]
  %893 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %894 = extractvalue %dx.types.CBufRet.i32 %893, 1
  %895 = and i32 %894, 1
  %896 = icmp ne i32 %895, 0
  %897 = add i32 %49, 356
  %898 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %897, i32 undef)  ; BufferLoad(srv,index,wot)
  %899 = extractvalue %dx.types.ResRet.i32 %898, 0
  %900 = and i32 %899, 32
  %901 = icmp ne i32 %900, 0
  %902 = and i1 %896, %901
  %903 = select i1 %902, float 1.000000e+00, float %890
  %904 = select i1 %902, float 0x3FD3333340000000, float %891
  %905 = select i1 %902, float 0x3FD3333340000000, float %892
  %906 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %505, i32 undef)  ; BufferLoad(srv,index,wot)
  %907 = extractvalue %dx.types.ResRet.i32 %906, 0
  %908 = and i32 %907, 32
  %909 = icmp eq i32 %908, 0
  br i1 %909, label %982, label %910

; <label>:910                                     ; preds = %888
  %911 = add i32 %49, 92
  %912 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %911, i32 undef)  ; BufferLoad(srv,index,wot)
  %913 = extractvalue %dx.types.ResRet.i32 %912, 0
  %914 = add i32 %49, 392
  %915 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %914, i32 undef)  ; BufferLoad(srv,index,wot)
  %916 = extractvalue %dx.types.ResRet.i32 %915, 0
  %917 = add i32 %916, 0
  %918 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %917, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %919 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %918, %dx.types.Handle %105, float %612, float %613, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %920 = extractvalue %dx.types.ResRet.f32 %919, 0
  %921 = extractvalue %dx.types.ResRet.f32 %919, 1
  %922 = extractvalue %dx.types.ResRet.f32 %919, 2
  %923 = extractvalue %dx.types.ResRet.f32 %919, 3
  %924 = and i32 %913, 255
  %925 = uitofp i32 %924 to float
  %926 = lshr i32 %913, 8
  %927 = and i32 %926, 255
  %928 = uitofp i32 %927 to float
  %929 = lshr i32 %913, 16
  %930 = and i32 %929, 255
  %931 = uitofp i32 %930 to float
  %932 = fmul fast float %931, 0x3F70101000000000
  %933 = fmul fast float %920, %925
  %934 = fadd fast float %933, %928
  %935 = fmul fast float %934, 0x3F70101000000000
  %936 = fadd fast float %921, -5.000000e-01
  %937 = fadd fast float %923, -5.000000e-01
  %938 = fmul fast float %936, %932
  %939 = fmul fast float %937, %932
  %940 = fadd fast float %938, 5.000000e-01
  %941 = fadd fast float %939, 5.000000e-01
  %942 = fmul fast float %940, 2.000000e+00
  %943 = fadd fast float %942, -1.000000e+00
  %944 = fmul fast float %941, 2.000000e+00
  %945 = fadd fast float %944, -1.000000e+00
  %946 = fadd fast float %943, %945
  %947 = fmul fast float %946, 5.000000e-01
  %948 = fsub fast float %943, %945
  %949 = fmul fast float %948, 5.000000e-01
  %950 = call float @dx.op.unary.f32(i32 6, float %947)  ; FAbs(value)
  %951 = fsub fast float 1.000000e+00, %950
  %952 = call float @dx.op.unary.f32(i32 6, float %949)  ; FAbs(value)
  %953 = fsub fast float %951, %952
  %954 = call float @dx.op.dot3.f32(i32 55, float %947, float %949, float %953, float %947, float %949, float %953)  ; Dot3(ax,ay,az,bx,by,bz)
  %955 = call float @dx.op.unary.f32(i32 25, float %954)  ; Rsqrt(value)
  %956 = fmul fast float %947, %955
  %957 = fmul fast float %949, %955
  %958 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %505, i32 undef)  ; BufferLoad(srv,index,wot)
  %959 = extractvalue %dx.types.ResRet.i32 %958, 0
  %960 = and i32 %959, 67108864
  %961 = icmp eq i32 %960, 0
  br i1 %961, label %978, label %962

; <label>:962                                     ; preds = %910
  %963 = add i32 %49, 280
  %964 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %963, i32 undef)  ; BufferLoad(srv,index,wot)
  %965 = extractvalue %dx.types.ResRet.i32 %964, 0
  %966 = and i32 %965, 65535
  %967 = call float @dx.op.legacyF16ToF32(i32 131, i32 %966)  ; LegacyF16ToF32(value)
  %968 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %522, i32 undef)  ; BufferLoad(srv,index,wot)
  %969 = extractvalue %dx.types.ResRet.i32 %968, 0
  %970 = and i32 %969, 65535
  %971 = call float @dx.op.legacyF16ToF32(i32 131, i32 %970)  ; LegacyF16ToF32(value)
  %972 = lshr i32 %965, 16
  %973 = call float @dx.op.legacyF16ToF32(i32 131, i32 %972)  ; LegacyF16ToF32(value)
  %974 = fsub fast float %935, %973
  %975 = fmul fast float %974, %967
  %976 = fadd fast float %975, %971
  %977 = call float @dx.op.unary.f32(i32 7, float %976)  ; Saturate(value)
  br label %978

; <label>:978                                     ; preds = %962, %910
  %979 = phi float [ %977, %962 ], [ %935, %910 ]
  %980 = call float @dx.op.dot2.f32(i32 54, float %956, float %957, float %516, float %517)  ; Dot2(ax,ay,bx,by)
  %981 = call float @dx.op.dot2.f32(i32 54, float %956, float %957, float %518, float %519)  ; Dot2(ax,ay,bx,by)
  br label %982

; <label>:982                                     ; preds = %978, %888
  %983 = phi float [ %979, %978 ], [ 0x3FD6666660000000, %888 ]
  %984 = phi float [ %980, %978 ], [ 0.000000e+00, %888 ]
  %985 = phi float [ %981, %978 ], [ 0.000000e+00, %888 ]
  %986 = phi float [ %922, %978 ], [ 1.000000e+00, %888 ]
  %987 = add i32 %49, 160
  %988 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %987, i32 undef)  ; BufferLoad(srv,index,wot)
  %989 = extractvalue %dx.types.ResRet.i32 %988, 0
  %990 = lshr i32 %989, 22
  %991 = shl nuw nsw i32 %990, 5
  %992 = call float @dx.op.legacyF16ToF32(i32 131, i32 %991)  ; LegacyF16ToF32(value)
  %993 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %505, i32 undef)  ; BufferLoad(srv,index,wot)
  %994 = extractvalue %dx.types.ResRet.i32 %993, 0
  %995 = and i32 %994, 64
  %996 = icmp eq i32 %995, 0
  br i1 %996, label %1030, label %997

; <label>:997                                     ; preds = %982
  %998 = add i32 %49, 408
  %999 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %998, i32 undef)  ; BufferLoad(srv,index,wot)
  %1000 = extractvalue %dx.types.ResRet.i32 %999, 0
  %1001 = add i32 %1000, 0
  %1002 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1001, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1003 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %505, i32 undef)  ; BufferLoad(srv,index,wot)
  %1004 = extractvalue %dx.types.ResRet.i32 %1003, 0
  %1005 = and i32 %1004, 131072
  %1006 = icmp eq i32 %1005, 0
  %1007 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1002, %dx.types.Handle %105, float %612, float %613, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1008 = extractvalue %dx.types.ResRet.f32 %1007, 0
  %1009 = extractvalue %dx.types.ResRet.f32 %1007, 1
  %1010 = extractvalue %dx.types.ResRet.f32 %1007, 2
  %1011 = fmul fast float %1008, %279
  %1012 = fmul fast float %1009, %282
  %1013 = fmul fast float %1010, %285
  br i1 %1006, label %1020, label %1014

; <label>:1014                                    ; preds = %997
  %1015 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1016 = extractvalue %dx.types.CBufRet.f32 %1015, 0
  %1017 = fmul fast float %1016, %1011
  %1018 = fmul fast float %1016, %1012
  %1019 = fmul fast float %1016, %1013
  br label %1020

; <label>:1020                                    ; preds = %1014, %997
  %1021 = phi float [ %1017, %1014 ], [ %1011, %997 ]
  %1022 = phi float [ %1018, %1014 ], [ %1012, %997 ]
  %1023 = phi float [ %1019, %1014 ], [ %1013, %997 ]
  %1024 = fmul fast float %1021, %992
  %1025 = select i1 %262, float %1024, float %1021
  %1026 = call float @dx.op.dot3.f32(i32 55, float %1025, float %1022, float %1023, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1027 = select i1 %262, float 0.000000e+00, float %1021
  %1028 = select i1 %262, float %1026, float %1022
  %1029 = select i1 %262, float 0.000000e+00, float %1023
  br label %1030

; <label>:1030                                    ; preds = %1020, %982
  %1031 = phi float [ %1027, %1020 ], [ 0.000000e+00, %982 ]
  %1032 = phi float [ %1028, %1020 ], [ 0.000000e+00, %982 ]
  %1033 = phi float [ %1029, %1020 ], [ 0.000000e+00, %982 ]
  %1034 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %505, i32 undef)  ; BufferLoad(srv,index,wot)
  %1035 = extractvalue %dx.types.ResRet.i32 %1034, 0
  %1036 = and i32 %1035, 1024
  %1037 = icmp eq i32 %1036, 0
  br i1 %1037, label %1068, label %1038

; <label>:1038                                    ; preds = %1030
  %1039 = add i32 %49, 152
  %1040 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1039, i32 undef)  ; BufferLoad(srv,index,wot)
  %1041 = extractvalue %dx.types.ResRet.i32 %1040, 0
  %1042 = and i32 %1041, 255
  %1043 = uitofp i32 %1042 to float
  %1044 = fmul fast float %1043, 0x3F70101020000000
  %1045 = lshr i32 %1041, 8
  %1046 = and i32 %1045, 255
  %1047 = uitofp i32 %1046 to float
  %1048 = fmul fast float %1047, 0x3F70101020000000
  %1049 = lshr i32 %1041, 16
  %1050 = and i32 %1049, 255
  %1051 = uitofp i32 %1050 to float
  %1052 = fmul fast float %1051, 0x3F70101020000000
  %1053 = fmul fast float %1044, %1044
  %1054 = fmul fast float %1048, %1048
  %1055 = fmul fast float %1052, %1052
  %1056 = add i32 %49, 476
  %1057 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1056, i32 undef)  ; BufferLoad(srv,index,wot)
  %1058 = extractvalue %dx.types.ResRet.i32 %1057, 0
  %1059 = add i32 %1058, 0
  %1060 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1059, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1061 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1060, %dx.types.Handle %106, float %612, float %613, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1062 = extractvalue %dx.types.ResRet.f32 %1061, 0
  %1063 = extractvalue %dx.types.ResRet.f32 %1061, 1
  %1064 = extractvalue %dx.types.ResRet.f32 %1061, 2
  %1065 = fmul fast float %1053, %1062
  %1066 = fmul fast float %1054, %1063
  %1067 = fmul fast float %1055, %1064
  br label %1068

; <label>:1068                                    ; preds = %1038, %1030
  %1069 = phi float [ %1065, %1038 ], [ 0.000000e+00, %1030 ]
  %1070 = phi float [ %1066, %1038 ], [ 0.000000e+00, %1030 ]
  %1071 = phi float [ %1067, %1038 ], [ 0.000000e+00, %1030 ]
  %1072 = fcmp fast ogt float %1069, 0.000000e+00
  %1073 = fcmp fast ogt float %1070, 0.000000e+00
  %1074 = fcmp fast ogt float %1071, 0.000000e+00
  %1075 = call float @dx.op.unary.f32(i32 23, float %1069)  ; Log(value)
  %1076 = call float @dx.op.unary.f32(i32 23, float %1070)  ; Log(value)
  %1077 = call float @dx.op.unary.f32(i32 23, float %1071)  ; Log(value)
  %1078 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %987, i32 undef)  ; BufferLoad(srv,index,wot)
  %1079 = extractvalue %dx.types.ResRet.i32 %1078, 0
  %1080 = lshr i32 %1079, 7
  %1081 = and i32 %1080, 32752
  %1082 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1081)  ; LegacyF16ToF32(value)
  %1083 = fmul fast float %1075, 0xBFE62E4300000000
  %1084 = fmul fast float %1083, %1082
  %1085 = fmul fast float %1076, 0xBFE62E4300000000
  %1086 = fmul fast float %1085, %1082
  %1087 = fmul fast float %1077, 0xBFE62E4300000000
  %1088 = fmul fast float %1087, %1082
  %1089 = select i1 %1072, float %1084, float 1.270000e+02
  %1090 = select i1 %1073, float %1086, float 1.270000e+02
  %1091 = select i1 %1074, float %1088, float 1.270000e+02
  %1092 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %505, i32 undef)  ; BufferLoad(srv,index,wot)
  %1093 = extractvalue %dx.types.ResRet.i32 %1092, 0
  %1094 = and i32 %1093, 10240
  %1095 = icmp eq i32 %1094, 0
  br i1 %1095, label %1140, label %1096

; <label>:1096                                    ; preds = %1068
  %1097 = add i32 %49, 492
  %1098 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1097, i32 undef)  ; BufferLoad(srv,index,wot)
  %1099 = extractvalue %dx.types.ResRet.i32 %1098, 0
  %1100 = add i32 %1099, 0
  %1101 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1100, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1102 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1101, %dx.types.Handle %106, float %612, float %613, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1103 = extractvalue %dx.types.ResRet.f32 %1102, 1
  %1104 = extractvalue %dx.types.ResRet.f32 %1102, 3
  %1105 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %505, i32 undef)  ; BufferLoad(srv,index,wot)
  %1106 = extractvalue %dx.types.ResRet.i32 %1105, 0
  %1107 = and i32 %1106, 1048576
  %1108 = icmp ne i32 %1107, 0
  %1109 = and i32 %1106, 8192
  %1110 = icmp eq i32 %1109, 0
  br i1 %1110, label %1126, label %1111

; <label>:1111                                    ; preds = %1096
  %1112 = extractvalue %dx.types.ResRet.f32 %1102, 2
  %1113 = select i1 %1108, float %1112, float %1103
  %1114 = extractvalue %dx.types.ResRet.f32 %1102, 0
  %1115 = select i1 %1108, float %1114, float %1103
  %1116 = add i32 %49, 96
  %1117 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1116, i32 undef)  ; BufferLoad(srv,index,wot)
  %1118 = extractvalue %dx.types.ResRet.i32 %1117, 0
  %1119 = lshr i32 %1118, 16
  %1120 = and i32 %1119, 255
  %1121 = uitofp i32 %1120 to float
  %1122 = fmul fast float %1121, 0x3F80101020000000
  %1123 = fmul fast float %1122, %1115
  %1124 = fmul fast float %1122, %1103
  %1125 = fmul fast float %1122, %1113
  br label %1126

; <label>:1126                                    ; preds = %1111, %1096
  %1127 = phi float [ %1123, %1111 ], [ 0.000000e+00, %1096 ]
  %1128 = phi float [ %1124, %1111 ], [ 0.000000e+00, %1096 ]
  %1129 = phi float [ %1125, %1111 ], [ 0.000000e+00, %1096 ]
  %1130 = and i32 %1106, 2048
  %1131 = icmp eq i32 %1130, 0
  br i1 %1131, label %1140, label %1132

; <label>:1132                                    ; preds = %1126
  %1133 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %987, i32 undef)  ; BufferLoad(srv,index,wot)
  %1134 = extractvalue %dx.types.ResRet.i32 %1133, 0
  %1135 = shl i32 %1134, 4
  %1136 = and i32 %1135, 32752
  %1137 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1136)  ; LegacyF16ToF32(value)
  %1138 = fmul fast float %1137, %1104
  %1139 = call float @dx.op.binary.f32(i32 35, float %1138, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1140

; <label>:1140                                    ; preds = %1132, %1126, %1068
  %1141 = phi float [ %1127, %1132 ], [ %1127, %1126 ], [ 0.000000e+00, %1068 ]
  %1142 = phi float [ %1128, %1132 ], [ %1128, %1126 ], [ 0.000000e+00, %1068 ]
  %1143 = phi float [ %1129, %1132 ], [ %1129, %1126 ], [ 0.000000e+00, %1068 ]
  %1144 = phi float [ %1139, %1132 ], [ 0x3F70101020000000, %1126 ], [ 0x3F70101020000000, %1068 ]
  %1145 = add i32 %49, 96
  %1146 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1145, i32 undef)  ; BufferLoad(srv,index,wot)
  %1147 = extractvalue %dx.types.ResRet.i32 %1146, 0
  %1148 = and i32 %1147, 255
  %1149 = uitofp i32 %1148 to float
  %1150 = lshr i32 %1147, 8
  %1151 = and i32 %1150, 255
  %1152 = uitofp i32 %1151 to float
  %1153 = call float @dx.op.dot3.f32(i32 55, float %903, float %904, float %905, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1154 = fmul fast float %1152, %1153
  %1155 = fadd fast float %1154, %1149
  %1156 = fmul fast float %1155, 0x3F70101020000000
  %1157 = call float @dx.op.unary.f32(i32 7, float %1156)  ; Saturate(value)
  br label %1158

; <label>:1158                                    ; preds = %1140, %498
  %1159 = phi float [ 0.000000e+00, %498 ], [ %984, %1140 ]
  %1160 = phi float [ 0.000000e+00, %498 ], [ %985, %1140 ]
  %1161 = phi float [ 0.000000e+00, %498 ], [ %903, %1140 ]
  %1162 = phi float [ 0.000000e+00, %498 ], [ %904, %1140 ]
  %1163 = phi float [ 0.000000e+00, %498 ], [ %905, %1140 ]
  %1164 = phi float [ 0.000000e+00, %498 ], [ %1031, %1140 ]
  %1165 = phi float [ 0.000000e+00, %498 ], [ %1032, %1140 ]
  %1166 = phi float [ 0.000000e+00, %498 ], [ %1033, %1140 ]
  %1167 = phi float [ 0.000000e+00, %498 ], [ %1089, %1140 ]
  %1168 = phi float [ 0.000000e+00, %498 ], [ %1090, %1140 ]
  %1169 = phi float [ 0.000000e+00, %498 ], [ %1091, %1140 ]
  %1170 = phi float [ 0.000000e+00, %498 ], [ %1141, %1140 ]
  %1171 = phi float [ 0.000000e+00, %498 ], [ %1142, %1140 ]
  %1172 = phi float [ 0.000000e+00, %498 ], [ %1143, %1140 ]
  %1173 = phi float [ 0.000000e+00, %498 ], [ %889, %1140 ]
  %1174 = phi float [ 0.000000e+00, %498 ], [ %685, %1140 ]
  %1175 = phi float [ 0.000000e+00, %498 ], [ %983, %1140 ]
  %1176 = phi float [ 0.000000e+00, %498 ], [ %986, %1140 ]
  %1177 = phi float [ 0.000000e+00, %498 ], [ %1144, %1140 ]
  %1178 = phi float [ 0.000000e+00, %498 ], [ %1157, %1140 ]
  br i1 %446, label %2101, label %1179

; <label>:1179                                    ; preds = %1158
  %1180 = icmp ult i32 %504, 2
  %1181 = add i32 %49, 40
  %1182 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1181, i32 undef)  ; BufferLoad(srv,index,wot)
  %1183 = extractvalue %dx.types.ResRet.i32 %1182, 0
  %1184 = add i32 %49, 44
  %1185 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1184, i32 undef)  ; BufferLoad(srv,index,wot)
  %1186 = extractvalue %dx.types.ResRet.i32 %1185, 0
  %1187 = or i32 %1186, %1183
  %1188 = icmp eq i32 %1187, 0
  br i1 %1188, label %2101, label %1189

; <label>:1189                                    ; preds = %1179
  %1190 = and i32 %1183, 262144
  %1191 = icmp ne i32 %1190, 0
  %1192 = select i1 %1191, float %55, float 1.000000e+00
  %1193 = select i1 %1191, float %56, float 0.000000e+00
  %1194 = select i1 %1191, float %57, float 0.000000e+00
  %1195 = select i1 %1191, float %58, float 1.000000e+00
  %1196 = select i1 %1191, float %59, float %87
  %1197 = select i1 %1191, float %60, float %88
  %1198 = add i32 %49, 300
  %1199 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1198, i32 undef)  ; BufferLoad(srv,index,wot)
  %1200 = extractvalue %dx.types.ResRet.i32 %1199, 0
  %1201 = lshr i32 %1200, 16
  %1202 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1201)  ; LegacyF16ToF32(value)
  %1203 = fmul fast float %1202, 0x3F50624DE0000000
  %1204 = add i32 %49, 104
  %1205 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1204, i32 undef)  ; BufferLoad(srv,index,wot)
  %1206 = extractvalue %dx.types.ResRet.i32 %1205, 0
  %1207 = lshr i32 %1206, 16
  %1208 = and i32 %1207, 255
  %1209 = lshr i32 %1206, 24
  %1210 = add i32 %49, 308
  %1211 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1210, i32 undef)  ; BufferLoad(srv,index,wot)
  %1212 = extractvalue %dx.types.ResRet.i32 %1211, 0
  %1213 = and i32 %1212, 65535
  %1214 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1213)  ; LegacyF16ToF32(value)
  %1215 = lshr i32 %1212, 16
  %1216 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1215)  ; LegacyF16ToF32(value)
  %1217 = add i32 %49, 48
  %1218 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1217, i32 undef)  ; BufferLoad(srv,index,wot)
  %1219 = extractvalue %dx.types.ResRet.i32 %1218, 0
  %1220 = lshr i32 %1219, 22
  %1221 = shl nuw nsw i32 %1220, 5
  %1222 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1221)  ; LegacyF16ToF32(value)
  %1223 = shl i32 %1219, 4
  %1224 = and i32 %1223, 32752
  %1225 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1224)  ; LegacyF16ToF32(value)
  %1226 = lshr i32 %1219, 7
  %1227 = and i32 %1226, 32752
  %1228 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1227)  ; LegacyF16ToF32(value)
  %1229 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1230 = extractvalue %dx.types.CBufRet.f32 %1229, 3
  %1231 = fmul fast float %1230, 1.000000e+03
  %1232 = fmul fast float %356, %1231
  %1233 = call float @dx.op.unary.f32(i32 22, float %1232)  ; Frc(value)
  %1234 = fadd fast float %1233, %346
  %1235 = fmul fast float %357, %1231
  %1236 = call float @dx.op.unary.f32(i32 22, float %1235)  ; Frc(value)
  %1237 = fadd fast float %1236, %348
  %1238 = fmul fast float %1203, %1231
  %1239 = call float @dx.op.unary.f32(i32 22, float %1238)  ; Frc(value)
  %1240 = fmul fast float %1239, 0x401921FB60000000
  %1241 = fadd fast float %1240, %1222
  %1242 = call float @dx.op.unary.f32(i32 13, float %1241)  ; Sin(value)
  %1243 = call float @dx.op.unary.f32(i32 12, float %1241)  ; Cos(value)
  %1244 = fsub fast float -0.000000e+00, %1242
  %1245 = fadd fast float %1196, -5.000000e-01
  %1246 = fadd fast float %1197, -5.000000e-01
  %1247 = fmul fast float %1214, %1245
  %1248 = fmul fast float %1216, %1246
  %1249 = fadd fast float %1247, 5.000000e-01
  %1250 = fadd fast float %1248, 5.000000e-01
  %1251 = fmul fast float %1225, %1249
  %1252 = fmul fast float %1228, %1250
  %1253 = fmul fast float %1243, %1251
  %1254 = call float @dx.op.tertiary.f32(i32 46, float %1244, float %1252, float %1253)  ; FMad(a,b,c)
  %1255 = fmul fast float %1242, %1251
  %1256 = call float @dx.op.tertiary.f32(i32 46, float %1243, float %1252, float %1255)  ; FMad(a,b,c)
  %1257 = fadd fast float %1234, %1254
  %1258 = fadd fast float %1237, %1256
  %1259 = icmp ugt i32 %1208, 1
  %1260 = icmp ugt i32 %1206, 33554431
  %1261 = or i1 %1260, %1259
  br i1 %1261, label %1262, label %1287

; <label>:1262                                    ; preds = %1189
  %1263 = add i32 %49, 244
  %1264 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1263, i32 undef)  ; BufferLoad(srv,index,wot)
  %1265 = extractvalue %dx.types.ResRet.i32 %1264, 0
  %1266 = lshr i32 %1265, 16
  %1267 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1266)  ; LegacyF16ToF32(value)
  %1268 = fmul fast float %1230, %1267
  %1269 = call float @dx.op.unary.f32(i32 22, float %1268)  ; Frc(value)
  %1270 = mul nuw nsw i32 %1208, %1209
  %1271 = uitofp i32 %1270 to float
  %1272 = fmul fast float %1269, %1271
  %1273 = call float @dx.op.unary.f32(i32 27, float %1272)  ; Round_ni(value)
  %1274 = fptoui float %1273 to i32
  %1275 = urem i32 %1274, %1208
  %1276 = udiv i32 %1274, %1209
  %1277 = call float @dx.op.unary.f32(i32 22, float %1257)  ; Frc(value)
  %1278 = call float @dx.op.unary.f32(i32 22, float %1258)  ; Frc(value)
  %1279 = uitofp i32 %1275 to float
  %1280 = uitofp i32 %1276 to float
  %1281 = fadd fast float %1277, %1279
  %1282 = fadd fast float %1278, %1280
  %1283 = uitofp i32 %1208 to float
  %1284 = uitofp i32 %1209 to float
  %1285 = fdiv fast float %1281, %1283
  %1286 = fdiv fast float %1282, %1284
  br label %1287

; <label>:1287                                    ; preds = %1262, %1189
  %1288 = phi float [ %1285, %1262 ], [ %1257, %1189 ]
  %1289 = phi float [ %1286, %1262 ], [ %1258, %1189 ]
  %1290 = and i32 %1183, 256
  %1291 = icmp eq i32 %1290, 0
  br i1 %1291, label %1338, label %1292

; <label>:1292                                    ; preds = %1287
  %1293 = add i32 %49, 444
  %1294 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1293, i32 undef)  ; BufferLoad(srv,index,wot)
  %1295 = extractvalue %dx.types.ResRet.i32 %1294, 0
  %1296 = add i32 %1295, 0
  %1297 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1296, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1298 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1297, %dx.types.Handle %106, float %1288, float %1289, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1299 = extractvalue %dx.types.ResRet.f32 %1298, 0
  %1300 = add i32 %49, 116
  %1301 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1300, i32 undef)  ; BufferLoad(srv,index,wot)
  %1302 = extractvalue %dx.types.ResRet.i32 %1301, 0
  %1303 = shl i32 %1302, 4
  %1304 = and i32 %1303, 32752
  %1305 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1304)  ; LegacyF16ToF32(value)
  %1306 = lshr i32 %1302, 7
  %1307 = and i32 %1306, 32752
  %1308 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1307)  ; LegacyF16ToF32(value)
  %1309 = fsub fast float 1.000000e+00, %501
  %1310 = call float @dx.op.binary.f32(i32 35, float %1309, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1311 = bitcast float %501 to i32
  %1312 = sitofp i32 %1311 to float
  %1313 = fadd fast float %1312, 0xC1CFBF8940000000
  %1314 = fmul fast float %1308, %1313
  %1315 = fadd fast float %1314, 0x41CFBF8940000000
  %1316 = fptosi float %1315 to i32
  %1317 = bitcast i32 %1316 to float
  %1318 = bitcast float %1310 to i32
  %1319 = sitofp i32 %1318 to float
  %1320 = fadd fast float %1319, 0xC1CFBF8940000000
  %1321 = fmul fast float %1320, %1308
  %1322 = fadd fast float %1321, 0x41CFBF8940000000
  %1323 = fptosi float %1322 to i32
  %1324 = bitcast i32 %1323 to float
  %1325 = fmul fast float %1317, %1305
  %1326 = fmul fast float %1324, %1305
  %1327 = fsub fast float %1310, %1325
  %1328 = fadd fast float %1326, %1310
  %1329 = call float @dx.op.unary.f32(i32 7, float %1327)  ; Saturate(value)
  %1330 = call float @dx.op.unary.f32(i32 7, float %1328)  ; Saturate(value)
  %1331 = fsub fast float %1299, %1329
  %1332 = fsub fast float %1330, %1329
  %1333 = bitcast float %1332 to i32
  %1334 = sub nsw i32 2129859010, %1333
  %1335 = bitcast i32 %1334 to float
  %1336 = fmul fast float %1335, %1331
  %1337 = call float @dx.op.unary.f32(i32 7, float %1336)  ; Saturate(value)
  br label %1338

; <label>:1338                                    ; preds = %1292, %1287
  %1339 = phi float [ %1337, %1292 ], [ %501, %1287 ]
  %1340 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1181, i32 undef)  ; BufferLoad(srv,index,wot)
  %1341 = extractvalue %dx.types.ResRet.i32 %1340, 0
  %1342 = and i32 %1341, 128
  %1343 = icmp eq i32 %1342, 0
  br i1 %1343, label %1360, label %1344

; <label>:1344                                    ; preds = %1338
  %1345 = add i32 %49, 428
  %1346 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1345, i32 undef)  ; BufferLoad(srv,index,wot)
  %1347 = extractvalue %dx.types.ResRet.i32 %1346, 0
  %1348 = add i32 %1347, 0
  %1349 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1348, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1350 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1349, %dx.types.Handle %106, float %1288, float %1289, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1351 = extractvalue %dx.types.ResRet.f32 %1350, 0
  %1352 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1181, i32 undef)  ; BufferLoad(srv,index,wot)
  %1353 = extractvalue %dx.types.ResRet.i32 %1352, 0
  %1354 = and i32 %1353, 524288
  %1355 = icmp ne i32 %1354, 0
  %1356 = fcmp fast ogt float %1351, 0x3FE0101020000000
  %1357 = select i1 %1356, float 1.000000e+00, float 0.000000e+00
  %1358 = select i1 %1355, float %1357, float %1351
  %1359 = fmul fast float %1358, %1339
  br label %1360

; <label>:1360                                    ; preds = %1344, %1338
  %1361 = phi float [ %1359, %1344 ], [ %1339, %1338 ]
  %1362 = fcmp fast ult float %1361, 0x3F70101020000000
  br i1 %1362, label %2101, label %1363

; <label>:1363                                    ; preds = %1360
  %1364 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1181, i32 undef)  ; BufferLoad(srv,index,wot)
  %1365 = extractvalue %dx.types.ResRet.i32 %1364, 0
  %1366 = and i32 %1365, 16
  %1367 = icmp eq i32 %1366, 0
  br i1 %1367, label %1566, label %1368

; <label>:1368                                    ; preds = %1363
  %1369 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1204, i32 undef)  ; BufferLoad(srv,index,wot)
  %1370 = extractvalue %dx.types.ResRet.i32 %1369, 0
  %1371 = add i32 %49, 380
  %1372 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1371, i32 undef)  ; BufferLoad(srv,index,wot)
  %1373 = extractvalue %dx.types.ResRet.i32 %1372, 0
  %1374 = add i32 %1373, 0
  %1375 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1374, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1376 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1375, %dx.types.Handle %105, float %1288, float %1289, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1377 = extractvalue %dx.types.ResRet.f32 %1376, 0
  %1378 = extractvalue %dx.types.ResRet.f32 %1376, 1
  %1379 = extractvalue %dx.types.ResRet.f32 %1376, 2
  %1380 = extractvalue %dx.types.ResRet.f32 %1376, 3
  %1381 = and i32 %1370, 255
  %1382 = uitofp i32 %1381 to float
  %1383 = lshr i32 %1370, 8
  %1384 = and i32 %1383, 255
  %1385 = uitofp i32 %1384 to float
  %1386 = fmul fast float %1380, %1382
  %1387 = fadd fast float %1386, %1385
  %1388 = fmul fast float %1387, 0x3F70101000000000
  %1389 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1181, i32 undef)  ; BufferLoad(srv,index,wot)
  %1390 = extractvalue %dx.types.ResRet.i32 %1389, 0
  %1391 = and i32 %1390, 512
  %1392 = icmp eq i32 %1391, 0
  br i1 %1392, label %1401, label %1393

; <label>:1393                                    ; preds = %1368
  %1394 = add i32 %49, 464
  %1395 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1394, i32 undef)  ; BufferLoad(srv,index,wot)
  %1396 = extractvalue %dx.types.ResRet.i32 %1395, 0
  %1397 = add i32 %1396, 0
  %1398 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1397, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1399 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1398, %dx.types.Handle %106, float %1288, float %1289, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1400 = extractvalue %dx.types.ResRet.f32 %1399, 0
  br label %1401

; <label>:1401                                    ; preds = %1393, %1368
  %1402 = phi float [ %1400, %1393 ], [ 1.000000e+00, %1368 ]
  %1403 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1181, i32 undef)  ; BufferLoad(srv,index,wot)
  %1404 = extractvalue %dx.types.ResRet.i32 %1403, 0
  %1405 = and i32 %1404, 33554432
  %1406 = icmp eq i32 %1405, 0
  br i1 %1406, label %1513, label %1407

; <label>:1407                                    ; preds = %1401
  %1408 = add i32 %49, 240
  %1409 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1408, i32 undef)  ; BufferLoad(srv,index,wot)
  %1410 = extractvalue %dx.types.ResRet.i32 %1409, 0
  %1411 = and i32 %1410, 65535
  %1412 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1411)  ; LegacyF16ToF32(value)
  %1413 = lshr i32 %1410, 16
  %1414 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1413)  ; LegacyF16ToF32(value)
  %1415 = add i32 %49, 244
  %1416 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1415, i32 undef)  ; BufferLoad(srv,index,wot)
  %1417 = extractvalue %dx.types.ResRet.i32 %1416, 0
  %1418 = and i32 %1417, 65535
  %1419 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1418)  ; LegacyF16ToF32(value)
  %1420 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %328, i32 undef)  ; BufferLoad(srv,index,wot)
  %1421 = extractvalue %dx.types.ResRet.i32 %1420, 0
  %1422 = lshr i32 %1421, 24
  %1423 = uitofp i32 %1422 to float
  %1424 = fmul fast float %1423, 0x3F70101020000000
  %1425 = and i32 %1421, 255
  %1426 = uitofp i32 %1425 to float
  %1427 = fmul fast float %1426, 0x3F70101020000000
  %1428 = lshr i32 %1421, 8
  %1429 = and i32 %1428, 255
  %1430 = uitofp i32 %1429 to float
  %1431 = fmul fast float %1430, 0x3F70101020000000
  %1432 = lshr i32 %1421, 16
  %1433 = and i32 %1432, 255
  %1434 = uitofp i32 %1433 to float
  %1435 = fmul fast float %1434, 0x3F70101020000000
  %1436 = add i32 %49, 236
  %1437 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1436, i32 undef)  ; BufferLoad(srv,index,wot)
  %1438 = extractvalue %dx.types.ResRet.i32 %1437, 0
  %1439 = lshr i32 %1438, 24
  %1440 = uitofp i32 %1439 to float
  %1441 = fmul fast float %1440, 0x3F70101020000000
  %1442 = and i32 %1438, 255
  %1443 = uitofp i32 %1442 to float
  %1444 = fmul fast float %1443, 0x3F70101020000000
  %1445 = lshr i32 %1438, 8
  %1446 = and i32 %1445, 255
  %1447 = uitofp i32 %1446 to float
  %1448 = fmul fast float %1447, 0x3F70101020000000
  %1449 = lshr i32 %1438, 16
  %1450 = and i32 %1449, 255
  %1451 = uitofp i32 %1450 to float
  %1452 = fmul fast float %1451, 0x3F70101020000000
  %1453 = bitcast float %1377 to i32
  %1454 = ashr i32 %1453, 1
  %1455 = sub nsw i32 1597463174, %1454
  %1456 = bitcast i32 %1455 to float
  %1457 = fmul fast float %1377, 5.000000e-01
  %1458 = fmul fast float %1456, %1456
  %1459 = fmul fast float %1458, %1457
  %1460 = fsub fast float 1.500000e+00, %1459
  %1461 = fmul fast float %1456, %1377
  %1462 = fmul fast float %1461, %1460
  %1463 = bitcast float %1378 to i32
  %1464 = ashr i32 %1463, 1
  %1465 = sub nsw i32 1597463174, %1464
  %1466 = bitcast i32 %1465 to float
  %1467 = fmul fast float %1378, 5.000000e-01
  %1468 = fmul fast float %1466, %1466
  %1469 = fmul fast float %1468, %1467
  %1470 = fsub fast float 1.500000e+00, %1469
  %1471 = fmul fast float %1466, %1378
  %1472 = fmul fast float %1471, %1470
  %1473 = bitcast float %1379 to i32
  %1474 = ashr i32 %1473, 1
  %1475 = sub nsw i32 1597463174, %1474
  %1476 = bitcast i32 %1475 to float
  %1477 = fmul fast float %1379, 5.000000e-01
  %1478 = fmul fast float %1476, %1476
  %1479 = fmul fast float %1478, %1477
  %1480 = fsub fast float 1.500000e+00, %1479
  %1481 = fmul fast float %1476, %1379
  %1482 = fmul fast float %1481, %1480
  %1483 = fsub fast float %1462, %1444
  %1484 = fsub fast float %1472, %1448
  %1485 = fsub fast float %1482, %1452
  %1486 = fmul fast float %1483, %1412
  %1487 = fmul fast float %1484, %1414
  %1488 = fmul fast float %1485, %1419
  %1489 = fadd fast float %1486, %1427
  %1490 = fadd fast float %1487, %1431
  %1491 = fadd fast float %1488, %1435
  %1492 = call float @dx.op.unary.f32(i32 7, float %1489)  ; Saturate(value)
  %1493 = call float @dx.op.unary.f32(i32 7, float %1490)  ; Saturate(value)
  %1494 = call float @dx.op.unary.f32(i32 7, float %1491)  ; Saturate(value)
  %1495 = fmul fast float %1492, %1492
  %1496 = fmul fast float %1493, %1493
  %1497 = fmul fast float %1494, %1494
  %1498 = fsub fast float %1495, %1377
  %1499 = fsub fast float %1496, %1378
  %1500 = fsub fast float %1497, %1379
  %1501 = fmul fast float %1498, %1402
  %1502 = fmul fast float %1499, %1402
  %1503 = fmul fast float %1500, %1402
  %1504 = fadd fast float %1501, %1377
  %1505 = fadd fast float %1502, %1378
  %1506 = fadd fast float %1503, %1379
  %1507 = fadd fast float %1424, %1388
  %1508 = fsub fast float %1507, %1441
  %1509 = call float @dx.op.unary.f32(i32 7, float %1508)  ; Saturate(value)
  %1510 = fsub fast float %1509, %1388
  %1511 = fmul fast float %1510, %1402
  %1512 = fadd fast float %1511, %1388
  br label %1566

; <label>:1513                                    ; preds = %1401
  %1514 = and i32 %1404, 134217728
  %1515 = icmp eq i32 %1514, 0
  br i1 %1515, label %1550, label %1516

; <label>:1516                                    ; preds = %1513
  %1517 = call float @dx.op.unary.f32(i32 24, float %333)  ; Sqrt(value)
  %1518 = call float @dx.op.unary.f32(i32 24, float %337)  ; Sqrt(value)
  %1519 = call float @dx.op.unary.f32(i32 24, float %341)  ; Sqrt(value)
  %1520 = fadd fast float %1517, -5.000000e-01
  %1521 = fadd fast float %1518, -5.000000e-01
  %1522 = fadd fast float %1519, -5.000000e-01
  %1523 = fmul fast float %1520, %1402
  %1524 = fmul fast float %1521, %1402
  %1525 = fmul fast float %1522, %1402
  %1526 = fadd fast float %1523, 5.000000e-01
  %1527 = fadd fast float %1524, 5.000000e-01
  %1528 = fadd fast float %1525, 5.000000e-01
  %1529 = call float @dx.op.unary.f32(i32 24, float %1377)  ; Sqrt(value)
  %1530 = call float @dx.op.unary.f32(i32 24, float %1378)  ; Sqrt(value)
  %1531 = call float @dx.op.unary.f32(i32 24, float %1379)  ; Sqrt(value)
  %1532 = fmul fast float %1526, 2.000000e+00
  %1533 = fsub fast float 1.000000e+00, %1532
  %1534 = fmul fast float %1533, %1529
  %1535 = fadd fast float %1534, %1532
  %1536 = fmul fast float %1535, %1529
  %1537 = fmul fast float %1527, 2.000000e+00
  %1538 = fsub fast float 1.000000e+00, %1537
  %1539 = fmul fast float %1538, %1530
  %1540 = fadd fast float %1539, %1537
  %1541 = fmul fast float %1540, %1530
  %1542 = fmul fast float %1528, 2.000000e+00
  %1543 = fsub fast float 1.000000e+00, %1542
  %1544 = fmul fast float %1543, %1531
  %1545 = fadd fast float %1544, %1542
  %1546 = fmul fast float %1545, %1531
  %1547 = fmul fast float %1536, %1536
  %1548 = fmul fast float %1541, %1541
  %1549 = fmul fast float %1546, %1546
  br label %1566

; <label>:1550                                    ; preds = %1513
  %1551 = fmul fast float %333, %333
  %1552 = fmul fast float %337, %337
  %1553 = fmul fast float %341, %341
  %1554 = fadd fast float %1551, -1.000000e+00
  %1555 = fadd fast float %1552, -1.000000e+00
  %1556 = fadd fast float %1553, -1.000000e+00
  %1557 = fmul fast float %1402, %1554
  %1558 = fmul fast float %1402, %1555
  %1559 = fmul fast float %1402, %1556
  %1560 = fadd fast float %1557, 1.000000e+00
  %1561 = fadd fast float %1558, 1.000000e+00
  %1562 = fadd fast float %1559, 1.000000e+00
  %1563 = fmul fast float %1560, %1377
  %1564 = fmul fast float %1561, %1378
  %1565 = fmul fast float %1562, %1379
  br label %1566

; <label>:1566                                    ; preds = %1550, %1516, %1407, %1363
  %1567 = phi float [ %1512, %1407 ], [ %1388, %1516 ], [ %1388, %1550 ], [ 0x3FA23C0BE0000000, %1363 ]
  %1568 = phi float [ %1504, %1407 ], [ %1547, %1516 ], [ %1563, %1550 ], [ 1.000000e+00, %1363 ]
  %1569 = phi float [ %1505, %1407 ], [ %1548, %1516 ], [ %1564, %1550 ], [ 1.000000e+00, %1363 ]
  %1570 = phi float [ %1506, %1407 ], [ %1549, %1516 ], [ %1565, %1550 ], [ 1.000000e+00, %1363 ]
  %1571 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1572 = extractvalue %dx.types.CBufRet.i32 %1571, 1
  %1573 = and i32 %1572, 1
  %1574 = icmp ne i32 %1573, 0
  %1575 = add i32 %49, 356
  %1576 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1575, i32 undef)  ; BufferLoad(srv,index,wot)
  %1577 = extractvalue %dx.types.ResRet.i32 %1576, 0
  %1578 = and i32 %1577, 32
  %1579 = icmp ne i32 %1578, 0
  %1580 = and i1 %1574, %1579
  %1581 = select i1 %1580, float 1.000000e+00, float %1568
  %1582 = select i1 %1580, float 0x3FD3333340000000, float %1569
  %1583 = select i1 %1580, float 0x3FD3333340000000, float %1570
  %1584 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1181, i32 undef)  ; BufferLoad(srv,index,wot)
  %1585 = extractvalue %dx.types.ResRet.i32 %1584, 0
  %1586 = and i32 %1585, 32
  %1587 = icmp eq i32 %1586, 0
  br i1 %1587, label %1660, label %1588

; <label>:1588                                    ; preds = %1566
  %1589 = add i32 %49, 108
  %1590 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1589, i32 undef)  ; BufferLoad(srv,index,wot)
  %1591 = extractvalue %dx.types.ResRet.i32 %1590, 0
  %1592 = add i32 %49, 396
  %1593 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1592, i32 undef)  ; BufferLoad(srv,index,wot)
  %1594 = extractvalue %dx.types.ResRet.i32 %1593, 0
  %1595 = add i32 %1594, 0
  %1596 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1595, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1597 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1596, %dx.types.Handle %105, float %1288, float %1289, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1598 = extractvalue %dx.types.ResRet.f32 %1597, 0
  %1599 = extractvalue %dx.types.ResRet.f32 %1597, 1
  %1600 = extractvalue %dx.types.ResRet.f32 %1597, 2
  %1601 = extractvalue %dx.types.ResRet.f32 %1597, 3
  %1602 = and i32 %1591, 255
  %1603 = uitofp i32 %1602 to float
  %1604 = lshr i32 %1591, 8
  %1605 = and i32 %1604, 255
  %1606 = uitofp i32 %1605 to float
  %1607 = lshr i32 %1591, 16
  %1608 = and i32 %1607, 255
  %1609 = uitofp i32 %1608 to float
  %1610 = fmul fast float %1609, 0x3F70101000000000
  %1611 = fmul fast float %1598, %1603
  %1612 = fadd fast float %1611, %1606
  %1613 = fmul fast float %1612, 0x3F70101000000000
  %1614 = fadd fast float %1599, -5.000000e-01
  %1615 = fadd fast float %1601, -5.000000e-01
  %1616 = fmul fast float %1614, %1610
  %1617 = fmul fast float %1615, %1610
  %1618 = fadd fast float %1616, 5.000000e-01
  %1619 = fadd fast float %1617, 5.000000e-01
  %1620 = fmul fast float %1618, 2.000000e+00
  %1621 = fadd fast float %1620, -1.000000e+00
  %1622 = fmul fast float %1619, 2.000000e+00
  %1623 = fadd fast float %1622, -1.000000e+00
  %1624 = fadd fast float %1621, %1623
  %1625 = fmul fast float %1624, 5.000000e-01
  %1626 = fsub fast float %1621, %1623
  %1627 = fmul fast float %1626, 5.000000e-01
  %1628 = call float @dx.op.unary.f32(i32 6, float %1625)  ; FAbs(value)
  %1629 = fsub fast float 1.000000e+00, %1628
  %1630 = call float @dx.op.unary.f32(i32 6, float %1627)  ; FAbs(value)
  %1631 = fsub fast float %1629, %1630
  %1632 = call float @dx.op.dot3.f32(i32 55, float %1625, float %1627, float %1631, float %1625, float %1627, float %1631)  ; Dot3(ax,ay,az,bx,by,bz)
  %1633 = call float @dx.op.unary.f32(i32 25, float %1632)  ; Rsqrt(value)
  %1634 = fmul fast float %1625, %1633
  %1635 = fmul fast float %1627, %1633
  %1636 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1181, i32 undef)  ; BufferLoad(srv,index,wot)
  %1637 = extractvalue %dx.types.ResRet.i32 %1636, 0
  %1638 = and i32 %1637, 67108864
  %1639 = icmp eq i32 %1638, 0
  br i1 %1639, label %1656, label %1640

; <label>:1640                                    ; preds = %1588
  %1641 = add i32 %49, 296
  %1642 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1641, i32 undef)  ; BufferLoad(srv,index,wot)
  %1643 = extractvalue %dx.types.ResRet.i32 %1642, 0
  %1644 = and i32 %1643, 65535
  %1645 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1644)  ; LegacyF16ToF32(value)
  %1646 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1198, i32 undef)  ; BufferLoad(srv,index,wot)
  %1647 = extractvalue %dx.types.ResRet.i32 %1646, 0
  %1648 = and i32 %1647, 65535
  %1649 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1648)  ; LegacyF16ToF32(value)
  %1650 = lshr i32 %1643, 16
  %1651 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1650)  ; LegacyF16ToF32(value)
  %1652 = fsub fast float %1613, %1651
  %1653 = fmul fast float %1652, %1645
  %1654 = fadd fast float %1653, %1649
  %1655 = call float @dx.op.unary.f32(i32 7, float %1654)  ; Saturate(value)
  br label %1656

; <label>:1656                                    ; preds = %1640, %1588
  %1657 = phi float [ %1655, %1640 ], [ %1613, %1588 ]
  %1658 = call float @dx.op.dot2.f32(i32 54, float %1634, float %1635, float %1192, float %1193)  ; Dot2(ax,ay,bx,by)
  %1659 = call float @dx.op.dot2.f32(i32 54, float %1634, float %1635, float %1194, float %1195)  ; Dot2(ax,ay,bx,by)
  br label %1660

; <label>:1660                                    ; preds = %1656, %1566
  %1661 = phi float [ %1657, %1656 ], [ 0x3FD6666660000000, %1566 ]
  %1662 = phi float [ %1658, %1656 ], [ 0.000000e+00, %1566 ]
  %1663 = phi float [ %1659, %1656 ], [ 0.000000e+00, %1566 ]
  %1664 = phi float [ %1600, %1656 ], [ 1.000000e+00, %1566 ]
  %1665 = add i32 %49, 176
  %1666 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1665, i32 undef)  ; BufferLoad(srv,index,wot)
  %1667 = extractvalue %dx.types.ResRet.i32 %1666, 0
  %1668 = lshr i32 %1667, 22
  %1669 = shl nuw nsw i32 %1668, 5
  %1670 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1669)  ; LegacyF16ToF32(value)
  %1671 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1181, i32 undef)  ; BufferLoad(srv,index,wot)
  %1672 = extractvalue %dx.types.ResRet.i32 %1671, 0
  %1673 = and i32 %1672, 64
  %1674 = icmp eq i32 %1673, 0
  br i1 %1674, label %1708, label %1675

; <label>:1675                                    ; preds = %1660
  %1676 = add i32 %49, 412
  %1677 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1676, i32 undef)  ; BufferLoad(srv,index,wot)
  %1678 = extractvalue %dx.types.ResRet.i32 %1677, 0
  %1679 = add i32 %1678, 0
  %1680 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1679, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1681 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1181, i32 undef)  ; BufferLoad(srv,index,wot)
  %1682 = extractvalue %dx.types.ResRet.i32 %1681, 0
  %1683 = and i32 %1682, 131072
  %1684 = icmp eq i32 %1683, 0
  %1685 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1680, %dx.types.Handle %105, float %1288, float %1289, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1686 = extractvalue %dx.types.ResRet.f32 %1685, 0
  %1687 = extractvalue %dx.types.ResRet.f32 %1685, 1
  %1688 = extractvalue %dx.types.ResRet.f32 %1685, 2
  %1689 = fmul fast float %1686, %321
  %1690 = fmul fast float %1687, %324
  %1691 = fmul fast float %1688, %327
  br i1 %1684, label %1698, label %1692

; <label>:1692                                    ; preds = %1675
  %1693 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1694 = extractvalue %dx.types.CBufRet.f32 %1693, 0
  %1695 = fmul fast float %1694, %1689
  %1696 = fmul fast float %1694, %1690
  %1697 = fmul fast float %1694, %1691
  br label %1698

; <label>:1698                                    ; preds = %1692, %1675
  %1699 = phi float [ %1695, %1692 ], [ %1689, %1675 ]
  %1700 = phi float [ %1696, %1692 ], [ %1690, %1675 ]
  %1701 = phi float [ %1697, %1692 ], [ %1691, %1675 ]
  %1702 = fmul fast float %1699, %1670
  %1703 = select i1 %262, float %1702, float %1699
  %1704 = call float @dx.op.dot3.f32(i32 55, float %1703, float %1700, float %1701, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1705 = select i1 %262, float 0.000000e+00, float %1699
  %1706 = select i1 %262, float %1704, float %1700
  %1707 = select i1 %262, float 0.000000e+00, float %1701
  br label %1708

; <label>:1708                                    ; preds = %1698, %1660
  %1709 = phi float [ %1705, %1698 ], [ 0.000000e+00, %1660 ]
  %1710 = phi float [ %1706, %1698 ], [ 0.000000e+00, %1660 ]
  %1711 = phi float [ %1707, %1698 ], [ 0.000000e+00, %1660 ]
  %1712 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1181, i32 undef)  ; BufferLoad(srv,index,wot)
  %1713 = extractvalue %dx.types.ResRet.i32 %1712, 0
  %1714 = and i32 %1713, 1024
  %1715 = icmp eq i32 %1714, 0
  br i1 %1715, label %1746, label %1716

; <label>:1716                                    ; preds = %1708
  %1717 = add i32 %49, 168
  %1718 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1717, i32 undef)  ; BufferLoad(srv,index,wot)
  %1719 = extractvalue %dx.types.ResRet.i32 %1718, 0
  %1720 = and i32 %1719, 255
  %1721 = uitofp i32 %1720 to float
  %1722 = fmul fast float %1721, 0x3F70101020000000
  %1723 = lshr i32 %1719, 8
  %1724 = and i32 %1723, 255
  %1725 = uitofp i32 %1724 to float
  %1726 = fmul fast float %1725, 0x3F70101020000000
  %1727 = lshr i32 %1719, 16
  %1728 = and i32 %1727, 255
  %1729 = uitofp i32 %1728 to float
  %1730 = fmul fast float %1729, 0x3F70101020000000
  %1731 = fmul fast float %1722, %1722
  %1732 = fmul fast float %1726, %1726
  %1733 = fmul fast float %1730, %1730
  %1734 = add i32 %49, 480
  %1735 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1734, i32 undef)  ; BufferLoad(srv,index,wot)
  %1736 = extractvalue %dx.types.ResRet.i32 %1735, 0
  %1737 = add i32 %1736, 0
  %1738 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1737, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1739 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1738, %dx.types.Handle %106, float %1288, float %1289, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1740 = extractvalue %dx.types.ResRet.f32 %1739, 0
  %1741 = extractvalue %dx.types.ResRet.f32 %1739, 1
  %1742 = extractvalue %dx.types.ResRet.f32 %1739, 2
  %1743 = fmul fast float %1731, %1740
  %1744 = fmul fast float %1732, %1741
  %1745 = fmul fast float %1733, %1742
  br label %1746

; <label>:1746                                    ; preds = %1716, %1708
  %1747 = phi float [ %1743, %1716 ], [ 0.000000e+00, %1708 ]
  %1748 = phi float [ %1744, %1716 ], [ 0.000000e+00, %1708 ]
  %1749 = phi float [ %1745, %1716 ], [ 0.000000e+00, %1708 ]
  %1750 = fcmp fast ogt float %1747, 0.000000e+00
  %1751 = fcmp fast ogt float %1748, 0.000000e+00
  %1752 = fcmp fast ogt float %1749, 0.000000e+00
  %1753 = call float @dx.op.unary.f32(i32 23, float %1747)  ; Log(value)
  %1754 = call float @dx.op.unary.f32(i32 23, float %1748)  ; Log(value)
  %1755 = call float @dx.op.unary.f32(i32 23, float %1749)  ; Log(value)
  %1756 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1665, i32 undef)  ; BufferLoad(srv,index,wot)
  %1757 = extractvalue %dx.types.ResRet.i32 %1756, 0
  %1758 = lshr i32 %1757, 7
  %1759 = and i32 %1758, 32752
  %1760 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1759)  ; LegacyF16ToF32(value)
  %1761 = fmul fast float %1753, 0xBFE62E4300000000
  %1762 = fmul fast float %1761, %1760
  %1763 = fmul fast float %1754, 0xBFE62E4300000000
  %1764 = fmul fast float %1763, %1760
  %1765 = fmul fast float %1755, 0xBFE62E4300000000
  %1766 = fmul fast float %1765, %1760
  %1767 = select i1 %1750, float %1762, float 1.270000e+02
  %1768 = select i1 %1751, float %1764, float 1.270000e+02
  %1769 = select i1 %1752, float %1766, float 1.270000e+02
  %1770 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1181, i32 undef)  ; BufferLoad(srv,index,wot)
  %1771 = extractvalue %dx.types.ResRet.i32 %1770, 0
  %1772 = and i32 %1771, 10240
  %1773 = icmp eq i32 %1772, 0
  br i1 %1773, label %1818, label %1774

; <label>:1774                                    ; preds = %1746
  %1775 = add i32 %49, 496
  %1776 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1775, i32 undef)  ; BufferLoad(srv,index,wot)
  %1777 = extractvalue %dx.types.ResRet.i32 %1776, 0
  %1778 = add i32 %1777, 0
  %1779 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1778, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1780 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1779, %dx.types.Handle %106, float %1288, float %1289, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1781 = extractvalue %dx.types.ResRet.f32 %1780, 1
  %1782 = extractvalue %dx.types.ResRet.f32 %1780, 3
  %1783 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1181, i32 undef)  ; BufferLoad(srv,index,wot)
  %1784 = extractvalue %dx.types.ResRet.i32 %1783, 0
  %1785 = and i32 %1784, 1048576
  %1786 = icmp ne i32 %1785, 0
  %1787 = and i32 %1784, 8192
  %1788 = icmp eq i32 %1787, 0
  br i1 %1788, label %1804, label %1789

; <label>:1789                                    ; preds = %1774
  %1790 = extractvalue %dx.types.ResRet.f32 %1780, 2
  %1791 = select i1 %1786, float %1790, float %1781
  %1792 = extractvalue %dx.types.ResRet.f32 %1780, 0
  %1793 = select i1 %1786, float %1792, float %1781
  %1794 = add i32 %49, 112
  %1795 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1794, i32 undef)  ; BufferLoad(srv,index,wot)
  %1796 = extractvalue %dx.types.ResRet.i32 %1795, 0
  %1797 = lshr i32 %1796, 16
  %1798 = and i32 %1797, 255
  %1799 = uitofp i32 %1798 to float
  %1800 = fmul fast float %1799, 0x3F80101020000000
  %1801 = fmul fast float %1800, %1793
  %1802 = fmul fast float %1800, %1781
  %1803 = fmul fast float %1800, %1791
  br label %1804

; <label>:1804                                    ; preds = %1789, %1774
  %1805 = phi float [ %1801, %1789 ], [ 0.000000e+00, %1774 ]
  %1806 = phi float [ %1802, %1789 ], [ 0.000000e+00, %1774 ]
  %1807 = phi float [ %1803, %1789 ], [ 0.000000e+00, %1774 ]
  %1808 = and i32 %1784, 2048
  %1809 = icmp eq i32 %1808, 0
  br i1 %1809, label %1818, label %1810

; <label>:1810                                    ; preds = %1804
  %1811 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1665, i32 undef)  ; BufferLoad(srv,index,wot)
  %1812 = extractvalue %dx.types.ResRet.i32 %1811, 0
  %1813 = shl i32 %1812, 4
  %1814 = and i32 %1813, 32752
  %1815 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1814)  ; LegacyF16ToF32(value)
  %1816 = fmul fast float %1815, %1782
  %1817 = call float @dx.op.binary.f32(i32 35, float %1816, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1818

; <label>:1818                                    ; preds = %1810, %1804, %1746
  %1819 = phi float [ %1805, %1810 ], [ %1805, %1804 ], [ 0.000000e+00, %1746 ]
  %1820 = phi float [ %1806, %1810 ], [ %1806, %1804 ], [ 0.000000e+00, %1746 ]
  %1821 = phi float [ %1807, %1810 ], [ %1807, %1804 ], [ 0.000000e+00, %1746 ]
  %1822 = phi float [ %1817, %1810 ], [ 0x3F70101020000000, %1804 ], [ 0x3F70101020000000, %1746 ]
  %1823 = add i32 %49, 112
  %1824 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1823, i32 undef)  ; BufferLoad(srv,index,wot)
  %1825 = extractvalue %dx.types.ResRet.i32 %1824, 0
  %1826 = and i32 %1825, 255
  %1827 = uitofp i32 %1826 to float
  %1828 = lshr i32 %1825, 8
  %1829 = and i32 %1828, 255
  %1830 = uitofp i32 %1829 to float
  %1831 = call float @dx.op.dot3.f32(i32 55, float %1581, float %1582, float %1583, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1832 = fmul fast float %1830, %1831
  %1833 = fadd fast float %1832, %1827
  %1834 = fmul fast float %1833, 0x3F70101020000000
  %1835 = call float @dx.op.unary.f32(i32 7, float %1834)  ; Saturate(value)
  br i1 %1180, label %1836, label %1871

; <label>:1836                                    ; preds = %1818
  %1837 = fmul fast float %1822, 2.000000e+00
  %1838 = fcmp fast olt float %1767, 1.270000e+02
  %1839 = fcmp fast olt float %1768, 1.270000e+02
  %1840 = fcmp fast olt float %1769, 1.270000e+02
  %1841 = fmul fast float %1767, 0xBFF7154760000000
  %1842 = fmul fast float %1841, %1837
  %1843 = fmul fast float %1768, 0xBFF7154760000000
  %1844 = fmul fast float %1843, %1837
  %1845 = fmul fast float %1769, 0xBFF7154760000000
  %1846 = fmul fast float %1845, %1837
  %1847 = call float @dx.op.unary.f32(i32 21, float %1842)  ; Exp(value)
  %1848 = call float @dx.op.unary.f32(i32 21, float %1844)  ; Exp(value)
  %1849 = call float @dx.op.unary.f32(i32 21, float %1846)  ; Exp(value)
  %1850 = call float @dx.op.unary.f32(i32 7, float %1847)  ; Saturate(value)
  %1851 = call float @dx.op.unary.f32(i32 7, float %1848)  ; Saturate(value)
  %1852 = call float @dx.op.unary.f32(i32 7, float %1849)  ; Saturate(value)
  %1853 = fadd fast float %1850, -1.000000e+00
  %1854 = select i1 %1838, float %1853, float -1.000000e+00
  %1855 = fadd fast float %1851, -1.000000e+00
  %1856 = select i1 %1839, float %1855, float -1.000000e+00
  %1857 = fadd fast float %1852, -1.000000e+00
  %1858 = select i1 %1840, float %1857, float -1.000000e+00
  %1859 = fmul fast float %1854, %1361
  %1860 = fmul fast float %1856, %1361
  %1861 = fmul fast float %1858, %1361
  %1862 = fadd fast float %1859, 1.000000e+00
  %1863 = fadd fast float %1860, 1.000000e+00
  %1864 = fadd fast float %1861, 1.000000e+00
  %1865 = fmul fast float %1862, %1161
  %1866 = fmul fast float %1863, %1162
  %1867 = fmul fast float %1864, %1163
  %1868 = fmul fast float %1862, %1164
  %1869 = fmul fast float %1863, %1165
  %1870 = fmul fast float %1864, %1166
  br label %1871

; <label>:1871                                    ; preds = %1836, %1818
  %1872 = phi float [ %1865, %1836 ], [ %1161, %1818 ]
  %1873 = phi float [ %1866, %1836 ], [ %1162, %1818 ]
  %1874 = phi float [ %1867, %1836 ], [ %1163, %1818 ]
  %1875 = phi float [ %1868, %1836 ], [ %1164, %1818 ]
  %1876 = phi float [ %1869, %1836 ], [ %1165, %1818 ]
  %1877 = phi float [ %1870, %1836 ], [ %1166, %1818 ]
  %1878 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1181, i32 undef)  ; BufferLoad(srv,index,wot)
  %1879 = extractvalue %dx.types.ResRet.i32 %1878, 0
  %1880 = and i32 %1879, 3
  %1881 = icmp eq i32 %1880, 3
  br i1 %1881, label %1960, label %1882

; <label>:1882                                    ; preds = %1871
  %1883 = and i32 %1879, 16
  %1884 = icmp ne i32 %1883, 0
  %1885 = select i1 %1884, float %1361, float 0.000000e+00
  %1886 = icmp eq i32 %1880, 0
  br i1 %1886, label %1887, label %1915

; <label>:1887                                    ; preds = %1882
  %1888 = and i32 %1879, 64
  %1889 = icmp ne i32 %1888, 0
  %1890 = select i1 %1889, float %1361, float 0.000000e+00
  %1891 = fsub fast float %1581, %1872
  %1892 = fsub fast float %1582, %1873
  %1893 = fsub fast float %1583, %1874
  %1894 = fmul fast float %1885, %1891
  %1895 = fmul fast float %1885, %1892
  %1896 = fmul fast float %1885, %1893
  %1897 = fadd fast float %1894, %1872
  %1898 = fadd fast float %1895, %1873
  %1899 = fadd fast float %1896, %1874
  %1900 = fsub fast float %1567, %1173
  %1901 = fmul fast float %1885, %1900
  %1902 = fadd fast float %1901, %1173
  %1903 = fsub fast float %1709, %1875
  %1904 = fsub fast float %1710, %1876
  %1905 = fsub fast float %1711, %1877
  %1906 = fmul fast float %1890, %1903
  %1907 = fmul fast float %1890, %1904
  %1908 = fmul fast float %1890, %1905
  %1909 = fadd fast float %1906, %1875
  %1910 = fadd fast float %1907, %1876
  %1911 = fadd fast float %1908, %1877
  %1912 = fsub fast float %1835, %1178
  %1913 = fmul fast float %1885, %1912
  %1914 = fadd fast float %1913, %1178
  br label %1960

; <label>:1915                                    ; preds = %1882
  %1916 = icmp eq i32 %1880, 1
  br i1 %1916, label %1917, label %1930

; <label>:1917                                    ; preds = %1915
  %1918 = fadd fast float %1581, -1.000000e+00
  %1919 = fadd fast float %1582, -1.000000e+00
  %1920 = fadd fast float %1583, -1.000000e+00
  %1921 = fmul fast float %1885, %1918
  %1922 = fmul fast float %1885, %1919
  %1923 = fmul fast float %1885, %1920
  %1924 = fadd fast float %1921, 1.000000e+00
  %1925 = fadd fast float %1922, 1.000000e+00
  %1926 = fadd fast float %1923, 1.000000e+00
  %1927 = fmul fast float %1924, %1872
  %1928 = fmul fast float %1925, %1873
  %1929 = fmul fast float %1926, %1874
  br label %1960

; <label>:1930                                    ; preds = %1915
  %1931 = icmp eq i32 %1880, 2
  br i1 %1931, label %1932, label %1960

; <label>:1932                                    ; preds = %1930
  %1933 = call float @dx.op.unary.f32(i32 24, float %1581)  ; Sqrt(value)
  %1934 = call float @dx.op.unary.f32(i32 24, float %1582)  ; Sqrt(value)
  %1935 = call float @dx.op.unary.f32(i32 24, float %1583)  ; Sqrt(value)
  %1936 = fadd fast float %1933, -5.000000e-01
  %1937 = fadd fast float %1934, -5.000000e-01
  %1938 = fadd fast float %1935, -5.000000e-01
  %1939 = fmul fast float %1936, %1885
  %1940 = fmul fast float %1937, %1885
  %1941 = fmul fast float %1938, %1885
  %1942 = fadd fast float %1939, 5.000000e-01
  %1943 = fadd fast float %1940, 5.000000e-01
  %1944 = fadd fast float %1941, 5.000000e-01
  %1945 = fmul fast float %1942, 2.000000e+00
  %1946 = fsub fast float 1.000000e+00, %1945
  %1947 = fmul fast float %1946, %1872
  %1948 = fadd fast float %1947, %1945
  %1949 = fmul fast float %1948, %1872
  %1950 = fmul fast float %1943, 2.000000e+00
  %1951 = fsub fast float 1.000000e+00, %1950
  %1952 = fmul fast float %1951, %1873
  %1953 = fadd fast float %1952, %1950
  %1954 = fmul fast float %1953, %1873
  %1955 = fmul fast float %1944, 2.000000e+00
  %1956 = fsub fast float 1.000000e+00, %1955
  %1957 = fmul fast float %1956, %1874
  %1958 = fadd fast float %1957, %1955
  %1959 = fmul fast float %1958, %1874
  br label %1960

; <label>:1960                                    ; preds = %1932, %1930, %1917, %1887, %1871
  %1961 = phi float [ %1872, %1871 ], [ %1949, %1932 ], [ %1872, %1930 ], [ %1927, %1917 ], [ %1897, %1887 ]
  %1962 = phi float [ %1873, %1871 ], [ %1954, %1932 ], [ %1873, %1930 ], [ %1928, %1917 ], [ %1898, %1887 ]
  %1963 = phi float [ %1874, %1871 ], [ %1959, %1932 ], [ %1874, %1930 ], [ %1929, %1917 ], [ %1899, %1887 ]
  %1964 = phi float [ %1875, %1871 ], [ %1875, %1932 ], [ %1875, %1930 ], [ %1875, %1917 ], [ %1909, %1887 ]
  %1965 = phi float [ %1876, %1871 ], [ %1876, %1932 ], [ %1876, %1930 ], [ %1876, %1917 ], [ %1910, %1887 ]
  %1966 = phi float [ %1877, %1871 ], [ %1877, %1932 ], [ %1877, %1930 ], [ %1877, %1917 ], [ %1911, %1887 ]
  %1967 = phi float [ %1173, %1871 ], [ %1173, %1932 ], [ %1173, %1930 ], [ %1173, %1917 ], [ %1902, %1887 ]
  %1968 = phi float [ %1178, %1871 ], [ %1178, %1932 ], [ %1178, %1930 ], [ %1178, %1917 ], [ %1914, %1887 ]
  %1969 = and i32 %1879, 12
  %1970 = icmp eq i32 %1969, 12
  br i1 %1970, label %2101, label %1971

; <label>:1971                                    ; preds = %1960
  %1972 = and i32 %1879, 2097184
  %1973 = icmp eq i32 %1972, 2097184
  %1974 = select i1 %1973, float %1361, float 0.000000e+00
  %1975 = and i32 %1879, 4194336
  %1976 = icmp eq i32 %1975, 4194336
  %1977 = select i1 %1976, float %1361, float 0.000000e+00
  %1978 = and i32 %1879, 8388640
  %1979 = icmp eq i32 %1978, 8388640
  %1980 = select i1 %1979, float %1361, float 0.000000e+00
  %1981 = and i32 %1879, 1024
  %1982 = icmp ne i32 %1981, 0
  %1983 = select i1 %1982, float %1361, float 0.000000e+00
  %1984 = and i32 %1879, 2048
  %1985 = icmp ne i32 %1984, 0
  %1986 = select i1 %1985, float %1361, float 0.000000e+00
  %1987 = and i32 %1879, 8192
  %1988 = icmp ne i32 %1987, 0
  %1989 = select i1 %1988, float %1361, float 0.000000e+00
  %1990 = icmp eq i32 %1969, 0
  br i1 %1990, label %1991, label %2025

; <label>:1991                                    ; preds = %1971
  %1992 = fsub fast float %1662, %1159
  %1993 = fsub fast float %1663, %1160
  %1994 = fmul fast float %1974, %1992
  %1995 = fmul fast float %1974, %1993
  %1996 = fadd fast float %1994, %1159
  %1997 = fadd fast float %1995, %1160
  %1998 = fsub fast float %1664, %1176
  %1999 = fmul fast float %1977, %1998
  %2000 = fadd fast float %1999, %1176
  %2001 = fsub fast float %1661, %1175
  %2002 = fmul fast float %1980, %2001
  %2003 = fadd fast float %2002, %1175
  %2004 = fsub fast float %1767, %1167
  %2005 = fsub fast float %1768, %1168
  %2006 = fsub fast float %1769, %1169
  %2007 = fmul fast float %1983, %2004
  %2008 = fmul fast float %1983, %2005
  %2009 = fmul fast float %1983, %2006
  %2010 = fadd fast float %2007, %1167
  %2011 = fadd fast float %2008, %1168
  %2012 = fadd fast float %2009, %1169
  %2013 = fsub fast float %1822, %1177
  %2014 = fmul fast float %1986, %2013
  %2015 = fadd fast float %2014, %1177
  %2016 = fsub fast float %1819, %1170
  %2017 = fsub fast float %1820, %1171
  %2018 = fsub fast float %1821, %1172
  %2019 = fmul fast float %1989, %2016
  %2020 = fmul fast float %1989, %2017
  %2021 = fmul fast float %1989, %2018
  %2022 = fadd fast float %2019, %1170
  %2023 = fadd fast float %2020, %1171
  %2024 = fadd fast float %2021, %1172
  br label %2101

; <label>:2025                                    ; preds = %1971
  %2026 = icmp eq i32 %1969, 4
  br i1 %2026, label %2027, label %2073

; <label>:2027                                    ; preds = %2025
  %2028 = fmul fast float %1974, %1662
  %2029 = fmul fast float %1974, %1663
  %2030 = fadd fast float %2028, %1159
  %2031 = fadd fast float %2029, %1160
  %2032 = call float @dx.op.binary.f32(i32 36, float %1176, float %1664)  ; FMin(a,b)
  %2033 = fsub fast float %2032, %1176
  %2034 = fmul fast float %2033, %1977
  %2035 = fadd fast float %2034, %1176
  %2036 = fadd fast float %1661, %1175
  %2037 = fmul fast float %2036, 0x3FF337FAE0000000
  %2038 = fmul fast float %1175, %1175
  %2039 = fmul fast float %1661, %1661
  %2040 = fadd fast float %2039, %2038
  %2041 = fmul fast float %2040, 0x3FE5152B00000000
  %2042 = fmul fast float %1175, 0xBFCC1F85E0000000
  %2043 = fmul fast float %2042, %1661
  %2044 = fadd fast float %2043, 0xBFE1363700000000
  %2045 = fadd fast float %2044, %2037
  %2046 = fsub fast float %2045, %2041
  %2047 = fmul fast float %2036, 0x3FBA6F0D00000000
  %2048 = fmul fast float %2040, 0x3FD0432880000000
  %2049 = fmul fast float %1175, 0xBFEF110800000000
  %2050 = fmul fast float %2049, %1661
  %2051 = fadd fast float %2050, 1.000000e+00
  %2052 = fsub fast float %2051, %2047
  %2053 = fadd fast float %2052, %2048
  %2054 = fdiv fast float %2046, %2053
  %2055 = call float @dx.op.unary.f32(i32 7, float %2054)  ; Saturate(value)
  %2056 = fsub fast float %2055, %1175
  %2057 = fmul fast float %2056, %1980
  %2058 = fadd fast float %2057, %1175
  %2059 = fmul fast float %1983, %1767
  %2060 = fmul fast float %1983, %1768
  %2061 = fmul fast float %1983, %1769
  %2062 = fadd fast float %2059, %1167
  %2063 = fadd fast float %2060, %1168
  %2064 = fadd fast float %2061, %1169
  %2065 = fmul fast float %1986, %1822
  %2066 = fadd fast float %2065, %1177
  %2067 = fmul fast float %1989, %1819
  %2068 = fmul fast float %1989, %1820
  %2069 = fmul fast float %1989, %1821
  %2070 = fadd fast float %2067, %1170
  %2071 = fadd fast float %2068, %1171
  %2072 = fadd fast float %2069, %1172
  br label %2101

; <label>:2073                                    ; preds = %2025
  %2074 = icmp eq i32 %1969, 8
  br i1 %2074, label %2075, label %2101

; <label>:2075                                    ; preds = %2073
  %2076 = fmul fast float %1974, %1662
  %2077 = fmul fast float %1974, %1663
  %2078 = fadd fast float %2076, %1159
  %2079 = fadd fast float %2077, %1160
  %2080 = call float @dx.op.binary.f32(i32 36, float %1176, float %1664)  ; FMin(a,b)
  %2081 = fsub fast float %2080, %1176
  %2082 = fmul fast float %2081, %1977
  %2083 = fadd fast float %2082, %1176
  %2084 = fsub fast float %1661, %1175
  %2085 = fmul fast float %1980, %2084
  %2086 = fadd fast float %2085, %1175
  %2087 = fmul fast float %1983, %1767
  %2088 = fmul fast float %1983, %1768
  %2089 = fmul fast float %1983, %1769
  %2090 = fadd fast float %2087, %1167
  %2091 = fadd fast float %2088, %1168
  %2092 = fadd fast float %2089, %1169
  %2093 = fmul fast float %1986, %1822
  %2094 = fadd fast float %2093, %1177
  %2095 = fmul fast float %1989, %1819
  %2096 = fmul fast float %1989, %1820
  %2097 = fmul fast float %1989, %1821
  %2098 = fadd fast float %2095, %1170
  %2099 = fadd fast float %2096, %1171
  %2100 = fadd fast float %2097, %1172
  br label %2101

; <label>:2101                                    ; preds = %2075, %2073, %2027, %1991, %1960, %1360, %1179, %1158
  %2102 = phi float [ %1159, %1960 ], [ %1159, %1360 ], [ %1159, %1158 ], [ %2078, %2075 ], [ %1159, %2073 ], [ %2030, %2027 ], [ %1996, %1991 ], [ %1159, %1179 ]
  %2103 = phi float [ %1160, %1960 ], [ %1160, %1360 ], [ %1160, %1158 ], [ %2079, %2075 ], [ %1160, %2073 ], [ %2031, %2027 ], [ %1997, %1991 ], [ %1160, %1179 ]
  %2104 = phi float [ %1961, %1960 ], [ %1161, %1360 ], [ %1161, %1158 ], [ %1961, %2075 ], [ %1961, %2073 ], [ %1961, %2027 ], [ %1961, %1991 ], [ %1161, %1179 ]
  %2105 = phi float [ %1962, %1960 ], [ %1162, %1360 ], [ %1162, %1158 ], [ %1962, %2075 ], [ %1962, %2073 ], [ %1962, %2027 ], [ %1962, %1991 ], [ %1162, %1179 ]
  %2106 = phi float [ %1963, %1960 ], [ %1163, %1360 ], [ %1163, %1158 ], [ %1963, %2075 ], [ %1963, %2073 ], [ %1963, %2027 ], [ %1963, %1991 ], [ %1163, %1179 ]
  %2107 = phi float [ %1964, %1960 ], [ %1164, %1360 ], [ %1164, %1158 ], [ %1964, %2075 ], [ %1964, %2073 ], [ %1964, %2027 ], [ %1964, %1991 ], [ %1164, %1179 ]
  %2108 = phi float [ %1965, %1960 ], [ %1165, %1360 ], [ %1165, %1158 ], [ %1965, %2075 ], [ %1965, %2073 ], [ %1965, %2027 ], [ %1965, %1991 ], [ %1165, %1179 ]
  %2109 = phi float [ %1966, %1960 ], [ %1166, %1360 ], [ %1166, %1158 ], [ %1966, %2075 ], [ %1966, %2073 ], [ %1966, %2027 ], [ %1966, %1991 ], [ %1166, %1179 ]
  %2110 = phi float [ %1167, %1960 ], [ %1167, %1360 ], [ %1167, %1158 ], [ %2090, %2075 ], [ %1167, %2073 ], [ %2062, %2027 ], [ %2010, %1991 ], [ %1167, %1179 ]
  %2111 = phi float [ %1168, %1960 ], [ %1168, %1360 ], [ %1168, %1158 ], [ %2091, %2075 ], [ %1168, %2073 ], [ %2063, %2027 ], [ %2011, %1991 ], [ %1168, %1179 ]
  %2112 = phi float [ %1169, %1960 ], [ %1169, %1360 ], [ %1169, %1158 ], [ %2092, %2075 ], [ %1169, %2073 ], [ %2064, %2027 ], [ %2012, %1991 ], [ %1169, %1179 ]
  %2113 = phi float [ %1170, %1960 ], [ %1170, %1360 ], [ %1170, %1158 ], [ %2098, %2075 ], [ %1170, %2073 ], [ %2070, %2027 ], [ %2022, %1991 ], [ %1170, %1179 ]
  %2114 = phi float [ %1171, %1960 ], [ %1171, %1360 ], [ %1171, %1158 ], [ %2099, %2075 ], [ %1171, %2073 ], [ %2071, %2027 ], [ %2023, %1991 ], [ %1171, %1179 ]
  %2115 = phi float [ %1172, %1960 ], [ %1172, %1360 ], [ %1172, %1158 ], [ %2100, %2075 ], [ %1172, %2073 ], [ %2072, %2027 ], [ %2024, %1991 ], [ %1172, %1179 ]
  %2116 = phi float [ %1967, %1960 ], [ %1173, %1360 ], [ %1173, %1158 ], [ %1967, %2075 ], [ %1967, %2073 ], [ %1967, %2027 ], [ %1967, %1991 ], [ %1173, %1179 ]
  %2117 = phi float [ %1175, %1960 ], [ %1175, %1360 ], [ %1175, %1158 ], [ %2086, %2075 ], [ %1175, %2073 ], [ %2058, %2027 ], [ %2003, %1991 ], [ %1175, %1179 ]
  %2118 = phi float [ %1176, %1960 ], [ %1176, %1360 ], [ %1176, %1158 ], [ %2083, %2075 ], [ %1176, %2073 ], [ %2035, %2027 ], [ %2000, %1991 ], [ %1176, %1179 ]
  %2119 = phi float [ %1177, %1960 ], [ %1177, %1360 ], [ %1177, %1158 ], [ %2094, %2075 ], [ %1177, %2073 ], [ %2066, %2027 ], [ %2015, %1991 ], [ %1177, %1179 ]
  %2120 = phi float [ %1968, %1960 ], [ %1178, %1360 ], [ %1178, %1158 ], [ %1968, %2075 ], [ %1968, %2073 ], [ %1968, %2027 ], [ %1968, %1991 ], [ %1178, %1179 ]
  br i1 %448, label %3043, label %2121

; <label>:2121                                    ; preds = %2101
  %2122 = icmp ult i32 %504, 3
  %2123 = add i32 %49, 56
  %2124 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2123, i32 undef)  ; BufferLoad(srv,index,wot)
  %2125 = extractvalue %dx.types.ResRet.i32 %2124, 0
  %2126 = add i32 %49, 60
  %2127 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2126, i32 undef)  ; BufferLoad(srv,index,wot)
  %2128 = extractvalue %dx.types.ResRet.i32 %2127, 0
  %2129 = or i32 %2128, %2125
  %2130 = icmp eq i32 %2129, 0
  br i1 %2130, label %3043, label %2131

; <label>:2131                                    ; preds = %2121
  %2132 = and i32 %2125, 262144
  %2133 = icmp ne i32 %2132, 0
  %2134 = select i1 %2133, float %55, float 1.000000e+00
  %2135 = select i1 %2133, float %56, float 0.000000e+00
  %2136 = select i1 %2133, float %57, float 0.000000e+00
  %2137 = select i1 %2133, float %58, float 1.000000e+00
  %2138 = select i1 %2133, float %59, float %87
  %2139 = select i1 %2133, float %60, float %88
  %2140 = add i32 %49, 316
  %2141 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2140, i32 undef)  ; BufferLoad(srv,index,wot)
  %2142 = extractvalue %dx.types.ResRet.i32 %2141, 0
  %2143 = lshr i32 %2142, 16
  %2144 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2143)  ; LegacyF16ToF32(value)
  %2145 = fmul fast float %2144, 0x3F50624DE0000000
  %2146 = add i32 %49, 120
  %2147 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2146, i32 undef)  ; BufferLoad(srv,index,wot)
  %2148 = extractvalue %dx.types.ResRet.i32 %2147, 0
  %2149 = lshr i32 %2148, 16
  %2150 = and i32 %2149, 255
  %2151 = lshr i32 %2148, 24
  %2152 = add i32 %49, 324
  %2153 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2152, i32 undef)  ; BufferLoad(srv,index,wot)
  %2154 = extractvalue %dx.types.ResRet.i32 %2153, 0
  %2155 = and i32 %2154, 65535
  %2156 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2155)  ; LegacyF16ToF32(value)
  %2157 = lshr i32 %2154, 16
  %2158 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2157)  ; LegacyF16ToF32(value)
  %2159 = add i32 %49, 64
  %2160 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2159, i32 undef)  ; BufferLoad(srv,index,wot)
  %2161 = extractvalue %dx.types.ResRet.i32 %2160, 0
  %2162 = lshr i32 %2161, 22
  %2163 = shl nuw nsw i32 %2162, 5
  %2164 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2163)  ; LegacyF16ToF32(value)
  %2165 = shl i32 %2161, 4
  %2166 = and i32 %2165, 32752
  %2167 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2166)  ; LegacyF16ToF32(value)
  %2168 = lshr i32 %2161, 7
  %2169 = and i32 %2168, 32752
  %2170 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2169)  ; LegacyF16ToF32(value)
  %2171 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2172 = extractvalue %dx.types.CBufRet.f32 %2171, 3
  %2173 = fmul fast float %2172, 1.000000e+03
  %2174 = fmul fast float %398, %2173
  %2175 = call float @dx.op.unary.f32(i32 22, float %2174)  ; Frc(value)
  %2176 = fadd fast float %2175, %388
  %2177 = fmul fast float %399, %2173
  %2178 = call float @dx.op.unary.f32(i32 22, float %2177)  ; Frc(value)
  %2179 = fadd fast float %2178, %390
  %2180 = fmul fast float %2145, %2173
  %2181 = call float @dx.op.unary.f32(i32 22, float %2180)  ; Frc(value)
  %2182 = fmul fast float %2181, 0x401921FB60000000
  %2183 = fadd fast float %2182, %2164
  %2184 = call float @dx.op.unary.f32(i32 13, float %2183)  ; Sin(value)
  %2185 = call float @dx.op.unary.f32(i32 12, float %2183)  ; Cos(value)
  %2186 = fsub fast float -0.000000e+00, %2184
  %2187 = fadd fast float %2138, -5.000000e-01
  %2188 = fadd fast float %2139, -5.000000e-01
  %2189 = fmul fast float %2156, %2187
  %2190 = fmul fast float %2158, %2188
  %2191 = fadd fast float %2189, 5.000000e-01
  %2192 = fadd fast float %2190, 5.000000e-01
  %2193 = fmul fast float %2167, %2191
  %2194 = fmul fast float %2170, %2192
  %2195 = fmul fast float %2185, %2193
  %2196 = call float @dx.op.tertiary.f32(i32 46, float %2186, float %2194, float %2195)  ; FMad(a,b,c)
  %2197 = fmul fast float %2184, %2193
  %2198 = call float @dx.op.tertiary.f32(i32 46, float %2185, float %2194, float %2197)  ; FMad(a,b,c)
  %2199 = fadd fast float %2176, %2196
  %2200 = fadd fast float %2179, %2198
  %2201 = icmp ugt i32 %2150, 1
  %2202 = icmp ugt i32 %2148, 33554431
  %2203 = or i1 %2202, %2201
  br i1 %2203, label %2204, label %2229

; <label>:2204                                    ; preds = %2131
  %2205 = add i32 %49, 260
  %2206 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2205, i32 undef)  ; BufferLoad(srv,index,wot)
  %2207 = extractvalue %dx.types.ResRet.i32 %2206, 0
  %2208 = lshr i32 %2207, 16
  %2209 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2208)  ; LegacyF16ToF32(value)
  %2210 = fmul fast float %2172, %2209
  %2211 = call float @dx.op.unary.f32(i32 22, float %2210)  ; Frc(value)
  %2212 = mul nuw nsw i32 %2150, %2151
  %2213 = uitofp i32 %2212 to float
  %2214 = fmul fast float %2211, %2213
  %2215 = call float @dx.op.unary.f32(i32 27, float %2214)  ; Round_ni(value)
  %2216 = fptoui float %2215 to i32
  %2217 = urem i32 %2216, %2150
  %2218 = udiv i32 %2216, %2151
  %2219 = call float @dx.op.unary.f32(i32 22, float %2199)  ; Frc(value)
  %2220 = call float @dx.op.unary.f32(i32 22, float %2200)  ; Frc(value)
  %2221 = uitofp i32 %2217 to float
  %2222 = uitofp i32 %2218 to float
  %2223 = fadd fast float %2219, %2221
  %2224 = fadd fast float %2220, %2222
  %2225 = uitofp i32 %2150 to float
  %2226 = uitofp i32 %2151 to float
  %2227 = fdiv fast float %2223, %2225
  %2228 = fdiv fast float %2224, %2226
  br label %2229

; <label>:2229                                    ; preds = %2204, %2131
  %2230 = phi float [ %2227, %2204 ], [ %2199, %2131 ]
  %2231 = phi float [ %2228, %2204 ], [ %2200, %2131 ]
  %2232 = and i32 %2125, 256
  %2233 = icmp eq i32 %2232, 0
  br i1 %2233, label %2280, label %2234

; <label>:2234                                    ; preds = %2229
  %2235 = add i32 %49, 448
  %2236 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2235, i32 undef)  ; BufferLoad(srv,index,wot)
  %2237 = extractvalue %dx.types.ResRet.i32 %2236, 0
  %2238 = add i32 %2237, 0
  %2239 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2238, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2240 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2239, %dx.types.Handle %106, float %2230, float %2231, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2241 = extractvalue %dx.types.ResRet.f32 %2240, 0
  %2242 = add i32 %49, 132
  %2243 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2242, i32 undef)  ; BufferLoad(srv,index,wot)
  %2244 = extractvalue %dx.types.ResRet.i32 %2243, 0
  %2245 = shl i32 %2244, 4
  %2246 = and i32 %2245, 32752
  %2247 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2246)  ; LegacyF16ToF32(value)
  %2248 = lshr i32 %2244, 7
  %2249 = and i32 %2248, 32752
  %2250 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2249)  ; LegacyF16ToF32(value)
  %2251 = fsub fast float 1.000000e+00, %500
  %2252 = call float @dx.op.binary.f32(i32 35, float %2251, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2253 = bitcast float %500 to i32
  %2254 = sitofp i32 %2253 to float
  %2255 = fadd fast float %2254, 0xC1CFBF8940000000
  %2256 = fmul fast float %2250, %2255
  %2257 = fadd fast float %2256, 0x41CFBF8940000000
  %2258 = fptosi float %2257 to i32
  %2259 = bitcast i32 %2258 to float
  %2260 = bitcast float %2252 to i32
  %2261 = sitofp i32 %2260 to float
  %2262 = fadd fast float %2261, 0xC1CFBF8940000000
  %2263 = fmul fast float %2262, %2250
  %2264 = fadd fast float %2263, 0x41CFBF8940000000
  %2265 = fptosi float %2264 to i32
  %2266 = bitcast i32 %2265 to float
  %2267 = fmul fast float %2259, %2247
  %2268 = fmul fast float %2266, %2247
  %2269 = fsub fast float %2252, %2267
  %2270 = fadd fast float %2268, %2252
  %2271 = call float @dx.op.unary.f32(i32 7, float %2269)  ; Saturate(value)
  %2272 = call float @dx.op.unary.f32(i32 7, float %2270)  ; Saturate(value)
  %2273 = fsub fast float %2241, %2271
  %2274 = fsub fast float %2272, %2271
  %2275 = bitcast float %2274 to i32
  %2276 = sub nsw i32 2129859010, %2275
  %2277 = bitcast i32 %2276 to float
  %2278 = fmul fast float %2277, %2273
  %2279 = call float @dx.op.unary.f32(i32 7, float %2278)  ; Saturate(value)
  br label %2280

; <label>:2280                                    ; preds = %2234, %2229
  %2281 = phi float [ %2279, %2234 ], [ %500, %2229 ]
  %2282 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2123, i32 undef)  ; BufferLoad(srv,index,wot)
  %2283 = extractvalue %dx.types.ResRet.i32 %2282, 0
  %2284 = and i32 %2283, 128
  %2285 = icmp eq i32 %2284, 0
  br i1 %2285, label %2302, label %2286

; <label>:2286                                    ; preds = %2280
  %2287 = add i32 %49, 432
  %2288 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2287, i32 undef)  ; BufferLoad(srv,index,wot)
  %2289 = extractvalue %dx.types.ResRet.i32 %2288, 0
  %2290 = add i32 %2289, 0
  %2291 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2290, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2292 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2291, %dx.types.Handle %106, float %2230, float %2231, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2293 = extractvalue %dx.types.ResRet.f32 %2292, 0
  %2294 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2123, i32 undef)  ; BufferLoad(srv,index,wot)
  %2295 = extractvalue %dx.types.ResRet.i32 %2294, 0
  %2296 = and i32 %2295, 524288
  %2297 = icmp ne i32 %2296, 0
  %2298 = fcmp fast ogt float %2293, 0x3FE0101020000000
  %2299 = select i1 %2298, float 1.000000e+00, float 0.000000e+00
  %2300 = select i1 %2297, float %2299, float %2293
  %2301 = fmul fast float %2300, %2281
  br label %2302

; <label>:2302                                    ; preds = %2286, %2280
  %2303 = phi float [ %2301, %2286 ], [ %2281, %2280 ]
  %2304 = fcmp fast ult float %2303, 0x3F70101020000000
  br i1 %2304, label %3043, label %2305

; <label>:2305                                    ; preds = %2302
  %2306 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2123, i32 undef)  ; BufferLoad(srv,index,wot)
  %2307 = extractvalue %dx.types.ResRet.i32 %2306, 0
  %2308 = and i32 %2307, 16
  %2309 = icmp eq i32 %2308, 0
  br i1 %2309, label %2508, label %2310

; <label>:2310                                    ; preds = %2305
  %2311 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2146, i32 undef)  ; BufferLoad(srv,index,wot)
  %2312 = extractvalue %dx.types.ResRet.i32 %2311, 0
  %2313 = add i32 %49, 384
  %2314 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2313, i32 undef)  ; BufferLoad(srv,index,wot)
  %2315 = extractvalue %dx.types.ResRet.i32 %2314, 0
  %2316 = add i32 %2315, 0
  %2317 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2316, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2318 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2317, %dx.types.Handle %105, float %2230, float %2231, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2319 = extractvalue %dx.types.ResRet.f32 %2318, 0
  %2320 = extractvalue %dx.types.ResRet.f32 %2318, 1
  %2321 = extractvalue %dx.types.ResRet.f32 %2318, 2
  %2322 = extractvalue %dx.types.ResRet.f32 %2318, 3
  %2323 = and i32 %2312, 255
  %2324 = uitofp i32 %2323 to float
  %2325 = lshr i32 %2312, 8
  %2326 = and i32 %2325, 255
  %2327 = uitofp i32 %2326 to float
  %2328 = fmul fast float %2322, %2324
  %2329 = fadd fast float %2328, %2327
  %2330 = fmul fast float %2329, 0x3F70101000000000
  %2331 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2123, i32 undef)  ; BufferLoad(srv,index,wot)
  %2332 = extractvalue %dx.types.ResRet.i32 %2331, 0
  %2333 = and i32 %2332, 512
  %2334 = icmp eq i32 %2333, 0
  br i1 %2334, label %2343, label %2335

; <label>:2335                                    ; preds = %2310
  %2336 = add i32 %49, 468
  %2337 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2336, i32 undef)  ; BufferLoad(srv,index,wot)
  %2338 = extractvalue %dx.types.ResRet.i32 %2337, 0
  %2339 = add i32 %2338, 0
  %2340 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2339, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2341 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2340, %dx.types.Handle %106, float %2230, float %2231, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2342 = extractvalue %dx.types.ResRet.f32 %2341, 0
  br label %2343

; <label>:2343                                    ; preds = %2335, %2310
  %2344 = phi float [ %2342, %2335 ], [ 1.000000e+00, %2310 ]
  %2345 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2123, i32 undef)  ; BufferLoad(srv,index,wot)
  %2346 = extractvalue %dx.types.ResRet.i32 %2345, 0
  %2347 = and i32 %2346, 33554432
  %2348 = icmp eq i32 %2347, 0
  br i1 %2348, label %2455, label %2349

; <label>:2349                                    ; preds = %2343
  %2350 = add i32 %49, 256
  %2351 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2350, i32 undef)  ; BufferLoad(srv,index,wot)
  %2352 = extractvalue %dx.types.ResRet.i32 %2351, 0
  %2353 = and i32 %2352, 65535
  %2354 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2353)  ; LegacyF16ToF32(value)
  %2355 = lshr i32 %2352, 16
  %2356 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2355)  ; LegacyF16ToF32(value)
  %2357 = add i32 %49, 260
  %2358 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2357, i32 undef)  ; BufferLoad(srv,index,wot)
  %2359 = extractvalue %dx.types.ResRet.i32 %2358, 0
  %2360 = and i32 %2359, 65535
  %2361 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2360)  ; LegacyF16ToF32(value)
  %2362 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %370, i32 undef)  ; BufferLoad(srv,index,wot)
  %2363 = extractvalue %dx.types.ResRet.i32 %2362, 0
  %2364 = lshr i32 %2363, 24
  %2365 = uitofp i32 %2364 to float
  %2366 = fmul fast float %2365, 0x3F70101020000000
  %2367 = and i32 %2363, 255
  %2368 = uitofp i32 %2367 to float
  %2369 = fmul fast float %2368, 0x3F70101020000000
  %2370 = lshr i32 %2363, 8
  %2371 = and i32 %2370, 255
  %2372 = uitofp i32 %2371 to float
  %2373 = fmul fast float %2372, 0x3F70101020000000
  %2374 = lshr i32 %2363, 16
  %2375 = and i32 %2374, 255
  %2376 = uitofp i32 %2375 to float
  %2377 = fmul fast float %2376, 0x3F70101020000000
  %2378 = add i32 %49, 252
  %2379 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2378, i32 undef)  ; BufferLoad(srv,index,wot)
  %2380 = extractvalue %dx.types.ResRet.i32 %2379, 0
  %2381 = lshr i32 %2380, 24
  %2382 = uitofp i32 %2381 to float
  %2383 = fmul fast float %2382, 0x3F70101020000000
  %2384 = and i32 %2380, 255
  %2385 = uitofp i32 %2384 to float
  %2386 = fmul fast float %2385, 0x3F70101020000000
  %2387 = lshr i32 %2380, 8
  %2388 = and i32 %2387, 255
  %2389 = uitofp i32 %2388 to float
  %2390 = fmul fast float %2389, 0x3F70101020000000
  %2391 = lshr i32 %2380, 16
  %2392 = and i32 %2391, 255
  %2393 = uitofp i32 %2392 to float
  %2394 = fmul fast float %2393, 0x3F70101020000000
  %2395 = bitcast float %2319 to i32
  %2396 = ashr i32 %2395, 1
  %2397 = sub nsw i32 1597463174, %2396
  %2398 = bitcast i32 %2397 to float
  %2399 = fmul fast float %2319, 5.000000e-01
  %2400 = fmul fast float %2398, %2398
  %2401 = fmul fast float %2400, %2399
  %2402 = fsub fast float 1.500000e+00, %2401
  %2403 = fmul fast float %2398, %2319
  %2404 = fmul fast float %2403, %2402
  %2405 = bitcast float %2320 to i32
  %2406 = ashr i32 %2405, 1
  %2407 = sub nsw i32 1597463174, %2406
  %2408 = bitcast i32 %2407 to float
  %2409 = fmul fast float %2320, 5.000000e-01
  %2410 = fmul fast float %2408, %2408
  %2411 = fmul fast float %2410, %2409
  %2412 = fsub fast float 1.500000e+00, %2411
  %2413 = fmul fast float %2408, %2320
  %2414 = fmul fast float %2413, %2412
  %2415 = bitcast float %2321 to i32
  %2416 = ashr i32 %2415, 1
  %2417 = sub nsw i32 1597463174, %2416
  %2418 = bitcast i32 %2417 to float
  %2419 = fmul fast float %2321, 5.000000e-01
  %2420 = fmul fast float %2418, %2418
  %2421 = fmul fast float %2420, %2419
  %2422 = fsub fast float 1.500000e+00, %2421
  %2423 = fmul fast float %2418, %2321
  %2424 = fmul fast float %2423, %2422
  %2425 = fsub fast float %2404, %2386
  %2426 = fsub fast float %2414, %2390
  %2427 = fsub fast float %2424, %2394
  %2428 = fmul fast float %2425, %2354
  %2429 = fmul fast float %2426, %2356
  %2430 = fmul fast float %2427, %2361
  %2431 = fadd fast float %2428, %2369
  %2432 = fadd fast float %2429, %2373
  %2433 = fadd fast float %2430, %2377
  %2434 = call float @dx.op.unary.f32(i32 7, float %2431)  ; Saturate(value)
  %2435 = call float @dx.op.unary.f32(i32 7, float %2432)  ; Saturate(value)
  %2436 = call float @dx.op.unary.f32(i32 7, float %2433)  ; Saturate(value)
  %2437 = fmul fast float %2434, %2434
  %2438 = fmul fast float %2435, %2435
  %2439 = fmul fast float %2436, %2436
  %2440 = fsub fast float %2437, %2319
  %2441 = fsub fast float %2438, %2320
  %2442 = fsub fast float %2439, %2321
  %2443 = fmul fast float %2440, %2344
  %2444 = fmul fast float %2441, %2344
  %2445 = fmul fast float %2442, %2344
  %2446 = fadd fast float %2443, %2319
  %2447 = fadd fast float %2444, %2320
  %2448 = fadd fast float %2445, %2321
  %2449 = fadd fast float %2366, %2330
  %2450 = fsub fast float %2449, %2383
  %2451 = call float @dx.op.unary.f32(i32 7, float %2450)  ; Saturate(value)
  %2452 = fsub fast float %2451, %2330
  %2453 = fmul fast float %2452, %2344
  %2454 = fadd fast float %2453, %2330
  br label %2508

; <label>:2455                                    ; preds = %2343
  %2456 = and i32 %2346, 134217728
  %2457 = icmp eq i32 %2456, 0
  br i1 %2457, label %2492, label %2458

; <label>:2458                                    ; preds = %2455
  %2459 = call float @dx.op.unary.f32(i32 24, float %375)  ; Sqrt(value)
  %2460 = call float @dx.op.unary.f32(i32 24, float %379)  ; Sqrt(value)
  %2461 = call float @dx.op.unary.f32(i32 24, float %383)  ; Sqrt(value)
  %2462 = fadd fast float %2459, -5.000000e-01
  %2463 = fadd fast float %2460, -5.000000e-01
  %2464 = fadd fast float %2461, -5.000000e-01
  %2465 = fmul fast float %2462, %2344
  %2466 = fmul fast float %2463, %2344
  %2467 = fmul fast float %2464, %2344
  %2468 = fadd fast float %2465, 5.000000e-01
  %2469 = fadd fast float %2466, 5.000000e-01
  %2470 = fadd fast float %2467, 5.000000e-01
  %2471 = call float @dx.op.unary.f32(i32 24, float %2319)  ; Sqrt(value)
  %2472 = call float @dx.op.unary.f32(i32 24, float %2320)  ; Sqrt(value)
  %2473 = call float @dx.op.unary.f32(i32 24, float %2321)  ; Sqrt(value)
  %2474 = fmul fast float %2468, 2.000000e+00
  %2475 = fsub fast float 1.000000e+00, %2474
  %2476 = fmul fast float %2475, %2471
  %2477 = fadd fast float %2476, %2474
  %2478 = fmul fast float %2477, %2471
  %2479 = fmul fast float %2469, 2.000000e+00
  %2480 = fsub fast float 1.000000e+00, %2479
  %2481 = fmul fast float %2480, %2472
  %2482 = fadd fast float %2481, %2479
  %2483 = fmul fast float %2482, %2472
  %2484 = fmul fast float %2470, 2.000000e+00
  %2485 = fsub fast float 1.000000e+00, %2484
  %2486 = fmul fast float %2485, %2473
  %2487 = fadd fast float %2486, %2484
  %2488 = fmul fast float %2487, %2473
  %2489 = fmul fast float %2478, %2478
  %2490 = fmul fast float %2483, %2483
  %2491 = fmul fast float %2488, %2488
  br label %2508

; <label>:2492                                    ; preds = %2455
  %2493 = fmul fast float %375, %375
  %2494 = fmul fast float %379, %379
  %2495 = fmul fast float %383, %383
  %2496 = fadd fast float %2493, -1.000000e+00
  %2497 = fadd fast float %2494, -1.000000e+00
  %2498 = fadd fast float %2495, -1.000000e+00
  %2499 = fmul fast float %2344, %2496
  %2500 = fmul fast float %2344, %2497
  %2501 = fmul fast float %2344, %2498
  %2502 = fadd fast float %2499, 1.000000e+00
  %2503 = fadd fast float %2500, 1.000000e+00
  %2504 = fadd fast float %2501, 1.000000e+00
  %2505 = fmul fast float %2502, %2319
  %2506 = fmul fast float %2503, %2320
  %2507 = fmul fast float %2504, %2321
  br label %2508

; <label>:2508                                    ; preds = %2492, %2458, %2349, %2305
  %2509 = phi float [ %2454, %2349 ], [ %2330, %2458 ], [ %2330, %2492 ], [ 0x3FA23C0BE0000000, %2305 ]
  %2510 = phi float [ %2446, %2349 ], [ %2489, %2458 ], [ %2505, %2492 ], [ 1.000000e+00, %2305 ]
  %2511 = phi float [ %2447, %2349 ], [ %2490, %2458 ], [ %2506, %2492 ], [ 1.000000e+00, %2305 ]
  %2512 = phi float [ %2448, %2349 ], [ %2491, %2458 ], [ %2507, %2492 ], [ 1.000000e+00, %2305 ]
  %2513 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2514 = extractvalue %dx.types.CBufRet.i32 %2513, 1
  %2515 = and i32 %2514, 1
  %2516 = icmp ne i32 %2515, 0
  %2517 = add i32 %49, 356
  %2518 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2517, i32 undef)  ; BufferLoad(srv,index,wot)
  %2519 = extractvalue %dx.types.ResRet.i32 %2518, 0
  %2520 = and i32 %2519, 32
  %2521 = icmp ne i32 %2520, 0
  %2522 = and i1 %2516, %2521
  %2523 = select i1 %2522, float 1.000000e+00, float %2510
  %2524 = select i1 %2522, float 0x3FD3333340000000, float %2511
  %2525 = select i1 %2522, float 0x3FD3333340000000, float %2512
  %2526 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2123, i32 undef)  ; BufferLoad(srv,index,wot)
  %2527 = extractvalue %dx.types.ResRet.i32 %2526, 0
  %2528 = and i32 %2527, 32
  %2529 = icmp eq i32 %2528, 0
  br i1 %2529, label %2602, label %2530

; <label>:2530                                    ; preds = %2508
  %2531 = add i32 %49, 124
  %2532 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2531, i32 undef)  ; BufferLoad(srv,index,wot)
  %2533 = extractvalue %dx.types.ResRet.i32 %2532, 0
  %2534 = add i32 %49, 400
  %2535 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2534, i32 undef)  ; BufferLoad(srv,index,wot)
  %2536 = extractvalue %dx.types.ResRet.i32 %2535, 0
  %2537 = add i32 %2536, 0
  %2538 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2537, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2539 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2538, %dx.types.Handle %105, float %2230, float %2231, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2540 = extractvalue %dx.types.ResRet.f32 %2539, 0
  %2541 = extractvalue %dx.types.ResRet.f32 %2539, 1
  %2542 = extractvalue %dx.types.ResRet.f32 %2539, 2
  %2543 = extractvalue %dx.types.ResRet.f32 %2539, 3
  %2544 = and i32 %2533, 255
  %2545 = uitofp i32 %2544 to float
  %2546 = lshr i32 %2533, 8
  %2547 = and i32 %2546, 255
  %2548 = uitofp i32 %2547 to float
  %2549 = lshr i32 %2533, 16
  %2550 = and i32 %2549, 255
  %2551 = uitofp i32 %2550 to float
  %2552 = fmul fast float %2551, 0x3F70101000000000
  %2553 = fmul fast float %2540, %2545
  %2554 = fadd fast float %2553, %2548
  %2555 = fmul fast float %2554, 0x3F70101000000000
  %2556 = fadd fast float %2541, -5.000000e-01
  %2557 = fadd fast float %2543, -5.000000e-01
  %2558 = fmul fast float %2556, %2552
  %2559 = fmul fast float %2557, %2552
  %2560 = fadd fast float %2558, 5.000000e-01
  %2561 = fadd fast float %2559, 5.000000e-01
  %2562 = fmul fast float %2560, 2.000000e+00
  %2563 = fadd fast float %2562, -1.000000e+00
  %2564 = fmul fast float %2561, 2.000000e+00
  %2565 = fadd fast float %2564, -1.000000e+00
  %2566 = fadd fast float %2563, %2565
  %2567 = fmul fast float %2566, 5.000000e-01
  %2568 = fsub fast float %2563, %2565
  %2569 = fmul fast float %2568, 5.000000e-01
  %2570 = call float @dx.op.unary.f32(i32 6, float %2567)  ; FAbs(value)
  %2571 = fsub fast float 1.000000e+00, %2570
  %2572 = call float @dx.op.unary.f32(i32 6, float %2569)  ; FAbs(value)
  %2573 = fsub fast float %2571, %2572
  %2574 = call float @dx.op.dot3.f32(i32 55, float %2567, float %2569, float %2573, float %2567, float %2569, float %2573)  ; Dot3(ax,ay,az,bx,by,bz)
  %2575 = call float @dx.op.unary.f32(i32 25, float %2574)  ; Rsqrt(value)
  %2576 = fmul fast float %2567, %2575
  %2577 = fmul fast float %2569, %2575
  %2578 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2123, i32 undef)  ; BufferLoad(srv,index,wot)
  %2579 = extractvalue %dx.types.ResRet.i32 %2578, 0
  %2580 = and i32 %2579, 67108864
  %2581 = icmp eq i32 %2580, 0
  br i1 %2581, label %2598, label %2582

; <label>:2582                                    ; preds = %2530
  %2583 = add i32 %49, 312
  %2584 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2583, i32 undef)  ; BufferLoad(srv,index,wot)
  %2585 = extractvalue %dx.types.ResRet.i32 %2584, 0
  %2586 = and i32 %2585, 65535
  %2587 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2586)  ; LegacyF16ToF32(value)
  %2588 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2140, i32 undef)  ; BufferLoad(srv,index,wot)
  %2589 = extractvalue %dx.types.ResRet.i32 %2588, 0
  %2590 = and i32 %2589, 65535
  %2591 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2590)  ; LegacyF16ToF32(value)
  %2592 = lshr i32 %2585, 16
  %2593 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2592)  ; LegacyF16ToF32(value)
  %2594 = fsub fast float %2555, %2593
  %2595 = fmul fast float %2594, %2587
  %2596 = fadd fast float %2595, %2591
  %2597 = call float @dx.op.unary.f32(i32 7, float %2596)  ; Saturate(value)
  br label %2598

; <label>:2598                                    ; preds = %2582, %2530
  %2599 = phi float [ %2597, %2582 ], [ %2555, %2530 ]
  %2600 = call float @dx.op.dot2.f32(i32 54, float %2576, float %2577, float %2134, float %2135)  ; Dot2(ax,ay,bx,by)
  %2601 = call float @dx.op.dot2.f32(i32 54, float %2576, float %2577, float %2136, float %2137)  ; Dot2(ax,ay,bx,by)
  br label %2602

; <label>:2602                                    ; preds = %2598, %2508
  %2603 = phi float [ %2599, %2598 ], [ 0x3FD6666660000000, %2508 ]
  %2604 = phi float [ %2600, %2598 ], [ 0.000000e+00, %2508 ]
  %2605 = phi float [ %2601, %2598 ], [ 0.000000e+00, %2508 ]
  %2606 = phi float [ %2542, %2598 ], [ 1.000000e+00, %2508 ]
  %2607 = add i32 %49, 192
  %2608 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2607, i32 undef)  ; BufferLoad(srv,index,wot)
  %2609 = extractvalue %dx.types.ResRet.i32 %2608, 0
  %2610 = lshr i32 %2609, 22
  %2611 = shl nuw nsw i32 %2610, 5
  %2612 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2611)  ; LegacyF16ToF32(value)
  %2613 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2123, i32 undef)  ; BufferLoad(srv,index,wot)
  %2614 = extractvalue %dx.types.ResRet.i32 %2613, 0
  %2615 = and i32 %2614, 64
  %2616 = icmp eq i32 %2615, 0
  br i1 %2616, label %2650, label %2617

; <label>:2617                                    ; preds = %2602
  %2618 = add i32 %49, 416
  %2619 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2618, i32 undef)  ; BufferLoad(srv,index,wot)
  %2620 = extractvalue %dx.types.ResRet.i32 %2619, 0
  %2621 = add i32 %2620, 0
  %2622 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2621, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2623 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2123, i32 undef)  ; BufferLoad(srv,index,wot)
  %2624 = extractvalue %dx.types.ResRet.i32 %2623, 0
  %2625 = and i32 %2624, 131072
  %2626 = icmp eq i32 %2625, 0
  %2627 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2622, %dx.types.Handle %105, float %2230, float %2231, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2628 = extractvalue %dx.types.ResRet.f32 %2627, 0
  %2629 = extractvalue %dx.types.ResRet.f32 %2627, 1
  %2630 = extractvalue %dx.types.ResRet.f32 %2627, 2
  %2631 = fmul fast float %2628, %363
  %2632 = fmul fast float %2629, %366
  %2633 = fmul fast float %2630, %369
  br i1 %2626, label %2640, label %2634

; <label>:2634                                    ; preds = %2617
  %2635 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2636 = extractvalue %dx.types.CBufRet.f32 %2635, 0
  %2637 = fmul fast float %2636, %2631
  %2638 = fmul fast float %2636, %2632
  %2639 = fmul fast float %2636, %2633
  br label %2640

; <label>:2640                                    ; preds = %2634, %2617
  %2641 = phi float [ %2637, %2634 ], [ %2631, %2617 ]
  %2642 = phi float [ %2638, %2634 ], [ %2632, %2617 ]
  %2643 = phi float [ %2639, %2634 ], [ %2633, %2617 ]
  %2644 = fmul fast float %2641, %2612
  %2645 = select i1 %262, float %2644, float %2641
  %2646 = call float @dx.op.dot3.f32(i32 55, float %2645, float %2642, float %2643, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2647 = select i1 %262, float 0.000000e+00, float %2641
  %2648 = select i1 %262, float %2646, float %2642
  %2649 = select i1 %262, float 0.000000e+00, float %2643
  br label %2650

; <label>:2650                                    ; preds = %2640, %2602
  %2651 = phi float [ %2647, %2640 ], [ 0.000000e+00, %2602 ]
  %2652 = phi float [ %2648, %2640 ], [ 0.000000e+00, %2602 ]
  %2653 = phi float [ %2649, %2640 ], [ 0.000000e+00, %2602 ]
  %2654 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2123, i32 undef)  ; BufferLoad(srv,index,wot)
  %2655 = extractvalue %dx.types.ResRet.i32 %2654, 0
  %2656 = and i32 %2655, 1024
  %2657 = icmp eq i32 %2656, 0
  br i1 %2657, label %2688, label %2658

; <label>:2658                                    ; preds = %2650
  %2659 = add i32 %49, 184
  %2660 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2659, i32 undef)  ; BufferLoad(srv,index,wot)
  %2661 = extractvalue %dx.types.ResRet.i32 %2660, 0
  %2662 = and i32 %2661, 255
  %2663 = uitofp i32 %2662 to float
  %2664 = fmul fast float %2663, 0x3F70101020000000
  %2665 = lshr i32 %2661, 8
  %2666 = and i32 %2665, 255
  %2667 = uitofp i32 %2666 to float
  %2668 = fmul fast float %2667, 0x3F70101020000000
  %2669 = lshr i32 %2661, 16
  %2670 = and i32 %2669, 255
  %2671 = uitofp i32 %2670 to float
  %2672 = fmul fast float %2671, 0x3F70101020000000
  %2673 = fmul fast float %2664, %2664
  %2674 = fmul fast float %2668, %2668
  %2675 = fmul fast float %2672, %2672
  %2676 = add i32 %49, 484
  %2677 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2676, i32 undef)  ; BufferLoad(srv,index,wot)
  %2678 = extractvalue %dx.types.ResRet.i32 %2677, 0
  %2679 = add i32 %2678, 0
  %2680 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2679, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2681 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2680, %dx.types.Handle %106, float %2230, float %2231, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2682 = extractvalue %dx.types.ResRet.f32 %2681, 0
  %2683 = extractvalue %dx.types.ResRet.f32 %2681, 1
  %2684 = extractvalue %dx.types.ResRet.f32 %2681, 2
  %2685 = fmul fast float %2673, %2682
  %2686 = fmul fast float %2674, %2683
  %2687 = fmul fast float %2675, %2684
  br label %2688

; <label>:2688                                    ; preds = %2658, %2650
  %2689 = phi float [ %2685, %2658 ], [ 0.000000e+00, %2650 ]
  %2690 = phi float [ %2686, %2658 ], [ 0.000000e+00, %2650 ]
  %2691 = phi float [ %2687, %2658 ], [ 0.000000e+00, %2650 ]
  %2692 = fcmp fast ogt float %2689, 0.000000e+00
  %2693 = fcmp fast ogt float %2690, 0.000000e+00
  %2694 = fcmp fast ogt float %2691, 0.000000e+00
  %2695 = call float @dx.op.unary.f32(i32 23, float %2689)  ; Log(value)
  %2696 = call float @dx.op.unary.f32(i32 23, float %2690)  ; Log(value)
  %2697 = call float @dx.op.unary.f32(i32 23, float %2691)  ; Log(value)
  %2698 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2607, i32 undef)  ; BufferLoad(srv,index,wot)
  %2699 = extractvalue %dx.types.ResRet.i32 %2698, 0
  %2700 = lshr i32 %2699, 7
  %2701 = and i32 %2700, 32752
  %2702 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2701)  ; LegacyF16ToF32(value)
  %2703 = fmul fast float %2695, 0xBFE62E4300000000
  %2704 = fmul fast float %2703, %2702
  %2705 = fmul fast float %2696, 0xBFE62E4300000000
  %2706 = fmul fast float %2705, %2702
  %2707 = fmul fast float %2697, 0xBFE62E4300000000
  %2708 = fmul fast float %2707, %2702
  %2709 = select i1 %2692, float %2704, float 1.270000e+02
  %2710 = select i1 %2693, float %2706, float 1.270000e+02
  %2711 = select i1 %2694, float %2708, float 1.270000e+02
  %2712 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2123, i32 undef)  ; BufferLoad(srv,index,wot)
  %2713 = extractvalue %dx.types.ResRet.i32 %2712, 0
  %2714 = and i32 %2713, 10240
  %2715 = icmp eq i32 %2714, 0
  br i1 %2715, label %2760, label %2716

; <label>:2716                                    ; preds = %2688
  %2717 = add i32 %49, 500
  %2718 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2717, i32 undef)  ; BufferLoad(srv,index,wot)
  %2719 = extractvalue %dx.types.ResRet.i32 %2718, 0
  %2720 = add i32 %2719, 0
  %2721 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2720, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2722 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2721, %dx.types.Handle %106, float %2230, float %2231, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2723 = extractvalue %dx.types.ResRet.f32 %2722, 1
  %2724 = extractvalue %dx.types.ResRet.f32 %2722, 3
  %2725 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2123, i32 undef)  ; BufferLoad(srv,index,wot)
  %2726 = extractvalue %dx.types.ResRet.i32 %2725, 0
  %2727 = and i32 %2726, 1048576
  %2728 = icmp ne i32 %2727, 0
  %2729 = and i32 %2726, 8192
  %2730 = icmp eq i32 %2729, 0
  br i1 %2730, label %2746, label %2731

; <label>:2731                                    ; preds = %2716
  %2732 = extractvalue %dx.types.ResRet.f32 %2722, 2
  %2733 = select i1 %2728, float %2732, float %2723
  %2734 = extractvalue %dx.types.ResRet.f32 %2722, 0
  %2735 = select i1 %2728, float %2734, float %2723
  %2736 = add i32 %49, 128
  %2737 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2736, i32 undef)  ; BufferLoad(srv,index,wot)
  %2738 = extractvalue %dx.types.ResRet.i32 %2737, 0
  %2739 = lshr i32 %2738, 16
  %2740 = and i32 %2739, 255
  %2741 = uitofp i32 %2740 to float
  %2742 = fmul fast float %2741, 0x3F80101020000000
  %2743 = fmul fast float %2742, %2735
  %2744 = fmul fast float %2742, %2723
  %2745 = fmul fast float %2742, %2733
  br label %2746

; <label>:2746                                    ; preds = %2731, %2716
  %2747 = phi float [ %2743, %2731 ], [ 0.000000e+00, %2716 ]
  %2748 = phi float [ %2744, %2731 ], [ 0.000000e+00, %2716 ]
  %2749 = phi float [ %2745, %2731 ], [ 0.000000e+00, %2716 ]
  %2750 = and i32 %2726, 2048
  %2751 = icmp eq i32 %2750, 0
  br i1 %2751, label %2760, label %2752

; <label>:2752                                    ; preds = %2746
  %2753 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2607, i32 undef)  ; BufferLoad(srv,index,wot)
  %2754 = extractvalue %dx.types.ResRet.i32 %2753, 0
  %2755 = shl i32 %2754, 4
  %2756 = and i32 %2755, 32752
  %2757 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2756)  ; LegacyF16ToF32(value)
  %2758 = fmul fast float %2757, %2724
  %2759 = call float @dx.op.binary.f32(i32 35, float %2758, float 0x3F70101020000000)  ; FMax(a,b)
  br label %2760

; <label>:2760                                    ; preds = %2752, %2746, %2688
  %2761 = phi float [ %2747, %2752 ], [ %2747, %2746 ], [ 0.000000e+00, %2688 ]
  %2762 = phi float [ %2748, %2752 ], [ %2748, %2746 ], [ 0.000000e+00, %2688 ]
  %2763 = phi float [ %2749, %2752 ], [ %2749, %2746 ], [ 0.000000e+00, %2688 ]
  %2764 = phi float [ %2759, %2752 ], [ 0x3F70101020000000, %2746 ], [ 0x3F70101020000000, %2688 ]
  %2765 = add i32 %49, 128
  %2766 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2765, i32 undef)  ; BufferLoad(srv,index,wot)
  %2767 = extractvalue %dx.types.ResRet.i32 %2766, 0
  %2768 = and i32 %2767, 255
  %2769 = uitofp i32 %2768 to float
  %2770 = lshr i32 %2767, 8
  %2771 = and i32 %2770, 255
  %2772 = uitofp i32 %2771 to float
  %2773 = call float @dx.op.dot3.f32(i32 55, float %2523, float %2524, float %2525, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2774 = fmul fast float %2772, %2773
  %2775 = fadd fast float %2774, %2769
  %2776 = fmul fast float %2775, 0x3F70101020000000
  %2777 = call float @dx.op.unary.f32(i32 7, float %2776)  ; Saturate(value)
  br i1 %2122, label %2778, label %2813

; <label>:2778                                    ; preds = %2760
  %2779 = fmul fast float %2764, 2.000000e+00
  %2780 = fcmp fast olt float %2709, 1.270000e+02
  %2781 = fcmp fast olt float %2710, 1.270000e+02
  %2782 = fcmp fast olt float %2711, 1.270000e+02
  %2783 = fmul fast float %2709, 0xBFF7154760000000
  %2784 = fmul fast float %2783, %2779
  %2785 = fmul fast float %2710, 0xBFF7154760000000
  %2786 = fmul fast float %2785, %2779
  %2787 = fmul fast float %2711, 0xBFF7154760000000
  %2788 = fmul fast float %2787, %2779
  %2789 = call float @dx.op.unary.f32(i32 21, float %2784)  ; Exp(value)
  %2790 = call float @dx.op.unary.f32(i32 21, float %2786)  ; Exp(value)
  %2791 = call float @dx.op.unary.f32(i32 21, float %2788)  ; Exp(value)
  %2792 = call float @dx.op.unary.f32(i32 7, float %2789)  ; Saturate(value)
  %2793 = call float @dx.op.unary.f32(i32 7, float %2790)  ; Saturate(value)
  %2794 = call float @dx.op.unary.f32(i32 7, float %2791)  ; Saturate(value)
  %2795 = fadd fast float %2792, -1.000000e+00
  %2796 = select i1 %2780, float %2795, float -1.000000e+00
  %2797 = fadd fast float %2793, -1.000000e+00
  %2798 = select i1 %2781, float %2797, float -1.000000e+00
  %2799 = fadd fast float %2794, -1.000000e+00
  %2800 = select i1 %2782, float %2799, float -1.000000e+00
  %2801 = fmul fast float %2796, %2303
  %2802 = fmul fast float %2798, %2303
  %2803 = fmul fast float %2800, %2303
  %2804 = fadd fast float %2801, 1.000000e+00
  %2805 = fadd fast float %2802, 1.000000e+00
  %2806 = fadd fast float %2803, 1.000000e+00
  %2807 = fmul fast float %2804, %2104
  %2808 = fmul fast float %2805, %2105
  %2809 = fmul fast float %2806, %2106
  %2810 = fmul fast float %2804, %2107
  %2811 = fmul fast float %2805, %2108
  %2812 = fmul fast float %2806, %2109
  br label %2813

; <label>:2813                                    ; preds = %2778, %2760
  %2814 = phi float [ %2807, %2778 ], [ %2104, %2760 ]
  %2815 = phi float [ %2808, %2778 ], [ %2105, %2760 ]
  %2816 = phi float [ %2809, %2778 ], [ %2106, %2760 ]
  %2817 = phi float [ %2810, %2778 ], [ %2107, %2760 ]
  %2818 = phi float [ %2811, %2778 ], [ %2108, %2760 ]
  %2819 = phi float [ %2812, %2778 ], [ %2109, %2760 ]
  %2820 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2123, i32 undef)  ; BufferLoad(srv,index,wot)
  %2821 = extractvalue %dx.types.ResRet.i32 %2820, 0
  %2822 = and i32 %2821, 3
  %2823 = icmp eq i32 %2822, 3
  br i1 %2823, label %2902, label %2824

; <label>:2824                                    ; preds = %2813
  %2825 = and i32 %2821, 16
  %2826 = icmp ne i32 %2825, 0
  %2827 = select i1 %2826, float %2303, float 0.000000e+00
  %2828 = icmp eq i32 %2822, 0
  br i1 %2828, label %2829, label %2857

; <label>:2829                                    ; preds = %2824
  %2830 = and i32 %2821, 64
  %2831 = icmp ne i32 %2830, 0
  %2832 = select i1 %2831, float %2303, float 0.000000e+00
  %2833 = fsub fast float %2523, %2814
  %2834 = fsub fast float %2524, %2815
  %2835 = fsub fast float %2525, %2816
  %2836 = fmul fast float %2827, %2833
  %2837 = fmul fast float %2827, %2834
  %2838 = fmul fast float %2827, %2835
  %2839 = fadd fast float %2836, %2814
  %2840 = fadd fast float %2837, %2815
  %2841 = fadd fast float %2838, %2816
  %2842 = fsub fast float %2509, %2116
  %2843 = fmul fast float %2827, %2842
  %2844 = fadd fast float %2843, %2116
  %2845 = fsub fast float %2651, %2817
  %2846 = fsub fast float %2652, %2818
  %2847 = fsub fast float %2653, %2819
  %2848 = fmul fast float %2832, %2845
  %2849 = fmul fast float %2832, %2846
  %2850 = fmul fast float %2832, %2847
  %2851 = fadd fast float %2848, %2817
  %2852 = fadd fast float %2849, %2818
  %2853 = fadd fast float %2850, %2819
  %2854 = fsub fast float %2777, %2120
  %2855 = fmul fast float %2827, %2854
  %2856 = fadd fast float %2855, %2120
  br label %2902

; <label>:2857                                    ; preds = %2824
  %2858 = icmp eq i32 %2822, 1
  br i1 %2858, label %2859, label %2872

; <label>:2859                                    ; preds = %2857
  %2860 = fadd fast float %2523, -1.000000e+00
  %2861 = fadd fast float %2524, -1.000000e+00
  %2862 = fadd fast float %2525, -1.000000e+00
  %2863 = fmul fast float %2827, %2860
  %2864 = fmul fast float %2827, %2861
  %2865 = fmul fast float %2827, %2862
  %2866 = fadd fast float %2863, 1.000000e+00
  %2867 = fadd fast float %2864, 1.000000e+00
  %2868 = fadd fast float %2865, 1.000000e+00
  %2869 = fmul fast float %2866, %2814
  %2870 = fmul fast float %2867, %2815
  %2871 = fmul fast float %2868, %2816
  br label %2902

; <label>:2872                                    ; preds = %2857
  %2873 = icmp eq i32 %2822, 2
  br i1 %2873, label %2874, label %2902

; <label>:2874                                    ; preds = %2872
  %2875 = call float @dx.op.unary.f32(i32 24, float %2523)  ; Sqrt(value)
  %2876 = call float @dx.op.unary.f32(i32 24, float %2524)  ; Sqrt(value)
  %2877 = call float @dx.op.unary.f32(i32 24, float %2525)  ; Sqrt(value)
  %2878 = fadd fast float %2875, -5.000000e-01
  %2879 = fadd fast float %2876, -5.000000e-01
  %2880 = fadd fast float %2877, -5.000000e-01
  %2881 = fmul fast float %2878, %2827
  %2882 = fmul fast float %2879, %2827
  %2883 = fmul fast float %2880, %2827
  %2884 = fadd fast float %2881, 5.000000e-01
  %2885 = fadd fast float %2882, 5.000000e-01
  %2886 = fadd fast float %2883, 5.000000e-01
  %2887 = fmul fast float %2884, 2.000000e+00
  %2888 = fsub fast float 1.000000e+00, %2887
  %2889 = fmul fast float %2888, %2814
  %2890 = fadd fast float %2889, %2887
  %2891 = fmul fast float %2890, %2814
  %2892 = fmul fast float %2885, 2.000000e+00
  %2893 = fsub fast float 1.000000e+00, %2892
  %2894 = fmul fast float %2893, %2815
  %2895 = fadd fast float %2894, %2892
  %2896 = fmul fast float %2895, %2815
  %2897 = fmul fast float %2886, 2.000000e+00
  %2898 = fsub fast float 1.000000e+00, %2897
  %2899 = fmul fast float %2898, %2816
  %2900 = fadd fast float %2899, %2897
  %2901 = fmul fast float %2900, %2816
  br label %2902

; <label>:2902                                    ; preds = %2874, %2872, %2859, %2829, %2813
  %2903 = phi float [ %2814, %2813 ], [ %2891, %2874 ], [ %2814, %2872 ], [ %2869, %2859 ], [ %2839, %2829 ]
  %2904 = phi float [ %2815, %2813 ], [ %2896, %2874 ], [ %2815, %2872 ], [ %2870, %2859 ], [ %2840, %2829 ]
  %2905 = phi float [ %2816, %2813 ], [ %2901, %2874 ], [ %2816, %2872 ], [ %2871, %2859 ], [ %2841, %2829 ]
  %2906 = phi float [ %2817, %2813 ], [ %2817, %2874 ], [ %2817, %2872 ], [ %2817, %2859 ], [ %2851, %2829 ]
  %2907 = phi float [ %2818, %2813 ], [ %2818, %2874 ], [ %2818, %2872 ], [ %2818, %2859 ], [ %2852, %2829 ]
  %2908 = phi float [ %2819, %2813 ], [ %2819, %2874 ], [ %2819, %2872 ], [ %2819, %2859 ], [ %2853, %2829 ]
  %2909 = phi float [ %2116, %2813 ], [ %2116, %2874 ], [ %2116, %2872 ], [ %2116, %2859 ], [ %2844, %2829 ]
  %2910 = phi float [ %2120, %2813 ], [ %2120, %2874 ], [ %2120, %2872 ], [ %2120, %2859 ], [ %2856, %2829 ]
  %2911 = and i32 %2821, 12
  %2912 = icmp eq i32 %2911, 12
  br i1 %2912, label %3043, label %2913

; <label>:2913                                    ; preds = %2902
  %2914 = and i32 %2821, 2097184
  %2915 = icmp eq i32 %2914, 2097184
  %2916 = select i1 %2915, float %2303, float 0.000000e+00
  %2917 = and i32 %2821, 4194336
  %2918 = icmp eq i32 %2917, 4194336
  %2919 = select i1 %2918, float %2303, float 0.000000e+00
  %2920 = and i32 %2821, 8388640
  %2921 = icmp eq i32 %2920, 8388640
  %2922 = select i1 %2921, float %2303, float 0.000000e+00
  %2923 = and i32 %2821, 1024
  %2924 = icmp ne i32 %2923, 0
  %2925 = select i1 %2924, float %2303, float 0.000000e+00
  %2926 = and i32 %2821, 2048
  %2927 = icmp ne i32 %2926, 0
  %2928 = select i1 %2927, float %2303, float 0.000000e+00
  %2929 = and i32 %2821, 8192
  %2930 = icmp ne i32 %2929, 0
  %2931 = select i1 %2930, float %2303, float 0.000000e+00
  %2932 = icmp eq i32 %2911, 0
  br i1 %2932, label %2933, label %2967

; <label>:2933                                    ; preds = %2913
  %2934 = fsub fast float %2604, %2102
  %2935 = fsub fast float %2605, %2103
  %2936 = fmul fast float %2916, %2934
  %2937 = fmul fast float %2916, %2935
  %2938 = fadd fast float %2936, %2102
  %2939 = fadd fast float %2937, %2103
  %2940 = fsub fast float %2606, %2118
  %2941 = fmul fast float %2919, %2940
  %2942 = fadd fast float %2941, %2118
  %2943 = fsub fast float %2603, %2117
  %2944 = fmul fast float %2922, %2943
  %2945 = fadd fast float %2944, %2117
  %2946 = fsub fast float %2709, %2110
  %2947 = fsub fast float %2710, %2111
  %2948 = fsub fast float %2711, %2112
  %2949 = fmul fast float %2925, %2946
  %2950 = fmul fast float %2925, %2947
  %2951 = fmul fast float %2925, %2948
  %2952 = fadd fast float %2949, %2110
  %2953 = fadd fast float %2950, %2111
  %2954 = fadd fast float %2951, %2112
  %2955 = fsub fast float %2764, %2119
  %2956 = fmul fast float %2928, %2955
  %2957 = fadd fast float %2956, %2119
  %2958 = fsub fast float %2761, %2113
  %2959 = fsub fast float %2762, %2114
  %2960 = fsub fast float %2763, %2115
  %2961 = fmul fast float %2931, %2958
  %2962 = fmul fast float %2931, %2959
  %2963 = fmul fast float %2931, %2960
  %2964 = fadd fast float %2961, %2113
  %2965 = fadd fast float %2962, %2114
  %2966 = fadd fast float %2963, %2115
  br label %3043

; <label>:2967                                    ; preds = %2913
  %2968 = icmp eq i32 %2911, 4
  br i1 %2968, label %2969, label %3015

; <label>:2969                                    ; preds = %2967
  %2970 = fmul fast float %2916, %2604
  %2971 = fmul fast float %2916, %2605
  %2972 = fadd fast float %2970, %2102
  %2973 = fadd fast float %2971, %2103
  %2974 = call float @dx.op.binary.f32(i32 36, float %2118, float %2606)  ; FMin(a,b)
  %2975 = fsub fast float %2974, %2118
  %2976 = fmul fast float %2975, %2919
  %2977 = fadd fast float %2976, %2118
  %2978 = fadd fast float %2603, %2117
  %2979 = fmul fast float %2978, 0x3FF337FAE0000000
  %2980 = fmul fast float %2117, %2117
  %2981 = fmul fast float %2603, %2603
  %2982 = fadd fast float %2981, %2980
  %2983 = fmul fast float %2982, 0x3FE5152B00000000
  %2984 = fmul fast float %2117, 0xBFCC1F85E0000000
  %2985 = fmul fast float %2984, %2603
  %2986 = fadd fast float %2985, 0xBFE1363700000000
  %2987 = fadd fast float %2986, %2979
  %2988 = fsub fast float %2987, %2983
  %2989 = fmul fast float %2978, 0x3FBA6F0D00000000
  %2990 = fmul fast float %2982, 0x3FD0432880000000
  %2991 = fmul fast float %2117, 0xBFEF110800000000
  %2992 = fmul fast float %2991, %2603
  %2993 = fadd fast float %2992, 1.000000e+00
  %2994 = fsub fast float %2993, %2989
  %2995 = fadd fast float %2994, %2990
  %2996 = fdiv fast float %2988, %2995
  %2997 = call float @dx.op.unary.f32(i32 7, float %2996)  ; Saturate(value)
  %2998 = fsub fast float %2997, %2117
  %2999 = fmul fast float %2998, %2922
  %3000 = fadd fast float %2999, %2117
  %3001 = fmul fast float %2925, %2709
  %3002 = fmul fast float %2925, %2710
  %3003 = fmul fast float %2925, %2711
  %3004 = fadd fast float %3001, %2110
  %3005 = fadd fast float %3002, %2111
  %3006 = fadd fast float %3003, %2112
  %3007 = fmul fast float %2928, %2764
  %3008 = fadd fast float %3007, %2119
  %3009 = fmul fast float %2931, %2761
  %3010 = fmul fast float %2931, %2762
  %3011 = fmul fast float %2931, %2763
  %3012 = fadd fast float %3009, %2113
  %3013 = fadd fast float %3010, %2114
  %3014 = fadd fast float %3011, %2115
  br label %3043

; <label>:3015                                    ; preds = %2967
  %3016 = icmp eq i32 %2911, 8
  br i1 %3016, label %3017, label %3043

; <label>:3017                                    ; preds = %3015
  %3018 = fmul fast float %2916, %2604
  %3019 = fmul fast float %2916, %2605
  %3020 = fadd fast float %3018, %2102
  %3021 = fadd fast float %3019, %2103
  %3022 = call float @dx.op.binary.f32(i32 36, float %2118, float %2606)  ; FMin(a,b)
  %3023 = fsub fast float %3022, %2118
  %3024 = fmul fast float %3023, %2919
  %3025 = fadd fast float %3024, %2118
  %3026 = fsub fast float %2603, %2117
  %3027 = fmul fast float %2922, %3026
  %3028 = fadd fast float %3027, %2117
  %3029 = fmul fast float %2925, %2709
  %3030 = fmul fast float %2925, %2710
  %3031 = fmul fast float %2925, %2711
  %3032 = fadd fast float %3029, %2110
  %3033 = fadd fast float %3030, %2111
  %3034 = fadd fast float %3031, %2112
  %3035 = fmul fast float %2928, %2764
  %3036 = fadd fast float %3035, %2119
  %3037 = fmul fast float %2931, %2761
  %3038 = fmul fast float %2931, %2762
  %3039 = fmul fast float %2931, %2763
  %3040 = fadd fast float %3037, %2113
  %3041 = fadd fast float %3038, %2114
  %3042 = fadd fast float %3039, %2115
  br label %3043

; <label>:3043                                    ; preds = %3017, %3015, %2969, %2933, %2902, %2302, %2121, %2101
  %3044 = phi float [ %2102, %2902 ], [ %2102, %2302 ], [ %2102, %2101 ], [ %3020, %3017 ], [ %2102, %3015 ], [ %2972, %2969 ], [ %2938, %2933 ], [ %2102, %2121 ]
  %3045 = phi float [ %2103, %2902 ], [ %2103, %2302 ], [ %2103, %2101 ], [ %3021, %3017 ], [ %2103, %3015 ], [ %2973, %2969 ], [ %2939, %2933 ], [ %2103, %2121 ]
  %3046 = phi float [ %2903, %2902 ], [ %2104, %2302 ], [ %2104, %2101 ], [ %2903, %3017 ], [ %2903, %3015 ], [ %2903, %2969 ], [ %2903, %2933 ], [ %2104, %2121 ]
  %3047 = phi float [ %2904, %2902 ], [ %2105, %2302 ], [ %2105, %2101 ], [ %2904, %3017 ], [ %2904, %3015 ], [ %2904, %2969 ], [ %2904, %2933 ], [ %2105, %2121 ]
  %3048 = phi float [ %2905, %2902 ], [ %2106, %2302 ], [ %2106, %2101 ], [ %2905, %3017 ], [ %2905, %3015 ], [ %2905, %2969 ], [ %2905, %2933 ], [ %2106, %2121 ]
  %3049 = phi float [ %2906, %2902 ], [ %2107, %2302 ], [ %2107, %2101 ], [ %2906, %3017 ], [ %2906, %3015 ], [ %2906, %2969 ], [ %2906, %2933 ], [ %2107, %2121 ]
  %3050 = phi float [ %2907, %2902 ], [ %2108, %2302 ], [ %2108, %2101 ], [ %2907, %3017 ], [ %2907, %3015 ], [ %2907, %2969 ], [ %2907, %2933 ], [ %2108, %2121 ]
  %3051 = phi float [ %2908, %2902 ], [ %2109, %2302 ], [ %2109, %2101 ], [ %2908, %3017 ], [ %2908, %3015 ], [ %2908, %2969 ], [ %2908, %2933 ], [ %2109, %2121 ]
  %3052 = phi float [ %2110, %2902 ], [ %2110, %2302 ], [ %2110, %2101 ], [ %3032, %3017 ], [ %2110, %3015 ], [ %3004, %2969 ], [ %2952, %2933 ], [ %2110, %2121 ]
  %3053 = phi float [ %2111, %2902 ], [ %2111, %2302 ], [ %2111, %2101 ], [ %3033, %3017 ], [ %2111, %3015 ], [ %3005, %2969 ], [ %2953, %2933 ], [ %2111, %2121 ]
  %3054 = phi float [ %2112, %2902 ], [ %2112, %2302 ], [ %2112, %2101 ], [ %3034, %3017 ], [ %2112, %3015 ], [ %3006, %2969 ], [ %2954, %2933 ], [ %2112, %2121 ]
  %3055 = phi float [ %2113, %2902 ], [ %2113, %2302 ], [ %2113, %2101 ], [ %3040, %3017 ], [ %2113, %3015 ], [ %3012, %2969 ], [ %2964, %2933 ], [ %2113, %2121 ]
  %3056 = phi float [ %2114, %2902 ], [ %2114, %2302 ], [ %2114, %2101 ], [ %3041, %3017 ], [ %2114, %3015 ], [ %3013, %2969 ], [ %2965, %2933 ], [ %2114, %2121 ]
  %3057 = phi float [ %2115, %2902 ], [ %2115, %2302 ], [ %2115, %2101 ], [ %3042, %3017 ], [ %2115, %3015 ], [ %3014, %2969 ], [ %2966, %2933 ], [ %2115, %2121 ]
  %3058 = phi float [ %2909, %2902 ], [ %2116, %2302 ], [ %2116, %2101 ], [ %2909, %3017 ], [ %2909, %3015 ], [ %2909, %2969 ], [ %2909, %2933 ], [ %2116, %2121 ]
  %3059 = phi float [ %2117, %2902 ], [ %2117, %2302 ], [ %2117, %2101 ], [ %3028, %3017 ], [ %2117, %3015 ], [ %3000, %2969 ], [ %2945, %2933 ], [ %2117, %2121 ]
  %3060 = phi float [ %2118, %2902 ], [ %2118, %2302 ], [ %2118, %2101 ], [ %3025, %3017 ], [ %2118, %3015 ], [ %2977, %2969 ], [ %2942, %2933 ], [ %2118, %2121 ]
  %3061 = phi float [ %2119, %2902 ], [ %2119, %2302 ], [ %2119, %2101 ], [ %3036, %3017 ], [ %2119, %3015 ], [ %3008, %2969 ], [ %2957, %2933 ], [ %2119, %2121 ]
  %3062 = phi float [ %2910, %2902 ], [ %2120, %2302 ], [ %2120, %2101 ], [ %2910, %3017 ], [ %2910, %3015 ], [ %2910, %2969 ], [ %2910, %2933 ], [ %2120, %2121 ]
  br i1 %450, label %3985, label %3063

; <label>:3063                                    ; preds = %3043
  %3064 = icmp ult i32 %504, 4
  %3065 = add i32 %49, 72
  %3066 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3065, i32 undef)  ; BufferLoad(srv,index,wot)
  %3067 = extractvalue %dx.types.ResRet.i32 %3066, 0
  %3068 = add i32 %49, 76
  %3069 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3068, i32 undef)  ; BufferLoad(srv,index,wot)
  %3070 = extractvalue %dx.types.ResRet.i32 %3069, 0
  %3071 = or i32 %3070, %3067
  %3072 = icmp eq i32 %3071, 0
  br i1 %3072, label %3985, label %3073

; <label>:3073                                    ; preds = %3063
  %3074 = and i32 %3067, 262144
  %3075 = icmp ne i32 %3074, 0
  %3076 = select i1 %3075, float %55, float 1.000000e+00
  %3077 = select i1 %3075, float %56, float 0.000000e+00
  %3078 = select i1 %3075, float %57, float 0.000000e+00
  %3079 = select i1 %3075, float %58, float 1.000000e+00
  %3080 = select i1 %3075, float %59, float %87
  %3081 = select i1 %3075, float %60, float %88
  %3082 = add i32 %49, 332
  %3083 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3082, i32 undef)  ; BufferLoad(srv,index,wot)
  %3084 = extractvalue %dx.types.ResRet.i32 %3083, 0
  %3085 = lshr i32 %3084, 16
  %3086 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3085)  ; LegacyF16ToF32(value)
  %3087 = fmul fast float %3086, 0x3F50624DE0000000
  %3088 = add i32 %49, 136
  %3089 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3088, i32 undef)  ; BufferLoad(srv,index,wot)
  %3090 = extractvalue %dx.types.ResRet.i32 %3089, 0
  %3091 = lshr i32 %3090, 16
  %3092 = and i32 %3091, 255
  %3093 = lshr i32 %3090, 24
  %3094 = add i32 %49, 340
  %3095 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3094, i32 undef)  ; BufferLoad(srv,index,wot)
  %3096 = extractvalue %dx.types.ResRet.i32 %3095, 0
  %3097 = and i32 %3096, 65535
  %3098 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3097)  ; LegacyF16ToF32(value)
  %3099 = lshr i32 %3096, 16
  %3100 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3099)  ; LegacyF16ToF32(value)
  %3101 = add i32 %49, 80
  %3102 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3101, i32 undef)  ; BufferLoad(srv,index,wot)
  %3103 = extractvalue %dx.types.ResRet.i32 %3102, 0
  %3104 = lshr i32 %3103, 22
  %3105 = shl nuw nsw i32 %3104, 5
  %3106 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3105)  ; LegacyF16ToF32(value)
  %3107 = shl i32 %3103, 4
  %3108 = and i32 %3107, 32752
  %3109 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3108)  ; LegacyF16ToF32(value)
  %3110 = lshr i32 %3103, 7
  %3111 = and i32 %3110, 32752
  %3112 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3111)  ; LegacyF16ToF32(value)
  %3113 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %3114 = extractvalue %dx.types.CBufRet.f32 %3113, 3
  %3115 = fmul fast float %3114, 1.000000e+03
  %3116 = fmul fast float %440, %3115
  %3117 = call float @dx.op.unary.f32(i32 22, float %3116)  ; Frc(value)
  %3118 = fadd fast float %3117, %430
  %3119 = fmul fast float %441, %3115
  %3120 = call float @dx.op.unary.f32(i32 22, float %3119)  ; Frc(value)
  %3121 = fadd fast float %3120, %432
  %3122 = fmul fast float %3087, %3115
  %3123 = call float @dx.op.unary.f32(i32 22, float %3122)  ; Frc(value)
  %3124 = fmul fast float %3123, 0x401921FB60000000
  %3125 = fadd fast float %3124, %3106
  %3126 = call float @dx.op.unary.f32(i32 13, float %3125)  ; Sin(value)
  %3127 = call float @dx.op.unary.f32(i32 12, float %3125)  ; Cos(value)
  %3128 = fsub fast float -0.000000e+00, %3126
  %3129 = fadd fast float %3080, -5.000000e-01
  %3130 = fadd fast float %3081, -5.000000e-01
  %3131 = fmul fast float %3098, %3129
  %3132 = fmul fast float %3100, %3130
  %3133 = fadd fast float %3131, 5.000000e-01
  %3134 = fadd fast float %3132, 5.000000e-01
  %3135 = fmul fast float %3109, %3133
  %3136 = fmul fast float %3112, %3134
  %3137 = fmul fast float %3127, %3135
  %3138 = call float @dx.op.tertiary.f32(i32 46, float %3128, float %3136, float %3137)  ; FMad(a,b,c)
  %3139 = fmul fast float %3126, %3135
  %3140 = call float @dx.op.tertiary.f32(i32 46, float %3127, float %3136, float %3139)  ; FMad(a,b,c)
  %3141 = fadd fast float %3118, %3138
  %3142 = fadd fast float %3121, %3140
  %3143 = icmp ugt i32 %3092, 1
  %3144 = icmp ugt i32 %3090, 33554431
  %3145 = or i1 %3144, %3143
  br i1 %3145, label %3146, label %3171

; <label>:3146                                    ; preds = %3073
  %3147 = add i32 %49, 276
  %3148 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3147, i32 undef)  ; BufferLoad(srv,index,wot)
  %3149 = extractvalue %dx.types.ResRet.i32 %3148, 0
  %3150 = lshr i32 %3149, 16
  %3151 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3150)  ; LegacyF16ToF32(value)
  %3152 = fmul fast float %3114, %3151
  %3153 = call float @dx.op.unary.f32(i32 22, float %3152)  ; Frc(value)
  %3154 = mul nuw nsw i32 %3092, %3093
  %3155 = uitofp i32 %3154 to float
  %3156 = fmul fast float %3153, %3155
  %3157 = call float @dx.op.unary.f32(i32 27, float %3156)  ; Round_ni(value)
  %3158 = fptoui float %3157 to i32
  %3159 = urem i32 %3158, %3092
  %3160 = udiv i32 %3158, %3093
  %3161 = call float @dx.op.unary.f32(i32 22, float %3141)  ; Frc(value)
  %3162 = call float @dx.op.unary.f32(i32 22, float %3142)  ; Frc(value)
  %3163 = uitofp i32 %3159 to float
  %3164 = uitofp i32 %3160 to float
  %3165 = fadd fast float %3161, %3163
  %3166 = fadd fast float %3162, %3164
  %3167 = uitofp i32 %3092 to float
  %3168 = uitofp i32 %3093 to float
  %3169 = fdiv fast float %3165, %3167
  %3170 = fdiv fast float %3166, %3168
  br label %3171

; <label>:3171                                    ; preds = %3146, %3073
  %3172 = phi float [ %3169, %3146 ], [ %3141, %3073 ]
  %3173 = phi float [ %3170, %3146 ], [ %3142, %3073 ]
  %3174 = and i32 %3067, 256
  %3175 = icmp eq i32 %3174, 0
  br i1 %3175, label %3222, label %3176

; <label>:3176                                    ; preds = %3171
  %3177 = add i32 %49, 452
  %3178 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3177, i32 undef)  ; BufferLoad(srv,index,wot)
  %3179 = extractvalue %dx.types.ResRet.i32 %3178, 0
  %3180 = add i32 %3179, 0
  %3181 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3180, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3182 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3181, %dx.types.Handle %106, float %3172, float %3173, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3183 = extractvalue %dx.types.ResRet.f32 %3182, 0
  %3184 = add i32 %49, 148
  %3185 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3184, i32 undef)  ; BufferLoad(srv,index,wot)
  %3186 = extractvalue %dx.types.ResRet.i32 %3185, 0
  %3187 = shl i32 %3186, 4
  %3188 = and i32 %3187, 32752
  %3189 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3188)  ; LegacyF16ToF32(value)
  %3190 = lshr i32 %3186, 7
  %3191 = and i32 %3190, 32752
  %3192 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3191)  ; LegacyF16ToF32(value)
  %3193 = fsub fast float 1.000000e+00, %499
  %3194 = call float @dx.op.binary.f32(i32 35, float %3193, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %3195 = bitcast float %499 to i32
  %3196 = sitofp i32 %3195 to float
  %3197 = fadd fast float %3196, 0xC1CFBF8940000000
  %3198 = fmul fast float %3192, %3197
  %3199 = fadd fast float %3198, 0x41CFBF8940000000
  %3200 = fptosi float %3199 to i32
  %3201 = bitcast i32 %3200 to float
  %3202 = bitcast float %3194 to i32
  %3203 = sitofp i32 %3202 to float
  %3204 = fadd fast float %3203, 0xC1CFBF8940000000
  %3205 = fmul fast float %3204, %3192
  %3206 = fadd fast float %3205, 0x41CFBF8940000000
  %3207 = fptosi float %3206 to i32
  %3208 = bitcast i32 %3207 to float
  %3209 = fmul fast float %3201, %3189
  %3210 = fmul fast float %3208, %3189
  %3211 = fsub fast float %3194, %3209
  %3212 = fadd fast float %3210, %3194
  %3213 = call float @dx.op.unary.f32(i32 7, float %3211)  ; Saturate(value)
  %3214 = call float @dx.op.unary.f32(i32 7, float %3212)  ; Saturate(value)
  %3215 = fsub fast float %3183, %3213
  %3216 = fsub fast float %3214, %3213
  %3217 = bitcast float %3216 to i32
  %3218 = sub nsw i32 2129859010, %3217
  %3219 = bitcast i32 %3218 to float
  %3220 = fmul fast float %3219, %3215
  %3221 = call float @dx.op.unary.f32(i32 7, float %3220)  ; Saturate(value)
  br label %3222

; <label>:3222                                    ; preds = %3176, %3171
  %3223 = phi float [ %3221, %3176 ], [ %499, %3171 ]
  %3224 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3065, i32 undef)  ; BufferLoad(srv,index,wot)
  %3225 = extractvalue %dx.types.ResRet.i32 %3224, 0
  %3226 = and i32 %3225, 128
  %3227 = icmp eq i32 %3226, 0
  br i1 %3227, label %3244, label %3228

; <label>:3228                                    ; preds = %3222
  %3229 = add i32 %49, 436
  %3230 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3229, i32 undef)  ; BufferLoad(srv,index,wot)
  %3231 = extractvalue %dx.types.ResRet.i32 %3230, 0
  %3232 = add i32 %3231, 0
  %3233 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3232, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3234 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3233, %dx.types.Handle %106, float %3172, float %3173, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3235 = extractvalue %dx.types.ResRet.f32 %3234, 0
  %3236 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3065, i32 undef)  ; BufferLoad(srv,index,wot)
  %3237 = extractvalue %dx.types.ResRet.i32 %3236, 0
  %3238 = and i32 %3237, 524288
  %3239 = icmp ne i32 %3238, 0
  %3240 = fcmp fast ogt float %3235, 0x3FE0101020000000
  %3241 = select i1 %3240, float 1.000000e+00, float 0.000000e+00
  %3242 = select i1 %3239, float %3241, float %3235
  %3243 = fmul fast float %3242, %3223
  br label %3244

; <label>:3244                                    ; preds = %3228, %3222
  %3245 = phi float [ %3243, %3228 ], [ %3223, %3222 ]
  %3246 = fcmp fast ult float %3245, 0x3F70101020000000
  br i1 %3246, label %3985, label %3247

; <label>:3247                                    ; preds = %3244
  %3248 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3065, i32 undef)  ; BufferLoad(srv,index,wot)
  %3249 = extractvalue %dx.types.ResRet.i32 %3248, 0
  %3250 = and i32 %3249, 16
  %3251 = icmp eq i32 %3250, 0
  br i1 %3251, label %3450, label %3252

; <label>:3252                                    ; preds = %3247
  %3253 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3088, i32 undef)  ; BufferLoad(srv,index,wot)
  %3254 = extractvalue %dx.types.ResRet.i32 %3253, 0
  %3255 = add i32 %49, 388
  %3256 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3255, i32 undef)  ; BufferLoad(srv,index,wot)
  %3257 = extractvalue %dx.types.ResRet.i32 %3256, 0
  %3258 = add i32 %3257, 0
  %3259 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3258, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3260 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3259, %dx.types.Handle %105, float %3172, float %3173, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3261 = extractvalue %dx.types.ResRet.f32 %3260, 0
  %3262 = extractvalue %dx.types.ResRet.f32 %3260, 1
  %3263 = extractvalue %dx.types.ResRet.f32 %3260, 2
  %3264 = extractvalue %dx.types.ResRet.f32 %3260, 3
  %3265 = and i32 %3254, 255
  %3266 = uitofp i32 %3265 to float
  %3267 = lshr i32 %3254, 8
  %3268 = and i32 %3267, 255
  %3269 = uitofp i32 %3268 to float
  %3270 = fmul fast float %3264, %3266
  %3271 = fadd fast float %3270, %3269
  %3272 = fmul fast float %3271, 0x3F70101000000000
  %3273 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3065, i32 undef)  ; BufferLoad(srv,index,wot)
  %3274 = extractvalue %dx.types.ResRet.i32 %3273, 0
  %3275 = and i32 %3274, 512
  %3276 = icmp eq i32 %3275, 0
  br i1 %3276, label %3285, label %3277

; <label>:3277                                    ; preds = %3252
  %3278 = add i32 %49, 472
  %3279 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3278, i32 undef)  ; BufferLoad(srv,index,wot)
  %3280 = extractvalue %dx.types.ResRet.i32 %3279, 0
  %3281 = add i32 %3280, 0
  %3282 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3281, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3283 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3282, %dx.types.Handle %106, float %3172, float %3173, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3284 = extractvalue %dx.types.ResRet.f32 %3283, 0
  br label %3285

; <label>:3285                                    ; preds = %3277, %3252
  %3286 = phi float [ %3284, %3277 ], [ 1.000000e+00, %3252 ]
  %3287 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3065, i32 undef)  ; BufferLoad(srv,index,wot)
  %3288 = extractvalue %dx.types.ResRet.i32 %3287, 0
  %3289 = and i32 %3288, 33554432
  %3290 = icmp eq i32 %3289, 0
  br i1 %3290, label %3397, label %3291

; <label>:3291                                    ; preds = %3285
  %3292 = add i32 %49, 272
  %3293 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3292, i32 undef)  ; BufferLoad(srv,index,wot)
  %3294 = extractvalue %dx.types.ResRet.i32 %3293, 0
  %3295 = and i32 %3294, 65535
  %3296 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3295)  ; LegacyF16ToF32(value)
  %3297 = lshr i32 %3294, 16
  %3298 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3297)  ; LegacyF16ToF32(value)
  %3299 = add i32 %49, 276
  %3300 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3299, i32 undef)  ; BufferLoad(srv,index,wot)
  %3301 = extractvalue %dx.types.ResRet.i32 %3300, 0
  %3302 = and i32 %3301, 65535
  %3303 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3302)  ; LegacyF16ToF32(value)
  %3304 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %412, i32 undef)  ; BufferLoad(srv,index,wot)
  %3305 = extractvalue %dx.types.ResRet.i32 %3304, 0
  %3306 = lshr i32 %3305, 24
  %3307 = uitofp i32 %3306 to float
  %3308 = fmul fast float %3307, 0x3F70101020000000
  %3309 = and i32 %3305, 255
  %3310 = uitofp i32 %3309 to float
  %3311 = fmul fast float %3310, 0x3F70101020000000
  %3312 = lshr i32 %3305, 8
  %3313 = and i32 %3312, 255
  %3314 = uitofp i32 %3313 to float
  %3315 = fmul fast float %3314, 0x3F70101020000000
  %3316 = lshr i32 %3305, 16
  %3317 = and i32 %3316, 255
  %3318 = uitofp i32 %3317 to float
  %3319 = fmul fast float %3318, 0x3F70101020000000
  %3320 = add i32 %49, 268
  %3321 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3320, i32 undef)  ; BufferLoad(srv,index,wot)
  %3322 = extractvalue %dx.types.ResRet.i32 %3321, 0
  %3323 = lshr i32 %3322, 24
  %3324 = uitofp i32 %3323 to float
  %3325 = fmul fast float %3324, 0x3F70101020000000
  %3326 = and i32 %3322, 255
  %3327 = uitofp i32 %3326 to float
  %3328 = fmul fast float %3327, 0x3F70101020000000
  %3329 = lshr i32 %3322, 8
  %3330 = and i32 %3329, 255
  %3331 = uitofp i32 %3330 to float
  %3332 = fmul fast float %3331, 0x3F70101020000000
  %3333 = lshr i32 %3322, 16
  %3334 = and i32 %3333, 255
  %3335 = uitofp i32 %3334 to float
  %3336 = fmul fast float %3335, 0x3F70101020000000
  %3337 = bitcast float %3261 to i32
  %3338 = ashr i32 %3337, 1
  %3339 = sub nsw i32 1597463174, %3338
  %3340 = bitcast i32 %3339 to float
  %3341 = fmul fast float %3261, 5.000000e-01
  %3342 = fmul fast float %3340, %3340
  %3343 = fmul fast float %3342, %3341
  %3344 = fsub fast float 1.500000e+00, %3343
  %3345 = fmul fast float %3340, %3261
  %3346 = fmul fast float %3345, %3344
  %3347 = bitcast float %3262 to i32
  %3348 = ashr i32 %3347, 1
  %3349 = sub nsw i32 1597463174, %3348
  %3350 = bitcast i32 %3349 to float
  %3351 = fmul fast float %3262, 5.000000e-01
  %3352 = fmul fast float %3350, %3350
  %3353 = fmul fast float %3352, %3351
  %3354 = fsub fast float 1.500000e+00, %3353
  %3355 = fmul fast float %3350, %3262
  %3356 = fmul fast float %3355, %3354
  %3357 = bitcast float %3263 to i32
  %3358 = ashr i32 %3357, 1
  %3359 = sub nsw i32 1597463174, %3358
  %3360 = bitcast i32 %3359 to float
  %3361 = fmul fast float %3263, 5.000000e-01
  %3362 = fmul fast float %3360, %3360
  %3363 = fmul fast float %3362, %3361
  %3364 = fsub fast float 1.500000e+00, %3363
  %3365 = fmul fast float %3360, %3263
  %3366 = fmul fast float %3365, %3364
  %3367 = fsub fast float %3346, %3328
  %3368 = fsub fast float %3356, %3332
  %3369 = fsub fast float %3366, %3336
  %3370 = fmul fast float %3367, %3296
  %3371 = fmul fast float %3368, %3298
  %3372 = fmul fast float %3369, %3303
  %3373 = fadd fast float %3370, %3311
  %3374 = fadd fast float %3371, %3315
  %3375 = fadd fast float %3372, %3319
  %3376 = call float @dx.op.unary.f32(i32 7, float %3373)  ; Saturate(value)
  %3377 = call float @dx.op.unary.f32(i32 7, float %3374)  ; Saturate(value)
  %3378 = call float @dx.op.unary.f32(i32 7, float %3375)  ; Saturate(value)
  %3379 = fmul fast float %3376, %3376
  %3380 = fmul fast float %3377, %3377
  %3381 = fmul fast float %3378, %3378
  %3382 = fsub fast float %3379, %3261
  %3383 = fsub fast float %3380, %3262
  %3384 = fsub fast float %3381, %3263
  %3385 = fmul fast float %3382, %3286
  %3386 = fmul fast float %3383, %3286
  %3387 = fmul fast float %3384, %3286
  %3388 = fadd fast float %3385, %3261
  %3389 = fadd fast float %3386, %3262
  %3390 = fadd fast float %3387, %3263
  %3391 = fadd fast float %3308, %3272
  %3392 = fsub fast float %3391, %3325
  %3393 = call float @dx.op.unary.f32(i32 7, float %3392)  ; Saturate(value)
  %3394 = fsub fast float %3393, %3272
  %3395 = fmul fast float %3394, %3286
  %3396 = fadd fast float %3395, %3272
  br label %3450

; <label>:3397                                    ; preds = %3285
  %3398 = and i32 %3288, 134217728
  %3399 = icmp eq i32 %3398, 0
  br i1 %3399, label %3434, label %3400

; <label>:3400                                    ; preds = %3397
  %3401 = call float @dx.op.unary.f32(i32 24, float %417)  ; Sqrt(value)
  %3402 = call float @dx.op.unary.f32(i32 24, float %421)  ; Sqrt(value)
  %3403 = call float @dx.op.unary.f32(i32 24, float %425)  ; Sqrt(value)
  %3404 = fadd fast float %3401, -5.000000e-01
  %3405 = fadd fast float %3402, -5.000000e-01
  %3406 = fadd fast float %3403, -5.000000e-01
  %3407 = fmul fast float %3404, %3286
  %3408 = fmul fast float %3405, %3286
  %3409 = fmul fast float %3406, %3286
  %3410 = fadd fast float %3407, 5.000000e-01
  %3411 = fadd fast float %3408, 5.000000e-01
  %3412 = fadd fast float %3409, 5.000000e-01
  %3413 = call float @dx.op.unary.f32(i32 24, float %3261)  ; Sqrt(value)
  %3414 = call float @dx.op.unary.f32(i32 24, float %3262)  ; Sqrt(value)
  %3415 = call float @dx.op.unary.f32(i32 24, float %3263)  ; Sqrt(value)
  %3416 = fmul fast float %3410, 2.000000e+00
  %3417 = fsub fast float 1.000000e+00, %3416
  %3418 = fmul fast float %3417, %3413
  %3419 = fadd fast float %3418, %3416
  %3420 = fmul fast float %3419, %3413
  %3421 = fmul fast float %3411, 2.000000e+00
  %3422 = fsub fast float 1.000000e+00, %3421
  %3423 = fmul fast float %3422, %3414
  %3424 = fadd fast float %3423, %3421
  %3425 = fmul fast float %3424, %3414
  %3426 = fmul fast float %3412, 2.000000e+00
  %3427 = fsub fast float 1.000000e+00, %3426
  %3428 = fmul fast float %3427, %3415
  %3429 = fadd fast float %3428, %3426
  %3430 = fmul fast float %3429, %3415
  %3431 = fmul fast float %3420, %3420
  %3432 = fmul fast float %3425, %3425
  %3433 = fmul fast float %3430, %3430
  br label %3450

; <label>:3434                                    ; preds = %3397
  %3435 = fmul fast float %417, %417
  %3436 = fmul fast float %421, %421
  %3437 = fmul fast float %425, %425
  %3438 = fadd fast float %3435, -1.000000e+00
  %3439 = fadd fast float %3436, -1.000000e+00
  %3440 = fadd fast float %3437, -1.000000e+00
  %3441 = fmul fast float %3286, %3438
  %3442 = fmul fast float %3286, %3439
  %3443 = fmul fast float %3286, %3440
  %3444 = fadd fast float %3441, 1.000000e+00
  %3445 = fadd fast float %3442, 1.000000e+00
  %3446 = fadd fast float %3443, 1.000000e+00
  %3447 = fmul fast float %3444, %3261
  %3448 = fmul fast float %3445, %3262
  %3449 = fmul fast float %3446, %3263
  br label %3450

; <label>:3450                                    ; preds = %3434, %3400, %3291, %3247
  %3451 = phi float [ %3396, %3291 ], [ %3272, %3400 ], [ %3272, %3434 ], [ 0x3FA23C0BE0000000, %3247 ]
  %3452 = phi float [ %3388, %3291 ], [ %3431, %3400 ], [ %3447, %3434 ], [ 1.000000e+00, %3247 ]
  %3453 = phi float [ %3389, %3291 ], [ %3432, %3400 ], [ %3448, %3434 ], [ 1.000000e+00, %3247 ]
  %3454 = phi float [ %3390, %3291 ], [ %3433, %3400 ], [ %3449, %3434 ], [ 1.000000e+00, %3247 ]
  %3455 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3456 = extractvalue %dx.types.CBufRet.i32 %3455, 1
  %3457 = and i32 %3456, 1
  %3458 = icmp ne i32 %3457, 0
  %3459 = add i32 %49, 356
  %3460 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3459, i32 undef)  ; BufferLoad(srv,index,wot)
  %3461 = extractvalue %dx.types.ResRet.i32 %3460, 0
  %3462 = and i32 %3461, 32
  %3463 = icmp ne i32 %3462, 0
  %3464 = and i1 %3458, %3463
  %3465 = select i1 %3464, float 1.000000e+00, float %3452
  %3466 = select i1 %3464, float 0x3FD3333340000000, float %3453
  %3467 = select i1 %3464, float 0x3FD3333340000000, float %3454
  %3468 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3065, i32 undef)  ; BufferLoad(srv,index,wot)
  %3469 = extractvalue %dx.types.ResRet.i32 %3468, 0
  %3470 = and i32 %3469, 32
  %3471 = icmp eq i32 %3470, 0
  br i1 %3471, label %3544, label %3472

; <label>:3472                                    ; preds = %3450
  %3473 = add i32 %49, 140
  %3474 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3473, i32 undef)  ; BufferLoad(srv,index,wot)
  %3475 = extractvalue %dx.types.ResRet.i32 %3474, 0
  %3476 = add i32 %49, 404
  %3477 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3476, i32 undef)  ; BufferLoad(srv,index,wot)
  %3478 = extractvalue %dx.types.ResRet.i32 %3477, 0
  %3479 = add i32 %3478, 0
  %3480 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3479, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3481 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3480, %dx.types.Handle %105, float %3172, float %3173, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3482 = extractvalue %dx.types.ResRet.f32 %3481, 0
  %3483 = extractvalue %dx.types.ResRet.f32 %3481, 1
  %3484 = extractvalue %dx.types.ResRet.f32 %3481, 2
  %3485 = extractvalue %dx.types.ResRet.f32 %3481, 3
  %3486 = and i32 %3475, 255
  %3487 = uitofp i32 %3486 to float
  %3488 = lshr i32 %3475, 8
  %3489 = and i32 %3488, 255
  %3490 = uitofp i32 %3489 to float
  %3491 = lshr i32 %3475, 16
  %3492 = and i32 %3491, 255
  %3493 = uitofp i32 %3492 to float
  %3494 = fmul fast float %3493, 0x3F70101000000000
  %3495 = fmul fast float %3482, %3487
  %3496 = fadd fast float %3495, %3490
  %3497 = fmul fast float %3496, 0x3F70101000000000
  %3498 = fadd fast float %3483, -5.000000e-01
  %3499 = fadd fast float %3485, -5.000000e-01
  %3500 = fmul fast float %3498, %3494
  %3501 = fmul fast float %3499, %3494
  %3502 = fadd fast float %3500, 5.000000e-01
  %3503 = fadd fast float %3501, 5.000000e-01
  %3504 = fmul fast float %3502, 2.000000e+00
  %3505 = fadd fast float %3504, -1.000000e+00
  %3506 = fmul fast float %3503, 2.000000e+00
  %3507 = fadd fast float %3506, -1.000000e+00
  %3508 = fadd fast float %3505, %3507
  %3509 = fmul fast float %3508, 5.000000e-01
  %3510 = fsub fast float %3505, %3507
  %3511 = fmul fast float %3510, 5.000000e-01
  %3512 = call float @dx.op.unary.f32(i32 6, float %3509)  ; FAbs(value)
  %3513 = fsub fast float 1.000000e+00, %3512
  %3514 = call float @dx.op.unary.f32(i32 6, float %3511)  ; FAbs(value)
  %3515 = fsub fast float %3513, %3514
  %3516 = call float @dx.op.dot3.f32(i32 55, float %3509, float %3511, float %3515, float %3509, float %3511, float %3515)  ; Dot3(ax,ay,az,bx,by,bz)
  %3517 = call float @dx.op.unary.f32(i32 25, float %3516)  ; Rsqrt(value)
  %3518 = fmul fast float %3509, %3517
  %3519 = fmul fast float %3511, %3517
  %3520 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3065, i32 undef)  ; BufferLoad(srv,index,wot)
  %3521 = extractvalue %dx.types.ResRet.i32 %3520, 0
  %3522 = and i32 %3521, 67108864
  %3523 = icmp eq i32 %3522, 0
  br i1 %3523, label %3540, label %3524

; <label>:3524                                    ; preds = %3472
  %3525 = add i32 %49, 328
  %3526 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3525, i32 undef)  ; BufferLoad(srv,index,wot)
  %3527 = extractvalue %dx.types.ResRet.i32 %3526, 0
  %3528 = and i32 %3527, 65535
  %3529 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3528)  ; LegacyF16ToF32(value)
  %3530 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3082, i32 undef)  ; BufferLoad(srv,index,wot)
  %3531 = extractvalue %dx.types.ResRet.i32 %3530, 0
  %3532 = and i32 %3531, 65535
  %3533 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3532)  ; LegacyF16ToF32(value)
  %3534 = lshr i32 %3527, 16
  %3535 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3534)  ; LegacyF16ToF32(value)
  %3536 = fsub fast float %3497, %3535
  %3537 = fmul fast float %3536, %3529
  %3538 = fadd fast float %3537, %3533
  %3539 = call float @dx.op.unary.f32(i32 7, float %3538)  ; Saturate(value)
  br label %3540

; <label>:3540                                    ; preds = %3524, %3472
  %3541 = phi float [ %3539, %3524 ], [ %3497, %3472 ]
  %3542 = call float @dx.op.dot2.f32(i32 54, float %3518, float %3519, float %3076, float %3077)  ; Dot2(ax,ay,bx,by)
  %3543 = call float @dx.op.dot2.f32(i32 54, float %3518, float %3519, float %3078, float %3079)  ; Dot2(ax,ay,bx,by)
  br label %3544

; <label>:3544                                    ; preds = %3540, %3450
  %3545 = phi float [ %3541, %3540 ], [ 0x3FD6666660000000, %3450 ]
  %3546 = phi float [ %3542, %3540 ], [ 0.000000e+00, %3450 ]
  %3547 = phi float [ %3543, %3540 ], [ 0.000000e+00, %3450 ]
  %3548 = phi float [ %3484, %3540 ], [ 1.000000e+00, %3450 ]
  %3549 = add i32 %49, 208
  %3550 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3549, i32 undef)  ; BufferLoad(srv,index,wot)
  %3551 = extractvalue %dx.types.ResRet.i32 %3550, 0
  %3552 = lshr i32 %3551, 22
  %3553 = shl nuw nsw i32 %3552, 5
  %3554 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3553)  ; LegacyF16ToF32(value)
  %3555 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3065, i32 undef)  ; BufferLoad(srv,index,wot)
  %3556 = extractvalue %dx.types.ResRet.i32 %3555, 0
  %3557 = and i32 %3556, 64
  %3558 = icmp eq i32 %3557, 0
  br i1 %3558, label %3592, label %3559

; <label>:3559                                    ; preds = %3544
  %3560 = add i32 %49, 420
  %3561 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3560, i32 undef)  ; BufferLoad(srv,index,wot)
  %3562 = extractvalue %dx.types.ResRet.i32 %3561, 0
  %3563 = add i32 %3562, 0
  %3564 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3563, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3565 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3065, i32 undef)  ; BufferLoad(srv,index,wot)
  %3566 = extractvalue %dx.types.ResRet.i32 %3565, 0
  %3567 = and i32 %3566, 131072
  %3568 = icmp eq i32 %3567, 0
  %3569 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3564, %dx.types.Handle %105, float %3172, float %3173, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3570 = extractvalue %dx.types.ResRet.f32 %3569, 0
  %3571 = extractvalue %dx.types.ResRet.f32 %3569, 1
  %3572 = extractvalue %dx.types.ResRet.f32 %3569, 2
  %3573 = fmul fast float %3570, %405
  %3574 = fmul fast float %3571, %408
  %3575 = fmul fast float %3572, %411
  br i1 %3568, label %3582, label %3576

; <label>:3576                                    ; preds = %3559
  %3577 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3578 = extractvalue %dx.types.CBufRet.f32 %3577, 0
  %3579 = fmul fast float %3578, %3573
  %3580 = fmul fast float %3578, %3574
  %3581 = fmul fast float %3578, %3575
  br label %3582

; <label>:3582                                    ; preds = %3576, %3559
  %3583 = phi float [ %3579, %3576 ], [ %3573, %3559 ]
  %3584 = phi float [ %3580, %3576 ], [ %3574, %3559 ]
  %3585 = phi float [ %3581, %3576 ], [ %3575, %3559 ]
  %3586 = fmul fast float %3583, %3554
  %3587 = select i1 %262, float %3586, float %3583
  %3588 = call float @dx.op.dot3.f32(i32 55, float %3587, float %3584, float %3585, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3589 = select i1 %262, float 0.000000e+00, float %3583
  %3590 = select i1 %262, float %3588, float %3584
  %3591 = select i1 %262, float 0.000000e+00, float %3585
  br label %3592

; <label>:3592                                    ; preds = %3582, %3544
  %3593 = phi float [ %3589, %3582 ], [ 0.000000e+00, %3544 ]
  %3594 = phi float [ %3590, %3582 ], [ 0.000000e+00, %3544 ]
  %3595 = phi float [ %3591, %3582 ], [ 0.000000e+00, %3544 ]
  %3596 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3065, i32 undef)  ; BufferLoad(srv,index,wot)
  %3597 = extractvalue %dx.types.ResRet.i32 %3596, 0
  %3598 = and i32 %3597, 1024
  %3599 = icmp eq i32 %3598, 0
  br i1 %3599, label %3630, label %3600

; <label>:3600                                    ; preds = %3592
  %3601 = add i32 %49, 200
  %3602 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3601, i32 undef)  ; BufferLoad(srv,index,wot)
  %3603 = extractvalue %dx.types.ResRet.i32 %3602, 0
  %3604 = and i32 %3603, 255
  %3605 = uitofp i32 %3604 to float
  %3606 = fmul fast float %3605, 0x3F70101020000000
  %3607 = lshr i32 %3603, 8
  %3608 = and i32 %3607, 255
  %3609 = uitofp i32 %3608 to float
  %3610 = fmul fast float %3609, 0x3F70101020000000
  %3611 = lshr i32 %3603, 16
  %3612 = and i32 %3611, 255
  %3613 = uitofp i32 %3612 to float
  %3614 = fmul fast float %3613, 0x3F70101020000000
  %3615 = fmul fast float %3606, %3606
  %3616 = fmul fast float %3610, %3610
  %3617 = fmul fast float %3614, %3614
  %3618 = add i32 %49, 488
  %3619 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3618, i32 undef)  ; BufferLoad(srv,index,wot)
  %3620 = extractvalue %dx.types.ResRet.i32 %3619, 0
  %3621 = add i32 %3620, 0
  %3622 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3621, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3623 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3622, %dx.types.Handle %106, float %3172, float %3173, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3624 = extractvalue %dx.types.ResRet.f32 %3623, 0
  %3625 = extractvalue %dx.types.ResRet.f32 %3623, 1
  %3626 = extractvalue %dx.types.ResRet.f32 %3623, 2
  %3627 = fmul fast float %3615, %3624
  %3628 = fmul fast float %3616, %3625
  %3629 = fmul fast float %3617, %3626
  br label %3630

; <label>:3630                                    ; preds = %3600, %3592
  %3631 = phi float [ %3627, %3600 ], [ 0.000000e+00, %3592 ]
  %3632 = phi float [ %3628, %3600 ], [ 0.000000e+00, %3592 ]
  %3633 = phi float [ %3629, %3600 ], [ 0.000000e+00, %3592 ]
  %3634 = fcmp fast ogt float %3631, 0.000000e+00
  %3635 = fcmp fast ogt float %3632, 0.000000e+00
  %3636 = fcmp fast ogt float %3633, 0.000000e+00
  %3637 = call float @dx.op.unary.f32(i32 23, float %3631)  ; Log(value)
  %3638 = call float @dx.op.unary.f32(i32 23, float %3632)  ; Log(value)
  %3639 = call float @dx.op.unary.f32(i32 23, float %3633)  ; Log(value)
  %3640 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3549, i32 undef)  ; BufferLoad(srv,index,wot)
  %3641 = extractvalue %dx.types.ResRet.i32 %3640, 0
  %3642 = lshr i32 %3641, 7
  %3643 = and i32 %3642, 32752
  %3644 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3643)  ; LegacyF16ToF32(value)
  %3645 = fmul fast float %3637, 0xBFE62E4300000000
  %3646 = fmul fast float %3645, %3644
  %3647 = fmul fast float %3638, 0xBFE62E4300000000
  %3648 = fmul fast float %3647, %3644
  %3649 = fmul fast float %3639, 0xBFE62E4300000000
  %3650 = fmul fast float %3649, %3644
  %3651 = select i1 %3634, float %3646, float 1.270000e+02
  %3652 = select i1 %3635, float %3648, float 1.270000e+02
  %3653 = select i1 %3636, float %3650, float 1.270000e+02
  %3654 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3065, i32 undef)  ; BufferLoad(srv,index,wot)
  %3655 = extractvalue %dx.types.ResRet.i32 %3654, 0
  %3656 = and i32 %3655, 10240
  %3657 = icmp eq i32 %3656, 0
  br i1 %3657, label %3702, label %3658

; <label>:3658                                    ; preds = %3630
  %3659 = add i32 %49, 504
  %3660 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3659, i32 undef)  ; BufferLoad(srv,index,wot)
  %3661 = extractvalue %dx.types.ResRet.i32 %3660, 0
  %3662 = add i32 %3661, 0
  %3663 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3662, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3664 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3663, %dx.types.Handle %106, float %3172, float %3173, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3665 = extractvalue %dx.types.ResRet.f32 %3664, 1
  %3666 = extractvalue %dx.types.ResRet.f32 %3664, 3
  %3667 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3065, i32 undef)  ; BufferLoad(srv,index,wot)
  %3668 = extractvalue %dx.types.ResRet.i32 %3667, 0
  %3669 = and i32 %3668, 1048576
  %3670 = icmp ne i32 %3669, 0
  %3671 = and i32 %3668, 8192
  %3672 = icmp eq i32 %3671, 0
  br i1 %3672, label %3688, label %3673

; <label>:3673                                    ; preds = %3658
  %3674 = extractvalue %dx.types.ResRet.f32 %3664, 2
  %3675 = select i1 %3670, float %3674, float %3665
  %3676 = extractvalue %dx.types.ResRet.f32 %3664, 0
  %3677 = select i1 %3670, float %3676, float %3665
  %3678 = add i32 %49, 144
  %3679 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3678, i32 undef)  ; BufferLoad(srv,index,wot)
  %3680 = extractvalue %dx.types.ResRet.i32 %3679, 0
  %3681 = lshr i32 %3680, 16
  %3682 = and i32 %3681, 255
  %3683 = uitofp i32 %3682 to float
  %3684 = fmul fast float %3683, 0x3F80101020000000
  %3685 = fmul fast float %3684, %3677
  %3686 = fmul fast float %3684, %3665
  %3687 = fmul fast float %3684, %3675
  br label %3688

; <label>:3688                                    ; preds = %3673, %3658
  %3689 = phi float [ %3685, %3673 ], [ 0.000000e+00, %3658 ]
  %3690 = phi float [ %3686, %3673 ], [ 0.000000e+00, %3658 ]
  %3691 = phi float [ %3687, %3673 ], [ 0.000000e+00, %3658 ]
  %3692 = and i32 %3668, 2048
  %3693 = icmp eq i32 %3692, 0
  br i1 %3693, label %3702, label %3694

; <label>:3694                                    ; preds = %3688
  %3695 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3549, i32 undef)  ; BufferLoad(srv,index,wot)
  %3696 = extractvalue %dx.types.ResRet.i32 %3695, 0
  %3697 = shl i32 %3696, 4
  %3698 = and i32 %3697, 32752
  %3699 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3698)  ; LegacyF16ToF32(value)
  %3700 = fmul fast float %3699, %3666
  %3701 = call float @dx.op.binary.f32(i32 35, float %3700, float 0x3F70101020000000)  ; FMax(a,b)
  br label %3702

; <label>:3702                                    ; preds = %3694, %3688, %3630
  %3703 = phi float [ %3689, %3694 ], [ %3689, %3688 ], [ 0.000000e+00, %3630 ]
  %3704 = phi float [ %3690, %3694 ], [ %3690, %3688 ], [ 0.000000e+00, %3630 ]
  %3705 = phi float [ %3691, %3694 ], [ %3691, %3688 ], [ 0.000000e+00, %3630 ]
  %3706 = phi float [ %3701, %3694 ], [ 0x3F70101020000000, %3688 ], [ 0x3F70101020000000, %3630 ]
  %3707 = add i32 %49, 144
  %3708 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3707, i32 undef)  ; BufferLoad(srv,index,wot)
  %3709 = extractvalue %dx.types.ResRet.i32 %3708, 0
  %3710 = and i32 %3709, 255
  %3711 = uitofp i32 %3710 to float
  %3712 = lshr i32 %3709, 8
  %3713 = and i32 %3712, 255
  %3714 = uitofp i32 %3713 to float
  %3715 = call float @dx.op.dot3.f32(i32 55, float %3465, float %3466, float %3467, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3716 = fmul fast float %3714, %3715
  %3717 = fadd fast float %3716, %3711
  %3718 = fmul fast float %3717, 0x3F70101020000000
  %3719 = call float @dx.op.unary.f32(i32 7, float %3718)  ; Saturate(value)
  br i1 %3064, label %3720, label %3755

; <label>:3720                                    ; preds = %3702
  %3721 = fmul fast float %3706, 2.000000e+00
  %3722 = fcmp fast olt float %3651, 1.270000e+02
  %3723 = fcmp fast olt float %3652, 1.270000e+02
  %3724 = fcmp fast olt float %3653, 1.270000e+02
  %3725 = fmul fast float %3651, 0xBFF7154760000000
  %3726 = fmul fast float %3725, %3721
  %3727 = fmul fast float %3652, 0xBFF7154760000000
  %3728 = fmul fast float %3727, %3721
  %3729 = fmul fast float %3653, 0xBFF7154760000000
  %3730 = fmul fast float %3729, %3721
  %3731 = call float @dx.op.unary.f32(i32 21, float %3726)  ; Exp(value)
  %3732 = call float @dx.op.unary.f32(i32 21, float %3728)  ; Exp(value)
  %3733 = call float @dx.op.unary.f32(i32 21, float %3730)  ; Exp(value)
  %3734 = call float @dx.op.unary.f32(i32 7, float %3731)  ; Saturate(value)
  %3735 = call float @dx.op.unary.f32(i32 7, float %3732)  ; Saturate(value)
  %3736 = call float @dx.op.unary.f32(i32 7, float %3733)  ; Saturate(value)
  %3737 = fadd fast float %3734, -1.000000e+00
  %3738 = select i1 %3722, float %3737, float -1.000000e+00
  %3739 = fadd fast float %3735, -1.000000e+00
  %3740 = select i1 %3723, float %3739, float -1.000000e+00
  %3741 = fadd fast float %3736, -1.000000e+00
  %3742 = select i1 %3724, float %3741, float -1.000000e+00
  %3743 = fmul fast float %3738, %3245
  %3744 = fmul fast float %3740, %3245
  %3745 = fmul fast float %3742, %3245
  %3746 = fadd fast float %3743, 1.000000e+00
  %3747 = fadd fast float %3744, 1.000000e+00
  %3748 = fadd fast float %3745, 1.000000e+00
  %3749 = fmul fast float %3746, %3046
  %3750 = fmul fast float %3747, %3047
  %3751 = fmul fast float %3748, %3048
  %3752 = fmul fast float %3746, %3049
  %3753 = fmul fast float %3747, %3050
  %3754 = fmul fast float %3748, %3051
  br label %3755

; <label>:3755                                    ; preds = %3720, %3702
  %3756 = phi float [ %3749, %3720 ], [ %3046, %3702 ]
  %3757 = phi float [ %3750, %3720 ], [ %3047, %3702 ]
  %3758 = phi float [ %3751, %3720 ], [ %3048, %3702 ]
  %3759 = phi float [ %3752, %3720 ], [ %3049, %3702 ]
  %3760 = phi float [ %3753, %3720 ], [ %3050, %3702 ]
  %3761 = phi float [ %3754, %3720 ], [ %3051, %3702 ]
  %3762 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3065, i32 undef)  ; BufferLoad(srv,index,wot)
  %3763 = extractvalue %dx.types.ResRet.i32 %3762, 0
  %3764 = and i32 %3763, 3
  %3765 = icmp eq i32 %3764, 3
  br i1 %3765, label %3844, label %3766

; <label>:3766                                    ; preds = %3755
  %3767 = and i32 %3763, 16
  %3768 = icmp ne i32 %3767, 0
  %3769 = select i1 %3768, float %3245, float 0.000000e+00
  %3770 = icmp eq i32 %3764, 0
  br i1 %3770, label %3771, label %3799

; <label>:3771                                    ; preds = %3766
  %3772 = and i32 %3763, 64
  %3773 = icmp ne i32 %3772, 0
  %3774 = select i1 %3773, float %3245, float 0.000000e+00
  %3775 = fsub fast float %3465, %3756
  %3776 = fsub fast float %3466, %3757
  %3777 = fsub fast float %3467, %3758
  %3778 = fmul fast float %3769, %3775
  %3779 = fmul fast float %3769, %3776
  %3780 = fmul fast float %3769, %3777
  %3781 = fadd fast float %3778, %3756
  %3782 = fadd fast float %3779, %3757
  %3783 = fadd fast float %3780, %3758
  %3784 = fsub fast float %3451, %3058
  %3785 = fmul fast float %3769, %3784
  %3786 = fadd fast float %3785, %3058
  %3787 = fsub fast float %3593, %3759
  %3788 = fsub fast float %3594, %3760
  %3789 = fsub fast float %3595, %3761
  %3790 = fmul fast float %3774, %3787
  %3791 = fmul fast float %3774, %3788
  %3792 = fmul fast float %3774, %3789
  %3793 = fadd fast float %3790, %3759
  %3794 = fadd fast float %3791, %3760
  %3795 = fadd fast float %3792, %3761
  %3796 = fsub fast float %3719, %3062
  %3797 = fmul fast float %3769, %3796
  %3798 = fadd fast float %3797, %3062
  br label %3844

; <label>:3799                                    ; preds = %3766
  %3800 = icmp eq i32 %3764, 1
  br i1 %3800, label %3801, label %3814

; <label>:3801                                    ; preds = %3799
  %3802 = fadd fast float %3465, -1.000000e+00
  %3803 = fadd fast float %3466, -1.000000e+00
  %3804 = fadd fast float %3467, -1.000000e+00
  %3805 = fmul fast float %3769, %3802
  %3806 = fmul fast float %3769, %3803
  %3807 = fmul fast float %3769, %3804
  %3808 = fadd fast float %3805, 1.000000e+00
  %3809 = fadd fast float %3806, 1.000000e+00
  %3810 = fadd fast float %3807, 1.000000e+00
  %3811 = fmul fast float %3808, %3756
  %3812 = fmul fast float %3809, %3757
  %3813 = fmul fast float %3810, %3758
  br label %3844

; <label>:3814                                    ; preds = %3799
  %3815 = icmp eq i32 %3764, 2
  br i1 %3815, label %3816, label %3844

; <label>:3816                                    ; preds = %3814
  %3817 = call float @dx.op.unary.f32(i32 24, float %3465)  ; Sqrt(value)
  %3818 = call float @dx.op.unary.f32(i32 24, float %3466)  ; Sqrt(value)
  %3819 = call float @dx.op.unary.f32(i32 24, float %3467)  ; Sqrt(value)
  %3820 = fadd fast float %3817, -5.000000e-01
  %3821 = fadd fast float %3818, -5.000000e-01
  %3822 = fadd fast float %3819, -5.000000e-01
  %3823 = fmul fast float %3820, %3769
  %3824 = fmul fast float %3821, %3769
  %3825 = fmul fast float %3822, %3769
  %3826 = fadd fast float %3823, 5.000000e-01
  %3827 = fadd fast float %3824, 5.000000e-01
  %3828 = fadd fast float %3825, 5.000000e-01
  %3829 = fmul fast float %3826, 2.000000e+00
  %3830 = fsub fast float 1.000000e+00, %3829
  %3831 = fmul fast float %3830, %3756
  %3832 = fadd fast float %3831, %3829
  %3833 = fmul fast float %3832, %3756
  %3834 = fmul fast float %3827, 2.000000e+00
  %3835 = fsub fast float 1.000000e+00, %3834
  %3836 = fmul fast float %3835, %3757
  %3837 = fadd fast float %3836, %3834
  %3838 = fmul fast float %3837, %3757
  %3839 = fmul fast float %3828, 2.000000e+00
  %3840 = fsub fast float 1.000000e+00, %3839
  %3841 = fmul fast float %3840, %3758
  %3842 = fadd fast float %3841, %3839
  %3843 = fmul fast float %3842, %3758
  br label %3844

; <label>:3844                                    ; preds = %3816, %3814, %3801, %3771, %3755
  %3845 = phi float [ %3756, %3755 ], [ %3833, %3816 ], [ %3756, %3814 ], [ %3811, %3801 ], [ %3781, %3771 ]
  %3846 = phi float [ %3757, %3755 ], [ %3838, %3816 ], [ %3757, %3814 ], [ %3812, %3801 ], [ %3782, %3771 ]
  %3847 = phi float [ %3758, %3755 ], [ %3843, %3816 ], [ %3758, %3814 ], [ %3813, %3801 ], [ %3783, %3771 ]
  %3848 = phi float [ %3759, %3755 ], [ %3759, %3816 ], [ %3759, %3814 ], [ %3759, %3801 ], [ %3793, %3771 ]
  %3849 = phi float [ %3760, %3755 ], [ %3760, %3816 ], [ %3760, %3814 ], [ %3760, %3801 ], [ %3794, %3771 ]
  %3850 = phi float [ %3761, %3755 ], [ %3761, %3816 ], [ %3761, %3814 ], [ %3761, %3801 ], [ %3795, %3771 ]
  %3851 = phi float [ %3058, %3755 ], [ %3058, %3816 ], [ %3058, %3814 ], [ %3058, %3801 ], [ %3786, %3771 ]
  %3852 = phi float [ %3062, %3755 ], [ %3062, %3816 ], [ %3062, %3814 ], [ %3062, %3801 ], [ %3798, %3771 ]
  %3853 = and i32 %3763, 12
  %3854 = icmp eq i32 %3853, 12
  br i1 %3854, label %3985, label %3855

; <label>:3855                                    ; preds = %3844
  %3856 = and i32 %3763, 2097184
  %3857 = icmp eq i32 %3856, 2097184
  %3858 = select i1 %3857, float %3245, float 0.000000e+00
  %3859 = and i32 %3763, 4194336
  %3860 = icmp eq i32 %3859, 4194336
  %3861 = select i1 %3860, float %3245, float 0.000000e+00
  %3862 = and i32 %3763, 8388640
  %3863 = icmp eq i32 %3862, 8388640
  %3864 = select i1 %3863, float %3245, float 0.000000e+00
  %3865 = and i32 %3763, 1024
  %3866 = icmp ne i32 %3865, 0
  %3867 = select i1 %3866, float %3245, float 0.000000e+00
  %3868 = and i32 %3763, 2048
  %3869 = icmp ne i32 %3868, 0
  %3870 = select i1 %3869, float %3245, float 0.000000e+00
  %3871 = and i32 %3763, 8192
  %3872 = icmp ne i32 %3871, 0
  %3873 = select i1 %3872, float %3245, float 0.000000e+00
  %3874 = icmp eq i32 %3853, 0
  br i1 %3874, label %3875, label %3909

; <label>:3875                                    ; preds = %3855
  %3876 = fsub fast float %3546, %3044
  %3877 = fsub fast float %3547, %3045
  %3878 = fmul fast float %3858, %3876
  %3879 = fmul fast float %3858, %3877
  %3880 = fadd fast float %3878, %3044
  %3881 = fadd fast float %3879, %3045
  %3882 = fsub fast float %3548, %3060
  %3883 = fmul fast float %3861, %3882
  %3884 = fadd fast float %3883, %3060
  %3885 = fsub fast float %3545, %3059
  %3886 = fmul fast float %3864, %3885
  %3887 = fadd fast float %3886, %3059
  %3888 = fsub fast float %3651, %3052
  %3889 = fsub fast float %3652, %3053
  %3890 = fsub fast float %3653, %3054
  %3891 = fmul fast float %3867, %3888
  %3892 = fmul fast float %3867, %3889
  %3893 = fmul fast float %3867, %3890
  %3894 = fadd fast float %3891, %3052
  %3895 = fadd fast float %3892, %3053
  %3896 = fadd fast float %3893, %3054
  %3897 = fsub fast float %3706, %3061
  %3898 = fmul fast float %3870, %3897
  %3899 = fadd fast float %3898, %3061
  %3900 = fsub fast float %3703, %3055
  %3901 = fsub fast float %3704, %3056
  %3902 = fsub fast float %3705, %3057
  %3903 = fmul fast float %3873, %3900
  %3904 = fmul fast float %3873, %3901
  %3905 = fmul fast float %3873, %3902
  %3906 = fadd fast float %3903, %3055
  %3907 = fadd fast float %3904, %3056
  %3908 = fadd fast float %3905, %3057
  br label %3985

; <label>:3909                                    ; preds = %3855
  %3910 = icmp eq i32 %3853, 4
  br i1 %3910, label %3911, label %3957

; <label>:3911                                    ; preds = %3909
  %3912 = fmul fast float %3858, %3546
  %3913 = fmul fast float %3858, %3547
  %3914 = fadd fast float %3912, %3044
  %3915 = fadd fast float %3913, %3045
  %3916 = call float @dx.op.binary.f32(i32 36, float %3060, float %3548)  ; FMin(a,b)
  %3917 = fsub fast float %3916, %3060
  %3918 = fmul fast float %3917, %3861
  %3919 = fadd fast float %3918, %3060
  %3920 = fadd fast float %3545, %3059
  %3921 = fmul fast float %3920, 0x3FF337FAE0000000
  %3922 = fmul fast float %3059, %3059
  %3923 = fmul fast float %3545, %3545
  %3924 = fadd fast float %3923, %3922
  %3925 = fmul fast float %3924, 0x3FE5152B00000000
  %3926 = fmul fast float %3059, 0xBFCC1F85E0000000
  %3927 = fmul fast float %3926, %3545
  %3928 = fadd fast float %3927, 0xBFE1363700000000
  %3929 = fadd fast float %3928, %3921
  %3930 = fsub fast float %3929, %3925
  %3931 = fmul fast float %3920, 0x3FBA6F0D00000000
  %3932 = fmul fast float %3924, 0x3FD0432880000000
  %3933 = fmul fast float %3059, 0xBFEF110800000000
  %3934 = fmul fast float %3933, %3545
  %3935 = fadd fast float %3934, 1.000000e+00
  %3936 = fsub fast float %3935, %3931
  %3937 = fadd fast float %3936, %3932
  %3938 = fdiv fast float %3930, %3937
  %3939 = call float @dx.op.unary.f32(i32 7, float %3938)  ; Saturate(value)
  %3940 = fsub fast float %3939, %3059
  %3941 = fmul fast float %3940, %3864
  %3942 = fadd fast float %3941, %3059
  %3943 = fmul fast float %3867, %3651
  %3944 = fmul fast float %3867, %3652
  %3945 = fmul fast float %3867, %3653
  %3946 = fadd fast float %3943, %3052
  %3947 = fadd fast float %3944, %3053
  %3948 = fadd fast float %3945, %3054
  %3949 = fmul fast float %3870, %3706
  %3950 = fadd fast float %3949, %3061
  %3951 = fmul fast float %3873, %3703
  %3952 = fmul fast float %3873, %3704
  %3953 = fmul fast float %3873, %3705
  %3954 = fadd fast float %3951, %3055
  %3955 = fadd fast float %3952, %3056
  %3956 = fadd fast float %3953, %3057
  br label %3985

; <label>:3957                                    ; preds = %3909
  %3958 = icmp eq i32 %3853, 8
  br i1 %3958, label %3959, label %3985

; <label>:3959                                    ; preds = %3957
  %3960 = fmul fast float %3858, %3546
  %3961 = fmul fast float %3858, %3547
  %3962 = fadd fast float %3960, %3044
  %3963 = fadd fast float %3961, %3045
  %3964 = call float @dx.op.binary.f32(i32 36, float %3060, float %3548)  ; FMin(a,b)
  %3965 = fsub fast float %3964, %3060
  %3966 = fmul fast float %3965, %3861
  %3967 = fadd fast float %3966, %3060
  %3968 = fsub fast float %3545, %3059
  %3969 = fmul fast float %3864, %3968
  %3970 = fadd fast float %3969, %3059
  %3971 = fmul fast float %3867, %3651
  %3972 = fmul fast float %3867, %3652
  %3973 = fmul fast float %3867, %3653
  %3974 = fadd fast float %3971, %3052
  %3975 = fadd fast float %3972, %3053
  %3976 = fadd fast float %3973, %3054
  %3977 = fmul fast float %3870, %3706
  %3978 = fadd fast float %3977, %3061
  %3979 = fmul fast float %3873, %3703
  %3980 = fmul fast float %3873, %3704
  %3981 = fmul fast float %3873, %3705
  %3982 = fadd fast float %3979, %3055
  %3983 = fadd fast float %3980, %3056
  %3984 = fadd fast float %3981, %3057
  br label %3985

; <label>:3985                                    ; preds = %3959, %3957, %3911, %3875, %3844, %3244, %3063, %3043
  %3986 = phi float [ %3044, %3844 ], [ %3044, %3244 ], [ %3044, %3043 ], [ %3044, %3063 ], [ %3880, %3875 ], [ %3914, %3911 ], [ %3044, %3957 ], [ %3962, %3959 ]
  %3987 = phi float [ %3045, %3844 ], [ %3045, %3244 ], [ %3045, %3043 ], [ %3045, %3063 ], [ %3881, %3875 ], [ %3915, %3911 ], [ %3045, %3957 ], [ %3963, %3959 ]
  %3988 = phi float [ %3845, %3844 ], [ %3046, %3244 ], [ %3046, %3043 ], [ %3046, %3063 ], [ %3845, %3875 ], [ %3845, %3911 ], [ %3845, %3957 ], [ %3845, %3959 ]
  %3989 = phi float [ %3846, %3844 ], [ %3047, %3244 ], [ %3047, %3043 ], [ %3047, %3063 ], [ %3846, %3875 ], [ %3846, %3911 ], [ %3846, %3957 ], [ %3846, %3959 ]
  %3990 = phi float [ %3847, %3844 ], [ %3048, %3244 ], [ %3048, %3043 ], [ %3048, %3063 ], [ %3847, %3875 ], [ %3847, %3911 ], [ %3847, %3957 ], [ %3847, %3959 ]
  %3991 = phi float [ %3848, %3844 ], [ %3049, %3244 ], [ %3049, %3043 ], [ %3049, %3063 ], [ %3848, %3875 ], [ %3848, %3911 ], [ %3848, %3957 ], [ %3848, %3959 ]
  %3992 = phi float [ %3849, %3844 ], [ %3050, %3244 ], [ %3050, %3043 ], [ %3050, %3063 ], [ %3849, %3875 ], [ %3849, %3911 ], [ %3849, %3957 ], [ %3849, %3959 ]
  %3993 = phi float [ %3850, %3844 ], [ %3051, %3244 ], [ %3051, %3043 ], [ %3051, %3063 ], [ %3850, %3875 ], [ %3850, %3911 ], [ %3850, %3957 ], [ %3850, %3959 ]
  %3994 = phi float [ %3052, %3844 ], [ %3052, %3244 ], [ %3052, %3043 ], [ %3052, %3063 ], [ %3894, %3875 ], [ %3946, %3911 ], [ %3052, %3957 ], [ %3974, %3959 ]
  %3995 = phi float [ %3053, %3844 ], [ %3053, %3244 ], [ %3053, %3043 ], [ %3053, %3063 ], [ %3895, %3875 ], [ %3947, %3911 ], [ %3053, %3957 ], [ %3975, %3959 ]
  %3996 = phi float [ %3054, %3844 ], [ %3054, %3244 ], [ %3054, %3043 ], [ %3054, %3063 ], [ %3896, %3875 ], [ %3948, %3911 ], [ %3054, %3957 ], [ %3976, %3959 ]
  %3997 = phi float [ %3055, %3844 ], [ %3055, %3244 ], [ %3055, %3043 ], [ %3055, %3063 ], [ %3906, %3875 ], [ %3954, %3911 ], [ %3055, %3957 ], [ %3982, %3959 ]
  %3998 = phi float [ %3056, %3844 ], [ %3056, %3244 ], [ %3056, %3043 ], [ %3056, %3063 ], [ %3907, %3875 ], [ %3955, %3911 ], [ %3056, %3957 ], [ %3983, %3959 ]
  %3999 = phi float [ %3057, %3844 ], [ %3057, %3244 ], [ %3057, %3043 ], [ %3057, %3063 ], [ %3908, %3875 ], [ %3956, %3911 ], [ %3057, %3957 ], [ %3984, %3959 ]
  %4000 = phi float [ %3851, %3844 ], [ %3058, %3244 ], [ %3058, %3043 ], [ %3058, %3063 ], [ %3851, %3875 ], [ %3851, %3911 ], [ %3851, %3957 ], [ %3851, %3959 ]
  %4001 = phi float [ %3059, %3844 ], [ %3059, %3244 ], [ %3059, %3043 ], [ %3059, %3063 ], [ %3887, %3875 ], [ %3942, %3911 ], [ %3059, %3957 ], [ %3970, %3959 ]
  %4002 = phi float [ %3060, %3844 ], [ %3060, %3244 ], [ %3060, %3043 ], [ %3060, %3063 ], [ %3884, %3875 ], [ %3919, %3911 ], [ %3060, %3957 ], [ %3967, %3959 ]
  %4003 = phi float [ %3061, %3844 ], [ %3061, %3244 ], [ %3061, %3043 ], [ %3061, %3063 ], [ %3899, %3875 ], [ %3950, %3911 ], [ %3061, %3957 ], [ %3978, %3959 ]
  %4004 = phi float [ %3852, %3844 ], [ %3062, %3244 ], [ %3062, %3043 ], [ %3062, %3063 ], [ %3852, %3875 ], [ %3852, %3911 ], [ %3852, %3957 ], [ %3852, %3959 ]
  %4005 = add i32 %49, 360
  %4006 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %4005, i32 undef)  ; BufferLoad(srv,index,wot)
  %4007 = extractvalue %dx.types.ResRet.i32 %4006, 0
  %4008 = extractvalue %dx.types.ResRet.i32 %4006, 1
  %4009 = bitcast i32 %4007 to float
  %4010 = bitcast i32 %4008 to float
  %4011 = fcmp fast oge float %4009, 0.000000e+00
  %4012 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4013 = extractvalue %dx.types.CBufRet.f32 %4012, 0
  %4014 = select i1 %4011, float %4009, float %4013
  %4015 = fadd fast float %4014, %202
  %4016 = fmul fast float %4010, %203
  %4017 = add i32 %49, 456
  %4018 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %4017, i32 undef)  ; BufferLoad(srv,index,wot)
  %4019 = extractvalue %dx.types.ResRet.i32 %4018, 0
  %4020 = add i32 %4019, 0
  %4021 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %4020, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4022 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %4021, %dx.types.Handle %106, float %87, float %88, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %4023 = extractvalue %dx.types.ResRet.f32 %4022, 0
  %4024 = fmul fast float %4016, %4023
  %4025 = fadd fast float %4015, %4024
  %4026 = and i32 %194, 65535
  %4027 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4026)  ; LegacyF16ToF32(value)
  %4028 = lshr i32 %194, 16
  %4029 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4028)  ; LegacyF16ToF32(value)
  %4030 = and i32 %195, 65535
  %4031 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4030)  ; LegacyF16ToF32(value)
  %4032 = fmul fast float %4027, %3988
  %4033 = fmul fast float %4029, %3989
  %4034 = fmul fast float %4031, %3990
  %4035 = shl i32 %196, 4
  %4036 = and i32 %4035, 32752
  %4037 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4036)  ; LegacyF16ToF32(value)
  %4038 = lshr i32 %196, 7
  %4039 = and i32 %4038, 32752
  %4040 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4039)  ; LegacyF16ToF32(value)
  %4041 = lshr i32 %196, 22
  %4042 = shl nuw nsw i32 %4041, 5
  %4043 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4042)  ; LegacyF16ToF32(value)
  %4044 = and i32 %197, 65535
  %4045 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4044)  ; LegacyF16ToF32(value)
  %4046 = fmul fast float %4037, %3991
  %4047 = fmul fast float %4046, %4045
  %4048 = fmul fast float %4040, %3992
  %4049 = fmul fast float %4048, %4045
  %4050 = fmul fast float %4043, %3993
  %4051 = fmul fast float %4050, %4045
  %4052 = call float @dx.op.dot2.f32(i32 54, float %3986, float %3987, float %3986, float %3987)  ; Dot2(ax,ay,bx,by)
  %4053 = fmul fast float %4052, 0x3FE3333340000000
  %4054 = fsub fast float 1.000000e+00, %4053
  %4055 = call float @dx.op.dot3.f32(i32 55, float %3986, float %3987, float %4054, float %3986, float %3987, float %4054)  ; Dot3(ax,ay,az,bx,by,bz)
  %4056 = call float @dx.op.unary.f32(i32 25, float %4055)  ; Rsqrt(value)
  %4057 = fmul fast float %4056, %3986
  %4058 = fmul fast float %4056, %3987
  %4059 = fmul fast float %4054, %4056
  %4060 = fmul fast float %4059, %116
  %4061 = fmul fast float %4059, %117
  %4062 = fmul fast float %4059, %118
  %4063 = fmul fast float %4057, %80
  %4064 = fmul fast float %4057, %81
  %4065 = fmul fast float %4057, %82
  %4066 = fadd fast float %4060, %4063
  %4067 = fadd fast float %4061, %4064
  %4068 = fadd fast float %4062, %4065
  %4069 = fmul fast float %128, %4058
  %4070 = fmul fast float %129, %4058
  %4071 = fmul fast float %130, %4058
  %4072 = fadd fast float %4066, %4069
  %4073 = fadd fast float %4067, %4070
  %4074 = fadd fast float %4068, %4071
  %4075 = call float @dx.op.dot3.f32(i32 55, float %4072, float %4073, float %4074, float %4072, float %4073, float %4074)  ; Dot3(ax,ay,az,bx,by,bz)
  %4076 = call float @dx.op.unary.f32(i32 25, float %4075)  ; Rsqrt(value)
  %4077 = fmul fast float %4072, %4076
  %4078 = fmul fast float %4073, %4076
  %4079 = fmul fast float %4074, %4076
  %4080 = icmp eq i32 %51, 65535
  br i1 %4080, label %4679, label %4081

; <label>:4081                                    ; preds = %3985
  %4082 = call float @dx.op.unary.f32(i32 83, float %52)  ; DerivCoarseX(value)
  %4083 = call float @dx.op.unary.f32(i32 83, float %53)  ; DerivCoarseX(value)
  %4084 = call float @dx.op.unary.f32(i32 83, float %54)  ; DerivCoarseX(value)
  %4085 = call float @dx.op.unary.f32(i32 84, float %52)  ; DerivCoarseY(value)
  %4086 = call float @dx.op.unary.f32(i32 84, float %53)  ; DerivCoarseY(value)
  %4087 = call float @dx.op.unary.f32(i32 84, float %54)  ; DerivCoarseY(value)
  %4088 = fadd fast float %4082, %52
  %4089 = fadd fast float %4083, %53
  %4090 = fadd fast float %4084, %54
  %4091 = fadd fast float %4085, %52
  %4092 = fadd fast float %4086, %53
  %4093 = fadd fast float %4087, %54
  %4094 = mul i32 %51, 48
  %4095 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4094, i32 undef)  ; BufferLoad(srv,index,wot)
  %4096 = extractvalue %dx.types.ResRet.f32 %4095, 0
  %4097 = extractvalue %dx.types.ResRet.f32 %4095, 1
  %4098 = extractvalue %dx.types.ResRet.f32 %4095, 2
  %4099 = add i32 %4094, 16
  %4100 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4099, i32 undef)  ; BufferLoad(srv,index,wot)
  %4101 = extractvalue %dx.types.ResRet.f32 %4100, 0
  %4102 = extractvalue %dx.types.ResRet.f32 %4100, 1
  %4103 = extractvalue %dx.types.ResRet.f32 %4100, 2
  %4104 = add i32 %4094, 32
  %4105 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4104, i32 undef)  ; BufferLoad(srv,index,wot)
  %4106 = extractvalue %dx.types.ResRet.f32 %4105, 0
  %4107 = extractvalue %dx.types.ResRet.f32 %4105, 1
  %4108 = extractvalue %dx.types.ResRet.f32 %4105, 2
  %4109 = extractvalue %dx.types.ResRet.f32 %4105, 3
  %4110 = bitcast float %4109 to i32
  %4111 = fmul fast float %4096, %52
  %4112 = fmul fast float %4097, %53
  %4113 = fmul fast float %4098, %54
  %4114 = fsub fast float %4111, %4101
  %4115 = fsub fast float %4112, %4102
  %4116 = fsub fast float %4113, %4103
  %4117 = call float @dx.op.unary.f32(i32 7, float %4114)  ; Saturate(value)
  %4118 = call float @dx.op.unary.f32(i32 7, float %4115)  ; Saturate(value)
  %4119 = call float @dx.op.unary.f32(i32 7, float %4116)  ; Saturate(value)
  %4120 = fmul fast float %4117, %4106
  %4121 = fmul fast float %4118, %4107
  %4122 = fmul fast float %4119, %4108
  %4123 = fadd fast float %4106, -1.000000e+00
  %4124 = fadd fast float %4107, -1.000000e+00
  %4125 = fadd fast float %4108, -1.000000e+00
  %4126 = call float @dx.op.unary.f32(i32 27, float %4120)  ; Round_ni(value)
  %4127 = call float @dx.op.unary.f32(i32 27, float %4121)  ; Round_ni(value)
  %4128 = call float @dx.op.unary.f32(i32 27, float %4122)  ; Round_ni(value)
  %4129 = call float @dx.op.binary.f32(i32 36, float %4126, float %4123)  ; FMin(a,b)
  %4130 = call float @dx.op.binary.f32(i32 36, float %4127, float %4124)  ; FMin(a,b)
  %4131 = call float @dx.op.binary.f32(i32 36, float %4128, float %4125)  ; FMin(a,b)
  %4132 = fmul fast float %4131, %4107
  %4133 = fadd fast float %4132, %4130
  %4134 = fmul fast float %4133, %4106
  %4135 = fadd fast float %4134, %4129
  %4136 = fptosi float %4135 to i32
  %4137 = add nsw i32 %4136, %4110
  %4138 = shl nsw i32 %4137, 2
  %4139 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %4138, i32 undef)  ; BufferLoad(srv,index,wot)
  %4140 = extractvalue %dx.types.ResRet.i32 %4139, 0
  %4141 = lshr i32 %4140, 16
  %4142 = icmp eq i32 %4141, 0
  br i1 %4142, label %4642, label %4143

; <label>:4143                                    ; preds = %4081
  br label %4144

; <label>:4144                                    ; preds = %4271, %4143
  %4145 = phi i32 [ %4173, %4271 ], [ %4141, %4143 ]
  %4146 = phi float [ %4272, %4271 ], [ 0.000000e+00, %4143 ]
  %4147 = phi float [ %4273, %4271 ], [ %4025, %4143 ]
  %4148 = phi float [ %4274, %4271 ], [ %4004, %4143 ]
  %4149 = phi float [ %4275, %4271 ], [ %3994, %4143 ]
  %4150 = phi float [ %4276, %4271 ], [ %3995, %4143 ]
  %4151 = phi float [ %4277, %4271 ], [ %3996, %4143 ]
  %4152 = phi float [ %4278, %4271 ], [ 0.000000e+00, %4143 ]
  %4153 = phi float [ %4279, %4271 ], [ 0.000000e+00, %4143 ]
  %4154 = phi float [ %4280, %4271 ], [ %3997, %4143 ]
  %4155 = phi float [ %4281, %4271 ], [ %3998, %4143 ]
  %4156 = phi float [ %4282, %4271 ], [ %3999, %4143 ]
  %4157 = phi float [ %4283, %4271 ], [ %4047, %4143 ]
  %4158 = phi float [ %4284, %4271 ], [ %4049, %4143 ]
  %4159 = phi float [ %4285, %4271 ], [ %4051, %4143 ]
  %4160 = phi float [ %4286, %4271 ], [ %4077, %4143 ]
  %4161 = phi float [ %4287, %4271 ], [ %4078, %4143 ]
  %4162 = phi float [ %4288, %4271 ], [ %4079, %4143 ]
  %4163 = phi float [ %4289, %4271 ], [ %4002, %4143 ]
  %4164 = phi float [ %4290, %4271 ], [ %4001, %4143 ]
  %4165 = phi float [ %4291, %4271 ], [ 0.000000e+00, %4143 ]
  %4166 = phi float [ %4292, %4271 ], [ %4000, %4143 ]
  %4167 = phi float [ %4293, %4271 ], [ %4032, %4143 ]
  %4168 = phi float [ %4294, %4271 ], [ %4033, %4143 ]
  %4169 = phi float [ %4295, %4271 ], [ %4034, %4143 ]
  %4170 = shl nuw nsw i32 %4145, 2
  %4171 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %4170, i32 undef)  ; BufferLoad(srv,index,wot)
  %4172 = extractvalue %dx.types.ResRet.i32 %4171, 0
  %4173 = lshr i32 %4172, 16
  %4174 = shl i32 %4172, 8
  %4175 = and i32 %4174, 16776960
  %4176 = or i32 %4175, 48
  %4177 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %4176, i32 undef)  ; BufferLoad(srv,index,wot)
  %4178 = extractvalue %dx.types.ResRet.f32 %4177, 0
  %4179 = extractvalue %dx.types.ResRet.f32 %4177, 1
  %4180 = extractvalue %dx.types.ResRet.f32 %4177, 2
  %4181 = or i32 %4175, 64
  %4182 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %4181, i32 undef)  ; BufferLoad(srv,index,wot)
  %4183 = extractvalue %dx.types.ResRet.i32 %4182, 0
  %4184 = extractvalue %dx.types.ResRet.i32 %4182, 1
  %4185 = or i32 %4175, 80
  %4186 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %4185, i32 undef)  ; BufferLoad(srv,index,wot)
  %4187 = extractvalue %dx.types.ResRet.f32 %4186, 2
  %4188 = extractvalue %dx.types.ResRet.f32 %4186, 3
  %4189 = or i32 %4175, 96
  %4190 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %4189, i32 undef)  ; BufferLoad(srv,index,wot)
  %4191 = extractvalue %dx.types.ResRet.f32 %4190, 0
  %4192 = extractvalue %dx.types.ResRet.f32 %4190, 1
  %4193 = extractvalue %dx.types.ResRet.f32 %4190, 2
  %4194 = extractvalue %dx.types.ResRet.f32 %4190, 3
  %4195 = or i32 %4175, 112
  %4196 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %4195, i32 undef)  ; BufferLoad(srv,index,wot)
  %4197 = extractvalue %dx.types.ResRet.f32 %4196, 2
  %4198 = or i32 %4175, 128
  %4199 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %4198, i32 undef)  ; BufferLoad(srv,index,wot)
  %4200 = extractvalue %dx.types.ResRet.f32 %4199, 0
  %4201 = extractvalue %dx.types.ResRet.f32 %4199, 1
  %4202 = extractvalue %dx.types.ResRet.f32 %4199, 2
  %4203 = extractvalue %dx.types.ResRet.f32 %4199, 3
  %4204 = or i32 %4175, 144
  %4205 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %4204, i32 undef)  ; BufferLoad(srv,index,wot)
  %4206 = extractvalue %dx.types.ResRet.f32 %4205, 0
  %4207 = extractvalue %dx.types.ResRet.f32 %4205, 1
  %4208 = extractvalue %dx.types.ResRet.f32 %4205, 2
  %4209 = extractvalue %dx.types.ResRet.f32 %4205, 3
  %4210 = or i32 %4175, 160
  %4211 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %4210, i32 undef)  ; BufferLoad(srv,index,wot)
  %4212 = extractvalue %dx.types.ResRet.f32 %4211, 0
  %4213 = extractvalue %dx.types.ResRet.f32 %4211, 1
  %4214 = extractvalue %dx.types.ResRet.f32 %4211, 2
  %4215 = extractvalue %dx.types.ResRet.f32 %4211, 3
  %4216 = or i32 %4175, 192
  %4217 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %4216, i32 undef)  ; BufferLoad(srv,index,wot)
  %4218 = extractvalue %dx.types.ResRet.i32 %4217, 0
  %4219 = or i32 %4175, 208
  %4220 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %4219, i32 undef)  ; BufferLoad(srv,index,wot)
  %4221 = extractvalue %dx.types.ResRet.f32 %4220, 0
  %4222 = or i32 %4175, 248
  %4223 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %4222, i32 undef)  ; BufferLoad(srv,index,wot)
  %4224 = extractvalue %dx.types.ResRet.f32 %4223, 0
  %4225 = extractvalue %dx.types.ResRet.f32 %4223, 1
  %4226 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %4175, i32 undef)  ; BufferLoad(srv,index,wot)
  %4227 = extractvalue %dx.types.ResRet.f32 %4226, 0
  %4228 = extractvalue %dx.types.ResRet.f32 %4226, 1
  %4229 = extractvalue %dx.types.ResRet.f32 %4226, 2
  %4230 = extractvalue %dx.types.ResRet.f32 %4226, 3
  %4231 = call float @dx.op.dot4.f32(i32 56, float %4227, float %4228, float %4229, float %4230, float %52, float %53, float %54, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4232 = or i32 %4175, 16
  %4233 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %4232, i32 undef)  ; BufferLoad(srv,index,wot)
  %4234 = extractvalue %dx.types.ResRet.f32 %4233, 0
  %4235 = extractvalue %dx.types.ResRet.f32 %4233, 1
  %4236 = extractvalue %dx.types.ResRet.f32 %4233, 2
  %4237 = extractvalue %dx.types.ResRet.f32 %4233, 3
  %4238 = call float @dx.op.dot4.f32(i32 56, float %4234, float %4235, float %4236, float %4237, float %52, float %53, float %54, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4239 = or i32 %4175, 32
  %4240 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %4239, i32 undef)  ; BufferLoad(srv,index,wot)
  %4241 = extractvalue %dx.types.ResRet.f32 %4240, 0
  %4242 = extractvalue %dx.types.ResRet.f32 %4240, 1
  %4243 = extractvalue %dx.types.ResRet.f32 %4240, 2
  %4244 = extractvalue %dx.types.ResRet.f32 %4240, 3
  %4245 = call float @dx.op.dot4.f32(i32 56, float %4241, float %4242, float %4243, float %4244, float %52, float %53, float %54, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4246 = call float @dx.op.unary.f32(i32 27, float %4231)  ; Round_ni(value)
  %4247 = call float @dx.op.unary.f32(i32 6, float %4246)  ; FAbs(value)
  %4248 = call float @dx.op.unary.f32(i32 27, float %4238)  ; Round_ni(value)
  %4249 = call float @dx.op.unary.f32(i32 6, float %4248)  ; FAbs(value)
  %4250 = call float @dx.op.unary.f32(i32 6, float %4245)  ; FAbs(value)
  %4251 = call float @dx.op.unary.f32(i32 27, float %4250)  ; Round_ni(value)
  %4252 = fadd fast float %4249, %4247
  %4253 = fadd fast float %4252, %4251
  %4254 = fcmp fast oeq float %4253, 0.000000e+00
  %4255 = call float @dx.op.dot4.f32(i32 56, float %4227, float %4228, float %4229, float %4230, float %4088, float %4089, float %4090, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4256 = call float @dx.op.dot4.f32(i32 56, float %4234, float %4235, float %4236, float %4237, float %4088, float %4089, float %4090, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4257 = call float @dx.op.dot4.f32(i32 56, float %4227, float %4228, float %4229, float %4230, float %4091, float %4092, float %4093, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4258 = call float @dx.op.dot4.f32(i32 56, float %4234, float %4235, float %4236, float %4237, float %4091, float %4092, float %4093, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4259 = fsub fast float %4255, %4231
  %4260 = fsub fast float %4257, %4231
  %4261 = fsub fast float %4256, %4238
  %4262 = fsub fast float %4258, %4238
  %4263 = call float @dx.op.dot3.f32(i32 55, float %4178, float %4179, float %4180, float %116, float %117, float %118)  ; Dot3(ax,ay,az,bx,by,bz)
  %4264 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4265 = extractvalue %dx.types.CBufRet.f32 %4264, 2
  %4266 = fadd fast float %4265, %4263
  %4267 = call float @dx.op.unary.f32(i32 7, float %4266)  ; Saturate(value)
  %4268 = extractvalue %dx.types.CBufRet.f32 %4264, 0
  %4269 = fcmp fast ogt float %4267, %4268
  %4270 = and i1 %4254, %4269
  br i1 %4270, label %4297, label %4271

; <label>:4271                                    ; preds = %4628, %4380, %4297, %4144
  %4272 = phi float [ %4146, %4297 ], [ %4383, %4380 ], [ %4383, %4628 ], [ %4146, %4144 ]
  %4273 = phi float [ %4147, %4297 ], [ %4147, %4380 ], [ %4604, %4628 ], [ %4147, %4144 ]
  %4274 = phi float [ %4148, %4297 ], [ %4148, %4380 ], [ %4602, %4628 ], [ %4148, %4144 ]
  %4275 = phi float [ %4149, %4297 ], [ %4149, %4380 ], [ %4580, %4628 ], [ %4149, %4144 ]
  %4276 = phi float [ %4150, %4297 ], [ %4150, %4380 ], [ %4581, %4628 ], [ %4150, %4144 ]
  %4277 = phi float [ %4151, %4297 ], [ %4151, %4380 ], [ %4582, %4628 ], [ %4151, %4144 ]
  %4278 = phi float [ %4152, %4297 ], [ %4152, %4380 ], [ %4507, %4628 ], [ %4152, %4144 ]
  %4279 = phi float [ %4153, %4297 ], [ %4153, %4380 ], [ %4505, %4628 ], [ %4153, %4144 ]
  %4280 = phi float [ %4154, %4297 ], [ %4154, %4380 ], [ %4550, %4628 ], [ %4154, %4144 ]
  %4281 = phi float [ %4155, %4297 ], [ %4155, %4380 ], [ %4551, %4628 ], [ %4155, %4144 ]
  %4282 = phi float [ %4156, %4297 ], [ %4156, %4380 ], [ %4552, %4628 ], [ %4156, %4144 ]
  %4283 = phi float [ %4157, %4297 ], [ %4157, %4380 ], [ %4638, %4628 ], [ %4157, %4144 ]
  %4284 = phi float [ %4158, %4297 ], [ %4158, %4380 ], [ %4639, %4628 ], [ %4158, %4144 ]
  %4285 = phi float [ %4159, %4297 ], [ %4159, %4380 ], [ %4640, %4628 ], [ %4159, %4144 ]
  %4286 = phi float [ %4160, %4297 ], [ %4160, %4380 ], [ %4486, %4628 ], [ %4160, %4144 ]
  %4287 = phi float [ %4161, %4297 ], [ %4161, %4380 ], [ %4487, %4628 ], [ %4161, %4144 ]
  %4288 = phi float [ %4162, %4297 ], [ %4162, %4380 ], [ %4488, %4628 ], [ %4162, %4144 ]
  %4289 = phi float [ %4163, %4297 ], [ %4163, %4380 ], [ %4560, %4628 ], [ %4163, %4144 ]
  %4290 = phi float [ %4164, %4297 ], [ %4164, %4380 ], [ %4557, %4628 ], [ %4164, %4144 ]
  %4291 = phi float [ %4165, %4297 ], [ %4165, %4380 ], [ %4554, %4628 ], [ %4165, %4144 ]
  %4292 = phi float [ %4166, %4297 ], [ %4166, %4380 ], [ %4503, %4628 ], [ %4166, %4144 ]
  %4293 = phi float [ %4167, %4297 ], [ %4167, %4380 ], [ %4498, %4628 ], [ %4167, %4144 ]
  %4294 = phi float [ %4168, %4297 ], [ %4168, %4380 ], [ %4499, %4628 ], [ %4168, %4144 ]
  %4295 = phi float [ %4169, %4297 ], [ %4169, %4380 ], [ %4500, %4628 ], [ %4169, %4144 ]
  %4296 = icmp eq i32 %4173, 0
  br i1 %4296, label %4641, label %4144

; <label>:4297                                    ; preds = %4144
  %4298 = extractvalue %dx.types.ResRet.f32 %4177, 3
  %4299 = extractvalue %dx.types.ResRet.f32 %4196, 3
  %4300 = extractvalue %dx.types.ResRet.f32 %4196, 1
  %4301 = extractvalue %dx.types.ResRet.f32 %4196, 0
  %4302 = extractvalue %dx.types.ResRet.f32 %4186, 1
  %4303 = extractvalue %dx.types.ResRet.f32 %4186, 0
  %4304 = extractvalue %dx.types.ResRet.i32 %4182, 3
  %4305 = extractvalue %dx.types.ResRet.i32 %4182, 2
  %4306 = bitcast float %4298 to i32
  %4307 = add i32 %4304, 0
  %4308 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4307, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4309 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4310 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4308, %dx.types.Handle %4309, float %4231, float %4238, float undef, float undef, i32 0, i32 0, i32 undef, float %4259, float %4261, float undef, float %4260, float %4262, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4311 = extractvalue %dx.types.ResRet.f32 %4310, 0
  %4312 = fmul fast float %4311, %4303
  %4313 = fadd fast float %4312, %4302
  %4314 = call float @dx.op.unary.f32(i32 7, float %4313)  ; Saturate(value)
  %4315 = fmul fast float %4231, %4191
  %4316 = call float @dx.op.tertiary.f32(i32 46, float %4192, float %4238, float %4315)  ; FMad(a,b,c)
  %4317 = fadd fast float %4316, %4301
  %4318 = fmul fast float %4231, %4193
  %4319 = call float @dx.op.tertiary.f32(i32 46, float %4194, float %4238, float %4318)  ; FMad(a,b,c)
  %4320 = fadd fast float %4319, %4300
  %4321 = fmul fast float %4259, %4191
  %4322 = call float @dx.op.tertiary.f32(i32 46, float %4192, float %4261, float %4321)  ; FMad(a,b,c)
  %4323 = fmul fast float %4259, %4193
  %4324 = call float @dx.op.tertiary.f32(i32 46, float %4194, float %4261, float %4323)  ; FMad(a,b,c)
  %4325 = fmul fast float %4260, %4191
  %4326 = call float @dx.op.tertiary.f32(i32 46, float %4192, float %4262, float %4325)  ; FMad(a,b,c)
  %4327 = fmul fast float %4260, %4193
  %4328 = call float @dx.op.tertiary.f32(i32 46, float %4194, float %4262, float %4327)  ; FMad(a,b,c)
  %4329 = add i32 %4305, 0
  %4330 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4329, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4331 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4330, %dx.types.Handle %4309, float %4317, float %4320, float undef, float undef, i32 0, i32 0, i32 undef, float %4322, float %4324, float undef, float %4326, float %4328, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4332 = extractvalue %dx.types.ResRet.f32 %4331, 0
  %4333 = and i32 %4306, 1024
  %4334 = icmp ne i32 %4333, 0
  %4335 = fcmp fast ogt float %4332, 0x3FE0101020000000
  %4336 = uitofp i1 %4335 to float
  %4337 = select i1 %4334, float %4336, float %4332
  %4338 = and i32 %4306, 8192
  %4339 = icmp ne i32 %4338, 0
  %4340 = select i1 %4339, float %4299, float 1.000000e+00
  %4341 = fmul fast float %4231, 2.000000e+00
  %4342 = fadd fast float %4341, -1.000000e+00
  %4343 = call float @dx.op.unary.f32(i32 6, float %4342)  ; FAbs(value)
  %4344 = fmul fast float %4343, %4224
  %4345 = fsub fast float %4344, %4224
  %4346 = call float @dx.op.unary.f32(i32 7, float %4345)  ; Saturate(value)
  %4347 = fmul fast float %4238, 2.000000e+00
  %4348 = fadd fast float %4347, -1.000000e+00
  %4349 = call float @dx.op.unary.f32(i32 6, float %4348)  ; FAbs(value)
  %4350 = fmul fast float %4349, %4225
  %4351 = fsub fast float %4350, %4225
  %4352 = call float @dx.op.unary.f32(i32 7, float %4351)  ; Saturate(value)
  %4353 = fmul fast float %4250, %4187
  %4354 = fsub fast float %4353, %4187
  %4355 = call float @dx.op.unary.f32(i32 7, float %4354)  ; Saturate(value)
  %4356 = fmul fast float %4314, %4340
  %4357 = fmul fast float %4356, %4311
  %4358 = fmul fast float %4357, %4346
  %4359 = fmul fast float %4358, %4337
  %4360 = fmul fast float %4359, %4352
  %4361 = fmul fast float %4360, %4355
  %4362 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4363 = extractvalue %dx.types.CBufRet.f32 %4362, 1
  %4364 = extractvalue %dx.types.CBufRet.f32 %4362, 0
  %4365 = fsub fast float %4267, %4364
  %4366 = fmul fast float %4365, %4363
  %4367 = call float @dx.op.unary.f32(i32 7, float %4366)  ; Saturate(value)
  %4368 = fmul fast float %4361, %4188
  %4369 = fadd fast float %4361, %4188
  %4370 = fmul fast float %4369, %4197
  %4371 = fsub fast float %4370, %4197
  %4372 = call float @dx.op.unary.f32(i32 7, float %4371)  ; Saturate(value)
  %4373 = and i32 %4306, 128
  %4374 = icmp ne i32 %4373, 0
  %4375 = select i1 %4374, float %4372, float %4368
  %4376 = fmul fast float %4375, %4367
  %4377 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4378 = extractvalue %dx.types.CBufRet.f32 %4377, 0
  %4379 = fcmp fast ugt float %4376, %4378
  br i1 %4379, label %4380, label %4271

; <label>:4380                                    ; preds = %4297
  %4381 = select i1 %4339, float %4376, float 0.000000e+00
  %4382 = fadd fast float %4381, %4146
  %4383 = call float @dx.op.unary.f32(i32 7, float %4382)  ; Saturate(value)
  br i1 %4339, label %4271, label %4384

; <label>:4384                                    ; preds = %4380
  %4385 = and i32 %4306, 4
  %4386 = and i32 %4306, 8
  %4387 = add i32 %4183, 0
  %4388 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4387, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4389 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4390 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4388, %dx.types.Handle %4389, float %4317, float %4320, float undef, float undef, i32 0, i32 0, i32 undef, float %4322, float %4324, float undef, float %4326, float %4328, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4391 = extractvalue %dx.types.ResRet.f32 %4390, 0
  %4392 = extractvalue %dx.types.ResRet.f32 %4390, 1
  %4393 = extractvalue %dx.types.ResRet.f32 %4390, 2
  %4394 = extractvalue %dx.types.ResRet.f32 %4390, 3
  %4395 = bitcast float %4209 to i32
  %4396 = and i32 %4395, 255
  %4397 = uitofp i32 %4396 to float
  %4398 = lshr i32 %4395, 8
  %4399 = and i32 %4398, 255
  %4400 = uitofp i32 %4399 to float
  %4401 = fmul fast float %4394, %4397
  %4402 = fadd fast float %4401, %4400
  %4403 = fmul fast float %4402, 0x3F70101000000000
  %4404 = add i32 %4184, 0
  %4405 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4404, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4406 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4405, %dx.types.Handle %4389, float %4317, float %4320, float undef, float undef, i32 0, i32 0, i32 undef, float %4322, float %4324, float undef, float %4326, float %4328, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4407 = extractvalue %dx.types.ResRet.f32 %4406, 0
  %4408 = extractvalue %dx.types.ResRet.f32 %4406, 1
  %4409 = extractvalue %dx.types.ResRet.f32 %4406, 2
  %4410 = extractvalue %dx.types.ResRet.f32 %4406, 3
  %4411 = bitcast float %4203 to i32
  %4412 = and i32 %4411, 255
  %4413 = uitofp i32 %4412 to float
  %4414 = lshr i32 %4411, 8
  %4415 = and i32 %4414, 255
  %4416 = uitofp i32 %4415 to float
  %4417 = lshr i32 %4411, 16
  %4418 = and i32 %4417, 255
  %4419 = uitofp i32 %4418 to float
  %4420 = fmul fast float %4419, 0x3F70101000000000
  %4421 = fmul fast float %4407, %4413
  %4422 = fadd fast float %4421, %4416
  %4423 = fmul fast float %4422, 0x3F70101000000000
  %4424 = fadd fast float %4408, -5.000000e-01
  %4425 = fadd fast float %4410, -5.000000e-01
  %4426 = fmul fast float %4424, %4420
  %4427 = fmul fast float %4425, %4420
  %4428 = fadd fast float %4426, 5.000000e-01
  %4429 = fadd fast float %4427, 5.000000e-01
  %4430 = fmul fast float %4391, %4212
  %4431 = fmul fast float %4392, %4213
  %4432 = fmul fast float %4393, %4214
  %4433 = fmul fast float %4428, 2.000000e+00
  %4434 = fadd fast float %4433, -1.000000e+00
  %4435 = fmul fast float %4429, 2.000000e+00
  %4436 = fadd fast float %4435, -1.000000e+00
  %4437 = fadd fast float %4434, %4436
  %4438 = fmul fast float %4437, 5.000000e-01
  %4439 = fsub fast float %4434, %4436
  %4440 = fmul fast float %4439, 5.000000e-01
  %4441 = call float @dx.op.unary.f32(i32 6, float %4438)  ; FAbs(value)
  %4442 = fsub fast float 1.000000e+00, %4441
  %4443 = call float @dx.op.unary.f32(i32 6, float %4440)  ; FAbs(value)
  %4444 = fsub fast float %4442, %4443
  %4445 = call float @dx.op.dot3.f32(i32 55, float %4438, float %4440, float %4444, float %4438, float %4440, float %4444)  ; Dot3(ax,ay,az,bx,by,bz)
  %4446 = call float @dx.op.unary.f32(i32 25, float %4445)  ; Rsqrt(value)
  %4447 = fmul fast float %4438, %4446
  %4448 = fmul fast float %4440, %4446
  %4449 = fmul fast float %4446, %4444
  %4450 = fmul fast float %4449, %4178
  %4451 = fmul fast float %4449, %4179
  %4452 = fmul fast float %4449, %4180
  %4453 = fmul fast float %4447, %4200
  %4454 = fmul fast float %4447, %4201
  %4455 = fmul fast float %4447, %4202
  %4456 = fadd fast float %4453, %4450
  %4457 = fadd fast float %4454, %4451
  %4458 = fadd fast float %4455, %4452
  %4459 = fmul fast float %4448, %4206
  %4460 = fmul fast float %4448, %4207
  %4461 = fmul fast float %4448, %4208
  %4462 = fadd fast float %4456, %4459
  %4463 = fadd fast float %4457, %4460
  %4464 = fadd fast float %4458, %4461
  %4465 = call float @dx.op.dot3.f32(i32 55, float %4462, float %4463, float %4464, float %4462, float %4463, float %4464)  ; Dot3(ax,ay,az,bx,by,bz)
  %4466 = call float @dx.op.unary.f32(i32 25, float %4465)  ; Rsqrt(value)
  %4467 = fmul fast float %4462, %4466
  %4468 = fmul fast float %4463, %4466
  %4469 = fmul fast float %4464, %4466
  %4470 = icmp ne i32 %4386, 0
  %4471 = select i1 %4470, float 1.000000e+00, float 0.000000e+00
  %4472 = fmul fast float %4376, %4471
  %4473 = and i32 %4306, 1
  %4474 = icmp eq i32 %4473, 0
  br i1 %4474, label %4475, label %4479

; <label>:4475                                    ; preds = %4384
  %4476 = fsub fast float %4467, %4160
  %4477 = fsub fast float %4468, %4161
  %4478 = fsub fast float %4469, %4162
  br label %4479

; <label>:4479                                    ; preds = %4475, %4384
  %4480 = phi float [ %4476, %4475 ], [ %4467, %4384 ]
  %4481 = phi float [ %4477, %4475 ], [ %4468, %4384 ]
  %4482 = phi float [ %4478, %4475 ], [ %4469, %4384 ]
  %4483 = fmul float %4482, %4472
  %4484 = fmul float %4481, %4472
  %4485 = fmul float %4480, %4472
  %4486 = fadd fast float %4485, %4160
  %4487 = fadd fast float %4484, %4161
  %4488 = fadd fast float %4483, %4162
  %4489 = icmp ne i32 %4385, 0
  %4490 = select i1 %4489, float 1.000000e+00, float 0.000000e+00
  %4491 = fmul fast float %4376, %4490
  %4492 = fsub fast float %4430, %4167
  %4493 = fsub fast float %4431, %4168
  %4494 = fsub fast float %4432, %4169
  %4495 = fmul fast float %4492, %4491
  %4496 = fmul fast float %4493, %4491
  %4497 = fmul fast float %4494, %4491
  %4498 = fadd fast float %4495, %4167
  %4499 = fadd fast float %4496, %4168
  %4500 = fadd fast float %4497, %4169
  %4501 = fsub fast float %4403, %4166
  %4502 = fmul fast float %4501, %4491
  %4503 = fadd fast float %4502, %4166
  %4504 = fmul fast float %4491, %4153
  %4505 = fsub fast float %4153, %4504
  %4506 = fmul fast float %4491, %4152
  %4507 = fsub fast float %4152, %4506
  %4508 = bitcast float %4221 to i32
  %4509 = lshr i32 %4508, 16
  %4510 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4509)  ; LegacyF16ToF32(value)
  %4511 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %442, i32 undef)  ; BufferLoad(srv,index,wot)
  %4512 = extractvalue %dx.types.ResRet.i32 %4511, 0
  %4513 = and i32 %4512, 1
  %4514 = icmp eq i32 %4513, 0
  br i1 %4514, label %4515, label %4540

; <label>:4515                                    ; preds = %4479
  %4516 = fadd fast float %4403, 0xBFB99999A0000000
  %4517 = call float @dx.op.unary.f32(i32 7, float %4516)  ; Saturate(value)
  %4518 = fmul fast float %4517, 0x3FF1C71C80000000
  %4519 = fsub fast float 1.000000e+00, %4518
  %4520 = call float @dx.op.unary.f32(i32 7, float %4519)  ; Saturate(value)
  %4521 = fmul fast float %4520, %4430
  %4522 = fmul fast float %4520, %4431
  %4523 = fmul fast float %4520, %4432
  %4524 = call float @dx.op.unary.f32(i32 7, float %4521)  ; Saturate(value)
  %4525 = call float @dx.op.unary.f32(i32 7, float %4522)  ; Saturate(value)
  %4526 = call float @dx.op.unary.f32(i32 7, float %4523)  ; Saturate(value)
  %4527 = call float @dx.op.binary.f32(i32 35, float %4525, float %4526)  ; FMax(a,b)
  %4528 = call float @dx.op.binary.f32(i32 35, float %4524, float %4527)  ; FMax(a,b)
  %4529 = fcmp fast ogt float %4528, 0.000000e+00
  %4530 = bitcast float %4528 to i32
  %4531 = sub nsw i32 2129859010, %4530
  %4532 = bitcast i32 %4531 to float
  %4533 = select i1 %4529, float %4532, float 0.000000e+00
  %4534 = fmul fast float %4524, %4510
  %4535 = fmul fast float %4525, %4510
  %4536 = fmul fast float %4526, %4510
  %4537 = fmul fast float %4534, %4533
  %4538 = fmul fast float %4535, %4533
  %4539 = fmul fast float %4536, %4533
  br label %4540

; <label>:4540                                    ; preds = %4515, %4479
  %4541 = phi float [ %4510, %4479 ], [ %4537, %4515 ]
  %4542 = phi float [ %4510, %4479 ], [ %4538, %4515 ]
  %4543 = phi float [ %4510, %4479 ], [ %4539, %4515 ]
  %4544 = fsub fast float %4541, %4154
  %4545 = fsub fast float %4542, %4155
  %4546 = fsub fast float %4543, %4156
  %4547 = fmul fast float %4544, %4491
  %4548 = fmul fast float %4545, %4491
  %4549 = fmul fast float %4546, %4491
  %4550 = fadd fast float %4547, %4154
  %4551 = fadd fast float %4548, %4155
  %4552 = fadd fast float %4549, %4156
  %4553 = fadd fast float %4376, %4165
  %4554 = call float @dx.op.unary.f32(i32 7, float %4553)  ; Saturate(value)
  %4555 = fsub fast float %4423, %4164
  %4556 = fmul fast float %4555, %4472
  %4557 = fadd fast float %4556, %4164
  %4558 = fsub fast float %4409, %4163
  %4559 = fmul fast float %4558, %4472
  %4560 = fadd fast float %4559, %4163
  br i1 %4474, label %4569, label %4561

; <label>:4561                                    ; preds = %4540
  %4562 = and i32 %4306, 32768
  %4563 = icmp eq i32 %4562, 0
  br i1 %4563, label %4579, label %4564

; <label>:4564                                    ; preds = %4561
  %4565 = fmul fast float %4472, 1.270000e+02
  %4566 = fadd fast float %4565, %4149
  %4567 = fadd fast float %4565, %4150
  %4568 = fadd fast float %4565, %4151
  br label %4579

; <label>:4569                                    ; preds = %4540
  %4570 = fsub fast float 1.270000e+02, %4149
  %4571 = fsub fast float 1.270000e+02, %4150
  %4572 = fsub fast float 1.270000e+02, %4151
  %4573 = fmul fast float %4472, %4570
  %4574 = fmul fast float %4472, %4571
  %4575 = fmul fast float %4472, %4572
  %4576 = fadd fast float %4573, %4149
  %4577 = fadd fast float %4574, %4150
  %4578 = fadd fast float %4575, %4151
  br label %4579

; <label>:4579                                    ; preds = %4569, %4564, %4561
  %4580 = phi float [ %4566, %4564 ], [ %4149, %4561 ], [ %4576, %4569 ]
  %4581 = phi float [ %4567, %4564 ], [ %4150, %4561 ], [ %4577, %4569 ]
  %4582 = phi float [ %4568, %4564 ], [ %4151, %4561 ], [ %4578, %4569 ]
  %4583 = call float @dx.op.dot3.f32(i32 55, float %4430, float %4431, float %4432, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4584 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %4585 = extractvalue %dx.types.CBufRet.f32 %4584, 0
  %4586 = extractvalue %dx.types.CBufRet.f32 %4584, 1
  %4587 = fmul fast float %4586, %4583
  %4588 = fadd fast float %4587, %4585
  %4589 = call float @dx.op.unary.f32(i32 7, float %4588)  ; Saturate(value)
  %4590 = bitcast float %4215 to i32
  %4591 = and i32 %4590, 65535
  %4592 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4591)  ; LegacyF16ToF32(value)
  %4593 = lshr i32 %4590, 16
  %4594 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4593)  ; LegacyF16ToF32(value)
  %4595 = fcmp fast oge float %4592, 0.000000e+00
  %4596 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4597 = extractvalue %dx.types.CBufRet.f32 %4596, 0
  %4598 = select i1 %4595, float %4592, float %4597
  %4599 = fadd fast float %4598, %4594
  %4600 = fsub fast float %4589, %4148
  %4601 = fmul fast float %4600, %4376
  %4602 = fadd fast float %4601, %4148
  %4603 = fmul fast float %4599, %4376
  %4604 = call float @dx.op.binary.f32(i32 35, float %4147, float %4603)  ; FMax(a,b)
  %4605 = and i32 %4306, 16
  %4606 = icmp eq i32 %4605, 0
  br i1 %4606, label %4628, label %4607

; <label>:4607                                    ; preds = %4579
  %4608 = add i32 %4218, 0
  %4609 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4608, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4610 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4609, %dx.types.Handle %4389, float %4317, float %4320, float undef, float undef, i32 0, i32 0, i32 undef, float %4322, float %4324, float undef, float %4326, float %4328, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4611 = extractvalue %dx.types.ResRet.f32 %4610, 0
  %4612 = extractvalue %dx.types.ResRet.f32 %4610, 1
  %4613 = extractvalue %dx.types.ResRet.f32 %4610, 2
  %4614 = and i32 %4508, 65535
  %4615 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4614)  ; LegacyF16ToF32(value)
  %4616 = fmul fast float %4611, %4212
  %4617 = fmul fast float %4612, %4213
  %4618 = fmul fast float %4613, %4214
  %4619 = and i32 %4306, 16384
  %4620 = icmp ne i32 %4619, 0
  %4621 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4622 = extractvalue %dx.types.CBufRet.f32 %4621, 0
  %4623 = select i1 %4620, float %4622, float 1.000000e+00
  %4624 = fmul fast float %4623, %4615
  %4625 = fmul fast float %4616, %4624
  %4626 = fmul fast float %4617, %4624
  %4627 = fmul fast float %4618, %4624
  br label %4628

; <label>:4628                                    ; preds = %4607, %4579
  %4629 = phi float [ %4625, %4607 ], [ 0.000000e+00, %4579 ]
  %4630 = phi float [ %4626, %4607 ], [ 0.000000e+00, %4579 ]
  %4631 = phi float [ %4627, %4607 ], [ 0.000000e+00, %4579 ]
  %4632 = fsub fast float %4629, %4157
  %4633 = fsub fast float %4630, %4158
  %4634 = fsub fast float %4631, %4159
  %4635 = fmul fast float %4632, %4376
  %4636 = fmul fast float %4633, %4376
  %4637 = fmul fast float %4634, %4376
  %4638 = fadd fast float %4635, %4157
  %4639 = fadd fast float %4636, %4158
  %4640 = fadd fast float %4637, %4159
  br label %4271

; <label>:4641                                    ; preds = %4271
  br label %4642

; <label>:4642                                    ; preds = %4641, %4081
  %4643 = phi float [ 0.000000e+00, %4081 ], [ %4272, %4641 ]
  %4644 = phi float [ %4025, %4081 ], [ %4273, %4641 ]
  %4645 = phi float [ %4004, %4081 ], [ %4274, %4641 ]
  %4646 = phi float [ %3994, %4081 ], [ %4275, %4641 ]
  %4647 = phi float [ %3995, %4081 ], [ %4276, %4641 ]
  %4648 = phi float [ %3996, %4081 ], [ %4277, %4641 ]
  %4649 = phi float [ 0.000000e+00, %4081 ], [ %4278, %4641 ]
  %4650 = phi float [ 0.000000e+00, %4081 ], [ %4279, %4641 ]
  %4651 = phi float [ %3997, %4081 ], [ %4280, %4641 ]
  %4652 = phi float [ %3998, %4081 ], [ %4281, %4641 ]
  %4653 = phi float [ %3999, %4081 ], [ %4282, %4641 ]
  %4654 = phi float [ %4047, %4081 ], [ %4283, %4641 ]
  %4655 = phi float [ %4049, %4081 ], [ %4284, %4641 ]
  %4656 = phi float [ %4051, %4081 ], [ %4285, %4641 ]
  %4657 = phi float [ %4077, %4081 ], [ %4286, %4641 ]
  %4658 = phi float [ %4078, %4081 ], [ %4287, %4641 ]
  %4659 = phi float [ %4079, %4081 ], [ %4288, %4641 ]
  %4660 = phi float [ %4002, %4081 ], [ %4289, %4641 ]
  %4661 = phi float [ %4001, %4081 ], [ %4290, %4641 ]
  %4662 = phi float [ 0.000000e+00, %4081 ], [ %4291, %4641 ]
  %4663 = phi float [ %4000, %4081 ], [ %4292, %4641 ]
  %4664 = phi float [ %4032, %4081 ], [ %4293, %4641 ]
  %4665 = phi float [ %4033, %4081 ], [ %4294, %4641 ]
  %4666 = phi float [ %4034, %4081 ], [ %4295, %4641 ]
  %4667 = call float @dx.op.dot3.f32(i32 55, float %4657, float %4658, float %4659, float %4657, float %4658, float %4659)  ; Dot3(ax,ay,az,bx,by,bz)
  %4668 = call float @dx.op.unary.f32(i32 25, float %4667)  ; Rsqrt(value)
  %4669 = fmul fast float %4668, %4657
  %4670 = fmul fast float %4668, %4658
  %4671 = fmul fast float %4668, %4659
  %4672 = fadd fast float %4662, %1174
  %4673 = call float @dx.op.unary.f32(i32 7, float %4672)  ; Saturate(value)
  %4674 = call float @dx.op.dot3.f32(i32 55, float %4669, float %4670, float %4671, float %4669, float %4670, float %4671)  ; Dot3(ax,ay,az,bx,by,bz)
  %4675 = call float @dx.op.unary.f32(i32 25, float %4674)  ; Rsqrt(value)
  %4676 = fmul fast float %4675, %4669
  %4677 = fmul fast float %4675, %4670
  %4678 = fmul fast float %4675, %4671
  br label %4679

; <label>:4679                                    ; preds = %4642, %3985
  %4680 = phi float [ %4676, %4642 ], [ %4077, %3985 ]
  %4681 = phi float [ %4677, %4642 ], [ %4078, %3985 ]
  %4682 = phi float [ %4678, %4642 ], [ %4079, %3985 ]
  %4683 = phi float [ %4664, %4642 ], [ %4032, %3985 ]
  %4684 = phi float [ %4665, %4642 ], [ %4033, %3985 ]
  %4685 = phi float [ %4666, %4642 ], [ %4034, %3985 ]
  %4686 = phi float [ %4651, %4642 ], [ %3997, %3985 ]
  %4687 = phi float [ %4652, %4642 ], [ %3998, %3985 ]
  %4688 = phi float [ %4653, %4642 ], [ %3999, %3985 ]
  %4689 = phi float [ %4654, %4642 ], [ %4047, %3985 ]
  %4690 = phi float [ %4655, %4642 ], [ %4049, %3985 ]
  %4691 = phi float [ %4656, %4642 ], [ %4051, %3985 ]
  %4692 = phi float [ %4646, %4642 ], [ %3994, %3985 ]
  %4693 = phi float [ %4647, %4642 ], [ %3995, %3985 ]
  %4694 = phi float [ %4648, %4642 ], [ %3996, %3985 ]
  %4695 = phi float [ %4663, %4642 ], [ %4000, %3985 ]
  %4696 = phi float [ %4673, %4642 ], [ %1174, %3985 ]
  %4697 = phi float [ %4661, %4642 ], [ %4001, %3985 ]
  %4698 = phi float [ %4660, %4642 ], [ %4002, %3985 ]
  %4699 = phi float [ %4650, %4642 ], [ 0.000000e+00, %3985 ]
  %4700 = phi float [ %4649, %4642 ], [ 0.000000e+00, %3985 ]
  %4701 = phi float [ %4643, %4642 ], [ 0.000000e+00, %3985 ]
  %4702 = phi float [ %4644, %4642 ], [ %4025, %3985 ]
  %4703 = phi float [ %4645, %4642 ], [ %4004, %3985 ]
  %4704 = fadd fast float %4695, 0xBFB99999A0000000
  %4705 = call float @dx.op.unary.f32(i32 7, float %4704)  ; Saturate(value)
  %4706 = fmul fast float %4705, 0x3FF1C71C80000000
  %4707 = call float @dx.op.binary.f32(i32 36, float %4695, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4708 = fsub fast float 1.000000e+00, %4706
  %4709 = call float @dx.op.unary.f32(i32 7, float %4708)  ; Saturate(value)
  %4710 = fmul fast float %4709, %4683
  %4711 = fmul fast float %4709, %4684
  %4712 = fmul fast float %4709, %4685
  %4713 = call float @dx.op.unary.f32(i32 7, float %4710)  ; Saturate(value)
  %4714 = call float @dx.op.unary.f32(i32 7, float %4711)  ; Saturate(value)
  %4715 = call float @dx.op.unary.f32(i32 7, float %4712)  ; Saturate(value)
  %4716 = fmul fast float %4706, %4683
  %4717 = fmul fast float %4706, %4684
  %4718 = fmul fast float %4706, %4685
  %4719 = fadd fast float %4716, %4707
  %4720 = fadd fast float %4717, %4707
  %4721 = fadd fast float %4718, %4707
  %4722 = call float @dx.op.unary.f32(i32 7, float %4719)  ; Saturate(value)
  %4723 = call float @dx.op.unary.f32(i32 7, float %4720)  ; Saturate(value)
  %4724 = call float @dx.op.unary.f32(i32 7, float %4721)  ; Saturate(value)
  %4725 = call float @dx.op.unary.f32(i32 7, float %4697)  ; Saturate(value)
  %4726 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %442, i32 undef)  ; BufferLoad(srv,index,wot)
  %4727 = extractvalue %dx.types.ResRet.i32 %4726, 0
  %4728 = and i32 %4727, 1
  %4729 = icmp eq i32 %4728, 0
  br i1 %4729, label %4744, label %4730

; <label>:4730                                    ; preds = %4679
  %4731 = call float @dx.op.binary.f32(i32 35, float %4714, float %4715)  ; FMax(a,b)
  %4732 = call float @dx.op.binary.f32(i32 35, float %4713, float %4731)  ; FMax(a,b)
  %4733 = fcmp fast ogt float %4732, 0.000000e+00
  %4734 = bitcast float %4732 to i32
  %4735 = sub nsw i32 2129859010, %4734
  %4736 = bitcast i32 %4735 to float
  %4737 = select i1 %4733, float %4736, float 0.000000e+00
  %4738 = fmul fast float %4713, %4686
  %4739 = fmul fast float %4714, %4687
  %4740 = fmul fast float %4715, %4688
  %4741 = fmul fast float %4738, %4737
  %4742 = fmul fast float %4739, %4737
  %4743 = fmul fast float %4740, %4737
  br label %4744

; <label>:4744                                    ; preds = %4730, %4679
  %4745 = phi float [ %4741, %4730 ], [ %4686, %4679 ]
  %4746 = phi float [ %4742, %4730 ], [ %4687, %4679 ]
  %4747 = phi float [ %4743, %4730 ], [ %4688, %4679 ]
  %4748 = call float @dx.op.binary.f32(i32 36, float %4692, float 1.270000e+02)  ; FMin(a,b)
  %4749 = call float @dx.op.binary.f32(i32 36, float %4693, float 1.270000e+02)  ; FMin(a,b)
  %4750 = call float @dx.op.binary.f32(i32 36, float %4694, float 1.270000e+02)  ; FMin(a,b)
  %4751 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4752 = extractvalue %dx.types.CBufRet.i32 %4751, 3
  %4753 = and i32 %4752, 8
  %4754 = icmp ne i32 %4753, 0
  %4755 = call float @dx.op.binary.f32(i32 35, float %4713, float %4683)  ; FMax(a,b)
  %4756 = call float @dx.op.binary.f32(i32 35, float %4714, float %4683)  ; FMax(a,b)
  %4757 = call float @dx.op.binary.f32(i32 35, float %4715, float %4683)  ; FMax(a,b)
  %4758 = call float @dx.op.dot3.f32(i32 55, float %4713, float %4714, float %4715, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4759 = select i1 %262, float %4683, float %4713
  %4760 = select i1 %262, float %4758, float %4714
  %4761 = select i1 %262, float 1.000000e+00, float %4715
  %4762 = select i1 %4754, float %4755, float %4759
  %4763 = select i1 %4754, float %4756, float %4760
  %4764 = select i1 %4754, float %4757, float %4761
  %4765 = call float @dx.op.dot3.f32(i32 55, float %4745, float %4746, float %4747, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4766 = select i1 %262, float %4765, float %4745
  %4767 = select i1 %262, float %4765, float %4746
  %4768 = select i1 %262, float %4765, float %4747
  %4769 = and i32 %238, 3
  %4770 = select i1 %232, i32 %4769, i32 0
  %4771 = icmp eq i32 %4770, 1
  br i1 %4771, label %4772, label %4848

; <label>:4772                                    ; preds = %4744
  %4773 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4774 = extractvalue %dx.types.CBufRet.f32 %4773, 0
  %4775 = extractvalue %dx.types.CBufRet.f32 %4773, 1
  %4776 = fadd fast float %4774, %188
  %4777 = fadd fast float %4775, %189
  %4778 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4779 = extractvalue %dx.types.CBufRet.f32 %4778, 0
  %4780 = extractvalue %dx.types.CBufRet.f32 %4778, 1
  %4781 = fsub fast float %4776, %4779
  %4782 = fsub fast float %4777, %4780
  %4783 = fmul fast float %4781, %4781
  %4784 = fmul fast float %4782, %4782
  %4785 = fadd fast float %4783, %4784
  %4786 = call float @dx.op.unary.f32(i32 24, float %4785)  ; Sqrt(value)
  %4787 = extractvalue %dx.types.CBufRet.f32 %4778, 2
  %4788 = fcmp fast olt float %4786, %4787
  br i1 %4788, label %4789, label %4842

; <label>:4789                                    ; preds = %4772
  %4790 = extractvalue %dx.types.CBufRet.f32 %4773, 2
  %4791 = fadd fast float %4790, %190
  %4792 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4793 = extractvalue %dx.types.CBufRet.f32 %4792, 0
  %4794 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4795 = extractvalue %dx.types.CBufRet.f32 %4794, 0
  %4796 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4797 = extractvalue %dx.types.CBufRet.f32 %4796, 0
  %4798 = extractvalue %dx.types.CBufRet.f32 %4792, 1
  %4799 = extractvalue %dx.types.CBufRet.f32 %4794, 1
  %4800 = extractvalue %dx.types.CBufRet.f32 %4796, 1
  %4801 = extractvalue %dx.types.CBufRet.f32 %4792, 3
  %4802 = extractvalue %dx.types.CBufRet.f32 %4794, 3
  %4803 = extractvalue %dx.types.CBufRet.f32 %4796, 3
  %4804 = fadd fast float %4801, %4776
  %4805 = fadd fast float %4802, %4777
  %4806 = fadd fast float %4791, %4803
  %4807 = fmul fast float %4804, %4793
  %4808 = call float @dx.op.tertiary.f32(i32 46, float %4805, float %4795, float %4807)  ; FMad(a,b,c)
  %4809 = call float @dx.op.tertiary.f32(i32 46, float %4806, float %4797, float %4808)  ; FMad(a,b,c)
  %4810 = fmul fast float %4804, %4798
  %4811 = call float @dx.op.tertiary.f32(i32 46, float %4805, float %4799, float %4810)  ; FMad(a,b,c)
  %4812 = call float @dx.op.tertiary.f32(i32 46, float %4806, float %4800, float %4811)  ; FMad(a,b,c)
  %4813 = fsub fast float %4809, %4801
  %4814 = fsub fast float %4812, %4802
  %4815 = fsub fast float %4813, %4779
  %4816 = fadd fast float %4815, %4787
  %4817 = fsub fast float %4814, %4780
  %4818 = fadd fast float %4817, %4787
  %4819 = extractvalue %dx.types.CBufRet.f32 %4778, 3
  %4820 = fmul fast float %4816, %4819
  %4821 = fmul fast float %4818, %4819
  %4822 = call float @dx.op.unary.f32(i32 7, float %4820)  ; Saturate(value)
  %4823 = call float @dx.op.unary.f32(i32 7, float %4821)  ; Saturate(value)
  %4824 = fsub fast float 1.000000e+00, %4822
  %4825 = fsub fast float 1.000000e+00, %4823
  %4826 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %43, float %4824, float %4825, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4827 = extractvalue %dx.types.ResRet.f32 %4826, 0
  %4828 = fcmp fast ugt float %4827, 0.000000e+00
  br i1 %4828, label %4829, label %4842

; <label>:4829                                    ; preds = %4789
  %4830 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4831 = extractvalue %dx.types.CBufRet.f32 %4830, 2
  %4832 = fmul fast float %4831, %4827
  %4833 = extractvalue %dx.types.CBufRet.f32 %4830, 3
  %4834 = fadd fast float %4833, %4832
  %4835 = extractvalue %dx.types.CBufRet.f32 %4796, 2
  %4836 = fadd fast float %4834, %4803
  %4837 = fmul fast float %4809, %4797
  %4838 = call float @dx.op.tertiary.f32(i32 46, float %4812, float %4800, float %4837)  ; FMad(a,b,c)
  %4839 = call float @dx.op.tertiary.f32(i32 46, float %4836, float %4835, float %4838)  ; FMad(a,b,c)
  %4840 = fsub fast float %4839, %4803
  %4841 = fsub fast float %4840, %4790
  br label %4842

; <label>:4842                                    ; preds = %4829, %4789, %4772
  %4843 = phi i1 [ true, %4829 ], [ false, %4789 ], [ false, %4772 ]
  %4844 = phi float [ %4841, %4829 ], [ -1.310720e+05, %4789 ], [ -1.310720e+05, %4772 ]
  %4845 = fsub fast float %4844, %190
  %4846 = call float @dx.op.unary.f32(i32 7, float %4845)  ; Saturate(value)
  %4847 = select i1 %4843, float %4846, float 1.000000e+00
  br label %4848

; <label>:4848                                    ; preds = %4842, %4744
  %4849 = phi float [ %4847, %4842 ], [ 0.000000e+00, %4744 ]
  %4850 = icmp eq i32 %4770, 3
  %4851 = select i1 %4850, float 1.000000e+00, float %4849
  %4852 = call float @dx.op.binary.f32(i32 35, float %4701, float %4851)  ; FMax(a,b)
  %4853 = fcmp fast olt float %4851, 1.000000e+00
  %4854 = fcmp uge float %65, 0.000000e+00
  %4855 = and i1 %4854, %4853
  br i1 %4855, label %4856, label %4866

; <label>:4856                                    ; preds = %4848
  %4857 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %37, %dx.types.Handle %41, float %65, float %66, float %67, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4858 = extractvalue %dx.types.ResRet.f32 %4857, 0
  %4859 = extractvalue %dx.types.ResRet.f32 %4857, 1
  %4860 = extractvalue %dx.types.ResRet.f32 %4857, 2
  %4861 = fadd fast float %4858, %4852
  %4862 = fcmp ule float %64, 0.000000e+00
  %4863 = call float @dx.op.dot3.f32(i32 55, float %61, float %62, float %63, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4864 = select i1 %4862, float %4863, float 1.000000e+00
  %4865 = fmul fast float %4864, %4860
  br label %4866

; <label>:4866                                    ; preds = %4856, %4848
  %4867 = phi float [ %4861, %4856 ], [ %4852, %4848 ]
  %4868 = phi float [ %4859, %4856 ], [ 0.000000e+00, %4848 ]
  %4869 = phi float [ %4865, %4856 ], [ 0.000000e+00, %4848 ]
  %4870 = call float @dx.op.unary.f32(i32 7, float %4867)  ; Saturate(value)
  %4871 = call float @dx.op.unary.f32(i32 7, float %4868)  ; Saturate(value)
  %4872 = call float @dx.op.unary.f32(i32 7, float %4869)  ; Saturate(value)
  %4873 = fcmp fast une float %4871, 0.000000e+00
  %4874 = fcmp fast une float %4872, 0.000000e+00
  %4875 = or i1 %4873, %4874
  br i1 %4875, label %4876, label %5451

; <label>:4876                                    ; preds = %4866
  br i1 %4873, label %4877, label %5150

; <label>:4877                                    ; preds = %4876
  %4878 = call float @dx.op.unary.f32(i32 23, float %4698)  ; Log(value)
  %4879 = fmul fast float %4878, 4.000000e+00
  %4880 = call float @dx.op.unary.f32(i32 21, float %4879)  ; Exp(value)
  %4881 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4882 = extractvalue %dx.types.CBufRet.f32 %4881, 0
  %4883 = fmul fast float %4882, %52
  %4884 = fmul fast float %4882, %53
  %4885 = fmul fast float %4882, %54
  %4886 = call float @dx.op.unary.f32(i32 6, float %61)  ; FAbs(value)
  %4887 = call float @dx.op.unary.f32(i32 6, float %62)  ; FAbs(value)
  %4888 = call float @dx.op.unary.f32(i32 6, float %63)  ; FAbs(value)
  %4889 = call float @dx.op.unary.f32(i32 23, float %4886)  ; Log(value)
  %4890 = call float @dx.op.unary.f32(i32 23, float %4887)  ; Log(value)
  %4891 = call float @dx.op.unary.f32(i32 23, float %4888)  ; Log(value)
  %4892 = fmul fast float %4889, 4.000000e+00
  %4893 = fmul fast float %4890, 4.000000e+00
  %4894 = fmul fast float %4891, 4.000000e+00
  %4895 = call float @dx.op.unary.f32(i32 21, float %4892)  ; Exp(value)
  %4896 = call float @dx.op.unary.f32(i32 21, float %4893)  ; Exp(value)
  %4897 = call float @dx.op.unary.f32(i32 21, float %4894)  ; Exp(value)
  %4898 = fadd fast float %4896, %4895
  %4899 = fadd fast float %4898, %4897
  %4900 = fdiv fast float 1.000000e+00, %4899
  %4901 = fmul fast float %4900, %4895
  %4902 = fcmp fast ogt float %61, 0.000000e+00
  %4903 = fcmp fast ogt float %62, 0.000000e+00
  %4904 = fcmp fast ogt float %63, 0.000000e+00
  %4905 = fcmp fast olt float %61, 0.000000e+00
  %4906 = fcmp fast olt float %62, 0.000000e+00
  %4907 = fcmp fast olt float %63, 0.000000e+00
  %4908 = zext i1 %4902 to i32
  %4909 = zext i1 %4903 to i32
  %4910 = zext i1 %4904 to i32
  %4911 = zext i1 %4905 to i32
  %4912 = zext i1 %4906 to i32
  %4913 = zext i1 %4907 to i32
  %4914 = sub nsw i32 %4908, %4911
  %4915 = sub nsw i32 %4909, %4912
  %4916 = sub nsw i32 %4910, %4913
  %4917 = call float @dx.op.unary.f32(i32 83, float %4883)  ; DerivCoarseX(value)
  %4918 = call float @dx.op.unary.f32(i32 83, float %4884)  ; DerivCoarseX(value)
  %4919 = call float @dx.op.unary.f32(i32 83, float %4885)  ; DerivCoarseX(value)
  %4920 = call float @dx.op.unary.f32(i32 84, float %4883)  ; DerivCoarseY(value)
  %4921 = call float @dx.op.unary.f32(i32 84, float %4884)  ; DerivCoarseY(value)
  %4922 = call float @dx.op.unary.f32(i32 84, float %4885)  ; DerivCoarseY(value)
  %4923 = fcmp fast ole float %273, %4901
  %4924 = fmul fast float %4900, %4898
  %4925 = fcmp fast ole float %273, %4924
  %4926 = select i1 %4925, float %4885, float %4883
  %4927 = select i1 %4925, float %4883, float %4884
  %4928 = select i1 %4923, float %4884, float %4926
  %4929 = select i1 %4923, float %4885, float %4927
  %4930 = select i1 %4925, float %4919, float %4917
  %4931 = select i1 %4925, float %4917, float %4918
  %4932 = select i1 %4923, float %4918, float %4930
  %4933 = select i1 %4923, float %4919, float %4931
  %4934 = select i1 %4925, float %4922, float %4920
  %4935 = select i1 %4925, float %4920, float %4921
  %4936 = select i1 %4923, float %4921, float %4934
  %4937 = select i1 %4923, float %4922, float %4935
  %4938 = call float @dx.op.unary.f32(i32 27, float %4928)  ; Round_ni(value)
  %4939 = call float @dx.op.unary.f32(i32 27, float %4929)  ; Round_ni(value)
  %4940 = fptosi float %4938 to i32
  %4941 = fptosi float %4939 to i32
  %4942 = xor i32 %4941, %4940
  %4943 = sitofp i32 %4942 to float
  %4944 = fptosi float %4943 to i32
  %4945 = sitofp i32 %4944 to float
  %4946 = fmul fast float %4945, 0x3FE3C6EF40000000
  %4947 = frem fast float %4938, 2.560000e+02
  %4948 = frem fast float %4939, 2.560000e+02
  %4949 = fptoui float %4947 to i32
  %4950 = fptoui float %4948 to i32
  %4951 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %26, i32 0, i32 %4949, i32 %4950, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4952 = extractvalue %dx.types.ResRet.f32 %4951, 0
  %4953 = extractvalue %dx.types.ResRet.f32 %4951, 1
  %4954 = extractvalue %dx.types.ResRet.f32 %4951, 2
  %4955 = fadd fast float %4952, %4946
  %4956 = fadd fast float %4953, %4946
  %4957 = fadd fast float %4954, %4946
  %4958 = call float @dx.op.unary.f32(i32 22, float %4955)  ; Frc(value)
  %4959 = call float @dx.op.unary.f32(i32 22, float %4956)  ; Frc(value)
  %4960 = call float @dx.op.unary.f32(i32 22, float %4957)  ; Frc(value)
  %4961 = fmul fast float %4960, 0x401921FB60000000
  %4962 = call float @dx.op.unary.f32(i32 13, float %4961)  ; Sin(value)
  %4963 = call float @dx.op.unary.f32(i32 12, float %4961)  ; Cos(value)
  %4964 = fsub fast float -0.000000e+00, %4963
  %4965 = fmul fast float %4963, %4928
  %4966 = call float @dx.op.tertiary.f32(i32 46, float %4962, float %4929, float %4965)  ; FMad(a,b,c)
  %4967 = fmul fast float %4962, %4928
  %4968 = call float @dx.op.tertiary.f32(i32 46, float %4964, float %4929, float %4967)  ; FMad(a,b,c)
  %4969 = fadd fast float %4966, %4958
  %4970 = fadd fast float %4968, %4959
  %4971 = extractvalue %dx.types.CBufRet.f32 %4881, 3
  %4972 = bitcast float %4971 to i32
  %4973 = icmp eq i32 %4972, 0
  br i1 %4973, label %5012, label %4974

; <label>:4974                                    ; preds = %4877
  %4975 = add i32 %4972, 0
  %4976 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4975, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4977 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4976, %dx.types.Handle %106, float %4969, float %4970, float undef, float undef, i32 0, i32 0, i32 undef, float %4932, float %4933, float undef, float %4936, float %4937, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4978 = extractvalue %dx.types.ResRet.f32 %4977, 0
  %4979 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4980 = extractvalue %dx.types.CBufRet.f32 %4979, 1
  %4981 = extractvalue %dx.types.CBufRet.f32 %4979, 2
  %4982 = fsub fast float 1.000000e+00, %4871
  %4983 = call float @dx.op.binary.f32(i32 35, float %4982, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4984 = bitcast float %4871 to i32
  %4985 = sitofp i32 %4984 to float
  %4986 = fadd fast float %4985, 0xC1CFBF8940000000
  %4987 = fmul fast float %4981, %4986
  %4988 = fadd fast float %4987, 0x41CFBF8940000000
  %4989 = fptosi float %4988 to i32
  %4990 = bitcast i32 %4989 to float
  %4991 = bitcast float %4983 to i32
  %4992 = sitofp i32 %4991 to float
  %4993 = fadd fast float %4992, 0xC1CFBF8940000000
  %4994 = fmul fast float %4993, %4981
  %4995 = fadd fast float %4994, 0x41CFBF8940000000
  %4996 = fptosi float %4995 to i32
  %4997 = bitcast i32 %4996 to float
  %4998 = fmul fast float %4990, %4980
  %4999 = fmul fast float %4997, %4980
  %5000 = fsub fast float %4983, %4998
  %5001 = fadd fast float %4999, %4983
  %5002 = call float @dx.op.unary.f32(i32 7, float %5000)  ; Saturate(value)
  %5003 = call float @dx.op.unary.f32(i32 7, float %5001)  ; Saturate(value)
  %5004 = fsub fast float %4978, %5002
  %5005 = fsub fast float %5003, %5002
  %5006 = bitcast float %5005 to i32
  %5007 = sub nsw i32 2129859010, %5006
  %5008 = bitcast i32 %5007 to float
  %5009 = fmul fast float %5008, %5004
  %5010 = call float @dx.op.unary.f32(i32 7, float %5009)  ; Saturate(value)
  %5011 = fcmp fast olt float %5010, 0x3F70101020000000
  br i1 %5011, label %5150, label %5012

; <label>:5012                                    ; preds = %4974, %4877
  %5013 = phi float [ %5010, %4974 ], [ %4871, %4877 ]
  %5014 = fmul fast float %5013, %4880
  %5015 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %5016 = extractvalue %dx.types.CBufRet.i32 %5015, 1
  %5017 = extractvalue %dx.types.CBufRet.i32 %5015, 0
  %5018 = add i32 %5017, 0
  %5019 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5018, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5020 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5019, %dx.types.Handle %105, float %4969, float %4970, float undef, float undef, i32 0, i32 0, i32 undef, float %4932, float %4933, float undef, float %4936, float %4937, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5021 = extractvalue %dx.types.ResRet.f32 %5020, 0
  %5022 = extractvalue %dx.types.ResRet.f32 %5020, 1
  %5023 = extractvalue %dx.types.ResRet.f32 %5020, 2
  %5024 = extractvalue %dx.types.ResRet.f32 %5020, 3
  %5025 = and i32 %5016, 255
  %5026 = uitofp i32 %5025 to float
  %5027 = lshr i32 %5016, 8
  %5028 = and i32 %5027, 255
  %5029 = uitofp i32 %5028 to float
  %5030 = fmul fast float %5024, %5026
  %5031 = fadd fast float %5030, %5029
  %5032 = fmul fast float %5031, 0x3F70101000000000
  %5033 = fadd fast float %5032, 0xBFB99999A0000000
  %5034 = call float @dx.op.unary.f32(i32 7, float %5033)  ; Saturate(value)
  %5035 = fmul fast float %5034, 0x3FF1C71C80000000
  %5036 = call float @dx.op.binary.f32(i32 36, float %5032, float 0x3FB99999A0000000)  ; FMin(a,b)
  %5037 = fsub fast float 1.000000e+00, %5035
  %5038 = call float @dx.op.unary.f32(i32 7, float %5037)  ; Saturate(value)
  %5039 = fmul fast float %5038, %5021
  %5040 = fmul fast float %5038, %5022
  %5041 = fmul fast float %5038, %5023
  %5042 = call float @dx.op.unary.f32(i32 7, float %5039)  ; Saturate(value)
  %5043 = call float @dx.op.unary.f32(i32 7, float %5040)  ; Saturate(value)
  %5044 = call float @dx.op.unary.f32(i32 7, float %5041)  ; Saturate(value)
  %5045 = fmul fast float %5035, %5021
  %5046 = fmul fast float %5035, %5022
  %5047 = fmul fast float %5035, %5023
  %5048 = fadd fast float %5045, %5036
  %5049 = fadd fast float %5046, %5036
  %5050 = fadd fast float %5047, %5036
  %5051 = call float @dx.op.unary.f32(i32 7, float %5048)  ; Saturate(value)
  %5052 = call float @dx.op.unary.f32(i32 7, float %5049)  ; Saturate(value)
  %5053 = call float @dx.op.unary.f32(i32 7, float %5050)  ; Saturate(value)
  %5054 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %5055 = extractvalue %dx.types.CBufRet.i32 %5054, 3
  %5056 = extractvalue %dx.types.CBufRet.i32 %5054, 2
  %5057 = add i32 %5056, 0
  %5058 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5057, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5059 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5058, %dx.types.Handle %105, float %4969, float %4970, float undef, float undef, i32 0, i32 0, i32 undef, float %4932, float %4933, float undef, float %4936, float %4937, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5060 = extractvalue %dx.types.ResRet.f32 %5059, 0
  %5061 = extractvalue %dx.types.ResRet.f32 %5059, 1
  %5062 = extractvalue %dx.types.ResRet.f32 %5059, 2
  %5063 = extractvalue %dx.types.ResRet.f32 %5059, 3
  %5064 = and i32 %5055, 255
  %5065 = uitofp i32 %5064 to float
  %5066 = lshr i32 %5055, 8
  %5067 = and i32 %5066, 255
  %5068 = uitofp i32 %5067 to float
  %5069 = lshr i32 %5055, 16
  %5070 = and i32 %5069, 255
  %5071 = uitofp i32 %5070 to float
  %5072 = fmul fast float %5071, 0x3F70101000000000
  %5073 = fmul fast float %5060, %5065
  %5074 = fadd fast float %5073, %5068
  %5075 = fmul fast float %5074, 0x3F70101000000000
  %5076 = fadd fast float %5061, -5.000000e-01
  %5077 = fadd fast float %5063, -5.000000e-01
  %5078 = fmul fast float %5076, %5072
  %5079 = fmul fast float %5077, %5072
  %5080 = fadd fast float %5078, 5.000000e-01
  %5081 = fadd fast float %5079, 5.000000e-01
  %5082 = fmul fast float %5080, 2.000000e+00
  %5083 = fadd fast float %5082, -1.000000e+00
  %5084 = fmul fast float %5081, 2.000000e+00
  %5085 = fadd fast float %5084, -1.000000e+00
  %5086 = fadd fast float %5083, %5085
  %5087 = fmul fast float %5086, 5.000000e-01
  %5088 = fsub fast float %5083, %5085
  %5089 = fmul fast float %5088, 5.000000e-01
  %5090 = call float @dx.op.unary.f32(i32 6, float %5087)  ; FAbs(value)
  %5091 = fsub fast float 1.000000e+00, %5090
  %5092 = call float @dx.op.unary.f32(i32 6, float %5089)  ; FAbs(value)
  %5093 = fsub fast float %5091, %5092
  %5094 = call float @dx.op.dot3.f32(i32 55, float %5087, float %5089, float %5093, float %5087, float %5089, float %5093)  ; Dot3(ax,ay,az,bx,by,bz)
  %5095 = call float @dx.op.unary.f32(i32 25, float %5094)  ; Rsqrt(value)
  %5096 = fmul fast float %5087, %5095
  %5097 = fmul fast float %5089, %5095
  %5098 = select i1 %4925, i32 %4915, i32 %4916
  %5099 = select i1 %4923, i32 %4914, i32 %5098
  %5100 = sitofp i32 %5099 to float
  %5101 = fmul fast float %5093, %5100
  %5102 = fmul fast float %5101, %5095
  %5103 = select i1 %4925, float %5102, float %5097
  %5104 = select i1 %4925, float %5097, float %5102
  %5105 = select i1 %4923, float %5102, float %5096
  %5106 = select i1 %4923, float %5097, float %5103
  %5107 = select i1 %4923, float %5096, float %5104
  %5108 = fsub fast float %5042, %4762
  %5109 = fsub fast float %5043, %4763
  %5110 = fsub fast float %5044, %4764
  %5111 = fmul fast float %5108, %5014
  %5112 = fmul fast float %5109, %5014
  %5113 = fmul fast float %5110, %5014
  %5114 = fadd fast float %5111, %4762
  %5115 = fadd fast float %5112, %4763
  %5116 = fadd fast float %5113, %4764
  %5117 = fsub fast float %5051, %4722
  %5118 = fsub fast float %5052, %4723
  %5119 = fsub fast float %5053, %4724
  %5120 = fmul fast float %5117, %5014
  %5121 = fmul fast float %5118, %5014
  %5122 = fmul fast float %5119, %5014
  %5123 = fadd fast float %5120, %4722
  %5124 = fadd fast float %5121, %4723
  %5125 = fadd fast float %5122, %4724
  %5126 = fadd fast float %5105, %4680
  %5127 = fadd fast float %5106, %4681
  %5128 = fadd fast float %5107, %4682
  %5129 = call float @dx.op.dot3.f32(i32 55, float %5126, float %5127, float %5128, float %5126, float %5127, float %5128)  ; Dot3(ax,ay,az,bx,by,bz)
  %5130 = call float @dx.op.unary.f32(i32 25, float %5129)  ; Rsqrt(value)
  %5131 = fmul fast float %5126, %5130
  %5132 = fmul fast float %5127, %5130
  %5133 = fmul fast float %5128, %5130
  %5134 = fsub fast float %5131, %4680
  %5135 = fsub fast float %5132, %4681
  %5136 = fsub fast float %5133, %4682
  %5137 = fmul fast float %5134, %5014
  %5138 = fmul fast float %5135, %5014
  %5139 = fmul fast float %5136, %5014
  %5140 = fadd fast float %5137, %4680
  %5141 = fadd fast float %5138, %4681
  %5142 = fadd fast float %5139, %4682
  %5143 = call float @dx.op.binary.f32(i32 36, float %4698, float %5062)  ; FMin(a,b)
  %5144 = fsub fast float %5143, %4698
  %5145 = fmul fast float %5144, %5014
  %5146 = fadd fast float %5145, %4698
  %5147 = fsub fast float %5075, %4725
  %5148 = fmul fast float %5147, %5014
  %5149 = fadd fast float %5148, %4725
  br label %5150

; <label>:5150                                    ; preds = %5012, %4974, %4876
  %5151 = phi float [ %5123, %5012 ], [ %4722, %4974 ], [ %4722, %4876 ]
  %5152 = phi float [ %5124, %5012 ], [ %4723, %4974 ], [ %4723, %4876 ]
  %5153 = phi float [ %5125, %5012 ], [ %4724, %4974 ], [ %4724, %4876 ]
  %5154 = phi float [ %5140, %5012 ], [ %4680, %4974 ], [ %4680, %4876 ]
  %5155 = phi float [ %5141, %5012 ], [ %4681, %4974 ], [ %4681, %4876 ]
  %5156 = phi float [ %5142, %5012 ], [ %4682, %4974 ], [ %4682, %4876 ]
  %5157 = phi float [ %5114, %5012 ], [ %4762, %4974 ], [ %4762, %4876 ]
  %5158 = phi float [ %5115, %5012 ], [ %4763, %4974 ], [ %4763, %4876 ]
  %5159 = phi float [ %5116, %5012 ], [ %4764, %4974 ], [ %4764, %4876 ]
  %5160 = phi float [ %5149, %5012 ], [ %4725, %4974 ], [ %4725, %4876 ]
  %5161 = phi float [ %5146, %5012 ], [ %4698, %4974 ], [ %4698, %4876 ]
  br i1 %4874, label %5162, label %5451

; <label>:5162                                    ; preds = %5150
  %5163 = call float @dx.op.unary.f32(i32 23, float %5161)  ; Log(value)
  %5164 = fmul fast float %5163, 4.000000e+00
  %5165 = call float @dx.op.unary.f32(i32 21, float %5164)  ; Exp(value)
  %5166 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %5167 = extractvalue %dx.types.CBufRet.f32 %5166, 0
  %5168 = fmul fast float %5167, %52
  %5169 = fmul fast float %5167, %53
  %5170 = fmul fast float %5167, %54
  %5171 = call float @dx.op.unary.f32(i32 6, float %61)  ; FAbs(value)
  %5172 = call float @dx.op.unary.f32(i32 6, float %62)  ; FAbs(value)
  %5173 = call float @dx.op.unary.f32(i32 6, float %63)  ; FAbs(value)
  %5174 = call float @dx.op.unary.f32(i32 23, float %5171)  ; Log(value)
  %5175 = call float @dx.op.unary.f32(i32 23, float %5172)  ; Log(value)
  %5176 = call float @dx.op.unary.f32(i32 23, float %5173)  ; Log(value)
  %5177 = fmul fast float %5174, 4.000000e+00
  %5178 = fmul fast float %5175, 4.000000e+00
  %5179 = fmul fast float %5176, 4.000000e+00
  %5180 = call float @dx.op.unary.f32(i32 21, float %5177)  ; Exp(value)
  %5181 = call float @dx.op.unary.f32(i32 21, float %5178)  ; Exp(value)
  %5182 = call float @dx.op.unary.f32(i32 21, float %5179)  ; Exp(value)
  %5183 = fadd fast float %5181, %5180
  %5184 = fadd fast float %5183, %5182
  %5185 = fdiv fast float 1.000000e+00, %5184
  %5186 = fmul fast float %5185, %5180
  %5187 = fcmp fast ogt float %61, 0.000000e+00
  %5188 = fcmp fast ogt float %62, 0.000000e+00
  %5189 = fcmp fast ogt float %63, 0.000000e+00
  %5190 = fcmp fast olt float %61, 0.000000e+00
  %5191 = fcmp fast olt float %62, 0.000000e+00
  %5192 = fcmp fast olt float %63, 0.000000e+00
  %5193 = zext i1 %5187 to i32
  %5194 = zext i1 %5188 to i32
  %5195 = zext i1 %5189 to i32
  %5196 = zext i1 %5190 to i32
  %5197 = zext i1 %5191 to i32
  %5198 = zext i1 %5192 to i32
  %5199 = sub nsw i32 %5193, %5196
  %5200 = sub nsw i32 %5194, %5197
  %5201 = sub nsw i32 %5195, %5198
  %5202 = call float @dx.op.unary.f32(i32 83, float %5168)  ; DerivCoarseX(value)
  %5203 = call float @dx.op.unary.f32(i32 83, float %5169)  ; DerivCoarseX(value)
  %5204 = call float @dx.op.unary.f32(i32 83, float %5170)  ; DerivCoarseX(value)
  %5205 = call float @dx.op.unary.f32(i32 84, float %5168)  ; DerivCoarseY(value)
  %5206 = call float @dx.op.unary.f32(i32 84, float %5169)  ; DerivCoarseY(value)
  %5207 = call float @dx.op.unary.f32(i32 84, float %5170)  ; DerivCoarseY(value)
  %5208 = fcmp fast ole float %273, %5186
  %5209 = fmul fast float %5185, %5183
  %5210 = fcmp fast ole float %273, %5209
  %5211 = select i1 %5210, float %5170, float %5168
  %5212 = select i1 %5210, float %5168, float %5169
  %5213 = select i1 %5208, float %5169, float %5211
  %5214 = select i1 %5208, float %5170, float %5212
  %5215 = select i1 %5210, float %5204, float %5202
  %5216 = select i1 %5210, float %5202, float %5203
  %5217 = select i1 %5208, float %5203, float %5215
  %5218 = select i1 %5208, float %5204, float %5216
  %5219 = select i1 %5210, float %5207, float %5205
  %5220 = select i1 %5210, float %5205, float %5206
  %5221 = select i1 %5208, float %5206, float %5219
  %5222 = select i1 %5208, float %5207, float %5220
  %5223 = call float @dx.op.unary.f32(i32 27, float %5213)  ; Round_ni(value)
  %5224 = call float @dx.op.unary.f32(i32 27, float %5214)  ; Round_ni(value)
  %5225 = fptosi float %5223 to i32
  %5226 = fptosi float %5224 to i32
  %5227 = xor i32 %5226, %5225
  %5228 = sitofp i32 %5227 to float
  %5229 = fptosi float %5228 to i32
  %5230 = sitofp i32 %5229 to float
  %5231 = fmul fast float %5230, 0x3FE3C6EF40000000
  %5232 = frem fast float %5223, 2.560000e+02
  %5233 = frem fast float %5224, 2.560000e+02
  %5234 = fptoui float %5232 to i32
  %5235 = fptoui float %5233 to i32
  %5236 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %26, i32 0, i32 %5234, i32 %5235, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5237 = extractvalue %dx.types.ResRet.f32 %5236, 0
  %5238 = extractvalue %dx.types.ResRet.f32 %5236, 1
  %5239 = extractvalue %dx.types.ResRet.f32 %5236, 2
  %5240 = fadd fast float %5237, %5231
  %5241 = fadd fast float %5238, %5231
  %5242 = fadd fast float %5239, %5231
  %5243 = call float @dx.op.unary.f32(i32 22, float %5240)  ; Frc(value)
  %5244 = call float @dx.op.unary.f32(i32 22, float %5241)  ; Frc(value)
  %5245 = call float @dx.op.unary.f32(i32 22, float %5242)  ; Frc(value)
  %5246 = fmul fast float %5245, 0x401921FB60000000
  %5247 = call float @dx.op.unary.f32(i32 13, float %5246)  ; Sin(value)
  %5248 = call float @dx.op.unary.f32(i32 12, float %5246)  ; Cos(value)
  %5249 = fsub fast float -0.000000e+00, %5248
  %5250 = fmul fast float %5248, %5213
  %5251 = call float @dx.op.tertiary.f32(i32 46, float %5247, float %5214, float %5250)  ; FMad(a,b,c)
  %5252 = fmul fast float %5247, %5213
  %5253 = call float @dx.op.tertiary.f32(i32 46, float %5249, float %5214, float %5252)  ; FMad(a,b,c)
  %5254 = fadd fast float %5251, %5243
  %5255 = fadd fast float %5253, %5244
  %5256 = extractvalue %dx.types.CBufRet.f32 %5166, 3
  %5257 = bitcast float %5256 to i32
  %5258 = icmp eq i32 %5257, 0
  br i1 %5258, label %5297, label %5259

; <label>:5259                                    ; preds = %5162
  %5260 = add i32 %5257, 0
  %5261 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5260, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5262 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5261, %dx.types.Handle %106, float %5254, float %5255, float undef, float undef, i32 0, i32 0, i32 undef, float %5217, float %5218, float undef, float %5221, float %5222, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5263 = extractvalue %dx.types.ResRet.f32 %5262, 0
  %5264 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %5265 = extractvalue %dx.types.CBufRet.f32 %5264, 1
  %5266 = extractvalue %dx.types.CBufRet.f32 %5264, 2
  %5267 = fsub fast float 1.000000e+00, %4872
  %5268 = call float @dx.op.binary.f32(i32 35, float %5267, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %5269 = bitcast float %4872 to i32
  %5270 = sitofp i32 %5269 to float
  %5271 = fadd fast float %5270, 0xC1CFBF8940000000
  %5272 = fmul fast float %5266, %5271
  %5273 = fadd fast float %5272, 0x41CFBF8940000000
  %5274 = fptosi float %5273 to i32
  %5275 = bitcast i32 %5274 to float
  %5276 = bitcast float %5268 to i32
  %5277 = sitofp i32 %5276 to float
  %5278 = fadd fast float %5277, 0xC1CFBF8940000000
  %5279 = fmul fast float %5278, %5266
  %5280 = fadd fast float %5279, 0x41CFBF8940000000
  %5281 = fptosi float %5280 to i32
  %5282 = bitcast i32 %5281 to float
  %5283 = fmul fast float %5275, %5265
  %5284 = fmul fast float %5282, %5265
  %5285 = fsub fast float %5268, %5283
  %5286 = fadd fast float %5284, %5268
  %5287 = call float @dx.op.unary.f32(i32 7, float %5285)  ; Saturate(value)
  %5288 = call float @dx.op.unary.f32(i32 7, float %5286)  ; Saturate(value)
  %5289 = fsub fast float %5263, %5287
  %5290 = fsub fast float %5288, %5287
  %5291 = bitcast float %5290 to i32
  %5292 = sub nsw i32 2129859010, %5291
  %5293 = bitcast i32 %5292 to float
  %5294 = fmul fast float %5293, %5289
  %5295 = call float @dx.op.unary.f32(i32 7, float %5294)  ; Saturate(value)
  %5296 = fcmp fast olt float %5295, 0x3F70101020000000
  br i1 %5296, label %5451, label %5297

; <label>:5297                                    ; preds = %5259, %5162
  %5298 = phi float [ %5295, %5259 ], [ %4872, %5162 ]
  %5299 = fmul fast float %5298, %5165
  %5300 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %5301 = extractvalue %dx.types.CBufRet.i32 %5300, 1
  %5302 = extractvalue %dx.types.CBufRet.i32 %5300, 0
  %5303 = add i32 %5302, 0
  %5304 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5303, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5305 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5304, %dx.types.Handle %105, float %5254, float %5255, float undef, float undef, i32 0, i32 0, i32 undef, float %5217, float %5218, float undef, float %5221, float %5222, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5306 = extractvalue %dx.types.ResRet.f32 %5305, 0
  %5307 = extractvalue %dx.types.ResRet.f32 %5305, 1
  %5308 = extractvalue %dx.types.ResRet.f32 %5305, 2
  %5309 = extractvalue %dx.types.ResRet.f32 %5305, 3
  %5310 = and i32 %5301, 255
  %5311 = uitofp i32 %5310 to float
  %5312 = lshr i32 %5301, 8
  %5313 = and i32 %5312, 255
  %5314 = uitofp i32 %5313 to float
  %5315 = fmul fast float %5309, %5311
  %5316 = fadd fast float %5315, %5314
  %5317 = fmul fast float %5316, 0x3F70101000000000
  %5318 = fadd fast float %5317, 0xBFB99999A0000000
  %5319 = call float @dx.op.unary.f32(i32 7, float %5318)  ; Saturate(value)
  %5320 = fmul fast float %5319, 0x3FF1C71C80000000
  %5321 = call float @dx.op.binary.f32(i32 36, float %5317, float 0x3FB99999A0000000)  ; FMin(a,b)
  %5322 = fsub fast float 1.000000e+00, %5320
  %5323 = call float @dx.op.unary.f32(i32 7, float %5322)  ; Saturate(value)
  %5324 = fmul fast float %5323, %5306
  %5325 = fmul fast float %5323, %5307
  %5326 = fmul fast float %5323, %5308
  %5327 = call float @dx.op.unary.f32(i32 7, float %5324)  ; Saturate(value)
  %5328 = call float @dx.op.unary.f32(i32 7, float %5325)  ; Saturate(value)
  %5329 = call float @dx.op.unary.f32(i32 7, float %5326)  ; Saturate(value)
  %5330 = fmul fast float %5320, %5306
  %5331 = fmul fast float %5320, %5307
  %5332 = fmul fast float %5320, %5308
  %5333 = fadd fast float %5330, %5321
  %5334 = fadd fast float %5331, %5321
  %5335 = fadd fast float %5332, %5321
  %5336 = call float @dx.op.unary.f32(i32 7, float %5333)  ; Saturate(value)
  %5337 = call float @dx.op.unary.f32(i32 7, float %5334)  ; Saturate(value)
  %5338 = call float @dx.op.unary.f32(i32 7, float %5335)  ; Saturate(value)
  %5339 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %5340 = extractvalue %dx.types.CBufRet.i32 %5339, 3
  %5341 = extractvalue %dx.types.CBufRet.i32 %5339, 2
  %5342 = add i32 %5341, 0
  %5343 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5342, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5344 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5343, %dx.types.Handle %105, float %5254, float %5255, float undef, float undef, i32 0, i32 0, i32 undef, float %5217, float %5218, float undef, float %5221, float %5222, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5345 = extractvalue %dx.types.ResRet.f32 %5344, 0
  %5346 = extractvalue %dx.types.ResRet.f32 %5344, 1
  %5347 = extractvalue %dx.types.ResRet.f32 %5344, 2
  %5348 = extractvalue %dx.types.ResRet.f32 %5344, 3
  %5349 = and i32 %5340, 255
  %5350 = uitofp i32 %5349 to float
  %5351 = lshr i32 %5340, 8
  %5352 = and i32 %5351, 255
  %5353 = uitofp i32 %5352 to float
  %5354 = lshr i32 %5340, 16
  %5355 = and i32 %5354, 255
  %5356 = uitofp i32 %5355 to float
  %5357 = fmul fast float %5356, 0x3F70101000000000
  %5358 = fmul fast float %5345, %5350
  %5359 = fadd fast float %5358, %5353
  %5360 = fmul fast float %5359, 0x3F70101000000000
  %5361 = fadd fast float %5346, -5.000000e-01
  %5362 = fadd fast float %5348, -5.000000e-01
  %5363 = fmul fast float %5361, %5357
  %5364 = fmul fast float %5362, %5357
  %5365 = fadd fast float %5363, 5.000000e-01
  %5366 = fadd fast float %5364, 5.000000e-01
  %5367 = fmul fast float %5365, 2.000000e+00
  %5368 = fadd fast float %5367, -1.000000e+00
  %5369 = fmul fast float %5366, 2.000000e+00
  %5370 = fadd fast float %5369, -1.000000e+00
  %5371 = fadd fast float %5368, %5370
  %5372 = fmul fast float %5371, 5.000000e-01
  %5373 = fsub fast float %5368, %5370
  %5374 = fmul fast float %5373, 5.000000e-01
  %5375 = call float @dx.op.unary.f32(i32 6, float %5372)  ; FAbs(value)
  %5376 = fsub fast float 1.000000e+00, %5375
  %5377 = call float @dx.op.unary.f32(i32 6, float %5374)  ; FAbs(value)
  %5378 = fsub fast float %5376, %5377
  %5379 = call float @dx.op.dot3.f32(i32 55, float %5372, float %5374, float %5378, float %5372, float %5374, float %5378)  ; Dot3(ax,ay,az,bx,by,bz)
  %5380 = call float @dx.op.unary.f32(i32 25, float %5379)  ; Rsqrt(value)
  %5381 = fmul fast float %5372, %5380
  %5382 = fmul fast float %5374, %5380
  %5383 = select i1 %5210, i32 %5200, i32 %5201
  %5384 = select i1 %5208, i32 %5199, i32 %5383
  %5385 = sitofp i32 %5384 to float
  %5386 = fmul fast float %5378, %5385
  %5387 = fmul fast float %5386, %5380
  %5388 = select i1 %5210, float %5387, float %5382
  %5389 = select i1 %5210, float %5382, float %5387
  %5390 = select i1 %5208, float %5387, float %5381
  %5391 = select i1 %5208, float %5382, float %5388
  %5392 = select i1 %5208, float %5381, float %5389
  %5393 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 375)  ; CBufferLoadLegacy(handle,regIndex)
  %5394 = extractvalue %dx.types.CBufRet.f32 %5393, 0
  %5395 = fptoui float %5394 to i32
  %5396 = add i32 %5395, 0
  %5397 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5396, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5398 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5397, %dx.types.Handle %105, float %5254, float %5255, float undef, float undef, i32 0, i32 0, i32 undef, float %5217, float %5218, float undef, float %5221, float %5222, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5399 = extractvalue %dx.types.ResRet.f32 %5398, 0
  %5400 = fsub fast float %5327, %5157
  %5401 = fsub fast float %5328, %5158
  %5402 = fsub fast float %5329, %5159
  %5403 = fmul fast float %5400, %5299
  %5404 = fmul fast float %5401, %5299
  %5405 = fmul fast float %5402, %5299
  %5406 = fadd fast float %5403, %5157
  %5407 = fadd fast float %5404, %5158
  %5408 = fadd fast float %5405, %5159
  %5409 = fsub fast float %5336, %5151
  %5410 = fsub fast float %5337, %5152
  %5411 = fsub fast float %5338, %5153
  %5412 = fmul fast float %5409, %5299
  %5413 = fmul fast float %5410, %5299
  %5414 = fmul fast float %5411, %5299
  %5415 = fadd fast float %5412, %5151
  %5416 = fadd fast float %5413, %5152
  %5417 = fadd fast float %5414, %5153
  %5418 = fadd fast float %5390, %5154
  %5419 = fadd fast float %5391, %5155
  %5420 = fadd fast float %5392, %5156
  %5421 = call float @dx.op.dot3.f32(i32 55, float %5418, float %5419, float %5420, float %5418, float %5419, float %5420)  ; Dot3(ax,ay,az,bx,by,bz)
  %5422 = call float @dx.op.unary.f32(i32 25, float %5421)  ; Rsqrt(value)
  %5423 = fmul fast float %5422, %5418
  %5424 = fmul fast float %5422, %5419
  %5425 = fmul fast float %5422, %5420
  %5426 = fsub fast float %5423, %5154
  %5427 = fsub fast float %5424, %5155
  %5428 = fsub fast float %5425, %5156
  %5429 = fmul fast float %5426, %5299
  %5430 = fmul fast float %5427, %5299
  %5431 = fmul fast float %5428, %5299
  %5432 = fadd fast float %5429, %5154
  %5433 = fadd fast float %5430, %5155
  %5434 = fadd fast float %5431, %5156
  %5435 = call float @dx.op.binary.f32(i32 36, float %5161, float %5347)  ; FMin(a,b)
  %5436 = fsub fast float %5435, %5161
  %5437 = fmul fast float %5436, %5299
  %5438 = fadd fast float %5437, %5161
  %5439 = fsub fast float %5360, %5160
  %5440 = fmul fast float %5439, %5299
  %5441 = fadd fast float %5440, %5160
  %5442 = fsub fast float %5399, %4766
  %5443 = fsub fast float %5399, %4767
  %5444 = fsub fast float %5399, %4768
  %5445 = fmul fast float %5442, %5299
  %5446 = fmul fast float %5443, %5299
  %5447 = fmul fast float %5444, %5299
  %5448 = fadd fast float %5445, %4766
  %5449 = fadd fast float %5446, %4767
  %5450 = fadd fast float %5447, %4768
  br label %5451

; <label>:5451                                    ; preds = %5297, %5259, %5150, %4866
  %5452 = phi float [ %5415, %5297 ], [ %5151, %5259 ], [ %5151, %5150 ], [ %4722, %4866 ]
  %5453 = phi float [ %5416, %5297 ], [ %5152, %5259 ], [ %5152, %5150 ], [ %4723, %4866 ]
  %5454 = phi float [ %5417, %5297 ], [ %5153, %5259 ], [ %5153, %5150 ], [ %4724, %4866 ]
  %5455 = phi float [ %5432, %5297 ], [ %5154, %5259 ], [ %5154, %5150 ], [ %4680, %4866 ]
  %5456 = phi float [ %5433, %5297 ], [ %5155, %5259 ], [ %5155, %5150 ], [ %4681, %4866 ]
  %5457 = phi float [ %5434, %5297 ], [ %5156, %5259 ], [ %5156, %5150 ], [ %4682, %4866 ]
  %5458 = phi float [ %5448, %5297 ], [ %4766, %5259 ], [ %4766, %5150 ], [ %4766, %4866 ]
  %5459 = phi float [ %5449, %5297 ], [ %4767, %5259 ], [ %4767, %5150 ], [ %4767, %4866 ]
  %5460 = phi float [ %5450, %5297 ], [ %4768, %5259 ], [ %4768, %5150 ], [ %4768, %4866 ]
  %5461 = phi float [ %5406, %5297 ], [ %5157, %5259 ], [ %5157, %5150 ], [ %4762, %4866 ]
  %5462 = phi float [ %5407, %5297 ], [ %5158, %5259 ], [ %5158, %5150 ], [ %4763, %4866 ]
  %5463 = phi float [ %5408, %5297 ], [ %5159, %5259 ], [ %5159, %5150 ], [ %4764, %4866 ]
  %5464 = phi float [ %5441, %5297 ], [ %5160, %5259 ], [ %5160, %5150 ], [ %4725, %4866 ]
  %5465 = phi float [ %5438, %5297 ], [ %5161, %5259 ], [ %5161, %5150 ], [ %4698, %4866 ]
  %5466 = fcmp fast une float %4870, 0.000000e+00
  %5467 = call float @dx.op.dot3.f32(i32 55, float %188, float %189, float %190, float %188, float %189, float %190)  ; Dot3(ax,ay,az,bx,by,bz)
  %5468 = call float @dx.op.unary.f32(i32 25, float %5467)  ; Rsqrt(value)
  br i1 %5466, label %5476, label %5469

; <label>:5469                                    ; preds = %5451
  %5470 = fmul fast float %5468, %188
  %5471 = fmul fast float %5468, %189
  %5472 = fmul fast float %5468, %190
  %5473 = fsub fast float -0.000000e+00, %5470
  %5474 = fsub fast float -0.000000e+00, %5471
  %5475 = fsub fast float -0.000000e+00, %5472
  br label %5643

; <label>:5476                                    ; preds = %5451
  %5477 = fmul fast float %188, %5468
  %5478 = fsub fast float -0.000000e+00, %5477
  %5479 = fmul fast float %189, %5468
  %5480 = fsub fast float -0.000000e+00, %5479
  %5481 = fmul fast float %190, %5468
  %5482 = fsub fast float -0.000000e+00, %5481
  %5483 = call float @dx.op.dot3.f32(i32 55, float %5478, float %5480, float %5482, float %116, float %117, float %118)  ; Dot3(ax,ay,az,bx,by,bz)
  %5484 = fmul fast float %4870, 2.500000e+00
  %5485 = call float @dx.op.unary.f32(i32 7, float %5484)  ; Saturate(value)
  %5486 = fmul fast float %4870, 0x4013FFFFE0000000
  %5487 = fadd fast float %5486, 0xBFFFFFFFE0000000
  %5488 = call float @dx.op.unary.f32(i32 7, float %5487)  ; Saturate(value)
  %5489 = fmul fast float %4870, 0x4004000020000000
  %5490 = fadd fast float %5489, 0xBFF8000040000000
  %5491 = call float @dx.op.unary.f32(i32 7, float %5490)  ; Saturate(value)
  %5492 = fmul fast float %4704, 1.000000e+01
  %5493 = call float @dx.op.unary.f32(i32 7, float %5492)  ; Saturate(value)
  %5494 = fmul fast float %5493, 2.000000e+00
  %5495 = fsub fast float 3.000000e+00, %5494
  %5496 = fmul fast float %5493, %5493
  %5497 = fmul fast float %5496, %5495
  %5498 = fsub fast float 1.000000e+00, %5497
  %5499 = fsub fast float 0x3FE3333340000000, %5464
  %5500 = fmul fast float %5499, 0x400AAAAAA0000000
  %5501 = call float @dx.op.unary.f32(i32 7, float %5500)  ; Saturate(value)
  %5502 = fmul fast float %5498, %5501
  %5503 = fmul fast float %5461, 0x3FEA2B8620000000
  %5504 = fmul fast float %5462, 0x3FEA2B8620000000
  %5505 = fmul fast float %5463, 0x3FEA2B8620000000
  %5506 = fadd fast float %5503, 0x3FC81DFBA0000000
  %5507 = fmul fast float %5506, %5461
  %5508 = fadd fast float %5507, 0x3F910E6020000000
  %5509 = fadd fast float %5504, 0x3FC81DFBA0000000
  %5510 = fmul fast float %5509, %5462
  %5511 = fadd fast float %5510, 0x3F910E6020000000
  %5512 = fadd fast float %5505, 0x3FC81DFBA0000000
  %5513 = fmul fast float %5512, %5463
  %5514 = fadd fast float %5513, 0x3F910E6020000000
  %5515 = call float @dx.op.unary.f32(i32 7, float %5508)  ; Saturate(value)
  %5516 = call float @dx.op.unary.f32(i32 7, float %5511)  ; Saturate(value)
  %5517 = call float @dx.op.unary.f32(i32 7, float %5514)  ; Saturate(value)
  %5518 = fsub fast float %5515, %5461
  %5519 = fsub fast float %5516, %5462
  %5520 = fsub fast float %5517, %5463
  %5521 = fmul fast float %5518, %5485
  %5522 = fmul fast float %5521, %5502
  %5523 = fmul fast float %5519, %5485
  %5524 = fmul fast float %5523, %5502
  %5525 = fmul fast float %5520, %5485
  %5526 = fmul fast float %5525, %5502
  %5527 = fadd fast float %5522, %5461
  %5528 = fadd fast float %5524, %5462
  %5529 = fadd fast float %5526, %5463
  %5530 = fmul fast float %5465, %5465
  %5531 = fmul fast float %5530, %5530
  %5532 = fadd fast float %5488, 1.000000e+00
  %5533 = fsub fast float %5532, %5502
  %5534 = call float @dx.op.unary.f32(i32 7, float %5533)  ; Saturate(value)
  %5535 = call float @dx.op.dot3.f32(i32 55, float %116, float %117, float %118, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5536 = call float @dx.op.unary.f32(i32 7, float %5535)  ; Saturate(value)
  %5537 = fsub fast float 1.000000e+00, %5531
  %5538 = call float @dx.op.binary.f32(i32 36, float %5534, float %5537)  ; FMin(a,b)
  %5539 = call float @dx.op.unary.f32(i32 7, float %5491)  ; Saturate(value)
  %5540 = call float @dx.op.binary.f32(i32 35, float %5538, float %5539)  ; FMax(a,b)
  %5541 = fadd fast float %5536, 0xBFE4CCCCC0000000
  %5542 = fmul fast float %5541, 0x4006DB6DA0000000
  %5543 = call float @dx.op.unary.f32(i32 7, float %5542)  ; Saturate(value)
  %5544 = fmul fast float %5543, 2.000000e+00
  %5545 = fsub fast float 3.000000e+00, %5544
  %5546 = bitcast float %5452 to i32
  %5547 = ashr i32 %5546, 1
  %5548 = add nsw i32 %5547, 532487669
  %5549 = bitcast i32 %5548 to float
  %5550 = fsub fast float 1.000000e+00, %5549
  %5551 = bitcast float %5550 to i32
  %5552 = sub nsw i32 2129859010, %5551
  %5553 = bitcast i32 %5552 to float
  %5554 = fmul fast float %5553, 2.000000e+00
  %5555 = bitcast float %5453 to i32
  %5556 = ashr i32 %5555, 1
  %5557 = add nsw i32 %5556, 532487669
  %5558 = bitcast i32 %5557 to float
  %5559 = fsub fast float 1.000000e+00, %5558
  %5560 = bitcast float %5559 to i32
  %5561 = sub nsw i32 2129859010, %5560
  %5562 = bitcast i32 %5561 to float
  %5563 = fmul fast float %5562, 2.000000e+00
  %5564 = bitcast float %5454 to i32
  %5565 = ashr i32 %5564, 1
  %5566 = add nsw i32 %5565, 532487669
  %5567 = bitcast i32 %5566 to float
  %5568 = fsub fast float 1.000000e+00, %5567
  %5569 = bitcast float %5568 to i32
  %5570 = sub nsw i32 2129859010, %5569
  %5571 = bitcast i32 %5570 to float
  %5572 = fmul fast float %5571, 2.000000e+00
  %5573 = fsub fast float 0x4002A9FBE0000000, %5554
  %5574 = fadd fast float %5554, 0x3FD54FDF00000000
  %5575 = bitcast float %5574 to i32
  %5576 = sub nsw i32 2129859010, %5575
  %5577 = bitcast i32 %5576 to float
  %5578 = fmul fast float %5577, %5573
  %5579 = fmul fast float %5578, %5578
  %5580 = fsub fast float 0x4002A9FBE0000000, %5563
  %5581 = fadd fast float %5563, 0x3FD54FDF00000000
  %5582 = bitcast float %5581 to i32
  %5583 = sub nsw i32 2129859010, %5582
  %5584 = bitcast i32 %5583 to float
  %5585 = fmul fast float %5584, %5580
  %5586 = fmul fast float %5585, %5585
  %5587 = fsub fast float 0x4002A9FBE0000000, %5572
  %5588 = fadd fast float %5572, 0x3FD54FDF00000000
  %5589 = bitcast float %5588 to i32
  %5590 = sub nsw i32 2129859010, %5589
  %5591 = bitcast i32 %5590 to float
  %5592 = fmul fast float %5591, %5587
  %5593 = fmul fast float %5592, %5592
  %5594 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5579)  ; FMax(a,b)
  %5595 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5586)  ; FMax(a,b)
  %5596 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5593)  ; FMax(a,b)
  %5597 = fsub fast float 1.000000e+00, %5483
  %5598 = fadd fast float %5597, %5498
  %5599 = call float @dx.op.unary.f32(i32 7, float %5598)  ; Saturate(value)
  %5600 = fsub fast float 1.000000e+00, %4851
  %5601 = fmul fast float %5540, %5600
  %5602 = fmul fast float %5543, %5543
  %5603 = fmul fast float %5602, %5601
  %5604 = fmul fast float %5603, %5545
  %5605 = fmul fast float %5600, 0xBFE99999A0000000
  %5606 = fmul fast float %5605, %5485
  %5607 = fmul fast float %5606, %5502
  %5608 = fadd fast float %5607, 1.000000e+00
  %5609 = fadd fast float %5464, -1.000000e+00
  %5610 = fmul fast float %5608, %5609
  %5611 = fadd fast float %5610, 1.000000e+00
  %5612 = fsub fast float %5594, %5452
  %5613 = fsub fast float %5595, %5453
  %5614 = fsub fast float %5596, %5454
  %5615 = fmul fast float %5604, %5612
  %5616 = fmul fast float %5604, %5613
  %5617 = fmul fast float %5604, %5614
  %5618 = fadd fast float %5615, %5452
  %5619 = fadd fast float %5616, %5453
  %5620 = fadd fast float %5617, %5454
  %5621 = fsub fast float %116, %5455
  %5622 = fsub fast float %117, %5456
  %5623 = fsub fast float %118, %5457
  %5624 = fmul fast float %5604, %5621
  %5625 = fmul fast float %5604, %5622
  %5626 = fmul fast float %5604, %5623
  %5627 = fadd fast float %5624, %5455
  %5628 = fadd fast float %5625, %5456
  %5629 = fadd fast float %5626, %5457
  %5630 = fmul fast float %5604, %5599
  %5631 = call float @dx.op.unary.f32(i32 7, float %5611)  ; Saturate(value)
  %5632 = fsub fast float 1.000000e+00, %5631
  %5633 = fmul fast float %5630, %5632
  %5634 = fadd fast float %5633, %5631
  %5635 = fsub fast float 1.000000e+00, %5465
  %5636 = fmul fast float %5604, %5635
  %5637 = fadd fast float %5636, %5465
  %5638 = call float @dx.op.dot3.f32(i32 55, float %5627, float %5628, float %5629, float %5627, float %5628, float %5629)  ; Dot3(ax,ay,az,bx,by,bz)
  %5639 = call float @dx.op.unary.f32(i32 25, float %5638)  ; Rsqrt(value)
  %5640 = fmul fast float %5627, %5639
  %5641 = fmul fast float %5628, %5639
  %5642 = fmul fast float %5629, %5639
  br label %5643

; <label>:5643                                    ; preds = %5476, %5469
  %5644 = phi float [ %5475, %5469 ], [ %5482, %5476 ]
  %5645 = phi float [ %5474, %5469 ], [ %5480, %5476 ]
  %5646 = phi float [ %5473, %5469 ], [ %5478, %5476 ]
  %5647 = phi float [ %5472, %5469 ], [ %5481, %5476 ]
  %5648 = phi float [ %5471, %5469 ], [ %5479, %5476 ]
  %5649 = phi float [ %5470, %5469 ], [ %5477, %5476 ]
  %5650 = phi float [ %5452, %5469 ], [ %5618, %5476 ]
  %5651 = phi float [ %5453, %5469 ], [ %5619, %5476 ]
  %5652 = phi float [ %5454, %5469 ], [ %5620, %5476 ]
  %5653 = phi float [ %5455, %5469 ], [ %5640, %5476 ]
  %5654 = phi float [ %5456, %5469 ], [ %5641, %5476 ]
  %5655 = phi float [ %5457, %5469 ], [ %5642, %5476 ]
  %5656 = phi float [ %5461, %5469 ], [ %5527, %5476 ]
  %5657 = phi float [ %5462, %5469 ], [ %5528, %5476 ]
  %5658 = phi float [ %5463, %5469 ], [ %5529, %5476 ]
  %5659 = phi float [ %5464, %5469 ], [ %5634, %5476 ]
  %5660 = phi float [ %5465, %5469 ], [ %5637, %5476 ]
  %5661 = select i1 %262, float 0.000000e+00, float %5652
  %5662 = call float @dx.op.dot3.f32(i32 55, float %5653, float %5654, float %5655, float %5646, float %5645, float %5644)  ; Dot3(ax,ay,az,bx,by,bz)
  %5663 = call float @dx.op.unary.f32(i32 7, float %5662)  ; Saturate(value)
  %5664 = call float @dx.op.dot3.f32(i32 55, float %5649, float %5648, float %5647, float %5653, float %5654, float %5655)  ; Dot3(ax,ay,az,bx,by,bz)
  %5665 = fmul fast float %5664, 2.000000e+00
  %5666 = fmul fast float %5665, %5653
  %5667 = fmul fast float %5665, %5654
  %5668 = fmul fast float %5665, %5655
  %5669 = fsub fast float %5649, %5666
  %5670 = fsub fast float %5648, %5667
  %5671 = fsub fast float %5647, %5668
  %5672 = call float @dx.op.binary.f32(i32 36, float %5660, float 1.000000e+00)  ; FMin(a,b)
  %5673 = fsub fast float 1.000000e+00, %5672
  %5674 = bitcast float %5673 to i32
  %5675 = ashr i32 %5674, 1
  %5676 = add nsw i32 %5675, 532487669
  %5677 = bitcast i32 %5676 to float
  %5678 = fsub fast float 1.000000e+00, %5659
  %5679 = call float @dx.op.binary.f32(i32 35, float %5678, float 0x3F847AE140000000)  ; FMax(a,b)
  %5680 = fmul fast float %5679, %5679
  %5681 = fmul fast float %5680, %5680
  %5682 = call float @dx.op.unary.f32(i32 7, float %5663)  ; Saturate(value)
  %5683 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %43, float %5677, float %5681, float %5682, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5684 = extractvalue %dx.types.ResRet.f32 %5683, 0
  %5685 = fsub fast float 1.000000e+00, %5660
  %5686 = bitcast float %5685 to i32
  %5687 = sub nsw i32 2129859010, %5686
  %5688 = call float @dx.op.dot3.f32(i32 55, float %76, float %72, float %68, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5689 = fmul fast float %5688, 0x3FD20DD760000000
  %5690 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %76)  ; FMax(a,b)
  %5691 = call float @dx.op.dot3.f32(i32 55, float %77, float %78, float %79, float %77, float %78, float %79)  ; Dot3(ax,ay,az,bx,by,bz)
  %5692 = fcmp fast oeq float %5691, 0.000000e+00
  %5693 = fcmp fast oeq float %5690, 0.000000e+00
  %5694 = or i1 %5693, %5692
  br i1 %5694, label %5724, label %5695

; <label>:5695                                    ; preds = %5643
  %5696 = fsub fast float -0.000000e+00, %79
  %5697 = fsub fast float -0.000000e+00, %77
  %5698 = call float @dx.op.unary.f32(i32 24, float %5691)  ; Sqrt(value)
  %5699 = fdiv fast float %5698, %5690
  %5700 = fcmp fast ogt float %5699, 0x3FFB6F8900000000
  %5701 = select i1 %5700, float 0x3FFB6F8900000000, float %5699
  %5702 = fmul fast float %5701, 0x3FE8A23460000000
  %5703 = call float @dx.op.unary.f32(i32 7, float %5702)  ; Saturate(value)
  %5704 = call float @dx.op.binary.f32(i32 35, float %5701, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5705 = fmul fast float %5703, %5690
  %5706 = fmul fast float %5704, 0x3FF279A740000000
  %5707 = fadd fast float %5706, -1.000000e+00
  %5708 = call float @dx.op.dot3.f32(i32 55, float %5696, float %5697, float %78, float %5696, float %5697, float %78)  ; Dot3(ax,ay,az,bx,by,bz)
  %5709 = call float @dx.op.unary.f32(i32 25, float %5708)  ; Rsqrt(value)
  %5710 = fmul fast float %5709, %5696
  %5711 = fmul fast float %5709, %5697
  %5712 = fmul fast float %5709, %78
  %5713 = fmul fast float %5707, %5707
  %5714 = fsub fast float 1.000000e+00, %5713
  %5715 = fmul fast float %5704, 0x40005F8BE0000000
  %5716 = fsub fast float 0x400C5BF8A0000000, %5715
  %5717 = fdiv fast float %5705, %5716
  %5718 = fmul fast float %5717, 0x3FEE31C3C0000000
  %5719 = fmul fast float %5718, %5714
  %5720 = fmul fast float %5704, 0x3FDACB7480000000
  %5721 = fadd fast float %5720, 0xBFD7347680000000
  %5722 = fmul fast float %5721, %5717
  %5723 = fmul fast float %5722, %5714
  br label %5724

; <label>:5724                                    ; preds = %5695, %5643
  %5725 = phi float [ %5710, %5695 ], [ 0.000000e+00, %5643 ]
  %5726 = phi float [ %5711, %5695 ], [ 0.000000e+00, %5643 ]
  %5727 = phi float [ %5712, %5695 ], [ 0.000000e+00, %5643 ]
  %5728 = phi float [ %5719, %5695 ], [ 0.000000e+00, %5643 ]
  %5729 = phi float [ %5723, %5695 ], [ 0.000000e+00, %5643 ]
  %5730 = call float @dx.op.dot3.f32(i32 55, float %5725, float %5726, float %5727, float %5653, float %5654, float %5655)  ; Dot3(ax,ay,az,bx,by,bz)
  %5731 = fmul fast float %5730, 0x3FDF454380000000
  %5732 = fmul fast float %5730, %5730
  %5733 = fmul fast float %5732, 0x3FEE471020000000
  %5734 = fadd fast float %5733, 0xBFD42F6020000000
  %5735 = fmul fast float %5690, 0x3FD20DD760000000
  %5736 = fmul fast float %5734, %5729
  %5737 = fadd fast float %5736, %5735
  %5738 = fmul fast float %5731, %5728
  %5739 = fadd fast float %5737, %5738
  %5740 = fsub fast float %5737, %5738
  %5741 = call float @dx.op.dot3.f32(i32 55, float %5725, float %5726, float %5727, float %5669, float %5670, float %5671)  ; Dot3(ax,ay,az,bx,by,bz)
  %5742 = fmul fast float %5741, 0x3FDF454380000000
  %5743 = fmul fast float %5741, %5741
  %5744 = fmul fast float %5743, 0x3FEE471020000000
  %5745 = fadd fast float %5744, 0xBFD42F6020000000
  %5746 = call float @dx.op.dot3.f32(i32 55, float %5690, float %5728, float %5729, float 0x3FD20DD760000000, float %5742, float %5745)  ; Dot3(ax,ay,az,bx,by,bz)
  %5747 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %72)  ; FMax(a,b)
  %5748 = call float @dx.op.dot3.f32(i32 55, float %73, float %74, float %75, float %73, float %74, float %75)  ; Dot3(ax,ay,az,bx,by,bz)
  %5749 = fcmp fast oeq float %5748, 0.000000e+00
  %5750 = fcmp fast oeq float %5747, 0.000000e+00
  %5751 = or i1 %5750, %5749
  br i1 %5751, label %5781, label %5752

; <label>:5752                                    ; preds = %5724
  %5753 = fsub fast float -0.000000e+00, %75
  %5754 = fsub fast float -0.000000e+00, %73
  %5755 = call float @dx.op.unary.f32(i32 24, float %5748)  ; Sqrt(value)
  %5756 = fdiv fast float %5755, %5747
  %5757 = fcmp fast ogt float %5756, 0x3FFB6F8900000000
  %5758 = select i1 %5757, float 0x3FFB6F8900000000, float %5756
  %5759 = fmul fast float %5758, 0x3FE8A23460000000
  %5760 = call float @dx.op.unary.f32(i32 7, float %5759)  ; Saturate(value)
  %5761 = call float @dx.op.binary.f32(i32 35, float %5758, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5762 = fmul fast float %5760, %5747
  %5763 = fmul fast float %5761, 0x3FF279A740000000
  %5764 = fadd fast float %5763, -1.000000e+00
  %5765 = call float @dx.op.dot3.f32(i32 55, float %5753, float %5754, float %74, float %5753, float %5754, float %74)  ; Dot3(ax,ay,az,bx,by,bz)
  %5766 = call float @dx.op.unary.f32(i32 25, float %5765)  ; Rsqrt(value)
  %5767 = fmul fast float %5766, %5753
  %5768 = fmul fast float %5766, %5754
  %5769 = fmul fast float %5766, %74
  %5770 = fmul fast float %5764, %5764
  %5771 = fsub fast float 1.000000e+00, %5770
  %5772 = fmul fast float %5761, 0x40005F8BE0000000
  %5773 = fsub fast float 0x400C5BF8A0000000, %5772
  %5774 = fdiv fast float %5762, %5773
  %5775 = fmul fast float %5774, 0x3FEE31C3C0000000
  %5776 = fmul fast float %5775, %5771
  %5777 = fmul fast float %5761, 0x3FDACB7480000000
  %5778 = fadd fast float %5777, 0xBFD7347680000000
  %5779 = fmul fast float %5778, %5774
  %5780 = fmul fast float %5779, %5771
  br label %5781

; <label>:5781                                    ; preds = %5752, %5724
  %5782 = phi float [ %5767, %5752 ], [ 0.000000e+00, %5724 ]
  %5783 = phi float [ %5768, %5752 ], [ 0.000000e+00, %5724 ]
  %5784 = phi float [ %5769, %5752 ], [ 0.000000e+00, %5724 ]
  %5785 = phi float [ %5776, %5752 ], [ 0.000000e+00, %5724 ]
  %5786 = phi float [ %5780, %5752 ], [ 0.000000e+00, %5724 ]
  %5787 = call float @dx.op.dot3.f32(i32 55, float %5782, float %5783, float %5784, float %5653, float %5654, float %5655)  ; Dot3(ax,ay,az,bx,by,bz)
  %5788 = fmul fast float %5787, 0x3FDF454380000000
  %5789 = fmul fast float %5787, %5787
  %5790 = fmul fast float %5789, 0x3FEE471020000000
  %5791 = fadd fast float %5790, 0xBFD42F6020000000
  %5792 = fmul fast float %5747, 0x3FD20DD760000000
  %5793 = fmul fast float %5791, %5786
  %5794 = fadd fast float %5793, %5792
  %5795 = fmul fast float %5788, %5785
  %5796 = fadd fast float %5794, %5795
  %5797 = fsub fast float %5794, %5795
  %5798 = call float @dx.op.dot3.f32(i32 55, float %5782, float %5783, float %5784, float %5669, float %5670, float %5671)  ; Dot3(ax,ay,az,bx,by,bz)
  %5799 = fmul fast float %5798, 0x3FDF454380000000
  %5800 = fmul fast float %5798, %5798
  %5801 = fmul fast float %5800, 0x3FEE471020000000
  %5802 = fadd fast float %5801, 0xBFD42F6020000000
  %5803 = call float @dx.op.dot3.f32(i32 55, float %5747, float %5785, float %5786, float 0x3FD20DD760000000, float %5799, float %5802)  ; Dot3(ax,ay,az,bx,by,bz)
  %5804 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %68)  ; FMax(a,b)
  %5805 = call float @dx.op.dot3.f32(i32 55, float %69, float %70, float %71, float %69, float %70, float %71)  ; Dot3(ax,ay,az,bx,by,bz)
  %5806 = fcmp fast oeq float %5805, 0.000000e+00
  %5807 = fcmp fast oeq float %5804, 0.000000e+00
  %5808 = or i1 %5807, %5806
  br i1 %5808, label %5838, label %5809

; <label>:5809                                    ; preds = %5781
  %5810 = fsub fast float -0.000000e+00, %71
  %5811 = fsub fast float -0.000000e+00, %69
  %5812 = call float @dx.op.unary.f32(i32 24, float %5805)  ; Sqrt(value)
  %5813 = fdiv fast float %5812, %5804
  %5814 = fcmp fast ogt float %5813, 0x3FFB6F8900000000
  %5815 = select i1 %5814, float 0x3FFB6F8900000000, float %5813
  %5816 = fmul fast float %5815, 0x3FE8A23460000000
  %5817 = call float @dx.op.unary.f32(i32 7, float %5816)  ; Saturate(value)
  %5818 = call float @dx.op.binary.f32(i32 35, float %5815, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5819 = fmul fast float %5817, %5804
  %5820 = fmul fast float %5818, 0x3FF279A740000000
  %5821 = fadd fast float %5820, -1.000000e+00
  %5822 = call float @dx.op.dot3.f32(i32 55, float %5810, float %5811, float %70, float %5810, float %5811, float %70)  ; Dot3(ax,ay,az,bx,by,bz)
  %5823 = call float @dx.op.unary.f32(i32 25, float %5822)  ; Rsqrt(value)
  %5824 = fmul fast float %5823, %5810
  %5825 = fmul fast float %5823, %5811
  %5826 = fmul fast float %5823, %70
  %5827 = fmul fast float %5821, %5821
  %5828 = fsub fast float 1.000000e+00, %5827
  %5829 = fmul fast float %5818, 0x40005F8BE0000000
  %5830 = fsub fast float 0x400C5BF8A0000000, %5829
  %5831 = fdiv fast float %5819, %5830
  %5832 = fmul fast float %5831, 0x3FEE31C3C0000000
  %5833 = fmul fast float %5832, %5828
  %5834 = fmul fast float %5818, 0x3FDACB7480000000
  %5835 = fadd fast float %5834, 0xBFD7347680000000
  %5836 = fmul fast float %5835, %5831
  %5837 = fmul fast float %5836, %5828
  br label %5838

; <label>:5838                                    ; preds = %5809, %5781
  %5839 = phi float [ %5824, %5809 ], [ 0.000000e+00, %5781 ]
  %5840 = phi float [ %5825, %5809 ], [ 0.000000e+00, %5781 ]
  %5841 = phi float [ %5826, %5809 ], [ 0.000000e+00, %5781 ]
  %5842 = phi float [ %5833, %5809 ], [ 0.000000e+00, %5781 ]
  %5843 = phi float [ %5837, %5809 ], [ 0.000000e+00, %5781 ]
  %5844 = call float @dx.op.dot3.f32(i32 55, float %5839, float %5840, float %5841, float %5653, float %5654, float %5655)  ; Dot3(ax,ay,az,bx,by,bz)
  %5845 = fmul fast float %5844, 0x3FDF454380000000
  %5846 = fmul fast float %5844, %5844
  %5847 = fmul fast float %5846, 0x3FEE471020000000
  %5848 = fadd fast float %5847, 0xBFD42F6020000000
  %5849 = fmul fast float %5804, 0x3FD20DD760000000
  %5850 = fmul fast float %5848, %5843
  %5851 = fadd fast float %5850, %5849
  %5852 = fmul fast float %5845, %5842
  %5853 = fadd fast float %5851, %5852
  %5854 = fsub fast float %5851, %5852
  %5855 = call float @dx.op.dot3.f32(i32 55, float %5839, float %5840, float %5841, float %5669, float %5670, float %5671)  ; Dot3(ax,ay,az,bx,by,bz)
  %5856 = fmul fast float %5855, 0x3FDF454380000000
  %5857 = fmul fast float %5855, %5855
  %5858 = fmul fast float %5857, 0x3FEE471020000000
  %5859 = fadd fast float %5858, 0xBFD42F6020000000
  %5860 = call float @dx.op.dot3.f32(i32 55, float %5804, float %5842, float %5843, float 0x3FD20DD760000000, float %5856, float %5859)  ; Dot3(ax,ay,az,bx,by,bz)
  %5861 = call float @dx.op.binary.f32(i32 35, float %5739, float 0.000000e+00)  ; FMax(a,b)
  %5862 = call float @dx.op.binary.f32(i32 35, float %5796, float 0.000000e+00)  ; FMax(a,b)
  %5863 = call float @dx.op.binary.f32(i32 35, float %5853, float 0.000000e+00)  ; FMax(a,b)
  %5864 = call float @dx.op.binary.f32(i32 35, float %5740, float 0.000000e+00)  ; FMax(a,b)
  %5865 = call float @dx.op.binary.f32(i32 35, float %5797, float 0.000000e+00)  ; FMax(a,b)
  %5866 = call float @dx.op.binary.f32(i32 35, float %5854, float 0.000000e+00)  ; FMax(a,b)
  %5867 = call float @dx.op.binary.f32(i32 35, float %5746, float 0.000000e+00)  ; FMax(a,b)
  %5868 = call float @dx.op.binary.f32(i32 35, float %5803, float 0.000000e+00)  ; FMax(a,b)
  %5869 = call float @dx.op.binary.f32(i32 35, float %5860, float 0.000000e+00)  ; FMax(a,b)
  %5870 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5871 = extractvalue %dx.types.CBufRet.f32 %5870, 0
  %5872 = call float @dx.op.binary.f32(i32 36, float %5656, float %5871)  ; FMin(a,b)
  %5873 = fmul fast float %5872, %5673
  %5874 = fsub fast float 1.000000e+00, %5873
  %5875 = bitcast float %5874 to i32
  %5876 = sub nsw i32 2129859010, %5875
  %5877 = bitcast i32 %5876 to float
  %5878 = call float @dx.op.binary.f32(i32 36, float %5657, float %5871)  ; FMin(a,b)
  %5879 = fmul fast float %5878, %5673
  %5880 = fsub fast float 1.000000e+00, %5879
  %5881 = bitcast float %5880 to i32
  %5882 = sub nsw i32 2129859010, %5881
  %5883 = bitcast i32 %5882 to float
  %5884 = call float @dx.op.binary.f32(i32 36, float %5658, float %5871)  ; FMin(a,b)
  %5885 = fmul fast float %5884, %5673
  %5886 = fsub fast float 1.000000e+00, %5885
  %5887 = bitcast float %5886 to i32
  %5888 = sub nsw i32 2129859010, %5887
  %5889 = bitcast i32 %5888 to float
  %5890 = fmul fast float %5861, %5672
  %5891 = fmul fast float %5890, %5877
  %5892 = fmul fast float %5862, %5672
  %5893 = fmul fast float %5892, %5883
  %5894 = fmul fast float %5863, %5672
  %5895 = fmul fast float %5894, %5889
  %5896 = call float @dx.op.binary.f32(i32 36, float %5650, float %5871)  ; FMin(a,b)
  %5897 = fmul fast float %5896, %5673
  %5898 = fsub fast float 1.000000e+00, %5897
  %5899 = bitcast float %5898 to i32
  %5900 = sub nsw i32 2129859010, %5899
  %5901 = bitcast i32 %5900 to float
  %5902 = call float @dx.op.binary.f32(i32 36, float %5651, float %5871)  ; FMin(a,b)
  %5903 = fmul fast float %5902, %5673
  %5904 = fsub fast float 1.000000e+00, %5903
  %5905 = bitcast float %5904 to i32
  %5906 = sub nsw i32 2129859010, %5905
  %5907 = bitcast i32 %5906 to float
  %5908 = call float @dx.op.binary.f32(i32 36, float %5661, float %5871)  ; FMin(a,b)
  %5909 = fmul fast float %5908, %5673
  %5910 = fsub fast float 1.000000e+00, %5909
  %5911 = bitcast float %5910 to i32
  %5912 = sub nsw i32 2129859010, %5911
  %5913 = bitcast i32 %5912 to float
  %5914 = fmul fast float %5867, %5672
  %5915 = fmul fast float %5914, %5901
  %5916 = fmul fast float %5868, %5672
  %5917 = fmul fast float %5916, %5907
  %5918 = fmul fast float %5869, %5672
  %5919 = fmul fast float %5918, %5913
  %5920 = call float @dx.op.dot3.f32(i32 55, float %5891, float %5893, float %5895, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5921 = select i1 %262, float 0.000000e+00, float %5891
  %5922 = select i1 %262, float %5920, float %5893
  %5923 = select i1 %262, float 0.000000e+00, float %5895
  %5924 = call float @dx.op.dot3.f32(i32 55, float %5864, float %5865, float %5866, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5925 = select i1 %262, float 0.000000e+00, float %5864
  %5926 = select i1 %262, float %5924, float %5865
  %5927 = select i1 %262, float 0.000000e+00, float %5866
  %5928 = call float @dx.op.dot3.f32(i32 55, float %5915, float %5917, float %5919, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5929 = select i1 %262, float 0.000000e+00, float %5915
  %5930 = select i1 %262, float %5928, float %5917
  %5931 = select i1 %262, float 0.000000e+00, float %5919
  %5932 = fmul fast float %4003, %4003
  %5933 = call float @dx.op.unary.f32(i32 7, float %5932)  ; Saturate(value)
  %5934 = fmul fast float %5663, 9.843750e-01
  %5935 = fmul fast float %5659, 9.843750e-01
  %5936 = fadd fast float %5934, 7.812500e-03
  %5937 = fadd fast float %5935, 7.812500e-03
  %5938 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %36, %dx.types.Handle %43, float %5936, float %5937, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5939 = extractvalue %dx.types.ResRet.f32 %5938, 0
  %5940 = extractvalue %dx.types.ResRet.f32 %5938, 1
  %5941 = extractvalue %dx.types.ResRet.f32 %5938, 2
  %5942 = extractvalue %dx.types.ResRet.f32 %5938, 3
  %5943 = fsub fast float 1.000000e+00, %5933
  %5944 = fsub fast float %5941, %5939
  %5945 = fsub fast float %5942, %5940
  %5946 = fmul fast float %5944, %5943
  %5947 = fmul fast float %5945, %5943
  %5948 = fadd fast float %5946, %5939
  %5949 = fadd fast float %5947, %5940
  %5950 = fmul fast float %5948, %5650
  %5951 = fmul fast float %5948, %5651
  %5952 = fmul fast float %5948, %5661
  %5953 = fadd fast float %5950, %5949
  %5954 = fadd fast float %5951, %5949
  %5955 = fadd fast float %5952, %5949
  %5956 = fcmp fast ogt float %4699, 0.000000e+00
  br i1 %5956, label %5957, label %5983

; <label>:5957                                    ; preds = %5838
  %5958 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %43, float %4699, float %5663, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5959 = extractvalue %dx.types.ResRet.f32 %5958, 0
  %5960 = extractvalue %dx.types.ResRet.f32 %5958, 1
  %5961 = extractvalue %dx.types.ResRet.f32 %5958, 2
  %5962 = fadd fast float %5959, -5.000000e-01
  %5963 = fadd fast float %5960, -5.000000e-01
  %5964 = fadd fast float %5961, -5.000000e-01
  %5965 = fsub fast float 1.000000e+00, %5650
  %5966 = fsub fast float 1.000000e+00, %5651
  %5967 = fsub fast float 1.000000e+00, %5661
  %5968 = fmul fast float %5650, 4.000000e+00
  %5969 = fmul fast float %5968, %5965
  %5970 = fmul fast float %5969, %5962
  %5971 = fmul fast float %5651, 4.000000e+00
  %5972 = fmul fast float %5971, %5966
  %5973 = fmul fast float %5972, %5963
  %5974 = fmul fast float %5661, 4.000000e+00
  %5975 = fmul fast float %5974, %5967
  %5976 = fmul fast float %5975, %5964
  %5977 = fadd fast float %5970, %5953
  %5978 = fadd fast float %5973, %5954
  %5979 = fadd fast float %5976, %5955
  %5980 = call float @dx.op.unary.f32(i32 7, float %5977)  ; Saturate(value)
  %5981 = call float @dx.op.unary.f32(i32 7, float %5978)  ; Saturate(value)
  %5982 = call float @dx.op.unary.f32(i32 7, float %5979)  ; Saturate(value)
  br label %5983

; <label>:5983                                    ; preds = %5957, %5838
  %5984 = phi float [ %5980, %5957 ], [ %5953, %5838 ]
  %5985 = phi float [ %5981, %5957 ], [ %5954, %5838 ]
  %5986 = phi float [ %5982, %5957 ], [ %5955, %5838 ]
  %5987 = call float @dx.op.binary.f32(i32 35, float %5985, float %5986)  ; FMax(a,b)
  %5988 = call float @dx.op.binary.f32(i32 35, float %5984, float %5987)  ; FMax(a,b)
  %5989 = fsub fast float 1.000000e+00, %5988
  %5990 = fmul fast float %5988, %5659
  %5991 = fadd fast float %5990, %5659
  %5992 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 252)  ; CBufferLoadLegacy(handle,regIndex)
  %5993 = extractvalue %dx.types.CBufRet.f32 %5992, 2
  %5994 = extractvalue %dx.types.CBufRet.f32 %5992, 3
  %5995 = fmul fast float %5991, %5993
  %5996 = fadd fast float %5995, %5994
  %5997 = call float @dx.op.unary.f32(i32 7, float %5996)  ; Saturate(value)
  %5998 = fsub fast float 1.000000e+00, %5684
  %5999 = fadd fast float %5998, %5997
  %6000 = call float @dx.op.unary.f32(i32 7, float %5999)  ; Saturate(value)
  %6001 = fcmp fast olt float %6000, 1.000000e+00
  br i1 %6001, label %6002, label %6450

; <label>:6002                                    ; preds = %5983
  %6003 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %6004 = extractvalue %dx.types.CBufRet.f32 %6003, 2
  %6005 = extractvalue %dx.types.CBufRet.f32 %6003, 3
  %6006 = fmul fast float %6004, %109
  %6007 = fmul fast float %6005, %110
  %6008 = fptoui float %6006 to i32
  %6009 = fptoui float %6007 to i32
  %6010 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %6011 = extractvalue %dx.types.CBufRet.f32 %6010, 0
  %6012 = extractvalue %dx.types.CBufRet.f32 %6010, 2
  %6013 = extractvalue %dx.types.CBufRet.f32 %6010, 3
  %6014 = fadd fast float %96, -4.000000e+00
  %6015 = call float @dx.op.binary.f32(i32 35, float %6014, float 0.000000e+00)  ; FMax(a,b)
  %6016 = fadd fast float %6015, %6011
  %6017 = fmul fast float %6016, %6012
  %6018 = call float @dx.op.unary.f32(i32 23, float %6017)  ; Log(value)
  %6019 = fmul fast float %6018, %6013
  %6020 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6021 = extractvalue %dx.types.CBufRet.f32 %6020, 2
  %6022 = fmul fast float %6019, %6021
  %6023 = call float @dx.op.unary.f32(i32 7, float %6022)  ; Saturate(value)
  %6024 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6025 = extractvalue %dx.types.CBufRet.i32 %6024, 1
  %6026 = add i32 %6025, -1
  %6027 = uitofp i32 %6025 to float
  %6028 = fmul fast float %6027, %6023
  %6029 = fptoui float %6028 to i32
  %6030 = call i32 @dx.op.binary.i32(i32 40, i32 %6029, i32 %6026)  ; UMin(a,b)
  %6031 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %6032 = extractvalue %dx.types.CBufRet.i32 %6031, 2
  %6033 = extractvalue %dx.types.CBufRet.i32 %6031, 3
  %6034 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6009, i32 %6032, i32 %6008)  ; UMad(a,b,c)
  %6035 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6030, i32 %6033, i32 %6034)  ; UMad(a,b,c)
  %6036 = call float @dx.op.binary.f32(i32 35, float %96, float 0.000000e+00)  ; FMax(a,b)
  %6037 = fptoui float %6036 to i32
  %6038 = lshr i32 %6037, 5
  %6039 = call i32 @dx.op.binary.i32(i32 40, i32 %6038, i32 8191)  ; UMin(a,b)
  br i1 false, label %6040, label %6047

; <label>:6040                                    ; preds = %6002
  %6041 = fadd fast float 0.000000e+00, %5671
  %6042 = call float @dx.op.dot3.f32(i32 55, float %5669, float %5670, float %6041, float %5669, float %5670, float %6041)  ; Dot3(ax,ay,az,bx,by,bz)
  %6043 = call float @dx.op.unary.f32(i32 25, float %6042)  ; Rsqrt(value)
  %6044 = fmul fast float %6043, %5669
  %6045 = fmul fast float %6043, %5670
  %6046 = fmul fast float %6041, %6043
  br label %6047

; <label>:6047                                    ; preds = %6040, %6002
  %6048 = phi float [ %6044, %6040 ], [ %5669, %6002 ]
  %6049 = phi float [ %6045, %6040 ], [ %5670, %6002 ]
  %6050 = phi float [ %6046, %6040 ], [ %5671, %6002 ]
  %6051 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6052 = extractvalue %dx.types.CBufRet.i32 %6051, 2
  %6053 = add nsw i32 %6052, -1
  %6054 = call i32 @dx.op.binary.i32(i32 37, i32 %6053, i32 0)  ; IMax(a,b)
  %6055 = shl i32 %6039, 2
  %6056 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %6055, i32 undef)  ; BufferLoad(srv,index,wot)
  %6057 = extractvalue %dx.types.ResRet.i32 %6056, 0
  %6058 = lshr i32 %6057, 16
  %6059 = and i32 %6057, 65535
  %6060 = lshr i32 %6057, 21
  %6061 = lshr i32 %6059, 5
  %6062 = call i32 @dx.op.binary.i32(i32 40, i32 %6061, i32 %6054)  ; UMin(a,b)
  %6063 = icmp ugt i32 %6060, %6062
  br i1 %6063, label %6426, label %6064

; <label>:6064                                    ; preds = %6047
  br label %6065

; <label>:6065                                    ; preds = %6418, %6064
  %6066 = phi float [ %6419, %6418 ], [ 0.000000e+00, %6064 ]
  %6067 = phi float [ %6420, %6418 ], [ 0.000000e+00, %6064 ]
  %6068 = phi float [ %6421, %6418 ], [ 0.000000e+00, %6064 ]
  %6069 = phi float [ %6422, %6418 ], [ 1.000000e+00, %6064 ]
  %6070 = phi i32 [ %6423, %6418 ], [ %6060, %6064 ]
  %6071 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6072 = extractvalue %dx.types.CBufRet.i32 %6071, 2
  %6073 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6035, i32 %6072, i32 %6070)  ; UMad(a,b,c)
  %6074 = shl i32 %6073, 2
  %6075 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %6074, i32 undef)  ; BufferLoad(srv,index,wot)
  %6076 = extractvalue %dx.types.ResRet.i32 %6075, 0
  %6077 = shl i32 %6070, 5
  %6078 = sub nsw i32 %6058, %6077
  %6079 = call i32 @dx.op.binary.i32(i32 37, i32 %6078, i32 0)  ; IMax(a,b)
  %6080 = call i32 @dx.op.binary.i32(i32 38, i32 %6079, i32 31)  ; IMin(a,b)
  %6081 = sub nsw i32 1, %6058
  %6082 = add nsw i32 %6081, %6059
  %6083 = call i32 @dx.op.binary.i32(i32 37, i32 %6082, i32 0)  ; IMax(a,b)
  %6084 = call i32 @dx.op.binary.i32(i32 38, i32 %6083, i32 32)  ; IMin(a,b)
  %6085 = and i32 %6084, 31
  %6086 = shl i32 -1, %6085
  %6087 = xor i32 %6086, -1
  %6088 = and i32 %6080, 31
  %6089 = shl i32 %6087, %6088
  %6090 = icmp eq i32 %6084, 32
  %6091 = select i1 %6090, i32 -1, i32 %6089
  %6092 = and i32 %6091, %6076
  %6093 = icmp eq i32 %6092, 0
  br i1 %6093, label %6418, label %6094

; <label>:6094                                    ; preds = %6065
  br label %6095

; <label>:6095                                    ; preds = %6201, %6094
  %6096 = phi float [ %6202, %6201 ], [ %6066, %6094 ]
  %6097 = phi float [ %6203, %6201 ], [ %6067, %6094 ]
  %6098 = phi float [ %6204, %6201 ], [ %6068, %6094 ]
  %6099 = phi float [ %6205, %6201 ], [ %6069, %6094 ]
  %6100 = phi i32 [ %6105, %6201 ], [ %6092, %6094 ]
  %6101 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %6100)  ; FirstbitLo(value)
  %6102 = add i32 %6101, %6077
  %6103 = and i32 %6101, 31
  %6104 = shl i32 1, %6103
  %6105 = xor i32 %6104, %6100
  %6106 = mul i32 %6102, 72
  %6107 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %6106, i32 undef)  ; BufferLoad(srv,index,wot)
  %6108 = extractvalue %dx.types.ResRet.f32 %6107, 0
  %6109 = extractvalue %dx.types.ResRet.f32 %6107, 1
  %6110 = extractvalue %dx.types.ResRet.f32 %6107, 2
  %6111 = add i32 %6106, 12
  %6112 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 %6111, i32 undef)  ; BufferLoad(srv,index,wot)
  %6113 = extractvalue %dx.types.ResRet.i32 %6112, 0
  %6114 = add i32 %6106, 16
  %6115 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %6114, i32 undef)  ; BufferLoad(srv,index,wot)
  %6116 = extractvalue %dx.types.ResRet.f32 %6115, 0
  %6117 = extractvalue %dx.types.ResRet.f32 %6115, 1
  %6118 = extractvalue %dx.types.ResRet.f32 %6115, 2
  %6119 = add i32 %6106, 28
  %6120 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %6119, i32 undef)  ; BufferLoad(srv,index,wot)
  %6121 = extractvalue %dx.types.ResRet.f32 %6120, 0
  %6122 = add i32 %6106, 32
  %6123 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %6122, i32 undef)  ; BufferLoad(srv,index,wot)
  %6124 = extractvalue %dx.types.ResRet.f32 %6123, 0
  %6125 = extractvalue %dx.types.ResRet.f32 %6123, 1
  %6126 = extractvalue %dx.types.ResRet.f32 %6123, 2
  %6127 = extractvalue %dx.types.ResRet.f32 %6123, 3
  %6128 = add i32 %6106, 48
  %6129 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %6128, i32 undef)  ; BufferLoad(srv,index,wot)
  %6130 = extractvalue %dx.types.ResRet.f32 %6129, 0
  %6131 = extractvalue %dx.types.ResRet.f32 %6129, 1
  %6132 = add i32 %6106, 56
  %6133 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %6132, i32 undef)  ; BufferLoad(srv,index,wot)
  %6134 = extractvalue %dx.types.ResRet.f32 %6133, 0
  %6135 = extractvalue %dx.types.ResRet.f32 %6133, 1
  %6136 = add i32 %6106, 64
  %6137 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %6136, i32 undef)  ; BufferLoad(srv,index,wot)
  %6138 = extractvalue %dx.types.ResRet.f32 %6137, 0
  %6139 = extractvalue %dx.types.ResRet.f32 %6137, 1
  %6140 = mul i32 %6102, 60
  %6141 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %6140, i32 undef)  ; BufferLoad(srv,index,wot)
  %6142 = extractvalue %dx.types.ResRet.f32 %6141, 0
  %6143 = extractvalue %dx.types.ResRet.f32 %6141, 1
  %6144 = extractvalue %dx.types.ResRet.f32 %6141, 2
  %6145 = add i32 %6140, 12
  %6146 = add i32 %6140, 48
  %6147 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %6146, i32 undef)  ; BufferLoad(srv,index,wot)
  %6148 = extractvalue %dx.types.ResRet.f32 %6147, 0
  %6149 = extractvalue %dx.types.ResRet.f32 %6147, 1
  %6150 = extractvalue %dx.types.ResRet.f32 %6147, 2
  %6151 = and i32 %6113, 32767
  %6152 = bitcast float %6108 to i32
  %6153 = icmp eq i32 %6152, -1
  %6154 = bitcast float %6109 to i32
  %6155 = and i32 %6113, 32768
  %6156 = icmp ne i32 %6155, 0
  %6157 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %6158 = extractvalue %dx.types.CBufRet.f32 %6157, 0
  %6159 = extractvalue %dx.types.CBufRet.f32 %6157, 1
  %6160 = extractvalue %dx.types.CBufRet.f32 %6157, 2
  %6161 = fsub fast float %6142, %6158
  %6162 = fsub fast float %6143, %6159
  %6163 = fsub fast float %6144, %6160
  %6164 = fsub fast float %188, %6161
  %6165 = fsub fast float %189, %6162
  %6166 = fsub fast float %190, %6163
  %6167 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %6145, i32 undef)  ; BufferLoad(srv,index,wot)
  %6168 = extractvalue %dx.types.ResRet.f32 %6167, 0
  %6169 = extractvalue %dx.types.ResRet.f32 %6167, 1
  %6170 = extractvalue %dx.types.ResRet.f32 %6167, 2
  %6171 = call float @dx.op.dot3.f32(i32 55, float %6164, float %6165, float %6166, float %6168, float %6169, float %6170)  ; Dot3(ax,ay,az,bx,by,bz)
  %6172 = add i32 %6140, 24
  %6173 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %6172, i32 undef)  ; BufferLoad(srv,index,wot)
  %6174 = extractvalue %dx.types.ResRet.f32 %6173, 0
  %6175 = extractvalue %dx.types.ResRet.f32 %6173, 1
  %6176 = extractvalue %dx.types.ResRet.f32 %6173, 2
  %6177 = call float @dx.op.dot3.f32(i32 55, float %6164, float %6165, float %6166, float %6174, float %6175, float %6176)  ; Dot3(ax,ay,az,bx,by,bz)
  %6178 = add i32 %6140, 36
  %6179 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %6178, i32 undef)  ; BufferLoad(srv,index,wot)
  %6180 = extractvalue %dx.types.ResRet.f32 %6179, 0
  %6181 = extractvalue %dx.types.ResRet.f32 %6179, 1
  %6182 = extractvalue %dx.types.ResRet.f32 %6179, 2
  %6183 = call float @dx.op.dot3.f32(i32 55, float %6164, float %6165, float %6166, float %6180, float %6181, float %6182)  ; Dot3(ax,ay,az,bx,by,bz)
  %6184 = call float @dx.op.unary.f32(i32 6, float %6171)  ; FAbs(value)
  %6185 = call float @dx.op.unary.f32(i32 6, float %6177)  ; FAbs(value)
  %6186 = call float @dx.op.unary.f32(i32 6, float %6183)  ; FAbs(value)
  %6187 = fsub fast float %6148, %6184
  %6188 = fsub fast float %6149, %6185
  %6189 = fsub fast float %6150, %6186
  %6190 = fmul fast float %6187, %6116
  %6191 = fmul fast float %6188, %6117
  %6192 = fmul fast float %6189, %6118
  %6193 = call float @dx.op.binary.f32(i32 36, float %6191, float %6192)  ; FMin(a,b)
  %6194 = call float @dx.op.binary.f32(i32 36, float %6190, float %6193)  ; FMin(a,b)
  %6195 = call float @dx.op.unary.f32(i32 7, float %6194)  ; Saturate(value)
  %6196 = call float @dx.op.binary.f32(i32 36, float %6099, float %6195)  ; FMin(a,b)
  %6197 = uitofp i1 %6156 to float
  %6198 = fsub fast float 1.000000e+00, %6197
  %6199 = fmul fast float %6196, %6198
  %6200 = fcmp fast ogt float %6199, 0.000000e+00
  br i1 %6200, label %6207, label %6201

; <label>:6201                                    ; preds = %6349, %6095
  %6202 = phi float [ %6413, %6349 ], [ %6096, %6095 ]
  %6203 = phi float [ %6414, %6349 ], [ %6097, %6095 ]
  %6204 = phi float [ %6415, %6349 ], [ %6098, %6095 ]
  %6205 = phi float [ %6416, %6349 ], [ %6099, %6095 ]
  %6206 = icmp eq i32 %6100, %6104
  br i1 %6206, label %6417, label %6095

; <label>:6207                                    ; preds = %6095
  br i1 %6153, label %6265, label %6208

; <label>:6208                                    ; preds = %6207
  %6209 = fsub fast float -0.000000e+00, %6168
  %6210 = fsub fast float -0.000000e+00, %6169
  %6211 = fsub fast float -0.000000e+00, %6170
  %6212 = call float @dx.op.dot3.f32(i32 55, float %6048, float %6049, float %6050, float %6209, float %6210, float %6211)  ; Dot3(ax,ay,az,bx,by,bz)
  %6213 = fsub fast float -0.000000e+00, %6212
  %6214 = call float @dx.op.dot3.f32(i32 55, float %6164, float %6165, float %6166, float %6209, float %6210, float %6211)  ; Dot3(ax,ay,az,bx,by,bz)
  %6215 = fadd fast float %6214, %6131
  %6216 = fadd fast float %6130, %6214
  %6217 = fsub fast float -0.000000e+00, %6216
  %6218 = fcmp ogt float %6212, -0.000000e+00
  %6219 = select i1 %6218, float %6217, float %6215
  %6220 = call float @dx.op.unary.f32(i32 6, float %6213)  ; FAbs(value)
  %6221 = fdiv fast float 1.000000e+00, %6220
  %6222 = fmul fast float %6219, %6221
  %6223 = call float @dx.op.binary.f32(i32 35, float %6222, float 0.000000e+00)  ; FMax(a,b)
  %6224 = fsub fast float -0.000000e+00, %6174
  %6225 = fsub fast float -0.000000e+00, %6175
  %6226 = fsub fast float -0.000000e+00, %6176
  %6227 = call float @dx.op.dot3.f32(i32 55, float %6048, float %6049, float %6050, float %6224, float %6225, float %6226)  ; Dot3(ax,ay,az,bx,by,bz)
  %6228 = fsub fast float -0.000000e+00, %6227
  %6229 = call float @dx.op.dot3.f32(i32 55, float %6164, float %6165, float %6166, float %6224, float %6225, float %6226)  ; Dot3(ax,ay,az,bx,by,bz)
  %6230 = fadd fast float %6229, %6135
  %6231 = fadd fast float %6134, %6229
  %6232 = fsub fast float -0.000000e+00, %6231
  %6233 = fcmp ogt float %6227, -0.000000e+00
  %6234 = select i1 %6233, float %6232, float %6230
  %6235 = call float @dx.op.unary.f32(i32 6, float %6228)  ; FAbs(value)
  %6236 = fdiv fast float 1.000000e+00, %6235
  %6237 = fmul fast float %6234, %6236
  %6238 = call float @dx.op.binary.f32(i32 35, float %6237, float 0.000000e+00)  ; FMax(a,b)
  %6239 = fsub fast float -0.000000e+00, %6180
  %6240 = fsub fast float -0.000000e+00, %6181
  %6241 = fsub fast float -0.000000e+00, %6182
  %6242 = call float @dx.op.dot3.f32(i32 55, float %6048, float %6049, float %6050, float %6239, float %6240, float %6241)  ; Dot3(ax,ay,az,bx,by,bz)
  %6243 = fsub fast float -0.000000e+00, %6242
  %6244 = call float @dx.op.dot3.f32(i32 55, float %6164, float %6165, float %6166, float %6239, float %6240, float %6241)  ; Dot3(ax,ay,az,bx,by,bz)
  %6245 = fadd fast float %6244, %6139
  %6246 = fadd fast float %6138, %6244
  %6247 = fsub fast float -0.000000e+00, %6246
  %6248 = fcmp ogt float %6242, -0.000000e+00
  %6249 = select i1 %6248, float %6247, float %6245
  %6250 = call float @dx.op.unary.f32(i32 6, float %6243)  ; FAbs(value)
  %6251 = fdiv fast float 1.000000e+00, %6250
  %6252 = fmul fast float %6249, %6251
  %6253 = call float @dx.op.binary.f32(i32 35, float %6252, float 0.000000e+00)  ; FMax(a,b)
  %6254 = call float @dx.op.binary.f32(i32 36, float %6238, float %6253)  ; FMin(a,b)
  %6255 = call float @dx.op.binary.f32(i32 36, float %6223, float %6254)  ; FMin(a,b)
  %6256 = fmul fast float %6255, %6048
  %6257 = fmul fast float %6255, %6049
  %6258 = fmul fast float %6255, %6050
  %6259 = fadd fast float %6256, %188
  %6260 = fadd fast float %6257, %189
  %6261 = fadd fast float %6258, %190
  %6262 = fsub fast float %6259, %6108
  %6263 = fsub fast float %6260, %6109
  %6264 = fsub fast float %6261, %6110
  br label %6272

; <label>:6265                                    ; preds = %6207
  %6266 = fmul fast float %6048, 8.096000e+03
  %6267 = fmul fast float %6049, 8.096000e+03
  %6268 = fmul fast float %6050, 8.096000e+03
  %6269 = fadd fast float %6266, %188
  %6270 = fadd fast float %6267, %189
  %6271 = fadd fast float %6268, %190
  br label %6272

; <label>:6272                                    ; preds = %6265, %6208
  %6273 = phi float [ %6048, %6265 ], [ %6262, %6208 ]
  %6274 = phi float [ %6049, %6265 ], [ %6263, %6208 ]
  %6275 = phi float [ %6050, %6265 ], [ %6264, %6208 ]
  %6276 = phi float [ %6269, %6265 ], [ %6259, %6208 ]
  %6277 = phi float [ %6270, %6265 ], [ %6260, %6208 ]
  %6278 = phi float [ %6271, %6265 ], [ %6261, %6208 ]
  %6279 = fcmp fast olt float %6127, 1.000000e+00
  br i1 %6279, label %6280, label %6311, !dx.controlflow.hints !92

; <label>:6280                                    ; preds = %6272
  %6281 = fmul fast float %6275, %6125
  %6282 = fmul fast float %6274, %6126
  %6283 = fsub fast float %6281, %6282
  %6284 = fmul fast float %6273, %6126
  %6285 = fmul fast float %6275, %6124
  %6286 = fsub fast float %6284, %6285
  %6287 = fmul fast float %6274, %6124
  %6288 = fmul fast float %6273, %6125
  %6289 = fsub fast float %6287, %6288
  %6290 = fmul fast float %6283, 2.000000e+00
  %6291 = fmul fast float %6286, 2.000000e+00
  %6292 = fmul fast float %6289, 2.000000e+00
  %6293 = fmul fast float %6290, %6127
  %6294 = fmul fast float %6291, %6127
  %6295 = fmul fast float %6292, %6127
  %6296 = fmul fast float %6292, %6125
  %6297 = fmul fast float %6291, %6126
  %6298 = fmul fast float %6290, %6126
  %6299 = fmul fast float %6292, %6124
  %6300 = fmul fast float %6291, %6124
  %6301 = fmul fast float %6290, %6125
  %6302 = fadd fast float %6296, %6273
  %6303 = fadd fast float %6302, %6293
  %6304 = fsub fast float %6303, %6297
  %6305 = fsub fast float %6274, %6299
  %6306 = fadd fast float %6305, %6294
  %6307 = fadd fast float %6306, %6298
  %6308 = fadd fast float %6295, %6275
  %6309 = fsub fast float %6308, %6301
  %6310 = fadd fast float %6309, %6300
  br label %6311

; <label>:6311                                    ; preds = %6280, %6272
  %6312 = phi float [ %6304, %6280 ], [ %6273, %6272 ]
  %6313 = phi float [ %6307, %6280 ], [ %6274, %6272 ]
  %6314 = phi float [ %6310, %6280 ], [ %6275, %6272 ]
  br i1 %6153, label %6346, label %6315

; <label>:6315                                    ; preds = %6311
  %6316 = fmul fast float %5659, 0x400187C840000000
  %6317 = fadd fast float %6316, 0xC00EFC2120000000
  %6318 = fmul fast float %6317, %5659
  %6319 = fadd fast float %6318, 0x3FE5D16340000000
  %6320 = fmul fast float %6319, %5659
  %6321 = fadd fast float %6320, 1.000000e+00
  %6322 = call float @dx.op.unary.f32(i32 7, float %6321)  ; Saturate(value)
  %6323 = fsub fast float %6276, %188
  %6324 = fsub fast float %6277, %189
  %6325 = fsub fast float %6278, %190
  %6326 = fsub fast float %6276, %6108
  %6327 = fsub fast float %6277, %6109
  %6328 = fsub fast float %6278, %6110
  %6329 = call float @dx.op.dot3.f32(i32 55, float %6323, float %6324, float %6325, float %6323, float %6324, float %6325)  ; Dot3(ax,ay,az,bx,by,bz)
  %6330 = call float @dx.op.dot3.f32(i32 55, float %6326, float %6327, float %6328, float %6326, float %6327, float %6328)  ; Dot3(ax,ay,az,bx,by,bz)
  %6331 = fadd fast float %6330, 0x3EE4F8B580000000
  %6332 = fdiv fast float %6329, %6331
  %6333 = bitcast float %6332 to i32
  %6334 = ashr i32 %6333, 1
  %6335 = add nsw i32 %6334, 532487669
  %6336 = bitcast i32 %6335 to float
  %6337 = fmul fast float %6336, %6322
  %6338 = call float @dx.op.unary.f32(i32 7, float %6337)  ; Saturate(value)
  %6339 = fmul fast float %6338, 0x4009981AE0000000
  %6340 = fsub fast float 0x40111BBD80000000, %6339
  %6341 = fmul fast float %6340, %6338
  %6342 = fadd fast float %6341, 0xC0009F6020000000
  %6343 = fmul fast float %6342, %6338
  %6344 = fadd fast float %6343, 1.000000e+00
  %6345 = call float @dx.op.unary.f32(i32 7, float %6344)  ; Saturate(value)
  br label %6349

; <label>:6346                                    ; preds = %6311
  %6347 = icmp ne i32 %6154, -1
  %6348 = zext i1 %6347 to i32
  br label %6349

; <label>:6349                                    ; preds = %6346, %6315
  %6350 = phi float [ %5659, %6346 ], [ %6345, %6315 ]
  %6351 = phi i32 [ %6348, %6346 ], [ 0, %6315 ]
  %6352 = fmul float %6350, 5.000000e+00
  %6353 = fsub float 5.000000e+00, %6352
  %6354 = icmp ne i32 %6351, 0
  %6355 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %6356 = extractvalue %dx.types.CBufRet.f32 %6355, 3
  %6357 = fadd fast float %6356, %6353
  %6358 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6357)  ; FMax(a,b)
  %6359 = call float @dx.op.unary.f32(i32 6, float %6312)  ; FAbs(value)
  %6360 = call float @dx.op.unary.f32(i32 6, float %6313)  ; FAbs(value)
  %6361 = fadd fast float %6360, %6359
  %6362 = call float @dx.op.unary.f32(i32 6, float %6314)  ; FAbs(value)
  %6363 = fadd fast float %6361, %6362
  %6364 = fcmp fast oeq float %6363, 0.000000e+00
  %6365 = fdiv fast float 1.000000e+00, %6363
  %6366 = select i1 %6364, float 1.000000e+00, float %6365
  %6367 = fmul fast float %6366, %6312
  %6368 = fmul fast float %6366, %6313
  %6369 = call float @dx.op.unary.f32(i32 6, float %6368)  ; FAbs(value)
  %6370 = call float @dx.op.unary.f32(i32 6, float %6367)  ; FAbs(value)
  %6371 = fsub fast float 1.000000e+00, %6369
  %6372 = fsub fast float 1.000000e+00, %6370
  %6373 = fcmp fast oge float %6367, 0.000000e+00
  %6374 = fcmp fast oge float %6368, 0.000000e+00
  %6375 = select i1 %6373, float 1.000000e+00, float -1.000000e+00
  %6376 = select i1 %6374, float 1.000000e+00, float -1.000000e+00
  %6377 = fcmp fast ole float %6314, 0.000000e+00
  %6378 = fmul fast float %6375, %6371
  %6379 = fmul fast float %6376, %6372
  %6380 = select i1 %6377, float %6378, float %6367
  %6381 = select i1 %6377, float %6379, float %6368
  %6382 = fmul fast float %6380, 5.000000e-01
  %6383 = fmul fast float %6381, 5.000000e-01
  %6384 = fadd fast float %6382, 5.000000e-01
  %6385 = fadd fast float %6383, 5.000000e-01
  %6386 = uitofp i32 %6151 to float
  %6387 = call float @dx.op.binary.f32(i32 36, float %6358, float 3.000000e+00)  ; FMin(a,b)
  %6388 = fadd fast float %6387, 2.000000e+00
  %6389 = call float @dx.op.unary.f32(i32 21, float %6388)  ; Exp(value)
  %6390 = extractvalue %dx.types.CBufRet.f32 %6355, 1
  %6391 = fmul fast float %6390, %6389
  %6392 = fmul fast float %6391, 2.000000e+00
  %6393 = fsub fast float 1.000000e+00, %6392
  %6394 = fmul fast float %6384, %6393
  %6395 = fmul fast float %6385, %6393
  %6396 = fadd fast float %6394, %6391
  %6397 = fadd fast float %6395, %6391
  %6398 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %41, float %6396, float %6397, float %6386, float undef, i32 0, i32 0, i32 undef, float %6358)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6399 = extractvalue %dx.types.ResRet.f32 %6398, 0
  %6400 = extractvalue %dx.types.ResRet.f32 %6398, 1
  %6401 = extractvalue %dx.types.ResRet.f32 %6398, 2
  %6402 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6403 = extractvalue %dx.types.CBufRet.f32 %6402, 3
  %6404 = fmul fast float %6403, %6121
  %6405 = call float @dx.op.binary.f32(i32 36, float %5689, float %6404)  ; FMin(a,b)
  %6406 = select i1 %6354, float %6405, float %6404
  %6407 = fmul fast float %6399, %6199
  %6408 = fmul fast float %6407, %6406
  %6409 = fmul fast float %6400, %6199
  %6410 = fmul fast float %6409, %6406
  %6411 = fmul fast float %6401, %6199
  %6412 = fmul fast float %6411, %6406
  %6413 = fadd fast float %6408, %6096
  %6414 = fadd fast float %6410, %6097
  %6415 = fadd fast float %6412, %6098
  %6416 = fsub fast float %6099, %6199
  br label %6201

; <label>:6417                                    ; preds = %6201
  br label %6418

; <label>:6418                                    ; preds = %6417, %6065
  %6419 = phi float [ %6066, %6065 ], [ %6202, %6417 ]
  %6420 = phi float [ %6067, %6065 ], [ %6203, %6417 ]
  %6421 = phi float [ %6068, %6065 ], [ %6204, %6417 ]
  %6422 = phi float [ %6069, %6065 ], [ %6205, %6417 ]
  %6423 = add i32 %6070, 1
  %6424 = icmp ugt i32 %6423, %6062
  br i1 %6424, label %6425, label %6065, !llvm.loop !93

; <label>:6425                                    ; preds = %6418
  br label %6426

; <label>:6426                                    ; preds = %6425, %6047
  %6427 = phi float [ 0.000000e+00, %6047 ], [ %6419, %6425 ]
  %6428 = phi float [ 0.000000e+00, %6047 ], [ %6420, %6425 ]
  %6429 = phi float [ 0.000000e+00, %6047 ], [ %6421, %6425 ]
  %6430 = call float @dx.op.dot3.f32(i32 55, float %6427, float %6428, float %6429, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6431 = select i1 %262, float 0.000000e+00, float %6427
  %6432 = select i1 %262, float %6430, float %6428
  %6433 = select i1 %262, float 0.000000e+00, float %6429
  %6434 = fcmp fast olt float %6000, 0.000000e+00
  %6435 = call float @dx.op.unary.f32(i32 6, float %6000)  ; FAbs(value)
  %6436 = fmul fast float %6435, %5929
  %6437 = fmul fast float %6435, %5930
  %6438 = fmul fast float %6435, %5931
  %6439 = select i1 %6434, float %5929, float %6436
  %6440 = select i1 %6434, float %5930, float %6437
  %6441 = select i1 %6434, float %5931, float %6438
  %6442 = fsub fast float 1.000000e+00, %6435
  %6443 = call float @dx.op.unary.f32(i32 7, float %6442)  ; Saturate(value)
  %6444 = fmul fast float %6443, %6431
  %6445 = fmul fast float %6443, %6432
  %6446 = fmul fast float %6443, %6433
  %6447 = fadd fast float %6439, %6444
  %6448 = fadd fast float %6440, %6445
  %6449 = fadd fast float %6441, %6446
  br label %6450

; <label>:6450                                    ; preds = %6426, %5983
  %6451 = phi float [ %5929, %5983 ], [ %6447, %6426 ]
  %6452 = phi float [ %5930, %5983 ], [ %6448, %6426 ]
  %6453 = phi float [ %5931, %5983 ], [ %6449, %6426 ]
  %6454 = call float @dx.op.dot3.f32(i32 55, float %5656, float %5657, float %5658, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6455 = fcmp fast ogt float %6454, 0x3E7FF19E20000000
  %6456 = fdiv fast float 1.000000e+00, %6454
  %6457 = select i1 %6455, float %6456, float 0.000000e+00
  %6458 = fmul fast float %6457, %5656
  %6459 = fmul fast float %6457, %5657
  %6460 = fmul fast float %6457, %5658
  %6461 = fadd fast float %6458, -1.000000e+00
  %6462 = fadd fast float %6459, -1.000000e+00
  %6463 = fadd fast float %6460, -1.000000e+00
  %6464 = fmul fast float %6461, 5.000000e-01
  %6465 = fmul fast float %6462, 5.000000e-01
  %6466 = fmul fast float %6463, 5.000000e-01
  %6467 = fadd fast float %6464, 1.000000e+00
  %6468 = fadd fast float %6465, 1.000000e+00
  %6469 = fadd fast float %6466, 1.000000e+00
  %6470 = call float @dx.op.binary.f32(i32 35, float %5663, float 0x3F50624DE0000000)  ; FMax(a,b)
  %6471 = fdiv fast float %4003, %6470
  %6472 = fcmp fast olt float %4748, 1.270000e+02
  %6473 = fcmp fast olt float %4749, 1.270000e+02
  %6474 = fcmp fast olt float %4750, 1.270000e+02
  %6475 = fmul fast float %4748, 0xBFF7154760000000
  %6476 = fmul fast float %6475, %6471
  %6477 = fmul fast float %4749, 0xBFF7154760000000
  %6478 = fmul fast float %6477, %6471
  %6479 = fmul fast float %4750, 0xBFF7154760000000
  %6480 = fmul fast float %6479, %6471
  %6481 = call float @dx.op.unary.f32(i32 21, float %6476)  ; Exp(value)
  %6482 = call float @dx.op.unary.f32(i32 21, float %6478)  ; Exp(value)
  %6483 = call float @dx.op.unary.f32(i32 21, float %6480)  ; Exp(value)
  %6484 = call float @dx.op.unary.f32(i32 7, float %6481)  ; Saturate(value)
  %6485 = call float @dx.op.unary.f32(i32 7, float %6482)  ; Saturate(value)
  %6486 = call float @dx.op.unary.f32(i32 7, float %6483)  ; Saturate(value)
  %6487 = select i1 %6472, float %6484, float 0.000000e+00
  %6488 = select i1 %6473, float %6485, float 0.000000e+00
  %6489 = select i1 %6474, float %6486, float 0.000000e+00
  %6490 = fmul fast float %6487, %5989
  %6491 = fmul fast float %6488, %5989
  %6492 = fmul fast float %6489, %5989
  %6493 = fadd fast float %6490, -1.000000e+00
  %6494 = fadd fast float %6491, -1.000000e+00
  %6495 = fadd fast float %6492, -1.000000e+00
  %6496 = fmul fast float %6493, %4696
  %6497 = fmul fast float %6494, %4696
  %6498 = fmul fast float %6495, %4696
  %6499 = fmul fast float %6451, %5984
  %6500 = fmul fast float %6452, %5985
  %6501 = fmul fast float %6453, %5986
  %6502 = fsub fast float 1.000000e+00, %5663
  %6503 = bitcast float %6502 to i32
  %6504 = sitofp i32 %6503 to float
  %6505 = fmul fast float %6504, 5.000000e+00
  %6506 = fadd fast float %6505, 0xC1EFBF8940000000
  %6507 = fptosi float %6506 to i32
  %6508 = bitcast i32 %6507 to float
  %6509 = fmul fast float %6508, %4700
  %6510 = fmul fast float %5921, %6509
  %6511 = fmul fast float %6510, %5989
  %6512 = fmul fast float %6511, %6467
  %6513 = fmul fast float %5922, %6509
  %6514 = fmul fast float %6513, %5989
  %6515 = fmul fast float %6514, %6468
  %6516 = fmul fast float %5923, %6509
  %6517 = fmul fast float %6516, %5989
  %6518 = fmul fast float %6517, %6469
  %6519 = fadd fast float %6499, %4689
  %6520 = fadd fast float %6519, %6512
  %6521 = fmul fast float %6520, %4696
  %6522 = fadd fast float %6500, %4690
  %6523 = fadd fast float %6522, %6515
  %6524 = fmul fast float %6523, %4696
  %6525 = fadd fast float %6501, %4691
  %6526 = fadd fast float %6525, %6518
  %6527 = fmul fast float %6526, %4696
  %6528 = fmul fast float %5651, 0x4012D0A400000000
  %6529 = fadd fast float %6498, 1.000000e+00
  %6530 = fadd fast float %6497, 1.000000e+00
  %6531 = fadd fast float %6496, 1.000000e+00
  %6532 = fmul fast float %5989, %5923
  %6533 = fmul fast float %5989, %5922
  %6534 = fmul fast float %5989, %5921
  %6535 = fmul fast float %5678, %4696
  %6536 = fsub fast float 1.000000e+00, %6535
  %6537 = call float @dx.op.unary.f32(i32 7, float %6536)  ; Saturate(value)
  %6538 = fsub fast float 1.000000e+00, %6537
  %6539 = fadd fast float %6528, 0x3FDB6377A0000000
  %6540 = fmul fast float %6538, %6539
  %6541 = call float @dx.op.dot3.f32(i32 55, float %5458, float %5459, float %5460, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6542 = fadd fast float %6540, %6541
  %6543 = call float @dx.op.unary.f32(i32 7, float %6542)  ; Saturate(value)
  %6544 = call float @dx.op.binary.f32(i32 35, float %6543, float 0x3F847AE140000000)  ; FMax(a,b)
  %6545 = fmul fast float %6544, %6544
  %6546 = fmul fast float %6545, %6545
  %6547 = fmul fast float %6546, 0xC00A935000000000
  %6548 = call float @dx.op.unary.f32(i32 21, float %6547)  ; Exp(value)
  %6549 = fsub fast float 1.000000e+00, %6548
  %6550 = fmul fast float %6531, %5925
  %6551 = fmul fast float %6550, %6549
  %6552 = fmul fast float %6530, %5926
  %6553 = fmul fast float %6552, %6549
  %6554 = fmul fast float %6529, %5927
  %6555 = fmul fast float %6554, %6549
  %6556 = fadd fast float %6551, %6534
  %6557 = fmul fast float %6556, %4696
  %6558 = fadd fast float %6553, %6533
  %6559 = fmul fast float %6558, %4696
  %6560 = fadd fast float %6555, %6532
  %6561 = fmul fast float %6560, %4696
  %6562 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %6563 = extractvalue %dx.types.CBufRet.f32 %6562, 3
  %6564 = fcmp fast oeq float %6563, 0.000000e+00
  br i1 %6564, label %8330, label %6565

; <label>:6565                                    ; preds = %6450
  %6566 = extractvalue %dx.types.CBufRet.f32 %6562, 0
  %6567 = extractvalue %dx.types.CBufRet.f32 %6562, 1
  %6568 = extractvalue %dx.types.CBufRet.f32 %6562, 2
  %6569 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %6570 = extractvalue %dx.types.CBufRet.f32 %6569, 0
  %6571 = extractvalue %dx.types.CBufRet.f32 %6569, 1
  %6572 = extractvalue %dx.types.CBufRet.f32 %6569, 2
  %6573 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %6574 = extractvalue %dx.types.CBufRet.f32 %6573, 0
  %6575 = extractvalue %dx.types.CBufRet.f32 %6573, 1
  %6576 = call float @dx.op.dot3.f32(i32 55, float %6570, float %6571, float %6572, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6577 = select i1 %262, float %6574, float %6570
  %6578 = select i1 %262, float %6576, float %6571
  %6579 = select i1 %262, float %6575, float %6572
  %6580 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %6581 = extractvalue %dx.types.CBufRet.f32 %6580, 2
  %6582 = fmul fast float %6581, %116
  %6583 = fmul fast float %6581, %117
  %6584 = fmul fast float %6581, %118
  %6585 = fadd fast float %6582, %188
  %6586 = fadd fast float %6583, %189
  %6587 = fadd fast float %6584, %190
  %6588 = fcmp fast olt float %6563, 0.000000e+00
  br i1 %6588, label %7846, label %6589

; <label>:6589                                    ; preds = %6565
  %6590 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6591 = extractvalue %dx.types.CBufRet.f32 %6590, 0
  %6592 = extractvalue %dx.types.CBufRet.f32 %6590, 1
  %6593 = extractvalue %dx.types.CBufRet.f32 %6590, 2
  %6594 = extractvalue %dx.types.CBufRet.f32 %6590, 3
  %6595 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %6596 = extractvalue %dx.types.CBufRet.f32 %6595, 0
  %6597 = extractvalue %dx.types.CBufRet.f32 %6595, 1
  %6598 = extractvalue %dx.types.CBufRet.f32 %6595, 2
  %6599 = extractvalue %dx.types.CBufRet.f32 %6595, 3
  %6600 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %6601 = extractvalue %dx.types.CBufRet.f32 %6600, 0
  %6602 = extractvalue %dx.types.CBufRet.f32 %6600, 1
  %6603 = extractvalue %dx.types.CBufRet.f32 %6600, 2
  %6604 = extractvalue %dx.types.CBufRet.f32 %6600, 3
  %6605 = fmul fast float %6591, %6585
  %6606 = call float @dx.op.tertiary.f32(i32 46, float %6586, float %6592, float %6605)  ; FMad(a,b,c)
  %6607 = call float @dx.op.tertiary.f32(i32 46, float %6587, float %6593, float %6606)  ; FMad(a,b,c)
  %6608 = fadd fast float %6607, %6594
  %6609 = fmul fast float %6596, %6585
  %6610 = call float @dx.op.tertiary.f32(i32 46, float %6586, float %6597, float %6609)  ; FMad(a,b,c)
  %6611 = call float @dx.op.tertiary.f32(i32 46, float %6587, float %6598, float %6610)  ; FMad(a,b,c)
  %6612 = fadd fast float %6611, %6599
  %6613 = fmul fast float %6601, %6585
  %6614 = call float @dx.op.tertiary.f32(i32 46, float %6586, float %6602, float %6613)  ; FMad(a,b,c)
  %6615 = call float @dx.op.tertiary.f32(i32 46, float %6587, float %6603, float %6614)  ; FMad(a,b,c)
  %6616 = fadd fast float %6615, %6604
  %6617 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %6618 = extractvalue %dx.types.CBufRet.f32 %6617, 0
  %6619 = fcmp fast une float %6618, 0.000000e+00
  %6620 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %6621 = extractvalue %dx.types.CBufRet.f32 %6620, 0
  %6622 = extractvalue %dx.types.CBufRet.f32 %6620, 1
  %6623 = extractvalue %dx.types.CBufRet.f32 %6620, 3
  %6624 = fmul fast float %6623, %6608
  %6625 = fmul fast float %6623, %6612
  %6626 = fadd fast float %6624, %6621
  %6627 = fadd fast float %6625, %6622
  %6628 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %6629 = extractvalue %dx.types.CBufRet.f32 %6628, 0
  %6630 = extractvalue %dx.types.CBufRet.f32 %6628, 1
  %6631 = extractvalue %dx.types.CBufRet.f32 %6628, 3
  %6632 = fmul fast float %6631, %6608
  %6633 = fmul fast float %6631, %6612
  %6634 = fadd fast float %6632, %6629
  %6635 = fadd fast float %6633, %6630
  %6636 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %6637 = extractvalue %dx.types.CBufRet.f32 %6636, 1
  %6638 = fsub fast float %6637, %6616
  %6639 = extractvalue %dx.types.CBufRet.f32 %6636, 2
  %6640 = fmul fast float %6638, %6639
  %6641 = fsub fast float 1.000000e+00, %6640
  %6642 = call float @dx.op.unary.f32(i32 7, float %6641)  ; Saturate(value)
  br i1 %6619, label %6703, label %6643

; <label>:6643                                    ; preds = %6589
  %6644 = extractvalue %dx.types.CBufRet.f32 %6628, 2
  %6645 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6646 = extractvalue %dx.types.CBufRet.f32 %6645, 2
  %6647 = fadd fast float %6646, %6644
  %6648 = fcmp fast ogt float %6647, 0.000000e+00
  br i1 %6648, label %6649, label %6673

; <label>:6649                                    ; preds = %6643
  %6650 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %6651 = extractvalue %dx.types.CBufRet.f32 %6650, 0
  %6652 = extractvalue %dx.types.CBufRet.f32 %6650, 1
  %6653 = fsub fast float %6634, %6651
  %6654 = fsub fast float %6635, %6652
  %6655 = fcmp fast olt float %6653, 0.000000e+00
  %6656 = fcmp fast olt float %6654, 0.000000e+00
  %6657 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %6658 = extractvalue %dx.types.CBufRet.f32 %6657, 0
  %6659 = extractvalue %dx.types.CBufRet.f32 %6657, 1
  %6660 = extractvalue %dx.types.CBufRet.f32 %6657, 2
  %6661 = extractvalue %dx.types.CBufRet.f32 %6657, 3
  %6662 = select i1 %6655, float %6658, float %6660
  %6663 = select i1 %6656, float %6659, float %6661
  %6664 = fmul fast float %6662, %6653
  %6665 = fmul fast float %6663, %6654
  %6666 = call float @dx.op.unary.f32(i32 6, float %6664)  ; FAbs(value)
  %6667 = call float @dx.op.unary.f32(i32 6, float %6665)  ; FAbs(value)
  %6668 = extractvalue %dx.types.CBufRet.f32 %6580, 0
  %6669 = call float @dx.op.binary.f32(i32 35, float %6666, float %6667)  ; FMax(a,b)
  %6670 = fsub fast float %6668, %6669
  %6671 = call float @dx.op.unary.f32(i32 7, float %6670)  ; Saturate(value)
  %6672 = fmul fast float %6671, %6642
  br label %6673

; <label>:6673                                    ; preds = %6649, %6643
  %6674 = phi float [ %6672, %6649 ], [ 0.000000e+00, %6643 ]
  %6675 = extractvalue %dx.types.CBufRet.f32 %6620, 2
  %6676 = extractvalue %dx.types.CBufRet.f32 %6645, 1
  %6677 = fadd fast float %6676, %6675
  %6678 = fcmp fast ogt float %6677, 0.000000e+00
  br i1 %6678, label %6679, label %6703

; <label>:6679                                    ; preds = %6673
  %6680 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %6681 = extractvalue %dx.types.CBufRet.f32 %6680, 0
  %6682 = extractvalue %dx.types.CBufRet.f32 %6680, 1
  %6683 = fsub fast float %6626, %6681
  %6684 = fsub fast float %6627, %6682
  %6685 = fcmp fast olt float %6683, 0.000000e+00
  %6686 = fcmp fast olt float %6684, 0.000000e+00
  %6687 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %6688 = extractvalue %dx.types.CBufRet.f32 %6687, 0
  %6689 = extractvalue %dx.types.CBufRet.f32 %6687, 1
  %6690 = extractvalue %dx.types.CBufRet.f32 %6687, 2
  %6691 = extractvalue %dx.types.CBufRet.f32 %6687, 3
  %6692 = select i1 %6685, float %6688, float %6690
  %6693 = select i1 %6686, float %6689, float %6691
  %6694 = fmul fast float %6692, %6683
  %6695 = fmul fast float %6693, %6684
  %6696 = call float @dx.op.unary.f32(i32 6, float %6694)  ; FAbs(value)
  %6697 = call float @dx.op.unary.f32(i32 6, float %6695)  ; FAbs(value)
  %6698 = extractvalue %dx.types.CBufRet.f32 %6580, 0
  %6699 = call float @dx.op.binary.f32(i32 35, float %6696, float %6697)  ; FMax(a,b)
  %6700 = fsub fast float %6698, %6699
  %6701 = call float @dx.op.unary.f32(i32 7, float %6700)  ; Saturate(value)
  %6702 = fmul fast float %6701, %6642
  br label %6703

; <label>:6703                                    ; preds = %6679, %6673, %6589
  %6704 = phi float [ 0.000000e+00, %6589 ], [ %6702, %6679 ], [ 0.000000e+00, %6673 ]
  %6705 = phi float [ 0.000000e+00, %6589 ], [ %6674, %6679 ], [ %6674, %6673 ]
  %6706 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %6707 = extractvalue %dx.types.CBufRet.f32 %6706, 1
  %6708 = call float @dx.op.unary.f32(i32 7, float %6707)  ; Saturate(value)
  %6709 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %6710 = extractvalue %dx.types.CBufRet.f32 %6709, 0
  %6711 = extractvalue %dx.types.CBufRet.f32 %6709, 1
  %6712 = fsub fast float %6608, %6710
  %6713 = fsub fast float %6612, %6711
  %6714 = fcmp fast olt float %6712, 0.000000e+00
  %6715 = fcmp fast olt float %6713, 0.000000e+00
  %6716 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %6717 = extractvalue %dx.types.CBufRet.f32 %6716, 0
  %6718 = extractvalue %dx.types.CBufRet.f32 %6716, 1
  %6719 = extractvalue %dx.types.CBufRet.f32 %6716, 2
  %6720 = extractvalue %dx.types.CBufRet.f32 %6716, 3
  %6721 = select i1 %6714, float %6717, float %6719
  %6722 = select i1 %6715, float %6718, float %6720
  %6723 = fmul fast float %6721, %6712
  %6724 = fmul fast float %6722, %6713
  %6725 = call float @dx.op.unary.f32(i32 6, float %6723)  ; FAbs(value)
  %6726 = call float @dx.op.unary.f32(i32 6, float %6724)  ; FAbs(value)
  %6727 = extractvalue %dx.types.CBufRet.f32 %6580, 0
  %6728 = call float @dx.op.binary.f32(i32 35, float %6725, float %6726)  ; FMax(a,b)
  %6729 = fsub fast float %6727, %6728
  %6730 = call float @dx.op.unary.f32(i32 7, float %6729)  ; Saturate(value)
  %6731 = call float @dx.op.binary.f32(i32 36, float %6730, float %6708)  ; FMin(a,b)
  %6732 = fmul fast float %6731, %6642
  %6733 = fsub fast float %6704, %6732
  %6734 = fsub fast float %6705, %6704
  %6735 = fsub fast float %6734, %6732
  %6736 = call float @dx.op.binary.f32(i32 35, float %6704, float %6705)  ; FMax(a,b)
  %6737 = call float @dx.op.binary.f32(i32 35, float %6732, float %6736)  ; FMax(a,b)
  %6738 = fcmp fast olt float %6737, 1.000000e+00
  br i1 %6738, label %6739, label %7137, !dx.controlflow.hints !95

; <label>:6739                                    ; preds = %6703
  %6740 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %6741 = extractvalue %dx.types.CBufRet.f32 %6740, 0
  %6742 = fcmp fast une float %6741, 0.000000e+00
  br i1 %6742, label %6743, label %7137, !dx.controlflow.hints !96

; <label>:6743                                    ; preds = %6739
  %6744 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %6745 = extractvalue %dx.types.CBufRet.f32 %6744, 0
  %6746 = extractvalue %dx.types.CBufRet.f32 %6744, 1
  %6747 = extractvalue %dx.types.CBufRet.f32 %6744, 2
  %6748 = extractvalue %dx.types.CBufRet.f32 %6744, 3
  %6749 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %6750 = extractvalue %dx.types.CBufRet.f32 %6749, 0
  %6751 = extractvalue %dx.types.CBufRet.f32 %6749, 1
  %6752 = extractvalue %dx.types.CBufRet.f32 %6749, 2
  %6753 = extractvalue %dx.types.CBufRet.f32 %6749, 3
  %6754 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %6755 = extractvalue %dx.types.CBufRet.f32 %6754, 0
  %6756 = extractvalue %dx.types.CBufRet.f32 %6754, 1
  %6757 = extractvalue %dx.types.CBufRet.f32 %6754, 2
  %6758 = extractvalue %dx.types.CBufRet.f32 %6754, 3
  %6759 = fmul fast float %6745, %6585
  %6760 = call float @dx.op.tertiary.f32(i32 46, float %6586, float %6746, float %6759)  ; FMad(a,b,c)
  %6761 = call float @dx.op.tertiary.f32(i32 46, float %6587, float %6747, float %6760)  ; FMad(a,b,c)
  %6762 = fadd fast float %6761, %6748
  %6763 = fmul fast float %6750, %6585
  %6764 = call float @dx.op.tertiary.f32(i32 46, float %6586, float %6751, float %6763)  ; FMad(a,b,c)
  %6765 = call float @dx.op.tertiary.f32(i32 46, float %6587, float %6752, float %6764)  ; FMad(a,b,c)
  %6766 = fadd fast float %6765, %6753
  %6767 = fmul fast float %6755, %6585
  %6768 = call float @dx.op.tertiary.f32(i32 46, float %6586, float %6756, float %6767)  ; FMad(a,b,c)
  %6769 = call float @dx.op.tertiary.f32(i32 46, float %6587, float %6757, float %6768)  ; FMad(a,b,c)
  %6770 = fadd fast float %6769, %6758
  %6771 = fcmp fast oge float %6762, 1.000000e+00
  %6772 = fcmp fast oge float %6766, 1.000000e+00
  %6773 = or i1 %6771, %6772
  %6774 = fcmp fast olt float %6762, 0.000000e+00
  %6775 = fcmp fast olt float %6766, 0.000000e+00
  %6776 = or i1 %6774, %6775
  %6777 = or i1 %6773, %6776
  br i1 %6777, label %7137, label %6778, !dx.controlflow.hints !97

; <label>:6778                                    ; preds = %6743
  %6779 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %6780 = extractvalue %dx.types.CBufRet.f32 %6779, 0
  %6781 = extractvalue %dx.types.CBufRet.f32 %6779, 1
  %6782 = extractvalue %dx.types.CBufRet.f32 %6779, 2
  %6783 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %6784 = extractvalue %dx.types.CBufRet.i32 %6783, 2
  %6785 = uitofp i32 %6784 to float
  %6786 = extractvalue %dx.types.CBufRet.i32 %6783, 3
  %6787 = uitofp i32 %6786 to float
  %6788 = extractvalue %dx.types.CBufRet.f32 %6779, 3
  %6789 = fmul fast float %6788, 2.000000e+00
  %6790 = fsub fast float %6762, %6780
  %6791 = fsub fast float %6766, %6781
  %6792 = fmul fast float %6789, %6790
  %6793 = fmul fast float %6789, %6791
  %6794 = fdiv fast float 1.000000e+00, %6568
  %6795 = fmul fast float %6793, %6794
  %6796 = call float @dx.op.unary.f32(i32 6, float %6795)  ; FAbs(value)
  %6797 = fmul fast float %6782, %6587
  %6798 = fmul fast float %6797, %6789
  %6799 = call float @dx.op.unary.f32(i32 6, float %6798)  ; FAbs(value)
  %6800 = call float @dx.op.unary.f32(i32 6, float %6792)  ; FAbs(value)
  %6801 = call float @dx.op.binary.f32(i32 35, float %6799, float %6796)  ; FMax(a,b)
  %6802 = call float @dx.op.binary.f32(i32 35, float %6800, float %6801)  ; FMax(a,b)
  %6803 = fmul fast float %6802, 2.000000e+00
  %6804 = call float @dx.op.unary.f32(i32 23, float %6803)  ; Log(value)
  %6805 = call float @dx.op.binary.f32(i32 35, float %6804, float %6785)  ; FMax(a,b)
  %6806 = call float @dx.op.unary.f32(i32 22, float %6805)  ; Frc(value)
  %6807 = fadd fast float %6806, 0xBFEA666660000000
  %6808 = fmul fast float %6807, 8.000000e+00
  %6809 = call float @dx.op.unary.f32(i32 7, float %6808)  ; Saturate(value)
  %6810 = call float @dx.op.unary.f32(i32 27, float %6805)  ; Round_ni(value)
  %6811 = fadd fast float %6810, %6809
  %6812 = call float @dx.op.binary.f32(i32 36, float %6811, float %6787)  ; FMin(a,b)
  %6813 = call float @dx.op.unary.f32(i32 27, float %6812)  ; Round_ni(value)
  %6814 = fsub fast float -0.000000e+00, %6813
  %6815 = call float @dx.op.unary.f32(i32 21, float %6814)  ; Exp(value)
  %6816 = fmul fast float %6815, %6789
  %6817 = fmul fast float %6816, %6762
  %6818 = fmul fast float %6816, %6766
  %6819 = fmul fast float %6817, 2.500000e-01
  %6820 = fmul fast float %6818, 2.500000e-01
  %6821 = fadd fast float %6819, 5.000000e-01
  %6822 = fadd fast float %6820, 5.000000e-01
  %6823 = fsub fast float %6787, %6785
  %6824 = fptoui float %6823 to i32
  %6825 = add i32 %6824, 320
  %6826 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 %6825)  ; CBufferLoadLegacy(handle,regIndex)
  %6827 = extractvalue %dx.types.CBufRet.f32 %6826, 0
  %6828 = extractvalue %dx.types.CBufRet.f32 %6826, 1
  %6829 = fcmp fast une float %6812, %6787
  %6830 = fsub fast float %6762, %6827
  %6831 = fsub fast float %6766, %6828
  %6832 = call float @dx.op.unary.f32(i32 6, float %6830)  ; FAbs(value)
  %6833 = call float @dx.op.unary.f32(i32 6, float %6831)  ; FAbs(value)
  %6834 = fmul fast float %6832, %6816
  %6835 = fmul fast float %6833, %6816
  %6836 = fcmp fast olt float %6834, 1.000000e+00
  %6837 = fcmp fast olt float %6835, 1.000000e+00
  %6838 = and i1 %6836, %6837
  %6839 = or i1 %6829, %6838
  br i1 %6839, label %6840, label %7137, !dx.controlflow.hints !98

; <label>:6840                                    ; preds = %6778
  %6841 = fmul fast float %6818, 5.000000e-01
  %6842 = fmul fast float %6817, 5.000000e-01
  %6843 = fadd fast float %6841, 5.000000e-01
  %6844 = fadd fast float %6842, 5.000000e-01
  %6845 = sitofp i32 %6784 to float
  %6846 = fsub fast float %6812, %6845
  %6847 = call float @dx.op.unary.f32(i32 27, float %6846)  ; Round_ni(value)
  %6848 = call float @dx.op.unary.f32(i32 22, float %6812)  ; Frc(value)
  %6849 = call float @dx.op.unary.f32(i32 22, float %6844)  ; Frc(value)
  %6850 = call float @dx.op.unary.f32(i32 22, float %6843)  ; Frc(value)
  %6851 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %42, float %6849, float %6850, float %6847, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6852 = extractvalue %dx.types.ResRet.f32 %6851, 0
  %6853 = extractvalue %dx.types.ResRet.f32 %6851, 1
  %6854 = extractvalue %dx.types.ResRet.f32 %6851, 2
  %6855 = extractvalue %dx.types.ResRet.f32 %6851, 3
  %6856 = fcmp fast ogt float %6848, 0.000000e+00
  br i1 %6856, label %6857, label %6878, !dx.controlflow.hints !99

; <label>:6857                                    ; preds = %6840
  %6858 = fadd fast float %6847, 1.000000e+00
  %6859 = call float @dx.op.unary.f32(i32 22, float %6821)  ; Frc(value)
  %6860 = call float @dx.op.unary.f32(i32 22, float %6822)  ; Frc(value)
  %6861 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %42, float %6859, float %6860, float %6858, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6862 = extractvalue %dx.types.ResRet.f32 %6861, 0
  %6863 = extractvalue %dx.types.ResRet.f32 %6861, 1
  %6864 = extractvalue %dx.types.ResRet.f32 %6861, 2
  %6865 = extractvalue %dx.types.ResRet.f32 %6861, 3
  %6866 = fsub fast float %6862, %6852
  %6867 = fsub fast float %6863, %6853
  %6868 = fsub fast float %6864, %6854
  %6869 = fsub fast float %6865, %6855
  %6870 = fmul fast float %6866, %6848
  %6871 = fmul fast float %6867, %6848
  %6872 = fmul fast float %6868, %6848
  %6873 = fmul fast float %6869, %6848
  %6874 = fadd fast float %6870, %6852
  %6875 = fadd fast float %6871, %6853
  %6876 = fadd fast float %6872, %6854
  %6877 = fadd fast float %6873, %6855
  br label %6878

; <label>:6878                                    ; preds = %6857, %6840
  %6879 = phi float [ %6874, %6857 ], [ %6852, %6840 ]
  %6880 = phi float [ %6875, %6857 ], [ %6853, %6840 ]
  %6881 = phi float [ %6876, %6857 ], [ %6854, %6840 ]
  %6882 = phi float [ %6877, %6857 ], [ %6855, %6840 ]
  %6883 = fadd fast float %6879, -5.000000e-01
  %6884 = fadd fast float %6881, -5.000000e-01
  %6885 = fmul fast float %6883, 0xBFD5555560000000
  %6886 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %6884, float %6885)  ; FMad(a,b,c)
  %6887 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %6880, float 0.000000e+00)  ; FMad(a,b,c)
  %6888 = fadd fast float %6887, %6882
  %6889 = fmul fast float %6883, -7.500000e-01
  %6890 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %6884, float %6889)  ; FMad(a,b,c)
  %6891 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %6880, float 0.000000e+00)  ; FMad(a,b,c)
  %6892 = fadd fast float %6891, %6882
  %6893 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %6894 = extractvalue %dx.types.CBufRet.f32 %6893, 0
  %6895 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %6896 = extractvalue %dx.types.CBufRet.f32 %6895, 0
  %6897 = extractvalue %dx.types.CBufRet.f32 %6895, 1
  %6898 = extractvalue %dx.types.CBufRet.f32 %6895, 2
  %6899 = extractvalue %dx.types.CBufRet.f32 %6895, 3
  %6900 = fsub fast float %6896, %6886
  %6901 = fsub fast float %6897, %6888
  %6902 = fsub fast float %6898, %6890
  %6903 = fsub fast float %6899, %6892
  %6904 = fmul fast float %6900, %6894
  %6905 = fmul fast float %6901, %6894
  %6906 = fmul fast float %6902, %6894
  %6907 = fmul fast float %6903, %6894
  %6908 = fadd fast float %6904, %6886
  %6909 = fadd fast float %6905, %6888
  %6910 = fadd fast float %6906, %6890
  %6911 = fadd fast float %6907, %6892
  %6912 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %6913 = extractvalue %dx.types.ResRet.i32 %6912, 0
  %6914 = and i32 %6913, 536870911
  %6915 = uitofp i32 %6914 to float
  %6916 = fmul fast float %6915, %6762
  %6917 = fmul fast float %6915, %6766
  %6918 = fptoui float %6916 to i32
  %6919 = fptoui float %6917 to i32
  %6920 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6921 = extractvalue %dx.types.ResRet.i32 %6920, 0
  %6922 = and i32 %6921, 31
  %6923 = lshr i32 %6918, %6922
  %6924 = lshr i32 %6919, %6922
  %6925 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6926 = extractvalue %dx.types.ResRet.i32 %6925, 0
  %6927 = and i32 %6926, 31
  %6928 = shl i32 1, %6927
  %6929 = call i32 @dx.op.binary.i32(i32 40, i32 %6928, i32 4)  ; UMin(a,b)
  %6930 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %6931 = extractvalue %dx.types.ResRet.i32 %6930, 0
  %6932 = extractvalue %dx.types.ResRet.i32 %6930, 1
  %6933 = icmp eq i32 %6929, 0
  br i1 %6933, label %6975, label %6934

; <label>:6934                                    ; preds = %6878
  br label %6935

; <label>:6935                                    ; preds = %6963, %6934
  %6936 = phi i32 [ %6966, %6963 ], [ 0, %6934 ]
  %6937 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6938 = extractvalue %dx.types.ResRet.i32 %6937, 0
  %6939 = lshr i32 %6938, 16
  %6940 = and i32 %6939, 31
  %6941 = shl i32 %6924, %6940
  %6942 = add i32 %6941, %6923
  %6943 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6944 = extractvalue %dx.types.ResRet.i32 %6943, 0
  %6945 = and i32 %6944, 31
  %6946 = shl i32 %6942, %6945
  %6947 = add i32 %6946, %6936
  %6948 = shl i32 %6947, 2
  %6949 = add i32 %6948, 32
  %6950 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %6949, i32 undef)  ; BufferLoad(srv,index,wot)
  %6951 = extractvalue %dx.types.ResRet.i32 %6950, 0
  %6952 = icmp slt i32 %6951, 0
  %6953 = getelementptr [12 x float], [12 x float]* %97, i32 0, i32 %6936
  %6954 = getelementptr [12 x float], [12 x float]* %98, i32 0, i32 %6936
  %6955 = bitcast float* %6953 to i32*
  %6956 = bitcast float* %6954 to i32*
  br i1 %6952, label %6957, label %6963

; <label>:6957                                    ; preds = %6935
  %6958 = and i32 %6951, 1073741823
  %6959 = add nuw nsw i32 %6958, 20
  %6960 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %6959, i32 undef)  ; BufferLoad(srv,index,wot)
  %6961 = extractvalue %dx.types.ResRet.i32 %6960, 0
  %6962 = extractvalue %dx.types.ResRet.i32 %6960, 1
  br label %6963

; <label>:6963                                    ; preds = %6957, %6935
  %6964 = phi i32 [ %6961, %6957 ], [ %6931, %6935 ]
  %6965 = phi i32 [ %6962, %6957 ], [ %6932, %6935 ]
  store i32 %6964, i32* %6955, align 4
  store i32 %6965, i32* %6956, align 4
  %6966 = add nuw i32 %6936, 1
  %6967 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %6968 = extractvalue %dx.types.CBufRet.i32 %6967, 2
  %6969 = icmp eq i32 %6968, 0
  %6970 = icmp ugt i32 %6951, -1073741825
  %6971 = and i1 %6970, %6969
  %6972 = icmp ult i32 %6966, %6929
  %6973 = and i1 %6971, %6972
  br i1 %6973, label %6935, label %6974

; <label>:6974                                    ; preds = %6963
  br label %6975

; <label>:6975                                    ; preds = %6974, %6878
  %6976 = phi i32 [ 0, %6878 ], [ %6966, %6974 ]
  %6977 = extractvalue %dx.types.CBufRet.f32 %6740, 2
  %6978 = fptoui float %6977 to i32
  %6979 = icmp eq i32 %6978, 0
  br i1 %6979, label %7031, label %6980

; <label>:6980                                    ; preds = %6975
  br label %6981

; <label>:6981                                    ; preds = %7026, %6980
  %6982 = phi i32 [ %7027, %7026 ], [ %6976, %6980 ]
  %6983 = phi i32 [ %7028, %7026 ], [ 0, %6980 ]
  %6984 = lshr i32 %6983, 2
  %6985 = and i32 %6983, 3
  %6986 = add nuw nsw i32 %6984, 83
  %6987 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 %6986)  ; CBufferLoadLegacy(handle,regIndex)
  %6988 = extractvalue %dx.types.CBufRet.i32 %6987, 0
  %6989 = extractvalue %dx.types.CBufRet.i32 %6987, 1
  %6990 = extractvalue %dx.types.CBufRet.i32 %6987, 2
  %6991 = extractvalue %dx.types.CBufRet.i32 %6987, 3
  %6992 = getelementptr inbounds [4 x i32], [4 x i32]* %48, i32 0, i32 0
  store i32 %6988, i32* %6992, align 4
  %6993 = getelementptr inbounds [4 x i32], [4 x i32]* %48, i32 0, i32 1
  store i32 %6989, i32* %6993, align 4
  %6994 = getelementptr inbounds [4 x i32], [4 x i32]* %48, i32 0, i32 2
  store i32 %6990, i32* %6994, align 4
  %6995 = getelementptr inbounds [4 x i32], [4 x i32]* %48, i32 0, i32 3
  store i32 %6991, i32* %6995, align 4
  %6996 = getelementptr inbounds [4 x i32], [4 x i32]* %48, i32 0, i32 %6985
  %6997 = load i32, i32* %6996, align 4, !tbaa !100, !noalias !104
  %6998 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6999 = extractvalue %dx.types.ResRet.i32 %6998, 0
  %7000 = lshr i32 %6999, 16
  %7001 = and i32 %7000, 31
  %7002 = shl i32 %6924, %7001
  %7003 = add i32 %7002, %6923
  %7004 = shl i32 %7003, 2
  %7005 = add i32 %7004, %6997
  %7006 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %7005, i32 undef)  ; BufferLoad(srv,index,wot)
  %7007 = extractvalue %dx.types.ResRet.i32 %7006, 0
  %7008 = icmp eq i32 %7007, 0
  br i1 %7008, label %7026, label %7009

; <label>:7009                                    ; preds = %6981
  %7010 = icmp slt i32 %7007, 0
  %7011 = getelementptr [12 x float], [12 x float]* %97, i32 0, i32 %6982
  %7012 = getelementptr [12 x float], [12 x float]* %98, i32 0, i32 %6982
  %7013 = bitcast float* %7011 to i32*
  %7014 = bitcast float* %7012 to i32*
  br i1 %7010, label %7015, label %7022

; <label>:7015                                    ; preds = %7009
  %7016 = and i32 %7007, 1073741823
  %7017 = add i32 %6997, 20
  %7018 = add i32 %7017, %7016
  %7019 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %7018, i32 undef)  ; BufferLoad(srv,index,wot)
  %7020 = extractvalue %dx.types.ResRet.i32 %7019, 0
  %7021 = extractvalue %dx.types.ResRet.i32 %7019, 1
  br label %7022

; <label>:7022                                    ; preds = %7015, %7009
  %7023 = phi i32 [ %7020, %7015 ], [ %6931, %7009 ]
  %7024 = phi i32 [ %7021, %7015 ], [ %6932, %7009 ]
  store i32 %7023, i32* %7013, align 4
  store i32 %7024, i32* %7014, align 4
  %7025 = add i32 %6982, 1
  br label %7026

; <label>:7026                                    ; preds = %7022, %6981
  %7027 = phi i32 [ %6982, %6981 ], [ %7025, %7022 ]
  %7028 = add nuw i32 %6983, 1
  %7029 = icmp eq i32 %7028, %6978
  br i1 %7029, label %7030, label %6981

; <label>:7030                                    ; preds = %7026
  br label %7031

; <label>:7031                                    ; preds = %7030, %6975
  %7032 = phi i32 [ %6976, %6975 ], [ %7027, %7030 ]
  %7033 = icmp eq i32 %7032, 1
  %7034 = getelementptr [12 x float], [12 x float]* %97, i32 0, i32 0
  %7035 = getelementptr [12 x float], [12 x float]* %98, i32 0, i32 0
  br i1 %7033, label %7036, label %7039

; <label>:7036                                    ; preds = %7031
  %7037 = load float, float* %7034, align 4
  %7038 = load float, float* %7035, align 4
  br label %7066

; <label>:7039                                    ; preds = %7031
  %7040 = load float, float* %7034, align 4
  %7041 = load float, float* %7035, align 4
  %7042 = fdiv fast float 1.000000e+00, %7041
  %7043 = fsub fast float %7040, %7042
  %7044 = icmp ugt i32 %7032, 1
  br i1 %7044, label %7045, label %7061

; <label>:7045                                    ; preds = %7039
  br label %7046

; <label>:7046                                    ; preds = %7046, %7045
  %7047 = phi float [ %7056, %7046 ], [ %7043, %7045 ]
  %7048 = phi float [ %7057, %7046 ], [ %7040, %7045 ]
  %7049 = phi i32 [ %7058, %7046 ], [ 1, %7045 ]
  %7050 = getelementptr [12 x float], [12 x float]* %97, i32 0, i32 %7049
  %7051 = load float, float* %7050, align 4
  %7052 = getelementptr [12 x float], [12 x float]* %98, i32 0, i32 %7049
  %7053 = load float, float* %7052, align 4
  %7054 = fdiv fast float 1.000000e+00, %7053
  %7055 = fsub fast float %7051, %7054
  %7056 = call float @dx.op.binary.f32(i32 36, float %7047, float %7055)  ; FMin(a,b)
  %7057 = call float @dx.op.binary.f32(i32 35, float %7048, float %7051)  ; FMax(a,b)
  %7058 = add nuw i32 %7049, 1
  %7059 = icmp eq i32 %7058, %7032
  br i1 %7059, label %7060, label %7046

; <label>:7060                                    ; preds = %7046
  br label %7061

; <label>:7061                                    ; preds = %7060, %7039
  %7062 = phi float [ %7043, %7039 ], [ %7056, %7060 ]
  %7063 = phi float [ %7040, %7039 ], [ %7057, %7060 ]
  %7064 = fsub fast float %7063, %7062
  %7065 = fdiv fast float 1.000000e+00, %7064
  br label %7066

; <label>:7066                                    ; preds = %7061, %7036
  %7067 = phi float [ %7037, %7036 ], [ %7063, %7061 ]
  %7068 = phi float [ %7038, %7036 ], [ %7065, %7061 ]
  %7069 = fadd fast float %6770, %7067
  %7070 = fmul fast float %7069, %7068
  %7071 = call float @dx.op.unary.f32(i32 7, float %7070)  ; Saturate(value)
  %7072 = fmul fast float %7071, 2.000000e+00
  %7073 = fsub fast float 1.000000e+00, %7072
  %7074 = fmul fast float %6908, %6908
  %7075 = fsub fast float %6909, %7074
  %7076 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %7075)  ; FMax(a,b)
  %7077 = fdiv fast float 1.000000e+00, %7076
  %7078 = fmul fast float %6909, %6908
  %7079 = fsub fast float %6910, %7078
  %7080 = fsub fast float %7073, %6908
  %7081 = fmul fast float %7073, %7073
  %7082 = fsub fast float %7081, %6909
  %7083 = fmul fast float %7077, %7079
  %7084 = fmul fast float %7083, %7080
  %7085 = fsub fast float %7082, %7084
  %7086 = fmul fast float %6909, %6909
  %7087 = fsub fast float %6911, %7086
  %7088 = fmul fast float %7079, %7079
  %7089 = fmul fast float %7088, %7077
  %7090 = fsub fast float %7087, %7089
  %7091 = fdiv fast float %7085, %7090
  %7092 = fmul fast float %7091, %7079
  %7093 = fsub fast float %7080, %7092
  %7094 = fmul fast float %7093, %7077
  %7095 = fmul fast float %7094, %6908
  %7096 = fsub fast float 1.000000e+00, %7095
  %7097 = fmul fast float %7091, %6909
  %7098 = fsub fast float %7096, %7097
  %7099 = fmul fast float %7094, %7094
  %7100 = fmul fast float %7091, 4.000000e+00
  %7101 = fmul fast float %7100, %7098
  %7102 = fsub fast float %7099, %7101
  %7103 = call float @dx.op.unary.f32(i32 24, float %7102)  ; Sqrt(value)
  %7104 = fcmp fast oge float %7094, 0.000000e+00
  %7105 = fsub fast float -0.000000e+00, %7103
  %7106 = select i1 %7104, float %7105, float %7103
  %7107 = fsub fast float %7106, %7094
  %7108 = fdiv fast float %7107, %7091
  %7109 = fdiv fast float %7098, %7107
  %7110 = fmul fast float %7108, 5.000000e-01
  %7111 = fmul fast float %7109, 2.000000e+00
  %7112 = select i1 %7104, float %7110, float %7111
  %7113 = select i1 %7104, float %7111, float %7110
  %7114 = call float @dx.op.binary.f32(i32 35, float %7112, float %7113)  ; FMax(a,b)
  %7115 = call float @dx.op.binary.f32(i32 36, float %7112, float %7113)  ; FMin(a,b)
  %7116 = fcmp fast ogt float %7073, %7114
  %7117 = fsub fast float %7073, %7115
  %7118 = fsub fast float %7073, %7114
  %7119 = fsub fast float %7114, %7115
  %7120 = select i1 %7116, float %7118, float %7119
  %7121 = fmul float %7117, %7120
  %7122 = select i1 %7116, float %7115, float %7073
  %7123 = fcmp fast ogt float %7073, %7115
  %7124 = fmul fast float %7122, %7114
  %7125 = fadd fast float %7122, %7114
  %7126 = fmul fast float %7125, %6908
  %7127 = fadd fast float %7124, %6909
  %7128 = fsub fast float %7127, %7126
  %7129 = fdiv fast float %7128, %7121
  %7130 = select i1 %7123, float %7129, float 0.000000e+00
  %7131 = fsub fast float 1.000000e+00, %7130
  %7132 = select i1 %7116, float %7131, float %7130
  %7133 = call float @dx.op.unary.f32(i32 7, float %7132)  ; Saturate(value)
  %7134 = extractvalue %dx.types.CBufRet.f32 %6893, 3
  %7135 = fmul fast float %7134, %7133
  %7136 = fsub fast float 1.000000e+00, %7135
  br label %7137

; <label>:7137                                    ; preds = %7066, %6778, %6743, %6739, %6703
  %7138 = phi float [ 1.000000e+00, %6703 ], [ %7136, %7066 ], [ 1.000000e+00, %6743 ], [ 1.000000e+00, %6778 ], [ 1.000000e+00, %6739 ]
  %7139 = fcmp fast ogt float %6735, 0.000000e+00
  br i1 %7139, label %7140, label %7304, !dx.controlflow.hints !113

; <label>:7140                                    ; preds = %7137
  %7141 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %7142 = extractvalue %dx.types.CBufRet.f32 %7141, 2
  %7143 = fadd fast float %7142, %6616
  %7144 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %7145 = extractvalue %dx.types.CBufRet.f32 %7144, 2
  %7146 = extractvalue %dx.types.CBufRet.f32 %7144, 3
  %7147 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %7148 = extractvalue %dx.types.CBufRet.f32 %7147, 2
  %7149 = call float @dx.op.binary.f32(i32 35, float %7143, float 0.000000e+00)  ; FMax(a,b)
  %7150 = fadd fast float %7149, 0x3F10000000000000
  %7151 = fcmp fast oeq float %7148, 0.000000e+00
  br i1 %7151, label %7152, label %7219

; <label>:7152                                    ; preds = %7140
  %7153 = extractvalue %dx.types.CBufRet.f32 %7144, 1
  %7154 = extractvalue %dx.types.CBufRet.f32 %7144, 0
  %7155 = fmul fast float %7154, %6634
  %7156 = fmul fast float %7153, %6635
  %7157 = fadd fast float %7155, 5.000000e-01
  %7158 = call float @dx.op.unary.f32(i32 27, float %7157)  ; Round_ni(value)
  %7159 = fadd fast float %7156, 5.000000e-01
  %7160 = call float @dx.op.unary.f32(i32 27, float %7159)  ; Round_ni(value)
  %7161 = fsub fast float %7157, %7158
  %7162 = fsub fast float %7159, %7160
  %7163 = fadd fast float %7158, -5.000000e-01
  %7164 = fadd fast float %7160, -5.000000e-01
  %7165 = fmul fast float %7161, 2.000000e+00
  %7166 = fsub fast float 3.000000e+00, %7165
  %7167 = fadd fast float %7165, 1.000000e+00
  %7168 = fsub fast float 2.000000e+00, %7161
  %7169 = bitcast float %7166 to i32
  %7170 = sub nsw i32 2129859010, %7169
  %7171 = bitcast i32 %7170 to float
  %7172 = fmul fast float %7171, %7168
  %7173 = fadd fast float %7172, -1.000000e+00
  %7174 = bitcast float %7167 to i32
  %7175 = sub nsw i32 2129859010, %7174
  %7176 = bitcast i32 %7175 to float
  %7177 = fmul fast float %7176, %7161
  %7178 = fadd fast float %7177, 1.000000e+00
  %7179 = fmul fast float %7162, 2.000000e+00
  %7180 = fsub fast float 3.000000e+00, %7179
  %7181 = fadd fast float %7179, 1.000000e+00
  %7182 = fsub fast float 2.000000e+00, %7162
  %7183 = bitcast float %7180 to i32
  %7184 = sub nsw i32 2129859010, %7183
  %7185 = bitcast i32 %7184 to float
  %7186 = fmul fast float %7185, %7182
  %7187 = fadd fast float %7186, -1.000000e+00
  %7188 = bitcast float %7181 to i32
  %7189 = sub nsw i32 2129859010, %7188
  %7190 = bitcast i32 %7189 to float
  %7191 = fmul fast float %7190, %7162
  %7192 = fadd fast float %7191, 1.000000e+00
  %7193 = fadd fast float %7173, %7163
  %7194 = fmul fast float %7193, %7145
  %7195 = fadd fast float %7187, %7164
  %7196 = fmul fast float %7195, %7146
  %7197 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %14, %dx.types.Handle %45, float %7194, float %7196, float undef, float undef, i32 0, i32 0, i32 undef, float %7150)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7198 = extractvalue %dx.types.ResRet.f32 %7197, 0
  %7199 = fmul fast float %7198, %7166
  %7200 = fadd fast float %7178, %7163
  %7201 = fmul fast float %7200, %7145
  %7202 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %14, %dx.types.Handle %45, float %7201, float %7196, float undef, float undef, i32 0, i32 0, i32 undef, float %7150)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7203 = extractvalue %dx.types.ResRet.f32 %7202, 0
  %7204 = fmul fast float %7203, %7167
  %7205 = fadd fast float %7192, %7164
  %7206 = fmul fast float %7205, %7146
  %7207 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %14, %dx.types.Handle %45, float %7194, float %7206, float undef, float undef, i32 0, i32 0, i32 undef, float %7150)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7208 = extractvalue %dx.types.ResRet.f32 %7207, 0
  %7209 = fmul fast float %7208, %7166
  %7210 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %14, %dx.types.Handle %45, float %7201, float %7206, float undef, float undef, i32 0, i32 0, i32 undef, float %7150)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7211 = extractvalue %dx.types.ResRet.f32 %7210, 0
  %7212 = fmul fast float %7211, %7167
  %7213 = fadd fast float %7212, %7209
  %7214 = fmul fast float %7213, %7181
  %7215 = fadd fast float %7204, %7199
  %7216 = fmul fast float %7215, %7180
  %7217 = fadd fast float %7216, %7214
  %7218 = fmul fast float %7217, 6.250000e-02
  br label %7304

; <label>:7219                                    ; preds = %7140
  %7220 = fmul fast float %273, 0x401921FB60000000
  %7221 = call float @dx.op.unary.f32(i32 13, float %7220)  ; Sin(value)
  %7222 = call float @dx.op.unary.f32(i32 12, float %7220)  ; Cos(value)
  %7223 = fsub fast float -0.000000e+00, %7221
  br label %7224

; <label>:7224                                    ; preds = %7273, %7219
  %7225 = phi float [ 0.000000e+00, %7219 ], [ %7268, %7273 ]
  %7226 = phi float [ 0.000000e+00, %7219 ], [ %7270, %7273 ]
  %7227 = phi i32 [ 0, %7219 ], [ %7274, %7273 ]
  %7228 = mul i32 %7227, 2
  %7229 = add i32 0, %7228
  %7230 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7229
  %7231 = load float, float* %7230, align 4
  %7232 = mul i32 %7227, 2
  %7233 = add i32 1, %7232
  %7234 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7233
  %7235 = load float, float* %7234, align 4
  %7236 = fmul fast float %7231, %7222
  %7237 = call float @dx.op.tertiary.f32(i32 46, float %7235, float %7223, float %7236)  ; FMad(a,b,c)
  %7238 = fmul fast float %7231, %7221
  %7239 = call float @dx.op.tertiary.f32(i32 46, float %7235, float %7222, float %7238)  ; FMad(a,b,c)
  %7240 = fmul fast float %7237, %7148
  %7241 = fmul fast float %7239, %7148
  %7242 = fadd fast float %7240, %6634
  %7243 = fadd fast float %7241, %6635
  %7244 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %14, %dx.types.Handle %44, float %7242, float %7243, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7245 = extractvalue %dx.types.ResRet.f32 %7244, 0
  %7246 = extractvalue %dx.types.ResRet.f32 %7244, 1
  %7247 = extractvalue %dx.types.ResRet.f32 %7244, 2
  %7248 = extractvalue %dx.types.ResRet.f32 %7244, 3
  %7249 = getelementptr inbounds [4 x float], [4 x float]* %102, i32 0, i32 0
  store float %7245, float* %7249, align 4
  %7250 = getelementptr inbounds [4 x float], [4 x float]* %102, i32 0, i32 1
  store float %7246, float* %7250, align 4
  %7251 = getelementptr inbounds [4 x float], [4 x float]* %102, i32 0, i32 2
  store float %7247, float* %7251, align 4
  %7252 = getelementptr inbounds [4 x float], [4 x float]* %102, i32 0, i32 3
  store float %7248, float* %7252, align 4
  %7253 = fsub fast float %7245, %7150
  %7254 = fcmp fast olt float %7253, 0.000000e+00
  %7255 = select i1 %7254, float 0.000000e+00, float 1.000000e+00
  %7256 = fadd fast float %7255, %7225
  %7257 = fmul fast float %7255, %7253
  %7258 = fadd fast float %7257, %7226
  br label %7259

; <label>:7259                                    ; preds = %7259, %7224
  %7260 = phi i32 [ 1, %7224 ], [ %7271, %7259 ]
  %7261 = phi float [ %7258, %7224 ], [ %7270, %7259 ]
  %7262 = phi float [ %7256, %7224 ], [ %7268, %7259 ]
  %7263 = getelementptr [4 x float], [4 x float]* %102, i32 0, i32 %7260
  %7264 = load float, float* %7263, align 4, !tbaa !114, !noalias !104
  %7265 = fsub fast float %7264, %7150
  %7266 = fcmp fast olt float %7265, 0.000000e+00
  %7267 = select i1 %7266, float 0.000000e+00, float 1.000000e+00
  %7268 = fadd fast float %7267, %7262
  %7269 = fmul fast float %7267, %7265
  %7270 = fadd fast float %7269, %7261
  %7271 = add nuw nsw i32 %7260, 1
  %7272 = icmp eq i32 %7271, 4
  br i1 %7272, label %7273, label %7259, !llvm.loop !116

; <label>:7273                                    ; preds = %7259
  %7274 = add nuw nsw i32 %7227, 1
  %7275 = icmp eq i32 %7274, 8
  br i1 %7275, label %7276, label %7224, !llvm.loop !117

; <label>:7276                                    ; preds = %7273
  %7277 = fdiv fast float 1.000000e+00, %7268
  %7278 = fmul fast float %7277, %7270
  %7279 = fdiv fast float 1.000000e+00, %7150
  %7280 = fmul fast float %7278, %7279
  %7281 = call float @dx.op.unary.f32(i32 7, float %7280)  ; Saturate(value)
  %7282 = call float @dx.op.binary.f32(i32 35, float %7281, float 0.000000e+00)  ; FMax(a,b)
  %7283 = fmul fast float %7268, 3.125000e-02
  %7284 = call float @dx.op.unary.f32(i32 7, float %7283)  ; Saturate(value)
  %7285 = fmul fast float %7284, 2.000000e+00
  %7286 = fadd fast float %7285, -1.000000e+00
  %7287 = fcmp fast ogt float %7286, 0.000000e+00
  %7288 = fcmp fast olt float %7286, 0.000000e+00
  %7289 = zext i1 %7287 to i32
  %7290 = zext i1 %7288 to i32
  %7291 = sub nsw i32 %7289, %7290
  %7292 = sitofp i32 %7291 to float
  %7293 = fmul fast float %7292, %7286
  %7294 = fsub fast float 1.000000e+00, %7293
  %7295 = fmul fast float %7294, %7294
  %7296 = fmul fast float %7295, %7294
  %7297 = fsub fast float %7294, %7296
  %7298 = fmul fast float %7297, %7282
  %7299 = fsub fast float 1.000000e+00, %7296
  %7300 = fsub fast float %7299, %7298
  %7301 = fmul fast float %7292, 5.000000e-01
  %7302 = fmul fast float %7301, %7300
  %7303 = fsub fast float 5.000000e-01, %7302
  br label %7304

; <label>:7304                                    ; preds = %7276, %7152, %7137
  %7305 = phi float [ 1.000000e+00, %7137 ], [ %7218, %7152 ], [ %7303, %7276 ]
  %7306 = fcmp fast ogt float %6733, 0.000000e+00
  br i1 %7306, label %7307, label %7471, !dx.controlflow.hints !118

; <label>:7307                                    ; preds = %7304
  %7308 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %7309 = extractvalue %dx.types.CBufRet.f32 %7308, 1
  %7310 = fadd fast float %7309, %6616
  %7311 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %7312 = extractvalue %dx.types.CBufRet.f32 %7311, 2
  %7313 = extractvalue %dx.types.CBufRet.f32 %7311, 3
  %7314 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %7315 = extractvalue %dx.types.CBufRet.f32 %7314, 1
  %7316 = call float @dx.op.binary.f32(i32 35, float %7310, float 0.000000e+00)  ; FMax(a,b)
  %7317 = fadd fast float %7316, 0x3F10000000000000
  %7318 = fcmp fast oeq float %7315, 0.000000e+00
  br i1 %7318, label %7319, label %7386

; <label>:7319                                    ; preds = %7307
  %7320 = extractvalue %dx.types.CBufRet.f32 %7311, 1
  %7321 = extractvalue %dx.types.CBufRet.f32 %7311, 0
  %7322 = fmul fast float %7321, %6626
  %7323 = fmul fast float %7320, %6627
  %7324 = fadd fast float %7322, 5.000000e-01
  %7325 = call float @dx.op.unary.f32(i32 27, float %7324)  ; Round_ni(value)
  %7326 = fadd fast float %7323, 5.000000e-01
  %7327 = call float @dx.op.unary.f32(i32 27, float %7326)  ; Round_ni(value)
  %7328 = fsub fast float %7324, %7325
  %7329 = fsub fast float %7326, %7327
  %7330 = fadd fast float %7325, -5.000000e-01
  %7331 = fadd fast float %7327, -5.000000e-01
  %7332 = fmul fast float %7328, 2.000000e+00
  %7333 = fsub fast float 3.000000e+00, %7332
  %7334 = fadd fast float %7332, 1.000000e+00
  %7335 = fsub fast float 2.000000e+00, %7328
  %7336 = bitcast float %7333 to i32
  %7337 = sub nsw i32 2129859010, %7336
  %7338 = bitcast i32 %7337 to float
  %7339 = fmul fast float %7338, %7335
  %7340 = fadd fast float %7339, -1.000000e+00
  %7341 = bitcast float %7334 to i32
  %7342 = sub nsw i32 2129859010, %7341
  %7343 = bitcast i32 %7342 to float
  %7344 = fmul fast float %7343, %7328
  %7345 = fadd fast float %7344, 1.000000e+00
  %7346 = fmul fast float %7329, 2.000000e+00
  %7347 = fsub fast float 3.000000e+00, %7346
  %7348 = fadd fast float %7346, 1.000000e+00
  %7349 = fsub fast float 2.000000e+00, %7329
  %7350 = bitcast float %7347 to i32
  %7351 = sub nsw i32 2129859010, %7350
  %7352 = bitcast i32 %7351 to float
  %7353 = fmul fast float %7352, %7349
  %7354 = fadd fast float %7353, -1.000000e+00
  %7355 = bitcast float %7348 to i32
  %7356 = sub nsw i32 2129859010, %7355
  %7357 = bitcast i32 %7356 to float
  %7358 = fmul fast float %7357, %7329
  %7359 = fadd fast float %7358, 1.000000e+00
  %7360 = fadd fast float %7340, %7330
  %7361 = fmul fast float %7360, %7312
  %7362 = fadd fast float %7354, %7331
  %7363 = fmul fast float %7362, %7313
  %7364 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %15, %dx.types.Handle %45, float %7361, float %7363, float undef, float undef, i32 0, i32 0, i32 undef, float %7317)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7365 = extractvalue %dx.types.ResRet.f32 %7364, 0
  %7366 = fmul fast float %7365, %7333
  %7367 = fadd fast float %7345, %7330
  %7368 = fmul fast float %7367, %7312
  %7369 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %15, %dx.types.Handle %45, float %7368, float %7363, float undef, float undef, i32 0, i32 0, i32 undef, float %7317)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7370 = extractvalue %dx.types.ResRet.f32 %7369, 0
  %7371 = fmul fast float %7370, %7334
  %7372 = fadd fast float %7359, %7331
  %7373 = fmul fast float %7372, %7313
  %7374 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %15, %dx.types.Handle %45, float %7361, float %7373, float undef, float undef, i32 0, i32 0, i32 undef, float %7317)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7375 = extractvalue %dx.types.ResRet.f32 %7374, 0
  %7376 = fmul fast float %7375, %7333
  %7377 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %15, %dx.types.Handle %45, float %7368, float %7373, float undef, float undef, i32 0, i32 0, i32 undef, float %7317)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7378 = extractvalue %dx.types.ResRet.f32 %7377, 0
  %7379 = fmul fast float %7378, %7334
  %7380 = fadd fast float %7379, %7376
  %7381 = fmul fast float %7380, %7348
  %7382 = fadd fast float %7371, %7366
  %7383 = fmul fast float %7382, %7347
  %7384 = fadd fast float %7383, %7381
  %7385 = fmul fast float %7384, 6.250000e-02
  br label %7471

; <label>:7386                                    ; preds = %7307
  %7387 = fmul fast float %273, 0x401921FB60000000
  %7388 = call float @dx.op.unary.f32(i32 13, float %7387)  ; Sin(value)
  %7389 = call float @dx.op.unary.f32(i32 12, float %7387)  ; Cos(value)
  %7390 = fsub fast float -0.000000e+00, %7388
  br label %7391

; <label>:7391                                    ; preds = %7440, %7386
  %7392 = phi float [ 0.000000e+00, %7386 ], [ %7435, %7440 ]
  %7393 = phi float [ 0.000000e+00, %7386 ], [ %7437, %7440 ]
  %7394 = phi i32 [ 0, %7386 ], [ %7441, %7440 ]
  %7395 = mul i32 %7394, 2
  %7396 = add i32 0, %7395
  %7397 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7396
  %7398 = load float, float* %7397, align 4
  %7399 = mul i32 %7394, 2
  %7400 = add i32 1, %7399
  %7401 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7400
  %7402 = load float, float* %7401, align 4
  %7403 = fmul fast float %7398, %7389
  %7404 = call float @dx.op.tertiary.f32(i32 46, float %7402, float %7390, float %7403)  ; FMad(a,b,c)
  %7405 = fmul fast float %7398, %7388
  %7406 = call float @dx.op.tertiary.f32(i32 46, float %7402, float %7389, float %7405)  ; FMad(a,b,c)
  %7407 = fmul fast float %7404, %7315
  %7408 = fmul fast float %7406, %7315
  %7409 = fadd fast float %7407, %6626
  %7410 = fadd fast float %7408, %6627
  %7411 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %15, %dx.types.Handle %44, float %7409, float %7410, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7412 = extractvalue %dx.types.ResRet.f32 %7411, 0
  %7413 = extractvalue %dx.types.ResRet.f32 %7411, 1
  %7414 = extractvalue %dx.types.ResRet.f32 %7411, 2
  %7415 = extractvalue %dx.types.ResRet.f32 %7411, 3
  %7416 = getelementptr inbounds [4 x float], [4 x float]* %101, i32 0, i32 0
  store float %7412, float* %7416, align 4
  %7417 = getelementptr inbounds [4 x float], [4 x float]* %101, i32 0, i32 1
  store float %7413, float* %7417, align 4
  %7418 = getelementptr inbounds [4 x float], [4 x float]* %101, i32 0, i32 2
  store float %7414, float* %7418, align 4
  %7419 = getelementptr inbounds [4 x float], [4 x float]* %101, i32 0, i32 3
  store float %7415, float* %7419, align 4
  %7420 = fsub fast float %7412, %7317
  %7421 = fcmp fast olt float %7420, 0.000000e+00
  %7422 = select i1 %7421, float 0.000000e+00, float 1.000000e+00
  %7423 = fadd fast float %7422, %7392
  %7424 = fmul fast float %7422, %7420
  %7425 = fadd fast float %7424, %7393
  br label %7426

; <label>:7426                                    ; preds = %7426, %7391
  %7427 = phi i32 [ 1, %7391 ], [ %7438, %7426 ]
  %7428 = phi float [ %7425, %7391 ], [ %7437, %7426 ]
  %7429 = phi float [ %7423, %7391 ], [ %7435, %7426 ]
  %7430 = getelementptr [4 x float], [4 x float]* %101, i32 0, i32 %7427
  %7431 = load float, float* %7430, align 4, !tbaa !114, !noalias !104
  %7432 = fsub fast float %7431, %7317
  %7433 = fcmp fast olt float %7432, 0.000000e+00
  %7434 = select i1 %7433, float 0.000000e+00, float 1.000000e+00
  %7435 = fadd fast float %7434, %7429
  %7436 = fmul fast float %7434, %7432
  %7437 = fadd fast float %7436, %7428
  %7438 = add nuw nsw i32 %7427, 1
  %7439 = icmp eq i32 %7438, 4
  br i1 %7439, label %7440, label %7426, !llvm.loop !116

; <label>:7440                                    ; preds = %7426
  %7441 = add nuw nsw i32 %7394, 1
  %7442 = icmp eq i32 %7441, 8
  br i1 %7442, label %7443, label %7391, !llvm.loop !117

; <label>:7443                                    ; preds = %7440
  %7444 = fdiv fast float 1.000000e+00, %7435
  %7445 = fmul fast float %7444, %7437
  %7446 = fdiv fast float 1.000000e+00, %7317
  %7447 = fmul fast float %7445, %7446
  %7448 = call float @dx.op.unary.f32(i32 7, float %7447)  ; Saturate(value)
  %7449 = call float @dx.op.binary.f32(i32 35, float %7448, float 0.000000e+00)  ; FMax(a,b)
  %7450 = fmul fast float %7435, 3.125000e-02
  %7451 = call float @dx.op.unary.f32(i32 7, float %7450)  ; Saturate(value)
  %7452 = fmul fast float %7451, 2.000000e+00
  %7453 = fadd fast float %7452, -1.000000e+00
  %7454 = fcmp fast ogt float %7453, 0.000000e+00
  %7455 = fcmp fast olt float %7453, 0.000000e+00
  %7456 = zext i1 %7454 to i32
  %7457 = zext i1 %7455 to i32
  %7458 = sub nsw i32 %7456, %7457
  %7459 = sitofp i32 %7458 to float
  %7460 = fmul fast float %7459, %7453
  %7461 = fsub fast float 1.000000e+00, %7460
  %7462 = fmul fast float %7461, %7461
  %7463 = fmul fast float %7462, %7461
  %7464 = fsub fast float %7461, %7463
  %7465 = fmul fast float %7464, %7449
  %7466 = fsub fast float 1.000000e+00, %7463
  %7467 = fsub fast float %7466, %7465
  %7468 = fmul fast float %7459, 5.000000e-01
  %7469 = fmul fast float %7468, %7467
  %7470 = fsub fast float 5.000000e-01, %7469
  br label %7471

; <label>:7471                                    ; preds = %7443, %7319, %7304
  %7472 = phi float [ 1.000000e+00, %7304 ], [ %7385, %7319 ], [ %7470, %7443 ]
  %7473 = fcmp fast ogt float %6732, 0.000000e+00
  br i1 %7473, label %7474, label %7792, !dx.controlflow.hints !119

; <label>:7474                                    ; preds = %7471
  %7475 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %7476 = extractvalue %dx.types.CBufRet.f32 %7475, 0
  %7477 = fadd fast float %7476, %6616
  %7478 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %7479 = extractvalue %dx.types.CBufRet.f32 %7478, 2
  %7480 = extractvalue %dx.types.CBufRet.f32 %7478, 3
  %7481 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %7482 = extractvalue %dx.types.CBufRet.f32 %7481, 0
  %7483 = call float @dx.op.binary.f32(i32 35, float %7477, float 0.000000e+00)  ; FMax(a,b)
  %7484 = fadd fast float %7483, 0x3F10000000000000
  %7485 = fcmp fast oeq float %7482, 0.000000e+00
  br i1 %6619, label %7486, label %7639, !dx.controlflow.hints !120

; <label>:7486                                    ; preds = %7474
  br i1 %7485, label %7487, label %7554

; <label>:7487                                    ; preds = %7486
  %7488 = extractvalue %dx.types.CBufRet.f32 %7478, 1
  %7489 = extractvalue %dx.types.CBufRet.f32 %7478, 0
  %7490 = fmul fast float %7489, %6608
  %7491 = fmul fast float %7488, %6612
  %7492 = fadd fast float %7490, 5.000000e-01
  %7493 = call float @dx.op.unary.f32(i32 27, float %7492)  ; Round_ni(value)
  %7494 = fadd fast float %7491, 5.000000e-01
  %7495 = call float @dx.op.unary.f32(i32 27, float %7494)  ; Round_ni(value)
  %7496 = fsub fast float %7492, %7493
  %7497 = fsub fast float %7494, %7495
  %7498 = fadd fast float %7493, -5.000000e-01
  %7499 = fadd fast float %7495, -5.000000e-01
  %7500 = fmul fast float %7496, 2.000000e+00
  %7501 = fsub fast float 3.000000e+00, %7500
  %7502 = fadd fast float %7500, 1.000000e+00
  %7503 = fsub fast float 2.000000e+00, %7496
  %7504 = bitcast float %7501 to i32
  %7505 = sub nsw i32 2129859010, %7504
  %7506 = bitcast i32 %7505 to float
  %7507 = fmul fast float %7506, %7503
  %7508 = fadd fast float %7507, -1.000000e+00
  %7509 = bitcast float %7502 to i32
  %7510 = sub nsw i32 2129859010, %7509
  %7511 = bitcast i32 %7510 to float
  %7512 = fmul fast float %7511, %7496
  %7513 = fadd fast float %7512, 1.000000e+00
  %7514 = fmul fast float %7497, 2.000000e+00
  %7515 = fsub fast float 3.000000e+00, %7514
  %7516 = fadd fast float %7514, 1.000000e+00
  %7517 = fsub fast float 2.000000e+00, %7497
  %7518 = bitcast float %7515 to i32
  %7519 = sub nsw i32 2129859010, %7518
  %7520 = bitcast i32 %7519 to float
  %7521 = fmul fast float %7520, %7517
  %7522 = fadd fast float %7521, -1.000000e+00
  %7523 = bitcast float %7516 to i32
  %7524 = sub nsw i32 2129859010, %7523
  %7525 = bitcast i32 %7524 to float
  %7526 = fmul fast float %7525, %7497
  %7527 = fadd fast float %7526, 1.000000e+00
  %7528 = fadd fast float %7508, %7498
  %7529 = fmul fast float %7528, %7479
  %7530 = fadd fast float %7522, %7499
  %7531 = fmul fast float %7530, %7480
  %7532 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %45, float %7529, float %7531, float undef, float undef, i32 0, i32 0, i32 undef, float %7484)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7533 = extractvalue %dx.types.ResRet.f32 %7532, 0
  %7534 = fmul fast float %7533, %7501
  %7535 = fadd fast float %7513, %7498
  %7536 = fmul fast float %7535, %7479
  %7537 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %45, float %7536, float %7531, float undef, float undef, i32 0, i32 0, i32 undef, float %7484)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7538 = extractvalue %dx.types.ResRet.f32 %7537, 0
  %7539 = fmul fast float %7538, %7502
  %7540 = fadd fast float %7527, %7499
  %7541 = fmul fast float %7540, %7480
  %7542 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %45, float %7529, float %7541, float undef, float undef, i32 0, i32 0, i32 undef, float %7484)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7543 = extractvalue %dx.types.ResRet.f32 %7542, 0
  %7544 = fmul fast float %7543, %7501
  %7545 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %45, float %7536, float %7541, float undef, float undef, i32 0, i32 0, i32 undef, float %7484)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7546 = extractvalue %dx.types.ResRet.f32 %7545, 0
  %7547 = fmul fast float %7546, %7502
  %7548 = fadd fast float %7547, %7544
  %7549 = fmul fast float %7548, %7516
  %7550 = fadd fast float %7539, %7534
  %7551 = fmul fast float %7550, %7515
  %7552 = fadd fast float %7551, %7549
  %7553 = fmul fast float %7552, 6.250000e-02
  br label %7792

; <label>:7554                                    ; preds = %7486
  %7555 = fmul fast float %273, 0x401921FB60000000
  %7556 = call float @dx.op.unary.f32(i32 13, float %7555)  ; Sin(value)
  %7557 = call float @dx.op.unary.f32(i32 12, float %7555)  ; Cos(value)
  %7558 = fsub fast float -0.000000e+00, %7556
  br label %7559

; <label>:7559                                    ; preds = %7608, %7554
  %7560 = phi float [ 0.000000e+00, %7554 ], [ %7603, %7608 ]
  %7561 = phi float [ 0.000000e+00, %7554 ], [ %7605, %7608 ]
  %7562 = phi i32 [ 0, %7554 ], [ %7609, %7608 ]
  %7563 = mul i32 %7562, 2
  %7564 = add i32 0, %7563
  %7565 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7564
  %7566 = load float, float* %7565, align 4
  %7567 = mul i32 %7562, 2
  %7568 = add i32 1, %7567
  %7569 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7568
  %7570 = load float, float* %7569, align 4
  %7571 = fmul fast float %7566, %7557
  %7572 = call float @dx.op.tertiary.f32(i32 46, float %7570, float %7558, float %7571)  ; FMad(a,b,c)
  %7573 = fmul fast float %7566, %7556
  %7574 = call float @dx.op.tertiary.f32(i32 46, float %7570, float %7557, float %7573)  ; FMad(a,b,c)
  %7575 = fmul fast float %7572, %7482
  %7576 = fmul fast float %7574, %7482
  %7577 = fadd fast float %7575, %6608
  %7578 = fadd fast float %7576, %6612
  %7579 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %17, %dx.types.Handle %44, float %7577, float %7578, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7580 = extractvalue %dx.types.ResRet.f32 %7579, 0
  %7581 = extractvalue %dx.types.ResRet.f32 %7579, 1
  %7582 = extractvalue %dx.types.ResRet.f32 %7579, 2
  %7583 = extractvalue %dx.types.ResRet.f32 %7579, 3
  %7584 = getelementptr inbounds [4 x float], [4 x float]* %100, i32 0, i32 0
  store float %7580, float* %7584, align 4
  %7585 = getelementptr inbounds [4 x float], [4 x float]* %100, i32 0, i32 1
  store float %7581, float* %7585, align 4
  %7586 = getelementptr inbounds [4 x float], [4 x float]* %100, i32 0, i32 2
  store float %7582, float* %7586, align 4
  %7587 = getelementptr inbounds [4 x float], [4 x float]* %100, i32 0, i32 3
  store float %7583, float* %7587, align 4
  %7588 = fsub fast float %7580, %7484
  %7589 = fcmp fast olt float %7588, 0.000000e+00
  %7590 = select i1 %7589, float 0.000000e+00, float 1.000000e+00
  %7591 = fadd fast float %7590, %7560
  %7592 = fmul fast float %7590, %7588
  %7593 = fadd fast float %7592, %7561
  br label %7594

; <label>:7594                                    ; preds = %7594, %7559
  %7595 = phi i32 [ 1, %7559 ], [ %7606, %7594 ]
  %7596 = phi float [ %7593, %7559 ], [ %7605, %7594 ]
  %7597 = phi float [ %7591, %7559 ], [ %7603, %7594 ]
  %7598 = getelementptr [4 x float], [4 x float]* %100, i32 0, i32 %7595
  %7599 = load float, float* %7598, align 4, !tbaa !114, !noalias !104
  %7600 = fsub fast float %7599, %7484
  %7601 = fcmp fast olt float %7600, 0.000000e+00
  %7602 = select i1 %7601, float 0.000000e+00, float 1.000000e+00
  %7603 = fadd fast float %7602, %7597
  %7604 = fmul fast float %7602, %7600
  %7605 = fadd fast float %7604, %7596
  %7606 = add nuw nsw i32 %7595, 1
  %7607 = icmp eq i32 %7606, 4
  br i1 %7607, label %7608, label %7594, !llvm.loop !116

; <label>:7608                                    ; preds = %7594
  %7609 = add nuw nsw i32 %7562, 1
  %7610 = icmp eq i32 %7609, 8
  br i1 %7610, label %7611, label %7559, !llvm.loop !117

; <label>:7611                                    ; preds = %7608
  %7612 = fdiv fast float 1.000000e+00, %7603
  %7613 = fmul fast float %7612, %7605
  %7614 = fdiv fast float 1.000000e+00, %7484
  %7615 = fmul fast float %7613, %7614
  %7616 = call float @dx.op.unary.f32(i32 7, float %7615)  ; Saturate(value)
  %7617 = call float @dx.op.binary.f32(i32 35, float %7616, float 0.000000e+00)  ; FMax(a,b)
  %7618 = fmul fast float %7603, 3.125000e-02
  %7619 = call float @dx.op.unary.f32(i32 7, float %7618)  ; Saturate(value)
  %7620 = fmul fast float %7619, 2.000000e+00
  %7621 = fadd fast float %7620, -1.000000e+00
  %7622 = fcmp fast ogt float %7621, 0.000000e+00
  %7623 = fcmp fast olt float %7621, 0.000000e+00
  %7624 = zext i1 %7622 to i32
  %7625 = zext i1 %7623 to i32
  %7626 = sub nsw i32 %7624, %7625
  %7627 = sitofp i32 %7626 to float
  %7628 = fmul fast float %7627, %7621
  %7629 = fsub fast float 1.000000e+00, %7628
  %7630 = fmul fast float %7629, %7629
  %7631 = fmul fast float %7630, %7629
  %7632 = fsub fast float %7629, %7631
  %7633 = fmul fast float %7632, %7617
  %7634 = fsub fast float 1.000000e+00, %7631
  %7635 = fsub fast float %7634, %7633
  %7636 = fmul fast float %7627, 5.000000e-01
  %7637 = fmul fast float %7636, %7635
  %7638 = fsub fast float 5.000000e-01, %7637
  br label %7792

; <label>:7639                                    ; preds = %7474
  br i1 %7485, label %7640, label %7707

; <label>:7640                                    ; preds = %7639
  %7641 = extractvalue %dx.types.CBufRet.f32 %7478, 1
  %7642 = extractvalue %dx.types.CBufRet.f32 %7478, 0
  %7643 = fmul fast float %7642, %6608
  %7644 = fmul fast float %7641, %6612
  %7645 = fadd fast float %7643, 5.000000e-01
  %7646 = call float @dx.op.unary.f32(i32 27, float %7645)  ; Round_ni(value)
  %7647 = fadd fast float %7644, 5.000000e-01
  %7648 = call float @dx.op.unary.f32(i32 27, float %7647)  ; Round_ni(value)
  %7649 = fsub fast float %7645, %7646
  %7650 = fsub fast float %7647, %7648
  %7651 = fadd fast float %7646, -5.000000e-01
  %7652 = fadd fast float %7648, -5.000000e-01
  %7653 = fmul fast float %7649, 2.000000e+00
  %7654 = fsub fast float 3.000000e+00, %7653
  %7655 = fadd fast float %7653, 1.000000e+00
  %7656 = fsub fast float 2.000000e+00, %7649
  %7657 = bitcast float %7654 to i32
  %7658 = sub nsw i32 2129859010, %7657
  %7659 = bitcast i32 %7658 to float
  %7660 = fmul fast float %7659, %7656
  %7661 = fadd fast float %7660, -1.000000e+00
  %7662 = bitcast float %7655 to i32
  %7663 = sub nsw i32 2129859010, %7662
  %7664 = bitcast i32 %7663 to float
  %7665 = fmul fast float %7664, %7649
  %7666 = fadd fast float %7665, 1.000000e+00
  %7667 = fmul fast float %7650, 2.000000e+00
  %7668 = fsub fast float 3.000000e+00, %7667
  %7669 = fadd fast float %7667, 1.000000e+00
  %7670 = fsub fast float 2.000000e+00, %7650
  %7671 = bitcast float %7668 to i32
  %7672 = sub nsw i32 2129859010, %7671
  %7673 = bitcast i32 %7672 to float
  %7674 = fmul fast float %7673, %7670
  %7675 = fadd fast float %7674, -1.000000e+00
  %7676 = bitcast float %7669 to i32
  %7677 = sub nsw i32 2129859010, %7676
  %7678 = bitcast i32 %7677 to float
  %7679 = fmul fast float %7678, %7650
  %7680 = fadd fast float %7679, 1.000000e+00
  %7681 = fadd fast float %7661, %7651
  %7682 = fmul fast float %7681, %7479
  %7683 = fadd fast float %7675, %7652
  %7684 = fmul fast float %7683, %7480
  %7685 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %45, float %7682, float %7684, float undef, float undef, i32 0, i32 0, i32 undef, float %7484)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7686 = extractvalue %dx.types.ResRet.f32 %7685, 0
  %7687 = fmul fast float %7686, %7654
  %7688 = fadd fast float %7666, %7651
  %7689 = fmul fast float %7688, %7479
  %7690 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %45, float %7689, float %7684, float undef, float undef, i32 0, i32 0, i32 undef, float %7484)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7691 = extractvalue %dx.types.ResRet.f32 %7690, 0
  %7692 = fmul fast float %7691, %7655
  %7693 = fadd fast float %7680, %7652
  %7694 = fmul fast float %7693, %7480
  %7695 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %45, float %7682, float %7694, float undef, float undef, i32 0, i32 0, i32 undef, float %7484)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7696 = extractvalue %dx.types.ResRet.f32 %7695, 0
  %7697 = fmul fast float %7696, %7654
  %7698 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %45, float %7689, float %7694, float undef, float undef, i32 0, i32 0, i32 undef, float %7484)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7699 = extractvalue %dx.types.ResRet.f32 %7698, 0
  %7700 = fmul fast float %7699, %7655
  %7701 = fadd fast float %7700, %7697
  %7702 = fmul fast float %7701, %7669
  %7703 = fadd fast float %7692, %7687
  %7704 = fmul fast float %7703, %7668
  %7705 = fadd fast float %7704, %7702
  %7706 = fmul fast float %7705, 6.250000e-02
  br label %7792

; <label>:7707                                    ; preds = %7639
  %7708 = fmul fast float %273, 0x401921FB60000000
  %7709 = call float @dx.op.unary.f32(i32 13, float %7708)  ; Sin(value)
  %7710 = call float @dx.op.unary.f32(i32 12, float %7708)  ; Cos(value)
  %7711 = fsub fast float -0.000000e+00, %7709
  br label %7712

; <label>:7712                                    ; preds = %7761, %7707
  %7713 = phi float [ 0.000000e+00, %7707 ], [ %7756, %7761 ]
  %7714 = phi float [ 0.000000e+00, %7707 ], [ %7758, %7761 ]
  %7715 = phi i32 [ 0, %7707 ], [ %7762, %7761 ]
  %7716 = mul i32 %7715, 2
  %7717 = add i32 0, %7716
  %7718 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7717
  %7719 = load float, float* %7718, align 4
  %7720 = mul i32 %7715, 2
  %7721 = add i32 1, %7720
  %7722 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7721
  %7723 = load float, float* %7722, align 4
  %7724 = fmul fast float %7719, %7710
  %7725 = call float @dx.op.tertiary.f32(i32 46, float %7723, float %7711, float %7724)  ; FMad(a,b,c)
  %7726 = fmul fast float %7719, %7709
  %7727 = call float @dx.op.tertiary.f32(i32 46, float %7723, float %7710, float %7726)  ; FMad(a,b,c)
  %7728 = fmul fast float %7725, %7482
  %7729 = fmul fast float %7727, %7482
  %7730 = fadd fast float %7728, %6608
  %7731 = fadd fast float %7729, %6612
  %7732 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %16, %dx.types.Handle %44, float %7730, float %7731, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7733 = extractvalue %dx.types.ResRet.f32 %7732, 0
  %7734 = extractvalue %dx.types.ResRet.f32 %7732, 1
  %7735 = extractvalue %dx.types.ResRet.f32 %7732, 2
  %7736 = extractvalue %dx.types.ResRet.f32 %7732, 3
  %7737 = getelementptr inbounds [4 x float], [4 x float]* %99, i32 0, i32 0
  store float %7733, float* %7737, align 4
  %7738 = getelementptr inbounds [4 x float], [4 x float]* %99, i32 0, i32 1
  store float %7734, float* %7738, align 4
  %7739 = getelementptr inbounds [4 x float], [4 x float]* %99, i32 0, i32 2
  store float %7735, float* %7739, align 4
  %7740 = getelementptr inbounds [4 x float], [4 x float]* %99, i32 0, i32 3
  store float %7736, float* %7740, align 4
  %7741 = fsub fast float %7733, %7484
  %7742 = fcmp fast olt float %7741, 0.000000e+00
  %7743 = select i1 %7742, float 0.000000e+00, float 1.000000e+00
  %7744 = fadd fast float %7743, %7713
  %7745 = fmul fast float %7743, %7741
  %7746 = fadd fast float %7745, %7714
  br label %7747

; <label>:7747                                    ; preds = %7747, %7712
  %7748 = phi i32 [ 1, %7712 ], [ %7759, %7747 ]
  %7749 = phi float [ %7746, %7712 ], [ %7758, %7747 ]
  %7750 = phi float [ %7744, %7712 ], [ %7756, %7747 ]
  %7751 = getelementptr [4 x float], [4 x float]* %99, i32 0, i32 %7748
  %7752 = load float, float* %7751, align 4, !tbaa !114, !noalias !104
  %7753 = fsub fast float %7752, %7484
  %7754 = fcmp fast olt float %7753, 0.000000e+00
  %7755 = select i1 %7754, float 0.000000e+00, float 1.000000e+00
  %7756 = fadd fast float %7755, %7750
  %7757 = fmul fast float %7755, %7753
  %7758 = fadd fast float %7757, %7749
  %7759 = add nuw nsw i32 %7748, 1
  %7760 = icmp eq i32 %7759, 4
  br i1 %7760, label %7761, label %7747, !llvm.loop !116

; <label>:7761                                    ; preds = %7747
  %7762 = add nuw nsw i32 %7715, 1
  %7763 = icmp eq i32 %7762, 8
  br i1 %7763, label %7764, label %7712, !llvm.loop !117

; <label>:7764                                    ; preds = %7761
  %7765 = fdiv fast float 1.000000e+00, %7756
  %7766 = fmul fast float %7765, %7758
  %7767 = fdiv fast float 1.000000e+00, %7484
  %7768 = fmul fast float %7766, %7767
  %7769 = call float @dx.op.unary.f32(i32 7, float %7768)  ; Saturate(value)
  %7770 = call float @dx.op.binary.f32(i32 35, float %7769, float 0.000000e+00)  ; FMax(a,b)
  %7771 = fmul fast float %7756, 3.125000e-02
  %7772 = call float @dx.op.unary.f32(i32 7, float %7771)  ; Saturate(value)
  %7773 = fmul fast float %7772, 2.000000e+00
  %7774 = fadd fast float %7773, -1.000000e+00
  %7775 = fcmp fast ogt float %7774, 0.000000e+00
  %7776 = fcmp fast olt float %7774, 0.000000e+00
  %7777 = zext i1 %7775 to i32
  %7778 = zext i1 %7776 to i32
  %7779 = sub nsw i32 %7777, %7778
  %7780 = sitofp i32 %7779 to float
  %7781 = fmul fast float %7780, %7774
  %7782 = fsub fast float 1.000000e+00, %7781
  %7783 = fmul fast float %7782, %7782
  %7784 = fmul fast float %7783, %7782
  %7785 = fsub fast float %7782, %7784
  %7786 = fmul fast float %7785, %7770
  %7787 = fsub fast float 1.000000e+00, %7784
  %7788 = fsub fast float %7787, %7786
  %7789 = fmul fast float %7780, 5.000000e-01
  %7790 = fmul fast float %7789, %7788
  %7791 = fsub fast float 5.000000e-01, %7790
  br label %7792

; <label>:7792                                    ; preds = %7764, %7640, %7611, %7487, %7471
  %7793 = phi float [ 1.000000e+00, %7471 ], [ %7553, %7487 ], [ %7638, %7611 ], [ %7706, %7640 ], [ %7791, %7764 ]
  %7794 = fsub fast float %7305, %7138
  %7795 = fmul fast float %7794, %6705
  %7796 = fadd fast float %7795, %7138
  %7797 = fsub fast float %7472, %7796
  %7798 = fmul fast float %7797, %6704
  %7799 = fadd fast float %7798, %7796
  %7800 = fsub fast float %7793, %7799
  %7801 = fmul fast float %7800, %6732
  %7802 = fadd fast float %7801, %7799
  %7803 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %7804 = extractvalue %dx.types.CBufRet.f32 %7803, 2
  %7805 = fcmp fast ogt float %7804, 0.000000e+00
  br i1 %7805, label %7806, label %7846, !dx.controlflow.hints !121

; <label>:7806                                    ; preds = %7792
  %7807 = fcmp fast ugt float %7804, 0.000000e+00
  br i1 %7807, label %7808, label %7843

; <label>:7808                                    ; preds = %7806
  %7809 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %7810 = extractvalue %dx.types.CBufRet.f32 %7809, 0
  %7811 = extractvalue %dx.types.CBufRet.f32 %7809, 1
  %7812 = extractvalue %dx.types.CBufRet.f32 %7809, 2
  %7813 = extractvalue %dx.types.CBufRet.f32 %7809, 3
  %7814 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %7815 = extractvalue %dx.types.CBufRet.f32 %7814, 0
  %7816 = extractvalue %dx.types.CBufRet.f32 %7814, 1
  %7817 = extractvalue %dx.types.CBufRet.f32 %7814, 2
  %7818 = extractvalue %dx.types.CBufRet.f32 %7814, 3
  %7819 = extractvalue %dx.types.CBufRet.f32 %7803, 0
  %7820 = extractvalue %dx.types.CBufRet.f32 %7803, 1
  %7821 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %7822 = extractvalue %dx.types.CBufRet.f32 %7821, 0
  %7823 = extractvalue %dx.types.CBufRet.f32 %7821, 1
  %7824 = extractvalue %dx.types.CBufRet.f32 %7821, 2
  %7825 = fadd fast float %7822, %6585
  %7826 = fadd fast float %7823, %6586
  %7827 = fadd fast float %7824, %6587
  %7828 = fmul fast float %7825, %7810
  %7829 = call float @dx.op.tertiary.f32(i32 46, float %7811, float %7826, float %7828)  ; FMad(a,b,c)
  %7830 = call float @dx.op.tertiary.f32(i32 46, float %7812, float %7827, float %7829)  ; FMad(a,b,c)
  %7831 = fadd fast float %7830, %7813
  %7832 = fmul fast float %7825, %7815
  %7833 = call float @dx.op.tertiary.f32(i32 46, float %7816, float %7826, float %7832)  ; FMad(a,b,c)
  %7834 = call float @dx.op.tertiary.f32(i32 46, float %7817, float %7827, float %7833)  ; FMad(a,b,c)
  %7835 = fadd fast float %7834, %7818
  %7836 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %11, %dx.types.Handle %40, float %7831, float %7835, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %7837 = extractvalue %dx.types.ResRet.f32 %7836, 0
  %7838 = fmul fast float %7837, %7820
  %7839 = fadd fast float %7838, %7819
  %7840 = call float @dx.op.unary.f32(i32 7, float %7839)  ; Saturate(value)
  %7841 = fmul fast float %7840, %7804
  %7842 = fsub fast float 1.000000e+00, %7841
  br label %7843

; <label>:7843                                    ; preds = %7808, %7806
  %7844 = phi float [ %7842, %7808 ], [ 1.000000e+00, %7806 ]
  %7845 = fmul fast float %7844, %7802
  br label %7846

; <label>:7846                                    ; preds = %7843, %7792, %6565
  %7847 = phi float [ 1.000000e+00, %6565 ], [ %7845, %7843 ], [ %7802, %7792 ]
  %7848 = call float @dx.op.binary.f32(i32 36, float %7847, float %7847)  ; FMin(a,b)
  %7849 = call float @dx.op.binary.f32(i32 36, float %7847, float %7848)  ; FMin(a,b)
  %7850 = fcmp fast ogt float %7849, 0.000000e+00
  br i1 %7850, label %7851, label %8017, !dx.controlflow.hints !122

; <label>:7851                                    ; preds = %7846
  %7852 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %7853 = extractvalue %dx.types.CBufRet.f32 %7852, 0
  %7854 = extractvalue %dx.types.CBufRet.f32 %7852, 1
  %7855 = extractvalue %dx.types.CBufRet.f32 %7852, 2
  %7856 = extractvalue %dx.types.CBufRet.f32 %7852, 3
  %7857 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %7858 = extractvalue %dx.types.CBufRet.f32 %7857, 0
  %7859 = extractvalue %dx.types.CBufRet.f32 %7857, 1
  %7860 = extractvalue %dx.types.CBufRet.f32 %7857, 2
  %7861 = extractvalue %dx.types.CBufRet.f32 %7857, 3
  %7862 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %7863 = extractvalue %dx.types.CBufRet.f32 %7862, 0
  %7864 = extractvalue %dx.types.CBufRet.f32 %7862, 1
  %7865 = extractvalue %dx.types.CBufRet.f32 %7862, 2
  %7866 = extractvalue %dx.types.CBufRet.f32 %7862, 3
  %7867 = fmul fast float %7853, %6585
  %7868 = call float @dx.op.tertiary.f32(i32 46, float %6586, float %7854, float %7867)  ; FMad(a,b,c)
  %7869 = call float @dx.op.tertiary.f32(i32 46, float %6587, float %7855, float %7868)  ; FMad(a,b,c)
  %7870 = fadd fast float %7869, %7856
  %7871 = fmul fast float %7858, %6585
  %7872 = call float @dx.op.tertiary.f32(i32 46, float %6586, float %7859, float %7871)  ; FMad(a,b,c)
  %7873 = call float @dx.op.tertiary.f32(i32 46, float %6587, float %7860, float %7872)  ; FMad(a,b,c)
  %7874 = fadd fast float %7873, %7861
  %7875 = fmul fast float %7863, %6585
  %7876 = call float @dx.op.tertiary.f32(i32 46, float %6586, float %7864, float %7875)  ; FMad(a,b,c)
  %7877 = call float @dx.op.tertiary.f32(i32 46, float %6587, float %7865, float %7876)  ; FMad(a,b,c)
  %7878 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %7879 = extractvalue %dx.types.CBufRet.f32 %7878, 0
  %7880 = extractvalue %dx.types.CBufRet.f32 %7878, 1
  %7881 = extractvalue %dx.types.CBufRet.f32 %7878, 3
  %7882 = fmul fast float %7881, %7870
  %7883 = fmul fast float %7881, %7874
  %7884 = fadd fast float %7882, %7879
  %7885 = fadd fast float %7883, %7880
  %7886 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %7887 = extractvalue %dx.types.CBufRet.f32 %7886, 0
  %7888 = extractvalue %dx.types.CBufRet.f32 %7886, 1
  %7889 = fsub fast float %7884, %7887
  %7890 = fsub fast float %7885, %7888
  %7891 = fcmp fast olt float %7889, 0.000000e+00
  %7892 = fcmp fast olt float %7890, 0.000000e+00
  %7893 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %7894 = extractvalue %dx.types.CBufRet.f32 %7893, 0
  %7895 = extractvalue %dx.types.CBufRet.f32 %7893, 1
  %7896 = extractvalue %dx.types.CBufRet.f32 %7893, 2
  %7897 = extractvalue %dx.types.CBufRet.f32 %7893, 3
  %7898 = select i1 %7891, float %7894, float %7896
  %7899 = select i1 %7892, float %7895, float %7897
  %7900 = fmul fast float %7898, %7889
  %7901 = fmul fast float %7899, %7890
  %7902 = call float @dx.op.unary.f32(i32 6, float %7900)  ; FAbs(value)
  %7903 = call float @dx.op.unary.f32(i32 6, float %7901)  ; FAbs(value)
  %7904 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %7905 = extractvalue %dx.types.CBufRet.f32 %7904, 0
  %7906 = call float @dx.op.binary.f32(i32 35, float %7902, float %7903)  ; FMax(a,b)
  %7907 = fsub fast float %7905, %7906
  %7908 = call float @dx.op.unary.f32(i32 7, float %7907)  ; Saturate(value)
  %7909 = fcmp fast ogt float %7908, 0.000000e+00
  br i1 %7909, label %7910, label %7951, !dx.controlflow.hints !123

; <label>:7910                                    ; preds = %7851
  %7911 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %43, float %7884, float %7885, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7912 = extractvalue %dx.types.ResRet.f32 %7911, 1
  %7913 = fcmp fast ogt float %7912, 0.000000e+00
  br i1 %7913, label %7914, label %7946

; <label>:7914                                    ; preds = %7910
  %7915 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %43, float %7884, float %7885, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7916 = extractvalue %dx.types.ResRet.f32 %7915, 0
  %7917 = extractvalue %dx.types.ResRet.f32 %7915, 1
  %7918 = extractvalue %dx.types.ResRet.f32 %7915, 2
  %7919 = extractvalue %dx.types.ResRet.f32 %7915, 3
  %7920 = fsub fast float 1.000000e+00, %7866
  %7921 = fsub fast float %7920, %7877
  %7922 = fmul fast float %7921, 0x400921FB60000000
  %7923 = fadd fast float %7922, 0x3FF921FB60000000
  %7924 = call float @dx.op.unary.f32(i32 13, float %7923)  ; Sin(value)
  %7925 = fadd fast float %7924, -1.000000e+00
  %7926 = fmul fast float %7925, 0x3FD45F3060000000
  %7927 = fmul fast float %7921, 0x401921FB60000000
  %7928 = fadd fast float %7927, 0x400921FB60000000
  %7929 = call float @dx.op.unary.f32(i32 13, float %7928)  ; Sin(value)
  %7930 = fadd fast float %7929, 0x3E7777A5C0000000
  %7931 = fmul fast float %7930, 0x3FC45F3060000000
  %7932 = fmul fast float %7921, 0x4022D97C80000000
  %7933 = fadd fast float %7932, 0x4012D97C80000000
  %7934 = call float @dx.op.unary.f32(i32 13, float %7933)  ; Sin(value)
  %7935 = fadd fast float %7934, 1.000000e+00
  %7936 = fmul fast float %7935, 0x3FBB2995E0000000
  %7937 = fmul fast float %7921, 0x402921FB60000000
  %7938 = fadd fast float %7937, 0x401921FB60000000
  %7939 = call float @dx.op.unary.f32(i32 13, float %7938)  ; Sin(value)
  %7940 = fadd fast float %7939, 0xBE8777A5C0000000
  %7941 = fmul fast float %7940, 0x3FB45F3060000000
  %7942 = call float @dx.op.dot4.f32(i32 56, float %7916, float %7917, float %7918, float %7919, float %7926, float %7931, float %7936, float %7941)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %7943 = fmul fast float %7942, 0xBFF7154760000000
  %7944 = call float @dx.op.unary.f32(i32 21, float %7943)  ; Exp(value)
  %7945 = call float @dx.op.unary.f32(i32 7, float %7944)  ; Saturate(value)
  br label %7946

; <label>:7946                                    ; preds = %7914, %7910
  %7947 = phi float [ %7945, %7914 ], [ 1.000000e+00, %7910 ]
  %7948 = fadd fast float %7947, -1.000000e+00
  %7949 = fmul fast float %7948, %7908
  %7950 = fadd fast float %7949, 1.000000e+00
  br label %7951

; <label>:7951                                    ; preds = %7946, %7851
  %7952 = phi float [ %7950, %7946 ], [ 1.000000e+00, %7851 ]
  %7953 = fmul fast float %7952, %7847
  %7954 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %7955 = extractvalue %dx.types.CBufRet.f32 %7954, 0
  %7956 = extractvalue %dx.types.CBufRet.f32 %7954, 1
  %7957 = extractvalue %dx.types.CBufRet.f32 %7954, 2
  %7958 = fadd fast float %7955, %188
  %7959 = fadd fast float %7956, %189
  %7960 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %7961 = extractvalue %dx.types.CBufRet.f32 %7960, 1
  %7962 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %7963 = extractvalue %dx.types.CBufRet.f32 %7962, 0
  %7964 = extractvalue %dx.types.CBufRet.f32 %7962, 1
  %7965 = extractvalue %dx.types.CBufRet.f32 %7962, 2
  %7966 = fsub fast float -0.000000e+00, %7958
  %7967 = fsub fast float -0.000000e+00, %7959
  %7968 = fsub fast float -0.000000e+00, %190
  %7969 = fsub fast float %7968, %7957
  %7970 = fadd fast float %7969, %7961
  %7971 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7966, float %7967, float %7970)  ; Dot3(ax,ay,az,bx,by,bz)
  %7972 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7963, float %7964, float %7965)  ; Dot3(ax,ay,az,bx,by,bz)
  %7973 = fdiv fast float 1.000000e+00, %7972
  %7974 = fmul fast float %7973, %7971
  %7975 = fmul fast float %7963, %7974
  %7976 = fmul fast float %7964, %7974
  %7977 = fadd fast float %7975, %7958
  %7978 = fadd fast float %7976, %7959
  %7979 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %7980 = extractvalue %dx.types.CBufRet.f32 %7979, 0
  %7981 = extractvalue %dx.types.CBufRet.f32 %7979, 1
  %7982 = fsub fast float %7977, %7980
  %7983 = fsub fast float %7978, %7981
  %7984 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %7985 = extractvalue %dx.types.CBufRet.f32 %7984, 2
  %7986 = extractvalue %dx.types.CBufRet.f32 %7984, 3
  %7987 = fmul fast float %7982, %7985
  %7988 = fmul fast float %7983, %7986
  %7989 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %7990 = extractvalue %dx.types.CBufRet.i32 %7989, 3
  %7991 = icmp eq i32 %7990, 0
  br i1 %7991, label %7997, label %7992

; <label>:7992                                    ; preds = %7951
  %7993 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %42, float %7987, float %7988, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7994 = extractvalue %dx.types.ResRet.f32 %7993, 0
  %7995 = extractvalue %dx.types.ResRet.f32 %7993, 1
  %7996 = extractvalue %dx.types.ResRet.f32 %7993, 2
  br label %8002

; <label>:7997                                    ; preds = %7951
  %7998 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %43, float %7987, float %7988, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7999 = extractvalue %dx.types.ResRet.f32 %7998, 0
  %8000 = extractvalue %dx.types.ResRet.f32 %7998, 1
  %8001 = extractvalue %dx.types.ResRet.f32 %7998, 2
  br label %8002

; <label>:8002                                    ; preds = %7997, %7992
  %8003 = phi float [ %7994, %7992 ], [ %7999, %7997 ]
  %8004 = phi float [ %7995, %7992 ], [ %8000, %7997 ]
  %8005 = phi float [ %7996, %7992 ], [ %8001, %7997 ]
  %8006 = extractvalue %dx.types.CBufRet.f32 %7960, 2
  %8007 = fmul fast float %8006, %8003
  %8008 = extractvalue %dx.types.CBufRet.f32 %7960, 0
  %8009 = fsub fast float %7974, %8008
  %8010 = fsub fast float %8009, %8007
  %8011 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8010)  ; FMax(a,b)
  %8012 = fmul fast float %8011, %8004
  %8013 = call float @dx.op.binary.f32(i32 36, float %8005, float %8012)  ; FMin(a,b)
  %8014 = fmul fast float %8013, 0xBFF7154760000000
  %8015 = call float @dx.op.unary.f32(i32 21, float %8014)  ; Exp(value)
  %8016 = fmul fast float %7953, %8015
  br label %8017

; <label>:8017                                    ; preds = %8002, %7846
  %8018 = phi float [ %8016, %8002 ], [ %7847, %7846 ]
  %8019 = call float @dx.op.binary.f32(i32 36, float %8018, float %8018)  ; FMin(a,b)
  %8020 = call float @dx.op.binary.f32(i32 36, float %8018, float %8019)  ; FMin(a,b)
  %8021 = fcmp fast ogt float %8020, 0.000000e+00
  br i1 %8021, label %8022, label %8330, !dx.controlflow.hints !124

; <label>:8022                                    ; preds = %8017
  %8023 = bitcast i32 %5687 to float
  %8024 = fmul fast float %8018, %6577
  %8025 = fmul fast float %8018, %6578
  %8026 = fmul fast float %8018, %6579
  %8027 = fsub fast float %6566, %5649
  %8028 = fsub fast float %6567, %5648
  %8029 = fsub fast float %6568, %5647
  %8030 = call float @dx.op.dot3.f32(i32 55, float %8027, float %8028, float %8029, float %8027, float %8028, float %8029)  ; Dot3(ax,ay,az,bx,by,bz)
  %8031 = call float @dx.op.unary.f32(i32 25, float %8030)  ; Rsqrt(value)
  %8032 = fmul fast float %8031, %8027
  %8033 = fmul fast float %8031, %8028
  %8034 = fmul fast float %8031, %8029
  %8035 = call float @dx.op.dot3.f32(i32 55, float %6566, float %6567, float %6568, float %5653, float %5654, float %5655)  ; Dot3(ax,ay,az,bx,by,bz)
  %8036 = call float @dx.op.dot3.f32(i32 55, float %5646, float %5645, float %5644, float %8032, float %8033, float %8034)  ; Dot3(ax,ay,az,bx,by,bz)
  %8037 = call float @dx.op.unary.f32(i32 7, float %8035)  ; Saturate(value)
  %8038 = fmul fast float %8037, %8037
  %8039 = fmul fast float %8038, %8023
  %8040 = call float @dx.op.unary.f32(i32 7, float %8039)  ; Saturate(value)
  %8041 = fmul fast float %8040, %8037
  %8042 = call float @dx.op.dot3.f32(i32 55, float %5653, float %5654, float %5655, float %8032, float %8033, float %8034)  ; Dot3(ax,ay,az,bx,by,bz)
  %8043 = fmul fast float %8042, %8042
  %8044 = call float @dx.op.unary.f32(i32 6, float %8035)  ; FAbs(value)
  %8045 = fsub fast float 1.000000e+00, %5681
  %8046 = fmul fast float %5663, %5663
  %8047 = fmul fast float %8046, %8045
  %8048 = fadd fast float %8047, %5681
  %8049 = bitcast float %8048 to i32
  %8050 = ashr i32 %8049, 1
  %8051 = add nsw i32 %8050, 532487669
  %8052 = bitcast i32 %8051 to float
  %8053 = fadd fast float %8052, %5663
  %8054 = fmul fast float %5681, %8043
  %8055 = fsub fast float 1.000000e+00, %8043
  %8056 = fadd fast float %8055, %8054
  %8057 = fmul fast float %8044, %8044
  %8058 = fmul fast float %8057, %8045
  %8059 = fadd fast float %8058, %5681
  %8060 = bitcast float %8059 to i32
  %8061 = ashr i32 %8060, 1
  %8062 = add nsw i32 %8061, 532487669
  %8063 = bitcast i32 %8062 to float
  %8064 = fadd fast float %8063, %8044
  %8065 = fmul fast float %8056, %8056
  %8066 = fmul fast float %8065, %8053
  %8067 = fmul fast float %8066, %8064
  %8068 = fdiv fast float 0x3FF0A00000000000, %8067
  %8069 = fmul fast float %8068, %5681
  %8070 = fmul fast float %5933, 0x3FF9999980000000
  %8071 = fsub fast float 5.000000e+00, %8070
  %8072 = call float @dx.op.unary.f32(i32 6, float %8036)  ; FAbs(value)
  %8073 = fsub fast float 1.000000e+00, %8072
  %8074 = fmul fast float %5933, 0x41D9660740000000
  %8075 = fadd fast float %8074, 0xC1EFBF8940000000
  %8076 = bitcast float %8073 to i32
  %8077 = sitofp i32 %8076 to float
  %8078 = fmul fast float %8077, %8071
  %8079 = fadd fast float %8075, %8078
  %8080 = fptosi float %8079 to i32
  %8081 = bitcast i32 %8080 to float
  %8082 = fsub fast float 1.000000e+00, %5650
  %8083 = fsub fast float 1.000000e+00, %5651
  %8084 = fsub fast float 1.000000e+00, %5661
  %8085 = fmul fast float %8081, %8082
  %8086 = fmul fast float %8081, %8083
  %8087 = fmul fast float %8081, %8084
  %8088 = fadd fast float %8085, %5650
  %8089 = fadd fast float %8086, %5651
  %8090 = fadd fast float %8087, %5661
  br i1 %5956, label %8091, label %8114

; <label>:8091                                    ; preds = %8022
  %8092 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %43, float %4699, float %8072, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8093 = extractvalue %dx.types.ResRet.f32 %8092, 0
  %8094 = extractvalue %dx.types.ResRet.f32 %8092, 1
  %8095 = extractvalue %dx.types.ResRet.f32 %8092, 2
  %8096 = fadd fast float %8093, -5.000000e-01
  %8097 = fadd fast float %8094, -5.000000e-01
  %8098 = fadd fast float %8095, -5.000000e-01
  %8099 = fmul fast float %5650, 4.000000e+00
  %8100 = fmul fast float %8099, %8082
  %8101 = fmul fast float %8100, %8096
  %8102 = fmul fast float %5651, 4.000000e+00
  %8103 = fmul fast float %8102, %8083
  %8104 = fmul fast float %8103, %8097
  %8105 = fmul fast float %5661, 4.000000e+00
  %8106 = fmul fast float %8105, %8084
  %8107 = fmul fast float %8106, %8098
  %8108 = fadd fast float %8101, %8088
  %8109 = fadd fast float %8104, %8089
  %8110 = fadd fast float %8107, %8090
  %8111 = call float @dx.op.unary.f32(i32 7, float %8108)  ; Saturate(value)
  %8112 = call float @dx.op.unary.f32(i32 7, float %8109)  ; Saturate(value)
  %8113 = call float @dx.op.unary.f32(i32 7, float %8110)  ; Saturate(value)
  br label %8114

; <label>:8114                                    ; preds = %8091, %8022
  %8115 = phi float [ %8111, %8091 ], [ %8088, %8022 ]
  %8116 = phi float [ %8112, %8091 ], [ %8089, %8022 ]
  %8117 = phi float [ %8113, %8091 ], [ %8090, %8022 ]
  %8118 = fmul fast float %8035, 9.843750e-01
  %8119 = fadd fast float %8118, 7.812500e-03
  %8120 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %36, %dx.types.Handle %43, float %8119, float %5937, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8121 = extractvalue %dx.types.ResRet.f32 %8120, 0
  %8122 = extractvalue %dx.types.ResRet.f32 %8120, 1
  %8123 = extractvalue %dx.types.ResRet.f32 %8120, 2
  %8124 = extractvalue %dx.types.ResRet.f32 %8120, 3
  %8125 = fsub fast float %8123, %8121
  %8126 = fsub fast float %8124, %8122
  %8127 = fmul fast float %8125, %5943
  %8128 = fmul fast float %8126, %5943
  %8129 = fadd fast float %8127, %8121
  %8130 = fadd fast float %8128, %8122
  %8131 = fmul fast float %8129, %5650
  %8132 = fmul fast float %8129, %5651
  %8133 = fmul fast float %8129, %5661
  %8134 = fadd fast float %8131, %8130
  %8135 = fadd fast float %8132, %8130
  %8136 = fadd fast float %8133, %8130
  br i1 %5956, label %8137, label %8160

; <label>:8137                                    ; preds = %8114
  %8138 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %43, float %4699, float %8035, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8139 = extractvalue %dx.types.ResRet.f32 %8138, 0
  %8140 = extractvalue %dx.types.ResRet.f32 %8138, 1
  %8141 = extractvalue %dx.types.ResRet.f32 %8138, 2
  %8142 = fadd fast float %8139, -5.000000e-01
  %8143 = fadd fast float %8140, -5.000000e-01
  %8144 = fadd fast float %8141, -5.000000e-01
  %8145 = fmul fast float %5650, 4.000000e+00
  %8146 = fmul fast float %8145, %8082
  %8147 = fmul fast float %8146, %8142
  %8148 = fmul fast float %5651, 4.000000e+00
  %8149 = fmul fast float %8148, %8083
  %8150 = fmul fast float %8149, %8143
  %8151 = fmul fast float %5661, 4.000000e+00
  %8152 = fmul fast float %8151, %8084
  %8153 = fmul fast float %8152, %8144
  %8154 = fadd fast float %8147, %8134
  %8155 = fadd fast float %8150, %8135
  %8156 = fadd fast float %8153, %8136
  %8157 = call float @dx.op.unary.f32(i32 7, float %8154)  ; Saturate(value)
  %8158 = call float @dx.op.unary.f32(i32 7, float %8155)  ; Saturate(value)
  %8159 = call float @dx.op.unary.f32(i32 7, float %8156)  ; Saturate(value)
  br label %8160

; <label>:8160                                    ; preds = %8137, %8114
  %8161 = phi float [ %8157, %8137 ], [ %8134, %8114 ]
  %8162 = phi float [ %8158, %8137 ], [ %8135, %8114 ]
  %8163 = phi float [ %8159, %8137 ], [ %8136, %8114 ]
  %8164 = call float @dx.op.binary.f32(i32 35, float %8162, float %8163)  ; FMax(a,b)
  %8165 = call float @dx.op.binary.f32(i32 35, float %8161, float %8164)  ; FMax(a,b)
  %8166 = fsub fast float 1.000000e+00, %8165
  %8167 = call float @dx.op.binary.f32(i32 35, float %8044, float 0x3F50624DE0000000)  ; FMax(a,b)
  %8168 = fdiv fast float %4003, %8167
  %8169 = fmul fast float %6475, %8168
  %8170 = fmul fast float %6477, %8168
  %8171 = fmul fast float %6479, %8168
  %8172 = call float @dx.op.unary.f32(i32 21, float %8169)  ; Exp(value)
  %8173 = call float @dx.op.unary.f32(i32 21, float %8170)  ; Exp(value)
  %8174 = call float @dx.op.unary.f32(i32 21, float %8171)  ; Exp(value)
  %8175 = call float @dx.op.unary.f32(i32 7, float %8172)  ; Saturate(value)
  %8176 = call float @dx.op.unary.f32(i32 7, float %8173)  ; Saturate(value)
  %8177 = call float @dx.op.unary.f32(i32 7, float %8174)  ; Saturate(value)
  %8178 = select i1 %6472, float %8175, float 0.000000e+00
  %8179 = select i1 %6473, float %8176, float 0.000000e+00
  %8180 = select i1 %6474, float %8177, float 0.000000e+00
  %8181 = fsub fast float -0.000000e+00, %5653
  %8182 = fsub fast float -0.000000e+00, %5654
  %8183 = fsub fast float -0.000000e+00, %5655
  %8184 = call float @dx.op.dot3.f32(i32 55, float %6566, float %6567, float %6568, float %8181, float %8182, float %8183)  ; Dot3(ax,ay,az,bx,by,bz)
  %8185 = call float @dx.op.unary.f32(i32 7, float %8184)  ; Saturate(value)
  %8186 = fmul fast float %8185, 9.843750e-01
  %8187 = fadd fast float %8186, 7.812500e-03
  %8188 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %36, %dx.types.Handle %43, float %8187, float %5937, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8189 = extractvalue %dx.types.ResRet.f32 %8188, 0
  %8190 = extractvalue %dx.types.ResRet.f32 %8188, 1
  %8191 = extractvalue %dx.types.ResRet.f32 %8188, 2
  %8192 = extractvalue %dx.types.ResRet.f32 %8188, 3
  %8193 = fsub fast float %8191, %8189
  %8194 = fsub fast float %8192, %8190
  %8195 = fmul fast float %8193, %5943
  %8196 = fmul fast float %8194, %5943
  %8197 = fadd fast float %8195, %8189
  %8198 = fadd fast float %8196, %8190
  %8199 = fmul fast float %8197, %5650
  %8200 = fmul fast float %8197, %5651
  %8201 = fmul fast float %8197, %5661
  %8202 = fadd fast float %8199, %8198
  %8203 = fadd fast float %8200, %8198
  %8204 = fadd fast float %8201, %8198
  br i1 %5956, label %8205, label %8228

; <label>:8205                                    ; preds = %8160
  %8206 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %43, float %4699, float %8185, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8207 = extractvalue %dx.types.ResRet.f32 %8206, 0
  %8208 = extractvalue %dx.types.ResRet.f32 %8206, 1
  %8209 = extractvalue %dx.types.ResRet.f32 %8206, 2
  %8210 = fadd fast float %8207, -5.000000e-01
  %8211 = fadd fast float %8208, -5.000000e-01
  %8212 = fadd fast float %8209, -5.000000e-01
  %8213 = fmul fast float %5650, 4.000000e+00
  %8214 = fmul fast float %8213, %8082
  %8215 = fmul fast float %8214, %8210
  %8216 = fmul fast float %5651, 4.000000e+00
  %8217 = fmul fast float %8216, %8083
  %8218 = fmul fast float %8217, %8211
  %8219 = fmul fast float %5661, 4.000000e+00
  %8220 = fmul fast float %8219, %8084
  %8221 = fmul fast float %8220, %8212
  %8222 = fadd fast float %8215, %8202
  %8223 = fadd fast float %8218, %8203
  %8224 = fadd fast float %8221, %8204
  %8225 = call float @dx.op.unary.f32(i32 7, float %8222)  ; Saturate(value)
  %8226 = call float @dx.op.unary.f32(i32 7, float %8223)  ; Saturate(value)
  %8227 = call float @dx.op.unary.f32(i32 7, float %8224)  ; Saturate(value)
  br label %8228

; <label>:8228                                    ; preds = %8205, %8160
  %8229 = phi float [ %8225, %8205 ], [ %8202, %8160 ]
  %8230 = phi float [ %8226, %8205 ], [ %8203, %8160 ]
  %8231 = phi float [ %8227, %8205 ], [ %8204, %8160 ]
  %8232 = call float @dx.op.binary.f32(i32 35, float %8230, float %8231)  ; FMax(a,b)
  %8233 = call float @dx.op.binary.f32(i32 35, float %8229, float %8232)  ; FMax(a,b)
  %8234 = fsub fast float 1.000000e+00, %8233
  %8235 = fmul fast float %5678, %6539
  %8236 = fadd fast float %6541, %8235
  %8237 = call float @dx.op.unary.f32(i32 7, float %8236)  ; Saturate(value)
  %8238 = fsub fast float %6566, %5669
  %8239 = fsub fast float %6567, %5670
  %8240 = fsub fast float %6568, %5671
  %8241 = call float @dx.op.dot3.f32(i32 55, float %8238, float %8239, float %8240, float %8238, float %8239, float %8240)  ; Dot3(ax,ay,az,bx,by,bz)
  %8242 = call float @dx.op.unary.f32(i32 25, float %8241)  ; Rsqrt(value)
  %8243 = fmul fast float %8242, %8238
  %8244 = fmul fast float %8242, %8239
  %8245 = fmul fast float %8242, %8240
  %8246 = call float @dx.op.dot3.f32(i32 55, float %8181, float %8182, float %8183, float %8243, float %8244, float %8245)  ; Dot3(ax,ay,az,bx,by,bz)
  %8247 = fmul fast float %8246, %8246
  %8248 = call float @dx.op.unary.f32(i32 6, float %8185)  ; FAbs(value)
  %8249 = call float @dx.op.binary.f32(i32 35, float %8237, float 0x3F847AE140000000)  ; FMax(a,b)
  %8250 = fmul fast float %8249, %8249
  %8251 = fmul fast float %8250, %8250
  %8252 = fsub fast float 1.000000e+00, %8251
  %8253 = fmul fast float %8046, %8252
  %8254 = fadd fast float %8253, %8251
  %8255 = bitcast float %8254 to i32
  %8256 = ashr i32 %8255, 1
  %8257 = add nsw i32 %8256, 532487669
  %8258 = bitcast i32 %8257 to float
  %8259 = fadd fast float %8258, %5663
  %8260 = fmul fast float %8251, %8247
  %8261 = fsub fast float 1.000000e+00, %8247
  %8262 = fadd fast float %8261, %8260
  %8263 = fmul fast float %8248, %8248
  %8264 = fmul fast float %8263, %8252
  %8265 = fadd fast float %8264, %8251
  %8266 = bitcast float %8265 to i32
  %8267 = ashr i32 %8266, 1
  %8268 = add nsw i32 %8267, 532487669
  %8269 = bitcast i32 %8268 to float
  %8270 = fadd fast float %8269, %8248
  %8271 = fmul fast float %8262, %8262
  %8272 = fmul fast float %8271, %8259
  %8273 = fmul fast float %8272, %8270
  %8274 = fdiv fast float 0x3FF0A00000000000, %8273
  %8275 = fmul fast float %8274, %8251
  %8276 = fmul fast float %8185, %8178
  %8277 = fmul fast float %8185, %8179
  %8278 = fmul fast float %8185, %8180
  %8279 = fmul fast float %8276, %8234
  %8280 = fmul fast float %8279, %8275
  %8281 = fmul fast float %8277, %8234
  %8282 = fmul fast float %8281, %8275
  %8283 = fmul fast float %8278, %8234
  %8284 = fmul fast float %8283, %8275
  %8285 = fmul fast float %8115, %8069
  %8286 = fmul fast float %8116, %8069
  %8287 = fmul fast float %8117, %8069
  %8288 = fsub fast float 1.000000e+00, %8036
  %8289 = bitcast float %8288 to i32
  %8290 = sitofp i32 %8289 to float
  %8291 = fmul fast float %8290, 5.000000e+00
  %8292 = fadd fast float %8291, 0xC1EFBF8940000000
  %8293 = fptosi float %8292 to i32
  %8294 = bitcast i32 %8293 to float
  %8295 = fmul fast float %8294, %4700
  %8296 = fmul fast float %8166, %8295
  %8297 = fmul fast float %8296, %6467
  %8298 = fmul fast float %8296, %6468
  %8299 = fmul fast float %8296, %6469
  %8300 = fadd fast float %8297, %8285
  %8301 = fadd fast float %8298, %8286
  %8302 = fadd fast float %8299, %8287
  %8303 = fmul fast float %8300, %8041
  %8304 = fmul fast float %8301, %8041
  %8305 = fmul fast float %8302, %8041
  %8306 = fmul fast float %8041, %8024
  %8307 = fmul fast float %8306, %8166
  %8308 = fmul fast float %8041, %8025
  %8309 = fmul fast float %8308, %8166
  %8310 = fmul fast float %8041, %8026
  %8311 = fmul fast float %8310, %8166
  %8312 = fadd fast float %8303, %8280
  %8313 = fadd fast float %8304, %8282
  %8314 = fadd fast float %8305, %8284
  %8315 = fmul fast float %8312, %8024
  %8316 = fmul fast float %8313, %8025
  %8317 = fmul fast float %8314, %8026
  %8318 = fadd fast float %8307, %6556
  %8319 = fmul fast float %8318, %4696
  %8320 = fadd fast float %8309, %6558
  %8321 = fmul fast float %8320, %4696
  %8322 = fadd fast float %8311, %6560
  %8323 = fmul fast float %8322, %4696
  %8324 = fadd fast float %8315, %6520
  %8325 = fmul fast float %8324, %4696
  %8326 = fadd fast float %8316, %6523
  %8327 = fmul fast float %8326, %4696
  %8328 = fadd fast float %8317, %6526
  %8329 = fmul fast float %8328, %4696
  br label %8330

; <label>:8330                                    ; preds = %8228, %8017, %6450
  %8331 = phi float [ %6521, %6450 ], [ %6521, %8017 ], [ %8325, %8228 ]
  %8332 = phi float [ %6524, %6450 ], [ %6524, %8017 ], [ %8327, %8228 ]
  %8333 = phi float [ %6527, %6450 ], [ %6527, %8017 ], [ %8329, %8228 ]
  %8334 = phi float [ %6557, %6450 ], [ %6557, %8017 ], [ %8319, %8228 ]
  %8335 = phi float [ %6559, %6450 ], [ %6559, %8017 ], [ %8321, %8228 ]
  %8336 = phi float [ %6561, %6450 ], [ %6561, %8017 ], [ %8323, %8228 ]
  %8337 = fmul fast float %6496, %4696
  %8338 = fmul fast float %6497, %4696
  %8339 = fmul fast float %6498, %4696
  %8340 = fadd fast float %8337, 1.000000e+00
  %8341 = fadd fast float %8338, 1.000000e+00
  %8342 = fadd fast float %8339, 1.000000e+00
  %8343 = call float @dx.op.dot3.f32(i32 55, float %8340, float %8341, float %8342, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8344 = fsub fast float 1.000000e+00, %8343
  %8345 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %8346 = extractvalue %dx.types.CBufRet.f32 %8345, 0
  %8347 = fmul fast float %8346, %6502
  %8348 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %8349 = extractvalue %dx.types.CBufRet.f32 %8348, 3
  %8350 = fsub fast float 1.000000e+00, %4703
  %8351 = call float @dx.op.unary.f32(i32 7, float %8350)  ; Saturate(value)
  %8352 = fadd fast float %8336, %4702
  %8353 = fmul fast float %8352, %4703
  %8354 = fmul fast float %8351, %8349
  %8355 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %8356 = extractvalue %dx.types.CBufRet.f32 %8355, 3
  %8357 = fmul fast float %8334, %5656
  %8358 = fmul fast float %8335, %5657
  %8359 = fmul fast float %8336, %5658
  %8360 = fcmp fast ogt float %96, %223
  %8361 = and i1 %8360, %4771
  %8362 = or i1 %4850, %8361
  %8363 = icmp eq i32 %4770, 2
  %8364 = fcmp fast ole float %96, %223
  %8365 = and i1 %8364, %8363
  %8366 = or i1 %8365, %8362
  br i1 %8361, label %8367, label %8624

; <label>:8367                                    ; preds = %8330
  %8368 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %8369 = extractvalue %dx.types.CBufRet.f32 %8368, 2
  %8370 = extractvalue %dx.types.CBufRet.f32 %8368, 3
  %8371 = fmul fast float %8369, %109
  %8372 = fmul fast float %8370, %110
  %8373 = call float @dx.op.unary.f32(i32 7, float %8371)  ; Saturate(value)
  %8374 = call float @dx.op.unary.f32(i32 7, float %8372)  ; Saturate(value)
  %8375 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %43, float %8373, float %8374, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8376 = extractvalue %dx.types.ResRet.f32 %8375, 0
  %8377 = extractvalue %dx.types.ResRet.f32 %8375, 1
  %8378 = extractvalue %dx.types.ResRet.f32 %8375, 2
  %8379 = extractvalue %dx.types.ResRet.f32 %8375, 3
  %8380 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %43, float %8373, float %8374, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8381 = extractvalue %dx.types.ResRet.f32 %8380, 0
  %8382 = extractvalue %dx.types.ResRet.f32 %8380, 1
  %8383 = extractvalue %dx.types.ResRet.f32 %8380, 2
  %8384 = extractvalue %dx.types.ResRet.f32 %8380, 3
  %8385 = call float @dx.op.binary.f32(i32 35, float %8377, float %8378)  ; FMax(a,b)
  %8386 = call float @dx.op.binary.f32(i32 35, float %8376, float %8385)  ; FMax(a,b)
  %8387 = call float @dx.op.binary.f32(i32 35, float %8386, float %8379)  ; FMax(a,b)
  %8388 = call float @dx.op.binary.f32(i32 36, float %8382, float %8383)  ; FMin(a,b)
  %8389 = call float @dx.op.binary.f32(i32 36, float %8381, float %8388)  ; FMin(a,b)
  %8390 = call float @dx.op.binary.f32(i32 36, float %8389, float %8384)  ; FMin(a,b)
  %8391 = fmul fast float %8387, 2.550000e+02
  %8392 = fadd fast float %8391, 0x3F70101020000000
  %8393 = fptoui float %8392 to i32
  %8394 = fmul fast float %8390, 2.550000e+02
  %8395 = fadd fast float %8394, 0x3F70101020000000
  %8396 = fptoui float %8395 to i32
  %8397 = icmp ult i32 %8393, %8396
  br i1 %8397, label %8398, label %8566

; <label>:8398                                    ; preds = %8367
  %8399 = fcmp fast ogt float %95, 9.843750e-01
  %8400 = fadd fast float %96, -4.000000e+00
  %8401 = select i1 %8399, float -4.000000e+00, float %8400
  %8402 = call float @dx.op.binary.f32(i32 35, float %8401, float 0.000000e+00)  ; FMax(a,b)
  %8403 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %8404 = extractvalue %dx.types.CBufRet.f32 %8403, 0
  %8405 = fadd fast float %8404, %8402
  %8406 = extractvalue %dx.types.CBufRet.f32 %8403, 2
  %8407 = fmul fast float %8405, %8406
  %8408 = call float @dx.op.unary.f32(i32 23, float %8407)  ; Log(value)
  %8409 = extractvalue %dx.types.CBufRet.f32 %8403, 3
  %8410 = fmul fast float %8409, %8408
  %8411 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8412 = extractvalue %dx.types.CBufRet.f32 %8411, 2
  %8413 = fmul fast float %8410, %8412
  %8414 = call float @dx.op.unary.f32(i32 7, float %8413)  ; Saturate(value)
  %8415 = uitofp i32 %8393 to float
  %8416 = uitofp i32 %8396 to float
  %8417 = fadd fast float %8415, 5.000000e-01
  %8418 = fadd fast float %8416, 5.000000e-01
  %8419 = fmul fast float %8412, %8417
  %8420 = fmul fast float %8412, %8418
  %8421 = fadd fast float %8419, 0x3F0FFB4800000000
  %8422 = fadd fast float %8420, 0xBF0FFB4800000000
  %8423 = call float @dx.op.binary.f32(i32 35, float %8414, float %8421)  ; FMax(a,b)
  %8424 = call float @dx.op.binary.f32(i32 36, float %8423, float %8422)  ; FMin(a,b)
  %8425 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %8426 = extractvalue %dx.types.CBufRet.f32 %8425, 1
  %8427 = extractvalue %dx.types.CBufRet.f32 %8425, 2
  %8428 = extractvalue %dx.types.CBufRet.f32 %8425, 0
  %8429 = fmul fast float %8426, %8424
  %8430 = fadd fast float %8428, %8429
  %8431 = fadd fast float %8428, %8427
  %8432 = fsub fast float %8426, %8427
  %8433 = fadd fast float %8432, %8428
  %8434 = call float @dx.op.binary.f32(i32 35, float %8430, float %8431)  ; FMax(a,b)
  %8435 = call float @dx.op.binary.f32(i32 36, float %8434, float %8433)  ; FMin(a,b)
  %8436 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %41, float %8373, float %8374, float %8435, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8437 = extractvalue %dx.types.ResRet.f32 %8436, 0
  %8438 = extractvalue %dx.types.ResRet.f32 %8436, 1
  %8439 = extractvalue %dx.types.ResRet.f32 %8436, 2
  %8440 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %8441 = extractvalue %dx.types.CBufRet.i32 %8440, 0
  %8442 = extractvalue %dx.types.CBufRet.i32 %8440, 1
  %8443 = uitofp i32 %8441 to float
  %8444 = uitofp i32 %8442 to float
  %8445 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %8446 = extractvalue %dx.types.CBufRet.f32 %8445, 0
  %8447 = extractvalue %dx.types.CBufRet.f32 %8445, 1
  %8448 = fmul fast float %8443, %8373
  %8449 = fmul fast float %8444, %8374
  %8450 = fadd fast float %8448, -5.000000e-01
  %8451 = fadd fast float %8449, -5.000000e-01
  %8452 = call float @dx.op.unary.f32(i32 22, float %8450)  ; Frc(value)
  %8453 = call float @dx.op.unary.f32(i32 22, float %8451)  ; Frc(value)
  %8454 = fmul fast float %8452, %8452
  %8455 = fmul fast float %8454, %8452
  %8456 = fsub fast float 3.000000e+00, %8452
  %8457 = fmul fast float %8454, %8456
  %8458 = fmul fast float %8452, 3.000000e+00
  %8459 = fmul fast float %8455, 3.000000e+00
  %8460 = fmul fast float %8454, 6.000000e+00
  %8461 = fsub fast float %8459, %8460
  %8462 = fadd fast float %8461, 4.000000e+00
  %8463 = fmul fast float %8462, 0x3FC5555560000000
  %8464 = fmul fast float %8455, -3.000000e+00
  %8465 = fadd fast float %8454, %8452
  %8466 = fmul fast float %8465, 3.000000e+00
  %8467 = fadd fast float %8464, 1.000000e+00
  %8468 = fadd fast float %8467, %8466
  %8469 = fmul fast float %8455, 0x3FC5555560000000
  %8470 = fmul fast float %8453, %8453
  %8471 = fmul fast float %8470, %8453
  %8472 = fsub fast float 3.000000e+00, %8453
  %8473 = fmul fast float %8470, %8472
  %8474 = fmul fast float %8453, 3.000000e+00
  %8475 = fmul fast float %8471, 3.000000e+00
  %8476 = fmul fast float %8470, 6.000000e+00
  %8477 = fsub fast float %8475, %8476
  %8478 = fadd fast float %8477, 4.000000e+00
  %8479 = fmul fast float %8478, 0x3FC5555560000000
  %8480 = fmul fast float %8471, -3.000000e+00
  %8481 = fadd fast float %8470, %8453
  %8482 = fmul fast float %8481, 3.000000e+00
  %8483 = fadd fast float %8480, 1.000000e+00
  %8484 = fadd fast float %8483, %8482
  %8485 = fmul fast float %8471, 0x3FC5555560000000
  %8486 = fadd fast float %8452, 1.000000e+00
  %8487 = fsub fast float 1.000000e+00, %8458
  %8488 = fadd fast float %8487, %8457
  %8489 = fadd fast float %8488, %8462
  %8490 = fmul fast float %8489, 0x3FC5555560000000
  %8491 = fdiv fast float %8463, %8490
  %8492 = fsub fast float %8486, %8491
  %8493 = fsub fast float 1.000000e+00, %8452
  %8494 = fadd fast float %8468, %8455
  %8495 = fmul fast float %8494, 0x3FC5555560000000
  %8496 = fdiv fast float %8469, %8495
  %8497 = fadd fast float %8493, %8496
  %8498 = fadd fast float %8453, 1.000000e+00
  %8499 = fsub fast float 1.000000e+00, %8474
  %8500 = fadd fast float %8499, %8473
  %8501 = fadd fast float %8500, %8478
  %8502 = fmul fast float %8501, 0x3FC5555560000000
  %8503 = fdiv fast float %8479, %8502
  %8504 = fsub fast float %8498, %8503
  %8505 = fsub fast float 1.000000e+00, %8453
  %8506 = fadd fast float %8484, %8471
  %8507 = fmul fast float %8506, 0x3FC5555560000000
  %8508 = fdiv fast float %8485, %8507
  %8509 = fadd fast float %8508, %8505
  %8510 = fmul fast float %8492, %8446
  %8511 = fsub fast float %8373, %8510
  %8512 = fmul fast float %8497, %8446
  %8513 = fadd fast float %8512, %8373
  %8514 = fmul fast float %8509, %8447
  %8515 = fadd fast float %8514, %8374
  %8516 = fmul fast float %8504, %8447
  %8517 = fsub fast float %8374, %8516
  %8518 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %41, float %8511, float %8517, float %8435, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8519 = extractvalue %dx.types.ResRet.f32 %8518, 0
  %8520 = extractvalue %dx.types.ResRet.f32 %8518, 1
  %8521 = extractvalue %dx.types.ResRet.f32 %8518, 2
  %8522 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %41, float %8513, float %8517, float %8435, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8523 = extractvalue %dx.types.ResRet.f32 %8522, 0
  %8524 = extractvalue %dx.types.ResRet.f32 %8522, 1
  %8525 = extractvalue %dx.types.ResRet.f32 %8522, 2
  %8526 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %41, float %8511, float %8515, float %8435, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8527 = extractvalue %dx.types.ResRet.f32 %8526, 0
  %8528 = extractvalue %dx.types.ResRet.f32 %8526, 1
  %8529 = extractvalue %dx.types.ResRet.f32 %8526, 2
  %8530 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %41, float %8513, float %8515, float %8435, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8531 = extractvalue %dx.types.ResRet.f32 %8530, 0
  %8532 = extractvalue %dx.types.ResRet.f32 %8530, 1
  %8533 = extractvalue %dx.types.ResRet.f32 %8530, 2
  %8534 = fsub fast float %8527, %8519
  %8535 = fsub fast float %8528, %8520
  %8536 = fsub fast float %8529, %8521
  %8537 = fmul fast float %8534, %8507
  %8538 = fmul fast float %8535, %8507
  %8539 = fmul fast float %8536, %8507
  %8540 = fadd fast float %8537, %8519
  %8541 = fadd fast float %8538, %8520
  %8542 = fadd fast float %8539, %8521
  %8543 = fsub fast float %8531, %8523
  %8544 = fsub fast float %8532, %8524
  %8545 = fsub fast float %8533, %8525
  %8546 = fmul fast float %8543, %8507
  %8547 = fmul fast float %8544, %8507
  %8548 = fmul fast float %8545, %8507
  %8549 = fsub fast float %8523, %8540
  %8550 = fadd fast float %8549, %8546
  %8551 = fsub fast float %8524, %8541
  %8552 = fadd fast float %8551, %8547
  %8553 = fsub fast float %8525, %8542
  %8554 = fadd fast float %8553, %8548
  %8555 = fmul fast float %8550, %8495
  %8556 = fmul fast float %8552, %8495
  %8557 = fmul fast float %8554, %8495
  %8558 = fadd fast float %8555, %8540
  %8559 = fadd fast float %8556, %8541
  %8560 = fadd fast float %8557, %8542
  %8561 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8562 = extractvalue %dx.types.CBufRet.f32 %8561, 1
  %8563 = fmul fast float %8558, %8562
  %8564 = fmul fast float %8559, %8562
  %8565 = fmul fast float %8560, %8562
  br label %8566

; <label>:8566                                    ; preds = %8398, %8367
  %8567 = phi float [ %8437, %8398 ], [ 1.000000e+00, %8367 ]
  %8568 = phi float [ %8438, %8398 ], [ 1.000000e+00, %8367 ]
  %8569 = phi float [ %8439, %8398 ], [ 1.000000e+00, %8367 ]
  %8570 = phi float [ %8563, %8398 ], [ 0.000000e+00, %8367 ]
  %8571 = phi float [ %8564, %8398 ], [ 0.000000e+00, %8367 ]
  %8572 = phi float [ %8565, %8398 ], [ 0.000000e+00, %8367 ]
  %8573 = fmul fast float %8570, %8344
  %8574 = fmul fast float %8571, %8344
  %8575 = fmul fast float %8572, %8344
  %8576 = call float @dx.op.dot3.f32(i32 55, float %8567, float %8568, float %8569, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8577 = call float @dx.op.dot3.f32(i32 55, float %8573, float %8574, float %8575, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8578 = select i1 %262, float %8576, float %8567
  %8579 = select i1 %262, float %8576, float %8568
  %8580 = select i1 %262, float 1.000000e+00, float %8569
  %8581 = select i1 %262, float %8577, float %8573
  %8582 = select i1 %262, float 0.000000e+00, float %8574
  %8583 = select i1 %262, float 0.000000e+00, float %8575
  %8584 = fmul fast float %8578, %8357
  %8585 = fmul fast float %8579, %8358
  %8586 = fmul fast float %8580, %8359
  %8587 = fadd fast float %8584, %8581
  %8588 = fadd fast float %8585, %8582
  %8589 = fadd fast float %8583, %8586
  %8590 = fmul fast float %8578, %8331
  %8591 = fmul fast float %8579, %8332
  %8592 = fmul fast float %8580, %8333
  %8593 = fmul fast float %137, %8369
  %8594 = fmul fast float %139, %8370
  %8595 = fsub fast float 1.000000e+00, %8593
  %8596 = fsub fast float 1.000000e+00, %8594
  %8597 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %8598 = extractvalue %dx.types.CBufRet.f32 %8597, 0
  %8599 = extractvalue %dx.types.CBufRet.f32 %8597, 1
  %8600 = extractvalue %dx.types.CBufRet.f32 %8597, 2
  %8601 = fmul fast float %8595, %8598
  %8602 = fmul fast float %8595, %8599
  %8603 = fmul fast float %8595, %8600
  %8604 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %8605 = extractvalue %dx.types.CBufRet.f32 %8604, 0
  %8606 = extractvalue %dx.types.CBufRet.f32 %8604, 1
  %8607 = extractvalue %dx.types.CBufRet.f32 %8604, 2
  %8608 = fmul fast float %8596, %8605
  %8609 = fmul fast float %8596, %8606
  %8610 = fmul fast float %8596, %8607
  %8611 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %8612 = extractvalue %dx.types.CBufRet.f32 %8611, 0
  %8613 = extractvalue %dx.types.CBufRet.f32 %8611, 1
  %8614 = extractvalue %dx.types.CBufRet.f32 %8611, 2
  %8615 = fadd fast float %8608, %8612
  %8616 = fadd fast float %8615, %8601
  %8617 = fadd fast float %8609, %8613
  %8618 = fadd fast float %8617, %8602
  %8619 = fadd fast float %8610, %8614
  %8620 = fadd fast float %8619, %8603
  %8621 = fmul fast float %8616, %223
  %8622 = fmul fast float %8618, %223
  %8623 = fmul fast float %8620, %223
  br label %8624

; <label>:8624                                    ; preds = %8566, %8330
  %8625 = phi float [ %8621, %8566 ], [ %188, %8330 ]
  %8626 = phi float [ %8622, %8566 ], [ %189, %8330 ]
  %8627 = phi float [ %8623, %8566 ], [ %190, %8330 ]
  %8628 = phi float [ %223, %8566 ], [ %96, %8330 ]
  %8629 = phi float [ %8587, %8566 ], [ %8357, %8330 ]
  %8630 = phi float [ %8588, %8566 ], [ %8358, %8330 ]
  %8631 = phi float [ %8589, %8566 ], [ %8359, %8330 ]
  %8632 = phi float [ %8590, %8566 ], [ %8331, %8330 ]
  %8633 = phi float [ %8591, %8566 ], [ %8332, %8330 ]
  %8634 = phi float [ %8592, %8566 ], [ %8333, %8330 ]
  %8635 = phi float [ %8567, %8566 ], [ 1.000000e+00, %8330 ]
  br i1 %8366, label %9790, label %8636

; <label>:8636                                    ; preds = %8624
  %8637 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %8638 = extractvalue %dx.types.CBufRet.f32 %8637, 0
  %8639 = extractvalue %dx.types.CBufRet.f32 %8637, 1
  %8640 = extractvalue %dx.types.CBufRet.f32 %8637, 2
  %8641 = extractvalue %dx.types.CBufRet.f32 %8637, 3
  %8642 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %8643 = extractvalue %dx.types.CBufRet.f32 %8642, 0
  %8644 = extractvalue %dx.types.CBufRet.f32 %8642, 1
  %8645 = extractvalue %dx.types.CBufRet.f32 %8642, 2
  %8646 = extractvalue %dx.types.CBufRet.f32 %8642, 3
  %8647 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %8648 = extractvalue %dx.types.CBufRet.f32 %8647, 0
  %8649 = extractvalue %dx.types.CBufRet.f32 %8647, 1
  %8650 = extractvalue %dx.types.CBufRet.f32 %8647, 2
  %8651 = extractvalue %dx.types.CBufRet.f32 %8647, 3
  %8652 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %8653 = extractvalue %dx.types.CBufRet.f32 %8652, 0
  %8654 = extractvalue %dx.types.CBufRet.f32 %8652, 1
  %8655 = extractvalue %dx.types.CBufRet.f32 %8652, 2
  %8656 = extractvalue %dx.types.CBufRet.f32 %8652, 3
  %8657 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %8658 = extractvalue %dx.types.CBufRet.f32 %8657, 3
  %8659 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %8660 = extractvalue %dx.types.CBufRet.f32 %8659, 3
  %8661 = extractvalue %dx.types.CBufRet.f32 %8659, 0
  %8662 = extractvalue %dx.types.CBufRet.f32 %8659, 1
  %8663 = extractvalue %dx.types.CBufRet.f32 %8659, 2
  %8664 = fcmp fast olt float %8663, -5.000000e-01
  %8665 = call float @dx.op.dot3.f32(i32 55, float %8625, float %8626, float %8627, float %8625, float %8626, float %8627)  ; Dot3(ax,ay,az,bx,by,bz)
  %8666 = call float @dx.op.unary.f32(i32 25, float %8665)  ; Rsqrt(value)
  %8667 = fmul fast float %8666, %8665
  %8668 = fmul fast float %8666, %8625
  %8669 = fmul fast float %8666, %8626
  %8670 = fmul fast float %8666, %8627
  %8671 = fadd fast float %8667, %8641
  %8672 = call float @dx.op.dot3.f32(i32 55, float %8668, float %8669, float %8670, float %8638, float %8639, float %8640)  ; Dot3(ax,ay,az,bx,by,bz)
  %8673 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8674 = extractvalue %dx.types.CBufRet.i32 %8673, 1
  %8675 = and i32 %8674, 1
  %8676 = icmp ne i32 %8675, 0
  %8677 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %8678 = extractvalue %dx.types.CBufRet.f32 %8677, 2
  %8679 = fcmp fast ogt float %8678, 0.000000e+00
  %8680 = and i1 %8676, %8679
  br i1 %8680, label %8681, label %9087, !dx.controlflow.hints !125

; <label>:8681                                    ; preds = %8636
  %8682 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %8683 = extractvalue %dx.types.CBufRet.f32 %8682, 3
  %8684 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8685 = extractvalue %dx.types.CBufRet.f32 %8684, 2
  %8686 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8687 = extractvalue %dx.types.CBufRet.f32 %8686, 2
  %8688 = fsub fast float %8685, %8687
  %8689 = and i32 %8674, 2
  %8690 = extractvalue %dx.types.CBufRet.i32 %8673, 0
  %8691 = call i32 @dx.op.binary.i32(i32 40, i32 %8690, i32 3)  ; UMin(a,b)
  %8692 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %8693 = extractvalue %dx.types.CBufRet.f32 %8692, 0
  %8694 = extractvalue %dx.types.CBufRet.f32 %8692, 1
  %8695 = extractvalue %dx.types.CBufRet.f32 %8686, 0
  %8696 = extractvalue %dx.types.CBufRet.f32 %8686, 1
  %8697 = fsub fast float %8693, %8695
  %8698 = fsub fast float %8694, %8696
  %8699 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %8700 = extractvalue %dx.types.CBufRet.f32 %8699, 0
  %8701 = fcmp fast ogt float %8700, 0.000000e+00
  %8702 = fsub fast float -0.000000e+00, %8697
  %8703 = fsub fast float -0.000000e+00, %8698
  %8704 = call float @dx.op.dot2.f32(i32 54, float %8668, float %8669, float %8668, float %8669)  ; Dot2(ax,ay,bx,by)
  %8705 = call float @dx.op.dot2.f32(i32 54, float %8668, float %8669, float %8702, float %8703)  ; Dot2(ax,ay,bx,by)
  %8706 = fmul fast float %8705, 2.000000e+00
  %8707 = call float @dx.op.dot2.f32(i32 54, float %8702, float %8703, float %8702, float %8703)  ; Dot2(ax,ay,bx,by)
  %8708 = fmul fast float %8700, %8700
  %8709 = fsub fast float %8707, %8708
  %8710 = fmul fast float %8706, %8706
  %8711 = fmul fast float %8704, 4.000000e+00
  %8712 = fmul fast float %8711, %8709
  %8713 = fsub fast float %8710, %8712
  %8714 = fcmp fast ogt float %8713, 0.000000e+00
  br i1 %8714, label %8715, label %8730

; <label>:8715                                    ; preds = %8681
  %8716 = fcmp fast ogt float %8706, 0.000000e+00
  %8717 = call float @dx.op.unary.f32(i32 24, float %8713)  ; Sqrt(value)
  %8718 = fsub fast float -0.000000e+00, %8717
  %8719 = select i1 %8716, float %8717, float %8718
  %8720 = fadd fast float %8719, %8706
  %8721 = fmul float %8720, -5.000000e-01
  %8722 = fdiv fast float %8721, %8704
  %8723 = call float @dx.op.binary.f32(i32 35, float %8722, float 0.000000e+00)  ; FMax(a,b)
  %8724 = call float @dx.op.binary.f32(i32 36, float %8667, float %8723)  ; FMin(a,b)
  %8725 = fdiv fast float %8709, %8721
  %8726 = call float @dx.op.binary.f32(i32 35, float %8725, float 0.000000e+00)  ; FMax(a,b)
  %8727 = call float @dx.op.binary.f32(i32 36, float %8667, float %8726)  ; FMin(a,b)
  %8728 = call float @dx.op.binary.f32(i32 36, float %8724, float %8727)  ; FMin(a,b)
  %8729 = call float @dx.op.binary.f32(i32 35, float %8724, float %8727)  ; FMax(a,b)
  br label %8730

; <label>:8730                                    ; preds = %8715, %8681
  %8731 = phi float [ %8729, %8715 ], [ -1.000000e+00, %8681 ]
  %8732 = phi float [ %8728, %8715 ], [ -1.000000e+00, %8681 ]
  %8733 = phi i1 [ true, %8715 ], [ false, %8681 ]
  %8734 = and i1 %8701, %8733
  br i1 %8734, label %8735, label %8737

; <label>:8735                                    ; preds = %8730
  %8736 = fcmp fast oeq float %8732, %8731
  br i1 %8736, label %9040, label %8738

; <label>:8737                                    ; preds = %8730
  br i1 %8701, label %9040, label %8738

; <label>:8738                                    ; preds = %8737, %8735
  %8739 = phi float [ %8667, %8737 ], [ %8731, %8735 ]
  %8740 = phi float [ 0.000000e+00, %8737 ], [ %8732, %8735 ]
  %8741 = icmp ne i32 %8689, 0
  %8742 = fmul fast float %8739, %8670
  %8743 = fadd fast float %8742, %8683
  %8744 = fmul fast float %8743, %8739
  %8745 = select i1 %8741, float 0.000000e+00, float %8744
  %8746 = fcmp fast oeq float %8670, 0.000000e+00
  %8747 = fdiv fast float %8688, %8670
  %8748 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8747)  ; FMax(a,b)
  %8749 = select i1 %8746, float %8739, float %8748
  %8750 = call float @dx.op.binary.f32(i32 36, float %8739, float %8749)  ; FMin(a,b)
  %8751 = fcmp fast ogt float %8670, 0.000000e+00
  %8752 = fcmp fast olt float %8688, 0.000000e+00
  br i1 %8751, label %8753, label %8810

; <label>:8753                                    ; preds = %8738
  %8754 = icmp eq i32 %8689, 0
  br i1 %8752, label %8755, label %8799

; <label>:8755                                    ; preds = %8753
  %8756 = select i1 %8754, float %8739, float 0.000000e+00
  %8757 = fsub fast float -0.000000e+00, %8756
  %8758 = call float @dx.op.unary.f32(i32 6, float %8757)  ; FAbs(value)
  %8759 = fmul fast float %8756, %8670
  %8760 = fadd fast float %8759, %8683
  %8761 = fmul fast float %8758, %8760
  %8762 = fsub fast float %8745, %8761
  %8763 = fsub fast float %8739, %8758
  %8764 = select i1 %8754, float %8763, float 0.000000e+00
  %8765 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8766 = extractvalue %dx.types.CBufRet.f32 %8765, 0
  %8767 = extractvalue %dx.types.CBufRet.f32 %8765, 1
  %8768 = extractvalue %dx.types.CBufRet.f32 %8765, 2
  %8769 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8770 = extractvalue %dx.types.CBufRet.f32 %8769, 0
  %8771 = extractvalue %dx.types.CBufRet.f32 %8769, 1
  %8772 = extractvalue %dx.types.CBufRet.f32 %8769, 2
  %8773 = extractvalue %dx.types.CBufRet.f32 %8769, 3
  %8774 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8775 = extractvalue %dx.types.CBufRet.f32 %8774, 3
  %8776 = call float @dx.op.binary.f32(i32 36, float %8762, float %8775)  ; FMin(a,b)
  %8777 = fmul fast float %8773, %8764
  %8778 = call float @dx.op.unary.f32(i32 7, float %8777)  ; Saturate(value)
  %8779 = fsub fast float %8770, %8766
  %8780 = fsub fast float %8771, %8767
  %8781 = fsub fast float %8772, %8768
  %8782 = fmul fast float %8778, %8779
  %8783 = fmul fast float %8778, %8780
  %8784 = fmul fast float %8778, %8781
  %8785 = fadd fast float %8782, %8766
  %8786 = fadd fast float %8783, %8767
  %8787 = fadd fast float %8784, %8768
  %8788 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8789 = extractvalue %dx.types.CBufRet.f32 %8788, 0
  %8790 = extractvalue %dx.types.CBufRet.f32 %8788, 1
  %8791 = fadd fast float %8790, %8789
  %8792 = call float @dx.op.unary.f32(i32 7, float %8791)  ; Saturate(value)
  %8793 = extractvalue %dx.types.CBufRet.f32 %8788, 2
  %8794 = extractvalue %dx.types.CBufRet.f32 %8788, 3
  %8795 = fadd fast float %8794, %8793
  %8796 = call float @dx.op.unary.f32(i32 7, float %8795)  ; Saturate(value)
  %8797 = fmul fast float %8792, %8776
  %8798 = fmul fast float %8797, %8796
  br label %9040

; <label>:8799                                    ; preds = %8753
  br i1 %8754, label %8800, label %8821

; <label>:8800                                    ; preds = %8799
  %8801 = call float @dx.op.binary.f32(i32 36, float %8750, float %8740)  ; FMin(a,b)
  %8802 = fsub fast float %8750, %8801
  %8803 = fsub fast float %8802, %8739
  %8804 = call float @dx.op.unary.f32(i32 6, float %8803)  ; FAbs(value)
  %8805 = fadd fast float %8802, %8739
  %8806 = fmul fast float %8805, %8670
  %8807 = fadd fast float %8806, %8683
  %8808 = fmul fast float %8807, %8804
  %8809 = fsub fast float %8745, %8808
  br label %8821

; <label>:8810                                    ; preds = %8738
  br i1 %8752, label %8811, label %8821

; <label>:8811                                    ; preds = %8810
  %8812 = call float @dx.op.binary.f32(i32 35, float %8740, float %8750)  ; FMax(a,b)
  %8813 = icmp eq i32 %8689, 0
  %8814 = select i1 %8813, float %8750, float 0.000000e+00
  %8815 = fsub fast float -0.000000e+00, %8814
  %8816 = call float @dx.op.unary.f32(i32 6, float %8815)  ; FAbs(value)
  %8817 = fmul fast float %8814, %8670
  %8818 = fadd fast float %8817, %8683
  %8819 = fmul fast float %8816, %8818
  %8820 = fsub fast float %8745, %8819
  br label %8821

; <label>:8821                                    ; preds = %8811, %8810, %8800, %8799
  %8822 = phi float [ %8740, %8799 ], [ %8740, %8800 ], [ %8812, %8811 ], [ %8740, %8810 ]
  %8823 = phi float [ 0.000000e+00, %8799 ], [ %8804, %8800 ], [ %8816, %8811 ], [ 0.000000e+00, %8810 ]
  %8824 = phi float [ %8745, %8799 ], [ %8809, %8800 ], [ %8820, %8811 ], [ %8745, %8810 ]
  %8825 = phi float [ %8750, %8799 ], [ %8750, %8800 ], [ %8739, %8811 ], [ %8739, %8810 ]
  %8826 = getelementptr inbounds [3 x float], [3 x float]* %103, i32 0, i32 0
  store float -1.000000e+00, float* %8826, align 4, !tbaa !114, !noalias !126
  %8827 = getelementptr inbounds [3 x float], [3 x float]* %103, i32 0, i32 1
  store float -1.000000e+00, float* %8827, align 4, !tbaa !114, !noalias !126
  %8828 = getelementptr inbounds [3 x float], [3 x float]* %103, i32 0, i32 2
  store float -1.000000e+00, float* %8828, align 4, !tbaa !114, !noalias !126
  %8829 = getelementptr inbounds [3 x float], [3 x float]* %104, i32 0, i32 0
  store float -1.000000e+00, float* %8829, align 4, !tbaa !114, !noalias !126
  %8830 = getelementptr inbounds [3 x float], [3 x float]* %104, i32 0, i32 1
  store float -1.000000e+00, float* %8830, align 4, !tbaa !114, !noalias !126
  %8831 = getelementptr inbounds [3 x float], [3 x float]* %104, i32 0, i32 2
  store float -1.000000e+00, float* %8831, align 4, !tbaa !114, !noalias !126
  %8832 = icmp sgt i32 %8691, 0
  br i1 %8832, label %8833, label %8894

; <label>:8833                                    ; preds = %8821
  br label %8834

; <label>:8834                                    ; preds = %8883, %8833
  %8835 = phi i32 [ %8884, %8883 ], [ 0, %8833 ]
  %8836 = phi i32 [ %8885, %8883 ], [ 0, %8833 ]
  %8837 = add nuw i32 %8836, 171
  %8838 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 %8837)  ; CBufferLoadLegacy(handle,regIndex)
  %8839 = extractvalue %dx.types.CBufRet.f32 %8838, 0
  %8840 = extractvalue %dx.types.CBufRet.f32 %8838, 1
  %8841 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8842 = extractvalue %dx.types.CBufRet.f32 %8841, 0
  %8843 = extractvalue %dx.types.CBufRet.f32 %8841, 1
  %8844 = fsub fast float %8839, %8842
  %8845 = fsub fast float %8840, %8843
  %8846 = extractvalue %dx.types.CBufRet.f32 %8838, 2
  %8847 = fsub fast float -0.000000e+00, %8844
  %8848 = fsub fast float -0.000000e+00, %8845
  %8849 = call float @dx.op.dot2.f32(i32 54, float %8668, float %8669, float %8847, float %8848)  ; Dot2(ax,ay,bx,by)
  %8850 = fmul fast float %8849, 2.000000e+00
  %8851 = call float @dx.op.dot2.f32(i32 54, float %8847, float %8848, float %8847, float %8848)  ; Dot2(ax,ay,bx,by)
  %8852 = fmul fast float %8846, %8846
  %8853 = fsub fast float %8851, %8852
  %8854 = fmul fast float %8850, %8850
  %8855 = fmul fast float %8711, %8853
  %8856 = fsub fast float %8854, %8855
  %8857 = fcmp fast ogt float %8856, 0.000000e+00
  br i1 %8857, label %8858, label %8873

; <label>:8858                                    ; preds = %8834
  %8859 = fcmp fast ogt float %8850, 0.000000e+00
  %8860 = call float @dx.op.unary.f32(i32 24, float %8856)  ; Sqrt(value)
  %8861 = fsub fast float -0.000000e+00, %8860
  %8862 = select i1 %8859, float %8860, float %8861
  %8863 = fadd fast float %8862, %8850
  %8864 = fmul float %8863, -5.000000e-01
  %8865 = fdiv fast float %8864, %8704
  %8866 = call float @dx.op.binary.f32(i32 35, float %8865, float 0.000000e+00)  ; FMax(a,b)
  %8867 = call float @dx.op.binary.f32(i32 36, float %8739, float %8866)  ; FMin(a,b)
  %8868 = fdiv fast float %8853, %8864
  %8869 = call float @dx.op.binary.f32(i32 35, float %8868, float 0.000000e+00)  ; FMax(a,b)
  %8870 = call float @dx.op.binary.f32(i32 36, float %8739, float %8869)  ; FMin(a,b)
  %8871 = call float @dx.op.binary.f32(i32 36, float %8867, float %8870)  ; FMin(a,b)
  %8872 = call float @dx.op.binary.f32(i32 35, float %8867, float %8870)  ; FMax(a,b)
  br label %8873

; <label>:8873                                    ; preds = %8858, %8834
  %8874 = phi float [ %8872, %8858 ], [ -1.000000e+00, %8834 ]
  %8875 = phi float [ %8871, %8858 ], [ -1.000000e+00, %8834 ]
  %8876 = phi i1 [ true, %8858 ], [ false, %8834 ]
  br i1 %8876, label %8877, label %8883

; <label>:8877                                    ; preds = %8873
  %8878 = call float @dx.op.binary.f32(i32 35, float %8822, float %8875)  ; FMax(a,b)
  %8879 = getelementptr inbounds [3 x float], [3 x float]* %103, i32 0, i32 %8836
  store float %8878, float* %8879, align 4, !tbaa !114, !noalias !126
  %8880 = call float @dx.op.binary.f32(i32 35, float %8822, float %8874)  ; FMax(a,b)
  %8881 = getelementptr inbounds [3 x float], [3 x float]* %104, i32 0, i32 %8836
  store float %8880, float* %8881, align 4, !tbaa !114, !noalias !126
  %8882 = add nsw i32 %8835, 1
  br label %8883

; <label>:8883                                    ; preds = %8877, %8873
  %8884 = phi i32 [ %8882, %8877 ], [ %8835, %8873 ]
  %8885 = add nuw nsw i32 %8836, 1
  %8886 = icmp eq i32 %8885, %8691
  br i1 %8886, label %8887, label %8834

; <label>:8887                                    ; preds = %8883
  %8888 = load float, float* %8828, align 4, !tbaa !114, !alias.scope !142, !noalias !145
  %8889 = load float, float* %8827, align 4, !tbaa !114, !alias.scope !148, !noalias !149
  %8890 = load float, float* %8826, align 4, !tbaa !114, !alias.scope !150, !noalias !151
  %8891 = load float, float* %8831, align 4, !tbaa !114, !alias.scope !152, !noalias !155
  %8892 = load float, float* %8830, align 4, !tbaa !114, !alias.scope !158, !noalias !159
  %8893 = load float, float* %8829, align 4, !tbaa !114, !alias.scope !160, !noalias !161
  br label %8894

; <label>:8894                                    ; preds = %8887, %8821
  %8895 = phi float [ -1.000000e+00, %8821 ], [ %8893, %8887 ]
  %8896 = phi float [ -1.000000e+00, %8821 ], [ %8892, %8887 ]
  %8897 = phi float [ -1.000000e+00, %8821 ], [ %8891, %8887 ]
  %8898 = phi float [ -1.000000e+00, %8821 ], [ %8890, %8887 ]
  %8899 = phi float [ -1.000000e+00, %8821 ], [ %8889, %8887 ]
  %8900 = phi float [ -1.000000e+00, %8821 ], [ %8888, %8887 ]
  %8901 = phi i32 [ 0, %8821 ], [ %8884, %8887 ]
  %8902 = call float @dx.op.binary.f32(i32 36, float %8899, float %8900)  ; FMin(a,b)
  %8903 = call float @dx.op.binary.f32(i32 36, float %8898, float %8902)  ; FMin(a,b)
  %8904 = call float @dx.op.binary.f32(i32 35, float %8898, float %8899)  ; FMax(a,b)
  %8905 = call float @dx.op.binary.f32(i32 36, float %8904, float %8900)  ; FMin(a,b)
  %8906 = call float @dx.op.binary.f32(i32 36, float %8898, float %8899)  ; FMin(a,b)
  %8907 = call float @dx.op.binary.f32(i32 35, float %8906, float %8905)  ; FMax(a,b)
  %8908 = call float @dx.op.binary.f32(i32 35, float %8899, float %8900)  ; FMax(a,b)
  %8909 = call float @dx.op.binary.f32(i32 35, float %8898, float %8908)  ; FMax(a,b)
  store float %8903, float* %8826, align 4, !tbaa !114, !alias.scope !150, !noalias !151
  store float %8907, float* %8827, align 4, !tbaa !114, !alias.scope !148, !noalias !149
  store float %8909, float* %8828, align 4, !tbaa !114, !alias.scope !142, !noalias !145
  %8910 = call float @dx.op.binary.f32(i32 36, float %8896, float %8897)  ; FMin(a,b)
  %8911 = call float @dx.op.binary.f32(i32 36, float %8895, float %8910)  ; FMin(a,b)
  %8912 = call float @dx.op.binary.f32(i32 35, float %8895, float %8896)  ; FMax(a,b)
  %8913 = call float @dx.op.binary.f32(i32 36, float %8912, float %8897)  ; FMin(a,b)
  %8914 = call float @dx.op.binary.f32(i32 36, float %8895, float %8896)  ; FMin(a,b)
  %8915 = call float @dx.op.binary.f32(i32 35, float %8914, float %8913)  ; FMax(a,b)
  %8916 = call float @dx.op.binary.f32(i32 35, float %8896, float %8897)  ; FMax(a,b)
  %8917 = call float @dx.op.binary.f32(i32 35, float %8895, float %8916)  ; FMax(a,b)
  store float %8911, float* %8829, align 4, !tbaa !114, !alias.scope !160, !noalias !161
  store float %8915, float* %8830, align 4, !tbaa !114, !alias.scope !158, !noalias !159
  store float %8917, float* %8831, align 4, !tbaa !114, !alias.scope !152, !noalias !155
  %8918 = sub nsw i32 3, %8901
  %8919 = icmp sgt i32 %8918, 2
  br i1 %8919, label %8920, label %8958

; <label>:8920                                    ; preds = %8894
  %8921 = icmp eq i32 %8689, 0
  %8922 = fsub fast float %8739, %8823
  %8923 = select i1 %8921, float %8922, float %8823
  %8924 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8925 = extractvalue %dx.types.CBufRet.f32 %8924, 0
  %8926 = extractvalue %dx.types.CBufRet.f32 %8924, 1
  %8927 = extractvalue %dx.types.CBufRet.f32 %8924, 2
  %8928 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8929 = extractvalue %dx.types.CBufRet.f32 %8928, 0
  %8930 = extractvalue %dx.types.CBufRet.f32 %8928, 1
  %8931 = extractvalue %dx.types.CBufRet.f32 %8928, 2
  %8932 = extractvalue %dx.types.CBufRet.f32 %8928, 3
  %8933 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8934 = extractvalue %dx.types.CBufRet.f32 %8933, 3
  %8935 = call float @dx.op.binary.f32(i32 36, float %8824, float %8934)  ; FMin(a,b)
  %8936 = fmul fast float %8932, %8923
  %8937 = call float @dx.op.unary.f32(i32 7, float %8936)  ; Saturate(value)
  %8938 = fsub fast float %8929, %8925
  %8939 = fsub fast float %8930, %8926
  %8940 = fsub fast float %8931, %8927
  %8941 = fmul fast float %8937, %8938
  %8942 = fmul fast float %8937, %8939
  %8943 = fmul fast float %8937, %8940
  %8944 = fadd fast float %8941, %8925
  %8945 = fadd fast float %8942, %8926
  %8946 = fadd fast float %8943, %8927
  %8947 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8948 = extractvalue %dx.types.CBufRet.f32 %8947, 0
  %8949 = extractvalue %dx.types.CBufRet.f32 %8947, 1
  %8950 = fadd fast float %8949, %8948
  %8951 = call float @dx.op.unary.f32(i32 7, float %8950)  ; Saturate(value)
  %8952 = extractvalue %dx.types.CBufRet.f32 %8947, 2
  %8953 = extractvalue %dx.types.CBufRet.f32 %8947, 3
  %8954 = fadd fast float %8953, %8952
  %8955 = call float @dx.op.unary.f32(i32 7, float %8954)  ; Saturate(value)
  %8956 = fmul fast float %8951, %8935
  %8957 = fmul fast float %8956, %8955
  br label %9040

; <label>:8958                                    ; preds = %8894
  %8959 = getelementptr inbounds [3 x float], [3 x float]* %103, i32 0, i32 %8918
  %8960 = load float, float* %8959, align 4, !tbaa !114, !noalias !126
  %8961 = fcmp fast olt float %8960, %8825
  %8962 = icmp sgt i32 %8901, 0
  %8963 = and i1 %8962, %8961
  br i1 %8963, label %8964, label %9001

; <label>:8964                                    ; preds = %8958
  br label %8965

; <label>:8965                                    ; preds = %8994, %8964
  %8966 = phi float [ %8995, %8994 ], [ %8823, %8964 ]
  %8967 = phi float [ %8996, %8994 ], [ %8824, %8964 ]
  %8968 = phi float [ %8976, %8994 ], [ %8960, %8964 ]
  %8969 = phi i32 [ %8973, %8994 ], [ %8918, %8964 ]
  %8970 = getelementptr inbounds [3 x float], [3 x float]* %104, i32 0, i32 %8969
  %8971 = load float, float* %8970, align 4, !tbaa !114, !noalias !126
  %8972 = icmp slt i32 %8969, 2
  %8973 = add nsw i32 %8969, 1
  %8974 = getelementptr inbounds [3 x float], [3 x float]* %103, i32 0, i32 %8973
  %8975 = load float, float* %8974, align 4, !tbaa !114, !noalias !126
  %8976 = select i1 %8972, float %8975, float %8739
  %8977 = call float @dx.op.binary.f32(i32 36, float %8976, float %8971)  ; FMin(a,b)
  %8978 = call float @dx.op.binary.f32(i32 36, float %8825, float %8977)  ; FMin(a,b)
  %8979 = icmp eq i32 %8689, 0
  %8980 = fadd fast float %8978, %8968
  %8981 = fmul fast float %8980, %8670
  %8982 = fadd fast float %8981, %8683
  br i1 %8979, label %8988, label %8983

; <label>:8983                                    ; preds = %8965
  %8984 = fsub fast float %8978, %8968
  %8985 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8984)  ; FMax(a,b)
  %8986 = fmul fast float %8985, %8982
  %8987 = fadd fast float %8986, %8967
  br label %8994

; <label>:8988                                    ; preds = %8965
  %8989 = fsub fast float %8968, %8978
  %8990 = call float @dx.op.unary.f32(i32 6, float %8989)  ; FAbs(value)
  %8991 = fadd fast float %8990, %8966
  %8992 = fmul fast float %8990, %8982
  %8993 = fsub fast float %8967, %8992
  br label %8994

; <label>:8994                                    ; preds = %8988, %8983
  %8995 = phi float [ %8985, %8983 ], [ %8991, %8988 ]
  %8996 = phi float [ %8987, %8983 ], [ %8993, %8988 ]
  %8997 = fcmp fast olt float %8976, %8825
  %8998 = icmp slt i32 %8973, 3
  %8999 = and i1 %8998, %8997
  br i1 %8999, label %8965, label %9000

; <label>:9000                                    ; preds = %8994
  br label %9001

; <label>:9001                                    ; preds = %9000, %8958
  %9002 = phi float [ %8823, %8958 ], [ %8995, %9000 ]
  %9003 = phi float [ %8824, %8958 ], [ %8996, %9000 ]
  %9004 = fsub fast float %8739, %9002
  %9005 = select i1 %8741, float %9002, float %9004
  %9006 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %9007 = extractvalue %dx.types.CBufRet.f32 %9006, 0
  %9008 = extractvalue %dx.types.CBufRet.f32 %9006, 1
  %9009 = extractvalue %dx.types.CBufRet.f32 %9006, 2
  %9010 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %9011 = extractvalue %dx.types.CBufRet.f32 %9010, 0
  %9012 = extractvalue %dx.types.CBufRet.f32 %9010, 1
  %9013 = extractvalue %dx.types.CBufRet.f32 %9010, 2
  %9014 = extractvalue %dx.types.CBufRet.f32 %9010, 3
  %9015 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %9016 = extractvalue %dx.types.CBufRet.f32 %9015, 3
  %9017 = call float @dx.op.binary.f32(i32 36, float %9003, float %9016)  ; FMin(a,b)
  %9018 = fmul fast float %9014, %9005
  %9019 = call float @dx.op.unary.f32(i32 7, float %9018)  ; Saturate(value)
  %9020 = fsub fast float %9011, %9007
  %9021 = fsub fast float %9012, %9008
  %9022 = fsub fast float %9013, %9009
  %9023 = fmul fast float %9019, %9020
  %9024 = fmul fast float %9019, %9021
  %9025 = fmul fast float %9019, %9022
  %9026 = fadd fast float %9023, %9007
  %9027 = fadd fast float %9024, %9008
  %9028 = fadd fast float %9025, %9009
  %9029 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %9030 = extractvalue %dx.types.CBufRet.f32 %9029, 0
  %9031 = extractvalue %dx.types.CBufRet.f32 %9029, 1
  %9032 = fadd fast float %9031, %9030
  %9033 = call float @dx.op.unary.f32(i32 7, float %9032)  ; Saturate(value)
  %9034 = extractvalue %dx.types.CBufRet.f32 %9029, 2
  %9035 = extractvalue %dx.types.CBufRet.f32 %9029, 3
  %9036 = fadd fast float %9035, %9034
  %9037 = call float @dx.op.unary.f32(i32 7, float %9036)  ; Saturate(value)
  %9038 = fmul fast float %9033, %9017
  %9039 = fmul fast float %9038, %9037
  br label %9040

; <label>:9040                                    ; preds = %9001, %8920, %8755, %8737, %8735
  %9041 = phi float [ %8764, %8755 ], [ %8923, %8920 ], [ %9005, %9001 ], [ 0.000000e+00, %8735 ], [ 0.000000e+00, %8737 ]
  %9042 = phi float [ %8798, %8755 ], [ %8957, %8920 ], [ %9039, %9001 ], [ 0.000000e+00, %8735 ], [ 0.000000e+00, %8737 ]
  %9043 = phi float [ %8785, %8755 ], [ %8944, %8920 ], [ %9026, %9001 ], [ 0.000000e+00, %8735 ], [ 0.000000e+00, %8737 ]
  %9044 = phi float [ %8786, %8755 ], [ %8945, %8920 ], [ %9027, %9001 ], [ 0.000000e+00, %8735 ], [ 0.000000e+00, %8737 ]
  %9045 = phi float [ %8787, %8755 ], [ %8946, %8920 ], [ %9028, %9001 ], [ 0.000000e+00, %8735 ], [ 0.000000e+00, %8737 ]
  %9046 = fmul fast float %8678, %9042
  %9047 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %9048 = extractvalue %dx.types.CBufRet.f32 %9047, 2
  %9049 = fsub fast float %8685, %9048
  %9050 = fcmp fast olt float %9046, -2.000000e+01
  %9051 = call float @dx.op.unary.f32(i32 21, float %9046)  ; Exp(value)
  %9052 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %9053 = extractvalue %dx.types.CBufRet.f32 %9052, 2
  %9054 = extractvalue %dx.types.CBufRet.f32 %9052, 3
  %9055 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %9056 = extractvalue %dx.types.CBufRet.f32 %9055, 2
  %9057 = fmul fast float %9054, %9049
  %9058 = call float @dx.op.unary.f32(i32 7, float %9057)  ; Saturate(value)
  %9059 = fsub fast float 1.000000e+00, %9058
  %9060 = fmul fast float %8670, 5.000000e-01
  %9061 = fadd fast float %9060, 5.000000e-01
  %9062 = call float @dx.op.unary.f32(i32 7, float %9061)  ; Saturate(value)
  %9063 = fsub fast float 1.000000e+00, %9062
  %9064 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %9059)  ; FMax(a,b)
  %9065 = fdiv fast float %9063, %9064
  %9066 = fsub fast float %9049, %8627
  %9067 = call float @dx.op.unary.f32(i32 6, float %9066)  ; FAbs(value)
  %9068 = fmul fast float %9067, %9053
  %9069 = call float @dx.op.unary.f32(i32 7, float %9065)  ; Saturate(value)
  %9070 = fsub fast float 1.000000e+00, %9068
  %9071 = fmul fast float %9070, %9069
  %9072 = fadd fast float %9071, %9068
  %9073 = fmul fast float %9056, %9049
  %9074 = call float @dx.op.unary.f32(i32 7, float %9073)  ; Saturate(value)
  %9075 = fsub fast float 1.000000e+00, %9072
  %9076 = fmul fast float %9075, %9074
  %9077 = fadd fast float %9076, %9072
  %9078 = call float @dx.op.unary.f32(i32 7, float %9077)  ; Saturate(value)
  %9079 = fadd fast float %9051, -1.000000e+00
  %9080 = select i1 %9050, float -1.000000e+00, float %9079
  %9081 = fmul fast float %9078, %9080
  %9082 = fadd fast float %9081, 1.000000e+00
  %9083 = fsub fast float -0.000000e+00, %9081
  %9084 = fmul fast float %9043, %9083
  %9085 = fmul fast float %9044, %9083
  %9086 = fmul fast float %9045, %9083
  br label %9087

; <label>:9087                                    ; preds = %9040, %8636
  %9088 = phi float [ %9041, %9040 ], [ 0.000000e+00, %8636 ]
  %9089 = phi float [ %9082, %9040 ], [ 1.000000e+00, %8636 ]
  %9090 = phi float [ %9084, %9040 ], [ 0.000000e+00, %8636 ]
  %9091 = phi float [ %9085, %9040 ], [ 0.000000e+00, %8636 ]
  %9092 = phi float [ %9086, %9040 ], [ 0.000000e+00, %8636 ]
  %9093 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %9094 = extractvalue %dx.types.CBufRet.f32 %9093, 1
  %9095 = fsub fast float 1.000000e+00, %9089
  %9096 = fmul fast float %9095, %8671
  %9097 = fmul fast float %9096, %9094
  %9098 = fsub fast float %8671, %9097
  br i1 %8664, label %9099, label %9128, !dx.controlflow.hints !162

; <label>:9099                                    ; preds = %9087
  %9100 = fmul fast float %8672, %8661
  %9101 = fadd fast float %9100, %8662
  %9102 = call float @dx.op.unary.f32(i32 7, float %9101)  ; Saturate(value)
  %9103 = fmul fast float %8643, %9098
  %9104 = fsub fast float -0.000000e+00, %9103
  %9105 = fmul fast float %8644, %9098
  %9106 = fsub fast float -0.000000e+00, %9105
  %9107 = call float @dx.op.unary.f32(i32 21, float %9104)  ; Exp(value)
  %9108 = call float @dx.op.unary.f32(i32 21, float %9106)  ; Exp(value)
  %9109 = call float @dx.op.binary.f32(i32 35, float %8651, float %9107)  ; FMax(a,b)
  %9110 = call float @dx.op.binary.f32(i32 35, float %8651, float %9108)  ; FMax(a,b)
  %9111 = fsub fast float %9110, %9109
  %9112 = fmul fast float %9111, %9102
  %9113 = fadd fast float %9112, %9109
  %9114 = call float @dx.op.unary.f32(i32 7, float %9113)  ; Saturate(value)
  %9115 = fsub fast float %8648, %8653
  %9116 = fsub fast float %8649, %8654
  %9117 = fsub fast float %8650, %8655
  %9118 = fmul fast float %9102, %9115
  %9119 = fmul fast float %9102, %9116
  %9120 = fmul fast float %9102, %9117
  %9121 = fadd fast float %9118, %8653
  %9122 = fadd fast float %9119, %8654
  %9123 = fadd fast float %9120, %8655
  %9124 = fsub fast float 1.000000e+00, %9114
  %9125 = fmul fast float %9124, %9121
  %9126 = fmul fast float %9124, %9122
  %9127 = fmul fast float %9124, %9123
  br label %9187

; <label>:9128                                    ; preds = %9087
  %9129 = fmul fast float %9098, %8660
  %9130 = call float @dx.op.unary.f32(i32 7, float %9129)  ; Saturate(value)
  %9131 = fsub fast float 2.000000e+00, %9130
  %9132 = fmul fast float %9130, 9.921875e-01
  %9133 = fmul fast float %9132, %9131
  %9134 = fadd fast float %9133, 3.906250e-03
  %9135 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %43, float %9134, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9136 = extractvalue %dx.types.ResRet.f32 %9135, 0
  %9137 = fsub fast float %9130, %9136
  %9138 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %9137)  ; FMax(a,b)
  %9139 = fmul fast float %8646, %8627
  %9140 = call float @dx.op.unary.f32(i32 6, float %9139)  ; FAbs(value)
  %9141 = fcmp fast ogt float %9140, 0x3EB0C6F7A0000000
  br i1 %9141, label %9142, label %9148, !dx.controlflow.hints !163

; <label>:9142                                    ; preds = %9128
  %9143 = fmul fast float %9139, 0xBFF7154760000000
  %9144 = call float @dx.op.unary.f32(i32 21, float %9143)  ; Exp(value)
  %9145 = fsub fast float 1.000000e+00, %9144
  %9146 = fdiv fast float %9145, %9139
  %9147 = fmul fast float %9146, %8656
  br label %9148

; <label>:9148                                    ; preds = %9142, %9128
  %9149 = phi float [ %9147, %9142 ], [ %8656, %9128 ]
  %9150 = fadd fast float %9149, %8658
  %9151 = fmul fast float %9150, %9138
  %9152 = fmul fast float %8643, %9151
  %9153 = fsub fast float -0.000000e+00, %9152
  %9154 = fmul fast float %8644, %9151
  %9155 = fsub fast float -0.000000e+00, %9154
  %9156 = fmul fast float %8645, %9151
  %9157 = fsub fast float -0.000000e+00, %9156
  %9158 = call float @dx.op.unary.f32(i32 21, float %9153)  ; Exp(value)
  %9159 = call float @dx.op.unary.f32(i32 21, float %9155)  ; Exp(value)
  %9160 = call float @dx.op.unary.f32(i32 21, float %9157)  ; Exp(value)
  %9161 = fmul fast float %8672, %8672
  %9162 = fadd fast float %9161, 1.000000e+00
  %9163 = fmul fast float %9162, 0x3FAE8EC8A0000000
  %9164 = fmul fast float %9163, %8653
  %9165 = fmul fast float %9163, %8654
  %9166 = fmul fast float %9163, %8655
  %9167 = fmul fast float %8672, %8651
  %9168 = fsub fast float 1.000000e+00, %9167
  %9169 = fmul fast float %8651, %8651
  %9170 = fsub fast float 1.000000e+00, %9169
  %9171 = fmul fast float %9170, 0x3FB45F3060000000
  %9172 = fmul fast float %9168, %9168
  %9173 = fdiv fast float 1.000000e+00, %9172
  %9174 = fmul fast float %9171, %9173
  %9175 = fmul fast float %9174, %8648
  %9176 = fmul fast float %9174, %8649
  %9177 = fmul fast float %9174, %8650
  %9178 = fadd fast float %9175, %9164
  %9179 = fadd fast float %9176, %9165
  %9180 = fadd fast float %9177, %9166
  %9181 = fsub fast float 1.000000e+00, %9158
  %9182 = fsub fast float 1.000000e+00, %9159
  %9183 = fsub fast float 1.000000e+00, %9160
  %9184 = fmul fast float %9178, %9181
  %9185 = fmul fast float %9179, %9182
  %9186 = fmul fast float %9180, %9183
  br label %9187

; <label>:9187                                    ; preds = %9148, %9099
  %9188 = phi float [ %9125, %9099 ], [ %9184, %9148 ]
  %9189 = phi float [ %9126, %9099 ], [ %9185, %9148 ]
  %9190 = phi float [ %9127, %9099 ], [ %9186, %9148 ]
  %9191 = phi float [ %9114, %9099 ], [ %9158, %9148 ]
  %9192 = phi float [ %9114, %9099 ], [ %9159, %9148 ]
  %9193 = phi float [ %9114, %9099 ], [ %9160, %9148 ]
  br i1 %8680, label %9194, label %9392, !dx.controlflow.hints !164

; <label>:9194                                    ; preds = %9187
  %9195 = extractvalue %dx.types.CBufRet.f32 %9093, 0
  %9196 = fmul fast float %9195, %9095
  %9197 = fsub fast float %9090, %9188
  %9198 = fsub fast float %9091, %9189
  %9199 = fsub fast float %9092, %9190
  %9200 = fmul fast float %9196, %9197
  %9201 = fmul fast float %9196, %9198
  %9202 = fmul fast float %9196, %9199
  %9203 = fadd fast float %9200, %9188
  %9204 = fadd fast float %9201, %9189
  %9205 = fadd fast float %9202, %9190
  %9206 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9191)  ; FMax(a,b)
  %9207 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9192)  ; FMax(a,b)
  %9208 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9193)  ; FMax(a,b)
  %9209 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9089)  ; FMax(a,b)
  %9210 = call float @dx.op.binary.f32(i32 35, float %9088, float %9098)  ; FMax(a,b)
  %9211 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %9210)  ; FMax(a,b)
  %9212 = fdiv fast float %9088, %9211
  %9213 = call float @dx.op.unary.f32(i32 7, float %9212)  ; Saturate(value)
  %9214 = fdiv fast float %9098, %9211
  %9215 = call float @dx.op.unary.f32(i32 7, float %9214)  ; Saturate(value)
  %9216 = fcmp fast une float %9209, 1.000000e+00
  br i1 %9216, label %9217, label %9230, !dx.controlflow.hints !165

; <label>:9217                                    ; preds = %9194
  %9218 = call float @dx.op.unary.f32(i32 23, float %9209)  ; Log(value)
  %9219 = fmul fast float %9218, 0x3FE62E4300000000
  %9220 = fmul fast float %9090, %9219
  %9221 = fsub fast float -0.000000e+00, %9220
  %9222 = fmul fast float %9091, %9219
  %9223 = fsub fast float -0.000000e+00, %9222
  %9224 = fmul fast float %9092, %9219
  %9225 = fsub fast float -0.000000e+00, %9224
  %9226 = fsub fast float 1.000000e+00, %9209
  %9227 = fdiv fast float %9221, %9226
  %9228 = fdiv fast float %9223, %9226
  %9229 = fdiv fast float %9225, %9226
  br label %9230

; <label>:9230                                    ; preds = %9217, %9194
  %9231 = phi float [ %9227, %9217 ], [ %9090, %9194 ]
  %9232 = phi float [ %9228, %9217 ], [ %9091, %9194 ]
  %9233 = phi float [ %9229, %9217 ], [ %9092, %9194 ]
  %9234 = phi float [ %9219, %9217 ], [ 0.000000e+00, %9194 ]
  %9235 = fcmp fast une float %9206, 1.000000e+00
  br i1 %9235, label %9236, label %9243, !dx.controlflow.hints !166

; <label>:9236                                    ; preds = %9230
  %9237 = call float @dx.op.unary.f32(i32 23, float %9206)  ; Log(value)
  %9238 = fmul fast float %9237, 0x3FE62E4300000000
  %9239 = fmul fast float %9203, %9238
  %9240 = fsub fast float -0.000000e+00, %9239
  %9241 = fsub fast float 1.000000e+00, %9206
  %9242 = fdiv fast float %9240, %9241
  br label %9243

; <label>:9243                                    ; preds = %9236, %9230
  %9244 = phi float [ %9242, %9236 ], [ %9203, %9230 ]
  %9245 = phi float [ %9238, %9236 ], [ 0.000000e+00, %9230 ]
  %9246 = fcmp fast une float %9207, 1.000000e+00
  br i1 %9246, label %9247, label %9254, !dx.controlflow.hints !166

; <label>:9247                                    ; preds = %9243
  %9248 = call float @dx.op.unary.f32(i32 23, float %9207)  ; Log(value)
  %9249 = fmul fast float %9248, 0x3FE62E4300000000
  %9250 = fmul fast float %9204, %9249
  %9251 = fsub fast float -0.000000e+00, %9250
  %9252 = fsub fast float 1.000000e+00, %9207
  %9253 = fdiv fast float %9251, %9252
  br label %9254

; <label>:9254                                    ; preds = %9247, %9243
  %9255 = phi float [ %9253, %9247 ], [ %9204, %9243 ]
  %9256 = phi float [ %9249, %9247 ], [ 0.000000e+00, %9243 ]
  %9257 = fcmp fast une float %9208, 1.000000e+00
  br i1 %9257, label %9258, label %9265, !dx.controlflow.hints !166

; <label>:9258                                    ; preds = %9254
  %9259 = call float @dx.op.unary.f32(i32 23, float %9208)  ; Log(value)
  %9260 = fmul fast float %9259, 0x3FE62E4300000000
  %9261 = fmul fast float %9205, %9260
  %9262 = fsub fast float -0.000000e+00, %9261
  %9263 = fsub fast float 1.000000e+00, %9208
  %9264 = fdiv fast float %9262, %9263
  br label %9265

; <label>:9265                                    ; preds = %9258, %9254
  %9266 = phi float [ %9264, %9258 ], [ %9205, %9254 ]
  %9267 = phi float [ %9260, %9258 ], [ 0.000000e+00, %9254 ]
  %9268 = fmul fast float %9231, %9215
  %9269 = fmul fast float %9232, %9215
  %9270 = fmul fast float %9233, %9215
  %9271 = fmul fast float %9234, %9215
  %9272 = fmul fast float %9244, %9213
  %9273 = fmul fast float %9255, %9213
  %9274 = fmul fast float %9266, %9213
  %9275 = fmul fast float %9245, %9213
  %9276 = fmul fast float %9256, %9213
  %9277 = fmul fast float %9267, %9213
  %9278 = fadd fast float %9272, %9268
  %9279 = fadd fast float %9273, %9269
  %9280 = fadd fast float %9274, %9270
  %9281 = fadd fast float %9275, %9271
  %9282 = fadd fast float %9276, %9271
  %9283 = fadd fast float %9277, %9271
  %9284 = fcmp fast une float %9281, 0.000000e+00
  br i1 %9284, label %9285, label %9292, !dx.controlflow.hints !167

; <label>:9285                                    ; preds = %9265
  %9286 = fmul fast float %9281, 0x3FF7154760000000
  %9287 = call float @dx.op.unary.f32(i32 21, float %9286)  ; Exp(value)
  %9288 = fsub fast float 1.000000e+00, %9287
  %9289 = fmul fast float %9278, %9288
  %9290 = fsub fast float -0.000000e+00, %9289
  %9291 = fdiv fast float %9290, %9281
  br label %9292

; <label>:9292                                    ; preds = %9285, %9265
  %9293 = phi float [ %9287, %9285 ], [ 1.000000e+00, %9265 ]
  %9294 = phi float [ %9291, %9285 ], [ %9278, %9265 ]
  %9295 = fcmp fast une float %9282, 0.000000e+00
  br i1 %9295, label %9296, label %9303, !dx.controlflow.hints !167

; <label>:9296                                    ; preds = %9292
  %9297 = fmul fast float %9282, 0x3FF7154760000000
  %9298 = call float @dx.op.unary.f32(i32 21, float %9297)  ; Exp(value)
  %9299 = fsub fast float 1.000000e+00, %9298
  %9300 = fmul fast float %9279, %9299
  %9301 = fsub fast float -0.000000e+00, %9300
  %9302 = fdiv fast float %9301, %9282
  br label %9303

; <label>:9303                                    ; preds = %9296, %9292
  %9304 = phi float [ %9298, %9296 ], [ 1.000000e+00, %9292 ]
  %9305 = phi float [ %9302, %9296 ], [ %9279, %9292 ]
  %9306 = fcmp fast une float %9283, 0.000000e+00
  br i1 %9306, label %9307, label %9314, !dx.controlflow.hints !167

; <label>:9307                                    ; preds = %9303
  %9308 = fmul fast float %9283, 0x3FF7154760000000
  %9309 = call float @dx.op.unary.f32(i32 21, float %9308)  ; Exp(value)
  %9310 = fsub fast float 1.000000e+00, %9309
  %9311 = fmul fast float %9280, %9310
  %9312 = fsub fast float -0.000000e+00, %9311
  %9313 = fdiv fast float %9312, %9283
  br label %9314

; <label>:9314                                    ; preds = %9307, %9303
  %9315 = phi float [ %9309, %9307 ], [ 1.000000e+00, %9303 ]
  %9316 = phi float [ %9313, %9307 ], [ %9280, %9303 ]
  %9317 = fcmp fast ogt float %9213, %9215
  br i1 %9317, label %9318, label %9338

; <label>:9318                                    ; preds = %9314
  %9319 = fsub fast float 1.000000e+00, %9215
  %9320 = fmul fast float %9231, %9319
  %9321 = fmul fast float %9232, %9319
  %9322 = fmul fast float %9233, %9319
  %9323 = fmul fast float %9234, %9319
  %9324 = fcmp fast une float %9323, 0.000000e+00
  br i1 %9324, label %9325, label %9376, !dx.controlflow.hints !168

; <label>:9325                                    ; preds = %9318
  %9326 = fmul fast float %9323, 0x3FF7154760000000
  %9327 = call float @dx.op.unary.f32(i32 21, float %9326)  ; Exp(value)
  %9328 = fsub fast float 1.000000e+00, %9327
  %9329 = fmul fast float %9320, %9328
  %9330 = fsub fast float -0.000000e+00, %9329
  %9331 = fmul fast float %9321, %9328
  %9332 = fsub fast float -0.000000e+00, %9331
  %9333 = fmul fast float %9322, %9328
  %9334 = fsub fast float -0.000000e+00, %9333
  %9335 = fdiv fast float %9330, %9323
  %9336 = fdiv fast float %9332, %9323
  %9337 = fdiv fast float %9334, %9323
  br label %9376

; <label>:9338                                    ; preds = %9314
  %9339 = fsub fast float 1.000000e+00, %9213
  %9340 = fmul fast float %9244, %9339
  %9341 = fmul fast float %9255, %9339
  %9342 = fmul fast float %9266, %9339
  %9343 = fmul fast float %9245, %9339
  %9344 = fmul fast float %9256, %9339
  %9345 = fmul fast float %9267, %9339
  %9346 = fcmp fast une float %9343, 0.000000e+00
  br i1 %9346, label %9347, label %9354, !dx.controlflow.hints !167

; <label>:9347                                    ; preds = %9338
  %9348 = fmul fast float %9343, 0x3FF7154760000000
  %9349 = call float @dx.op.unary.f32(i32 21, float %9348)  ; Exp(value)
  %9350 = fsub fast float 1.000000e+00, %9349
  %9351 = fmul fast float %9340, %9350
  %9352 = fsub fast float -0.000000e+00, %9351
  %9353 = fdiv fast float %9352, %9343
  br label %9354

; <label>:9354                                    ; preds = %9347, %9338
  %9355 = phi float [ %9353, %9347 ], [ %9340, %9338 ]
  %9356 = phi float [ %9349, %9347 ], [ 1.000000e+00, %9338 ]
  %9357 = fcmp fast une float %9344, 0.000000e+00
  br i1 %9357, label %9358, label %9365, !dx.controlflow.hints !167

; <label>:9358                                    ; preds = %9354
  %9359 = fmul fast float %9344, 0x3FF7154760000000
  %9360 = call float @dx.op.unary.f32(i32 21, float %9359)  ; Exp(value)
  %9361 = fsub fast float 1.000000e+00, %9360
  %9362 = fmul fast float %9341, %9361
  %9363 = fsub fast float -0.000000e+00, %9362
  %9364 = fdiv fast float %9363, %9344
  br label %9365

; <label>:9365                                    ; preds = %9358, %9354
  %9366 = phi float [ %9364, %9358 ], [ %9341, %9354 ]
  %9367 = phi float [ %9360, %9358 ], [ 1.000000e+00, %9354 ]
  %9368 = fcmp fast une float %9345, 0.000000e+00
  br i1 %9368, label %9369, label %9376, !dx.controlflow.hints !167

; <label>:9369                                    ; preds = %9365
  %9370 = fmul fast float %9345, 0x3FF7154760000000
  %9371 = call float @dx.op.unary.f32(i32 21, float %9370)  ; Exp(value)
  %9372 = fsub fast float 1.000000e+00, %9371
  %9373 = fmul fast float %9342, %9372
  %9374 = fsub fast float -0.000000e+00, %9373
  %9375 = fdiv fast float %9374, %9345
  br label %9376

; <label>:9376                                    ; preds = %9369, %9365, %9325, %9318
  %9377 = phi float [ %9375, %9369 ], [ %9337, %9325 ], [ %9322, %9318 ], [ %9342, %9365 ]
  %9378 = phi float [ %9366, %9369 ], [ %9336, %9325 ], [ %9321, %9318 ], [ %9366, %9365 ]
  %9379 = phi float [ %9355, %9369 ], [ %9335, %9325 ], [ %9320, %9318 ], [ %9355, %9365 ]
  %9380 = phi float [ %9371, %9369 ], [ %9327, %9325 ], [ 1.000000e+00, %9318 ], [ 1.000000e+00, %9365 ]
  %9381 = phi float [ %9367, %9369 ], [ %9327, %9325 ], [ 1.000000e+00, %9318 ], [ %9367, %9365 ]
  %9382 = phi float [ %9356, %9369 ], [ %9327, %9325 ], [ 1.000000e+00, %9318 ], [ %9356, %9365 ]
  %9383 = fmul fast float %9382, %9294
  %9384 = fmul fast float %9381, %9305
  %9385 = fmul fast float %9380, %9316
  %9386 = fadd fast float %9383, %9379
  %9387 = fadd fast float %9384, %9378
  %9388 = fadd fast float %9385, %9377
  %9389 = fmul fast float %9382, %9293
  %9390 = fmul fast float %9381, %9304
  %9391 = fmul fast float %9380, %9315
  br label %9392

; <label>:9392                                    ; preds = %9376, %9187
  %9393 = phi float [ %9391, %9376 ], [ %9193, %9187 ]
  %9394 = phi float [ %9390, %9376 ], [ %9192, %9187 ]
  %9395 = phi float [ %9389, %9376 ], [ %9191, %9187 ]
  %9396 = phi float [ %9388, %9376 ], [ %9190, %9187 ]
  %9397 = phi float [ %9387, %9376 ], [ %9189, %9187 ]
  %9398 = phi float [ %9386, %9376 ], [ %9188, %9187 ]
  %9399 = fmul fast float %9398, %8344
  %9400 = fmul fast float %9397, %8344
  %9401 = fmul fast float %9396, %8344
  %9402 = fmul fast float %9395, %8635
  %9403 = call float @dx.op.dot3.f32(i32 55, float %9395, float %9394, float %9393, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9404 = call float @dx.op.dot3.f32(i32 55, float %9399, float %9400, float %9401, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9405 = select i1 %262, float %9403, float %9395
  %9406 = select i1 %262, float %9403, float %9394
  %9407 = select i1 %262, float 1.000000e+00, float %9393
  %9408 = select i1 %262, float %9404, float %9399
  %9409 = select i1 %262, float 0.000000e+00, float %9400
  %9410 = select i1 %262, float 0.000000e+00, float %9401
  %9411 = fmul fast float %9405, %8629
  %9412 = fmul fast float %9406, %8630
  %9413 = fmul fast float %9407, %8631
  %9414 = fadd fast float %9411, %9408
  %9415 = fadd fast float %9412, %9409
  %9416 = fadd fast float %9410, %9413
  %9417 = fmul fast float %9405, %8632
  %9418 = fmul fast float %9406, %8633
  %9419 = fmul fast float %9407, %8634
  %9420 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %9421 = extractvalue %dx.types.CBufRet.i32 %9420, 0
  %9422 = icmp eq i32 %9421, 0
  br i1 %9422, label %9790, label %9423, !dx.controlflow.hints !169

; <label>:9423                                    ; preds = %9392
  %9424 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %9425 = extractvalue %dx.types.CBufRet.f32 %9424, 2
  %9426 = extractvalue %dx.types.CBufRet.f32 %9424, 3
  %9427 = fmul fast float %9425, %109
  %9428 = fmul fast float %9426, %110
  %9429 = fmul fast float %9427, 2.000000e+00
  %9430 = fmul fast float %9428, 2.000000e+00
  %9431 = fsub fast float 1.000000e+00, %9429
  %9432 = fsub fast float 1.000000e+00, %9430
  %9433 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %9434 = extractvalue %dx.types.CBufRet.f32 %9433, 0
  %9435 = extractvalue %dx.types.CBufRet.f32 %9433, 1
  %9436 = extractvalue %dx.types.CBufRet.f32 %9433, 2
  %9437 = fmul fast float %9431, %9434
  %9438 = fmul fast float %9431, %9435
  %9439 = fmul fast float %9431, %9436
  %9440 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %9441 = extractvalue %dx.types.CBufRet.f32 %9440, 0
  %9442 = extractvalue %dx.types.CBufRet.f32 %9440, 1
  %9443 = extractvalue %dx.types.CBufRet.f32 %9440, 2
  %9444 = fmul fast float %9432, %9441
  %9445 = fmul fast float %9432, %9442
  %9446 = fmul fast float %9432, %9443
  %9447 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %9448 = extractvalue %dx.types.CBufRet.f32 %9447, 0
  %9449 = extractvalue %dx.types.CBufRet.f32 %9447, 1
  %9450 = extractvalue %dx.types.CBufRet.f32 %9447, 2
  %9451 = fadd fast float %9444, %9448
  %9452 = fadd fast float %9451, %9437
  %9453 = fadd fast float %9445, %9449
  %9454 = fadd fast float %9453, %9438
  %9455 = fadd fast float %9446, %9450
  %9456 = fadd fast float %9455, %9439
  %9457 = fmul fast float %9452, %8628
  %9458 = fmul fast float %9454, %8628
  %9459 = fmul fast float %9456, %8628
  %9460 = fmul fast float %9457, %9457
  %9461 = fmul fast float %9458, %9458
  %9462 = fadd fast float %9460, %9461
  %9463 = fmul fast float %9459, %9459
  %9464 = fadd fast float %9462, %9463
  %9465 = call float @dx.op.unary.f32(i32 24, float %9464)  ; Sqrt(value)
  %9466 = extractvalue %dx.types.CBufRet.f32 %8355, 0
  %9467 = fsub fast float %9465, %9466
  %9468 = extractvalue %dx.types.CBufRet.f32 %8355, 2
  %9469 = fmul fast float %9467, %9468
  %9470 = call float @dx.op.unary.f32(i32 7, float %9469)  ; Saturate(value)
  %9471 = fadd fast float %9470, -5.000000e-01
  %9472 = fmul fast float %9471, 2.000000e+00
  %9473 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %9474 = extractvalue %dx.types.CBufRet.f32 %9473, 2
  %9475 = call float @dx.op.binary.f32(i32 36, float %9474, float %9472)  ; FMin(a,b)
  %9476 = fsub fast float -0.000000e+00, %9474
  %9477 = fcmp fast ogt float %9475, %9476
  br i1 %9477, label %9478, label %9790, !dx.controlflow.hints !170

; <label>:9478                                    ; preds = %9423
  %9479 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %9480 = extractvalue %dx.types.CBufRet.f32 %9479, 3
  %9481 = fcmp fast ogt float %9480, 0.000000e+00
  br i1 %9481, label %9482, label %9557, !dx.controlflow.hints !171

; <label>:9482                                    ; preds = %9478
  %9483 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %25, i32 0)  ; GetDimensions(handle,mipLevel)
  %9484 = extractvalue %dx.types.Dimensions %9483, 0
  %9485 = sitofp i32 %9484 to float
  %9486 = extractvalue %dx.types.Dimensions %9483, 1
  %9487 = sitofp i32 %9486 to float
  %9488 = fmul fast float %9427, %9485
  %9489 = fmul fast float %9428, %9487
  %9490 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %9491 = extractvalue %dx.types.CBufRet.f32 %9490, 1
  %9492 = fsub fast float -0.000000e+00, %9491
  %9493 = fptoui float %9492 to i32
  %9494 = fptoui float %9488 to i32
  %9495 = fptoui float %9489 to i32
  %9496 = and i32 %9493, 31
  %9497 = lshr i32 %9494, %9496
  %9498 = lshr i32 %9495, %9496
  %9499 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %25, i32 %9493, i32 %9497, i32 %9498, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %9500 = extractvalue %dx.types.ResRet.f32 %9499, 0
  %9501 = fcmp fast olt float %9500, -1.000000e+00
  %9502 = fcmp fast ogt float %9500, -1.000000e+00
  %9503 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %9504 = extractvalue %dx.types.CBufRet.f32 %9503, 1
  %9505 = select i1 %9502, float %9504, float 1.000000e+00
  %9506 = fadd fast float %9500, 1.000000e+00
  %9507 = fmul fast float %9505, %9506
  %9508 = call float @dx.op.unary.f32(i32 6, float %9507)  ; FAbs(value)
  %9509 = extractvalue %dx.types.CBufRet.f32 %9503, 3
  %9510 = fcmp fast oge float %9508, %9509
  %9511 = select i1 %9510, float 0x4197782600000000, float %9508
  %9512 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %9513 = extractvalue %dx.types.CBufRet.f32 %9512, 0
  %9514 = extractvalue %dx.types.CBufRet.f32 %9512, 1
  %9515 = extractvalue %dx.types.CBufRet.f32 %9512, 2
  %9516 = select i1 %9501, float %9513, float %9434
  %9517 = select i1 %9501, float %9514, float %9435
  %9518 = select i1 %9501, float %9515, float %9436
  %9519 = fmul fast float %9516, %9431
  %9520 = fmul fast float %9517, %9431
  %9521 = fmul fast float %9518, %9431
  %9522 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %9523 = extractvalue %dx.types.CBufRet.f32 %9522, 0
  %9524 = extractvalue %dx.types.CBufRet.f32 %9522, 1
  %9525 = extractvalue %dx.types.CBufRet.f32 %9522, 2
  %9526 = select i1 %9501, float %9523, float %9441
  %9527 = select i1 %9501, float %9524, float %9442
  %9528 = select i1 %9501, float %9525, float %9443
  %9529 = fmul fast float %9526, %9432
  %9530 = fmul fast float %9527, %9432
  %9531 = fmul fast float %9528, %9432
  %9532 = fadd fast float %9529, %9519
  %9533 = fadd fast float %9530, %9520
  %9534 = fadd fast float %9531, %9521
  %9535 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %9536 = extractvalue %dx.types.CBufRet.f32 %9535, 0
  %9537 = extractvalue %dx.types.CBufRet.f32 %9535, 1
  %9538 = extractvalue %dx.types.CBufRet.f32 %9535, 2
  %9539 = select i1 %9501, float %9536, float %9448
  %9540 = select i1 %9501, float %9537, float %9449
  %9541 = select i1 %9501, float %9538, float %9450
  %9542 = fadd fast float %9532, %9539
  %9543 = fadd fast float %9533, %9540
  %9544 = fadd fast float %9534, %9541
  %9545 = fmul fast float %9542, %9511
  %9546 = fmul fast float %9543, %9511
  %9547 = fmul fast float %9544, %9511
  %9548 = fmul fast float %9545, %9545
  %9549 = fmul fast float %9546, %9546
  %9550 = fadd fast float %9548, %9549
  %9551 = fmul fast float %9547, %9547
  %9552 = fadd fast float %9550, %9551
  %9553 = call float @dx.op.unary.f32(i32 24, float %9552)  ; Sqrt(value)
  %9554 = fsub fast float %9553, %9466
  %9555 = fmul fast float %9554, %9468
  %9556 = call float @dx.op.unary.f32(i32 7, float %9555)  ; Saturate(value)
  br label %9557

; <label>:9557                                    ; preds = %9482, %9478
  %9558 = phi float [ %9556, %9482 ], [ 1.000000e+00, %9478 ]
  %9559 = fmul fast float %9475, 5.000000e-01
  %9560 = fadd fast float %9559, 5.000000e-01
  %9561 = call float @dx.op.unary.f32(i32 22, float %9560)  ; Frc(value)
  %9562 = call float @dx.op.unary.f32(i32 27, float %9561)  ; Round_ni(value)
  %9563 = call float @dx.op.unary.f32(i32 22, float %9561)  ; Frc(value)
  %9564 = fmul fast float %9563, 2.000000e+00
  %9565 = fadd fast float %9564, -1.000000e+00
  %9566 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %43, float %9427, float %9428, float %9562, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9567 = extractvalue %dx.types.ResRet.f32 %9566, 0
  %9568 = extractvalue %dx.types.ResRet.f32 %9566, 1
  %9569 = extractvalue %dx.types.ResRet.f32 %9566, 2
  %9570 = extractvalue %dx.types.ResRet.f32 %9566, 3
  %9571 = fadd fast float %9567, -5.000000e-01
  %9572 = fadd fast float %9569, -5.000000e-01
  %9573 = fmul fast float %9571, 0xBFD5555560000000
  %9574 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %9572, float %9573)  ; FMad(a,b,c)
  %9575 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %9568, float 0.000000e+00)  ; FMad(a,b,c)
  %9576 = fadd fast float %9575, %9570
  %9577 = fmul fast float %9571, -7.500000e-01
  %9578 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %9572, float %9577)  ; FMad(a,b,c)
  %9579 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %9568, float 0.000000e+00)  ; FMad(a,b,c)
  %9580 = fadd fast float %9579, %9570
  %9581 = call float @dx.op.binary.f32(i32 35, float %9574, float -1.000000e+00)  ; FMax(a,b)
  %9582 = call float @dx.op.binary.f32(i32 35, float %9576, float -1.000000e+00)  ; FMax(a,b)
  %9583 = call float @dx.op.binary.f32(i32 35, float %9578, float -1.000000e+00)  ; FMax(a,b)
  %9584 = call float @dx.op.binary.f32(i32 35, float %9580, float -1.000000e+00)  ; FMax(a,b)
  %9585 = call float @dx.op.binary.f32(i32 36, float %9581, float 1.000000e+00)  ; FMin(a,b)
  %9586 = call float @dx.op.binary.f32(i32 36, float %9582, float 1.000000e+00)  ; FMin(a,b)
  %9587 = call float @dx.op.binary.f32(i32 36, float %9583, float 1.000000e+00)  ; FMin(a,b)
  %9588 = call float @dx.op.binary.f32(i32 36, float %9584, float 1.000000e+00)  ; FMin(a,b)
  %9589 = fcmp fast olt float %9585, 0x3FEFFF8020000000
  br i1 %9589, label %9590, label %9705, !dx.controlflow.hints !172

; <label>:9590                                    ; preds = %9557
  %9591 = extractvalue %dx.types.CBufRet.f32 %9473, 3
  %9592 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %9593 = extractvalue %dx.types.CBufRet.f32 %9592, 0
  %9594 = extractvalue %dx.types.CBufRet.f32 %9592, 1
  %9595 = extractvalue %dx.types.CBufRet.f32 %9592, 2
  %9596 = extractvalue %dx.types.CBufRet.f32 %9592, 3
  %9597 = fsub fast float %9593, %9585
  %9598 = fsub fast float %9594, %9586
  %9599 = fsub fast float %9595, %9587
  %9600 = fsub fast float %9596, %9588
  %9601 = fmul fast float %9597, %9591
  %9602 = fmul fast float %9598, %9591
  %9603 = fmul fast float %9599, %9591
  %9604 = fmul fast float %9600, %9591
  %9605 = fadd fast float %9601, %9585
  %9606 = fadd fast float %9602, %9586
  %9607 = fsub fast float -0.000000e+00, %9606
  %9608 = fadd fast float %9603, %9587
  %9609 = fadd fast float %9604, %9588
  %9610 = fmul fast float %9605, %9605
  %9611 = fsub fast float %9606, %9610
  %9612 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %9611)  ; FMax(a,b)
  %9613 = fdiv fast float 1.000000e+00, %9612
  %9614 = fmul fast float %9606, %9605
  %9615 = fsub fast float %9608, %9614
  %9616 = fsub fast float %9565, %9605
  %9617 = fmul fast float %9565, %9565
  %9618 = fsub fast float %9617, %9606
  %9619 = fmul fast float %9616, %9613
  %9620 = fmul fast float %9619, %9615
  %9621 = fsub fast float %9618, %9620
  %9622 = fmul fast float %9606, %9606
  %9623 = fsub fast float %9609, %9622
  %9624 = fmul fast float %9615, %9615
  %9625 = fmul fast float %9624, %9613
  %9626 = fsub fast float %9623, %9625
  %9627 = fdiv fast float %9621, %9626
  %9628 = fmul fast float %9615, %9627
  %9629 = fsub fast float %9616, %9628
  %9630 = fmul fast float %9629, %9613
  %9631 = fmul fast float %9630, %9605
  %9632 = fsub fast float 1.000000e+00, %9631
  %9633 = fmul fast float %9606, %9627
  %9634 = fsub fast float %9632, %9633
  %9635 = fmul fast float %9630, %9630
  %9636 = fmul fast float %9627, 4.000000e+00
  %9637 = fmul fast float %9636, %9634
  %9638 = fsub fast float %9635, %9637
  %9639 = call float @dx.op.unary.f32(i32 24, float %9638)  ; Sqrt(value)
  %9640 = fcmp fast oge float %9630, 0.000000e+00
  %9641 = fsub fast float -0.000000e+00, %9639
  %9642 = select i1 %9640, float %9641, float %9639
  %9643 = fsub fast float %9642, %9630
  %9644 = fdiv fast float %9643, %9627
  %9645 = fdiv fast float %9634, %9643
  %9646 = fmul fast float %9644, 5.000000e-01
  %9647 = fmul fast float %9645, 2.000000e+00
  %9648 = select i1 %9640, float %9646, float %9647
  %9649 = select i1 %9640, float %9647, float %9646
  %9650 = call float @dx.op.binary.f32(i32 35, float %9648, float %9649)  ; FMax(a,b)
  %9651 = call float @dx.op.binary.f32(i32 36, float %9648, float %9649)  ; FMin(a,b)
  %9652 = fcmp fast ogt float %9565, %9651
  br i1 %9652, label %9653, label %9663

; <label>:9653                                    ; preds = %9590
  %9654 = fsub fast float %9565, %9651
  %9655 = fsub fast float %9650, %9651
  %9656 = fmul fast float %9654, %9655
  %9657 = fmul fast float %9650, %9565
  %9658 = fadd fast float %9650, %9565
  %9659 = fmul fast float %9658, %9605
  %9660 = fadd fast float %9657, %9606
  %9661 = fsub fast float %9660, %9659
  %9662 = fdiv fast float %9661, %9656
  br label %9663

; <label>:9663                                    ; preds = %9653, %9590
  %9664 = phi float [ %9662, %9653 ], [ 0.000000e+00, %9590 ]
  %9665 = fcmp fast ogt float %9565, %9650
  %9666 = fsub fast float %9565, %9650
  br i1 %9665, label %9667, label %9677

; <label>:9667                                    ; preds = %9663
  %9668 = fsub fast float %9650, %9651
  %9669 = fmul fast float %9668, %9666
  %9670 = fmul fast float %9651, %9565
  %9671 = fadd fast float %9651, %9565
  %9672 = fmul fast float %9671, %9605
  %9673 = fsub fast float %9607, %9670
  %9674 = fadd fast float %9673, %9672
  %9675 = fdiv fast float %9674, %9669
  %9676 = fadd fast float %9675, %9664
  br label %9677

; <label>:9677                                    ; preds = %9667, %9663
  %9678 = phi float [ %9676, %9667 ], [ %9664, %9663 ]
  %9679 = fsub fast float %9565, %9651
  %9680 = fmul fast float %9679, %9666
  %9681 = fmul fast float %9651, %9650
  %9682 = fadd fast float %9651, %9650
  %9683 = fmul fast float %9682, %9605
  %9684 = fadd fast float %9681, %9606
  %9685 = fsub fast float %9684, %9683
  %9686 = fdiv fast float %9685, %9680
  %9687 = call float @dx.op.unary.f32(i32 7, float %9678)  ; Saturate(value)
  %9688 = fcmp fast oeq float %8356, 0.000000e+00
  %9689 = extractvalue %dx.types.CBufRet.f32 %9473, 0
  %9690 = fcmp fast oeq float %9689, 0.000000e+00
  %9691 = or i1 %9688, %9690
  %9692 = fmul fast float %9689, 2.000000e+00
  %9693 = fadd fast float %9474, %9475
  %9694 = fdiv fast float %9693, %9692
  %9695 = call float @dx.op.unary.f32(i32 7, float %9694)  ; Saturate(value)
  %9696 = fmul fast float %9695, 2.000000e+00
  %9697 = fsub fast float 3.000000e+00, %9696
  %9698 = fmul fast float %9695, %9695
  %9699 = fmul fast float %9698, %9697
  %9700 = select i1 %9691, float 1.000000e+00, float %9699
  %9701 = fmul fast float %9686, %8356
  %9702 = fadd fast float %9687, %9701
  %9703 = call float @dx.op.unary.f32(i32 7, float %9702)  ; Saturate(value)
  %9704 = fmul fast float %9700, %9703
  br label %9705

; <label>:9705                                    ; preds = %9677, %9557
  %9706 = phi float [ %9704, %9677 ], [ 0.000000e+00, %9557 ]
  %9707 = fsub fast float 1.000000e+00, %9706
  %9708 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %43, float %9427, float %9428, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9709 = extractvalue %dx.types.ResRet.f32 %9708, 0
  %9710 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %9711 = extractvalue %dx.types.CBufRet.i32 %9710, 2
  %9712 = icmp eq i32 %9711, 0
  br i1 %9712, label %9718, label %9713

; <label>:9713                                    ; preds = %9705
  %9714 = call float @dx.op.unary.f32(i32 7, float %9706)  ; Saturate(value)
  %9715 = fadd fast float %9709, -1.000000e+00
  %9716 = fmul fast float %9714, %9715
  %9717 = fadd fast float %9716, 1.000000e+00
  br label %9718

; <label>:9718                                    ; preds = %9713, %9705
  %9719 = phi float [ %9717, %9713 ], [ %9707, %9705 ]
  br i1 %9481, label %9720, label %9738

; <label>:9720                                    ; preds = %9718
  %9721 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %9722 = extractvalue %dx.types.CBufRet.f32 %9721, 1
  %9723 = fsub fast float %9558, %9722
  %9724 = call float @dx.op.unary.f32(i32 7, float %9723)  ; Saturate(value)
  %9725 = fsub fast float %9558, %9480
  %9726 = call float @dx.op.unary.f32(i32 7, float %9725)  ; Saturate(value)
  %9727 = fsub fast float %9724, %9726
  %9728 = fsub fast float %9560, %9726
  %9729 = fdiv fast float %9728, %9727
  %9730 = call float @dx.op.unary.f32(i32 7, float %9729)  ; Saturate(value)
  %9731 = fmul fast float %9730, 2.000000e+00
  %9732 = fsub fast float 3.000000e+00, %9731
  %9733 = fsub fast float %9709, %9719
  %9734 = fmul fast float %9730, %9730
  %9735 = fmul fast float %9734, %9733
  %9736 = fmul fast float %9735, %9732
  %9737 = fadd fast float %9736, %9719
  br label %9738

; <label>:9738                                    ; preds = %9720, %9718
  %9739 = phi float [ %9737, %9720 ], [ %9719, %9718 ]
  %9740 = call float @dx.op.binary.f32(i32 35, float %9709, float %9739)  ; FMax(a,b)
  %9741 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %9742 = extractvalue %dx.types.CBufRet.i32 %9741, 2
  %9743 = and i32 %9742, 1
  %9744 = icmp eq i32 %9743, 0
  %9745 = fcmp fast une float %9740, 1.000000e+00
  %9746 = and i1 %9745, %9744
  br i1 %9746, label %9747, label %9766

; <label>:9747                                    ; preds = %9738
  %9748 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %43, float %9427, float %9428, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9749 = extractvalue %dx.types.ResRet.f32 %9748, 0
  %9750 = extractvalue %dx.types.ResRet.f32 %9748, 1
  %9751 = extractvalue %dx.types.ResRet.f32 %9748, 2
  %9752 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9753 = extractvalue %dx.types.CBufRet.f32 %9752, 1
  %9754 = fmul fast float %9753, %9749
  %9755 = fmul fast float %9753, %9750
  %9756 = fmul fast float %9753, %9751
  %9757 = fcmp fast ogt float %9709, 0x3FEFFF2E40000000
  %9758 = fsub fast float 1.000000e+00, %9740
  %9759 = fsub fast float 1.000000e+00, %9709
  %9760 = fdiv fast float %9758, %9759
  %9761 = call float @dx.op.unary.f32(i32 7, float %9760)  ; Saturate(value)
  %9762 = select i1 %9757, float 0.000000e+00, float %9761
  %9763 = fmul fast float %9754, %9762
  %9764 = fmul fast float %9755, %9762
  %9765 = fmul fast float %9756, %9762
  br label %9766

; <label>:9766                                    ; preds = %9747, %9738
  %9767 = phi float [ 0.000000e+00, %9738 ], [ %9763, %9747 ]
  %9768 = phi float [ 0.000000e+00, %9738 ], [ %9764, %9747 ]
  %9769 = phi float [ 0.000000e+00, %9738 ], [ %9765, %9747 ]
  %9770 = fmul fast float %9767, %8344
  %9771 = fmul fast float %9768, %8344
  %9772 = fmul fast float %9769, %8344
  %9773 = fmul fast float %9740, %9402
  %9774 = call float @dx.op.dot3.f32(i32 55, float %9740, float %9740, float %9740, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9775 = call float @dx.op.dot3.f32(i32 55, float %9770, float %9771, float %9772, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9776 = select i1 %262, float %9774, float %9740
  %9777 = select i1 %262, float 1.000000e+00, float %9740
  %9778 = select i1 %262, float %9775, float %9770
  %9779 = select i1 %262, float 0.000000e+00, float %9771
  %9780 = select i1 %262, float 0.000000e+00, float %9772
  %9781 = fmul fast float %9776, %9414
  %9782 = fmul fast float %9776, %9415
  %9783 = fmul fast float %9777, %9416
  %9784 = fadd fast float %9781, %9778
  %9785 = fadd fast float %9782, %9779
  %9786 = fadd fast float %9780, %9783
  %9787 = fmul fast float %9776, %9417
  %9788 = fmul fast float %9776, %9418
  %9789 = fmul fast float %9777, %9419
  br label %9790

; <label>:9790                                    ; preds = %9766, %9423, %9392, %8624
  %9791 = phi float [ %8629, %8624 ], [ %9414, %9392 ], [ %9784, %9766 ], [ %9414, %9423 ]
  %9792 = phi float [ %8630, %8624 ], [ %9415, %9392 ], [ %9785, %9766 ], [ %9415, %9423 ]
  %9793 = phi float [ %8631, %8624 ], [ %9416, %9392 ], [ %9786, %9766 ], [ %9416, %9423 ]
  %9794 = phi float [ %8632, %8624 ], [ %9417, %9392 ], [ %9787, %9766 ], [ %9417, %9423 ]
  %9795 = phi float [ %8633, %8624 ], [ %9418, %9392 ], [ %9788, %9766 ], [ %9418, %9423 ]
  %9796 = phi float [ %8634, %8624 ], [ %9419, %9392 ], [ %9789, %9766 ], [ %9419, %9423 ]
  %9797 = phi float [ %8635, %8624 ], [ %9402, %9392 ], [ %9773, %9766 ], [ %9402, %9423 ]
  %9798 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %9799 = extractvalue %dx.types.CBufRet.f32 %9798, 2
  %9800 = extractvalue %dx.types.CBufRet.f32 %9798, 3
  %9801 = fmul fast float %9799, %109
  %9802 = fmul fast float %9800, %110
  %9803 = call float @dx.op.unary.f32(i32 7, float %9801)  ; Saturate(value)
  %9804 = call float @dx.op.unary.f32(i32 7, float %9802)  ; Saturate(value)
  %9805 = select i1 %8366, i32 2, i32 0
  %9806 = or i32 %9805, 1
  %9807 = uitofp i32 %9806 to float
  %9808 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %43, float %9803, float %9804, float %9807, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9809 = extractvalue %dx.types.ResRet.f32 %9808, 0
  %9810 = extractvalue %dx.types.ResRet.f32 %9808, 1
  %9811 = extractvalue %dx.types.ResRet.f32 %9808, 2
  %9812 = extractvalue %dx.types.ResRet.f32 %9808, 3
  %9813 = add nuw nsw i32 %9805, 2
  %9814 = uitofp i32 %9813 to float
  %9815 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %43, float %9803, float %9804, float %9814, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9816 = extractvalue %dx.types.ResRet.f32 %9815, 0
  %9817 = extractvalue %dx.types.ResRet.f32 %9815, 1
  %9818 = extractvalue %dx.types.ResRet.f32 %9815, 2
  %9819 = extractvalue %dx.types.ResRet.f32 %9815, 3
  %9820 = call float @dx.op.binary.f32(i32 35, float %9810, float %9811)  ; FMax(a,b)
  %9821 = call float @dx.op.binary.f32(i32 35, float %9809, float %9820)  ; FMax(a,b)
  %9822 = call float @dx.op.binary.f32(i32 35, float %9821, float %9812)  ; FMax(a,b)
  %9823 = call float @dx.op.binary.f32(i32 36, float %9817, float %9818)  ; FMin(a,b)
  %9824 = call float @dx.op.binary.f32(i32 36, float %9816, float %9823)  ; FMin(a,b)
  %9825 = call float @dx.op.binary.f32(i32 36, float %9824, float %9819)  ; FMin(a,b)
  %9826 = fmul fast float %9822, 2.550000e+02
  %9827 = fadd fast float %9826, 0x3F70101020000000
  %9828 = fptoui float %9827 to i32
  %9829 = fmul fast float %9825, 2.550000e+02
  %9830 = fadd fast float %9829, 0x3F70101020000000
  %9831 = fptoui float %9830 to i32
  %9832 = icmp ult i32 %9828, %9831
  br i1 %9832, label %9833, label %10002

; <label>:9833                                    ; preds = %9790
  %9834 = fcmp fast ogt float %95, 9.843750e-01
  %9835 = fadd fast float %8628, -4.000000e+00
  %9836 = select i1 %9834, float -4.000000e+00, float %9835
  %9837 = call float @dx.op.binary.f32(i32 35, float %9836, float 0.000000e+00)  ; FMax(a,b)
  %9838 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %9839 = extractvalue %dx.types.CBufRet.f32 %9838, 0
  %9840 = fadd fast float %9839, %9837
  %9841 = extractvalue %dx.types.CBufRet.f32 %9838, 2
  %9842 = fmul fast float %9840, %9841
  %9843 = call float @dx.op.unary.f32(i32 23, float %9842)  ; Log(value)
  %9844 = extractvalue %dx.types.CBufRet.f32 %9838, 3
  %9845 = fmul fast float %9844, %9843
  %9846 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %9847 = extractvalue %dx.types.CBufRet.f32 %9846, 2
  %9848 = fmul fast float %9845, %9847
  %9849 = call float @dx.op.unary.f32(i32 7, float %9848)  ; Saturate(value)
  %9850 = uitofp i32 %9828 to float
  %9851 = uitofp i32 %9831 to float
  %9852 = fadd fast float %9850, 5.000000e-01
  %9853 = fadd fast float %9851, 5.000000e-01
  %9854 = fmul fast float %9847, %9852
  %9855 = fmul fast float %9847, %9853
  %9856 = fadd fast float %9854, 0x3F0FFB4800000000
  %9857 = fadd fast float %9855, 0xBF0FFB4800000000
  %9858 = call float @dx.op.binary.f32(i32 35, float %9849, float %9856)  ; FMax(a,b)
  %9859 = call float @dx.op.binary.f32(i32 36, float %9858, float %9857)  ; FMin(a,b)
  %9860 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %9861 = extractvalue %dx.types.CBufRet.f32 %9860, 1
  %9862 = extractvalue %dx.types.CBufRet.f32 %9860, 2
  %9863 = extractvalue %dx.types.CBufRet.f32 %9860, 0
  %9864 = select i1 %8366, float %9863, float 0.000000e+00
  %9865 = fmul fast float %9861, %9859
  %9866 = fadd fast float %9864, %9865
  %9867 = fadd fast float %9864, %9862
  %9868 = fsub fast float %9861, %9862
  %9869 = fadd fast float %9868, %9864
  %9870 = call float @dx.op.binary.f32(i32 35, float %9866, float %9867)  ; FMax(a,b)
  %9871 = call float @dx.op.binary.f32(i32 36, float %9870, float %9869)  ; FMin(a,b)
  %9872 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %41, float %9803, float %9804, float %9871, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9873 = extractvalue %dx.types.ResRet.f32 %9872, 0
  %9874 = extractvalue %dx.types.ResRet.f32 %9872, 1
  %9875 = extractvalue %dx.types.ResRet.f32 %9872, 2
  %9876 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %9877 = extractvalue %dx.types.CBufRet.i32 %9876, 0
  %9878 = extractvalue %dx.types.CBufRet.i32 %9876, 1
  %9879 = uitofp i32 %9877 to float
  %9880 = uitofp i32 %9878 to float
  %9881 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %9882 = extractvalue %dx.types.CBufRet.f32 %9881, 0
  %9883 = extractvalue %dx.types.CBufRet.f32 %9881, 1
  %9884 = fmul fast float %9879, %9803
  %9885 = fmul fast float %9880, %9804
  %9886 = fadd fast float %9884, -5.000000e-01
  %9887 = fadd fast float %9885, -5.000000e-01
  %9888 = call float @dx.op.unary.f32(i32 22, float %9886)  ; Frc(value)
  %9889 = call float @dx.op.unary.f32(i32 22, float %9887)  ; Frc(value)
  %9890 = fmul fast float %9888, %9888
  %9891 = fmul fast float %9890, %9888
  %9892 = fsub fast float 3.000000e+00, %9888
  %9893 = fmul fast float %9890, %9892
  %9894 = fmul fast float %9888, 3.000000e+00
  %9895 = fmul fast float %9891, 3.000000e+00
  %9896 = fmul fast float %9890, 6.000000e+00
  %9897 = fsub fast float %9895, %9896
  %9898 = fadd fast float %9897, 4.000000e+00
  %9899 = fmul fast float %9898, 0x3FC5555560000000
  %9900 = fmul fast float %9891, -3.000000e+00
  %9901 = fadd fast float %9890, %9888
  %9902 = fmul fast float %9901, 3.000000e+00
  %9903 = fadd fast float %9900, 1.000000e+00
  %9904 = fadd fast float %9903, %9902
  %9905 = fmul fast float %9891, 0x3FC5555560000000
  %9906 = fmul fast float %9889, %9889
  %9907 = fmul fast float %9906, %9889
  %9908 = fsub fast float 3.000000e+00, %9889
  %9909 = fmul fast float %9906, %9908
  %9910 = fmul fast float %9889, 3.000000e+00
  %9911 = fmul fast float %9907, 3.000000e+00
  %9912 = fmul fast float %9906, 6.000000e+00
  %9913 = fsub fast float %9911, %9912
  %9914 = fadd fast float %9913, 4.000000e+00
  %9915 = fmul fast float %9914, 0x3FC5555560000000
  %9916 = fmul fast float %9907, -3.000000e+00
  %9917 = fadd fast float %9906, %9889
  %9918 = fmul fast float %9917, 3.000000e+00
  %9919 = fadd fast float %9916, 1.000000e+00
  %9920 = fadd fast float %9919, %9918
  %9921 = fmul fast float %9907, 0x3FC5555560000000
  %9922 = fadd fast float %9888, 1.000000e+00
  %9923 = fsub fast float 1.000000e+00, %9894
  %9924 = fadd fast float %9923, %9893
  %9925 = fadd fast float %9924, %9898
  %9926 = fmul fast float %9925, 0x3FC5555560000000
  %9927 = fdiv fast float %9899, %9926
  %9928 = fsub fast float %9922, %9927
  %9929 = fsub fast float 1.000000e+00, %9888
  %9930 = fadd fast float %9904, %9891
  %9931 = fmul fast float %9930, 0x3FC5555560000000
  %9932 = fdiv fast float %9905, %9931
  %9933 = fadd fast float %9929, %9932
  %9934 = fadd fast float %9889, 1.000000e+00
  %9935 = fsub fast float 1.000000e+00, %9910
  %9936 = fadd fast float %9935, %9909
  %9937 = fadd fast float %9936, %9914
  %9938 = fmul fast float %9937, 0x3FC5555560000000
  %9939 = fdiv fast float %9915, %9938
  %9940 = fsub fast float %9934, %9939
  %9941 = fsub fast float 1.000000e+00, %9889
  %9942 = fadd fast float %9920, %9907
  %9943 = fmul fast float %9942, 0x3FC5555560000000
  %9944 = fdiv fast float %9921, %9943
  %9945 = fadd fast float %9944, %9941
  %9946 = fmul fast float %9928, %9882
  %9947 = fsub fast float %9803, %9946
  %9948 = fmul fast float %9933, %9882
  %9949 = fadd fast float %9948, %9803
  %9950 = fmul fast float %9945, %9883
  %9951 = fadd fast float %9950, %9804
  %9952 = fmul fast float %9940, %9883
  %9953 = fsub fast float %9804, %9952
  %9954 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %41, float %9947, float %9953, float %9871, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9955 = extractvalue %dx.types.ResRet.f32 %9954, 0
  %9956 = extractvalue %dx.types.ResRet.f32 %9954, 1
  %9957 = extractvalue %dx.types.ResRet.f32 %9954, 2
  %9958 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %41, float %9949, float %9953, float %9871, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9959 = extractvalue %dx.types.ResRet.f32 %9958, 0
  %9960 = extractvalue %dx.types.ResRet.f32 %9958, 1
  %9961 = extractvalue %dx.types.ResRet.f32 %9958, 2
  %9962 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %41, float %9947, float %9951, float %9871, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9963 = extractvalue %dx.types.ResRet.f32 %9962, 0
  %9964 = extractvalue %dx.types.ResRet.f32 %9962, 1
  %9965 = extractvalue %dx.types.ResRet.f32 %9962, 2
  %9966 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %41, float %9949, float %9951, float %9871, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9967 = extractvalue %dx.types.ResRet.f32 %9966, 0
  %9968 = extractvalue %dx.types.ResRet.f32 %9966, 1
  %9969 = extractvalue %dx.types.ResRet.f32 %9966, 2
  %9970 = fsub fast float %9963, %9955
  %9971 = fsub fast float %9964, %9956
  %9972 = fsub fast float %9965, %9957
  %9973 = fmul fast float %9970, %9943
  %9974 = fmul fast float %9971, %9943
  %9975 = fmul fast float %9972, %9943
  %9976 = fadd fast float %9973, %9955
  %9977 = fadd fast float %9974, %9956
  %9978 = fadd fast float %9975, %9957
  %9979 = fsub fast float %9967, %9959
  %9980 = fsub fast float %9968, %9960
  %9981 = fsub fast float %9969, %9961
  %9982 = fmul fast float %9979, %9943
  %9983 = fmul fast float %9980, %9943
  %9984 = fmul fast float %9981, %9943
  %9985 = fsub fast float %9959, %9976
  %9986 = fadd fast float %9985, %9982
  %9987 = fsub fast float %9960, %9977
  %9988 = fadd fast float %9987, %9983
  %9989 = fsub fast float %9961, %9978
  %9990 = fadd fast float %9989, %9984
  %9991 = fmul fast float %9986, %9931
  %9992 = fmul fast float %9988, %9931
  %9993 = fmul fast float %9990, %9931
  %9994 = fadd fast float %9991, %9976
  %9995 = fadd fast float %9992, %9977
  %9996 = fadd fast float %9993, %9978
  %9997 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9998 = extractvalue %dx.types.CBufRet.f32 %9997, 1
  %9999 = fmul fast float %9994, %9998
  %10000 = fmul fast float %9995, %9998
  %10001 = fmul fast float %9996, %9998
  br label %10002

; <label>:10002                                   ; preds = %9833, %9790
  %10003 = phi float [ %9873, %9833 ], [ 1.000000e+00, %9790 ]
  %10004 = phi float [ %9874, %9833 ], [ 1.000000e+00, %9790 ]
  %10005 = phi float [ %9875, %9833 ], [ 1.000000e+00, %9790 ]
  %10006 = phi float [ %9999, %9833 ], [ 0.000000e+00, %9790 ]
  %10007 = phi float [ %10000, %9833 ], [ 0.000000e+00, %9790 ]
  %10008 = phi float [ %10001, %9833 ], [ 0.000000e+00, %9790 ]
  %10009 = fmul fast float %10006, %8344
  %10010 = fmul fast float %10007, %8344
  %10011 = fmul fast float %10008, %8344
  %10012 = fmul fast float %10003, %9797
  %10013 = call float @dx.op.dot3.f32(i32 55, float %10003, float %10004, float %10005, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10014 = call float @dx.op.dot3.f32(i32 55, float %10009, float %10010, float %10011, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10015 = select i1 %262, float %10013, float %10003
  %10016 = select i1 %262, float %10013, float %10004
  %10017 = select i1 %262, float 1.000000e+00, float %10005
  %10018 = select i1 %262, float %10014, float %10009
  %10019 = select i1 %262, float 0.000000e+00, float %10010
  %10020 = select i1 %262, float 0.000000e+00, float %10011
  %10021 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %10022 = extractvalue %dx.types.CBufRet.i32 %10021, 3
  %10023 = and i32 %10022, 3
  %10024 = icmp ne i32 %10023, 0
  %10025 = and i32 %10022, 4
  %10026 = icmp ne i32 %10025, 0
  %10027 = and i1 %10024, %10026
  %10028 = and i1 %262, %10027
  br i1 %10028, label %10029, label %10035

; <label>:10029                                   ; preds = %10002
  %10030 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %10031 = extractvalue %dx.types.CBufRet.f32 %10030, 1
  %10032 = fadd fast float %10012, -1.000000e+00
  %10033 = fmul fast float %10031, %10032
  %10034 = fadd fast float %10033, 1.000000e+00
  br label %10035

; <label>:10035                                   ; preds = %10029, %10002
  %10036 = phi float [ %10034, %10029 ], [ %10012, %10002 ]
  %10037 = fadd fast float %9794, %9791
  %10038 = fmul fast float %10015, %10037
  %10039 = fadd fast float %10038, %10018
  %10040 = fadd fast float %9795, %9792
  %10041 = fmul fast float %10016, %10040
  %10042 = fadd fast float %10041, %10019
  %10043 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %10044 = extractvalue %dx.types.CBufRet.f32 %10043, 0
  br i1 %262, label %10045, label %10068

; <label>:10045                                   ; preds = %10035
  %10046 = fadd fast float %10039, %10042
  %10047 = fmul fast float %10044, %10046
  %10048 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %10049 = extractvalue %dx.types.CBufRet.f32 %10048, 3
  %10050 = extractvalue %dx.types.CBufRet.f32 %8348, 1
  %10051 = fsub fast float %8353, %8347
  %10052 = fadd fast float %10051, %8354
  %10053 = fsub fast float %10052, %10050
  %10054 = extractvalue %dx.types.CBufRet.f32 %8348, 2
  %10055 = fmul fast float %10053, %10054
  %10056 = call float @dx.op.unary.f32(i32 7, float %10055)  ; Saturate(value)
  %10057 = fsub fast float %10056, %10049
  %10058 = fmul fast float %10057, %10036
  %10059 = fadd fast float %10058, %10049
  %10060 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %10061 = extractvalue %dx.types.CBufRet.f32 %10060, 0
  %10062 = fsub fast float %10059, %10061
  %10063 = fmul fast float %10062, 1.000000e+01
  %10064 = call float @dx.op.unary.f32(i32 7, float %10063)  ; Saturate(value)
  %10065 = fmul fast float %10064, %8343
  %10066 = fadd fast float %10065, %8344
  %10067 = fmul fast float %10066, %10059
  br label %10092

; <label>:10068                                   ; preds = %10035
  %10069 = fadd fast float %9796, %9793
  %10070 = fmul fast float %10017, %10069
  %10071 = fadd fast float %10070, %10020
  %10072 = fmul fast float %10044, %10039
  %10073 = fmul fast float %10044, %10042
  %10074 = fmul fast float %10044, %10071
  %10075 = call float @dx.op.binary.f32(i32 35, float %10073, float %10074)  ; FMax(a,b)
  %10076 = call float @dx.op.binary.f32(i32 35, float %10072, float %10075)  ; FMax(a,b)
  %10077 = call float @dx.op.binary.f32(i32 35, float %10076, float %8344)  ; FMax(a,b)
  %10078 = fcmp fast ugt float %10077, 0x3F10000000000000
  br i1 %10078, label %10080, label %10079

; <label>:10079                                   ; preds = %10068
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %10080

; <label>:10080                                   ; preds = %10079, %10068
  %10081 = add i32 %49, 356
  %10082 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %10081, i32 undef)  ; BufferLoad(srv,index,wot)
  %10083 = extractvalue %dx.types.ResRet.i32 %10082, 0
  %10084 = and i32 %10083, 32
  %10085 = icmp eq i32 %10084, 0
  br i1 %10085, label %10092, label %10086

; <label>:10086                                   ; preds = %10080
  %10087 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %10088 = extractvalue %dx.types.CBufRet.f32 %10087, 0
  %10089 = fmul fast float %10088, 0x3FE99999A0000000
  %10090 = fadd fast float %10088, %10072
  %10091 = fadd fast float %10089, %10074
  br label %10092

; <label>:10092                                   ; preds = %10086, %10080, %10045
  %10093 = phi float [ %10047, %10045 ], [ %10090, %10086 ], [ %10072, %10080 ]
  %10094 = phi float [ %10067, %10045 ], [ %10073, %10086 ], [ %10073, %10080 ]
  %10095 = phi float [ %10066, %10045 ], [ %10091, %10086 ], [ %10074, %10080 ]
  %10096 = phi float [ %10066, %10045 ], [ %8344, %10086 ], [ %8344, %10080 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %10097 = call float @dx.op.binary.f32(i32 36, float %10093, float 3.225500e+04)  ; FMin(a,b)
  %10098 = call float @dx.op.binary.f32(i32 36, float %10094, float 3.225500e+04)  ; FMin(a,b)
  %10099 = call float @dx.op.binary.f32(i32 36, float %10095, float 3.225500e+04)  ; FMin(a,b)
  %10100 = call float @dx.op.binary.f32(i32 36, float %10096, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %10097)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %10098)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %10099)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %10100)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %10096)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %10096)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %10096)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float %10096)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!dx.viewIdState = !{!61}
!dx.entryPoints = !{!62}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !50, !53}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !29, !30, !31, !32, !33, !34, !35, !36, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49}
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
!50 = !{!51, !52}
!51 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!52 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 144, null}
!53 = !{!54, !55, !56, !57, !58, !59, !60}
!54 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!55 = !{i32 1, %struct.SamplerComparisonState* undef, !"", i32 0, i32 0, i32 1, i32 1, null}
!56 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!57 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!58 = !{i32 4, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!59 = !{i32 5, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!60 = !{i32 6, %struct.SamplerState* undef, !"", i32 0, i32 5, i32 1, i32 0, null}
!61 = !{[62 x i32] [i32 60, i32 8, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 0, i32 0, i32 255, i32 255, i32 255, i32 0, i32 255, i32 255, i32 255, i32 255, i32 7, i32 3, i32 3, i32 3, i32 7, i32 3, i32 3, i32 3, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 0, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 0, i32 0, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 0, i32 255, i32 255, i32 0, i32 0, i32 255, i32 0, i32 0, i32 0]}
!62 = !{void ()* @ps_main, !"ps_main", !63, !4, !91}
!63 = !{!64, !87, null}
!64 = !{!65, !68, !69, !71, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !84, !85, !86}
!65 = !{i32 0, !"SV_Position", i8 9, i8 3, !66, i8 4, i32 1, i8 4, i32 0, i8 0, !67}
!66 = !{i32 0}
!67 = !{i32 3, i32 15}
!68 = !{i32 1, !"COLOR", i8 9, i8 0, !66, i8 2, i32 1, i8 4, i32 1, i8 0, !67}
!69 = !{i32 2, !"TEXCOORDS", i8 9, i8 0, !66, i8 2, i32 1, i8 4, i32 2, i8 0, !70}
!70 = !{i32 3, i32 3}
!71 = !{i32 3, !"NORMAL", i8 9, i8 0, !66, i8 2, i32 1, i8 3, i32 3, i8 0, !72}
!72 = !{i32 3, i32 7}
!73 = !{i32 4, !"TANGENT", i8 9, i8 0, !66, i8 2, i32 1, i8 4, i32 4, i8 0, !67}
!74 = !{i32 5, !"SH_RED", i8 9, i8 0, !66, i8 2, i32 1, i8 4, i32 5, i8 0, !67}
!75 = !{i32 6, !"SH_GREEN", i8 9, i8 0, !66, i8 2, i32 1, i8 4, i32 6, i8 0, !67}
!76 = !{i32 7, !"SH_BLUE", i8 9, i8 0, !66, i8 2, i32 1, i8 4, i32 7, i8 0, !67}
!77 = !{i32 8, !"WGV_TEXCOORD", i8 9, i8 0, !66, i8 2, i32 1, i8 3, i32 8, i8 0, !72}
!78 = !{i32 9, !"WGV_NORMAL", i8 9, i8 0, !66, i8 2, i32 1, i8 4, i32 9, i8 0, !67}
!79 = !{i32 10, !"SECONDARY_TEXCOORDS", i8 9, i8 0, !66, i8 2, i32 1, i8 2, i32 10, i8 0, !70}
!80 = !{i32 11, !"SCEONDARY_NORMAL", i8 9, i8 0, !66, i8 2, i32 1, i8 4, i32 11, i8 0, !67}
!81 = !{i32 12, !"OBJECT_POSITION", i8 9, i8 0, !66, i8 2, i32 1, i8 4, i32 12, i8 0, !72}
!82 = !{i32 13, !"DECAL_VOLUME_GRID_INDEX", i8 5, i8 0, !66, i8 1, i32 1, i8 1, i32 13, i8 0, !83}
!83 = !{i32 3, i32 1}
!84 = !{i32 14, !"ENTITY_IDS", i8 5, i8 0, !66, i8 1, i32 1, i8 2, i32 13, i8 1, !83}
!85 = !{i32 15, !"PACKED_TRI_DATA", i8 5, i8 0, !66, i8 1, i32 1, i8 4, i32 14, i8 0, !83}
!86 = !{i32 16, !"SV_SampleIndex", i8 5, i8 12, !66, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!87 = !{!88, !89}
!88 = !{i32 0, !"SV_Target", i8 9, i8 16, !66, i8 0, i32 1, i8 4, i32 0, i8 0, !67}
!89 = !{i32 1, !"SV_Target", i8 9, i8 16, !90, i8 0, i32 1, i8 4, i32 1, i8 0, !67}
!90 = !{i32 1}
!91 = !{i32 0, i64 16}
!92 = distinct !{!92, !"dx.controlflow.hints", i32 1}
!93 = distinct !{!93, !94}
!94 = !{!"llvm.loop.unroll.disable"}
!95 = distinct !{!95, !"dx.controlflow.hints", i32 1}
!96 = distinct !{!96, !"dx.controlflow.hints", i32 1}
!97 = distinct !{!97, !"dx.controlflow.hints", i32 1}
!98 = distinct !{!98, !"dx.controlflow.hints", i32 1}
!99 = distinct !{!99, !"dx.controlflow.hints", i32 1}
!100 = !{!101, !101, i64 0}
!101 = !{!"int", !102, i64 0}
!102 = !{!"omnipotent char", !103, i64 0}
!103 = !{!"Simple C/C++ TBAA"}
!104 = !{!105, !107, !109, !111}
!105 = distinct !{!105, !106, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!106 = distinct !{!106, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!107 = distinct !{!107, !108, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!108 = distinct !{!108, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!109 = distinct !{!109, !110, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z: %agg.result"}
!110 = distinct !{!110, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z"}
!111 = distinct !{!111, !112, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z: %agg.result"}
!112 = distinct !{!112, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z"}
!113 = distinct !{!113, !"dx.controlflow.hints", i32 1}
!114 = !{!115, !115, i64 0}
!115 = !{!"float", !102, i64 0}
!116 = distinct !{!116, !94}
!117 = distinct !{!117, !94}
!118 = distinct !{!118, !"dx.controlflow.hints", i32 1}
!119 = distinct !{!119, !"dx.controlflow.hints", i32 1}
!120 = distinct !{!120, !"dx.controlflow.hints", i32 1}
!121 = distinct !{!121, !"dx.controlflow.hints", i32 1}
!122 = distinct !{!122, !"dx.controlflow.hints", i32 1}
!123 = distinct !{!123, !"dx.controlflow.hints", i32 1}
!124 = distinct !{!124, !"dx.controlflow.hints", i32 1}
!125 = distinct !{!125, !"dx.controlflow.hints", i32 1}
!126 = !{!127, !129, !131, !132, !134, !135, !136, !138, !139, !140}
!127 = distinct !{!127, !128, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!128 = distinct !{!128, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!129 = distinct !{!129, !130, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!130 = distinct !{!130, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!131 = distinct !{!131, !130, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!132 = distinct !{!132, !133, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %blendColor"}
!133 = distinct !{!133, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z"}
!134 = distinct !{!134, !133, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %addColor"}
!135 = distinct !{!135, !133, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %thermalExtinction"}
!136 = distinct !{!136, !137, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %blendColor"}
!137 = distinct !{!137, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z"}
!138 = distinct !{!138, !137, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %addColor"}
!139 = distinct !{!139, !137, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %thermalExtinction"}
!140 = distinct !{!140, !141, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z: %agg.result"}
!141 = distinct !{!141, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z"}
!142 = !{!143}
!143 = distinct !{!143, !144, !"\01?sort@@YAXAIAM00@Z: %c"}
!144 = distinct !{!144, !"\01?sort@@YAXAIAM00@Z"}
!145 = !{!146, !147, !127, !129, !131, !132, !134, !135, !136, !138, !139, !140}
!146 = distinct !{!146, !144, !"\01?sort@@YAXAIAM00@Z: %a"}
!147 = distinct !{!147, !144, !"\01?sort@@YAXAIAM00@Z: %b"}
!148 = !{!147}
!149 = !{!146, !143, !127, !129, !131, !132, !134, !135, !136, !138, !139, !140}
!150 = !{!146}
!151 = !{!147, !143, !127, !129, !131, !132, !134, !135, !136, !138, !139, !140}
!152 = !{!153}
!153 = distinct !{!153, !154, !"\01?sort@@YAXAIAM00@Z: %c"}
!154 = distinct !{!154, !"\01?sort@@YAXAIAM00@Z"}
!155 = !{!156, !157, !127, !129, !131, !132, !134, !135, !136, !138, !139, !140}
!156 = distinct !{!156, !154, !"\01?sort@@YAXAIAM00@Z: %a"}
!157 = distinct !{!157, !154, !"\01?sort@@YAXAIAM00@Z: %b"}
!158 = !{!157}
!159 = !{!156, !153, !127, !129, !131, !132, !134, !135, !136, !138, !139, !140}
!160 = !{!156}
!161 = !{!157, !153, !127, !129, !131, !132, !134, !135, !136, !138, !139, !140}
!162 = distinct !{!162, !"dx.controlflow.hints", i32 1}
!163 = distinct !{!163, !"dx.controlflow.hints", i32 2}
!164 = distinct !{!164, !"dx.controlflow.hints", i32 1}
!165 = distinct !{!165, !"dx.controlflow.hints", i32 1}
!166 = distinct !{!166, !"dx.controlflow.hints", i32 1}
!167 = distinct !{!167, !"dx.controlflow.hints", i32 1}
!168 = distinct !{!168, !"dx.controlflow.hints", i32 1}
!169 = distinct !{!169, !"dx.controlflow.hints", i32 1}
!170 = distinct !{!170, !"dx.controlflow.hints", i32 1}
!171 = distinct !{!171, !"dx.controlflow.hints", i32 1}
!172 = distinct !{!172, !"dx.controlflow.hints", i32 1}

