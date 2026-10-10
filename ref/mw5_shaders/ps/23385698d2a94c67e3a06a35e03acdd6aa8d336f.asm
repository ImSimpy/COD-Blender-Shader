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
; shader hash: ade852dcb297ccf243f8b8967dd33805
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
  %203 = bitcast i32 %202 to float
  %204 = add i32 %51, 360
  %205 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %204, i32 undef)  ; BufferLoad(srv,index,wot)
  %206 = extractvalue %dx.types.ResRet.i32 %205, 0
  %207 = extractvalue %dx.types.ResRet.i32 %205, 1
  %208 = extractvalue %dx.types.ResRet.i32 %205, 2
  %209 = extractvalue %dx.types.ResRet.i32 %205, 3
  %210 = bitcast i32 %206 to float
  %211 = bitcast i32 %207 to float
  %212 = bitcast i32 %208 to float
  %213 = bitcast i32 %209 to float
  %214 = call float @dx.op.dot3.f32(i32 55, float %118, float %119, float %120, float %118, float %119, float %120)  ; Dot3(ax,ay,az,bx,by,bz)
  %215 = call float @dx.op.unary.f32(i32 25, float %214)  ; Rsqrt(value)
  %216 = fmul fast float %215, %118
  %217 = fmul fast float %215, %119
  %218 = fmul fast float %215, %120
  %219 = call float @dx.op.dot3.f32(i32 55, float %190, float %191, float %192, float %190, float %191, float %192)  ; Dot3(ax,ay,az,bx,by,bz)
  %220 = call float @dx.op.unary.f32(i32 25, float %219)  ; Rsqrt(value)
  %221 = fmul fast float %220, %190
  %222 = fmul fast float %220, %191
  %223 = fmul fast float %220, %192
  %224 = call float @dx.op.dot3.f32(i32 55, float %221, float %222, float %223, float %216, float %217, float %218)  ; Dot3(ax,ay,az,bx,by,bz)
  %225 = fmul fast float %224, %224
  %226 = fmul fast float %225, %212
  %227 = fadd fast float %226, %213
  %228 = call float @dx.op.unary.f32(i32 7, float %227)  ; Saturate(value)
  %229 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 310)  ; CBufferLoadLegacy(handle,regIndex)
  %230 = extractvalue %dx.types.CBufRet.f32 %229, 3
  %231 = fmul fast float %230, %219
  %232 = fsub fast float %210, %231
  %233 = fmul fast float %232, %211
  %234 = call float @dx.op.unary.f32(i32 7, float %233)  ; Saturate(value)
  %235 = fmul fast float %234, %228
  %236 = fmul fast float %111, 5.000000e-01
  %237 = fmul fast float %112, 5.000000e-01
  %238 = fptosi float %236 to i32
  %239 = fptosi float %237 to i32
  %240 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %23, i32 0, i32 %238, i32 %239, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %241 = extractvalue %dx.types.ResRet.i32 %240, 0
  %242 = lshr i32 %241, 18
  %243 = uitofp i32 %242 to float
  %244 = fmul fast float %243, 0x3F4C00EBA0000000
  %245 = call float @dx.op.unary.f32(i32 21, float %244)  ; Exp(value)
  %246 = fadd fast float %245, -1.000000e+00
  %247 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %23, i32 0)  ; GetDimensions(handle,mipLevel)
  %248 = extractvalue %dx.types.Dimensions %247, 0
  %249 = sitofp i32 %248 to float
  %250 = extractvalue %dx.types.Dimensions %247, 1
  %251 = sitofp i32 %250 to float
  %252 = fcmp fast oge float %236, %249
  %253 = fcmp fast oge float %237, %251
  %254 = or i1 %252, %253
  %255 = select i1 %254, float 0x4197782600000000, float %246
  %256 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %257 = extractvalue %dx.types.CBufRet.f32 %256, 2
  %258 = extractvalue %dx.types.CBufRet.f32 %256, 3
  %259 = fmul fast float %257, %111
  %260 = fmul fast float %258, %112
  %261 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %262 = extractvalue %dx.types.ResRet.i32 %261, 0
  %263 = and i32 %262, 114688
  %264 = icmp ne i32 %263, 0
  %265 = select i1 %264, float %259, float 0.000000e+00
  %266 = select i1 %264, float %260, float 0.000000e+00
  %267 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %46, float %265, float %266, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %268 = extractvalue %dx.types.ResRet.f32 %267, 0
  %269 = fmul fast float %268, 2.550000e+02
  %270 = fptoui float %269 to i32
  %271 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %272 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %273 = extractvalue %dx.types.CBufRet.i32 %272, 3
  %274 = and i32 %273, 3
  %275 = icmp ne i32 %274, 0
  %276 = and i32 %273, 4
  %277 = icmp ne i32 %276, 0
  %278 = and i1 %275, %277
  br i1 %278, label %279, label %290

; <label>:279                                     ; preds = %0
  %280 = extractvalue %dx.types.CBufRet.f32 %271, 3
  %281 = fmul fast float %280, %112
  %282 = extractvalue %dx.types.CBufRet.f32 %271, 2
  %283 = fmul fast float %282, %111
  %284 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %45, float %283, float %281, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %285 = extractvalue %dx.types.ResRet.f32 %284, 0
  %286 = fsub fast float 1.000000e+00, %285
  %287 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %288 = extractvalue %dx.types.CBufRet.f32 %287, 0
  %289 = fcmp fast olt float %286, %288
  br label %293

; <label>:290                                     ; preds = %0
  %291 = icmp eq i32 %276, 0
  %292 = and i1 %275, %291
  br label %293

; <label>:293                                     ; preds = %290, %279
  %294 = phi i1 [ %289, %279 ], [ %292, %290 ]
  %295 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %296 = extractvalue %dx.types.CBufRet.f32 %295, 2
  %297 = fmul fast float %296, 0x3FE3C6EF40000000
  %298 = frem fast float %111, 2.560000e+02
  %299 = frem fast float %112, 2.560000e+02
  %300 = fptoui float %298 to i32
  %301 = fptoui float %299 to i32
  %302 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %28, i32 0, i32 %300, i32 %301, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %303 = extractvalue %dx.types.ResRet.f32 %302, 0
  %304 = fadd fast float %303, %297
  %305 = call float @dx.op.unary.f32(i32 22, float %304)  ; Frc(value)
  %306 = add i32 %51, 156
  %307 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %306, i32 undef)  ; BufferLoad(srv,index,wot)
  %308 = extractvalue %dx.types.ResRet.i32 %307, 0
  %309 = shl i32 %308, 4
  %310 = and i32 %309, 32752
  %311 = call float @dx.op.legacyF16ToF32(i32 131, i32 %310)  ; LegacyF16ToF32(value)
  %312 = lshr i32 %308, 7
  %313 = and i32 %312, 32752
  %314 = call float @dx.op.legacyF16ToF32(i32 131, i32 %313)  ; LegacyF16ToF32(value)
  %315 = lshr i32 %308, 22
  %316 = shl nuw nsw i32 %315, 5
  %317 = call float @dx.op.legacyF16ToF32(i32 131, i32 %316)  ; LegacyF16ToF32(value)
  %318 = add i32 %51, 216
  %319 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %318, i32 undef)  ; BufferLoad(srv,index,wot)
  %320 = extractvalue %dx.types.ResRet.i32 %319, 0
  %321 = and i32 %320, 255
  %322 = uitofp i32 %321 to float
  %323 = fmul fast float %322, 0x3F70101020000000
  %324 = lshr i32 %320, 8
  %325 = and i32 %324, 255
  %326 = uitofp i32 %325 to float
  %327 = fmul fast float %326, 0x3F70101020000000
  %328 = lshr i32 %320, 16
  %329 = and i32 %328, 255
  %330 = uitofp i32 %329 to float
  %331 = fmul fast float %330, 0x3F70101020000000
  %332 = add i32 %51, 36
  %333 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %332, i32 undef)  ; BufferLoad(srv,index,wot)
  %334 = extractvalue %dx.types.ResRet.i32 %333, 0
  %335 = and i32 %334, 65535
  %336 = call float @dx.op.legacyF16ToF32(i32 131, i32 %335)  ; LegacyF16ToF32(value)
  %337 = lshr i32 %334, 16
  %338 = call float @dx.op.legacyF16ToF32(i32 131, i32 %337)  ; LegacyF16ToF32(value)
  %339 = add i32 %51, 288
  %340 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %339, i32 undef)  ; BufferLoad(srv,index,wot)
  %341 = extractvalue %dx.types.ResRet.i32 %340, 0
  %342 = and i32 %341, 65535
  %343 = call float @dx.op.legacyF16ToF32(i32 131, i32 %342)  ; LegacyF16ToF32(value)
  %344 = lshr i32 %341, 16
  %345 = call float @dx.op.legacyF16ToF32(i32 131, i32 %344)  ; LegacyF16ToF32(value)
  %346 = fmul fast float %343, 0x3F50624DE0000000
  %347 = fmul fast float %345, 0x3F50624DE0000000
  %348 = add i32 %51, 172
  %349 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %348, i32 undef)  ; BufferLoad(srv,index,wot)
  %350 = extractvalue %dx.types.ResRet.i32 %349, 0
  %351 = shl i32 %350, 4
  %352 = and i32 %351, 32752
  %353 = call float @dx.op.legacyF16ToF32(i32 131, i32 %352)  ; LegacyF16ToF32(value)
  %354 = lshr i32 %350, 7
  %355 = and i32 %354, 32752
  %356 = call float @dx.op.legacyF16ToF32(i32 131, i32 %355)  ; LegacyF16ToF32(value)
  %357 = lshr i32 %350, 22
  %358 = shl nuw nsw i32 %357, 5
  %359 = call float @dx.op.legacyF16ToF32(i32 131, i32 %358)  ; LegacyF16ToF32(value)
  %360 = add i32 %51, 232
  %361 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %360, i32 undef)  ; BufferLoad(srv,index,wot)
  %362 = extractvalue %dx.types.ResRet.i32 %361, 0
  %363 = and i32 %362, 255
  %364 = uitofp i32 %363 to float
  %365 = fmul fast float %364, 0x3F70101020000000
  %366 = lshr i32 %362, 8
  %367 = and i32 %366, 255
  %368 = uitofp i32 %367 to float
  %369 = fmul fast float %368, 0x3F70101020000000
  %370 = lshr i32 %362, 16
  %371 = and i32 %370, 255
  %372 = uitofp i32 %371 to float
  %373 = fmul fast float %372, 0x3F70101020000000
  %374 = add i32 %51, 52
  %375 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %374, i32 undef)  ; BufferLoad(srv,index,wot)
  %376 = extractvalue %dx.types.ResRet.i32 %375, 0
  %377 = and i32 %376, 65535
  %378 = call float @dx.op.legacyF16ToF32(i32 131, i32 %377)  ; LegacyF16ToF32(value)
  %379 = lshr i32 %376, 16
  %380 = call float @dx.op.legacyF16ToF32(i32 131, i32 %379)  ; LegacyF16ToF32(value)
  %381 = add i32 %51, 304
  %382 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %381, i32 undef)  ; BufferLoad(srv,index,wot)
  %383 = extractvalue %dx.types.ResRet.i32 %382, 0
  %384 = and i32 %383, 65535
  %385 = call float @dx.op.legacyF16ToF32(i32 131, i32 %384)  ; LegacyF16ToF32(value)
  %386 = lshr i32 %383, 16
  %387 = call float @dx.op.legacyF16ToF32(i32 131, i32 %386)  ; LegacyF16ToF32(value)
  %388 = fmul fast float %385, 0x3F50624DE0000000
  %389 = fmul fast float %387, 0x3F50624DE0000000
  %390 = add i32 %51, 188
  %391 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %390, i32 undef)  ; BufferLoad(srv,index,wot)
  %392 = extractvalue %dx.types.ResRet.i32 %391, 0
  %393 = shl i32 %392, 4
  %394 = and i32 %393, 32752
  %395 = call float @dx.op.legacyF16ToF32(i32 131, i32 %394)  ; LegacyF16ToF32(value)
  %396 = lshr i32 %392, 7
  %397 = and i32 %396, 32752
  %398 = call float @dx.op.legacyF16ToF32(i32 131, i32 %397)  ; LegacyF16ToF32(value)
  %399 = lshr i32 %392, 22
  %400 = shl nuw nsw i32 %399, 5
  %401 = call float @dx.op.legacyF16ToF32(i32 131, i32 %400)  ; LegacyF16ToF32(value)
  %402 = add i32 %51, 248
  %403 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %402, i32 undef)  ; BufferLoad(srv,index,wot)
  %404 = extractvalue %dx.types.ResRet.i32 %403, 0
  %405 = and i32 %404, 255
  %406 = uitofp i32 %405 to float
  %407 = fmul fast float %406, 0x3F70101020000000
  %408 = lshr i32 %404, 8
  %409 = and i32 %408, 255
  %410 = uitofp i32 %409 to float
  %411 = fmul fast float %410, 0x3F70101020000000
  %412 = lshr i32 %404, 16
  %413 = and i32 %412, 255
  %414 = uitofp i32 %413 to float
  %415 = fmul fast float %414, 0x3F70101020000000
  %416 = add i32 %51, 68
  %417 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %416, i32 undef)  ; BufferLoad(srv,index,wot)
  %418 = extractvalue %dx.types.ResRet.i32 %417, 0
  %419 = and i32 %418, 65535
  %420 = call float @dx.op.legacyF16ToF32(i32 131, i32 %419)  ; LegacyF16ToF32(value)
  %421 = lshr i32 %418, 16
  %422 = call float @dx.op.legacyF16ToF32(i32 131, i32 %421)  ; LegacyF16ToF32(value)
  %423 = add i32 %51, 320
  %424 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %423, i32 undef)  ; BufferLoad(srv,index,wot)
  %425 = extractvalue %dx.types.ResRet.i32 %424, 0
  %426 = and i32 %425, 65535
  %427 = call float @dx.op.legacyF16ToF32(i32 131, i32 %426)  ; LegacyF16ToF32(value)
  %428 = lshr i32 %425, 16
  %429 = call float @dx.op.legacyF16ToF32(i32 131, i32 %428)  ; LegacyF16ToF32(value)
  %430 = fmul fast float %427, 0x3F50624DE0000000
  %431 = fmul fast float %429, 0x3F50624DE0000000
  %432 = add i32 %51, 204
  %433 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %432, i32 undef)  ; BufferLoad(srv,index,wot)
  %434 = extractvalue %dx.types.ResRet.i32 %433, 0
  %435 = shl i32 %434, 4
  %436 = and i32 %435, 32752
  %437 = call float @dx.op.legacyF16ToF32(i32 131, i32 %436)  ; LegacyF16ToF32(value)
  %438 = lshr i32 %434, 7
  %439 = and i32 %438, 32752
  %440 = call float @dx.op.legacyF16ToF32(i32 131, i32 %439)  ; LegacyF16ToF32(value)
  %441 = lshr i32 %434, 22
  %442 = shl nuw nsw i32 %441, 5
  %443 = call float @dx.op.legacyF16ToF32(i32 131, i32 %442)  ; LegacyF16ToF32(value)
  %444 = add i32 %51, 264
  %445 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %444, i32 undef)  ; BufferLoad(srv,index,wot)
  %446 = extractvalue %dx.types.ResRet.i32 %445, 0
  %447 = and i32 %446, 255
  %448 = uitofp i32 %447 to float
  %449 = fmul fast float %448, 0x3F70101020000000
  %450 = lshr i32 %446, 8
  %451 = and i32 %450, 255
  %452 = uitofp i32 %451 to float
  %453 = fmul fast float %452, 0x3F70101020000000
  %454 = lshr i32 %446, 16
  %455 = and i32 %454, 255
  %456 = uitofp i32 %455 to float
  %457 = fmul fast float %456, 0x3F70101020000000
  %458 = add i32 %51, 84
  %459 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %458, i32 undef)  ; BufferLoad(srv,index,wot)
  %460 = extractvalue %dx.types.ResRet.i32 %459, 0
  %461 = and i32 %460, 65535
  %462 = call float @dx.op.legacyF16ToF32(i32 131, i32 %461)  ; LegacyF16ToF32(value)
  %463 = lshr i32 %460, 16
  %464 = call float @dx.op.legacyF16ToF32(i32 131, i32 %463)  ; LegacyF16ToF32(value)
  %465 = add i32 %51, 336
  %466 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %465, i32 undef)  ; BufferLoad(srv,index,wot)
  %467 = extractvalue %dx.types.ResRet.i32 %466, 0
  %468 = and i32 %467, 65535
  %469 = call float @dx.op.legacyF16ToF32(i32 131, i32 %468)  ; LegacyF16ToF32(value)
  %470 = lshr i32 %467, 16
  %471 = call float @dx.op.legacyF16ToF32(i32 131, i32 %470)  ; LegacyF16ToF32(value)
  %472 = fmul fast float %469, 0x3F50624DE0000000
  %473 = fmul fast float %471, 0x3F50624DE0000000
  %474 = add i32 %51, 348
  %475 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %474, i32 undef)  ; BufferLoad(srv,index,wot)
  %476 = extractvalue %dx.types.ResRet.i32 %475, 0
  %477 = and i32 %476, 32
  %478 = icmp eq i32 %477, 0
  %479 = and i32 %476, 64
  %480 = icmp eq i32 %479, 0
  %481 = and i32 %476, 128
  %482 = icmp eq i32 %481, 0
  %483 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %474, i32 undef)  ; BufferLoad(srv,index,wot)
  %484 = extractvalue %dx.types.ResRet.i32 %483, 0
  %485 = and i32 %484, 2
  %486 = icmp eq i32 %485, 0
  br i1 %486, label %502, label %487

; <label>:487                                     ; preds = %293
  %488 = add i32 %51, 552
  %489 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %488, i32 undef)  ; BufferLoad(srv,index,wot)
  %490 = extractvalue %dx.types.ResRet.i32 %489, 0
  %491 = add i32 %490, 0
  %492 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %491, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %493 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %492, %dx.types.Handle %108, float %89, float %90, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %494 = extractvalue %dx.types.ResRet.f32 %493, 0
  %495 = extractvalue %dx.types.ResRet.f32 %493, 1
  %496 = extractvalue %dx.types.ResRet.f32 %493, 2
  %497 = extractvalue %dx.types.ResRet.f32 %493, 3
  %498 = fmul fast float %497, %91
  %499 = fmul fast float %494, %92
  %500 = fmul fast float %495, %93
  %501 = fmul fast float %496, %94
  br label %502

; <label>:502                                     ; preds = %487, %293
  %503 = phi float [ %94, %293 ], [ %501, %487 ]
  %504 = phi float [ %93, %293 ], [ %500, %487 ]
  %505 = phi float [ %92, %293 ], [ %499, %487 ]
  %506 = phi float [ %91, %293 ], [ %498, %487 ]
  %507 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %474, i32 undef)  ; BufferLoad(srv,index,wot)
  %508 = extractvalue %dx.types.ResRet.i32 %507, 0
  %509 = and i32 %508, 2
  %510 = icmp eq i32 %509, 0
  br i1 %510, label %530, label %511

; <label>:511                                     ; preds = %502
  %512 = add i32 %51, 44
  %513 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %512, i32 undef)  ; BufferLoad(srv,index,wot)
  %514 = extractvalue %dx.types.ResRet.i32 %513, 0
  %515 = and i32 %514, 1
  %516 = icmp ne i32 %515, 0
  %517 = select i1 %516, float %505, float 1.000000e+00
  %518 = add i32 %51, 60
  %519 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %518, i32 undef)  ; BufferLoad(srv,index,wot)
  %520 = extractvalue %dx.types.ResRet.i32 %519, 0
  %521 = and i32 %520, 1
  %522 = icmp ne i32 %521, 0
  %523 = select i1 %522, float %504, float 1.000000e+00
  %524 = add i32 %51, 76
  %525 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %524, i32 undef)  ; BufferLoad(srv,index,wot)
  %526 = extractvalue %dx.types.ResRet.i32 %525, 0
  %527 = and i32 %526, 1
  %528 = icmp ne i32 %527, 0
  %529 = select i1 %528, float %503, float 1.000000e+00
  br label %530

; <label>:530                                     ; preds = %511, %502
  %531 = phi float [ %503, %502 ], [ %529, %511 ]
  %532 = phi float [ %504, %502 ], [ %523, %511 ]
  %533 = phi float [ %505, %502 ], [ %517, %511 ]
  %534 = lshr i32 %508, 20
  %535 = and i32 %534, 3
  %536 = add nuw nsw i32 %535, 1
  %537 = add i32 %51, 24
  %538 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %537, i32 undef)  ; BufferLoad(srv,index,wot)
  %539 = extractvalue %dx.types.ResRet.i32 %538, 0
  %540 = add i32 %51, 28
  %541 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %540, i32 undef)  ; BufferLoad(srv,index,wot)
  %542 = extractvalue %dx.types.ResRet.i32 %541, 0
  %543 = or i32 %542, %539
  %544 = icmp eq i32 %543, 0
  br i1 %544, label %1190, label %545

; <label>:545                                     ; preds = %530
  %546 = and i32 %539, 262144
  %547 = icmp ne i32 %546, 0
  %548 = select i1 %547, float %57, float 1.000000e+00
  %549 = select i1 %547, float %58, float 0.000000e+00
  %550 = select i1 %547, float %59, float 0.000000e+00
  %551 = select i1 %547, float %60, float 1.000000e+00
  %552 = select i1 %547, float %61, float %89
  %553 = select i1 %547, float %62, float %90
  %554 = add i32 %51, 284
  %555 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %554, i32 undef)  ; BufferLoad(srv,index,wot)
  %556 = extractvalue %dx.types.ResRet.i32 %555, 0
  %557 = lshr i32 %556, 16
  %558 = call float @dx.op.legacyF16ToF32(i32 131, i32 %557)  ; LegacyF16ToF32(value)
  %559 = fmul fast float %558, 0x3F50624DE0000000
  %560 = add i32 %51, 88
  %561 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %560, i32 undef)  ; BufferLoad(srv,index,wot)
  %562 = extractvalue %dx.types.ResRet.i32 %561, 0
  %563 = lshr i32 %562, 16
  %564 = and i32 %563, 255
  %565 = lshr i32 %562, 24
  %566 = add i32 %51, 292
  %567 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %566, i32 undef)  ; BufferLoad(srv,index,wot)
  %568 = extractvalue %dx.types.ResRet.i32 %567, 0
  %569 = and i32 %568, 65535
  %570 = call float @dx.op.legacyF16ToF32(i32 131, i32 %569)  ; LegacyF16ToF32(value)
  %571 = lshr i32 %568, 16
  %572 = call float @dx.op.legacyF16ToF32(i32 131, i32 %571)  ; LegacyF16ToF32(value)
  %573 = add i32 %51, 32
  %574 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %573, i32 undef)  ; BufferLoad(srv,index,wot)
  %575 = extractvalue %dx.types.ResRet.i32 %574, 0
  %576 = lshr i32 %575, 22
  %577 = shl nuw nsw i32 %576, 5
  %578 = call float @dx.op.legacyF16ToF32(i32 131, i32 %577)  ; LegacyF16ToF32(value)
  %579 = shl i32 %575, 4
  %580 = and i32 %579, 32752
  %581 = call float @dx.op.legacyF16ToF32(i32 131, i32 %580)  ; LegacyF16ToF32(value)
  %582 = lshr i32 %575, 7
  %583 = and i32 %582, 32752
  %584 = call float @dx.op.legacyF16ToF32(i32 131, i32 %583)  ; LegacyF16ToF32(value)
  %585 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %586 = extractvalue %dx.types.CBufRet.f32 %585, 3
  %587 = fmul fast float %586, 1.000000e+03
  %588 = fmul fast float %346, %587
  %589 = call float @dx.op.unary.f32(i32 22, float %588)  ; Frc(value)
  %590 = fadd fast float %589, %336
  %591 = fmul fast float %347, %587
  %592 = call float @dx.op.unary.f32(i32 22, float %591)  ; Frc(value)
  %593 = fadd fast float %592, %338
  %594 = fmul fast float %559, %587
  %595 = call float @dx.op.unary.f32(i32 22, float %594)  ; Frc(value)
  %596 = fmul fast float %595, 0x401921FB60000000
  %597 = fadd fast float %596, %578
  %598 = call float @dx.op.unary.f32(i32 13, float %597)  ; Sin(value)
  %599 = call float @dx.op.unary.f32(i32 12, float %597)  ; Cos(value)
  %600 = fsub fast float -0.000000e+00, %598
  %601 = fadd fast float %552, -5.000000e-01
  %602 = fadd fast float %553, -5.000000e-01
  %603 = fmul fast float %570, %601
  %604 = fmul fast float %572, %602
  %605 = fadd fast float %603, 5.000000e-01
  %606 = fadd fast float %604, 5.000000e-01
  %607 = fmul fast float %581, %605
  %608 = fmul fast float %584, %606
  %609 = fmul fast float %599, %607
  %610 = call float @dx.op.tertiary.f32(i32 46, float %600, float %608, float %609)  ; FMad(a,b,c)
  %611 = fmul fast float %598, %607
  %612 = call float @dx.op.tertiary.f32(i32 46, float %599, float %608, float %611)  ; FMad(a,b,c)
  %613 = fadd fast float %590, %610
  %614 = fadd fast float %593, %612
  %615 = icmp ugt i32 %564, 1
  %616 = icmp ugt i32 %562, 33554431
  %617 = or i1 %616, %615
  br i1 %617, label %618, label %643

; <label>:618                                     ; preds = %545
  %619 = add i32 %51, 228
  %620 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %619, i32 undef)  ; BufferLoad(srv,index,wot)
  %621 = extractvalue %dx.types.ResRet.i32 %620, 0
  %622 = lshr i32 %621, 16
  %623 = call float @dx.op.legacyF16ToF32(i32 131, i32 %622)  ; LegacyF16ToF32(value)
  %624 = fmul fast float %586, %623
  %625 = call float @dx.op.unary.f32(i32 22, float %624)  ; Frc(value)
  %626 = mul nuw nsw i32 %564, %565
  %627 = uitofp i32 %626 to float
  %628 = fmul fast float %625, %627
  %629 = call float @dx.op.unary.f32(i32 27, float %628)  ; Round_ni(value)
  %630 = fptoui float %629 to i32
  %631 = urem i32 %630, %564
  %632 = udiv i32 %630, %565
  %633 = call float @dx.op.unary.f32(i32 22, float %613)  ; Frc(value)
  %634 = call float @dx.op.unary.f32(i32 22, float %614)  ; Frc(value)
  %635 = uitofp i32 %631 to float
  %636 = uitofp i32 %632 to float
  %637 = fadd fast float %633, %635
  %638 = fadd fast float %634, %636
  %639 = uitofp i32 %564 to float
  %640 = uitofp i32 %565 to float
  %641 = fdiv fast float %637, %639
  %642 = fdiv fast float %638, %640
  br label %643

; <label>:643                                     ; preds = %618, %545
  %644 = phi float [ %641, %618 ], [ %613, %545 ]
  %645 = phi float [ %642, %618 ], [ %614, %545 ]
  %646 = and i32 %539, 256
  %647 = icmp eq i32 %646, 0
  br i1 %647, label %694, label %648

; <label>:648                                     ; preds = %643
  %649 = add i32 %51, 488
  %650 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %649, i32 undef)  ; BufferLoad(srv,index,wot)
  %651 = extractvalue %dx.types.ResRet.i32 %650, 0
  %652 = add i32 %651, 0
  %653 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %652, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %654 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %653, %dx.types.Handle %108, float %644, float %645, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %655 = extractvalue %dx.types.ResRet.f32 %654, 0
  %656 = add i32 %51, 100
  %657 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %656, i32 undef)  ; BufferLoad(srv,index,wot)
  %658 = extractvalue %dx.types.ResRet.i32 %657, 0
  %659 = shl i32 %658, 4
  %660 = and i32 %659, 32752
  %661 = call float @dx.op.legacyF16ToF32(i32 131, i32 %660)  ; LegacyF16ToF32(value)
  %662 = lshr i32 %658, 7
  %663 = and i32 %662, 32752
  %664 = call float @dx.op.legacyF16ToF32(i32 131, i32 %663)  ; LegacyF16ToF32(value)
  %665 = fsub fast float 1.000000e+00, %506
  %666 = call float @dx.op.binary.f32(i32 35, float %665, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %667 = bitcast float %506 to i32
  %668 = sitofp i32 %667 to float
  %669 = fadd fast float %668, 0xC1CFBF8940000000
  %670 = fmul fast float %664, %669
  %671 = fadd fast float %670, 0x41CFBF8940000000
  %672 = fptosi float %671 to i32
  %673 = bitcast i32 %672 to float
  %674 = bitcast float %666 to i32
  %675 = sitofp i32 %674 to float
  %676 = fadd fast float %675, 0xC1CFBF8940000000
  %677 = fmul fast float %676, %664
  %678 = fadd fast float %677, 0x41CFBF8940000000
  %679 = fptosi float %678 to i32
  %680 = bitcast i32 %679 to float
  %681 = fmul fast float %673, %661
  %682 = fmul fast float %680, %661
  %683 = fsub fast float %666, %681
  %684 = fadd fast float %682, %666
  %685 = call float @dx.op.unary.f32(i32 7, float %683)  ; Saturate(value)
  %686 = call float @dx.op.unary.f32(i32 7, float %684)  ; Saturate(value)
  %687 = fsub fast float %655, %685
  %688 = fsub fast float %686, %685
  %689 = bitcast float %688 to i32
  %690 = sub nsw i32 2129859010, %689
  %691 = bitcast i32 %690 to float
  %692 = fmul fast float %691, %687
  %693 = call float @dx.op.unary.f32(i32 7, float %692)  ; Saturate(value)
  br label %694

; <label>:694                                     ; preds = %648, %643
  %695 = phi float [ %693, %648 ], [ %506, %643 ]
  %696 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %537, i32 undef)  ; BufferLoad(srv,index,wot)
  %697 = extractvalue %dx.types.ResRet.i32 %696, 0
  %698 = and i32 %697, 128
  %699 = icmp eq i32 %698, 0
  br i1 %699, label %716, label %700

; <label>:700                                     ; preds = %694
  %701 = add i32 %51, 472
  %702 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %701, i32 undef)  ; BufferLoad(srv,index,wot)
  %703 = extractvalue %dx.types.ResRet.i32 %702, 0
  %704 = add i32 %703, 0
  %705 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %704, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %706 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %705, %dx.types.Handle %108, float %644, float %645, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %707 = extractvalue %dx.types.ResRet.f32 %706, 0
  %708 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %537, i32 undef)  ; BufferLoad(srv,index,wot)
  %709 = extractvalue %dx.types.ResRet.i32 %708, 0
  %710 = and i32 %709, 524288
  %711 = icmp ne i32 %710, 0
  %712 = fcmp fast ogt float %707, 0x3FE0101020000000
  %713 = select i1 %712, float 1.000000e+00, float 0.000000e+00
  %714 = select i1 %711, float %713, float %707
  %715 = fmul fast float %714, %695
  br label %716

; <label>:716                                     ; preds = %700, %694
  %717 = phi float [ %715, %700 ], [ %695, %694 ]
  %718 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %537, i32 undef)  ; BufferLoad(srv,index,wot)
  %719 = extractvalue %dx.types.ResRet.i32 %718, 0
  %720 = and i32 %719, 16
  %721 = icmp eq i32 %720, 0
  br i1 %721, label %920, label %722

; <label>:722                                     ; preds = %716
  %723 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %560, i32 undef)  ; BufferLoad(srv,index,wot)
  %724 = extractvalue %dx.types.ResRet.i32 %723, 0
  %725 = add i32 %51, 424
  %726 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %725, i32 undef)  ; BufferLoad(srv,index,wot)
  %727 = extractvalue %dx.types.ResRet.i32 %726, 0
  %728 = add i32 %727, 0
  %729 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %728, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %730 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %729, %dx.types.Handle %107, float %644, float %645, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %731 = extractvalue %dx.types.ResRet.f32 %730, 0
  %732 = extractvalue %dx.types.ResRet.f32 %730, 1
  %733 = extractvalue %dx.types.ResRet.f32 %730, 2
  %734 = extractvalue %dx.types.ResRet.f32 %730, 3
  %735 = and i32 %724, 255
  %736 = uitofp i32 %735 to float
  %737 = lshr i32 %724, 8
  %738 = and i32 %737, 255
  %739 = uitofp i32 %738 to float
  %740 = fmul fast float %734, %736
  %741 = fadd fast float %740, %739
  %742 = fmul fast float %741, 0x3F70101000000000
  %743 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %537, i32 undef)  ; BufferLoad(srv,index,wot)
  %744 = extractvalue %dx.types.ResRet.i32 %743, 0
  %745 = and i32 %744, 512
  %746 = icmp eq i32 %745, 0
  br i1 %746, label %755, label %747

; <label>:747                                     ; preds = %722
  %748 = add i32 %51, 504
  %749 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %748, i32 undef)  ; BufferLoad(srv,index,wot)
  %750 = extractvalue %dx.types.ResRet.i32 %749, 0
  %751 = add i32 %750, 0
  %752 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %751, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %753 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %752, %dx.types.Handle %108, float %644, float %645, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %754 = extractvalue %dx.types.ResRet.f32 %753, 0
  br label %755

; <label>:755                                     ; preds = %747, %722
  %756 = phi float [ %754, %747 ], [ 1.000000e+00, %722 ]
  %757 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %537, i32 undef)  ; BufferLoad(srv,index,wot)
  %758 = extractvalue %dx.types.ResRet.i32 %757, 0
  %759 = and i32 %758, 33554432
  %760 = icmp eq i32 %759, 0
  br i1 %760, label %867, label %761

; <label>:761                                     ; preds = %755
  %762 = add i32 %51, 224
  %763 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %762, i32 undef)  ; BufferLoad(srv,index,wot)
  %764 = extractvalue %dx.types.ResRet.i32 %763, 0
  %765 = and i32 %764, 65535
  %766 = call float @dx.op.legacyF16ToF32(i32 131, i32 %765)  ; LegacyF16ToF32(value)
  %767 = lshr i32 %764, 16
  %768 = call float @dx.op.legacyF16ToF32(i32 131, i32 %767)  ; LegacyF16ToF32(value)
  %769 = add i32 %51, 228
  %770 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %769, i32 undef)  ; BufferLoad(srv,index,wot)
  %771 = extractvalue %dx.types.ResRet.i32 %770, 0
  %772 = and i32 %771, 65535
  %773 = call float @dx.op.legacyF16ToF32(i32 131, i32 %772)  ; LegacyF16ToF32(value)
  %774 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %318, i32 undef)  ; BufferLoad(srv,index,wot)
  %775 = extractvalue %dx.types.ResRet.i32 %774, 0
  %776 = lshr i32 %775, 24
  %777 = uitofp i32 %776 to float
  %778 = fmul fast float %777, 0x3F70101020000000
  %779 = and i32 %775, 255
  %780 = uitofp i32 %779 to float
  %781 = fmul fast float %780, 0x3F70101020000000
  %782 = lshr i32 %775, 8
  %783 = and i32 %782, 255
  %784 = uitofp i32 %783 to float
  %785 = fmul fast float %784, 0x3F70101020000000
  %786 = lshr i32 %775, 16
  %787 = and i32 %786, 255
  %788 = uitofp i32 %787 to float
  %789 = fmul fast float %788, 0x3F70101020000000
  %790 = add i32 %51, 220
  %791 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %790, i32 undef)  ; BufferLoad(srv,index,wot)
  %792 = extractvalue %dx.types.ResRet.i32 %791, 0
  %793 = lshr i32 %792, 24
  %794 = uitofp i32 %793 to float
  %795 = fmul fast float %794, 0x3F70101020000000
  %796 = and i32 %792, 255
  %797 = uitofp i32 %796 to float
  %798 = fmul fast float %797, 0x3F70101020000000
  %799 = lshr i32 %792, 8
  %800 = and i32 %799, 255
  %801 = uitofp i32 %800 to float
  %802 = fmul fast float %801, 0x3F70101020000000
  %803 = lshr i32 %792, 16
  %804 = and i32 %803, 255
  %805 = uitofp i32 %804 to float
  %806 = fmul fast float %805, 0x3F70101020000000
  %807 = bitcast float %731 to i32
  %808 = ashr i32 %807, 1
  %809 = sub nsw i32 1597463174, %808
  %810 = bitcast i32 %809 to float
  %811 = fmul fast float %731, 5.000000e-01
  %812 = fmul fast float %810, %810
  %813 = fmul fast float %812, %811
  %814 = fsub fast float 1.500000e+00, %813
  %815 = fmul fast float %810, %731
  %816 = fmul fast float %815, %814
  %817 = bitcast float %732 to i32
  %818 = ashr i32 %817, 1
  %819 = sub nsw i32 1597463174, %818
  %820 = bitcast i32 %819 to float
  %821 = fmul fast float %732, 5.000000e-01
  %822 = fmul fast float %820, %820
  %823 = fmul fast float %822, %821
  %824 = fsub fast float 1.500000e+00, %823
  %825 = fmul fast float %820, %732
  %826 = fmul fast float %825, %824
  %827 = bitcast float %733 to i32
  %828 = ashr i32 %827, 1
  %829 = sub nsw i32 1597463174, %828
  %830 = bitcast i32 %829 to float
  %831 = fmul fast float %733, 5.000000e-01
  %832 = fmul fast float %830, %830
  %833 = fmul fast float %832, %831
  %834 = fsub fast float 1.500000e+00, %833
  %835 = fmul fast float %830, %733
  %836 = fmul fast float %835, %834
  %837 = fsub fast float %816, %798
  %838 = fsub fast float %826, %802
  %839 = fsub fast float %836, %806
  %840 = fmul fast float %837, %766
  %841 = fmul fast float %838, %768
  %842 = fmul fast float %839, %773
  %843 = fadd fast float %840, %781
  %844 = fadd fast float %841, %785
  %845 = fadd fast float %842, %789
  %846 = call float @dx.op.unary.f32(i32 7, float %843)  ; Saturate(value)
  %847 = call float @dx.op.unary.f32(i32 7, float %844)  ; Saturate(value)
  %848 = call float @dx.op.unary.f32(i32 7, float %845)  ; Saturate(value)
  %849 = fmul fast float %846, %846
  %850 = fmul fast float %847, %847
  %851 = fmul fast float %848, %848
  %852 = fsub fast float %849, %731
  %853 = fsub fast float %850, %732
  %854 = fsub fast float %851, %733
  %855 = fmul fast float %852, %756
  %856 = fmul fast float %853, %756
  %857 = fmul fast float %854, %756
  %858 = fadd fast float %855, %731
  %859 = fadd fast float %856, %732
  %860 = fadd fast float %857, %733
  %861 = fadd fast float %778, %742
  %862 = fsub fast float %861, %795
  %863 = call float @dx.op.unary.f32(i32 7, float %862)  ; Saturate(value)
  %864 = fsub fast float %863, %742
  %865 = fmul fast float %864, %756
  %866 = fadd fast float %865, %742
  br label %920

; <label>:867                                     ; preds = %755
  %868 = and i32 %758, 134217728
  %869 = icmp eq i32 %868, 0
  br i1 %869, label %904, label %870

; <label>:870                                     ; preds = %867
  %871 = call float @dx.op.unary.f32(i32 24, float %323)  ; Sqrt(value)
  %872 = call float @dx.op.unary.f32(i32 24, float %327)  ; Sqrt(value)
  %873 = call float @dx.op.unary.f32(i32 24, float %331)  ; Sqrt(value)
  %874 = fadd fast float %871, -5.000000e-01
  %875 = fadd fast float %872, -5.000000e-01
  %876 = fadd fast float %873, -5.000000e-01
  %877 = fmul fast float %874, %756
  %878 = fmul fast float %875, %756
  %879 = fmul fast float %876, %756
  %880 = fadd fast float %877, 5.000000e-01
  %881 = fadd fast float %878, 5.000000e-01
  %882 = fadd fast float %879, 5.000000e-01
  %883 = call float @dx.op.unary.f32(i32 24, float %731)  ; Sqrt(value)
  %884 = call float @dx.op.unary.f32(i32 24, float %732)  ; Sqrt(value)
  %885 = call float @dx.op.unary.f32(i32 24, float %733)  ; Sqrt(value)
  %886 = fmul fast float %880, 2.000000e+00
  %887 = fsub fast float 1.000000e+00, %886
  %888 = fmul fast float %887, %883
  %889 = fadd fast float %888, %886
  %890 = fmul fast float %889, %883
  %891 = fmul fast float %881, 2.000000e+00
  %892 = fsub fast float 1.000000e+00, %891
  %893 = fmul fast float %892, %884
  %894 = fadd fast float %893, %891
  %895 = fmul fast float %894, %884
  %896 = fmul fast float %882, 2.000000e+00
  %897 = fsub fast float 1.000000e+00, %896
  %898 = fmul fast float %897, %885
  %899 = fadd fast float %898, %896
  %900 = fmul fast float %899, %885
  %901 = fmul fast float %890, %890
  %902 = fmul fast float %895, %895
  %903 = fmul fast float %900, %900
  br label %920

; <label>:904                                     ; preds = %867
  %905 = fmul fast float %323, %323
  %906 = fmul fast float %327, %327
  %907 = fmul fast float %331, %331
  %908 = fadd fast float %905, -1.000000e+00
  %909 = fadd fast float %906, -1.000000e+00
  %910 = fadd fast float %907, -1.000000e+00
  %911 = fmul fast float %756, %908
  %912 = fmul fast float %756, %909
  %913 = fmul fast float %756, %910
  %914 = fadd fast float %911, 1.000000e+00
  %915 = fadd fast float %912, 1.000000e+00
  %916 = fadd fast float %913, 1.000000e+00
  %917 = fmul fast float %914, %731
  %918 = fmul fast float %915, %732
  %919 = fmul fast float %916, %733
  br label %920

; <label>:920                                     ; preds = %904, %870, %761, %716
  %921 = phi float [ %866, %761 ], [ %742, %870 ], [ %742, %904 ], [ 0x3FA23C0BE0000000, %716 ]
  %922 = phi float [ %858, %761 ], [ %901, %870 ], [ %917, %904 ], [ 1.000000e+00, %716 ]
  %923 = phi float [ %859, %761 ], [ %902, %870 ], [ %918, %904 ], [ 1.000000e+00, %716 ]
  %924 = phi float [ %860, %761 ], [ %903, %870 ], [ %919, %904 ], [ 1.000000e+00, %716 ]
  %925 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %926 = extractvalue %dx.types.CBufRet.i32 %925, 1
  %927 = and i32 %926, 1
  %928 = icmp ne i32 %927, 0
  %929 = add i32 %51, 356
  %930 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %929, i32 undef)  ; BufferLoad(srv,index,wot)
  %931 = extractvalue %dx.types.ResRet.i32 %930, 0
  %932 = and i32 %931, 32
  %933 = icmp ne i32 %932, 0
  %934 = and i1 %928, %933
  %935 = select i1 %934, float 1.000000e+00, float %922
  %936 = select i1 %934, float 0x3FD3333340000000, float %923
  %937 = select i1 %934, float 0x3FD3333340000000, float %924
  %938 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %537, i32 undef)  ; BufferLoad(srv,index,wot)
  %939 = extractvalue %dx.types.ResRet.i32 %938, 0
  %940 = and i32 %939, 32
  %941 = icmp eq i32 %940, 0
  br i1 %941, label %1014, label %942

; <label>:942                                     ; preds = %920
  %943 = add i32 %51, 92
  %944 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %943, i32 undef)  ; BufferLoad(srv,index,wot)
  %945 = extractvalue %dx.types.ResRet.i32 %944, 0
  %946 = add i32 %51, 440
  %947 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %946, i32 undef)  ; BufferLoad(srv,index,wot)
  %948 = extractvalue %dx.types.ResRet.i32 %947, 0
  %949 = add i32 %948, 0
  %950 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %949, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %951 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %950, %dx.types.Handle %107, float %644, float %645, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %952 = extractvalue %dx.types.ResRet.f32 %951, 0
  %953 = extractvalue %dx.types.ResRet.f32 %951, 1
  %954 = extractvalue %dx.types.ResRet.f32 %951, 2
  %955 = extractvalue %dx.types.ResRet.f32 %951, 3
  %956 = and i32 %945, 255
  %957 = uitofp i32 %956 to float
  %958 = lshr i32 %945, 8
  %959 = and i32 %958, 255
  %960 = uitofp i32 %959 to float
  %961 = lshr i32 %945, 16
  %962 = and i32 %961, 255
  %963 = uitofp i32 %962 to float
  %964 = fmul fast float %963, 0x3F70101000000000
  %965 = fmul fast float %952, %957
  %966 = fadd fast float %965, %960
  %967 = fmul fast float %966, 0x3F70101000000000
  %968 = fadd fast float %953, -5.000000e-01
  %969 = fadd fast float %955, -5.000000e-01
  %970 = fmul fast float %968, %964
  %971 = fmul fast float %969, %964
  %972 = fadd fast float %970, 5.000000e-01
  %973 = fadd fast float %971, 5.000000e-01
  %974 = fmul fast float %972, 2.000000e+00
  %975 = fadd fast float %974, -1.000000e+00
  %976 = fmul fast float %973, 2.000000e+00
  %977 = fadd fast float %976, -1.000000e+00
  %978 = fadd fast float %975, %977
  %979 = fmul fast float %978, 5.000000e-01
  %980 = fsub fast float %975, %977
  %981 = fmul fast float %980, 5.000000e-01
  %982 = call float @dx.op.unary.f32(i32 6, float %979)  ; FAbs(value)
  %983 = fsub fast float 1.000000e+00, %982
  %984 = call float @dx.op.unary.f32(i32 6, float %981)  ; FAbs(value)
  %985 = fsub fast float %983, %984
  %986 = call float @dx.op.dot3.f32(i32 55, float %979, float %981, float %985, float %979, float %981, float %985)  ; Dot3(ax,ay,az,bx,by,bz)
  %987 = call float @dx.op.unary.f32(i32 25, float %986)  ; Rsqrt(value)
  %988 = fmul fast float %979, %987
  %989 = fmul fast float %981, %987
  %990 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %537, i32 undef)  ; BufferLoad(srv,index,wot)
  %991 = extractvalue %dx.types.ResRet.i32 %990, 0
  %992 = and i32 %991, 67108864
  %993 = icmp eq i32 %992, 0
  br i1 %993, label %1010, label %994

; <label>:994                                     ; preds = %942
  %995 = add i32 %51, 280
  %996 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %995, i32 undef)  ; BufferLoad(srv,index,wot)
  %997 = extractvalue %dx.types.ResRet.i32 %996, 0
  %998 = and i32 %997, 65535
  %999 = call float @dx.op.legacyF16ToF32(i32 131, i32 %998)  ; LegacyF16ToF32(value)
  %1000 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %554, i32 undef)  ; BufferLoad(srv,index,wot)
  %1001 = extractvalue %dx.types.ResRet.i32 %1000, 0
  %1002 = and i32 %1001, 65535
  %1003 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1002)  ; LegacyF16ToF32(value)
  %1004 = lshr i32 %997, 16
  %1005 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1004)  ; LegacyF16ToF32(value)
  %1006 = fsub fast float %967, %1005
  %1007 = fmul fast float %1006, %999
  %1008 = fadd fast float %1007, %1003
  %1009 = call float @dx.op.unary.f32(i32 7, float %1008)  ; Saturate(value)
  br label %1010

; <label>:1010                                    ; preds = %994, %942
  %1011 = phi float [ %1009, %994 ], [ %967, %942 ]
  %1012 = call float @dx.op.dot2.f32(i32 54, float %988, float %989, float %548, float %549)  ; Dot2(ax,ay,bx,by)
  %1013 = call float @dx.op.dot2.f32(i32 54, float %988, float %989, float %550, float %551)  ; Dot2(ax,ay,bx,by)
  br label %1014

; <label>:1014                                    ; preds = %1010, %920
  %1015 = phi float [ %1011, %1010 ], [ 0x3FD6666660000000, %920 ]
  %1016 = phi float [ %1012, %1010 ], [ 0.000000e+00, %920 ]
  %1017 = phi float [ %1013, %1010 ], [ 0.000000e+00, %920 ]
  %1018 = phi float [ %954, %1010 ], [ 1.000000e+00, %920 ]
  %1019 = add i32 %51, 160
  %1020 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1019, i32 undef)  ; BufferLoad(srv,index,wot)
  %1021 = extractvalue %dx.types.ResRet.i32 %1020, 0
  %1022 = lshr i32 %1021, 22
  %1023 = shl nuw nsw i32 %1022, 5
  %1024 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1023)  ; LegacyF16ToF32(value)
  %1025 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %537, i32 undef)  ; BufferLoad(srv,index,wot)
  %1026 = extractvalue %dx.types.ResRet.i32 %1025, 0
  %1027 = and i32 %1026, 64
  %1028 = icmp eq i32 %1027, 0
  br i1 %1028, label %1062, label %1029

; <label>:1029                                    ; preds = %1014
  %1030 = add i32 %51, 456
  %1031 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1030, i32 undef)  ; BufferLoad(srv,index,wot)
  %1032 = extractvalue %dx.types.ResRet.i32 %1031, 0
  %1033 = add i32 %1032, 0
  %1034 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1033, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1035 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %537, i32 undef)  ; BufferLoad(srv,index,wot)
  %1036 = extractvalue %dx.types.ResRet.i32 %1035, 0
  %1037 = and i32 %1036, 131072
  %1038 = icmp eq i32 %1037, 0
  %1039 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1034, %dx.types.Handle %107, float %644, float %645, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1040 = extractvalue %dx.types.ResRet.f32 %1039, 0
  %1041 = extractvalue %dx.types.ResRet.f32 %1039, 1
  %1042 = extractvalue %dx.types.ResRet.f32 %1039, 2
  %1043 = fmul fast float %1040, %311
  %1044 = fmul fast float %1041, %314
  %1045 = fmul fast float %1042, %317
  br i1 %1038, label %1052, label %1046

; <label>:1046                                    ; preds = %1029
  %1047 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1048 = extractvalue %dx.types.CBufRet.f32 %1047, 0
  %1049 = fmul fast float %1048, %1043
  %1050 = fmul fast float %1048, %1044
  %1051 = fmul fast float %1048, %1045
  br label %1052

; <label>:1052                                    ; preds = %1046, %1029
  %1053 = phi float [ %1049, %1046 ], [ %1043, %1029 ]
  %1054 = phi float [ %1050, %1046 ], [ %1044, %1029 ]
  %1055 = phi float [ %1051, %1046 ], [ %1045, %1029 ]
  %1056 = fmul fast float %1053, %1024
  %1057 = select i1 %294, float %1056, float %1053
  %1058 = call float @dx.op.dot3.f32(i32 55, float %1057, float %1054, float %1055, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1059 = select i1 %294, float 0.000000e+00, float %1053
  %1060 = select i1 %294, float %1058, float %1054
  %1061 = select i1 %294, float 0.000000e+00, float %1055
  br label %1062

; <label>:1062                                    ; preds = %1052, %1014
  %1063 = phi float [ %1059, %1052 ], [ 0.000000e+00, %1014 ]
  %1064 = phi float [ %1060, %1052 ], [ 0.000000e+00, %1014 ]
  %1065 = phi float [ %1061, %1052 ], [ 0.000000e+00, %1014 ]
  %1066 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %537, i32 undef)  ; BufferLoad(srv,index,wot)
  %1067 = extractvalue %dx.types.ResRet.i32 %1066, 0
  %1068 = and i32 %1067, 1024
  %1069 = icmp eq i32 %1068, 0
  br i1 %1069, label %1100, label %1070

; <label>:1070                                    ; preds = %1062
  %1071 = add i32 %51, 152
  %1072 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1071, i32 undef)  ; BufferLoad(srv,index,wot)
  %1073 = extractvalue %dx.types.ResRet.i32 %1072, 0
  %1074 = and i32 %1073, 255
  %1075 = uitofp i32 %1074 to float
  %1076 = fmul fast float %1075, 0x3F70101020000000
  %1077 = lshr i32 %1073, 8
  %1078 = and i32 %1077, 255
  %1079 = uitofp i32 %1078 to float
  %1080 = fmul fast float %1079, 0x3F70101020000000
  %1081 = lshr i32 %1073, 16
  %1082 = and i32 %1081, 255
  %1083 = uitofp i32 %1082 to float
  %1084 = fmul fast float %1083, 0x3F70101020000000
  %1085 = fmul fast float %1076, %1076
  %1086 = fmul fast float %1080, %1080
  %1087 = fmul fast float %1084, %1084
  %1088 = add i32 %51, 520
  %1089 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1088, i32 undef)  ; BufferLoad(srv,index,wot)
  %1090 = extractvalue %dx.types.ResRet.i32 %1089, 0
  %1091 = add i32 %1090, 0
  %1092 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1091, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1093 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1092, %dx.types.Handle %108, float %644, float %645, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1094 = extractvalue %dx.types.ResRet.f32 %1093, 0
  %1095 = extractvalue %dx.types.ResRet.f32 %1093, 1
  %1096 = extractvalue %dx.types.ResRet.f32 %1093, 2
  %1097 = fmul fast float %1085, %1094
  %1098 = fmul fast float %1086, %1095
  %1099 = fmul fast float %1087, %1096
  br label %1100

; <label>:1100                                    ; preds = %1070, %1062
  %1101 = phi float [ %1097, %1070 ], [ 0.000000e+00, %1062 ]
  %1102 = phi float [ %1098, %1070 ], [ 0.000000e+00, %1062 ]
  %1103 = phi float [ %1099, %1070 ], [ 0.000000e+00, %1062 ]
  %1104 = fcmp fast ogt float %1101, 0.000000e+00
  %1105 = fcmp fast ogt float %1102, 0.000000e+00
  %1106 = fcmp fast ogt float %1103, 0.000000e+00
  %1107 = call float @dx.op.unary.f32(i32 23, float %1101)  ; Log(value)
  %1108 = call float @dx.op.unary.f32(i32 23, float %1102)  ; Log(value)
  %1109 = call float @dx.op.unary.f32(i32 23, float %1103)  ; Log(value)
  %1110 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1019, i32 undef)  ; BufferLoad(srv,index,wot)
  %1111 = extractvalue %dx.types.ResRet.i32 %1110, 0
  %1112 = lshr i32 %1111, 7
  %1113 = and i32 %1112, 32752
  %1114 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1113)  ; LegacyF16ToF32(value)
  %1115 = fmul fast float %1107, 0xBFE62E4300000000
  %1116 = fmul fast float %1115, %1114
  %1117 = fmul fast float %1108, 0xBFE62E4300000000
  %1118 = fmul fast float %1117, %1114
  %1119 = fmul fast float %1109, 0xBFE62E4300000000
  %1120 = fmul fast float %1119, %1114
  %1121 = select i1 %1104, float %1116, float 1.270000e+02
  %1122 = select i1 %1105, float %1118, float 1.270000e+02
  %1123 = select i1 %1106, float %1120, float 1.270000e+02
  %1124 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %537, i32 undef)  ; BufferLoad(srv,index,wot)
  %1125 = extractvalue %dx.types.ResRet.i32 %1124, 0
  %1126 = and i32 %1125, 10240
  %1127 = icmp eq i32 %1126, 0
  br i1 %1127, label %1172, label %1128

; <label>:1128                                    ; preds = %1100
  %1129 = add i32 %51, 536
  %1130 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1129, i32 undef)  ; BufferLoad(srv,index,wot)
  %1131 = extractvalue %dx.types.ResRet.i32 %1130, 0
  %1132 = add i32 %1131, 0
  %1133 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1132, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1134 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1133, %dx.types.Handle %108, float %644, float %645, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1135 = extractvalue %dx.types.ResRet.f32 %1134, 1
  %1136 = extractvalue %dx.types.ResRet.f32 %1134, 3
  %1137 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %537, i32 undef)  ; BufferLoad(srv,index,wot)
  %1138 = extractvalue %dx.types.ResRet.i32 %1137, 0
  %1139 = and i32 %1138, 1048576
  %1140 = icmp ne i32 %1139, 0
  %1141 = and i32 %1138, 8192
  %1142 = icmp eq i32 %1141, 0
  br i1 %1142, label %1158, label %1143

; <label>:1143                                    ; preds = %1128
  %1144 = extractvalue %dx.types.ResRet.f32 %1134, 2
  %1145 = select i1 %1140, float %1144, float %1135
  %1146 = extractvalue %dx.types.ResRet.f32 %1134, 0
  %1147 = select i1 %1140, float %1146, float %1135
  %1148 = add i32 %51, 96
  %1149 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1148, i32 undef)  ; BufferLoad(srv,index,wot)
  %1150 = extractvalue %dx.types.ResRet.i32 %1149, 0
  %1151 = lshr i32 %1150, 16
  %1152 = and i32 %1151, 255
  %1153 = uitofp i32 %1152 to float
  %1154 = fmul fast float %1153, 0x3F80101020000000
  %1155 = fmul fast float %1154, %1147
  %1156 = fmul fast float %1154, %1135
  %1157 = fmul fast float %1154, %1145
  br label %1158

; <label>:1158                                    ; preds = %1143, %1128
  %1159 = phi float [ %1155, %1143 ], [ 0.000000e+00, %1128 ]
  %1160 = phi float [ %1156, %1143 ], [ 0.000000e+00, %1128 ]
  %1161 = phi float [ %1157, %1143 ], [ 0.000000e+00, %1128 ]
  %1162 = and i32 %1138, 2048
  %1163 = icmp eq i32 %1162, 0
  br i1 %1163, label %1172, label %1164

; <label>:1164                                    ; preds = %1158
  %1165 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1019, i32 undef)  ; BufferLoad(srv,index,wot)
  %1166 = extractvalue %dx.types.ResRet.i32 %1165, 0
  %1167 = shl i32 %1166, 4
  %1168 = and i32 %1167, 32752
  %1169 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1168)  ; LegacyF16ToF32(value)
  %1170 = fmul fast float %1169, %1136
  %1171 = call float @dx.op.binary.f32(i32 35, float %1170, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1172

; <label>:1172                                    ; preds = %1164, %1158, %1100
  %1173 = phi float [ %1159, %1164 ], [ %1159, %1158 ], [ 0.000000e+00, %1100 ]
  %1174 = phi float [ %1160, %1164 ], [ %1160, %1158 ], [ 0.000000e+00, %1100 ]
  %1175 = phi float [ %1161, %1164 ], [ %1161, %1158 ], [ 0.000000e+00, %1100 ]
  %1176 = phi float [ %1171, %1164 ], [ 0x3F70101020000000, %1158 ], [ 0x3F70101020000000, %1100 ]
  %1177 = add i32 %51, 96
  %1178 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1177, i32 undef)  ; BufferLoad(srv,index,wot)
  %1179 = extractvalue %dx.types.ResRet.i32 %1178, 0
  %1180 = and i32 %1179, 255
  %1181 = uitofp i32 %1180 to float
  %1182 = lshr i32 %1179, 8
  %1183 = and i32 %1182, 255
  %1184 = uitofp i32 %1183 to float
  %1185 = call float @dx.op.dot3.f32(i32 55, float %935, float %936, float %937, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1186 = fmul fast float %1184, %1185
  %1187 = fadd fast float %1186, %1181
  %1188 = fmul fast float %1187, 0x3F70101020000000
  %1189 = call float @dx.op.unary.f32(i32 7, float %1188)  ; Saturate(value)
  br label %1190

; <label>:1190                                    ; preds = %1172, %530
  %1191 = phi float [ 0.000000e+00, %530 ], [ %1016, %1172 ]
  %1192 = phi float [ 0.000000e+00, %530 ], [ %1017, %1172 ]
  %1193 = phi float [ 0.000000e+00, %530 ], [ %935, %1172 ]
  %1194 = phi float [ 0.000000e+00, %530 ], [ %936, %1172 ]
  %1195 = phi float [ 0.000000e+00, %530 ], [ %937, %1172 ]
  %1196 = phi float [ 0.000000e+00, %530 ], [ %1063, %1172 ]
  %1197 = phi float [ 0.000000e+00, %530 ], [ %1064, %1172 ]
  %1198 = phi float [ 0.000000e+00, %530 ], [ %1065, %1172 ]
  %1199 = phi float [ 0.000000e+00, %530 ], [ %1121, %1172 ]
  %1200 = phi float [ 0.000000e+00, %530 ], [ %1122, %1172 ]
  %1201 = phi float [ 0.000000e+00, %530 ], [ %1123, %1172 ]
  %1202 = phi float [ 0.000000e+00, %530 ], [ %1173, %1172 ]
  %1203 = phi float [ 0.000000e+00, %530 ], [ %1174, %1172 ]
  %1204 = phi float [ 0.000000e+00, %530 ], [ %1175, %1172 ]
  %1205 = phi float [ 0.000000e+00, %530 ], [ %921, %1172 ]
  %1206 = phi float [ 0.000000e+00, %530 ], [ %717, %1172 ]
  %1207 = phi float [ 0.000000e+00, %530 ], [ %1015, %1172 ]
  %1208 = phi float [ 0.000000e+00, %530 ], [ %1018, %1172 ]
  %1209 = phi float [ 0.000000e+00, %530 ], [ %1176, %1172 ]
  %1210 = phi float [ 0.000000e+00, %530 ], [ %1189, %1172 ]
  br i1 %478, label %2133, label %1211

; <label>:1211                                    ; preds = %1190
  %1212 = icmp ult i32 %536, 2
  %1213 = add i32 %51, 40
  %1214 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1213, i32 undef)  ; BufferLoad(srv,index,wot)
  %1215 = extractvalue %dx.types.ResRet.i32 %1214, 0
  %1216 = add i32 %51, 44
  %1217 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1216, i32 undef)  ; BufferLoad(srv,index,wot)
  %1218 = extractvalue %dx.types.ResRet.i32 %1217, 0
  %1219 = or i32 %1218, %1215
  %1220 = icmp eq i32 %1219, 0
  br i1 %1220, label %2133, label %1221

; <label>:1221                                    ; preds = %1211
  %1222 = and i32 %1215, 262144
  %1223 = icmp ne i32 %1222, 0
  %1224 = select i1 %1223, float %57, float 1.000000e+00
  %1225 = select i1 %1223, float %58, float 0.000000e+00
  %1226 = select i1 %1223, float %59, float 0.000000e+00
  %1227 = select i1 %1223, float %60, float 1.000000e+00
  %1228 = select i1 %1223, float %61, float %89
  %1229 = select i1 %1223, float %62, float %90
  %1230 = add i32 %51, 300
  %1231 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1230, i32 undef)  ; BufferLoad(srv,index,wot)
  %1232 = extractvalue %dx.types.ResRet.i32 %1231, 0
  %1233 = lshr i32 %1232, 16
  %1234 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1233)  ; LegacyF16ToF32(value)
  %1235 = fmul fast float %1234, 0x3F50624DE0000000
  %1236 = add i32 %51, 104
  %1237 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1236, i32 undef)  ; BufferLoad(srv,index,wot)
  %1238 = extractvalue %dx.types.ResRet.i32 %1237, 0
  %1239 = lshr i32 %1238, 16
  %1240 = and i32 %1239, 255
  %1241 = lshr i32 %1238, 24
  %1242 = add i32 %51, 308
  %1243 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1242, i32 undef)  ; BufferLoad(srv,index,wot)
  %1244 = extractvalue %dx.types.ResRet.i32 %1243, 0
  %1245 = and i32 %1244, 65535
  %1246 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1245)  ; LegacyF16ToF32(value)
  %1247 = lshr i32 %1244, 16
  %1248 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1247)  ; LegacyF16ToF32(value)
  %1249 = add i32 %51, 48
  %1250 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1249, i32 undef)  ; BufferLoad(srv,index,wot)
  %1251 = extractvalue %dx.types.ResRet.i32 %1250, 0
  %1252 = lshr i32 %1251, 22
  %1253 = shl nuw nsw i32 %1252, 5
  %1254 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1253)  ; LegacyF16ToF32(value)
  %1255 = shl i32 %1251, 4
  %1256 = and i32 %1255, 32752
  %1257 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1256)  ; LegacyF16ToF32(value)
  %1258 = lshr i32 %1251, 7
  %1259 = and i32 %1258, 32752
  %1260 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1259)  ; LegacyF16ToF32(value)
  %1261 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1262 = extractvalue %dx.types.CBufRet.f32 %1261, 3
  %1263 = fmul fast float %1262, 1.000000e+03
  %1264 = fmul fast float %388, %1263
  %1265 = call float @dx.op.unary.f32(i32 22, float %1264)  ; Frc(value)
  %1266 = fadd fast float %1265, %378
  %1267 = fmul fast float %389, %1263
  %1268 = call float @dx.op.unary.f32(i32 22, float %1267)  ; Frc(value)
  %1269 = fadd fast float %1268, %380
  %1270 = fmul fast float %1235, %1263
  %1271 = call float @dx.op.unary.f32(i32 22, float %1270)  ; Frc(value)
  %1272 = fmul fast float %1271, 0x401921FB60000000
  %1273 = fadd fast float %1272, %1254
  %1274 = call float @dx.op.unary.f32(i32 13, float %1273)  ; Sin(value)
  %1275 = call float @dx.op.unary.f32(i32 12, float %1273)  ; Cos(value)
  %1276 = fsub fast float -0.000000e+00, %1274
  %1277 = fadd fast float %1228, -5.000000e-01
  %1278 = fadd fast float %1229, -5.000000e-01
  %1279 = fmul fast float %1246, %1277
  %1280 = fmul fast float %1248, %1278
  %1281 = fadd fast float %1279, 5.000000e-01
  %1282 = fadd fast float %1280, 5.000000e-01
  %1283 = fmul fast float %1257, %1281
  %1284 = fmul fast float %1260, %1282
  %1285 = fmul fast float %1275, %1283
  %1286 = call float @dx.op.tertiary.f32(i32 46, float %1276, float %1284, float %1285)  ; FMad(a,b,c)
  %1287 = fmul fast float %1274, %1283
  %1288 = call float @dx.op.tertiary.f32(i32 46, float %1275, float %1284, float %1287)  ; FMad(a,b,c)
  %1289 = fadd fast float %1266, %1286
  %1290 = fadd fast float %1269, %1288
  %1291 = icmp ugt i32 %1240, 1
  %1292 = icmp ugt i32 %1238, 33554431
  %1293 = or i1 %1292, %1291
  br i1 %1293, label %1294, label %1319

; <label>:1294                                    ; preds = %1221
  %1295 = add i32 %51, 244
  %1296 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1295, i32 undef)  ; BufferLoad(srv,index,wot)
  %1297 = extractvalue %dx.types.ResRet.i32 %1296, 0
  %1298 = lshr i32 %1297, 16
  %1299 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1298)  ; LegacyF16ToF32(value)
  %1300 = fmul fast float %1262, %1299
  %1301 = call float @dx.op.unary.f32(i32 22, float %1300)  ; Frc(value)
  %1302 = mul nuw nsw i32 %1240, %1241
  %1303 = uitofp i32 %1302 to float
  %1304 = fmul fast float %1301, %1303
  %1305 = call float @dx.op.unary.f32(i32 27, float %1304)  ; Round_ni(value)
  %1306 = fptoui float %1305 to i32
  %1307 = urem i32 %1306, %1240
  %1308 = udiv i32 %1306, %1241
  %1309 = call float @dx.op.unary.f32(i32 22, float %1289)  ; Frc(value)
  %1310 = call float @dx.op.unary.f32(i32 22, float %1290)  ; Frc(value)
  %1311 = uitofp i32 %1307 to float
  %1312 = uitofp i32 %1308 to float
  %1313 = fadd fast float %1309, %1311
  %1314 = fadd fast float %1310, %1312
  %1315 = uitofp i32 %1240 to float
  %1316 = uitofp i32 %1241 to float
  %1317 = fdiv fast float %1313, %1315
  %1318 = fdiv fast float %1314, %1316
  br label %1319

; <label>:1319                                    ; preds = %1294, %1221
  %1320 = phi float [ %1317, %1294 ], [ %1289, %1221 ]
  %1321 = phi float [ %1318, %1294 ], [ %1290, %1221 ]
  %1322 = and i32 %1215, 256
  %1323 = icmp eq i32 %1322, 0
  br i1 %1323, label %1370, label %1324

; <label>:1324                                    ; preds = %1319
  %1325 = add i32 %51, 492
  %1326 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1325, i32 undef)  ; BufferLoad(srv,index,wot)
  %1327 = extractvalue %dx.types.ResRet.i32 %1326, 0
  %1328 = add i32 %1327, 0
  %1329 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1328, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1330 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1329, %dx.types.Handle %108, float %1320, float %1321, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1331 = extractvalue %dx.types.ResRet.f32 %1330, 0
  %1332 = add i32 %51, 116
  %1333 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1332, i32 undef)  ; BufferLoad(srv,index,wot)
  %1334 = extractvalue %dx.types.ResRet.i32 %1333, 0
  %1335 = shl i32 %1334, 4
  %1336 = and i32 %1335, 32752
  %1337 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1336)  ; LegacyF16ToF32(value)
  %1338 = lshr i32 %1334, 7
  %1339 = and i32 %1338, 32752
  %1340 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1339)  ; LegacyF16ToF32(value)
  %1341 = fsub fast float 1.000000e+00, %533
  %1342 = call float @dx.op.binary.f32(i32 35, float %1341, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1343 = bitcast float %533 to i32
  %1344 = sitofp i32 %1343 to float
  %1345 = fadd fast float %1344, 0xC1CFBF8940000000
  %1346 = fmul fast float %1340, %1345
  %1347 = fadd fast float %1346, 0x41CFBF8940000000
  %1348 = fptosi float %1347 to i32
  %1349 = bitcast i32 %1348 to float
  %1350 = bitcast float %1342 to i32
  %1351 = sitofp i32 %1350 to float
  %1352 = fadd fast float %1351, 0xC1CFBF8940000000
  %1353 = fmul fast float %1352, %1340
  %1354 = fadd fast float %1353, 0x41CFBF8940000000
  %1355 = fptosi float %1354 to i32
  %1356 = bitcast i32 %1355 to float
  %1357 = fmul fast float %1349, %1337
  %1358 = fmul fast float %1356, %1337
  %1359 = fsub fast float %1342, %1357
  %1360 = fadd fast float %1358, %1342
  %1361 = call float @dx.op.unary.f32(i32 7, float %1359)  ; Saturate(value)
  %1362 = call float @dx.op.unary.f32(i32 7, float %1360)  ; Saturate(value)
  %1363 = fsub fast float %1331, %1361
  %1364 = fsub fast float %1362, %1361
  %1365 = bitcast float %1364 to i32
  %1366 = sub nsw i32 2129859010, %1365
  %1367 = bitcast i32 %1366 to float
  %1368 = fmul fast float %1367, %1363
  %1369 = call float @dx.op.unary.f32(i32 7, float %1368)  ; Saturate(value)
  br label %1370

; <label>:1370                                    ; preds = %1324, %1319
  %1371 = phi float [ %1369, %1324 ], [ %533, %1319 ]
  %1372 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1213, i32 undef)  ; BufferLoad(srv,index,wot)
  %1373 = extractvalue %dx.types.ResRet.i32 %1372, 0
  %1374 = and i32 %1373, 128
  %1375 = icmp eq i32 %1374, 0
  br i1 %1375, label %1392, label %1376

; <label>:1376                                    ; preds = %1370
  %1377 = add i32 %51, 476
  %1378 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1377, i32 undef)  ; BufferLoad(srv,index,wot)
  %1379 = extractvalue %dx.types.ResRet.i32 %1378, 0
  %1380 = add i32 %1379, 0
  %1381 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1380, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1382 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1381, %dx.types.Handle %108, float %1320, float %1321, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1383 = extractvalue %dx.types.ResRet.f32 %1382, 0
  %1384 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1213, i32 undef)  ; BufferLoad(srv,index,wot)
  %1385 = extractvalue %dx.types.ResRet.i32 %1384, 0
  %1386 = and i32 %1385, 524288
  %1387 = icmp ne i32 %1386, 0
  %1388 = fcmp fast ogt float %1383, 0x3FE0101020000000
  %1389 = select i1 %1388, float 1.000000e+00, float 0.000000e+00
  %1390 = select i1 %1387, float %1389, float %1383
  %1391 = fmul fast float %1390, %1371
  br label %1392

; <label>:1392                                    ; preds = %1376, %1370
  %1393 = phi float [ %1391, %1376 ], [ %1371, %1370 ]
  %1394 = fcmp fast ult float %1393, 0x3F70101020000000
  br i1 %1394, label %2133, label %1395

; <label>:1395                                    ; preds = %1392
  %1396 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1213, i32 undef)  ; BufferLoad(srv,index,wot)
  %1397 = extractvalue %dx.types.ResRet.i32 %1396, 0
  %1398 = and i32 %1397, 16
  %1399 = icmp eq i32 %1398, 0
  br i1 %1399, label %1598, label %1400

; <label>:1400                                    ; preds = %1395
  %1401 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1236, i32 undef)  ; BufferLoad(srv,index,wot)
  %1402 = extractvalue %dx.types.ResRet.i32 %1401, 0
  %1403 = add i32 %51, 428
  %1404 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1403, i32 undef)  ; BufferLoad(srv,index,wot)
  %1405 = extractvalue %dx.types.ResRet.i32 %1404, 0
  %1406 = add i32 %1405, 0
  %1407 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1406, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1408 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1407, %dx.types.Handle %107, float %1320, float %1321, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1409 = extractvalue %dx.types.ResRet.f32 %1408, 0
  %1410 = extractvalue %dx.types.ResRet.f32 %1408, 1
  %1411 = extractvalue %dx.types.ResRet.f32 %1408, 2
  %1412 = extractvalue %dx.types.ResRet.f32 %1408, 3
  %1413 = and i32 %1402, 255
  %1414 = uitofp i32 %1413 to float
  %1415 = lshr i32 %1402, 8
  %1416 = and i32 %1415, 255
  %1417 = uitofp i32 %1416 to float
  %1418 = fmul fast float %1412, %1414
  %1419 = fadd fast float %1418, %1417
  %1420 = fmul fast float %1419, 0x3F70101000000000
  %1421 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1213, i32 undef)  ; BufferLoad(srv,index,wot)
  %1422 = extractvalue %dx.types.ResRet.i32 %1421, 0
  %1423 = and i32 %1422, 512
  %1424 = icmp eq i32 %1423, 0
  br i1 %1424, label %1433, label %1425

; <label>:1425                                    ; preds = %1400
  %1426 = add i32 %51, 508
  %1427 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1426, i32 undef)  ; BufferLoad(srv,index,wot)
  %1428 = extractvalue %dx.types.ResRet.i32 %1427, 0
  %1429 = add i32 %1428, 0
  %1430 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1429, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1431 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1430, %dx.types.Handle %108, float %1320, float %1321, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1432 = extractvalue %dx.types.ResRet.f32 %1431, 0
  br label %1433

; <label>:1433                                    ; preds = %1425, %1400
  %1434 = phi float [ %1432, %1425 ], [ 1.000000e+00, %1400 ]
  %1435 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1213, i32 undef)  ; BufferLoad(srv,index,wot)
  %1436 = extractvalue %dx.types.ResRet.i32 %1435, 0
  %1437 = and i32 %1436, 33554432
  %1438 = icmp eq i32 %1437, 0
  br i1 %1438, label %1545, label %1439

; <label>:1439                                    ; preds = %1433
  %1440 = add i32 %51, 240
  %1441 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1440, i32 undef)  ; BufferLoad(srv,index,wot)
  %1442 = extractvalue %dx.types.ResRet.i32 %1441, 0
  %1443 = and i32 %1442, 65535
  %1444 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1443)  ; LegacyF16ToF32(value)
  %1445 = lshr i32 %1442, 16
  %1446 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1445)  ; LegacyF16ToF32(value)
  %1447 = add i32 %51, 244
  %1448 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1447, i32 undef)  ; BufferLoad(srv,index,wot)
  %1449 = extractvalue %dx.types.ResRet.i32 %1448, 0
  %1450 = and i32 %1449, 65535
  %1451 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1450)  ; LegacyF16ToF32(value)
  %1452 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %360, i32 undef)  ; BufferLoad(srv,index,wot)
  %1453 = extractvalue %dx.types.ResRet.i32 %1452, 0
  %1454 = lshr i32 %1453, 24
  %1455 = uitofp i32 %1454 to float
  %1456 = fmul fast float %1455, 0x3F70101020000000
  %1457 = and i32 %1453, 255
  %1458 = uitofp i32 %1457 to float
  %1459 = fmul fast float %1458, 0x3F70101020000000
  %1460 = lshr i32 %1453, 8
  %1461 = and i32 %1460, 255
  %1462 = uitofp i32 %1461 to float
  %1463 = fmul fast float %1462, 0x3F70101020000000
  %1464 = lshr i32 %1453, 16
  %1465 = and i32 %1464, 255
  %1466 = uitofp i32 %1465 to float
  %1467 = fmul fast float %1466, 0x3F70101020000000
  %1468 = add i32 %51, 236
  %1469 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1468, i32 undef)  ; BufferLoad(srv,index,wot)
  %1470 = extractvalue %dx.types.ResRet.i32 %1469, 0
  %1471 = lshr i32 %1470, 24
  %1472 = uitofp i32 %1471 to float
  %1473 = fmul fast float %1472, 0x3F70101020000000
  %1474 = and i32 %1470, 255
  %1475 = uitofp i32 %1474 to float
  %1476 = fmul fast float %1475, 0x3F70101020000000
  %1477 = lshr i32 %1470, 8
  %1478 = and i32 %1477, 255
  %1479 = uitofp i32 %1478 to float
  %1480 = fmul fast float %1479, 0x3F70101020000000
  %1481 = lshr i32 %1470, 16
  %1482 = and i32 %1481, 255
  %1483 = uitofp i32 %1482 to float
  %1484 = fmul fast float %1483, 0x3F70101020000000
  %1485 = bitcast float %1409 to i32
  %1486 = ashr i32 %1485, 1
  %1487 = sub nsw i32 1597463174, %1486
  %1488 = bitcast i32 %1487 to float
  %1489 = fmul fast float %1409, 5.000000e-01
  %1490 = fmul fast float %1488, %1488
  %1491 = fmul fast float %1490, %1489
  %1492 = fsub fast float 1.500000e+00, %1491
  %1493 = fmul fast float %1488, %1409
  %1494 = fmul fast float %1493, %1492
  %1495 = bitcast float %1410 to i32
  %1496 = ashr i32 %1495, 1
  %1497 = sub nsw i32 1597463174, %1496
  %1498 = bitcast i32 %1497 to float
  %1499 = fmul fast float %1410, 5.000000e-01
  %1500 = fmul fast float %1498, %1498
  %1501 = fmul fast float %1500, %1499
  %1502 = fsub fast float 1.500000e+00, %1501
  %1503 = fmul fast float %1498, %1410
  %1504 = fmul fast float %1503, %1502
  %1505 = bitcast float %1411 to i32
  %1506 = ashr i32 %1505, 1
  %1507 = sub nsw i32 1597463174, %1506
  %1508 = bitcast i32 %1507 to float
  %1509 = fmul fast float %1411, 5.000000e-01
  %1510 = fmul fast float %1508, %1508
  %1511 = fmul fast float %1510, %1509
  %1512 = fsub fast float 1.500000e+00, %1511
  %1513 = fmul fast float %1508, %1411
  %1514 = fmul fast float %1513, %1512
  %1515 = fsub fast float %1494, %1476
  %1516 = fsub fast float %1504, %1480
  %1517 = fsub fast float %1514, %1484
  %1518 = fmul fast float %1515, %1444
  %1519 = fmul fast float %1516, %1446
  %1520 = fmul fast float %1517, %1451
  %1521 = fadd fast float %1518, %1459
  %1522 = fadd fast float %1519, %1463
  %1523 = fadd fast float %1520, %1467
  %1524 = call float @dx.op.unary.f32(i32 7, float %1521)  ; Saturate(value)
  %1525 = call float @dx.op.unary.f32(i32 7, float %1522)  ; Saturate(value)
  %1526 = call float @dx.op.unary.f32(i32 7, float %1523)  ; Saturate(value)
  %1527 = fmul fast float %1524, %1524
  %1528 = fmul fast float %1525, %1525
  %1529 = fmul fast float %1526, %1526
  %1530 = fsub fast float %1527, %1409
  %1531 = fsub fast float %1528, %1410
  %1532 = fsub fast float %1529, %1411
  %1533 = fmul fast float %1530, %1434
  %1534 = fmul fast float %1531, %1434
  %1535 = fmul fast float %1532, %1434
  %1536 = fadd fast float %1533, %1409
  %1537 = fadd fast float %1534, %1410
  %1538 = fadd fast float %1535, %1411
  %1539 = fadd fast float %1456, %1420
  %1540 = fsub fast float %1539, %1473
  %1541 = call float @dx.op.unary.f32(i32 7, float %1540)  ; Saturate(value)
  %1542 = fsub fast float %1541, %1420
  %1543 = fmul fast float %1542, %1434
  %1544 = fadd fast float %1543, %1420
  br label %1598

; <label>:1545                                    ; preds = %1433
  %1546 = and i32 %1436, 134217728
  %1547 = icmp eq i32 %1546, 0
  br i1 %1547, label %1582, label %1548

; <label>:1548                                    ; preds = %1545
  %1549 = call float @dx.op.unary.f32(i32 24, float %365)  ; Sqrt(value)
  %1550 = call float @dx.op.unary.f32(i32 24, float %369)  ; Sqrt(value)
  %1551 = call float @dx.op.unary.f32(i32 24, float %373)  ; Sqrt(value)
  %1552 = fadd fast float %1549, -5.000000e-01
  %1553 = fadd fast float %1550, -5.000000e-01
  %1554 = fadd fast float %1551, -5.000000e-01
  %1555 = fmul fast float %1552, %1434
  %1556 = fmul fast float %1553, %1434
  %1557 = fmul fast float %1554, %1434
  %1558 = fadd fast float %1555, 5.000000e-01
  %1559 = fadd fast float %1556, 5.000000e-01
  %1560 = fadd fast float %1557, 5.000000e-01
  %1561 = call float @dx.op.unary.f32(i32 24, float %1409)  ; Sqrt(value)
  %1562 = call float @dx.op.unary.f32(i32 24, float %1410)  ; Sqrt(value)
  %1563 = call float @dx.op.unary.f32(i32 24, float %1411)  ; Sqrt(value)
  %1564 = fmul fast float %1558, 2.000000e+00
  %1565 = fsub fast float 1.000000e+00, %1564
  %1566 = fmul fast float %1565, %1561
  %1567 = fadd fast float %1566, %1564
  %1568 = fmul fast float %1567, %1561
  %1569 = fmul fast float %1559, 2.000000e+00
  %1570 = fsub fast float 1.000000e+00, %1569
  %1571 = fmul fast float %1570, %1562
  %1572 = fadd fast float %1571, %1569
  %1573 = fmul fast float %1572, %1562
  %1574 = fmul fast float %1560, 2.000000e+00
  %1575 = fsub fast float 1.000000e+00, %1574
  %1576 = fmul fast float %1575, %1563
  %1577 = fadd fast float %1576, %1574
  %1578 = fmul fast float %1577, %1563
  %1579 = fmul fast float %1568, %1568
  %1580 = fmul fast float %1573, %1573
  %1581 = fmul fast float %1578, %1578
  br label %1598

; <label>:1582                                    ; preds = %1545
  %1583 = fmul fast float %365, %365
  %1584 = fmul fast float %369, %369
  %1585 = fmul fast float %373, %373
  %1586 = fadd fast float %1583, -1.000000e+00
  %1587 = fadd fast float %1584, -1.000000e+00
  %1588 = fadd fast float %1585, -1.000000e+00
  %1589 = fmul fast float %1434, %1586
  %1590 = fmul fast float %1434, %1587
  %1591 = fmul fast float %1434, %1588
  %1592 = fadd fast float %1589, 1.000000e+00
  %1593 = fadd fast float %1590, 1.000000e+00
  %1594 = fadd fast float %1591, 1.000000e+00
  %1595 = fmul fast float %1592, %1409
  %1596 = fmul fast float %1593, %1410
  %1597 = fmul fast float %1594, %1411
  br label %1598

; <label>:1598                                    ; preds = %1582, %1548, %1439, %1395
  %1599 = phi float [ %1544, %1439 ], [ %1420, %1548 ], [ %1420, %1582 ], [ 0x3FA23C0BE0000000, %1395 ]
  %1600 = phi float [ %1536, %1439 ], [ %1579, %1548 ], [ %1595, %1582 ], [ 1.000000e+00, %1395 ]
  %1601 = phi float [ %1537, %1439 ], [ %1580, %1548 ], [ %1596, %1582 ], [ 1.000000e+00, %1395 ]
  %1602 = phi float [ %1538, %1439 ], [ %1581, %1548 ], [ %1597, %1582 ], [ 1.000000e+00, %1395 ]
  %1603 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1604 = extractvalue %dx.types.CBufRet.i32 %1603, 1
  %1605 = and i32 %1604, 1
  %1606 = icmp ne i32 %1605, 0
  %1607 = add i32 %51, 356
  %1608 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1607, i32 undef)  ; BufferLoad(srv,index,wot)
  %1609 = extractvalue %dx.types.ResRet.i32 %1608, 0
  %1610 = and i32 %1609, 32
  %1611 = icmp ne i32 %1610, 0
  %1612 = and i1 %1606, %1611
  %1613 = select i1 %1612, float 1.000000e+00, float %1600
  %1614 = select i1 %1612, float 0x3FD3333340000000, float %1601
  %1615 = select i1 %1612, float 0x3FD3333340000000, float %1602
  %1616 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1213, i32 undef)  ; BufferLoad(srv,index,wot)
  %1617 = extractvalue %dx.types.ResRet.i32 %1616, 0
  %1618 = and i32 %1617, 32
  %1619 = icmp eq i32 %1618, 0
  br i1 %1619, label %1692, label %1620

; <label>:1620                                    ; preds = %1598
  %1621 = add i32 %51, 108
  %1622 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1621, i32 undef)  ; BufferLoad(srv,index,wot)
  %1623 = extractvalue %dx.types.ResRet.i32 %1622, 0
  %1624 = add i32 %51, 444
  %1625 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1624, i32 undef)  ; BufferLoad(srv,index,wot)
  %1626 = extractvalue %dx.types.ResRet.i32 %1625, 0
  %1627 = add i32 %1626, 0
  %1628 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1627, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1629 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1628, %dx.types.Handle %107, float %1320, float %1321, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1630 = extractvalue %dx.types.ResRet.f32 %1629, 0
  %1631 = extractvalue %dx.types.ResRet.f32 %1629, 1
  %1632 = extractvalue %dx.types.ResRet.f32 %1629, 2
  %1633 = extractvalue %dx.types.ResRet.f32 %1629, 3
  %1634 = and i32 %1623, 255
  %1635 = uitofp i32 %1634 to float
  %1636 = lshr i32 %1623, 8
  %1637 = and i32 %1636, 255
  %1638 = uitofp i32 %1637 to float
  %1639 = lshr i32 %1623, 16
  %1640 = and i32 %1639, 255
  %1641 = uitofp i32 %1640 to float
  %1642 = fmul fast float %1641, 0x3F70101000000000
  %1643 = fmul fast float %1630, %1635
  %1644 = fadd fast float %1643, %1638
  %1645 = fmul fast float %1644, 0x3F70101000000000
  %1646 = fadd fast float %1631, -5.000000e-01
  %1647 = fadd fast float %1633, -5.000000e-01
  %1648 = fmul fast float %1646, %1642
  %1649 = fmul fast float %1647, %1642
  %1650 = fadd fast float %1648, 5.000000e-01
  %1651 = fadd fast float %1649, 5.000000e-01
  %1652 = fmul fast float %1650, 2.000000e+00
  %1653 = fadd fast float %1652, -1.000000e+00
  %1654 = fmul fast float %1651, 2.000000e+00
  %1655 = fadd fast float %1654, -1.000000e+00
  %1656 = fadd fast float %1653, %1655
  %1657 = fmul fast float %1656, 5.000000e-01
  %1658 = fsub fast float %1653, %1655
  %1659 = fmul fast float %1658, 5.000000e-01
  %1660 = call float @dx.op.unary.f32(i32 6, float %1657)  ; FAbs(value)
  %1661 = fsub fast float 1.000000e+00, %1660
  %1662 = call float @dx.op.unary.f32(i32 6, float %1659)  ; FAbs(value)
  %1663 = fsub fast float %1661, %1662
  %1664 = call float @dx.op.dot3.f32(i32 55, float %1657, float %1659, float %1663, float %1657, float %1659, float %1663)  ; Dot3(ax,ay,az,bx,by,bz)
  %1665 = call float @dx.op.unary.f32(i32 25, float %1664)  ; Rsqrt(value)
  %1666 = fmul fast float %1657, %1665
  %1667 = fmul fast float %1659, %1665
  %1668 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1213, i32 undef)  ; BufferLoad(srv,index,wot)
  %1669 = extractvalue %dx.types.ResRet.i32 %1668, 0
  %1670 = and i32 %1669, 67108864
  %1671 = icmp eq i32 %1670, 0
  br i1 %1671, label %1688, label %1672

; <label>:1672                                    ; preds = %1620
  %1673 = add i32 %51, 296
  %1674 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1673, i32 undef)  ; BufferLoad(srv,index,wot)
  %1675 = extractvalue %dx.types.ResRet.i32 %1674, 0
  %1676 = and i32 %1675, 65535
  %1677 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1676)  ; LegacyF16ToF32(value)
  %1678 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1230, i32 undef)  ; BufferLoad(srv,index,wot)
  %1679 = extractvalue %dx.types.ResRet.i32 %1678, 0
  %1680 = and i32 %1679, 65535
  %1681 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1680)  ; LegacyF16ToF32(value)
  %1682 = lshr i32 %1675, 16
  %1683 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1682)  ; LegacyF16ToF32(value)
  %1684 = fsub fast float %1645, %1683
  %1685 = fmul fast float %1684, %1677
  %1686 = fadd fast float %1685, %1681
  %1687 = call float @dx.op.unary.f32(i32 7, float %1686)  ; Saturate(value)
  br label %1688

; <label>:1688                                    ; preds = %1672, %1620
  %1689 = phi float [ %1687, %1672 ], [ %1645, %1620 ]
  %1690 = call float @dx.op.dot2.f32(i32 54, float %1666, float %1667, float %1224, float %1225)  ; Dot2(ax,ay,bx,by)
  %1691 = call float @dx.op.dot2.f32(i32 54, float %1666, float %1667, float %1226, float %1227)  ; Dot2(ax,ay,bx,by)
  br label %1692

; <label>:1692                                    ; preds = %1688, %1598
  %1693 = phi float [ %1689, %1688 ], [ 0x3FD6666660000000, %1598 ]
  %1694 = phi float [ %1690, %1688 ], [ 0.000000e+00, %1598 ]
  %1695 = phi float [ %1691, %1688 ], [ 0.000000e+00, %1598 ]
  %1696 = phi float [ %1632, %1688 ], [ 1.000000e+00, %1598 ]
  %1697 = add i32 %51, 176
  %1698 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1697, i32 undef)  ; BufferLoad(srv,index,wot)
  %1699 = extractvalue %dx.types.ResRet.i32 %1698, 0
  %1700 = lshr i32 %1699, 22
  %1701 = shl nuw nsw i32 %1700, 5
  %1702 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1701)  ; LegacyF16ToF32(value)
  %1703 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1213, i32 undef)  ; BufferLoad(srv,index,wot)
  %1704 = extractvalue %dx.types.ResRet.i32 %1703, 0
  %1705 = and i32 %1704, 64
  %1706 = icmp eq i32 %1705, 0
  br i1 %1706, label %1740, label %1707

; <label>:1707                                    ; preds = %1692
  %1708 = add i32 %51, 460
  %1709 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1708, i32 undef)  ; BufferLoad(srv,index,wot)
  %1710 = extractvalue %dx.types.ResRet.i32 %1709, 0
  %1711 = add i32 %1710, 0
  %1712 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1711, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1713 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1213, i32 undef)  ; BufferLoad(srv,index,wot)
  %1714 = extractvalue %dx.types.ResRet.i32 %1713, 0
  %1715 = and i32 %1714, 131072
  %1716 = icmp eq i32 %1715, 0
  %1717 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1712, %dx.types.Handle %107, float %1320, float %1321, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1718 = extractvalue %dx.types.ResRet.f32 %1717, 0
  %1719 = extractvalue %dx.types.ResRet.f32 %1717, 1
  %1720 = extractvalue %dx.types.ResRet.f32 %1717, 2
  %1721 = fmul fast float %1718, %353
  %1722 = fmul fast float %1719, %356
  %1723 = fmul fast float %1720, %359
  br i1 %1716, label %1730, label %1724

; <label>:1724                                    ; preds = %1707
  %1725 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1726 = extractvalue %dx.types.CBufRet.f32 %1725, 0
  %1727 = fmul fast float %1726, %1721
  %1728 = fmul fast float %1726, %1722
  %1729 = fmul fast float %1726, %1723
  br label %1730

; <label>:1730                                    ; preds = %1724, %1707
  %1731 = phi float [ %1727, %1724 ], [ %1721, %1707 ]
  %1732 = phi float [ %1728, %1724 ], [ %1722, %1707 ]
  %1733 = phi float [ %1729, %1724 ], [ %1723, %1707 ]
  %1734 = fmul fast float %1731, %1702
  %1735 = select i1 %294, float %1734, float %1731
  %1736 = call float @dx.op.dot3.f32(i32 55, float %1735, float %1732, float %1733, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1737 = select i1 %294, float 0.000000e+00, float %1731
  %1738 = select i1 %294, float %1736, float %1732
  %1739 = select i1 %294, float 0.000000e+00, float %1733
  br label %1740

; <label>:1740                                    ; preds = %1730, %1692
  %1741 = phi float [ %1737, %1730 ], [ 0.000000e+00, %1692 ]
  %1742 = phi float [ %1738, %1730 ], [ 0.000000e+00, %1692 ]
  %1743 = phi float [ %1739, %1730 ], [ 0.000000e+00, %1692 ]
  %1744 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1213, i32 undef)  ; BufferLoad(srv,index,wot)
  %1745 = extractvalue %dx.types.ResRet.i32 %1744, 0
  %1746 = and i32 %1745, 1024
  %1747 = icmp eq i32 %1746, 0
  br i1 %1747, label %1778, label %1748

; <label>:1748                                    ; preds = %1740
  %1749 = add i32 %51, 168
  %1750 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1749, i32 undef)  ; BufferLoad(srv,index,wot)
  %1751 = extractvalue %dx.types.ResRet.i32 %1750, 0
  %1752 = and i32 %1751, 255
  %1753 = uitofp i32 %1752 to float
  %1754 = fmul fast float %1753, 0x3F70101020000000
  %1755 = lshr i32 %1751, 8
  %1756 = and i32 %1755, 255
  %1757 = uitofp i32 %1756 to float
  %1758 = fmul fast float %1757, 0x3F70101020000000
  %1759 = lshr i32 %1751, 16
  %1760 = and i32 %1759, 255
  %1761 = uitofp i32 %1760 to float
  %1762 = fmul fast float %1761, 0x3F70101020000000
  %1763 = fmul fast float %1754, %1754
  %1764 = fmul fast float %1758, %1758
  %1765 = fmul fast float %1762, %1762
  %1766 = add i32 %51, 524
  %1767 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1766, i32 undef)  ; BufferLoad(srv,index,wot)
  %1768 = extractvalue %dx.types.ResRet.i32 %1767, 0
  %1769 = add i32 %1768, 0
  %1770 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1769, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1771 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1770, %dx.types.Handle %108, float %1320, float %1321, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1772 = extractvalue %dx.types.ResRet.f32 %1771, 0
  %1773 = extractvalue %dx.types.ResRet.f32 %1771, 1
  %1774 = extractvalue %dx.types.ResRet.f32 %1771, 2
  %1775 = fmul fast float %1763, %1772
  %1776 = fmul fast float %1764, %1773
  %1777 = fmul fast float %1765, %1774
  br label %1778

; <label>:1778                                    ; preds = %1748, %1740
  %1779 = phi float [ %1775, %1748 ], [ 0.000000e+00, %1740 ]
  %1780 = phi float [ %1776, %1748 ], [ 0.000000e+00, %1740 ]
  %1781 = phi float [ %1777, %1748 ], [ 0.000000e+00, %1740 ]
  %1782 = fcmp fast ogt float %1779, 0.000000e+00
  %1783 = fcmp fast ogt float %1780, 0.000000e+00
  %1784 = fcmp fast ogt float %1781, 0.000000e+00
  %1785 = call float @dx.op.unary.f32(i32 23, float %1779)  ; Log(value)
  %1786 = call float @dx.op.unary.f32(i32 23, float %1780)  ; Log(value)
  %1787 = call float @dx.op.unary.f32(i32 23, float %1781)  ; Log(value)
  %1788 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1697, i32 undef)  ; BufferLoad(srv,index,wot)
  %1789 = extractvalue %dx.types.ResRet.i32 %1788, 0
  %1790 = lshr i32 %1789, 7
  %1791 = and i32 %1790, 32752
  %1792 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1791)  ; LegacyF16ToF32(value)
  %1793 = fmul fast float %1785, 0xBFE62E4300000000
  %1794 = fmul fast float %1793, %1792
  %1795 = fmul fast float %1786, 0xBFE62E4300000000
  %1796 = fmul fast float %1795, %1792
  %1797 = fmul fast float %1787, 0xBFE62E4300000000
  %1798 = fmul fast float %1797, %1792
  %1799 = select i1 %1782, float %1794, float 1.270000e+02
  %1800 = select i1 %1783, float %1796, float 1.270000e+02
  %1801 = select i1 %1784, float %1798, float 1.270000e+02
  %1802 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1213, i32 undef)  ; BufferLoad(srv,index,wot)
  %1803 = extractvalue %dx.types.ResRet.i32 %1802, 0
  %1804 = and i32 %1803, 10240
  %1805 = icmp eq i32 %1804, 0
  br i1 %1805, label %1850, label %1806

; <label>:1806                                    ; preds = %1778
  %1807 = add i32 %51, 540
  %1808 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1807, i32 undef)  ; BufferLoad(srv,index,wot)
  %1809 = extractvalue %dx.types.ResRet.i32 %1808, 0
  %1810 = add i32 %1809, 0
  %1811 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1810, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1812 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1811, %dx.types.Handle %108, float %1320, float %1321, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1813 = extractvalue %dx.types.ResRet.f32 %1812, 1
  %1814 = extractvalue %dx.types.ResRet.f32 %1812, 3
  %1815 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1213, i32 undef)  ; BufferLoad(srv,index,wot)
  %1816 = extractvalue %dx.types.ResRet.i32 %1815, 0
  %1817 = and i32 %1816, 1048576
  %1818 = icmp ne i32 %1817, 0
  %1819 = and i32 %1816, 8192
  %1820 = icmp eq i32 %1819, 0
  br i1 %1820, label %1836, label %1821

; <label>:1821                                    ; preds = %1806
  %1822 = extractvalue %dx.types.ResRet.f32 %1812, 2
  %1823 = select i1 %1818, float %1822, float %1813
  %1824 = extractvalue %dx.types.ResRet.f32 %1812, 0
  %1825 = select i1 %1818, float %1824, float %1813
  %1826 = add i32 %51, 112
  %1827 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1826, i32 undef)  ; BufferLoad(srv,index,wot)
  %1828 = extractvalue %dx.types.ResRet.i32 %1827, 0
  %1829 = lshr i32 %1828, 16
  %1830 = and i32 %1829, 255
  %1831 = uitofp i32 %1830 to float
  %1832 = fmul fast float %1831, 0x3F80101020000000
  %1833 = fmul fast float %1832, %1825
  %1834 = fmul fast float %1832, %1813
  %1835 = fmul fast float %1832, %1823
  br label %1836

; <label>:1836                                    ; preds = %1821, %1806
  %1837 = phi float [ %1833, %1821 ], [ 0.000000e+00, %1806 ]
  %1838 = phi float [ %1834, %1821 ], [ 0.000000e+00, %1806 ]
  %1839 = phi float [ %1835, %1821 ], [ 0.000000e+00, %1806 ]
  %1840 = and i32 %1816, 2048
  %1841 = icmp eq i32 %1840, 0
  br i1 %1841, label %1850, label %1842

; <label>:1842                                    ; preds = %1836
  %1843 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1697, i32 undef)  ; BufferLoad(srv,index,wot)
  %1844 = extractvalue %dx.types.ResRet.i32 %1843, 0
  %1845 = shl i32 %1844, 4
  %1846 = and i32 %1845, 32752
  %1847 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1846)  ; LegacyF16ToF32(value)
  %1848 = fmul fast float %1847, %1814
  %1849 = call float @dx.op.binary.f32(i32 35, float %1848, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1850

; <label>:1850                                    ; preds = %1842, %1836, %1778
  %1851 = phi float [ %1837, %1842 ], [ %1837, %1836 ], [ 0.000000e+00, %1778 ]
  %1852 = phi float [ %1838, %1842 ], [ %1838, %1836 ], [ 0.000000e+00, %1778 ]
  %1853 = phi float [ %1839, %1842 ], [ %1839, %1836 ], [ 0.000000e+00, %1778 ]
  %1854 = phi float [ %1849, %1842 ], [ 0x3F70101020000000, %1836 ], [ 0x3F70101020000000, %1778 ]
  %1855 = add i32 %51, 112
  %1856 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1855, i32 undef)  ; BufferLoad(srv,index,wot)
  %1857 = extractvalue %dx.types.ResRet.i32 %1856, 0
  %1858 = and i32 %1857, 255
  %1859 = uitofp i32 %1858 to float
  %1860 = lshr i32 %1857, 8
  %1861 = and i32 %1860, 255
  %1862 = uitofp i32 %1861 to float
  %1863 = call float @dx.op.dot3.f32(i32 55, float %1613, float %1614, float %1615, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1864 = fmul fast float %1862, %1863
  %1865 = fadd fast float %1864, %1859
  %1866 = fmul fast float %1865, 0x3F70101020000000
  %1867 = call float @dx.op.unary.f32(i32 7, float %1866)  ; Saturate(value)
  br i1 %1212, label %1868, label %1903

; <label>:1868                                    ; preds = %1850
  %1869 = fmul fast float %1854, 2.000000e+00
  %1870 = fcmp fast olt float %1799, 1.270000e+02
  %1871 = fcmp fast olt float %1800, 1.270000e+02
  %1872 = fcmp fast olt float %1801, 1.270000e+02
  %1873 = fmul fast float %1799, 0xBFF7154760000000
  %1874 = fmul fast float %1873, %1869
  %1875 = fmul fast float %1800, 0xBFF7154760000000
  %1876 = fmul fast float %1875, %1869
  %1877 = fmul fast float %1801, 0xBFF7154760000000
  %1878 = fmul fast float %1877, %1869
  %1879 = call float @dx.op.unary.f32(i32 21, float %1874)  ; Exp(value)
  %1880 = call float @dx.op.unary.f32(i32 21, float %1876)  ; Exp(value)
  %1881 = call float @dx.op.unary.f32(i32 21, float %1878)  ; Exp(value)
  %1882 = call float @dx.op.unary.f32(i32 7, float %1879)  ; Saturate(value)
  %1883 = call float @dx.op.unary.f32(i32 7, float %1880)  ; Saturate(value)
  %1884 = call float @dx.op.unary.f32(i32 7, float %1881)  ; Saturate(value)
  %1885 = fadd fast float %1882, -1.000000e+00
  %1886 = select i1 %1870, float %1885, float -1.000000e+00
  %1887 = fadd fast float %1883, -1.000000e+00
  %1888 = select i1 %1871, float %1887, float -1.000000e+00
  %1889 = fadd fast float %1884, -1.000000e+00
  %1890 = select i1 %1872, float %1889, float -1.000000e+00
  %1891 = fmul fast float %1886, %1393
  %1892 = fmul fast float %1888, %1393
  %1893 = fmul fast float %1890, %1393
  %1894 = fadd fast float %1891, 1.000000e+00
  %1895 = fadd fast float %1892, 1.000000e+00
  %1896 = fadd fast float %1893, 1.000000e+00
  %1897 = fmul fast float %1894, %1193
  %1898 = fmul fast float %1895, %1194
  %1899 = fmul fast float %1896, %1195
  %1900 = fmul fast float %1894, %1196
  %1901 = fmul fast float %1895, %1197
  %1902 = fmul fast float %1896, %1198
  br label %1903

; <label>:1903                                    ; preds = %1868, %1850
  %1904 = phi float [ %1897, %1868 ], [ %1193, %1850 ]
  %1905 = phi float [ %1898, %1868 ], [ %1194, %1850 ]
  %1906 = phi float [ %1899, %1868 ], [ %1195, %1850 ]
  %1907 = phi float [ %1900, %1868 ], [ %1196, %1850 ]
  %1908 = phi float [ %1901, %1868 ], [ %1197, %1850 ]
  %1909 = phi float [ %1902, %1868 ], [ %1198, %1850 ]
  %1910 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1213, i32 undef)  ; BufferLoad(srv,index,wot)
  %1911 = extractvalue %dx.types.ResRet.i32 %1910, 0
  %1912 = and i32 %1911, 3
  %1913 = icmp eq i32 %1912, 3
  br i1 %1913, label %1992, label %1914

; <label>:1914                                    ; preds = %1903
  %1915 = and i32 %1911, 16
  %1916 = icmp ne i32 %1915, 0
  %1917 = select i1 %1916, float %1393, float 0.000000e+00
  %1918 = icmp eq i32 %1912, 0
  br i1 %1918, label %1919, label %1947

; <label>:1919                                    ; preds = %1914
  %1920 = and i32 %1911, 64
  %1921 = icmp ne i32 %1920, 0
  %1922 = select i1 %1921, float %1393, float 0.000000e+00
  %1923 = fsub fast float %1613, %1904
  %1924 = fsub fast float %1614, %1905
  %1925 = fsub fast float %1615, %1906
  %1926 = fmul fast float %1917, %1923
  %1927 = fmul fast float %1917, %1924
  %1928 = fmul fast float %1917, %1925
  %1929 = fadd fast float %1926, %1904
  %1930 = fadd fast float %1927, %1905
  %1931 = fadd fast float %1928, %1906
  %1932 = fsub fast float %1599, %1205
  %1933 = fmul fast float %1917, %1932
  %1934 = fadd fast float %1933, %1205
  %1935 = fsub fast float %1741, %1907
  %1936 = fsub fast float %1742, %1908
  %1937 = fsub fast float %1743, %1909
  %1938 = fmul fast float %1922, %1935
  %1939 = fmul fast float %1922, %1936
  %1940 = fmul fast float %1922, %1937
  %1941 = fadd fast float %1938, %1907
  %1942 = fadd fast float %1939, %1908
  %1943 = fadd fast float %1940, %1909
  %1944 = fsub fast float %1867, %1210
  %1945 = fmul fast float %1917, %1944
  %1946 = fadd fast float %1945, %1210
  br label %1992

; <label>:1947                                    ; preds = %1914
  %1948 = icmp eq i32 %1912, 1
  br i1 %1948, label %1949, label %1962

; <label>:1949                                    ; preds = %1947
  %1950 = fadd fast float %1613, -1.000000e+00
  %1951 = fadd fast float %1614, -1.000000e+00
  %1952 = fadd fast float %1615, -1.000000e+00
  %1953 = fmul fast float %1917, %1950
  %1954 = fmul fast float %1917, %1951
  %1955 = fmul fast float %1917, %1952
  %1956 = fadd fast float %1953, 1.000000e+00
  %1957 = fadd fast float %1954, 1.000000e+00
  %1958 = fadd fast float %1955, 1.000000e+00
  %1959 = fmul fast float %1956, %1904
  %1960 = fmul fast float %1957, %1905
  %1961 = fmul fast float %1958, %1906
  br label %1992

; <label>:1962                                    ; preds = %1947
  %1963 = icmp eq i32 %1912, 2
  br i1 %1963, label %1964, label %1992

; <label>:1964                                    ; preds = %1962
  %1965 = call float @dx.op.unary.f32(i32 24, float %1613)  ; Sqrt(value)
  %1966 = call float @dx.op.unary.f32(i32 24, float %1614)  ; Sqrt(value)
  %1967 = call float @dx.op.unary.f32(i32 24, float %1615)  ; Sqrt(value)
  %1968 = fadd fast float %1965, -5.000000e-01
  %1969 = fadd fast float %1966, -5.000000e-01
  %1970 = fadd fast float %1967, -5.000000e-01
  %1971 = fmul fast float %1968, %1917
  %1972 = fmul fast float %1969, %1917
  %1973 = fmul fast float %1970, %1917
  %1974 = fadd fast float %1971, 5.000000e-01
  %1975 = fadd fast float %1972, 5.000000e-01
  %1976 = fadd fast float %1973, 5.000000e-01
  %1977 = fmul fast float %1974, 2.000000e+00
  %1978 = fsub fast float 1.000000e+00, %1977
  %1979 = fmul fast float %1978, %1904
  %1980 = fadd fast float %1979, %1977
  %1981 = fmul fast float %1980, %1904
  %1982 = fmul fast float %1975, 2.000000e+00
  %1983 = fsub fast float 1.000000e+00, %1982
  %1984 = fmul fast float %1983, %1905
  %1985 = fadd fast float %1984, %1982
  %1986 = fmul fast float %1985, %1905
  %1987 = fmul fast float %1976, 2.000000e+00
  %1988 = fsub fast float 1.000000e+00, %1987
  %1989 = fmul fast float %1988, %1906
  %1990 = fadd fast float %1989, %1987
  %1991 = fmul fast float %1990, %1906
  br label %1992

; <label>:1992                                    ; preds = %1964, %1962, %1949, %1919, %1903
  %1993 = phi float [ %1904, %1903 ], [ %1981, %1964 ], [ %1904, %1962 ], [ %1959, %1949 ], [ %1929, %1919 ]
  %1994 = phi float [ %1905, %1903 ], [ %1986, %1964 ], [ %1905, %1962 ], [ %1960, %1949 ], [ %1930, %1919 ]
  %1995 = phi float [ %1906, %1903 ], [ %1991, %1964 ], [ %1906, %1962 ], [ %1961, %1949 ], [ %1931, %1919 ]
  %1996 = phi float [ %1907, %1903 ], [ %1907, %1964 ], [ %1907, %1962 ], [ %1907, %1949 ], [ %1941, %1919 ]
  %1997 = phi float [ %1908, %1903 ], [ %1908, %1964 ], [ %1908, %1962 ], [ %1908, %1949 ], [ %1942, %1919 ]
  %1998 = phi float [ %1909, %1903 ], [ %1909, %1964 ], [ %1909, %1962 ], [ %1909, %1949 ], [ %1943, %1919 ]
  %1999 = phi float [ %1205, %1903 ], [ %1205, %1964 ], [ %1205, %1962 ], [ %1205, %1949 ], [ %1934, %1919 ]
  %2000 = phi float [ %1210, %1903 ], [ %1210, %1964 ], [ %1210, %1962 ], [ %1210, %1949 ], [ %1946, %1919 ]
  %2001 = and i32 %1911, 12
  %2002 = icmp eq i32 %2001, 12
  br i1 %2002, label %2133, label %2003

; <label>:2003                                    ; preds = %1992
  %2004 = and i32 %1911, 2097184
  %2005 = icmp eq i32 %2004, 2097184
  %2006 = select i1 %2005, float %1393, float 0.000000e+00
  %2007 = and i32 %1911, 4194336
  %2008 = icmp eq i32 %2007, 4194336
  %2009 = select i1 %2008, float %1393, float 0.000000e+00
  %2010 = and i32 %1911, 8388640
  %2011 = icmp eq i32 %2010, 8388640
  %2012 = select i1 %2011, float %1393, float 0.000000e+00
  %2013 = and i32 %1911, 1024
  %2014 = icmp ne i32 %2013, 0
  %2015 = select i1 %2014, float %1393, float 0.000000e+00
  %2016 = and i32 %1911, 2048
  %2017 = icmp ne i32 %2016, 0
  %2018 = select i1 %2017, float %1393, float 0.000000e+00
  %2019 = and i32 %1911, 8192
  %2020 = icmp ne i32 %2019, 0
  %2021 = select i1 %2020, float %1393, float 0.000000e+00
  %2022 = icmp eq i32 %2001, 0
  br i1 %2022, label %2023, label %2057

; <label>:2023                                    ; preds = %2003
  %2024 = fsub fast float %1694, %1191
  %2025 = fsub fast float %1695, %1192
  %2026 = fmul fast float %2006, %2024
  %2027 = fmul fast float %2006, %2025
  %2028 = fadd fast float %2026, %1191
  %2029 = fadd fast float %2027, %1192
  %2030 = fsub fast float %1696, %1208
  %2031 = fmul fast float %2009, %2030
  %2032 = fadd fast float %2031, %1208
  %2033 = fsub fast float %1693, %1207
  %2034 = fmul fast float %2012, %2033
  %2035 = fadd fast float %2034, %1207
  %2036 = fsub fast float %1799, %1199
  %2037 = fsub fast float %1800, %1200
  %2038 = fsub fast float %1801, %1201
  %2039 = fmul fast float %2015, %2036
  %2040 = fmul fast float %2015, %2037
  %2041 = fmul fast float %2015, %2038
  %2042 = fadd fast float %2039, %1199
  %2043 = fadd fast float %2040, %1200
  %2044 = fadd fast float %2041, %1201
  %2045 = fsub fast float %1854, %1209
  %2046 = fmul fast float %2018, %2045
  %2047 = fadd fast float %2046, %1209
  %2048 = fsub fast float %1851, %1202
  %2049 = fsub fast float %1852, %1203
  %2050 = fsub fast float %1853, %1204
  %2051 = fmul fast float %2021, %2048
  %2052 = fmul fast float %2021, %2049
  %2053 = fmul fast float %2021, %2050
  %2054 = fadd fast float %2051, %1202
  %2055 = fadd fast float %2052, %1203
  %2056 = fadd fast float %2053, %1204
  br label %2133

; <label>:2057                                    ; preds = %2003
  %2058 = icmp eq i32 %2001, 4
  br i1 %2058, label %2059, label %2105

; <label>:2059                                    ; preds = %2057
  %2060 = fmul fast float %2006, %1694
  %2061 = fmul fast float %2006, %1695
  %2062 = fadd fast float %2060, %1191
  %2063 = fadd fast float %2061, %1192
  %2064 = call float @dx.op.binary.f32(i32 36, float %1208, float %1696)  ; FMin(a,b)
  %2065 = fsub fast float %2064, %1208
  %2066 = fmul fast float %2065, %2009
  %2067 = fadd fast float %2066, %1208
  %2068 = fadd fast float %1693, %1207
  %2069 = fmul fast float %2068, 0x3FF337FAE0000000
  %2070 = fmul fast float %1207, %1207
  %2071 = fmul fast float %1693, %1693
  %2072 = fadd fast float %2071, %2070
  %2073 = fmul fast float %2072, 0x3FE5152B00000000
  %2074 = fmul fast float %1207, 0xBFCC1F85E0000000
  %2075 = fmul fast float %2074, %1693
  %2076 = fadd fast float %2075, 0xBFE1363700000000
  %2077 = fadd fast float %2076, %2069
  %2078 = fsub fast float %2077, %2073
  %2079 = fmul fast float %2068, 0x3FBA6F0D00000000
  %2080 = fmul fast float %2072, 0x3FD0432880000000
  %2081 = fmul fast float %1207, 0xBFEF110800000000
  %2082 = fmul fast float %2081, %1693
  %2083 = fadd fast float %2082, 1.000000e+00
  %2084 = fsub fast float %2083, %2079
  %2085 = fadd fast float %2084, %2080
  %2086 = fdiv fast float %2078, %2085
  %2087 = call float @dx.op.unary.f32(i32 7, float %2086)  ; Saturate(value)
  %2088 = fsub fast float %2087, %1207
  %2089 = fmul fast float %2088, %2012
  %2090 = fadd fast float %2089, %1207
  %2091 = fmul fast float %2015, %1799
  %2092 = fmul fast float %2015, %1800
  %2093 = fmul fast float %2015, %1801
  %2094 = fadd fast float %2091, %1199
  %2095 = fadd fast float %2092, %1200
  %2096 = fadd fast float %2093, %1201
  %2097 = fmul fast float %2018, %1854
  %2098 = fadd fast float %2097, %1209
  %2099 = fmul fast float %2021, %1851
  %2100 = fmul fast float %2021, %1852
  %2101 = fmul fast float %2021, %1853
  %2102 = fadd fast float %2099, %1202
  %2103 = fadd fast float %2100, %1203
  %2104 = fadd fast float %2101, %1204
  br label %2133

; <label>:2105                                    ; preds = %2057
  %2106 = icmp eq i32 %2001, 8
  br i1 %2106, label %2107, label %2133

; <label>:2107                                    ; preds = %2105
  %2108 = fmul fast float %2006, %1694
  %2109 = fmul fast float %2006, %1695
  %2110 = fadd fast float %2108, %1191
  %2111 = fadd fast float %2109, %1192
  %2112 = call float @dx.op.binary.f32(i32 36, float %1208, float %1696)  ; FMin(a,b)
  %2113 = fsub fast float %2112, %1208
  %2114 = fmul fast float %2113, %2009
  %2115 = fadd fast float %2114, %1208
  %2116 = fsub fast float %1693, %1207
  %2117 = fmul fast float %2012, %2116
  %2118 = fadd fast float %2117, %1207
  %2119 = fmul fast float %2015, %1799
  %2120 = fmul fast float %2015, %1800
  %2121 = fmul fast float %2015, %1801
  %2122 = fadd fast float %2119, %1199
  %2123 = fadd fast float %2120, %1200
  %2124 = fadd fast float %2121, %1201
  %2125 = fmul fast float %2018, %1854
  %2126 = fadd fast float %2125, %1209
  %2127 = fmul fast float %2021, %1851
  %2128 = fmul fast float %2021, %1852
  %2129 = fmul fast float %2021, %1853
  %2130 = fadd fast float %2127, %1202
  %2131 = fadd fast float %2128, %1203
  %2132 = fadd fast float %2129, %1204
  br label %2133

; <label>:2133                                    ; preds = %2107, %2105, %2059, %2023, %1992, %1392, %1211, %1190
  %2134 = phi float [ %1191, %1992 ], [ %1191, %1392 ], [ %1191, %1190 ], [ %2110, %2107 ], [ %1191, %2105 ], [ %2062, %2059 ], [ %2028, %2023 ], [ %1191, %1211 ]
  %2135 = phi float [ %1192, %1992 ], [ %1192, %1392 ], [ %1192, %1190 ], [ %2111, %2107 ], [ %1192, %2105 ], [ %2063, %2059 ], [ %2029, %2023 ], [ %1192, %1211 ]
  %2136 = phi float [ %1993, %1992 ], [ %1193, %1392 ], [ %1193, %1190 ], [ %1993, %2107 ], [ %1993, %2105 ], [ %1993, %2059 ], [ %1993, %2023 ], [ %1193, %1211 ]
  %2137 = phi float [ %1994, %1992 ], [ %1194, %1392 ], [ %1194, %1190 ], [ %1994, %2107 ], [ %1994, %2105 ], [ %1994, %2059 ], [ %1994, %2023 ], [ %1194, %1211 ]
  %2138 = phi float [ %1995, %1992 ], [ %1195, %1392 ], [ %1195, %1190 ], [ %1995, %2107 ], [ %1995, %2105 ], [ %1995, %2059 ], [ %1995, %2023 ], [ %1195, %1211 ]
  %2139 = phi float [ %1996, %1992 ], [ %1196, %1392 ], [ %1196, %1190 ], [ %1996, %2107 ], [ %1996, %2105 ], [ %1996, %2059 ], [ %1996, %2023 ], [ %1196, %1211 ]
  %2140 = phi float [ %1997, %1992 ], [ %1197, %1392 ], [ %1197, %1190 ], [ %1997, %2107 ], [ %1997, %2105 ], [ %1997, %2059 ], [ %1997, %2023 ], [ %1197, %1211 ]
  %2141 = phi float [ %1998, %1992 ], [ %1198, %1392 ], [ %1198, %1190 ], [ %1998, %2107 ], [ %1998, %2105 ], [ %1998, %2059 ], [ %1998, %2023 ], [ %1198, %1211 ]
  %2142 = phi float [ %1199, %1992 ], [ %1199, %1392 ], [ %1199, %1190 ], [ %2122, %2107 ], [ %1199, %2105 ], [ %2094, %2059 ], [ %2042, %2023 ], [ %1199, %1211 ]
  %2143 = phi float [ %1200, %1992 ], [ %1200, %1392 ], [ %1200, %1190 ], [ %2123, %2107 ], [ %1200, %2105 ], [ %2095, %2059 ], [ %2043, %2023 ], [ %1200, %1211 ]
  %2144 = phi float [ %1201, %1992 ], [ %1201, %1392 ], [ %1201, %1190 ], [ %2124, %2107 ], [ %1201, %2105 ], [ %2096, %2059 ], [ %2044, %2023 ], [ %1201, %1211 ]
  %2145 = phi float [ %1202, %1992 ], [ %1202, %1392 ], [ %1202, %1190 ], [ %2130, %2107 ], [ %1202, %2105 ], [ %2102, %2059 ], [ %2054, %2023 ], [ %1202, %1211 ]
  %2146 = phi float [ %1203, %1992 ], [ %1203, %1392 ], [ %1203, %1190 ], [ %2131, %2107 ], [ %1203, %2105 ], [ %2103, %2059 ], [ %2055, %2023 ], [ %1203, %1211 ]
  %2147 = phi float [ %1204, %1992 ], [ %1204, %1392 ], [ %1204, %1190 ], [ %2132, %2107 ], [ %1204, %2105 ], [ %2104, %2059 ], [ %2056, %2023 ], [ %1204, %1211 ]
  %2148 = phi float [ %1999, %1992 ], [ %1205, %1392 ], [ %1205, %1190 ], [ %1999, %2107 ], [ %1999, %2105 ], [ %1999, %2059 ], [ %1999, %2023 ], [ %1205, %1211 ]
  %2149 = phi float [ %1207, %1992 ], [ %1207, %1392 ], [ %1207, %1190 ], [ %2118, %2107 ], [ %1207, %2105 ], [ %2090, %2059 ], [ %2035, %2023 ], [ %1207, %1211 ]
  %2150 = phi float [ %1208, %1992 ], [ %1208, %1392 ], [ %1208, %1190 ], [ %2115, %2107 ], [ %1208, %2105 ], [ %2067, %2059 ], [ %2032, %2023 ], [ %1208, %1211 ]
  %2151 = phi float [ %1209, %1992 ], [ %1209, %1392 ], [ %1209, %1190 ], [ %2126, %2107 ], [ %1209, %2105 ], [ %2098, %2059 ], [ %2047, %2023 ], [ %1209, %1211 ]
  %2152 = phi float [ %2000, %1992 ], [ %1210, %1392 ], [ %1210, %1190 ], [ %2000, %2107 ], [ %2000, %2105 ], [ %2000, %2059 ], [ %2000, %2023 ], [ %1210, %1211 ]
  br i1 %480, label %3075, label %2153

; <label>:2153                                    ; preds = %2133
  %2154 = icmp ult i32 %536, 3
  %2155 = add i32 %51, 56
  %2156 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2155, i32 undef)  ; BufferLoad(srv,index,wot)
  %2157 = extractvalue %dx.types.ResRet.i32 %2156, 0
  %2158 = add i32 %51, 60
  %2159 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2158, i32 undef)  ; BufferLoad(srv,index,wot)
  %2160 = extractvalue %dx.types.ResRet.i32 %2159, 0
  %2161 = or i32 %2160, %2157
  %2162 = icmp eq i32 %2161, 0
  br i1 %2162, label %3075, label %2163

; <label>:2163                                    ; preds = %2153
  %2164 = and i32 %2157, 262144
  %2165 = icmp ne i32 %2164, 0
  %2166 = select i1 %2165, float %57, float 1.000000e+00
  %2167 = select i1 %2165, float %58, float 0.000000e+00
  %2168 = select i1 %2165, float %59, float 0.000000e+00
  %2169 = select i1 %2165, float %60, float 1.000000e+00
  %2170 = select i1 %2165, float %61, float %89
  %2171 = select i1 %2165, float %62, float %90
  %2172 = add i32 %51, 316
  %2173 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2172, i32 undef)  ; BufferLoad(srv,index,wot)
  %2174 = extractvalue %dx.types.ResRet.i32 %2173, 0
  %2175 = lshr i32 %2174, 16
  %2176 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2175)  ; LegacyF16ToF32(value)
  %2177 = fmul fast float %2176, 0x3F50624DE0000000
  %2178 = add i32 %51, 120
  %2179 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2178, i32 undef)  ; BufferLoad(srv,index,wot)
  %2180 = extractvalue %dx.types.ResRet.i32 %2179, 0
  %2181 = lshr i32 %2180, 16
  %2182 = and i32 %2181, 255
  %2183 = lshr i32 %2180, 24
  %2184 = add i32 %51, 324
  %2185 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2184, i32 undef)  ; BufferLoad(srv,index,wot)
  %2186 = extractvalue %dx.types.ResRet.i32 %2185, 0
  %2187 = and i32 %2186, 65535
  %2188 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2187)  ; LegacyF16ToF32(value)
  %2189 = lshr i32 %2186, 16
  %2190 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2189)  ; LegacyF16ToF32(value)
  %2191 = add i32 %51, 64
  %2192 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2191, i32 undef)  ; BufferLoad(srv,index,wot)
  %2193 = extractvalue %dx.types.ResRet.i32 %2192, 0
  %2194 = lshr i32 %2193, 22
  %2195 = shl nuw nsw i32 %2194, 5
  %2196 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2195)  ; LegacyF16ToF32(value)
  %2197 = shl i32 %2193, 4
  %2198 = and i32 %2197, 32752
  %2199 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2198)  ; LegacyF16ToF32(value)
  %2200 = lshr i32 %2193, 7
  %2201 = and i32 %2200, 32752
  %2202 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2201)  ; LegacyF16ToF32(value)
  %2203 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2204 = extractvalue %dx.types.CBufRet.f32 %2203, 3
  %2205 = fmul fast float %2204, 1.000000e+03
  %2206 = fmul fast float %430, %2205
  %2207 = call float @dx.op.unary.f32(i32 22, float %2206)  ; Frc(value)
  %2208 = fadd fast float %2207, %420
  %2209 = fmul fast float %431, %2205
  %2210 = call float @dx.op.unary.f32(i32 22, float %2209)  ; Frc(value)
  %2211 = fadd fast float %2210, %422
  %2212 = fmul fast float %2177, %2205
  %2213 = call float @dx.op.unary.f32(i32 22, float %2212)  ; Frc(value)
  %2214 = fmul fast float %2213, 0x401921FB60000000
  %2215 = fadd fast float %2214, %2196
  %2216 = call float @dx.op.unary.f32(i32 13, float %2215)  ; Sin(value)
  %2217 = call float @dx.op.unary.f32(i32 12, float %2215)  ; Cos(value)
  %2218 = fsub fast float -0.000000e+00, %2216
  %2219 = fadd fast float %2170, -5.000000e-01
  %2220 = fadd fast float %2171, -5.000000e-01
  %2221 = fmul fast float %2188, %2219
  %2222 = fmul fast float %2190, %2220
  %2223 = fadd fast float %2221, 5.000000e-01
  %2224 = fadd fast float %2222, 5.000000e-01
  %2225 = fmul fast float %2199, %2223
  %2226 = fmul fast float %2202, %2224
  %2227 = fmul fast float %2217, %2225
  %2228 = call float @dx.op.tertiary.f32(i32 46, float %2218, float %2226, float %2227)  ; FMad(a,b,c)
  %2229 = fmul fast float %2216, %2225
  %2230 = call float @dx.op.tertiary.f32(i32 46, float %2217, float %2226, float %2229)  ; FMad(a,b,c)
  %2231 = fadd fast float %2208, %2228
  %2232 = fadd fast float %2211, %2230
  %2233 = icmp ugt i32 %2182, 1
  %2234 = icmp ugt i32 %2180, 33554431
  %2235 = or i1 %2234, %2233
  br i1 %2235, label %2236, label %2261

; <label>:2236                                    ; preds = %2163
  %2237 = add i32 %51, 260
  %2238 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2237, i32 undef)  ; BufferLoad(srv,index,wot)
  %2239 = extractvalue %dx.types.ResRet.i32 %2238, 0
  %2240 = lshr i32 %2239, 16
  %2241 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2240)  ; LegacyF16ToF32(value)
  %2242 = fmul fast float %2204, %2241
  %2243 = call float @dx.op.unary.f32(i32 22, float %2242)  ; Frc(value)
  %2244 = mul nuw nsw i32 %2182, %2183
  %2245 = uitofp i32 %2244 to float
  %2246 = fmul fast float %2243, %2245
  %2247 = call float @dx.op.unary.f32(i32 27, float %2246)  ; Round_ni(value)
  %2248 = fptoui float %2247 to i32
  %2249 = urem i32 %2248, %2182
  %2250 = udiv i32 %2248, %2183
  %2251 = call float @dx.op.unary.f32(i32 22, float %2231)  ; Frc(value)
  %2252 = call float @dx.op.unary.f32(i32 22, float %2232)  ; Frc(value)
  %2253 = uitofp i32 %2249 to float
  %2254 = uitofp i32 %2250 to float
  %2255 = fadd fast float %2251, %2253
  %2256 = fadd fast float %2252, %2254
  %2257 = uitofp i32 %2182 to float
  %2258 = uitofp i32 %2183 to float
  %2259 = fdiv fast float %2255, %2257
  %2260 = fdiv fast float %2256, %2258
  br label %2261

; <label>:2261                                    ; preds = %2236, %2163
  %2262 = phi float [ %2259, %2236 ], [ %2231, %2163 ]
  %2263 = phi float [ %2260, %2236 ], [ %2232, %2163 ]
  %2264 = and i32 %2157, 256
  %2265 = icmp eq i32 %2264, 0
  br i1 %2265, label %2312, label %2266

; <label>:2266                                    ; preds = %2261
  %2267 = add i32 %51, 496
  %2268 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2267, i32 undef)  ; BufferLoad(srv,index,wot)
  %2269 = extractvalue %dx.types.ResRet.i32 %2268, 0
  %2270 = add i32 %2269, 0
  %2271 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2270, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2272 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2271, %dx.types.Handle %108, float %2262, float %2263, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2273 = extractvalue %dx.types.ResRet.f32 %2272, 0
  %2274 = add i32 %51, 132
  %2275 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2274, i32 undef)  ; BufferLoad(srv,index,wot)
  %2276 = extractvalue %dx.types.ResRet.i32 %2275, 0
  %2277 = shl i32 %2276, 4
  %2278 = and i32 %2277, 32752
  %2279 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2278)  ; LegacyF16ToF32(value)
  %2280 = lshr i32 %2276, 7
  %2281 = and i32 %2280, 32752
  %2282 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2281)  ; LegacyF16ToF32(value)
  %2283 = fsub fast float 1.000000e+00, %532
  %2284 = call float @dx.op.binary.f32(i32 35, float %2283, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2285 = bitcast float %532 to i32
  %2286 = sitofp i32 %2285 to float
  %2287 = fadd fast float %2286, 0xC1CFBF8940000000
  %2288 = fmul fast float %2282, %2287
  %2289 = fadd fast float %2288, 0x41CFBF8940000000
  %2290 = fptosi float %2289 to i32
  %2291 = bitcast i32 %2290 to float
  %2292 = bitcast float %2284 to i32
  %2293 = sitofp i32 %2292 to float
  %2294 = fadd fast float %2293, 0xC1CFBF8940000000
  %2295 = fmul fast float %2294, %2282
  %2296 = fadd fast float %2295, 0x41CFBF8940000000
  %2297 = fptosi float %2296 to i32
  %2298 = bitcast i32 %2297 to float
  %2299 = fmul fast float %2291, %2279
  %2300 = fmul fast float %2298, %2279
  %2301 = fsub fast float %2284, %2299
  %2302 = fadd fast float %2300, %2284
  %2303 = call float @dx.op.unary.f32(i32 7, float %2301)  ; Saturate(value)
  %2304 = call float @dx.op.unary.f32(i32 7, float %2302)  ; Saturate(value)
  %2305 = fsub fast float %2273, %2303
  %2306 = fsub fast float %2304, %2303
  %2307 = bitcast float %2306 to i32
  %2308 = sub nsw i32 2129859010, %2307
  %2309 = bitcast i32 %2308 to float
  %2310 = fmul fast float %2309, %2305
  %2311 = call float @dx.op.unary.f32(i32 7, float %2310)  ; Saturate(value)
  br label %2312

; <label>:2312                                    ; preds = %2266, %2261
  %2313 = phi float [ %2311, %2266 ], [ %532, %2261 ]
  %2314 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2155, i32 undef)  ; BufferLoad(srv,index,wot)
  %2315 = extractvalue %dx.types.ResRet.i32 %2314, 0
  %2316 = and i32 %2315, 128
  %2317 = icmp eq i32 %2316, 0
  br i1 %2317, label %2334, label %2318

; <label>:2318                                    ; preds = %2312
  %2319 = add i32 %51, 480
  %2320 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2319, i32 undef)  ; BufferLoad(srv,index,wot)
  %2321 = extractvalue %dx.types.ResRet.i32 %2320, 0
  %2322 = add i32 %2321, 0
  %2323 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2322, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2324 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2323, %dx.types.Handle %108, float %2262, float %2263, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2325 = extractvalue %dx.types.ResRet.f32 %2324, 0
  %2326 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2155, i32 undef)  ; BufferLoad(srv,index,wot)
  %2327 = extractvalue %dx.types.ResRet.i32 %2326, 0
  %2328 = and i32 %2327, 524288
  %2329 = icmp ne i32 %2328, 0
  %2330 = fcmp fast ogt float %2325, 0x3FE0101020000000
  %2331 = select i1 %2330, float 1.000000e+00, float 0.000000e+00
  %2332 = select i1 %2329, float %2331, float %2325
  %2333 = fmul fast float %2332, %2313
  br label %2334

; <label>:2334                                    ; preds = %2318, %2312
  %2335 = phi float [ %2333, %2318 ], [ %2313, %2312 ]
  %2336 = fcmp fast ult float %2335, 0x3F70101020000000
  br i1 %2336, label %3075, label %2337

; <label>:2337                                    ; preds = %2334
  %2338 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2155, i32 undef)  ; BufferLoad(srv,index,wot)
  %2339 = extractvalue %dx.types.ResRet.i32 %2338, 0
  %2340 = and i32 %2339, 16
  %2341 = icmp eq i32 %2340, 0
  br i1 %2341, label %2540, label %2342

; <label>:2342                                    ; preds = %2337
  %2343 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2178, i32 undef)  ; BufferLoad(srv,index,wot)
  %2344 = extractvalue %dx.types.ResRet.i32 %2343, 0
  %2345 = add i32 %51, 432
  %2346 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2345, i32 undef)  ; BufferLoad(srv,index,wot)
  %2347 = extractvalue %dx.types.ResRet.i32 %2346, 0
  %2348 = add i32 %2347, 0
  %2349 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2348, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2350 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2349, %dx.types.Handle %107, float %2262, float %2263, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2351 = extractvalue %dx.types.ResRet.f32 %2350, 0
  %2352 = extractvalue %dx.types.ResRet.f32 %2350, 1
  %2353 = extractvalue %dx.types.ResRet.f32 %2350, 2
  %2354 = extractvalue %dx.types.ResRet.f32 %2350, 3
  %2355 = and i32 %2344, 255
  %2356 = uitofp i32 %2355 to float
  %2357 = lshr i32 %2344, 8
  %2358 = and i32 %2357, 255
  %2359 = uitofp i32 %2358 to float
  %2360 = fmul fast float %2354, %2356
  %2361 = fadd fast float %2360, %2359
  %2362 = fmul fast float %2361, 0x3F70101000000000
  %2363 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2155, i32 undef)  ; BufferLoad(srv,index,wot)
  %2364 = extractvalue %dx.types.ResRet.i32 %2363, 0
  %2365 = and i32 %2364, 512
  %2366 = icmp eq i32 %2365, 0
  br i1 %2366, label %2375, label %2367

; <label>:2367                                    ; preds = %2342
  %2368 = add i32 %51, 512
  %2369 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2368, i32 undef)  ; BufferLoad(srv,index,wot)
  %2370 = extractvalue %dx.types.ResRet.i32 %2369, 0
  %2371 = add i32 %2370, 0
  %2372 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2371, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2373 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2372, %dx.types.Handle %108, float %2262, float %2263, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2374 = extractvalue %dx.types.ResRet.f32 %2373, 0
  br label %2375

; <label>:2375                                    ; preds = %2367, %2342
  %2376 = phi float [ %2374, %2367 ], [ 1.000000e+00, %2342 ]
  %2377 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2155, i32 undef)  ; BufferLoad(srv,index,wot)
  %2378 = extractvalue %dx.types.ResRet.i32 %2377, 0
  %2379 = and i32 %2378, 33554432
  %2380 = icmp eq i32 %2379, 0
  br i1 %2380, label %2487, label %2381

; <label>:2381                                    ; preds = %2375
  %2382 = add i32 %51, 256
  %2383 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2382, i32 undef)  ; BufferLoad(srv,index,wot)
  %2384 = extractvalue %dx.types.ResRet.i32 %2383, 0
  %2385 = and i32 %2384, 65535
  %2386 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2385)  ; LegacyF16ToF32(value)
  %2387 = lshr i32 %2384, 16
  %2388 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2387)  ; LegacyF16ToF32(value)
  %2389 = add i32 %51, 260
  %2390 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2389, i32 undef)  ; BufferLoad(srv,index,wot)
  %2391 = extractvalue %dx.types.ResRet.i32 %2390, 0
  %2392 = and i32 %2391, 65535
  %2393 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2392)  ; LegacyF16ToF32(value)
  %2394 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %402, i32 undef)  ; BufferLoad(srv,index,wot)
  %2395 = extractvalue %dx.types.ResRet.i32 %2394, 0
  %2396 = lshr i32 %2395, 24
  %2397 = uitofp i32 %2396 to float
  %2398 = fmul fast float %2397, 0x3F70101020000000
  %2399 = and i32 %2395, 255
  %2400 = uitofp i32 %2399 to float
  %2401 = fmul fast float %2400, 0x3F70101020000000
  %2402 = lshr i32 %2395, 8
  %2403 = and i32 %2402, 255
  %2404 = uitofp i32 %2403 to float
  %2405 = fmul fast float %2404, 0x3F70101020000000
  %2406 = lshr i32 %2395, 16
  %2407 = and i32 %2406, 255
  %2408 = uitofp i32 %2407 to float
  %2409 = fmul fast float %2408, 0x3F70101020000000
  %2410 = add i32 %51, 252
  %2411 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2410, i32 undef)  ; BufferLoad(srv,index,wot)
  %2412 = extractvalue %dx.types.ResRet.i32 %2411, 0
  %2413 = lshr i32 %2412, 24
  %2414 = uitofp i32 %2413 to float
  %2415 = fmul fast float %2414, 0x3F70101020000000
  %2416 = and i32 %2412, 255
  %2417 = uitofp i32 %2416 to float
  %2418 = fmul fast float %2417, 0x3F70101020000000
  %2419 = lshr i32 %2412, 8
  %2420 = and i32 %2419, 255
  %2421 = uitofp i32 %2420 to float
  %2422 = fmul fast float %2421, 0x3F70101020000000
  %2423 = lshr i32 %2412, 16
  %2424 = and i32 %2423, 255
  %2425 = uitofp i32 %2424 to float
  %2426 = fmul fast float %2425, 0x3F70101020000000
  %2427 = bitcast float %2351 to i32
  %2428 = ashr i32 %2427, 1
  %2429 = sub nsw i32 1597463174, %2428
  %2430 = bitcast i32 %2429 to float
  %2431 = fmul fast float %2351, 5.000000e-01
  %2432 = fmul fast float %2430, %2430
  %2433 = fmul fast float %2432, %2431
  %2434 = fsub fast float 1.500000e+00, %2433
  %2435 = fmul fast float %2430, %2351
  %2436 = fmul fast float %2435, %2434
  %2437 = bitcast float %2352 to i32
  %2438 = ashr i32 %2437, 1
  %2439 = sub nsw i32 1597463174, %2438
  %2440 = bitcast i32 %2439 to float
  %2441 = fmul fast float %2352, 5.000000e-01
  %2442 = fmul fast float %2440, %2440
  %2443 = fmul fast float %2442, %2441
  %2444 = fsub fast float 1.500000e+00, %2443
  %2445 = fmul fast float %2440, %2352
  %2446 = fmul fast float %2445, %2444
  %2447 = bitcast float %2353 to i32
  %2448 = ashr i32 %2447, 1
  %2449 = sub nsw i32 1597463174, %2448
  %2450 = bitcast i32 %2449 to float
  %2451 = fmul fast float %2353, 5.000000e-01
  %2452 = fmul fast float %2450, %2450
  %2453 = fmul fast float %2452, %2451
  %2454 = fsub fast float 1.500000e+00, %2453
  %2455 = fmul fast float %2450, %2353
  %2456 = fmul fast float %2455, %2454
  %2457 = fsub fast float %2436, %2418
  %2458 = fsub fast float %2446, %2422
  %2459 = fsub fast float %2456, %2426
  %2460 = fmul fast float %2457, %2386
  %2461 = fmul fast float %2458, %2388
  %2462 = fmul fast float %2459, %2393
  %2463 = fadd fast float %2460, %2401
  %2464 = fadd fast float %2461, %2405
  %2465 = fadd fast float %2462, %2409
  %2466 = call float @dx.op.unary.f32(i32 7, float %2463)  ; Saturate(value)
  %2467 = call float @dx.op.unary.f32(i32 7, float %2464)  ; Saturate(value)
  %2468 = call float @dx.op.unary.f32(i32 7, float %2465)  ; Saturate(value)
  %2469 = fmul fast float %2466, %2466
  %2470 = fmul fast float %2467, %2467
  %2471 = fmul fast float %2468, %2468
  %2472 = fsub fast float %2469, %2351
  %2473 = fsub fast float %2470, %2352
  %2474 = fsub fast float %2471, %2353
  %2475 = fmul fast float %2472, %2376
  %2476 = fmul fast float %2473, %2376
  %2477 = fmul fast float %2474, %2376
  %2478 = fadd fast float %2475, %2351
  %2479 = fadd fast float %2476, %2352
  %2480 = fadd fast float %2477, %2353
  %2481 = fadd fast float %2398, %2362
  %2482 = fsub fast float %2481, %2415
  %2483 = call float @dx.op.unary.f32(i32 7, float %2482)  ; Saturate(value)
  %2484 = fsub fast float %2483, %2362
  %2485 = fmul fast float %2484, %2376
  %2486 = fadd fast float %2485, %2362
  br label %2540

; <label>:2487                                    ; preds = %2375
  %2488 = and i32 %2378, 134217728
  %2489 = icmp eq i32 %2488, 0
  br i1 %2489, label %2524, label %2490

; <label>:2490                                    ; preds = %2487
  %2491 = call float @dx.op.unary.f32(i32 24, float %407)  ; Sqrt(value)
  %2492 = call float @dx.op.unary.f32(i32 24, float %411)  ; Sqrt(value)
  %2493 = call float @dx.op.unary.f32(i32 24, float %415)  ; Sqrt(value)
  %2494 = fadd fast float %2491, -5.000000e-01
  %2495 = fadd fast float %2492, -5.000000e-01
  %2496 = fadd fast float %2493, -5.000000e-01
  %2497 = fmul fast float %2494, %2376
  %2498 = fmul fast float %2495, %2376
  %2499 = fmul fast float %2496, %2376
  %2500 = fadd fast float %2497, 5.000000e-01
  %2501 = fadd fast float %2498, 5.000000e-01
  %2502 = fadd fast float %2499, 5.000000e-01
  %2503 = call float @dx.op.unary.f32(i32 24, float %2351)  ; Sqrt(value)
  %2504 = call float @dx.op.unary.f32(i32 24, float %2352)  ; Sqrt(value)
  %2505 = call float @dx.op.unary.f32(i32 24, float %2353)  ; Sqrt(value)
  %2506 = fmul fast float %2500, 2.000000e+00
  %2507 = fsub fast float 1.000000e+00, %2506
  %2508 = fmul fast float %2507, %2503
  %2509 = fadd fast float %2508, %2506
  %2510 = fmul fast float %2509, %2503
  %2511 = fmul fast float %2501, 2.000000e+00
  %2512 = fsub fast float 1.000000e+00, %2511
  %2513 = fmul fast float %2512, %2504
  %2514 = fadd fast float %2513, %2511
  %2515 = fmul fast float %2514, %2504
  %2516 = fmul fast float %2502, 2.000000e+00
  %2517 = fsub fast float 1.000000e+00, %2516
  %2518 = fmul fast float %2517, %2505
  %2519 = fadd fast float %2518, %2516
  %2520 = fmul fast float %2519, %2505
  %2521 = fmul fast float %2510, %2510
  %2522 = fmul fast float %2515, %2515
  %2523 = fmul fast float %2520, %2520
  br label %2540

; <label>:2524                                    ; preds = %2487
  %2525 = fmul fast float %407, %407
  %2526 = fmul fast float %411, %411
  %2527 = fmul fast float %415, %415
  %2528 = fadd fast float %2525, -1.000000e+00
  %2529 = fadd fast float %2526, -1.000000e+00
  %2530 = fadd fast float %2527, -1.000000e+00
  %2531 = fmul fast float %2376, %2528
  %2532 = fmul fast float %2376, %2529
  %2533 = fmul fast float %2376, %2530
  %2534 = fadd fast float %2531, 1.000000e+00
  %2535 = fadd fast float %2532, 1.000000e+00
  %2536 = fadd fast float %2533, 1.000000e+00
  %2537 = fmul fast float %2534, %2351
  %2538 = fmul fast float %2535, %2352
  %2539 = fmul fast float %2536, %2353
  br label %2540

; <label>:2540                                    ; preds = %2524, %2490, %2381, %2337
  %2541 = phi float [ %2486, %2381 ], [ %2362, %2490 ], [ %2362, %2524 ], [ 0x3FA23C0BE0000000, %2337 ]
  %2542 = phi float [ %2478, %2381 ], [ %2521, %2490 ], [ %2537, %2524 ], [ 1.000000e+00, %2337 ]
  %2543 = phi float [ %2479, %2381 ], [ %2522, %2490 ], [ %2538, %2524 ], [ 1.000000e+00, %2337 ]
  %2544 = phi float [ %2480, %2381 ], [ %2523, %2490 ], [ %2539, %2524 ], [ 1.000000e+00, %2337 ]
  %2545 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2546 = extractvalue %dx.types.CBufRet.i32 %2545, 1
  %2547 = and i32 %2546, 1
  %2548 = icmp ne i32 %2547, 0
  %2549 = add i32 %51, 356
  %2550 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2549, i32 undef)  ; BufferLoad(srv,index,wot)
  %2551 = extractvalue %dx.types.ResRet.i32 %2550, 0
  %2552 = and i32 %2551, 32
  %2553 = icmp ne i32 %2552, 0
  %2554 = and i1 %2548, %2553
  %2555 = select i1 %2554, float 1.000000e+00, float %2542
  %2556 = select i1 %2554, float 0x3FD3333340000000, float %2543
  %2557 = select i1 %2554, float 0x3FD3333340000000, float %2544
  %2558 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2155, i32 undef)  ; BufferLoad(srv,index,wot)
  %2559 = extractvalue %dx.types.ResRet.i32 %2558, 0
  %2560 = and i32 %2559, 32
  %2561 = icmp eq i32 %2560, 0
  br i1 %2561, label %2634, label %2562

; <label>:2562                                    ; preds = %2540
  %2563 = add i32 %51, 124
  %2564 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2563, i32 undef)  ; BufferLoad(srv,index,wot)
  %2565 = extractvalue %dx.types.ResRet.i32 %2564, 0
  %2566 = add i32 %51, 448
  %2567 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2566, i32 undef)  ; BufferLoad(srv,index,wot)
  %2568 = extractvalue %dx.types.ResRet.i32 %2567, 0
  %2569 = add i32 %2568, 0
  %2570 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2569, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2571 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2570, %dx.types.Handle %107, float %2262, float %2263, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2572 = extractvalue %dx.types.ResRet.f32 %2571, 0
  %2573 = extractvalue %dx.types.ResRet.f32 %2571, 1
  %2574 = extractvalue %dx.types.ResRet.f32 %2571, 2
  %2575 = extractvalue %dx.types.ResRet.f32 %2571, 3
  %2576 = and i32 %2565, 255
  %2577 = uitofp i32 %2576 to float
  %2578 = lshr i32 %2565, 8
  %2579 = and i32 %2578, 255
  %2580 = uitofp i32 %2579 to float
  %2581 = lshr i32 %2565, 16
  %2582 = and i32 %2581, 255
  %2583 = uitofp i32 %2582 to float
  %2584 = fmul fast float %2583, 0x3F70101000000000
  %2585 = fmul fast float %2572, %2577
  %2586 = fadd fast float %2585, %2580
  %2587 = fmul fast float %2586, 0x3F70101000000000
  %2588 = fadd fast float %2573, -5.000000e-01
  %2589 = fadd fast float %2575, -5.000000e-01
  %2590 = fmul fast float %2588, %2584
  %2591 = fmul fast float %2589, %2584
  %2592 = fadd fast float %2590, 5.000000e-01
  %2593 = fadd fast float %2591, 5.000000e-01
  %2594 = fmul fast float %2592, 2.000000e+00
  %2595 = fadd fast float %2594, -1.000000e+00
  %2596 = fmul fast float %2593, 2.000000e+00
  %2597 = fadd fast float %2596, -1.000000e+00
  %2598 = fadd fast float %2595, %2597
  %2599 = fmul fast float %2598, 5.000000e-01
  %2600 = fsub fast float %2595, %2597
  %2601 = fmul fast float %2600, 5.000000e-01
  %2602 = call float @dx.op.unary.f32(i32 6, float %2599)  ; FAbs(value)
  %2603 = fsub fast float 1.000000e+00, %2602
  %2604 = call float @dx.op.unary.f32(i32 6, float %2601)  ; FAbs(value)
  %2605 = fsub fast float %2603, %2604
  %2606 = call float @dx.op.dot3.f32(i32 55, float %2599, float %2601, float %2605, float %2599, float %2601, float %2605)  ; Dot3(ax,ay,az,bx,by,bz)
  %2607 = call float @dx.op.unary.f32(i32 25, float %2606)  ; Rsqrt(value)
  %2608 = fmul fast float %2599, %2607
  %2609 = fmul fast float %2601, %2607
  %2610 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2155, i32 undef)  ; BufferLoad(srv,index,wot)
  %2611 = extractvalue %dx.types.ResRet.i32 %2610, 0
  %2612 = and i32 %2611, 67108864
  %2613 = icmp eq i32 %2612, 0
  br i1 %2613, label %2630, label %2614

; <label>:2614                                    ; preds = %2562
  %2615 = add i32 %51, 312
  %2616 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2615, i32 undef)  ; BufferLoad(srv,index,wot)
  %2617 = extractvalue %dx.types.ResRet.i32 %2616, 0
  %2618 = and i32 %2617, 65535
  %2619 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2618)  ; LegacyF16ToF32(value)
  %2620 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2172, i32 undef)  ; BufferLoad(srv,index,wot)
  %2621 = extractvalue %dx.types.ResRet.i32 %2620, 0
  %2622 = and i32 %2621, 65535
  %2623 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2622)  ; LegacyF16ToF32(value)
  %2624 = lshr i32 %2617, 16
  %2625 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2624)  ; LegacyF16ToF32(value)
  %2626 = fsub fast float %2587, %2625
  %2627 = fmul fast float %2626, %2619
  %2628 = fadd fast float %2627, %2623
  %2629 = call float @dx.op.unary.f32(i32 7, float %2628)  ; Saturate(value)
  br label %2630

; <label>:2630                                    ; preds = %2614, %2562
  %2631 = phi float [ %2629, %2614 ], [ %2587, %2562 ]
  %2632 = call float @dx.op.dot2.f32(i32 54, float %2608, float %2609, float %2166, float %2167)  ; Dot2(ax,ay,bx,by)
  %2633 = call float @dx.op.dot2.f32(i32 54, float %2608, float %2609, float %2168, float %2169)  ; Dot2(ax,ay,bx,by)
  br label %2634

; <label>:2634                                    ; preds = %2630, %2540
  %2635 = phi float [ %2631, %2630 ], [ 0x3FD6666660000000, %2540 ]
  %2636 = phi float [ %2632, %2630 ], [ 0.000000e+00, %2540 ]
  %2637 = phi float [ %2633, %2630 ], [ 0.000000e+00, %2540 ]
  %2638 = phi float [ %2574, %2630 ], [ 1.000000e+00, %2540 ]
  %2639 = add i32 %51, 192
  %2640 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2639, i32 undef)  ; BufferLoad(srv,index,wot)
  %2641 = extractvalue %dx.types.ResRet.i32 %2640, 0
  %2642 = lshr i32 %2641, 22
  %2643 = shl nuw nsw i32 %2642, 5
  %2644 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2643)  ; LegacyF16ToF32(value)
  %2645 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2155, i32 undef)  ; BufferLoad(srv,index,wot)
  %2646 = extractvalue %dx.types.ResRet.i32 %2645, 0
  %2647 = and i32 %2646, 64
  %2648 = icmp eq i32 %2647, 0
  br i1 %2648, label %2682, label %2649

; <label>:2649                                    ; preds = %2634
  %2650 = add i32 %51, 464
  %2651 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2650, i32 undef)  ; BufferLoad(srv,index,wot)
  %2652 = extractvalue %dx.types.ResRet.i32 %2651, 0
  %2653 = add i32 %2652, 0
  %2654 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2653, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2655 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2155, i32 undef)  ; BufferLoad(srv,index,wot)
  %2656 = extractvalue %dx.types.ResRet.i32 %2655, 0
  %2657 = and i32 %2656, 131072
  %2658 = icmp eq i32 %2657, 0
  %2659 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2654, %dx.types.Handle %107, float %2262, float %2263, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2660 = extractvalue %dx.types.ResRet.f32 %2659, 0
  %2661 = extractvalue %dx.types.ResRet.f32 %2659, 1
  %2662 = extractvalue %dx.types.ResRet.f32 %2659, 2
  %2663 = fmul fast float %2660, %395
  %2664 = fmul fast float %2661, %398
  %2665 = fmul fast float %2662, %401
  br i1 %2658, label %2672, label %2666

; <label>:2666                                    ; preds = %2649
  %2667 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2668 = extractvalue %dx.types.CBufRet.f32 %2667, 0
  %2669 = fmul fast float %2668, %2663
  %2670 = fmul fast float %2668, %2664
  %2671 = fmul fast float %2668, %2665
  br label %2672

; <label>:2672                                    ; preds = %2666, %2649
  %2673 = phi float [ %2669, %2666 ], [ %2663, %2649 ]
  %2674 = phi float [ %2670, %2666 ], [ %2664, %2649 ]
  %2675 = phi float [ %2671, %2666 ], [ %2665, %2649 ]
  %2676 = fmul fast float %2673, %2644
  %2677 = select i1 %294, float %2676, float %2673
  %2678 = call float @dx.op.dot3.f32(i32 55, float %2677, float %2674, float %2675, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2679 = select i1 %294, float 0.000000e+00, float %2673
  %2680 = select i1 %294, float %2678, float %2674
  %2681 = select i1 %294, float 0.000000e+00, float %2675
  br label %2682

; <label>:2682                                    ; preds = %2672, %2634
  %2683 = phi float [ %2679, %2672 ], [ 0.000000e+00, %2634 ]
  %2684 = phi float [ %2680, %2672 ], [ 0.000000e+00, %2634 ]
  %2685 = phi float [ %2681, %2672 ], [ 0.000000e+00, %2634 ]
  %2686 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2155, i32 undef)  ; BufferLoad(srv,index,wot)
  %2687 = extractvalue %dx.types.ResRet.i32 %2686, 0
  %2688 = and i32 %2687, 1024
  %2689 = icmp eq i32 %2688, 0
  br i1 %2689, label %2720, label %2690

; <label>:2690                                    ; preds = %2682
  %2691 = add i32 %51, 184
  %2692 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2691, i32 undef)  ; BufferLoad(srv,index,wot)
  %2693 = extractvalue %dx.types.ResRet.i32 %2692, 0
  %2694 = and i32 %2693, 255
  %2695 = uitofp i32 %2694 to float
  %2696 = fmul fast float %2695, 0x3F70101020000000
  %2697 = lshr i32 %2693, 8
  %2698 = and i32 %2697, 255
  %2699 = uitofp i32 %2698 to float
  %2700 = fmul fast float %2699, 0x3F70101020000000
  %2701 = lshr i32 %2693, 16
  %2702 = and i32 %2701, 255
  %2703 = uitofp i32 %2702 to float
  %2704 = fmul fast float %2703, 0x3F70101020000000
  %2705 = fmul fast float %2696, %2696
  %2706 = fmul fast float %2700, %2700
  %2707 = fmul fast float %2704, %2704
  %2708 = add i32 %51, 528
  %2709 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2708, i32 undef)  ; BufferLoad(srv,index,wot)
  %2710 = extractvalue %dx.types.ResRet.i32 %2709, 0
  %2711 = add i32 %2710, 0
  %2712 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2711, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2713 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2712, %dx.types.Handle %108, float %2262, float %2263, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2714 = extractvalue %dx.types.ResRet.f32 %2713, 0
  %2715 = extractvalue %dx.types.ResRet.f32 %2713, 1
  %2716 = extractvalue %dx.types.ResRet.f32 %2713, 2
  %2717 = fmul fast float %2705, %2714
  %2718 = fmul fast float %2706, %2715
  %2719 = fmul fast float %2707, %2716
  br label %2720

; <label>:2720                                    ; preds = %2690, %2682
  %2721 = phi float [ %2717, %2690 ], [ 0.000000e+00, %2682 ]
  %2722 = phi float [ %2718, %2690 ], [ 0.000000e+00, %2682 ]
  %2723 = phi float [ %2719, %2690 ], [ 0.000000e+00, %2682 ]
  %2724 = fcmp fast ogt float %2721, 0.000000e+00
  %2725 = fcmp fast ogt float %2722, 0.000000e+00
  %2726 = fcmp fast ogt float %2723, 0.000000e+00
  %2727 = call float @dx.op.unary.f32(i32 23, float %2721)  ; Log(value)
  %2728 = call float @dx.op.unary.f32(i32 23, float %2722)  ; Log(value)
  %2729 = call float @dx.op.unary.f32(i32 23, float %2723)  ; Log(value)
  %2730 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2639, i32 undef)  ; BufferLoad(srv,index,wot)
  %2731 = extractvalue %dx.types.ResRet.i32 %2730, 0
  %2732 = lshr i32 %2731, 7
  %2733 = and i32 %2732, 32752
  %2734 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2733)  ; LegacyF16ToF32(value)
  %2735 = fmul fast float %2727, 0xBFE62E4300000000
  %2736 = fmul fast float %2735, %2734
  %2737 = fmul fast float %2728, 0xBFE62E4300000000
  %2738 = fmul fast float %2737, %2734
  %2739 = fmul fast float %2729, 0xBFE62E4300000000
  %2740 = fmul fast float %2739, %2734
  %2741 = select i1 %2724, float %2736, float 1.270000e+02
  %2742 = select i1 %2725, float %2738, float 1.270000e+02
  %2743 = select i1 %2726, float %2740, float 1.270000e+02
  %2744 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2155, i32 undef)  ; BufferLoad(srv,index,wot)
  %2745 = extractvalue %dx.types.ResRet.i32 %2744, 0
  %2746 = and i32 %2745, 10240
  %2747 = icmp eq i32 %2746, 0
  br i1 %2747, label %2792, label %2748

; <label>:2748                                    ; preds = %2720
  %2749 = add i32 %51, 544
  %2750 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2749, i32 undef)  ; BufferLoad(srv,index,wot)
  %2751 = extractvalue %dx.types.ResRet.i32 %2750, 0
  %2752 = add i32 %2751, 0
  %2753 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2752, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2754 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2753, %dx.types.Handle %108, float %2262, float %2263, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2755 = extractvalue %dx.types.ResRet.f32 %2754, 1
  %2756 = extractvalue %dx.types.ResRet.f32 %2754, 3
  %2757 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2155, i32 undef)  ; BufferLoad(srv,index,wot)
  %2758 = extractvalue %dx.types.ResRet.i32 %2757, 0
  %2759 = and i32 %2758, 1048576
  %2760 = icmp ne i32 %2759, 0
  %2761 = and i32 %2758, 8192
  %2762 = icmp eq i32 %2761, 0
  br i1 %2762, label %2778, label %2763

; <label>:2763                                    ; preds = %2748
  %2764 = extractvalue %dx.types.ResRet.f32 %2754, 2
  %2765 = select i1 %2760, float %2764, float %2755
  %2766 = extractvalue %dx.types.ResRet.f32 %2754, 0
  %2767 = select i1 %2760, float %2766, float %2755
  %2768 = add i32 %51, 128
  %2769 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2768, i32 undef)  ; BufferLoad(srv,index,wot)
  %2770 = extractvalue %dx.types.ResRet.i32 %2769, 0
  %2771 = lshr i32 %2770, 16
  %2772 = and i32 %2771, 255
  %2773 = uitofp i32 %2772 to float
  %2774 = fmul fast float %2773, 0x3F80101020000000
  %2775 = fmul fast float %2774, %2767
  %2776 = fmul fast float %2774, %2755
  %2777 = fmul fast float %2774, %2765
  br label %2778

; <label>:2778                                    ; preds = %2763, %2748
  %2779 = phi float [ %2775, %2763 ], [ 0.000000e+00, %2748 ]
  %2780 = phi float [ %2776, %2763 ], [ 0.000000e+00, %2748 ]
  %2781 = phi float [ %2777, %2763 ], [ 0.000000e+00, %2748 ]
  %2782 = and i32 %2758, 2048
  %2783 = icmp eq i32 %2782, 0
  br i1 %2783, label %2792, label %2784

; <label>:2784                                    ; preds = %2778
  %2785 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2639, i32 undef)  ; BufferLoad(srv,index,wot)
  %2786 = extractvalue %dx.types.ResRet.i32 %2785, 0
  %2787 = shl i32 %2786, 4
  %2788 = and i32 %2787, 32752
  %2789 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2788)  ; LegacyF16ToF32(value)
  %2790 = fmul fast float %2789, %2756
  %2791 = call float @dx.op.binary.f32(i32 35, float %2790, float 0x3F70101020000000)  ; FMax(a,b)
  br label %2792

; <label>:2792                                    ; preds = %2784, %2778, %2720
  %2793 = phi float [ %2779, %2784 ], [ %2779, %2778 ], [ 0.000000e+00, %2720 ]
  %2794 = phi float [ %2780, %2784 ], [ %2780, %2778 ], [ 0.000000e+00, %2720 ]
  %2795 = phi float [ %2781, %2784 ], [ %2781, %2778 ], [ 0.000000e+00, %2720 ]
  %2796 = phi float [ %2791, %2784 ], [ 0x3F70101020000000, %2778 ], [ 0x3F70101020000000, %2720 ]
  %2797 = add i32 %51, 128
  %2798 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2797, i32 undef)  ; BufferLoad(srv,index,wot)
  %2799 = extractvalue %dx.types.ResRet.i32 %2798, 0
  %2800 = and i32 %2799, 255
  %2801 = uitofp i32 %2800 to float
  %2802 = lshr i32 %2799, 8
  %2803 = and i32 %2802, 255
  %2804 = uitofp i32 %2803 to float
  %2805 = call float @dx.op.dot3.f32(i32 55, float %2555, float %2556, float %2557, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2806 = fmul fast float %2804, %2805
  %2807 = fadd fast float %2806, %2801
  %2808 = fmul fast float %2807, 0x3F70101020000000
  %2809 = call float @dx.op.unary.f32(i32 7, float %2808)  ; Saturate(value)
  br i1 %2154, label %2810, label %2845

; <label>:2810                                    ; preds = %2792
  %2811 = fmul fast float %2796, 2.000000e+00
  %2812 = fcmp fast olt float %2741, 1.270000e+02
  %2813 = fcmp fast olt float %2742, 1.270000e+02
  %2814 = fcmp fast olt float %2743, 1.270000e+02
  %2815 = fmul fast float %2741, 0xBFF7154760000000
  %2816 = fmul fast float %2815, %2811
  %2817 = fmul fast float %2742, 0xBFF7154760000000
  %2818 = fmul fast float %2817, %2811
  %2819 = fmul fast float %2743, 0xBFF7154760000000
  %2820 = fmul fast float %2819, %2811
  %2821 = call float @dx.op.unary.f32(i32 21, float %2816)  ; Exp(value)
  %2822 = call float @dx.op.unary.f32(i32 21, float %2818)  ; Exp(value)
  %2823 = call float @dx.op.unary.f32(i32 21, float %2820)  ; Exp(value)
  %2824 = call float @dx.op.unary.f32(i32 7, float %2821)  ; Saturate(value)
  %2825 = call float @dx.op.unary.f32(i32 7, float %2822)  ; Saturate(value)
  %2826 = call float @dx.op.unary.f32(i32 7, float %2823)  ; Saturate(value)
  %2827 = fadd fast float %2824, -1.000000e+00
  %2828 = select i1 %2812, float %2827, float -1.000000e+00
  %2829 = fadd fast float %2825, -1.000000e+00
  %2830 = select i1 %2813, float %2829, float -1.000000e+00
  %2831 = fadd fast float %2826, -1.000000e+00
  %2832 = select i1 %2814, float %2831, float -1.000000e+00
  %2833 = fmul fast float %2828, %2335
  %2834 = fmul fast float %2830, %2335
  %2835 = fmul fast float %2832, %2335
  %2836 = fadd fast float %2833, 1.000000e+00
  %2837 = fadd fast float %2834, 1.000000e+00
  %2838 = fadd fast float %2835, 1.000000e+00
  %2839 = fmul fast float %2836, %2136
  %2840 = fmul fast float %2837, %2137
  %2841 = fmul fast float %2838, %2138
  %2842 = fmul fast float %2836, %2139
  %2843 = fmul fast float %2837, %2140
  %2844 = fmul fast float %2838, %2141
  br label %2845

; <label>:2845                                    ; preds = %2810, %2792
  %2846 = phi float [ %2839, %2810 ], [ %2136, %2792 ]
  %2847 = phi float [ %2840, %2810 ], [ %2137, %2792 ]
  %2848 = phi float [ %2841, %2810 ], [ %2138, %2792 ]
  %2849 = phi float [ %2842, %2810 ], [ %2139, %2792 ]
  %2850 = phi float [ %2843, %2810 ], [ %2140, %2792 ]
  %2851 = phi float [ %2844, %2810 ], [ %2141, %2792 ]
  %2852 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2155, i32 undef)  ; BufferLoad(srv,index,wot)
  %2853 = extractvalue %dx.types.ResRet.i32 %2852, 0
  %2854 = and i32 %2853, 3
  %2855 = icmp eq i32 %2854, 3
  br i1 %2855, label %2934, label %2856

; <label>:2856                                    ; preds = %2845
  %2857 = and i32 %2853, 16
  %2858 = icmp ne i32 %2857, 0
  %2859 = select i1 %2858, float %2335, float 0.000000e+00
  %2860 = icmp eq i32 %2854, 0
  br i1 %2860, label %2861, label %2889

; <label>:2861                                    ; preds = %2856
  %2862 = and i32 %2853, 64
  %2863 = icmp ne i32 %2862, 0
  %2864 = select i1 %2863, float %2335, float 0.000000e+00
  %2865 = fsub fast float %2555, %2846
  %2866 = fsub fast float %2556, %2847
  %2867 = fsub fast float %2557, %2848
  %2868 = fmul fast float %2859, %2865
  %2869 = fmul fast float %2859, %2866
  %2870 = fmul fast float %2859, %2867
  %2871 = fadd fast float %2868, %2846
  %2872 = fadd fast float %2869, %2847
  %2873 = fadd fast float %2870, %2848
  %2874 = fsub fast float %2541, %2148
  %2875 = fmul fast float %2859, %2874
  %2876 = fadd fast float %2875, %2148
  %2877 = fsub fast float %2683, %2849
  %2878 = fsub fast float %2684, %2850
  %2879 = fsub fast float %2685, %2851
  %2880 = fmul fast float %2864, %2877
  %2881 = fmul fast float %2864, %2878
  %2882 = fmul fast float %2864, %2879
  %2883 = fadd fast float %2880, %2849
  %2884 = fadd fast float %2881, %2850
  %2885 = fadd fast float %2882, %2851
  %2886 = fsub fast float %2809, %2152
  %2887 = fmul fast float %2859, %2886
  %2888 = fadd fast float %2887, %2152
  br label %2934

; <label>:2889                                    ; preds = %2856
  %2890 = icmp eq i32 %2854, 1
  br i1 %2890, label %2891, label %2904

; <label>:2891                                    ; preds = %2889
  %2892 = fadd fast float %2555, -1.000000e+00
  %2893 = fadd fast float %2556, -1.000000e+00
  %2894 = fadd fast float %2557, -1.000000e+00
  %2895 = fmul fast float %2859, %2892
  %2896 = fmul fast float %2859, %2893
  %2897 = fmul fast float %2859, %2894
  %2898 = fadd fast float %2895, 1.000000e+00
  %2899 = fadd fast float %2896, 1.000000e+00
  %2900 = fadd fast float %2897, 1.000000e+00
  %2901 = fmul fast float %2898, %2846
  %2902 = fmul fast float %2899, %2847
  %2903 = fmul fast float %2900, %2848
  br label %2934

; <label>:2904                                    ; preds = %2889
  %2905 = icmp eq i32 %2854, 2
  br i1 %2905, label %2906, label %2934

; <label>:2906                                    ; preds = %2904
  %2907 = call float @dx.op.unary.f32(i32 24, float %2555)  ; Sqrt(value)
  %2908 = call float @dx.op.unary.f32(i32 24, float %2556)  ; Sqrt(value)
  %2909 = call float @dx.op.unary.f32(i32 24, float %2557)  ; Sqrt(value)
  %2910 = fadd fast float %2907, -5.000000e-01
  %2911 = fadd fast float %2908, -5.000000e-01
  %2912 = fadd fast float %2909, -5.000000e-01
  %2913 = fmul fast float %2910, %2859
  %2914 = fmul fast float %2911, %2859
  %2915 = fmul fast float %2912, %2859
  %2916 = fadd fast float %2913, 5.000000e-01
  %2917 = fadd fast float %2914, 5.000000e-01
  %2918 = fadd fast float %2915, 5.000000e-01
  %2919 = fmul fast float %2916, 2.000000e+00
  %2920 = fsub fast float 1.000000e+00, %2919
  %2921 = fmul fast float %2920, %2846
  %2922 = fadd fast float %2921, %2919
  %2923 = fmul fast float %2922, %2846
  %2924 = fmul fast float %2917, 2.000000e+00
  %2925 = fsub fast float 1.000000e+00, %2924
  %2926 = fmul fast float %2925, %2847
  %2927 = fadd fast float %2926, %2924
  %2928 = fmul fast float %2927, %2847
  %2929 = fmul fast float %2918, 2.000000e+00
  %2930 = fsub fast float 1.000000e+00, %2929
  %2931 = fmul fast float %2930, %2848
  %2932 = fadd fast float %2931, %2929
  %2933 = fmul fast float %2932, %2848
  br label %2934

; <label>:2934                                    ; preds = %2906, %2904, %2891, %2861, %2845
  %2935 = phi float [ %2846, %2845 ], [ %2923, %2906 ], [ %2846, %2904 ], [ %2901, %2891 ], [ %2871, %2861 ]
  %2936 = phi float [ %2847, %2845 ], [ %2928, %2906 ], [ %2847, %2904 ], [ %2902, %2891 ], [ %2872, %2861 ]
  %2937 = phi float [ %2848, %2845 ], [ %2933, %2906 ], [ %2848, %2904 ], [ %2903, %2891 ], [ %2873, %2861 ]
  %2938 = phi float [ %2849, %2845 ], [ %2849, %2906 ], [ %2849, %2904 ], [ %2849, %2891 ], [ %2883, %2861 ]
  %2939 = phi float [ %2850, %2845 ], [ %2850, %2906 ], [ %2850, %2904 ], [ %2850, %2891 ], [ %2884, %2861 ]
  %2940 = phi float [ %2851, %2845 ], [ %2851, %2906 ], [ %2851, %2904 ], [ %2851, %2891 ], [ %2885, %2861 ]
  %2941 = phi float [ %2148, %2845 ], [ %2148, %2906 ], [ %2148, %2904 ], [ %2148, %2891 ], [ %2876, %2861 ]
  %2942 = phi float [ %2152, %2845 ], [ %2152, %2906 ], [ %2152, %2904 ], [ %2152, %2891 ], [ %2888, %2861 ]
  %2943 = and i32 %2853, 12
  %2944 = icmp eq i32 %2943, 12
  br i1 %2944, label %3075, label %2945

; <label>:2945                                    ; preds = %2934
  %2946 = and i32 %2853, 2097184
  %2947 = icmp eq i32 %2946, 2097184
  %2948 = select i1 %2947, float %2335, float 0.000000e+00
  %2949 = and i32 %2853, 4194336
  %2950 = icmp eq i32 %2949, 4194336
  %2951 = select i1 %2950, float %2335, float 0.000000e+00
  %2952 = and i32 %2853, 8388640
  %2953 = icmp eq i32 %2952, 8388640
  %2954 = select i1 %2953, float %2335, float 0.000000e+00
  %2955 = and i32 %2853, 1024
  %2956 = icmp ne i32 %2955, 0
  %2957 = select i1 %2956, float %2335, float 0.000000e+00
  %2958 = and i32 %2853, 2048
  %2959 = icmp ne i32 %2958, 0
  %2960 = select i1 %2959, float %2335, float 0.000000e+00
  %2961 = and i32 %2853, 8192
  %2962 = icmp ne i32 %2961, 0
  %2963 = select i1 %2962, float %2335, float 0.000000e+00
  %2964 = icmp eq i32 %2943, 0
  br i1 %2964, label %2965, label %2999

; <label>:2965                                    ; preds = %2945
  %2966 = fsub fast float %2636, %2134
  %2967 = fsub fast float %2637, %2135
  %2968 = fmul fast float %2948, %2966
  %2969 = fmul fast float %2948, %2967
  %2970 = fadd fast float %2968, %2134
  %2971 = fadd fast float %2969, %2135
  %2972 = fsub fast float %2638, %2150
  %2973 = fmul fast float %2951, %2972
  %2974 = fadd fast float %2973, %2150
  %2975 = fsub fast float %2635, %2149
  %2976 = fmul fast float %2954, %2975
  %2977 = fadd fast float %2976, %2149
  %2978 = fsub fast float %2741, %2142
  %2979 = fsub fast float %2742, %2143
  %2980 = fsub fast float %2743, %2144
  %2981 = fmul fast float %2957, %2978
  %2982 = fmul fast float %2957, %2979
  %2983 = fmul fast float %2957, %2980
  %2984 = fadd fast float %2981, %2142
  %2985 = fadd fast float %2982, %2143
  %2986 = fadd fast float %2983, %2144
  %2987 = fsub fast float %2796, %2151
  %2988 = fmul fast float %2960, %2987
  %2989 = fadd fast float %2988, %2151
  %2990 = fsub fast float %2793, %2145
  %2991 = fsub fast float %2794, %2146
  %2992 = fsub fast float %2795, %2147
  %2993 = fmul fast float %2963, %2990
  %2994 = fmul fast float %2963, %2991
  %2995 = fmul fast float %2963, %2992
  %2996 = fadd fast float %2993, %2145
  %2997 = fadd fast float %2994, %2146
  %2998 = fadd fast float %2995, %2147
  br label %3075

; <label>:2999                                    ; preds = %2945
  %3000 = icmp eq i32 %2943, 4
  br i1 %3000, label %3001, label %3047

; <label>:3001                                    ; preds = %2999
  %3002 = fmul fast float %2948, %2636
  %3003 = fmul fast float %2948, %2637
  %3004 = fadd fast float %3002, %2134
  %3005 = fadd fast float %3003, %2135
  %3006 = call float @dx.op.binary.f32(i32 36, float %2150, float %2638)  ; FMin(a,b)
  %3007 = fsub fast float %3006, %2150
  %3008 = fmul fast float %3007, %2951
  %3009 = fadd fast float %3008, %2150
  %3010 = fadd fast float %2635, %2149
  %3011 = fmul fast float %3010, 0x3FF337FAE0000000
  %3012 = fmul fast float %2149, %2149
  %3013 = fmul fast float %2635, %2635
  %3014 = fadd fast float %3013, %3012
  %3015 = fmul fast float %3014, 0x3FE5152B00000000
  %3016 = fmul fast float %2149, 0xBFCC1F85E0000000
  %3017 = fmul fast float %3016, %2635
  %3018 = fadd fast float %3017, 0xBFE1363700000000
  %3019 = fadd fast float %3018, %3011
  %3020 = fsub fast float %3019, %3015
  %3021 = fmul fast float %3010, 0x3FBA6F0D00000000
  %3022 = fmul fast float %3014, 0x3FD0432880000000
  %3023 = fmul fast float %2149, 0xBFEF110800000000
  %3024 = fmul fast float %3023, %2635
  %3025 = fadd fast float %3024, 1.000000e+00
  %3026 = fsub fast float %3025, %3021
  %3027 = fadd fast float %3026, %3022
  %3028 = fdiv fast float %3020, %3027
  %3029 = call float @dx.op.unary.f32(i32 7, float %3028)  ; Saturate(value)
  %3030 = fsub fast float %3029, %2149
  %3031 = fmul fast float %3030, %2954
  %3032 = fadd fast float %3031, %2149
  %3033 = fmul fast float %2957, %2741
  %3034 = fmul fast float %2957, %2742
  %3035 = fmul fast float %2957, %2743
  %3036 = fadd fast float %3033, %2142
  %3037 = fadd fast float %3034, %2143
  %3038 = fadd fast float %3035, %2144
  %3039 = fmul fast float %2960, %2796
  %3040 = fadd fast float %3039, %2151
  %3041 = fmul fast float %2963, %2793
  %3042 = fmul fast float %2963, %2794
  %3043 = fmul fast float %2963, %2795
  %3044 = fadd fast float %3041, %2145
  %3045 = fadd fast float %3042, %2146
  %3046 = fadd fast float %3043, %2147
  br label %3075

; <label>:3047                                    ; preds = %2999
  %3048 = icmp eq i32 %2943, 8
  br i1 %3048, label %3049, label %3075

; <label>:3049                                    ; preds = %3047
  %3050 = fmul fast float %2948, %2636
  %3051 = fmul fast float %2948, %2637
  %3052 = fadd fast float %3050, %2134
  %3053 = fadd fast float %3051, %2135
  %3054 = call float @dx.op.binary.f32(i32 36, float %2150, float %2638)  ; FMin(a,b)
  %3055 = fsub fast float %3054, %2150
  %3056 = fmul fast float %3055, %2951
  %3057 = fadd fast float %3056, %2150
  %3058 = fsub fast float %2635, %2149
  %3059 = fmul fast float %2954, %3058
  %3060 = fadd fast float %3059, %2149
  %3061 = fmul fast float %2957, %2741
  %3062 = fmul fast float %2957, %2742
  %3063 = fmul fast float %2957, %2743
  %3064 = fadd fast float %3061, %2142
  %3065 = fadd fast float %3062, %2143
  %3066 = fadd fast float %3063, %2144
  %3067 = fmul fast float %2960, %2796
  %3068 = fadd fast float %3067, %2151
  %3069 = fmul fast float %2963, %2793
  %3070 = fmul fast float %2963, %2794
  %3071 = fmul fast float %2963, %2795
  %3072 = fadd fast float %3069, %2145
  %3073 = fadd fast float %3070, %2146
  %3074 = fadd fast float %3071, %2147
  br label %3075

; <label>:3075                                    ; preds = %3049, %3047, %3001, %2965, %2934, %2334, %2153, %2133
  %3076 = phi float [ %2134, %2934 ], [ %2134, %2334 ], [ %2134, %2133 ], [ %3052, %3049 ], [ %2134, %3047 ], [ %3004, %3001 ], [ %2970, %2965 ], [ %2134, %2153 ]
  %3077 = phi float [ %2135, %2934 ], [ %2135, %2334 ], [ %2135, %2133 ], [ %3053, %3049 ], [ %2135, %3047 ], [ %3005, %3001 ], [ %2971, %2965 ], [ %2135, %2153 ]
  %3078 = phi float [ %2935, %2934 ], [ %2136, %2334 ], [ %2136, %2133 ], [ %2935, %3049 ], [ %2935, %3047 ], [ %2935, %3001 ], [ %2935, %2965 ], [ %2136, %2153 ]
  %3079 = phi float [ %2936, %2934 ], [ %2137, %2334 ], [ %2137, %2133 ], [ %2936, %3049 ], [ %2936, %3047 ], [ %2936, %3001 ], [ %2936, %2965 ], [ %2137, %2153 ]
  %3080 = phi float [ %2937, %2934 ], [ %2138, %2334 ], [ %2138, %2133 ], [ %2937, %3049 ], [ %2937, %3047 ], [ %2937, %3001 ], [ %2937, %2965 ], [ %2138, %2153 ]
  %3081 = phi float [ %2938, %2934 ], [ %2139, %2334 ], [ %2139, %2133 ], [ %2938, %3049 ], [ %2938, %3047 ], [ %2938, %3001 ], [ %2938, %2965 ], [ %2139, %2153 ]
  %3082 = phi float [ %2939, %2934 ], [ %2140, %2334 ], [ %2140, %2133 ], [ %2939, %3049 ], [ %2939, %3047 ], [ %2939, %3001 ], [ %2939, %2965 ], [ %2140, %2153 ]
  %3083 = phi float [ %2940, %2934 ], [ %2141, %2334 ], [ %2141, %2133 ], [ %2940, %3049 ], [ %2940, %3047 ], [ %2940, %3001 ], [ %2940, %2965 ], [ %2141, %2153 ]
  %3084 = phi float [ %2142, %2934 ], [ %2142, %2334 ], [ %2142, %2133 ], [ %3064, %3049 ], [ %2142, %3047 ], [ %3036, %3001 ], [ %2984, %2965 ], [ %2142, %2153 ]
  %3085 = phi float [ %2143, %2934 ], [ %2143, %2334 ], [ %2143, %2133 ], [ %3065, %3049 ], [ %2143, %3047 ], [ %3037, %3001 ], [ %2985, %2965 ], [ %2143, %2153 ]
  %3086 = phi float [ %2144, %2934 ], [ %2144, %2334 ], [ %2144, %2133 ], [ %3066, %3049 ], [ %2144, %3047 ], [ %3038, %3001 ], [ %2986, %2965 ], [ %2144, %2153 ]
  %3087 = phi float [ %2145, %2934 ], [ %2145, %2334 ], [ %2145, %2133 ], [ %3072, %3049 ], [ %2145, %3047 ], [ %3044, %3001 ], [ %2996, %2965 ], [ %2145, %2153 ]
  %3088 = phi float [ %2146, %2934 ], [ %2146, %2334 ], [ %2146, %2133 ], [ %3073, %3049 ], [ %2146, %3047 ], [ %3045, %3001 ], [ %2997, %2965 ], [ %2146, %2153 ]
  %3089 = phi float [ %2147, %2934 ], [ %2147, %2334 ], [ %2147, %2133 ], [ %3074, %3049 ], [ %2147, %3047 ], [ %3046, %3001 ], [ %2998, %2965 ], [ %2147, %2153 ]
  %3090 = phi float [ %2941, %2934 ], [ %2148, %2334 ], [ %2148, %2133 ], [ %2941, %3049 ], [ %2941, %3047 ], [ %2941, %3001 ], [ %2941, %2965 ], [ %2148, %2153 ]
  %3091 = phi float [ %2149, %2934 ], [ %2149, %2334 ], [ %2149, %2133 ], [ %3060, %3049 ], [ %2149, %3047 ], [ %3032, %3001 ], [ %2977, %2965 ], [ %2149, %2153 ]
  %3092 = phi float [ %2150, %2934 ], [ %2150, %2334 ], [ %2150, %2133 ], [ %3057, %3049 ], [ %2150, %3047 ], [ %3009, %3001 ], [ %2974, %2965 ], [ %2150, %2153 ]
  %3093 = phi float [ %2151, %2934 ], [ %2151, %2334 ], [ %2151, %2133 ], [ %3068, %3049 ], [ %2151, %3047 ], [ %3040, %3001 ], [ %2989, %2965 ], [ %2151, %2153 ]
  %3094 = phi float [ %2942, %2934 ], [ %2152, %2334 ], [ %2152, %2133 ], [ %2942, %3049 ], [ %2942, %3047 ], [ %2942, %3001 ], [ %2942, %2965 ], [ %2152, %2153 ]
  br i1 %482, label %4017, label %3095

; <label>:3095                                    ; preds = %3075
  %3096 = icmp ult i32 %536, 4
  %3097 = add i32 %51, 72
  %3098 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3097, i32 undef)  ; BufferLoad(srv,index,wot)
  %3099 = extractvalue %dx.types.ResRet.i32 %3098, 0
  %3100 = add i32 %51, 76
  %3101 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3100, i32 undef)  ; BufferLoad(srv,index,wot)
  %3102 = extractvalue %dx.types.ResRet.i32 %3101, 0
  %3103 = or i32 %3102, %3099
  %3104 = icmp eq i32 %3103, 0
  br i1 %3104, label %4017, label %3105

; <label>:3105                                    ; preds = %3095
  %3106 = and i32 %3099, 262144
  %3107 = icmp ne i32 %3106, 0
  %3108 = select i1 %3107, float %57, float 1.000000e+00
  %3109 = select i1 %3107, float %58, float 0.000000e+00
  %3110 = select i1 %3107, float %59, float 0.000000e+00
  %3111 = select i1 %3107, float %60, float 1.000000e+00
  %3112 = select i1 %3107, float %61, float %89
  %3113 = select i1 %3107, float %62, float %90
  %3114 = add i32 %51, 332
  %3115 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3114, i32 undef)  ; BufferLoad(srv,index,wot)
  %3116 = extractvalue %dx.types.ResRet.i32 %3115, 0
  %3117 = lshr i32 %3116, 16
  %3118 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3117)  ; LegacyF16ToF32(value)
  %3119 = fmul fast float %3118, 0x3F50624DE0000000
  %3120 = add i32 %51, 136
  %3121 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3120, i32 undef)  ; BufferLoad(srv,index,wot)
  %3122 = extractvalue %dx.types.ResRet.i32 %3121, 0
  %3123 = lshr i32 %3122, 16
  %3124 = and i32 %3123, 255
  %3125 = lshr i32 %3122, 24
  %3126 = add i32 %51, 340
  %3127 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3126, i32 undef)  ; BufferLoad(srv,index,wot)
  %3128 = extractvalue %dx.types.ResRet.i32 %3127, 0
  %3129 = and i32 %3128, 65535
  %3130 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3129)  ; LegacyF16ToF32(value)
  %3131 = lshr i32 %3128, 16
  %3132 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3131)  ; LegacyF16ToF32(value)
  %3133 = add i32 %51, 80
  %3134 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3133, i32 undef)  ; BufferLoad(srv,index,wot)
  %3135 = extractvalue %dx.types.ResRet.i32 %3134, 0
  %3136 = lshr i32 %3135, 22
  %3137 = shl nuw nsw i32 %3136, 5
  %3138 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3137)  ; LegacyF16ToF32(value)
  %3139 = shl i32 %3135, 4
  %3140 = and i32 %3139, 32752
  %3141 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3140)  ; LegacyF16ToF32(value)
  %3142 = lshr i32 %3135, 7
  %3143 = and i32 %3142, 32752
  %3144 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3143)  ; LegacyF16ToF32(value)
  %3145 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %3146 = extractvalue %dx.types.CBufRet.f32 %3145, 3
  %3147 = fmul fast float %3146, 1.000000e+03
  %3148 = fmul fast float %472, %3147
  %3149 = call float @dx.op.unary.f32(i32 22, float %3148)  ; Frc(value)
  %3150 = fadd fast float %3149, %462
  %3151 = fmul fast float %473, %3147
  %3152 = call float @dx.op.unary.f32(i32 22, float %3151)  ; Frc(value)
  %3153 = fadd fast float %3152, %464
  %3154 = fmul fast float %3119, %3147
  %3155 = call float @dx.op.unary.f32(i32 22, float %3154)  ; Frc(value)
  %3156 = fmul fast float %3155, 0x401921FB60000000
  %3157 = fadd fast float %3156, %3138
  %3158 = call float @dx.op.unary.f32(i32 13, float %3157)  ; Sin(value)
  %3159 = call float @dx.op.unary.f32(i32 12, float %3157)  ; Cos(value)
  %3160 = fsub fast float -0.000000e+00, %3158
  %3161 = fadd fast float %3112, -5.000000e-01
  %3162 = fadd fast float %3113, -5.000000e-01
  %3163 = fmul fast float %3130, %3161
  %3164 = fmul fast float %3132, %3162
  %3165 = fadd fast float %3163, 5.000000e-01
  %3166 = fadd fast float %3164, 5.000000e-01
  %3167 = fmul fast float %3141, %3165
  %3168 = fmul fast float %3144, %3166
  %3169 = fmul fast float %3159, %3167
  %3170 = call float @dx.op.tertiary.f32(i32 46, float %3160, float %3168, float %3169)  ; FMad(a,b,c)
  %3171 = fmul fast float %3158, %3167
  %3172 = call float @dx.op.tertiary.f32(i32 46, float %3159, float %3168, float %3171)  ; FMad(a,b,c)
  %3173 = fadd fast float %3150, %3170
  %3174 = fadd fast float %3153, %3172
  %3175 = icmp ugt i32 %3124, 1
  %3176 = icmp ugt i32 %3122, 33554431
  %3177 = or i1 %3176, %3175
  br i1 %3177, label %3178, label %3203

; <label>:3178                                    ; preds = %3105
  %3179 = add i32 %51, 276
  %3180 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3179, i32 undef)  ; BufferLoad(srv,index,wot)
  %3181 = extractvalue %dx.types.ResRet.i32 %3180, 0
  %3182 = lshr i32 %3181, 16
  %3183 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3182)  ; LegacyF16ToF32(value)
  %3184 = fmul fast float %3146, %3183
  %3185 = call float @dx.op.unary.f32(i32 22, float %3184)  ; Frc(value)
  %3186 = mul nuw nsw i32 %3124, %3125
  %3187 = uitofp i32 %3186 to float
  %3188 = fmul fast float %3185, %3187
  %3189 = call float @dx.op.unary.f32(i32 27, float %3188)  ; Round_ni(value)
  %3190 = fptoui float %3189 to i32
  %3191 = urem i32 %3190, %3124
  %3192 = udiv i32 %3190, %3125
  %3193 = call float @dx.op.unary.f32(i32 22, float %3173)  ; Frc(value)
  %3194 = call float @dx.op.unary.f32(i32 22, float %3174)  ; Frc(value)
  %3195 = uitofp i32 %3191 to float
  %3196 = uitofp i32 %3192 to float
  %3197 = fadd fast float %3193, %3195
  %3198 = fadd fast float %3194, %3196
  %3199 = uitofp i32 %3124 to float
  %3200 = uitofp i32 %3125 to float
  %3201 = fdiv fast float %3197, %3199
  %3202 = fdiv fast float %3198, %3200
  br label %3203

; <label>:3203                                    ; preds = %3178, %3105
  %3204 = phi float [ %3201, %3178 ], [ %3173, %3105 ]
  %3205 = phi float [ %3202, %3178 ], [ %3174, %3105 ]
  %3206 = and i32 %3099, 256
  %3207 = icmp eq i32 %3206, 0
  br i1 %3207, label %3254, label %3208

; <label>:3208                                    ; preds = %3203
  %3209 = add i32 %51, 500
  %3210 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3209, i32 undef)  ; BufferLoad(srv,index,wot)
  %3211 = extractvalue %dx.types.ResRet.i32 %3210, 0
  %3212 = add i32 %3211, 0
  %3213 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3212, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3214 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3213, %dx.types.Handle %108, float %3204, float %3205, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3215 = extractvalue %dx.types.ResRet.f32 %3214, 0
  %3216 = add i32 %51, 148
  %3217 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3216, i32 undef)  ; BufferLoad(srv,index,wot)
  %3218 = extractvalue %dx.types.ResRet.i32 %3217, 0
  %3219 = shl i32 %3218, 4
  %3220 = and i32 %3219, 32752
  %3221 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3220)  ; LegacyF16ToF32(value)
  %3222 = lshr i32 %3218, 7
  %3223 = and i32 %3222, 32752
  %3224 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3223)  ; LegacyF16ToF32(value)
  %3225 = fsub fast float 1.000000e+00, %531
  %3226 = call float @dx.op.binary.f32(i32 35, float %3225, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %3227 = bitcast float %531 to i32
  %3228 = sitofp i32 %3227 to float
  %3229 = fadd fast float %3228, 0xC1CFBF8940000000
  %3230 = fmul fast float %3224, %3229
  %3231 = fadd fast float %3230, 0x41CFBF8940000000
  %3232 = fptosi float %3231 to i32
  %3233 = bitcast i32 %3232 to float
  %3234 = bitcast float %3226 to i32
  %3235 = sitofp i32 %3234 to float
  %3236 = fadd fast float %3235, 0xC1CFBF8940000000
  %3237 = fmul fast float %3236, %3224
  %3238 = fadd fast float %3237, 0x41CFBF8940000000
  %3239 = fptosi float %3238 to i32
  %3240 = bitcast i32 %3239 to float
  %3241 = fmul fast float %3233, %3221
  %3242 = fmul fast float %3240, %3221
  %3243 = fsub fast float %3226, %3241
  %3244 = fadd fast float %3242, %3226
  %3245 = call float @dx.op.unary.f32(i32 7, float %3243)  ; Saturate(value)
  %3246 = call float @dx.op.unary.f32(i32 7, float %3244)  ; Saturate(value)
  %3247 = fsub fast float %3215, %3245
  %3248 = fsub fast float %3246, %3245
  %3249 = bitcast float %3248 to i32
  %3250 = sub nsw i32 2129859010, %3249
  %3251 = bitcast i32 %3250 to float
  %3252 = fmul fast float %3251, %3247
  %3253 = call float @dx.op.unary.f32(i32 7, float %3252)  ; Saturate(value)
  br label %3254

; <label>:3254                                    ; preds = %3208, %3203
  %3255 = phi float [ %3253, %3208 ], [ %531, %3203 ]
  %3256 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3097, i32 undef)  ; BufferLoad(srv,index,wot)
  %3257 = extractvalue %dx.types.ResRet.i32 %3256, 0
  %3258 = and i32 %3257, 128
  %3259 = icmp eq i32 %3258, 0
  br i1 %3259, label %3276, label %3260

; <label>:3260                                    ; preds = %3254
  %3261 = add i32 %51, 484
  %3262 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3261, i32 undef)  ; BufferLoad(srv,index,wot)
  %3263 = extractvalue %dx.types.ResRet.i32 %3262, 0
  %3264 = add i32 %3263, 0
  %3265 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3264, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3266 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3265, %dx.types.Handle %108, float %3204, float %3205, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3267 = extractvalue %dx.types.ResRet.f32 %3266, 0
  %3268 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3097, i32 undef)  ; BufferLoad(srv,index,wot)
  %3269 = extractvalue %dx.types.ResRet.i32 %3268, 0
  %3270 = and i32 %3269, 524288
  %3271 = icmp ne i32 %3270, 0
  %3272 = fcmp fast ogt float %3267, 0x3FE0101020000000
  %3273 = select i1 %3272, float 1.000000e+00, float 0.000000e+00
  %3274 = select i1 %3271, float %3273, float %3267
  %3275 = fmul fast float %3274, %3255
  br label %3276

; <label>:3276                                    ; preds = %3260, %3254
  %3277 = phi float [ %3275, %3260 ], [ %3255, %3254 ]
  %3278 = fcmp fast ult float %3277, 0x3F70101020000000
  br i1 %3278, label %4017, label %3279

; <label>:3279                                    ; preds = %3276
  %3280 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3097, i32 undef)  ; BufferLoad(srv,index,wot)
  %3281 = extractvalue %dx.types.ResRet.i32 %3280, 0
  %3282 = and i32 %3281, 16
  %3283 = icmp eq i32 %3282, 0
  br i1 %3283, label %3482, label %3284

; <label>:3284                                    ; preds = %3279
  %3285 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3120, i32 undef)  ; BufferLoad(srv,index,wot)
  %3286 = extractvalue %dx.types.ResRet.i32 %3285, 0
  %3287 = add i32 %51, 436
  %3288 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3287, i32 undef)  ; BufferLoad(srv,index,wot)
  %3289 = extractvalue %dx.types.ResRet.i32 %3288, 0
  %3290 = add i32 %3289, 0
  %3291 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3290, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3292 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3291, %dx.types.Handle %107, float %3204, float %3205, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3293 = extractvalue %dx.types.ResRet.f32 %3292, 0
  %3294 = extractvalue %dx.types.ResRet.f32 %3292, 1
  %3295 = extractvalue %dx.types.ResRet.f32 %3292, 2
  %3296 = extractvalue %dx.types.ResRet.f32 %3292, 3
  %3297 = and i32 %3286, 255
  %3298 = uitofp i32 %3297 to float
  %3299 = lshr i32 %3286, 8
  %3300 = and i32 %3299, 255
  %3301 = uitofp i32 %3300 to float
  %3302 = fmul fast float %3296, %3298
  %3303 = fadd fast float %3302, %3301
  %3304 = fmul fast float %3303, 0x3F70101000000000
  %3305 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3097, i32 undef)  ; BufferLoad(srv,index,wot)
  %3306 = extractvalue %dx.types.ResRet.i32 %3305, 0
  %3307 = and i32 %3306, 512
  %3308 = icmp eq i32 %3307, 0
  br i1 %3308, label %3317, label %3309

; <label>:3309                                    ; preds = %3284
  %3310 = add i32 %51, 516
  %3311 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3310, i32 undef)  ; BufferLoad(srv,index,wot)
  %3312 = extractvalue %dx.types.ResRet.i32 %3311, 0
  %3313 = add i32 %3312, 0
  %3314 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3313, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3315 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3314, %dx.types.Handle %108, float %3204, float %3205, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3316 = extractvalue %dx.types.ResRet.f32 %3315, 0
  br label %3317

; <label>:3317                                    ; preds = %3309, %3284
  %3318 = phi float [ %3316, %3309 ], [ 1.000000e+00, %3284 ]
  %3319 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3097, i32 undef)  ; BufferLoad(srv,index,wot)
  %3320 = extractvalue %dx.types.ResRet.i32 %3319, 0
  %3321 = and i32 %3320, 33554432
  %3322 = icmp eq i32 %3321, 0
  br i1 %3322, label %3429, label %3323

; <label>:3323                                    ; preds = %3317
  %3324 = add i32 %51, 272
  %3325 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3324, i32 undef)  ; BufferLoad(srv,index,wot)
  %3326 = extractvalue %dx.types.ResRet.i32 %3325, 0
  %3327 = and i32 %3326, 65535
  %3328 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3327)  ; LegacyF16ToF32(value)
  %3329 = lshr i32 %3326, 16
  %3330 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3329)  ; LegacyF16ToF32(value)
  %3331 = add i32 %51, 276
  %3332 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3331, i32 undef)  ; BufferLoad(srv,index,wot)
  %3333 = extractvalue %dx.types.ResRet.i32 %3332, 0
  %3334 = and i32 %3333, 65535
  %3335 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3334)  ; LegacyF16ToF32(value)
  %3336 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %444, i32 undef)  ; BufferLoad(srv,index,wot)
  %3337 = extractvalue %dx.types.ResRet.i32 %3336, 0
  %3338 = lshr i32 %3337, 24
  %3339 = uitofp i32 %3338 to float
  %3340 = fmul fast float %3339, 0x3F70101020000000
  %3341 = and i32 %3337, 255
  %3342 = uitofp i32 %3341 to float
  %3343 = fmul fast float %3342, 0x3F70101020000000
  %3344 = lshr i32 %3337, 8
  %3345 = and i32 %3344, 255
  %3346 = uitofp i32 %3345 to float
  %3347 = fmul fast float %3346, 0x3F70101020000000
  %3348 = lshr i32 %3337, 16
  %3349 = and i32 %3348, 255
  %3350 = uitofp i32 %3349 to float
  %3351 = fmul fast float %3350, 0x3F70101020000000
  %3352 = add i32 %51, 268
  %3353 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3352, i32 undef)  ; BufferLoad(srv,index,wot)
  %3354 = extractvalue %dx.types.ResRet.i32 %3353, 0
  %3355 = lshr i32 %3354, 24
  %3356 = uitofp i32 %3355 to float
  %3357 = fmul fast float %3356, 0x3F70101020000000
  %3358 = and i32 %3354, 255
  %3359 = uitofp i32 %3358 to float
  %3360 = fmul fast float %3359, 0x3F70101020000000
  %3361 = lshr i32 %3354, 8
  %3362 = and i32 %3361, 255
  %3363 = uitofp i32 %3362 to float
  %3364 = fmul fast float %3363, 0x3F70101020000000
  %3365 = lshr i32 %3354, 16
  %3366 = and i32 %3365, 255
  %3367 = uitofp i32 %3366 to float
  %3368 = fmul fast float %3367, 0x3F70101020000000
  %3369 = bitcast float %3293 to i32
  %3370 = ashr i32 %3369, 1
  %3371 = sub nsw i32 1597463174, %3370
  %3372 = bitcast i32 %3371 to float
  %3373 = fmul fast float %3293, 5.000000e-01
  %3374 = fmul fast float %3372, %3372
  %3375 = fmul fast float %3374, %3373
  %3376 = fsub fast float 1.500000e+00, %3375
  %3377 = fmul fast float %3372, %3293
  %3378 = fmul fast float %3377, %3376
  %3379 = bitcast float %3294 to i32
  %3380 = ashr i32 %3379, 1
  %3381 = sub nsw i32 1597463174, %3380
  %3382 = bitcast i32 %3381 to float
  %3383 = fmul fast float %3294, 5.000000e-01
  %3384 = fmul fast float %3382, %3382
  %3385 = fmul fast float %3384, %3383
  %3386 = fsub fast float 1.500000e+00, %3385
  %3387 = fmul fast float %3382, %3294
  %3388 = fmul fast float %3387, %3386
  %3389 = bitcast float %3295 to i32
  %3390 = ashr i32 %3389, 1
  %3391 = sub nsw i32 1597463174, %3390
  %3392 = bitcast i32 %3391 to float
  %3393 = fmul fast float %3295, 5.000000e-01
  %3394 = fmul fast float %3392, %3392
  %3395 = fmul fast float %3394, %3393
  %3396 = fsub fast float 1.500000e+00, %3395
  %3397 = fmul fast float %3392, %3295
  %3398 = fmul fast float %3397, %3396
  %3399 = fsub fast float %3378, %3360
  %3400 = fsub fast float %3388, %3364
  %3401 = fsub fast float %3398, %3368
  %3402 = fmul fast float %3399, %3328
  %3403 = fmul fast float %3400, %3330
  %3404 = fmul fast float %3401, %3335
  %3405 = fadd fast float %3402, %3343
  %3406 = fadd fast float %3403, %3347
  %3407 = fadd fast float %3404, %3351
  %3408 = call float @dx.op.unary.f32(i32 7, float %3405)  ; Saturate(value)
  %3409 = call float @dx.op.unary.f32(i32 7, float %3406)  ; Saturate(value)
  %3410 = call float @dx.op.unary.f32(i32 7, float %3407)  ; Saturate(value)
  %3411 = fmul fast float %3408, %3408
  %3412 = fmul fast float %3409, %3409
  %3413 = fmul fast float %3410, %3410
  %3414 = fsub fast float %3411, %3293
  %3415 = fsub fast float %3412, %3294
  %3416 = fsub fast float %3413, %3295
  %3417 = fmul fast float %3414, %3318
  %3418 = fmul fast float %3415, %3318
  %3419 = fmul fast float %3416, %3318
  %3420 = fadd fast float %3417, %3293
  %3421 = fadd fast float %3418, %3294
  %3422 = fadd fast float %3419, %3295
  %3423 = fadd fast float %3340, %3304
  %3424 = fsub fast float %3423, %3357
  %3425 = call float @dx.op.unary.f32(i32 7, float %3424)  ; Saturate(value)
  %3426 = fsub fast float %3425, %3304
  %3427 = fmul fast float %3426, %3318
  %3428 = fadd fast float %3427, %3304
  br label %3482

; <label>:3429                                    ; preds = %3317
  %3430 = and i32 %3320, 134217728
  %3431 = icmp eq i32 %3430, 0
  br i1 %3431, label %3466, label %3432

; <label>:3432                                    ; preds = %3429
  %3433 = call float @dx.op.unary.f32(i32 24, float %449)  ; Sqrt(value)
  %3434 = call float @dx.op.unary.f32(i32 24, float %453)  ; Sqrt(value)
  %3435 = call float @dx.op.unary.f32(i32 24, float %457)  ; Sqrt(value)
  %3436 = fadd fast float %3433, -5.000000e-01
  %3437 = fadd fast float %3434, -5.000000e-01
  %3438 = fadd fast float %3435, -5.000000e-01
  %3439 = fmul fast float %3436, %3318
  %3440 = fmul fast float %3437, %3318
  %3441 = fmul fast float %3438, %3318
  %3442 = fadd fast float %3439, 5.000000e-01
  %3443 = fadd fast float %3440, 5.000000e-01
  %3444 = fadd fast float %3441, 5.000000e-01
  %3445 = call float @dx.op.unary.f32(i32 24, float %3293)  ; Sqrt(value)
  %3446 = call float @dx.op.unary.f32(i32 24, float %3294)  ; Sqrt(value)
  %3447 = call float @dx.op.unary.f32(i32 24, float %3295)  ; Sqrt(value)
  %3448 = fmul fast float %3442, 2.000000e+00
  %3449 = fsub fast float 1.000000e+00, %3448
  %3450 = fmul fast float %3449, %3445
  %3451 = fadd fast float %3450, %3448
  %3452 = fmul fast float %3451, %3445
  %3453 = fmul fast float %3443, 2.000000e+00
  %3454 = fsub fast float 1.000000e+00, %3453
  %3455 = fmul fast float %3454, %3446
  %3456 = fadd fast float %3455, %3453
  %3457 = fmul fast float %3456, %3446
  %3458 = fmul fast float %3444, 2.000000e+00
  %3459 = fsub fast float 1.000000e+00, %3458
  %3460 = fmul fast float %3459, %3447
  %3461 = fadd fast float %3460, %3458
  %3462 = fmul fast float %3461, %3447
  %3463 = fmul fast float %3452, %3452
  %3464 = fmul fast float %3457, %3457
  %3465 = fmul fast float %3462, %3462
  br label %3482

; <label>:3466                                    ; preds = %3429
  %3467 = fmul fast float %449, %449
  %3468 = fmul fast float %453, %453
  %3469 = fmul fast float %457, %457
  %3470 = fadd fast float %3467, -1.000000e+00
  %3471 = fadd fast float %3468, -1.000000e+00
  %3472 = fadd fast float %3469, -1.000000e+00
  %3473 = fmul fast float %3318, %3470
  %3474 = fmul fast float %3318, %3471
  %3475 = fmul fast float %3318, %3472
  %3476 = fadd fast float %3473, 1.000000e+00
  %3477 = fadd fast float %3474, 1.000000e+00
  %3478 = fadd fast float %3475, 1.000000e+00
  %3479 = fmul fast float %3476, %3293
  %3480 = fmul fast float %3477, %3294
  %3481 = fmul fast float %3478, %3295
  br label %3482

; <label>:3482                                    ; preds = %3466, %3432, %3323, %3279
  %3483 = phi float [ %3428, %3323 ], [ %3304, %3432 ], [ %3304, %3466 ], [ 0x3FA23C0BE0000000, %3279 ]
  %3484 = phi float [ %3420, %3323 ], [ %3463, %3432 ], [ %3479, %3466 ], [ 1.000000e+00, %3279 ]
  %3485 = phi float [ %3421, %3323 ], [ %3464, %3432 ], [ %3480, %3466 ], [ 1.000000e+00, %3279 ]
  %3486 = phi float [ %3422, %3323 ], [ %3465, %3432 ], [ %3481, %3466 ], [ 1.000000e+00, %3279 ]
  %3487 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3488 = extractvalue %dx.types.CBufRet.i32 %3487, 1
  %3489 = and i32 %3488, 1
  %3490 = icmp ne i32 %3489, 0
  %3491 = add i32 %51, 356
  %3492 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3491, i32 undef)  ; BufferLoad(srv,index,wot)
  %3493 = extractvalue %dx.types.ResRet.i32 %3492, 0
  %3494 = and i32 %3493, 32
  %3495 = icmp ne i32 %3494, 0
  %3496 = and i1 %3490, %3495
  %3497 = select i1 %3496, float 1.000000e+00, float %3484
  %3498 = select i1 %3496, float 0x3FD3333340000000, float %3485
  %3499 = select i1 %3496, float 0x3FD3333340000000, float %3486
  %3500 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3097, i32 undef)  ; BufferLoad(srv,index,wot)
  %3501 = extractvalue %dx.types.ResRet.i32 %3500, 0
  %3502 = and i32 %3501, 32
  %3503 = icmp eq i32 %3502, 0
  br i1 %3503, label %3576, label %3504

; <label>:3504                                    ; preds = %3482
  %3505 = add i32 %51, 140
  %3506 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3505, i32 undef)  ; BufferLoad(srv,index,wot)
  %3507 = extractvalue %dx.types.ResRet.i32 %3506, 0
  %3508 = add i32 %51, 452
  %3509 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3508, i32 undef)  ; BufferLoad(srv,index,wot)
  %3510 = extractvalue %dx.types.ResRet.i32 %3509, 0
  %3511 = add i32 %3510, 0
  %3512 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3511, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3513 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3512, %dx.types.Handle %107, float %3204, float %3205, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3514 = extractvalue %dx.types.ResRet.f32 %3513, 0
  %3515 = extractvalue %dx.types.ResRet.f32 %3513, 1
  %3516 = extractvalue %dx.types.ResRet.f32 %3513, 2
  %3517 = extractvalue %dx.types.ResRet.f32 %3513, 3
  %3518 = and i32 %3507, 255
  %3519 = uitofp i32 %3518 to float
  %3520 = lshr i32 %3507, 8
  %3521 = and i32 %3520, 255
  %3522 = uitofp i32 %3521 to float
  %3523 = lshr i32 %3507, 16
  %3524 = and i32 %3523, 255
  %3525 = uitofp i32 %3524 to float
  %3526 = fmul fast float %3525, 0x3F70101000000000
  %3527 = fmul fast float %3514, %3519
  %3528 = fadd fast float %3527, %3522
  %3529 = fmul fast float %3528, 0x3F70101000000000
  %3530 = fadd fast float %3515, -5.000000e-01
  %3531 = fadd fast float %3517, -5.000000e-01
  %3532 = fmul fast float %3530, %3526
  %3533 = fmul fast float %3531, %3526
  %3534 = fadd fast float %3532, 5.000000e-01
  %3535 = fadd fast float %3533, 5.000000e-01
  %3536 = fmul fast float %3534, 2.000000e+00
  %3537 = fadd fast float %3536, -1.000000e+00
  %3538 = fmul fast float %3535, 2.000000e+00
  %3539 = fadd fast float %3538, -1.000000e+00
  %3540 = fadd fast float %3537, %3539
  %3541 = fmul fast float %3540, 5.000000e-01
  %3542 = fsub fast float %3537, %3539
  %3543 = fmul fast float %3542, 5.000000e-01
  %3544 = call float @dx.op.unary.f32(i32 6, float %3541)  ; FAbs(value)
  %3545 = fsub fast float 1.000000e+00, %3544
  %3546 = call float @dx.op.unary.f32(i32 6, float %3543)  ; FAbs(value)
  %3547 = fsub fast float %3545, %3546
  %3548 = call float @dx.op.dot3.f32(i32 55, float %3541, float %3543, float %3547, float %3541, float %3543, float %3547)  ; Dot3(ax,ay,az,bx,by,bz)
  %3549 = call float @dx.op.unary.f32(i32 25, float %3548)  ; Rsqrt(value)
  %3550 = fmul fast float %3541, %3549
  %3551 = fmul fast float %3543, %3549
  %3552 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3097, i32 undef)  ; BufferLoad(srv,index,wot)
  %3553 = extractvalue %dx.types.ResRet.i32 %3552, 0
  %3554 = and i32 %3553, 67108864
  %3555 = icmp eq i32 %3554, 0
  br i1 %3555, label %3572, label %3556

; <label>:3556                                    ; preds = %3504
  %3557 = add i32 %51, 328
  %3558 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3557, i32 undef)  ; BufferLoad(srv,index,wot)
  %3559 = extractvalue %dx.types.ResRet.i32 %3558, 0
  %3560 = and i32 %3559, 65535
  %3561 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3560)  ; LegacyF16ToF32(value)
  %3562 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3114, i32 undef)  ; BufferLoad(srv,index,wot)
  %3563 = extractvalue %dx.types.ResRet.i32 %3562, 0
  %3564 = and i32 %3563, 65535
  %3565 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3564)  ; LegacyF16ToF32(value)
  %3566 = lshr i32 %3559, 16
  %3567 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3566)  ; LegacyF16ToF32(value)
  %3568 = fsub fast float %3529, %3567
  %3569 = fmul fast float %3568, %3561
  %3570 = fadd fast float %3569, %3565
  %3571 = call float @dx.op.unary.f32(i32 7, float %3570)  ; Saturate(value)
  br label %3572

; <label>:3572                                    ; preds = %3556, %3504
  %3573 = phi float [ %3571, %3556 ], [ %3529, %3504 ]
  %3574 = call float @dx.op.dot2.f32(i32 54, float %3550, float %3551, float %3108, float %3109)  ; Dot2(ax,ay,bx,by)
  %3575 = call float @dx.op.dot2.f32(i32 54, float %3550, float %3551, float %3110, float %3111)  ; Dot2(ax,ay,bx,by)
  br label %3576

; <label>:3576                                    ; preds = %3572, %3482
  %3577 = phi float [ %3573, %3572 ], [ 0x3FD6666660000000, %3482 ]
  %3578 = phi float [ %3574, %3572 ], [ 0.000000e+00, %3482 ]
  %3579 = phi float [ %3575, %3572 ], [ 0.000000e+00, %3482 ]
  %3580 = phi float [ %3516, %3572 ], [ 1.000000e+00, %3482 ]
  %3581 = add i32 %51, 208
  %3582 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3581, i32 undef)  ; BufferLoad(srv,index,wot)
  %3583 = extractvalue %dx.types.ResRet.i32 %3582, 0
  %3584 = lshr i32 %3583, 22
  %3585 = shl nuw nsw i32 %3584, 5
  %3586 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3585)  ; LegacyF16ToF32(value)
  %3587 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3097, i32 undef)  ; BufferLoad(srv,index,wot)
  %3588 = extractvalue %dx.types.ResRet.i32 %3587, 0
  %3589 = and i32 %3588, 64
  %3590 = icmp eq i32 %3589, 0
  br i1 %3590, label %3624, label %3591

; <label>:3591                                    ; preds = %3576
  %3592 = add i32 %51, 468
  %3593 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3592, i32 undef)  ; BufferLoad(srv,index,wot)
  %3594 = extractvalue %dx.types.ResRet.i32 %3593, 0
  %3595 = add i32 %3594, 0
  %3596 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3595, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3597 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3097, i32 undef)  ; BufferLoad(srv,index,wot)
  %3598 = extractvalue %dx.types.ResRet.i32 %3597, 0
  %3599 = and i32 %3598, 131072
  %3600 = icmp eq i32 %3599, 0
  %3601 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3596, %dx.types.Handle %107, float %3204, float %3205, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3602 = extractvalue %dx.types.ResRet.f32 %3601, 0
  %3603 = extractvalue %dx.types.ResRet.f32 %3601, 1
  %3604 = extractvalue %dx.types.ResRet.f32 %3601, 2
  %3605 = fmul fast float %3602, %437
  %3606 = fmul fast float %3603, %440
  %3607 = fmul fast float %3604, %443
  br i1 %3600, label %3614, label %3608

; <label>:3608                                    ; preds = %3591
  %3609 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3610 = extractvalue %dx.types.CBufRet.f32 %3609, 0
  %3611 = fmul fast float %3610, %3605
  %3612 = fmul fast float %3610, %3606
  %3613 = fmul fast float %3610, %3607
  br label %3614

; <label>:3614                                    ; preds = %3608, %3591
  %3615 = phi float [ %3611, %3608 ], [ %3605, %3591 ]
  %3616 = phi float [ %3612, %3608 ], [ %3606, %3591 ]
  %3617 = phi float [ %3613, %3608 ], [ %3607, %3591 ]
  %3618 = fmul fast float %3615, %3586
  %3619 = select i1 %294, float %3618, float %3615
  %3620 = call float @dx.op.dot3.f32(i32 55, float %3619, float %3616, float %3617, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3621 = select i1 %294, float 0.000000e+00, float %3615
  %3622 = select i1 %294, float %3620, float %3616
  %3623 = select i1 %294, float 0.000000e+00, float %3617
  br label %3624

; <label>:3624                                    ; preds = %3614, %3576
  %3625 = phi float [ %3621, %3614 ], [ 0.000000e+00, %3576 ]
  %3626 = phi float [ %3622, %3614 ], [ 0.000000e+00, %3576 ]
  %3627 = phi float [ %3623, %3614 ], [ 0.000000e+00, %3576 ]
  %3628 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3097, i32 undef)  ; BufferLoad(srv,index,wot)
  %3629 = extractvalue %dx.types.ResRet.i32 %3628, 0
  %3630 = and i32 %3629, 1024
  %3631 = icmp eq i32 %3630, 0
  br i1 %3631, label %3662, label %3632

; <label>:3632                                    ; preds = %3624
  %3633 = add i32 %51, 200
  %3634 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3633, i32 undef)  ; BufferLoad(srv,index,wot)
  %3635 = extractvalue %dx.types.ResRet.i32 %3634, 0
  %3636 = and i32 %3635, 255
  %3637 = uitofp i32 %3636 to float
  %3638 = fmul fast float %3637, 0x3F70101020000000
  %3639 = lshr i32 %3635, 8
  %3640 = and i32 %3639, 255
  %3641 = uitofp i32 %3640 to float
  %3642 = fmul fast float %3641, 0x3F70101020000000
  %3643 = lshr i32 %3635, 16
  %3644 = and i32 %3643, 255
  %3645 = uitofp i32 %3644 to float
  %3646 = fmul fast float %3645, 0x3F70101020000000
  %3647 = fmul fast float %3638, %3638
  %3648 = fmul fast float %3642, %3642
  %3649 = fmul fast float %3646, %3646
  %3650 = add i32 %51, 532
  %3651 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3650, i32 undef)  ; BufferLoad(srv,index,wot)
  %3652 = extractvalue %dx.types.ResRet.i32 %3651, 0
  %3653 = add i32 %3652, 0
  %3654 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3653, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3655 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3654, %dx.types.Handle %108, float %3204, float %3205, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3656 = extractvalue %dx.types.ResRet.f32 %3655, 0
  %3657 = extractvalue %dx.types.ResRet.f32 %3655, 1
  %3658 = extractvalue %dx.types.ResRet.f32 %3655, 2
  %3659 = fmul fast float %3647, %3656
  %3660 = fmul fast float %3648, %3657
  %3661 = fmul fast float %3649, %3658
  br label %3662

; <label>:3662                                    ; preds = %3632, %3624
  %3663 = phi float [ %3659, %3632 ], [ 0.000000e+00, %3624 ]
  %3664 = phi float [ %3660, %3632 ], [ 0.000000e+00, %3624 ]
  %3665 = phi float [ %3661, %3632 ], [ 0.000000e+00, %3624 ]
  %3666 = fcmp fast ogt float %3663, 0.000000e+00
  %3667 = fcmp fast ogt float %3664, 0.000000e+00
  %3668 = fcmp fast ogt float %3665, 0.000000e+00
  %3669 = call float @dx.op.unary.f32(i32 23, float %3663)  ; Log(value)
  %3670 = call float @dx.op.unary.f32(i32 23, float %3664)  ; Log(value)
  %3671 = call float @dx.op.unary.f32(i32 23, float %3665)  ; Log(value)
  %3672 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3581, i32 undef)  ; BufferLoad(srv,index,wot)
  %3673 = extractvalue %dx.types.ResRet.i32 %3672, 0
  %3674 = lshr i32 %3673, 7
  %3675 = and i32 %3674, 32752
  %3676 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3675)  ; LegacyF16ToF32(value)
  %3677 = fmul fast float %3669, 0xBFE62E4300000000
  %3678 = fmul fast float %3677, %3676
  %3679 = fmul fast float %3670, 0xBFE62E4300000000
  %3680 = fmul fast float %3679, %3676
  %3681 = fmul fast float %3671, 0xBFE62E4300000000
  %3682 = fmul fast float %3681, %3676
  %3683 = select i1 %3666, float %3678, float 1.270000e+02
  %3684 = select i1 %3667, float %3680, float 1.270000e+02
  %3685 = select i1 %3668, float %3682, float 1.270000e+02
  %3686 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3097, i32 undef)  ; BufferLoad(srv,index,wot)
  %3687 = extractvalue %dx.types.ResRet.i32 %3686, 0
  %3688 = and i32 %3687, 10240
  %3689 = icmp eq i32 %3688, 0
  br i1 %3689, label %3734, label %3690

; <label>:3690                                    ; preds = %3662
  %3691 = add i32 %51, 548
  %3692 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3691, i32 undef)  ; BufferLoad(srv,index,wot)
  %3693 = extractvalue %dx.types.ResRet.i32 %3692, 0
  %3694 = add i32 %3693, 0
  %3695 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3694, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3696 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3695, %dx.types.Handle %108, float %3204, float %3205, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3697 = extractvalue %dx.types.ResRet.f32 %3696, 1
  %3698 = extractvalue %dx.types.ResRet.f32 %3696, 3
  %3699 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3097, i32 undef)  ; BufferLoad(srv,index,wot)
  %3700 = extractvalue %dx.types.ResRet.i32 %3699, 0
  %3701 = and i32 %3700, 1048576
  %3702 = icmp ne i32 %3701, 0
  %3703 = and i32 %3700, 8192
  %3704 = icmp eq i32 %3703, 0
  br i1 %3704, label %3720, label %3705

; <label>:3705                                    ; preds = %3690
  %3706 = extractvalue %dx.types.ResRet.f32 %3696, 2
  %3707 = select i1 %3702, float %3706, float %3697
  %3708 = extractvalue %dx.types.ResRet.f32 %3696, 0
  %3709 = select i1 %3702, float %3708, float %3697
  %3710 = add i32 %51, 144
  %3711 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3710, i32 undef)  ; BufferLoad(srv,index,wot)
  %3712 = extractvalue %dx.types.ResRet.i32 %3711, 0
  %3713 = lshr i32 %3712, 16
  %3714 = and i32 %3713, 255
  %3715 = uitofp i32 %3714 to float
  %3716 = fmul fast float %3715, 0x3F80101020000000
  %3717 = fmul fast float %3716, %3709
  %3718 = fmul fast float %3716, %3697
  %3719 = fmul fast float %3716, %3707
  br label %3720

; <label>:3720                                    ; preds = %3705, %3690
  %3721 = phi float [ %3717, %3705 ], [ 0.000000e+00, %3690 ]
  %3722 = phi float [ %3718, %3705 ], [ 0.000000e+00, %3690 ]
  %3723 = phi float [ %3719, %3705 ], [ 0.000000e+00, %3690 ]
  %3724 = and i32 %3700, 2048
  %3725 = icmp eq i32 %3724, 0
  br i1 %3725, label %3734, label %3726

; <label>:3726                                    ; preds = %3720
  %3727 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3581, i32 undef)  ; BufferLoad(srv,index,wot)
  %3728 = extractvalue %dx.types.ResRet.i32 %3727, 0
  %3729 = shl i32 %3728, 4
  %3730 = and i32 %3729, 32752
  %3731 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3730)  ; LegacyF16ToF32(value)
  %3732 = fmul fast float %3731, %3698
  %3733 = call float @dx.op.binary.f32(i32 35, float %3732, float 0x3F70101020000000)  ; FMax(a,b)
  br label %3734

; <label>:3734                                    ; preds = %3726, %3720, %3662
  %3735 = phi float [ %3721, %3726 ], [ %3721, %3720 ], [ 0.000000e+00, %3662 ]
  %3736 = phi float [ %3722, %3726 ], [ %3722, %3720 ], [ 0.000000e+00, %3662 ]
  %3737 = phi float [ %3723, %3726 ], [ %3723, %3720 ], [ 0.000000e+00, %3662 ]
  %3738 = phi float [ %3733, %3726 ], [ 0x3F70101020000000, %3720 ], [ 0x3F70101020000000, %3662 ]
  %3739 = add i32 %51, 144
  %3740 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3739, i32 undef)  ; BufferLoad(srv,index,wot)
  %3741 = extractvalue %dx.types.ResRet.i32 %3740, 0
  %3742 = and i32 %3741, 255
  %3743 = uitofp i32 %3742 to float
  %3744 = lshr i32 %3741, 8
  %3745 = and i32 %3744, 255
  %3746 = uitofp i32 %3745 to float
  %3747 = call float @dx.op.dot3.f32(i32 55, float %3497, float %3498, float %3499, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3748 = fmul fast float %3746, %3747
  %3749 = fadd fast float %3748, %3743
  %3750 = fmul fast float %3749, 0x3F70101020000000
  %3751 = call float @dx.op.unary.f32(i32 7, float %3750)  ; Saturate(value)
  br i1 %3096, label %3752, label %3787

; <label>:3752                                    ; preds = %3734
  %3753 = fmul fast float %3738, 2.000000e+00
  %3754 = fcmp fast olt float %3683, 1.270000e+02
  %3755 = fcmp fast olt float %3684, 1.270000e+02
  %3756 = fcmp fast olt float %3685, 1.270000e+02
  %3757 = fmul fast float %3683, 0xBFF7154760000000
  %3758 = fmul fast float %3757, %3753
  %3759 = fmul fast float %3684, 0xBFF7154760000000
  %3760 = fmul fast float %3759, %3753
  %3761 = fmul fast float %3685, 0xBFF7154760000000
  %3762 = fmul fast float %3761, %3753
  %3763 = call float @dx.op.unary.f32(i32 21, float %3758)  ; Exp(value)
  %3764 = call float @dx.op.unary.f32(i32 21, float %3760)  ; Exp(value)
  %3765 = call float @dx.op.unary.f32(i32 21, float %3762)  ; Exp(value)
  %3766 = call float @dx.op.unary.f32(i32 7, float %3763)  ; Saturate(value)
  %3767 = call float @dx.op.unary.f32(i32 7, float %3764)  ; Saturate(value)
  %3768 = call float @dx.op.unary.f32(i32 7, float %3765)  ; Saturate(value)
  %3769 = fadd fast float %3766, -1.000000e+00
  %3770 = select i1 %3754, float %3769, float -1.000000e+00
  %3771 = fadd fast float %3767, -1.000000e+00
  %3772 = select i1 %3755, float %3771, float -1.000000e+00
  %3773 = fadd fast float %3768, -1.000000e+00
  %3774 = select i1 %3756, float %3773, float -1.000000e+00
  %3775 = fmul fast float %3770, %3277
  %3776 = fmul fast float %3772, %3277
  %3777 = fmul fast float %3774, %3277
  %3778 = fadd fast float %3775, 1.000000e+00
  %3779 = fadd fast float %3776, 1.000000e+00
  %3780 = fadd fast float %3777, 1.000000e+00
  %3781 = fmul fast float %3778, %3078
  %3782 = fmul fast float %3779, %3079
  %3783 = fmul fast float %3780, %3080
  %3784 = fmul fast float %3778, %3081
  %3785 = fmul fast float %3779, %3082
  %3786 = fmul fast float %3780, %3083
  br label %3787

; <label>:3787                                    ; preds = %3752, %3734
  %3788 = phi float [ %3781, %3752 ], [ %3078, %3734 ]
  %3789 = phi float [ %3782, %3752 ], [ %3079, %3734 ]
  %3790 = phi float [ %3783, %3752 ], [ %3080, %3734 ]
  %3791 = phi float [ %3784, %3752 ], [ %3081, %3734 ]
  %3792 = phi float [ %3785, %3752 ], [ %3082, %3734 ]
  %3793 = phi float [ %3786, %3752 ], [ %3083, %3734 ]
  %3794 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3097, i32 undef)  ; BufferLoad(srv,index,wot)
  %3795 = extractvalue %dx.types.ResRet.i32 %3794, 0
  %3796 = and i32 %3795, 3
  %3797 = icmp eq i32 %3796, 3
  br i1 %3797, label %3876, label %3798

; <label>:3798                                    ; preds = %3787
  %3799 = and i32 %3795, 16
  %3800 = icmp ne i32 %3799, 0
  %3801 = select i1 %3800, float %3277, float 0.000000e+00
  %3802 = icmp eq i32 %3796, 0
  br i1 %3802, label %3803, label %3831

; <label>:3803                                    ; preds = %3798
  %3804 = and i32 %3795, 64
  %3805 = icmp ne i32 %3804, 0
  %3806 = select i1 %3805, float %3277, float 0.000000e+00
  %3807 = fsub fast float %3497, %3788
  %3808 = fsub fast float %3498, %3789
  %3809 = fsub fast float %3499, %3790
  %3810 = fmul fast float %3801, %3807
  %3811 = fmul fast float %3801, %3808
  %3812 = fmul fast float %3801, %3809
  %3813 = fadd fast float %3810, %3788
  %3814 = fadd fast float %3811, %3789
  %3815 = fadd fast float %3812, %3790
  %3816 = fsub fast float %3483, %3090
  %3817 = fmul fast float %3801, %3816
  %3818 = fadd fast float %3817, %3090
  %3819 = fsub fast float %3625, %3791
  %3820 = fsub fast float %3626, %3792
  %3821 = fsub fast float %3627, %3793
  %3822 = fmul fast float %3806, %3819
  %3823 = fmul fast float %3806, %3820
  %3824 = fmul fast float %3806, %3821
  %3825 = fadd fast float %3822, %3791
  %3826 = fadd fast float %3823, %3792
  %3827 = fadd fast float %3824, %3793
  %3828 = fsub fast float %3751, %3094
  %3829 = fmul fast float %3801, %3828
  %3830 = fadd fast float %3829, %3094
  br label %3876

; <label>:3831                                    ; preds = %3798
  %3832 = icmp eq i32 %3796, 1
  br i1 %3832, label %3833, label %3846

; <label>:3833                                    ; preds = %3831
  %3834 = fadd fast float %3497, -1.000000e+00
  %3835 = fadd fast float %3498, -1.000000e+00
  %3836 = fadd fast float %3499, -1.000000e+00
  %3837 = fmul fast float %3801, %3834
  %3838 = fmul fast float %3801, %3835
  %3839 = fmul fast float %3801, %3836
  %3840 = fadd fast float %3837, 1.000000e+00
  %3841 = fadd fast float %3838, 1.000000e+00
  %3842 = fadd fast float %3839, 1.000000e+00
  %3843 = fmul fast float %3840, %3788
  %3844 = fmul fast float %3841, %3789
  %3845 = fmul fast float %3842, %3790
  br label %3876

; <label>:3846                                    ; preds = %3831
  %3847 = icmp eq i32 %3796, 2
  br i1 %3847, label %3848, label %3876

; <label>:3848                                    ; preds = %3846
  %3849 = call float @dx.op.unary.f32(i32 24, float %3497)  ; Sqrt(value)
  %3850 = call float @dx.op.unary.f32(i32 24, float %3498)  ; Sqrt(value)
  %3851 = call float @dx.op.unary.f32(i32 24, float %3499)  ; Sqrt(value)
  %3852 = fadd fast float %3849, -5.000000e-01
  %3853 = fadd fast float %3850, -5.000000e-01
  %3854 = fadd fast float %3851, -5.000000e-01
  %3855 = fmul fast float %3852, %3801
  %3856 = fmul fast float %3853, %3801
  %3857 = fmul fast float %3854, %3801
  %3858 = fadd fast float %3855, 5.000000e-01
  %3859 = fadd fast float %3856, 5.000000e-01
  %3860 = fadd fast float %3857, 5.000000e-01
  %3861 = fmul fast float %3858, 2.000000e+00
  %3862 = fsub fast float 1.000000e+00, %3861
  %3863 = fmul fast float %3862, %3788
  %3864 = fadd fast float %3863, %3861
  %3865 = fmul fast float %3864, %3788
  %3866 = fmul fast float %3859, 2.000000e+00
  %3867 = fsub fast float 1.000000e+00, %3866
  %3868 = fmul fast float %3867, %3789
  %3869 = fadd fast float %3868, %3866
  %3870 = fmul fast float %3869, %3789
  %3871 = fmul fast float %3860, 2.000000e+00
  %3872 = fsub fast float 1.000000e+00, %3871
  %3873 = fmul fast float %3872, %3790
  %3874 = fadd fast float %3873, %3871
  %3875 = fmul fast float %3874, %3790
  br label %3876

; <label>:3876                                    ; preds = %3848, %3846, %3833, %3803, %3787
  %3877 = phi float [ %3788, %3787 ], [ %3865, %3848 ], [ %3788, %3846 ], [ %3843, %3833 ], [ %3813, %3803 ]
  %3878 = phi float [ %3789, %3787 ], [ %3870, %3848 ], [ %3789, %3846 ], [ %3844, %3833 ], [ %3814, %3803 ]
  %3879 = phi float [ %3790, %3787 ], [ %3875, %3848 ], [ %3790, %3846 ], [ %3845, %3833 ], [ %3815, %3803 ]
  %3880 = phi float [ %3791, %3787 ], [ %3791, %3848 ], [ %3791, %3846 ], [ %3791, %3833 ], [ %3825, %3803 ]
  %3881 = phi float [ %3792, %3787 ], [ %3792, %3848 ], [ %3792, %3846 ], [ %3792, %3833 ], [ %3826, %3803 ]
  %3882 = phi float [ %3793, %3787 ], [ %3793, %3848 ], [ %3793, %3846 ], [ %3793, %3833 ], [ %3827, %3803 ]
  %3883 = phi float [ %3090, %3787 ], [ %3090, %3848 ], [ %3090, %3846 ], [ %3090, %3833 ], [ %3818, %3803 ]
  %3884 = phi float [ %3094, %3787 ], [ %3094, %3848 ], [ %3094, %3846 ], [ %3094, %3833 ], [ %3830, %3803 ]
  %3885 = and i32 %3795, 12
  %3886 = icmp eq i32 %3885, 12
  br i1 %3886, label %4017, label %3887

; <label>:3887                                    ; preds = %3876
  %3888 = and i32 %3795, 2097184
  %3889 = icmp eq i32 %3888, 2097184
  %3890 = select i1 %3889, float %3277, float 0.000000e+00
  %3891 = and i32 %3795, 4194336
  %3892 = icmp eq i32 %3891, 4194336
  %3893 = select i1 %3892, float %3277, float 0.000000e+00
  %3894 = and i32 %3795, 8388640
  %3895 = icmp eq i32 %3894, 8388640
  %3896 = select i1 %3895, float %3277, float 0.000000e+00
  %3897 = and i32 %3795, 1024
  %3898 = icmp ne i32 %3897, 0
  %3899 = select i1 %3898, float %3277, float 0.000000e+00
  %3900 = and i32 %3795, 2048
  %3901 = icmp ne i32 %3900, 0
  %3902 = select i1 %3901, float %3277, float 0.000000e+00
  %3903 = and i32 %3795, 8192
  %3904 = icmp ne i32 %3903, 0
  %3905 = select i1 %3904, float %3277, float 0.000000e+00
  %3906 = icmp eq i32 %3885, 0
  br i1 %3906, label %3907, label %3941

; <label>:3907                                    ; preds = %3887
  %3908 = fsub fast float %3578, %3076
  %3909 = fsub fast float %3579, %3077
  %3910 = fmul fast float %3890, %3908
  %3911 = fmul fast float %3890, %3909
  %3912 = fadd fast float %3910, %3076
  %3913 = fadd fast float %3911, %3077
  %3914 = fsub fast float %3580, %3092
  %3915 = fmul fast float %3893, %3914
  %3916 = fadd fast float %3915, %3092
  %3917 = fsub fast float %3577, %3091
  %3918 = fmul fast float %3896, %3917
  %3919 = fadd fast float %3918, %3091
  %3920 = fsub fast float %3683, %3084
  %3921 = fsub fast float %3684, %3085
  %3922 = fsub fast float %3685, %3086
  %3923 = fmul fast float %3899, %3920
  %3924 = fmul fast float %3899, %3921
  %3925 = fmul fast float %3899, %3922
  %3926 = fadd fast float %3923, %3084
  %3927 = fadd fast float %3924, %3085
  %3928 = fadd fast float %3925, %3086
  %3929 = fsub fast float %3738, %3093
  %3930 = fmul fast float %3902, %3929
  %3931 = fadd fast float %3930, %3093
  %3932 = fsub fast float %3735, %3087
  %3933 = fsub fast float %3736, %3088
  %3934 = fsub fast float %3737, %3089
  %3935 = fmul fast float %3905, %3932
  %3936 = fmul fast float %3905, %3933
  %3937 = fmul fast float %3905, %3934
  %3938 = fadd fast float %3935, %3087
  %3939 = fadd fast float %3936, %3088
  %3940 = fadd fast float %3937, %3089
  br label %4017

; <label>:3941                                    ; preds = %3887
  %3942 = icmp eq i32 %3885, 4
  br i1 %3942, label %3943, label %3989

; <label>:3943                                    ; preds = %3941
  %3944 = fmul fast float %3890, %3578
  %3945 = fmul fast float %3890, %3579
  %3946 = fadd fast float %3944, %3076
  %3947 = fadd fast float %3945, %3077
  %3948 = call float @dx.op.binary.f32(i32 36, float %3092, float %3580)  ; FMin(a,b)
  %3949 = fsub fast float %3948, %3092
  %3950 = fmul fast float %3949, %3893
  %3951 = fadd fast float %3950, %3092
  %3952 = fadd fast float %3577, %3091
  %3953 = fmul fast float %3952, 0x3FF337FAE0000000
  %3954 = fmul fast float %3091, %3091
  %3955 = fmul fast float %3577, %3577
  %3956 = fadd fast float %3955, %3954
  %3957 = fmul fast float %3956, 0x3FE5152B00000000
  %3958 = fmul fast float %3091, 0xBFCC1F85E0000000
  %3959 = fmul fast float %3958, %3577
  %3960 = fadd fast float %3959, 0xBFE1363700000000
  %3961 = fadd fast float %3960, %3953
  %3962 = fsub fast float %3961, %3957
  %3963 = fmul fast float %3952, 0x3FBA6F0D00000000
  %3964 = fmul fast float %3956, 0x3FD0432880000000
  %3965 = fmul fast float %3091, 0xBFEF110800000000
  %3966 = fmul fast float %3965, %3577
  %3967 = fadd fast float %3966, 1.000000e+00
  %3968 = fsub fast float %3967, %3963
  %3969 = fadd fast float %3968, %3964
  %3970 = fdiv fast float %3962, %3969
  %3971 = call float @dx.op.unary.f32(i32 7, float %3970)  ; Saturate(value)
  %3972 = fsub fast float %3971, %3091
  %3973 = fmul fast float %3972, %3896
  %3974 = fadd fast float %3973, %3091
  %3975 = fmul fast float %3899, %3683
  %3976 = fmul fast float %3899, %3684
  %3977 = fmul fast float %3899, %3685
  %3978 = fadd fast float %3975, %3084
  %3979 = fadd fast float %3976, %3085
  %3980 = fadd fast float %3977, %3086
  %3981 = fmul fast float %3902, %3738
  %3982 = fadd fast float %3981, %3093
  %3983 = fmul fast float %3905, %3735
  %3984 = fmul fast float %3905, %3736
  %3985 = fmul fast float %3905, %3737
  %3986 = fadd fast float %3983, %3087
  %3987 = fadd fast float %3984, %3088
  %3988 = fadd fast float %3985, %3089
  br label %4017

; <label>:3989                                    ; preds = %3941
  %3990 = icmp eq i32 %3885, 8
  br i1 %3990, label %3991, label %4017

; <label>:3991                                    ; preds = %3989
  %3992 = fmul fast float %3890, %3578
  %3993 = fmul fast float %3890, %3579
  %3994 = fadd fast float %3992, %3076
  %3995 = fadd fast float %3993, %3077
  %3996 = call float @dx.op.binary.f32(i32 36, float %3092, float %3580)  ; FMin(a,b)
  %3997 = fsub fast float %3996, %3092
  %3998 = fmul fast float %3997, %3893
  %3999 = fadd fast float %3998, %3092
  %4000 = fsub fast float %3577, %3091
  %4001 = fmul fast float %3896, %4000
  %4002 = fadd fast float %4001, %3091
  %4003 = fmul fast float %3899, %3683
  %4004 = fmul fast float %3899, %3684
  %4005 = fmul fast float %3899, %3685
  %4006 = fadd fast float %4003, %3084
  %4007 = fadd fast float %4004, %3085
  %4008 = fadd fast float %4005, %3086
  %4009 = fmul fast float %3902, %3738
  %4010 = fadd fast float %4009, %3093
  %4011 = fmul fast float %3905, %3735
  %4012 = fmul fast float %3905, %3736
  %4013 = fmul fast float %3905, %3737
  %4014 = fadd fast float %4011, %3087
  %4015 = fadd fast float %4012, %3088
  %4016 = fadd fast float %4013, %3089
  br label %4017

; <label>:4017                                    ; preds = %3991, %3989, %3943, %3907, %3876, %3276, %3095, %3075
  %4018 = phi float [ %3076, %3876 ], [ %3076, %3276 ], [ %3076, %3075 ], [ %3076, %3095 ], [ %3912, %3907 ], [ %3946, %3943 ], [ %3076, %3989 ], [ %3994, %3991 ]
  %4019 = phi float [ %3077, %3876 ], [ %3077, %3276 ], [ %3077, %3075 ], [ %3077, %3095 ], [ %3913, %3907 ], [ %3947, %3943 ], [ %3077, %3989 ], [ %3995, %3991 ]
  %4020 = phi float [ %3877, %3876 ], [ %3078, %3276 ], [ %3078, %3075 ], [ %3078, %3095 ], [ %3877, %3907 ], [ %3877, %3943 ], [ %3877, %3989 ], [ %3877, %3991 ]
  %4021 = phi float [ %3878, %3876 ], [ %3079, %3276 ], [ %3079, %3075 ], [ %3079, %3095 ], [ %3878, %3907 ], [ %3878, %3943 ], [ %3878, %3989 ], [ %3878, %3991 ]
  %4022 = phi float [ %3879, %3876 ], [ %3080, %3276 ], [ %3080, %3075 ], [ %3080, %3095 ], [ %3879, %3907 ], [ %3879, %3943 ], [ %3879, %3989 ], [ %3879, %3991 ]
  %4023 = phi float [ %3880, %3876 ], [ %3081, %3276 ], [ %3081, %3075 ], [ %3081, %3095 ], [ %3880, %3907 ], [ %3880, %3943 ], [ %3880, %3989 ], [ %3880, %3991 ]
  %4024 = phi float [ %3881, %3876 ], [ %3082, %3276 ], [ %3082, %3075 ], [ %3082, %3095 ], [ %3881, %3907 ], [ %3881, %3943 ], [ %3881, %3989 ], [ %3881, %3991 ]
  %4025 = phi float [ %3882, %3876 ], [ %3083, %3276 ], [ %3083, %3075 ], [ %3083, %3095 ], [ %3882, %3907 ], [ %3882, %3943 ], [ %3882, %3989 ], [ %3882, %3991 ]
  %4026 = phi float [ %3084, %3876 ], [ %3084, %3276 ], [ %3084, %3075 ], [ %3084, %3095 ], [ %3926, %3907 ], [ %3978, %3943 ], [ %3084, %3989 ], [ %4006, %3991 ]
  %4027 = phi float [ %3085, %3876 ], [ %3085, %3276 ], [ %3085, %3075 ], [ %3085, %3095 ], [ %3927, %3907 ], [ %3979, %3943 ], [ %3085, %3989 ], [ %4007, %3991 ]
  %4028 = phi float [ %3086, %3876 ], [ %3086, %3276 ], [ %3086, %3075 ], [ %3086, %3095 ], [ %3928, %3907 ], [ %3980, %3943 ], [ %3086, %3989 ], [ %4008, %3991 ]
  %4029 = phi float [ %3087, %3876 ], [ %3087, %3276 ], [ %3087, %3075 ], [ %3087, %3095 ], [ %3938, %3907 ], [ %3986, %3943 ], [ %3087, %3989 ], [ %4014, %3991 ]
  %4030 = phi float [ %3088, %3876 ], [ %3088, %3276 ], [ %3088, %3075 ], [ %3088, %3095 ], [ %3939, %3907 ], [ %3987, %3943 ], [ %3088, %3989 ], [ %4015, %3991 ]
  %4031 = phi float [ %3089, %3876 ], [ %3089, %3276 ], [ %3089, %3075 ], [ %3089, %3095 ], [ %3940, %3907 ], [ %3988, %3943 ], [ %3089, %3989 ], [ %4016, %3991 ]
  %4032 = phi float [ %3883, %3876 ], [ %3090, %3276 ], [ %3090, %3075 ], [ %3090, %3095 ], [ %3883, %3907 ], [ %3883, %3943 ], [ %3883, %3989 ], [ %3883, %3991 ]
  %4033 = phi float [ %3091, %3876 ], [ %3091, %3276 ], [ %3091, %3075 ], [ %3091, %3095 ], [ %3919, %3907 ], [ %3974, %3943 ], [ %3091, %3989 ], [ %4002, %3991 ]
  %4034 = phi float [ %3092, %3876 ], [ %3092, %3276 ], [ %3092, %3075 ], [ %3092, %3095 ], [ %3916, %3907 ], [ %3951, %3943 ], [ %3092, %3989 ], [ %3999, %3991 ]
  %4035 = phi float [ %3093, %3876 ], [ %3093, %3276 ], [ %3093, %3075 ], [ %3093, %3095 ], [ %3931, %3907 ], [ %3982, %3943 ], [ %3093, %3989 ], [ %4010, %3991 ]
  %4036 = phi float [ %3884, %3876 ], [ %3094, %3276 ], [ %3094, %3075 ], [ %3094, %3095 ], [ %3884, %3907 ], [ %3884, %3943 ], [ %3884, %3989 ], [ %3884, %3991 ]
  %4037 = add i32 %51, 408
  %4038 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %4037, i32 undef)  ; BufferLoad(srv,index,wot)
  %4039 = extractvalue %dx.types.ResRet.i32 %4038, 0
  %4040 = bitcast i32 %4039 to float
  %4041 = fcmp fast oge float %4040, 0.000000e+00
  %4042 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4043 = extractvalue %dx.types.CBufRet.f32 %4042, 0
  %4044 = select i1 %4041, float %4040, float %4043
  %4045 = fadd fast float %4044, %203
  %4046 = and i32 %196, 65535
  %4047 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4046)  ; LegacyF16ToF32(value)
  %4048 = lshr i32 %196, 16
  %4049 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4048)  ; LegacyF16ToF32(value)
  %4050 = and i32 %197, 65535
  %4051 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4050)  ; LegacyF16ToF32(value)
  %4052 = fmul fast float %4047, %4020
  %4053 = fmul fast float %4049, %4021
  %4054 = fmul fast float %4051, %4022
  %4055 = shl i32 %198, 4
  %4056 = and i32 %4055, 32752
  %4057 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4056)  ; LegacyF16ToF32(value)
  %4058 = lshr i32 %198, 7
  %4059 = and i32 %4058, 32752
  %4060 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4059)  ; LegacyF16ToF32(value)
  %4061 = lshr i32 %198, 22
  %4062 = shl nuw nsw i32 %4061, 5
  %4063 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4062)  ; LegacyF16ToF32(value)
  %4064 = and i32 %199, 65535
  %4065 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4064)  ; LegacyF16ToF32(value)
  %4066 = fmul fast float %4057, %4023
  %4067 = fmul fast float %4066, %4065
  %4068 = fmul fast float %4060, %4024
  %4069 = fmul fast float %4068, %4065
  %4070 = fmul fast float %4063, %4025
  %4071 = fmul fast float %4070, %4065
  %4072 = call float @dx.op.dot2.f32(i32 54, float %4018, float %4019, float %4018, float %4019)  ; Dot2(ax,ay,bx,by)
  %4073 = fmul fast float %4072, 0x3FE3333340000000
  %4074 = fsub fast float 1.000000e+00, %4073
  %4075 = call float @dx.op.dot3.f32(i32 55, float %4018, float %4019, float %4074, float %4018, float %4019, float %4074)  ; Dot3(ax,ay,az,bx,by,bz)
  %4076 = call float @dx.op.unary.f32(i32 25, float %4075)  ; Rsqrt(value)
  %4077 = fmul fast float %4076, %4018
  %4078 = fmul fast float %4076, %4019
  %4079 = fmul fast float %4074, %4076
  %4080 = fmul fast float %4079, %118
  %4081 = fmul fast float %4079, %119
  %4082 = fmul fast float %4079, %120
  %4083 = fmul fast float %4077, %82
  %4084 = fmul fast float %4077, %83
  %4085 = fmul fast float %4077, %84
  %4086 = fadd fast float %4080, %4083
  %4087 = fadd fast float %4081, %4084
  %4088 = fadd fast float %4082, %4085
  %4089 = fmul fast float %130, %4078
  %4090 = fmul fast float %131, %4078
  %4091 = fmul fast float %132, %4078
  %4092 = fadd fast float %4086, %4089
  %4093 = fadd fast float %4087, %4090
  %4094 = fadd fast float %4088, %4091
  %4095 = call float @dx.op.dot3.f32(i32 55, float %4092, float %4093, float %4094, float %4092, float %4093, float %4094)  ; Dot3(ax,ay,az,bx,by,bz)
  %4096 = call float @dx.op.unary.f32(i32 25, float %4095)  ; Rsqrt(value)
  %4097 = fmul fast float %4092, %4096
  %4098 = fmul fast float %4093, %4096
  %4099 = fmul fast float %4094, %4096
  %4100 = icmp eq i32 %53, 65535
  br i1 %4100, label %4699, label %4101

; <label>:4101                                    ; preds = %4017
  %4102 = call float @dx.op.unary.f32(i32 83, float %54)  ; DerivCoarseX(value)
  %4103 = call float @dx.op.unary.f32(i32 83, float %55)  ; DerivCoarseX(value)
  %4104 = call float @dx.op.unary.f32(i32 83, float %56)  ; DerivCoarseX(value)
  %4105 = call float @dx.op.unary.f32(i32 84, float %54)  ; DerivCoarseY(value)
  %4106 = call float @dx.op.unary.f32(i32 84, float %55)  ; DerivCoarseY(value)
  %4107 = call float @dx.op.unary.f32(i32 84, float %56)  ; DerivCoarseY(value)
  %4108 = fadd fast float %4102, %54
  %4109 = fadd fast float %4103, %55
  %4110 = fadd fast float %4104, %56
  %4111 = fadd fast float %4105, %54
  %4112 = fadd fast float %4106, %55
  %4113 = fadd fast float %4107, %56
  %4114 = mul i32 %53, 48
  %4115 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4114, i32 undef)  ; BufferLoad(srv,index,wot)
  %4116 = extractvalue %dx.types.ResRet.f32 %4115, 0
  %4117 = extractvalue %dx.types.ResRet.f32 %4115, 1
  %4118 = extractvalue %dx.types.ResRet.f32 %4115, 2
  %4119 = add i32 %4114, 16
  %4120 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4119, i32 undef)  ; BufferLoad(srv,index,wot)
  %4121 = extractvalue %dx.types.ResRet.f32 %4120, 0
  %4122 = extractvalue %dx.types.ResRet.f32 %4120, 1
  %4123 = extractvalue %dx.types.ResRet.f32 %4120, 2
  %4124 = add i32 %4114, 32
  %4125 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4124, i32 undef)  ; BufferLoad(srv,index,wot)
  %4126 = extractvalue %dx.types.ResRet.f32 %4125, 0
  %4127 = extractvalue %dx.types.ResRet.f32 %4125, 1
  %4128 = extractvalue %dx.types.ResRet.f32 %4125, 2
  %4129 = extractvalue %dx.types.ResRet.f32 %4125, 3
  %4130 = bitcast float %4129 to i32
  %4131 = fmul fast float %4116, %54
  %4132 = fmul fast float %4117, %55
  %4133 = fmul fast float %4118, %56
  %4134 = fsub fast float %4131, %4121
  %4135 = fsub fast float %4132, %4122
  %4136 = fsub fast float %4133, %4123
  %4137 = call float @dx.op.unary.f32(i32 7, float %4134)  ; Saturate(value)
  %4138 = call float @dx.op.unary.f32(i32 7, float %4135)  ; Saturate(value)
  %4139 = call float @dx.op.unary.f32(i32 7, float %4136)  ; Saturate(value)
  %4140 = fmul fast float %4137, %4126
  %4141 = fmul fast float %4138, %4127
  %4142 = fmul fast float %4139, %4128
  %4143 = fadd fast float %4126, -1.000000e+00
  %4144 = fadd fast float %4127, -1.000000e+00
  %4145 = fadd fast float %4128, -1.000000e+00
  %4146 = call float @dx.op.unary.f32(i32 27, float %4140)  ; Round_ni(value)
  %4147 = call float @dx.op.unary.f32(i32 27, float %4141)  ; Round_ni(value)
  %4148 = call float @dx.op.unary.f32(i32 27, float %4142)  ; Round_ni(value)
  %4149 = call float @dx.op.binary.f32(i32 36, float %4146, float %4143)  ; FMin(a,b)
  %4150 = call float @dx.op.binary.f32(i32 36, float %4147, float %4144)  ; FMin(a,b)
  %4151 = call float @dx.op.binary.f32(i32 36, float %4148, float %4145)  ; FMin(a,b)
  %4152 = fmul fast float %4151, %4127
  %4153 = fadd fast float %4152, %4150
  %4154 = fmul fast float %4153, %4126
  %4155 = fadd fast float %4154, %4149
  %4156 = fptosi float %4155 to i32
  %4157 = add nsw i32 %4156, %4130
  %4158 = shl nsw i32 %4157, 2
  %4159 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %4158, i32 undef)  ; BufferLoad(srv,index,wot)
  %4160 = extractvalue %dx.types.ResRet.i32 %4159, 0
  %4161 = lshr i32 %4160, 16
  %4162 = icmp eq i32 %4161, 0
  br i1 %4162, label %4662, label %4163

; <label>:4163                                    ; preds = %4101
  br label %4164

; <label>:4164                                    ; preds = %4291, %4163
  %4165 = phi i32 [ %4193, %4291 ], [ %4161, %4163 ]
  %4166 = phi float [ %4292, %4291 ], [ 0.000000e+00, %4163 ]
  %4167 = phi float [ %4293, %4291 ], [ %4045, %4163 ]
  %4168 = phi float [ %4294, %4291 ], [ %4036, %4163 ]
  %4169 = phi float [ %4295, %4291 ], [ %4026, %4163 ]
  %4170 = phi float [ %4296, %4291 ], [ %4027, %4163 ]
  %4171 = phi float [ %4297, %4291 ], [ %4028, %4163 ]
  %4172 = phi float [ %4298, %4291 ], [ 0.000000e+00, %4163 ]
  %4173 = phi float [ %4299, %4291 ], [ 0.000000e+00, %4163 ]
  %4174 = phi float [ %4300, %4291 ], [ %4029, %4163 ]
  %4175 = phi float [ %4301, %4291 ], [ %4030, %4163 ]
  %4176 = phi float [ %4302, %4291 ], [ %4031, %4163 ]
  %4177 = phi float [ %4303, %4291 ], [ %4067, %4163 ]
  %4178 = phi float [ %4304, %4291 ], [ %4069, %4163 ]
  %4179 = phi float [ %4305, %4291 ], [ %4071, %4163 ]
  %4180 = phi float [ %4306, %4291 ], [ %4097, %4163 ]
  %4181 = phi float [ %4307, %4291 ], [ %4098, %4163 ]
  %4182 = phi float [ %4308, %4291 ], [ %4099, %4163 ]
  %4183 = phi float [ %4309, %4291 ], [ %4034, %4163 ]
  %4184 = phi float [ %4310, %4291 ], [ %4033, %4163 ]
  %4185 = phi float [ %4311, %4291 ], [ 0.000000e+00, %4163 ]
  %4186 = phi float [ %4312, %4291 ], [ %4032, %4163 ]
  %4187 = phi float [ %4313, %4291 ], [ %4052, %4163 ]
  %4188 = phi float [ %4314, %4291 ], [ %4053, %4163 ]
  %4189 = phi float [ %4315, %4291 ], [ %4054, %4163 ]
  %4190 = shl nuw nsw i32 %4165, 2
  %4191 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %4190, i32 undef)  ; BufferLoad(srv,index,wot)
  %4192 = extractvalue %dx.types.ResRet.i32 %4191, 0
  %4193 = lshr i32 %4192, 16
  %4194 = shl i32 %4192, 8
  %4195 = and i32 %4194, 16776960
  %4196 = or i32 %4195, 48
  %4197 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %4196, i32 undef)  ; BufferLoad(srv,index,wot)
  %4198 = extractvalue %dx.types.ResRet.f32 %4197, 0
  %4199 = extractvalue %dx.types.ResRet.f32 %4197, 1
  %4200 = extractvalue %dx.types.ResRet.f32 %4197, 2
  %4201 = or i32 %4195, 64
  %4202 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %4201, i32 undef)  ; BufferLoad(srv,index,wot)
  %4203 = extractvalue %dx.types.ResRet.i32 %4202, 0
  %4204 = extractvalue %dx.types.ResRet.i32 %4202, 1
  %4205 = or i32 %4195, 80
  %4206 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %4205, i32 undef)  ; BufferLoad(srv,index,wot)
  %4207 = extractvalue %dx.types.ResRet.f32 %4206, 2
  %4208 = extractvalue %dx.types.ResRet.f32 %4206, 3
  %4209 = or i32 %4195, 96
  %4210 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %4209, i32 undef)  ; BufferLoad(srv,index,wot)
  %4211 = extractvalue %dx.types.ResRet.f32 %4210, 0
  %4212 = extractvalue %dx.types.ResRet.f32 %4210, 1
  %4213 = extractvalue %dx.types.ResRet.f32 %4210, 2
  %4214 = extractvalue %dx.types.ResRet.f32 %4210, 3
  %4215 = or i32 %4195, 112
  %4216 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %4215, i32 undef)  ; BufferLoad(srv,index,wot)
  %4217 = extractvalue %dx.types.ResRet.f32 %4216, 2
  %4218 = or i32 %4195, 128
  %4219 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %4218, i32 undef)  ; BufferLoad(srv,index,wot)
  %4220 = extractvalue %dx.types.ResRet.f32 %4219, 0
  %4221 = extractvalue %dx.types.ResRet.f32 %4219, 1
  %4222 = extractvalue %dx.types.ResRet.f32 %4219, 2
  %4223 = extractvalue %dx.types.ResRet.f32 %4219, 3
  %4224 = or i32 %4195, 144
  %4225 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %4224, i32 undef)  ; BufferLoad(srv,index,wot)
  %4226 = extractvalue %dx.types.ResRet.f32 %4225, 0
  %4227 = extractvalue %dx.types.ResRet.f32 %4225, 1
  %4228 = extractvalue %dx.types.ResRet.f32 %4225, 2
  %4229 = extractvalue %dx.types.ResRet.f32 %4225, 3
  %4230 = or i32 %4195, 160
  %4231 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %4230, i32 undef)  ; BufferLoad(srv,index,wot)
  %4232 = extractvalue %dx.types.ResRet.f32 %4231, 0
  %4233 = extractvalue %dx.types.ResRet.f32 %4231, 1
  %4234 = extractvalue %dx.types.ResRet.f32 %4231, 2
  %4235 = extractvalue %dx.types.ResRet.f32 %4231, 3
  %4236 = or i32 %4195, 192
  %4237 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %4236, i32 undef)  ; BufferLoad(srv,index,wot)
  %4238 = extractvalue %dx.types.ResRet.i32 %4237, 0
  %4239 = or i32 %4195, 208
  %4240 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %4239, i32 undef)  ; BufferLoad(srv,index,wot)
  %4241 = extractvalue %dx.types.ResRet.f32 %4240, 0
  %4242 = or i32 %4195, 248
  %4243 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %4242, i32 undef)  ; BufferLoad(srv,index,wot)
  %4244 = extractvalue %dx.types.ResRet.f32 %4243, 0
  %4245 = extractvalue %dx.types.ResRet.f32 %4243, 1
  %4246 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %4195, i32 undef)  ; BufferLoad(srv,index,wot)
  %4247 = extractvalue %dx.types.ResRet.f32 %4246, 0
  %4248 = extractvalue %dx.types.ResRet.f32 %4246, 1
  %4249 = extractvalue %dx.types.ResRet.f32 %4246, 2
  %4250 = extractvalue %dx.types.ResRet.f32 %4246, 3
  %4251 = call float @dx.op.dot4.f32(i32 56, float %4247, float %4248, float %4249, float %4250, float %54, float %55, float %56, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4252 = or i32 %4195, 16
  %4253 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %4252, i32 undef)  ; BufferLoad(srv,index,wot)
  %4254 = extractvalue %dx.types.ResRet.f32 %4253, 0
  %4255 = extractvalue %dx.types.ResRet.f32 %4253, 1
  %4256 = extractvalue %dx.types.ResRet.f32 %4253, 2
  %4257 = extractvalue %dx.types.ResRet.f32 %4253, 3
  %4258 = call float @dx.op.dot4.f32(i32 56, float %4254, float %4255, float %4256, float %4257, float %54, float %55, float %56, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4259 = or i32 %4195, 32
  %4260 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %4259, i32 undef)  ; BufferLoad(srv,index,wot)
  %4261 = extractvalue %dx.types.ResRet.f32 %4260, 0
  %4262 = extractvalue %dx.types.ResRet.f32 %4260, 1
  %4263 = extractvalue %dx.types.ResRet.f32 %4260, 2
  %4264 = extractvalue %dx.types.ResRet.f32 %4260, 3
  %4265 = call float @dx.op.dot4.f32(i32 56, float %4261, float %4262, float %4263, float %4264, float %54, float %55, float %56, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4266 = call float @dx.op.unary.f32(i32 27, float %4251)  ; Round_ni(value)
  %4267 = call float @dx.op.unary.f32(i32 6, float %4266)  ; FAbs(value)
  %4268 = call float @dx.op.unary.f32(i32 27, float %4258)  ; Round_ni(value)
  %4269 = call float @dx.op.unary.f32(i32 6, float %4268)  ; FAbs(value)
  %4270 = call float @dx.op.unary.f32(i32 6, float %4265)  ; FAbs(value)
  %4271 = call float @dx.op.unary.f32(i32 27, float %4270)  ; Round_ni(value)
  %4272 = fadd fast float %4269, %4267
  %4273 = fadd fast float %4272, %4271
  %4274 = fcmp fast oeq float %4273, 0.000000e+00
  %4275 = call float @dx.op.dot4.f32(i32 56, float %4247, float %4248, float %4249, float %4250, float %4108, float %4109, float %4110, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4276 = call float @dx.op.dot4.f32(i32 56, float %4254, float %4255, float %4256, float %4257, float %4108, float %4109, float %4110, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4277 = call float @dx.op.dot4.f32(i32 56, float %4247, float %4248, float %4249, float %4250, float %4111, float %4112, float %4113, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4278 = call float @dx.op.dot4.f32(i32 56, float %4254, float %4255, float %4256, float %4257, float %4111, float %4112, float %4113, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4279 = fsub fast float %4275, %4251
  %4280 = fsub fast float %4277, %4251
  %4281 = fsub fast float %4276, %4258
  %4282 = fsub fast float %4278, %4258
  %4283 = call float @dx.op.dot3.f32(i32 55, float %4198, float %4199, float %4200, float %118, float %119, float %120)  ; Dot3(ax,ay,az,bx,by,bz)
  %4284 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4285 = extractvalue %dx.types.CBufRet.f32 %4284, 2
  %4286 = fadd fast float %4285, %4283
  %4287 = call float @dx.op.unary.f32(i32 7, float %4286)  ; Saturate(value)
  %4288 = extractvalue %dx.types.CBufRet.f32 %4284, 0
  %4289 = fcmp fast ogt float %4287, %4288
  %4290 = and i1 %4274, %4289
  br i1 %4290, label %4317, label %4291

; <label>:4291                                    ; preds = %4648, %4400, %4317, %4164
  %4292 = phi float [ %4166, %4317 ], [ %4403, %4400 ], [ %4403, %4648 ], [ %4166, %4164 ]
  %4293 = phi float [ %4167, %4317 ], [ %4167, %4400 ], [ %4624, %4648 ], [ %4167, %4164 ]
  %4294 = phi float [ %4168, %4317 ], [ %4168, %4400 ], [ %4622, %4648 ], [ %4168, %4164 ]
  %4295 = phi float [ %4169, %4317 ], [ %4169, %4400 ], [ %4600, %4648 ], [ %4169, %4164 ]
  %4296 = phi float [ %4170, %4317 ], [ %4170, %4400 ], [ %4601, %4648 ], [ %4170, %4164 ]
  %4297 = phi float [ %4171, %4317 ], [ %4171, %4400 ], [ %4602, %4648 ], [ %4171, %4164 ]
  %4298 = phi float [ %4172, %4317 ], [ %4172, %4400 ], [ %4527, %4648 ], [ %4172, %4164 ]
  %4299 = phi float [ %4173, %4317 ], [ %4173, %4400 ], [ %4525, %4648 ], [ %4173, %4164 ]
  %4300 = phi float [ %4174, %4317 ], [ %4174, %4400 ], [ %4570, %4648 ], [ %4174, %4164 ]
  %4301 = phi float [ %4175, %4317 ], [ %4175, %4400 ], [ %4571, %4648 ], [ %4175, %4164 ]
  %4302 = phi float [ %4176, %4317 ], [ %4176, %4400 ], [ %4572, %4648 ], [ %4176, %4164 ]
  %4303 = phi float [ %4177, %4317 ], [ %4177, %4400 ], [ %4658, %4648 ], [ %4177, %4164 ]
  %4304 = phi float [ %4178, %4317 ], [ %4178, %4400 ], [ %4659, %4648 ], [ %4178, %4164 ]
  %4305 = phi float [ %4179, %4317 ], [ %4179, %4400 ], [ %4660, %4648 ], [ %4179, %4164 ]
  %4306 = phi float [ %4180, %4317 ], [ %4180, %4400 ], [ %4506, %4648 ], [ %4180, %4164 ]
  %4307 = phi float [ %4181, %4317 ], [ %4181, %4400 ], [ %4507, %4648 ], [ %4181, %4164 ]
  %4308 = phi float [ %4182, %4317 ], [ %4182, %4400 ], [ %4508, %4648 ], [ %4182, %4164 ]
  %4309 = phi float [ %4183, %4317 ], [ %4183, %4400 ], [ %4580, %4648 ], [ %4183, %4164 ]
  %4310 = phi float [ %4184, %4317 ], [ %4184, %4400 ], [ %4577, %4648 ], [ %4184, %4164 ]
  %4311 = phi float [ %4185, %4317 ], [ %4185, %4400 ], [ %4574, %4648 ], [ %4185, %4164 ]
  %4312 = phi float [ %4186, %4317 ], [ %4186, %4400 ], [ %4523, %4648 ], [ %4186, %4164 ]
  %4313 = phi float [ %4187, %4317 ], [ %4187, %4400 ], [ %4518, %4648 ], [ %4187, %4164 ]
  %4314 = phi float [ %4188, %4317 ], [ %4188, %4400 ], [ %4519, %4648 ], [ %4188, %4164 ]
  %4315 = phi float [ %4189, %4317 ], [ %4189, %4400 ], [ %4520, %4648 ], [ %4189, %4164 ]
  %4316 = icmp eq i32 %4193, 0
  br i1 %4316, label %4661, label %4164

; <label>:4317                                    ; preds = %4164
  %4318 = extractvalue %dx.types.ResRet.f32 %4197, 3
  %4319 = extractvalue %dx.types.ResRet.f32 %4216, 3
  %4320 = extractvalue %dx.types.ResRet.f32 %4216, 1
  %4321 = extractvalue %dx.types.ResRet.f32 %4216, 0
  %4322 = extractvalue %dx.types.ResRet.f32 %4206, 1
  %4323 = extractvalue %dx.types.ResRet.f32 %4206, 0
  %4324 = extractvalue %dx.types.ResRet.i32 %4202, 3
  %4325 = extractvalue %dx.types.ResRet.i32 %4202, 2
  %4326 = bitcast float %4318 to i32
  %4327 = add i32 %4324, 0
  %4328 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4327, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4329 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4330 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4328, %dx.types.Handle %4329, float %4251, float %4258, float undef, float undef, i32 0, i32 0, i32 undef, float %4279, float %4281, float undef, float %4280, float %4282, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4331 = extractvalue %dx.types.ResRet.f32 %4330, 0
  %4332 = fmul fast float %4331, %4323
  %4333 = fadd fast float %4332, %4322
  %4334 = call float @dx.op.unary.f32(i32 7, float %4333)  ; Saturate(value)
  %4335 = fmul fast float %4251, %4211
  %4336 = call float @dx.op.tertiary.f32(i32 46, float %4212, float %4258, float %4335)  ; FMad(a,b,c)
  %4337 = fadd fast float %4336, %4321
  %4338 = fmul fast float %4251, %4213
  %4339 = call float @dx.op.tertiary.f32(i32 46, float %4214, float %4258, float %4338)  ; FMad(a,b,c)
  %4340 = fadd fast float %4339, %4320
  %4341 = fmul fast float %4279, %4211
  %4342 = call float @dx.op.tertiary.f32(i32 46, float %4212, float %4281, float %4341)  ; FMad(a,b,c)
  %4343 = fmul fast float %4279, %4213
  %4344 = call float @dx.op.tertiary.f32(i32 46, float %4214, float %4281, float %4343)  ; FMad(a,b,c)
  %4345 = fmul fast float %4280, %4211
  %4346 = call float @dx.op.tertiary.f32(i32 46, float %4212, float %4282, float %4345)  ; FMad(a,b,c)
  %4347 = fmul fast float %4280, %4213
  %4348 = call float @dx.op.tertiary.f32(i32 46, float %4214, float %4282, float %4347)  ; FMad(a,b,c)
  %4349 = add i32 %4325, 0
  %4350 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4349, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4351 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4350, %dx.types.Handle %4329, float %4337, float %4340, float undef, float undef, i32 0, i32 0, i32 undef, float %4342, float %4344, float undef, float %4346, float %4348, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4352 = extractvalue %dx.types.ResRet.f32 %4351, 0
  %4353 = and i32 %4326, 1024
  %4354 = icmp ne i32 %4353, 0
  %4355 = fcmp fast ogt float %4352, 0x3FE0101020000000
  %4356 = uitofp i1 %4355 to float
  %4357 = select i1 %4354, float %4356, float %4352
  %4358 = and i32 %4326, 8192
  %4359 = icmp ne i32 %4358, 0
  %4360 = select i1 %4359, float %4319, float 1.000000e+00
  %4361 = fmul fast float %4251, 2.000000e+00
  %4362 = fadd fast float %4361, -1.000000e+00
  %4363 = call float @dx.op.unary.f32(i32 6, float %4362)  ; FAbs(value)
  %4364 = fmul fast float %4363, %4244
  %4365 = fsub fast float %4364, %4244
  %4366 = call float @dx.op.unary.f32(i32 7, float %4365)  ; Saturate(value)
  %4367 = fmul fast float %4258, 2.000000e+00
  %4368 = fadd fast float %4367, -1.000000e+00
  %4369 = call float @dx.op.unary.f32(i32 6, float %4368)  ; FAbs(value)
  %4370 = fmul fast float %4369, %4245
  %4371 = fsub fast float %4370, %4245
  %4372 = call float @dx.op.unary.f32(i32 7, float %4371)  ; Saturate(value)
  %4373 = fmul fast float %4270, %4207
  %4374 = fsub fast float %4373, %4207
  %4375 = call float @dx.op.unary.f32(i32 7, float %4374)  ; Saturate(value)
  %4376 = fmul fast float %4334, %4360
  %4377 = fmul fast float %4376, %4331
  %4378 = fmul fast float %4377, %4366
  %4379 = fmul fast float %4378, %4357
  %4380 = fmul fast float %4379, %4372
  %4381 = fmul fast float %4380, %4375
  %4382 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4383 = extractvalue %dx.types.CBufRet.f32 %4382, 1
  %4384 = extractvalue %dx.types.CBufRet.f32 %4382, 0
  %4385 = fsub fast float %4287, %4384
  %4386 = fmul fast float %4385, %4383
  %4387 = call float @dx.op.unary.f32(i32 7, float %4386)  ; Saturate(value)
  %4388 = fmul fast float %4381, %4208
  %4389 = fadd fast float %4381, %4208
  %4390 = fmul fast float %4389, %4217
  %4391 = fsub fast float %4390, %4217
  %4392 = call float @dx.op.unary.f32(i32 7, float %4391)  ; Saturate(value)
  %4393 = and i32 %4326, 128
  %4394 = icmp ne i32 %4393, 0
  %4395 = select i1 %4394, float %4392, float %4388
  %4396 = fmul fast float %4395, %4387
  %4397 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4398 = extractvalue %dx.types.CBufRet.f32 %4397, 0
  %4399 = fcmp fast ugt float %4396, %4398
  br i1 %4399, label %4400, label %4291

; <label>:4400                                    ; preds = %4317
  %4401 = select i1 %4359, float %4396, float 0.000000e+00
  %4402 = fadd fast float %4401, %4166
  %4403 = call float @dx.op.unary.f32(i32 7, float %4402)  ; Saturate(value)
  br i1 %4359, label %4291, label %4404

; <label>:4404                                    ; preds = %4400
  %4405 = and i32 %4326, 4
  %4406 = and i32 %4326, 8
  %4407 = add i32 %4203, 0
  %4408 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4407, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4409 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4410 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4408, %dx.types.Handle %4409, float %4337, float %4340, float undef, float undef, i32 0, i32 0, i32 undef, float %4342, float %4344, float undef, float %4346, float %4348, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4411 = extractvalue %dx.types.ResRet.f32 %4410, 0
  %4412 = extractvalue %dx.types.ResRet.f32 %4410, 1
  %4413 = extractvalue %dx.types.ResRet.f32 %4410, 2
  %4414 = extractvalue %dx.types.ResRet.f32 %4410, 3
  %4415 = bitcast float %4229 to i32
  %4416 = and i32 %4415, 255
  %4417 = uitofp i32 %4416 to float
  %4418 = lshr i32 %4415, 8
  %4419 = and i32 %4418, 255
  %4420 = uitofp i32 %4419 to float
  %4421 = fmul fast float %4414, %4417
  %4422 = fadd fast float %4421, %4420
  %4423 = fmul fast float %4422, 0x3F70101000000000
  %4424 = add i32 %4204, 0
  %4425 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4424, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4426 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4425, %dx.types.Handle %4409, float %4337, float %4340, float undef, float undef, i32 0, i32 0, i32 undef, float %4342, float %4344, float undef, float %4346, float %4348, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4427 = extractvalue %dx.types.ResRet.f32 %4426, 0
  %4428 = extractvalue %dx.types.ResRet.f32 %4426, 1
  %4429 = extractvalue %dx.types.ResRet.f32 %4426, 2
  %4430 = extractvalue %dx.types.ResRet.f32 %4426, 3
  %4431 = bitcast float %4223 to i32
  %4432 = and i32 %4431, 255
  %4433 = uitofp i32 %4432 to float
  %4434 = lshr i32 %4431, 8
  %4435 = and i32 %4434, 255
  %4436 = uitofp i32 %4435 to float
  %4437 = lshr i32 %4431, 16
  %4438 = and i32 %4437, 255
  %4439 = uitofp i32 %4438 to float
  %4440 = fmul fast float %4439, 0x3F70101000000000
  %4441 = fmul fast float %4427, %4433
  %4442 = fadd fast float %4441, %4436
  %4443 = fmul fast float %4442, 0x3F70101000000000
  %4444 = fadd fast float %4428, -5.000000e-01
  %4445 = fadd fast float %4430, -5.000000e-01
  %4446 = fmul fast float %4444, %4440
  %4447 = fmul fast float %4445, %4440
  %4448 = fadd fast float %4446, 5.000000e-01
  %4449 = fadd fast float %4447, 5.000000e-01
  %4450 = fmul fast float %4411, %4232
  %4451 = fmul fast float %4412, %4233
  %4452 = fmul fast float %4413, %4234
  %4453 = fmul fast float %4448, 2.000000e+00
  %4454 = fadd fast float %4453, -1.000000e+00
  %4455 = fmul fast float %4449, 2.000000e+00
  %4456 = fadd fast float %4455, -1.000000e+00
  %4457 = fadd fast float %4454, %4456
  %4458 = fmul fast float %4457, 5.000000e-01
  %4459 = fsub fast float %4454, %4456
  %4460 = fmul fast float %4459, 5.000000e-01
  %4461 = call float @dx.op.unary.f32(i32 6, float %4458)  ; FAbs(value)
  %4462 = fsub fast float 1.000000e+00, %4461
  %4463 = call float @dx.op.unary.f32(i32 6, float %4460)  ; FAbs(value)
  %4464 = fsub fast float %4462, %4463
  %4465 = call float @dx.op.dot3.f32(i32 55, float %4458, float %4460, float %4464, float %4458, float %4460, float %4464)  ; Dot3(ax,ay,az,bx,by,bz)
  %4466 = call float @dx.op.unary.f32(i32 25, float %4465)  ; Rsqrt(value)
  %4467 = fmul fast float %4458, %4466
  %4468 = fmul fast float %4460, %4466
  %4469 = fmul fast float %4466, %4464
  %4470 = fmul fast float %4469, %4198
  %4471 = fmul fast float %4469, %4199
  %4472 = fmul fast float %4469, %4200
  %4473 = fmul fast float %4467, %4220
  %4474 = fmul fast float %4467, %4221
  %4475 = fmul fast float %4467, %4222
  %4476 = fadd fast float %4473, %4470
  %4477 = fadd fast float %4474, %4471
  %4478 = fadd fast float %4475, %4472
  %4479 = fmul fast float %4468, %4226
  %4480 = fmul fast float %4468, %4227
  %4481 = fmul fast float %4468, %4228
  %4482 = fadd fast float %4476, %4479
  %4483 = fadd fast float %4477, %4480
  %4484 = fadd fast float %4478, %4481
  %4485 = call float @dx.op.dot3.f32(i32 55, float %4482, float %4483, float %4484, float %4482, float %4483, float %4484)  ; Dot3(ax,ay,az,bx,by,bz)
  %4486 = call float @dx.op.unary.f32(i32 25, float %4485)  ; Rsqrt(value)
  %4487 = fmul fast float %4482, %4486
  %4488 = fmul fast float %4483, %4486
  %4489 = fmul fast float %4484, %4486
  %4490 = icmp ne i32 %4406, 0
  %4491 = select i1 %4490, float 1.000000e+00, float 0.000000e+00
  %4492 = fmul fast float %4396, %4491
  %4493 = and i32 %4326, 1
  %4494 = icmp eq i32 %4493, 0
  br i1 %4494, label %4495, label %4499

; <label>:4495                                    ; preds = %4404
  %4496 = fsub fast float %4487, %4180
  %4497 = fsub fast float %4488, %4181
  %4498 = fsub fast float %4489, %4182
  br label %4499

; <label>:4499                                    ; preds = %4495, %4404
  %4500 = phi float [ %4496, %4495 ], [ %4487, %4404 ]
  %4501 = phi float [ %4497, %4495 ], [ %4488, %4404 ]
  %4502 = phi float [ %4498, %4495 ], [ %4489, %4404 ]
  %4503 = fmul float %4502, %4492
  %4504 = fmul float %4501, %4492
  %4505 = fmul float %4500, %4492
  %4506 = fadd fast float %4505, %4180
  %4507 = fadd fast float %4504, %4181
  %4508 = fadd fast float %4503, %4182
  %4509 = icmp ne i32 %4405, 0
  %4510 = select i1 %4509, float 1.000000e+00, float 0.000000e+00
  %4511 = fmul fast float %4396, %4510
  %4512 = fsub fast float %4450, %4187
  %4513 = fsub fast float %4451, %4188
  %4514 = fsub fast float %4452, %4189
  %4515 = fmul fast float %4512, %4511
  %4516 = fmul fast float %4513, %4511
  %4517 = fmul fast float %4514, %4511
  %4518 = fadd fast float %4515, %4187
  %4519 = fadd fast float %4516, %4188
  %4520 = fadd fast float %4517, %4189
  %4521 = fsub fast float %4423, %4186
  %4522 = fmul fast float %4521, %4511
  %4523 = fadd fast float %4522, %4186
  %4524 = fmul fast float %4511, %4173
  %4525 = fsub fast float %4173, %4524
  %4526 = fmul fast float %4511, %4172
  %4527 = fsub fast float %4172, %4526
  %4528 = bitcast float %4241 to i32
  %4529 = lshr i32 %4528, 16
  %4530 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4529)  ; LegacyF16ToF32(value)
  %4531 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %474, i32 undef)  ; BufferLoad(srv,index,wot)
  %4532 = extractvalue %dx.types.ResRet.i32 %4531, 0
  %4533 = and i32 %4532, 1
  %4534 = icmp eq i32 %4533, 0
  br i1 %4534, label %4535, label %4560

; <label>:4535                                    ; preds = %4499
  %4536 = fadd fast float %4423, 0xBFB99999A0000000
  %4537 = call float @dx.op.unary.f32(i32 7, float %4536)  ; Saturate(value)
  %4538 = fmul fast float %4537, 0x3FF1C71C80000000
  %4539 = fsub fast float 1.000000e+00, %4538
  %4540 = call float @dx.op.unary.f32(i32 7, float %4539)  ; Saturate(value)
  %4541 = fmul fast float %4540, %4450
  %4542 = fmul fast float %4540, %4451
  %4543 = fmul fast float %4540, %4452
  %4544 = call float @dx.op.unary.f32(i32 7, float %4541)  ; Saturate(value)
  %4545 = call float @dx.op.unary.f32(i32 7, float %4542)  ; Saturate(value)
  %4546 = call float @dx.op.unary.f32(i32 7, float %4543)  ; Saturate(value)
  %4547 = call float @dx.op.binary.f32(i32 35, float %4545, float %4546)  ; FMax(a,b)
  %4548 = call float @dx.op.binary.f32(i32 35, float %4544, float %4547)  ; FMax(a,b)
  %4549 = fcmp fast ogt float %4548, 0.000000e+00
  %4550 = bitcast float %4548 to i32
  %4551 = sub nsw i32 2129859010, %4550
  %4552 = bitcast i32 %4551 to float
  %4553 = select i1 %4549, float %4552, float 0.000000e+00
  %4554 = fmul fast float %4544, %4530
  %4555 = fmul fast float %4545, %4530
  %4556 = fmul fast float %4546, %4530
  %4557 = fmul fast float %4554, %4553
  %4558 = fmul fast float %4555, %4553
  %4559 = fmul fast float %4556, %4553
  br label %4560

; <label>:4560                                    ; preds = %4535, %4499
  %4561 = phi float [ %4530, %4499 ], [ %4557, %4535 ]
  %4562 = phi float [ %4530, %4499 ], [ %4558, %4535 ]
  %4563 = phi float [ %4530, %4499 ], [ %4559, %4535 ]
  %4564 = fsub fast float %4561, %4174
  %4565 = fsub fast float %4562, %4175
  %4566 = fsub fast float %4563, %4176
  %4567 = fmul fast float %4564, %4511
  %4568 = fmul fast float %4565, %4511
  %4569 = fmul fast float %4566, %4511
  %4570 = fadd fast float %4567, %4174
  %4571 = fadd fast float %4568, %4175
  %4572 = fadd fast float %4569, %4176
  %4573 = fadd fast float %4396, %4185
  %4574 = call float @dx.op.unary.f32(i32 7, float %4573)  ; Saturate(value)
  %4575 = fsub fast float %4443, %4184
  %4576 = fmul fast float %4575, %4492
  %4577 = fadd fast float %4576, %4184
  %4578 = fsub fast float %4429, %4183
  %4579 = fmul fast float %4578, %4492
  %4580 = fadd fast float %4579, %4183
  br i1 %4494, label %4589, label %4581

; <label>:4581                                    ; preds = %4560
  %4582 = and i32 %4326, 32768
  %4583 = icmp eq i32 %4582, 0
  br i1 %4583, label %4599, label %4584

; <label>:4584                                    ; preds = %4581
  %4585 = fmul fast float %4492, 1.270000e+02
  %4586 = fadd fast float %4585, %4169
  %4587 = fadd fast float %4585, %4170
  %4588 = fadd fast float %4585, %4171
  br label %4599

; <label>:4589                                    ; preds = %4560
  %4590 = fsub fast float 1.270000e+02, %4169
  %4591 = fsub fast float 1.270000e+02, %4170
  %4592 = fsub fast float 1.270000e+02, %4171
  %4593 = fmul fast float %4492, %4590
  %4594 = fmul fast float %4492, %4591
  %4595 = fmul fast float %4492, %4592
  %4596 = fadd fast float %4593, %4169
  %4597 = fadd fast float %4594, %4170
  %4598 = fadd fast float %4595, %4171
  br label %4599

; <label>:4599                                    ; preds = %4589, %4584, %4581
  %4600 = phi float [ %4586, %4584 ], [ %4169, %4581 ], [ %4596, %4589 ]
  %4601 = phi float [ %4587, %4584 ], [ %4170, %4581 ], [ %4597, %4589 ]
  %4602 = phi float [ %4588, %4584 ], [ %4171, %4581 ], [ %4598, %4589 ]
  %4603 = call float @dx.op.dot3.f32(i32 55, float %4450, float %4451, float %4452, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4604 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %4605 = extractvalue %dx.types.CBufRet.f32 %4604, 0
  %4606 = extractvalue %dx.types.CBufRet.f32 %4604, 1
  %4607 = fmul fast float %4606, %4603
  %4608 = fadd fast float %4607, %4605
  %4609 = call float @dx.op.unary.f32(i32 7, float %4608)  ; Saturate(value)
  %4610 = bitcast float %4235 to i32
  %4611 = and i32 %4610, 65535
  %4612 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4611)  ; LegacyF16ToF32(value)
  %4613 = lshr i32 %4610, 16
  %4614 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4613)  ; LegacyF16ToF32(value)
  %4615 = fcmp fast oge float %4612, 0.000000e+00
  %4616 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4617 = extractvalue %dx.types.CBufRet.f32 %4616, 0
  %4618 = select i1 %4615, float %4612, float %4617
  %4619 = fadd fast float %4618, %4614
  %4620 = fsub fast float %4609, %4168
  %4621 = fmul fast float %4620, %4396
  %4622 = fadd fast float %4621, %4168
  %4623 = fmul fast float %4619, %4396
  %4624 = call float @dx.op.binary.f32(i32 35, float %4167, float %4623)  ; FMax(a,b)
  %4625 = and i32 %4326, 16
  %4626 = icmp eq i32 %4625, 0
  br i1 %4626, label %4648, label %4627

; <label>:4627                                    ; preds = %4599
  %4628 = add i32 %4238, 0
  %4629 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4628, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4630 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4629, %dx.types.Handle %4409, float %4337, float %4340, float undef, float undef, i32 0, i32 0, i32 undef, float %4342, float %4344, float undef, float %4346, float %4348, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4631 = extractvalue %dx.types.ResRet.f32 %4630, 0
  %4632 = extractvalue %dx.types.ResRet.f32 %4630, 1
  %4633 = extractvalue %dx.types.ResRet.f32 %4630, 2
  %4634 = and i32 %4528, 65535
  %4635 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4634)  ; LegacyF16ToF32(value)
  %4636 = fmul fast float %4631, %4232
  %4637 = fmul fast float %4632, %4233
  %4638 = fmul fast float %4633, %4234
  %4639 = and i32 %4326, 16384
  %4640 = icmp ne i32 %4639, 0
  %4641 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4642 = extractvalue %dx.types.CBufRet.f32 %4641, 0
  %4643 = select i1 %4640, float %4642, float 1.000000e+00
  %4644 = fmul fast float %4643, %4635
  %4645 = fmul fast float %4636, %4644
  %4646 = fmul fast float %4637, %4644
  %4647 = fmul fast float %4638, %4644
  br label %4648

; <label>:4648                                    ; preds = %4627, %4599
  %4649 = phi float [ %4645, %4627 ], [ 0.000000e+00, %4599 ]
  %4650 = phi float [ %4646, %4627 ], [ 0.000000e+00, %4599 ]
  %4651 = phi float [ %4647, %4627 ], [ 0.000000e+00, %4599 ]
  %4652 = fsub fast float %4649, %4177
  %4653 = fsub fast float %4650, %4178
  %4654 = fsub fast float %4651, %4179
  %4655 = fmul fast float %4652, %4396
  %4656 = fmul fast float %4653, %4396
  %4657 = fmul fast float %4654, %4396
  %4658 = fadd fast float %4655, %4177
  %4659 = fadd fast float %4656, %4178
  %4660 = fadd fast float %4657, %4179
  br label %4291

; <label>:4661                                    ; preds = %4291
  br label %4662

; <label>:4662                                    ; preds = %4661, %4101
  %4663 = phi float [ 0.000000e+00, %4101 ], [ %4292, %4661 ]
  %4664 = phi float [ %4045, %4101 ], [ %4293, %4661 ]
  %4665 = phi float [ %4036, %4101 ], [ %4294, %4661 ]
  %4666 = phi float [ %4026, %4101 ], [ %4295, %4661 ]
  %4667 = phi float [ %4027, %4101 ], [ %4296, %4661 ]
  %4668 = phi float [ %4028, %4101 ], [ %4297, %4661 ]
  %4669 = phi float [ 0.000000e+00, %4101 ], [ %4298, %4661 ]
  %4670 = phi float [ 0.000000e+00, %4101 ], [ %4299, %4661 ]
  %4671 = phi float [ %4029, %4101 ], [ %4300, %4661 ]
  %4672 = phi float [ %4030, %4101 ], [ %4301, %4661 ]
  %4673 = phi float [ %4031, %4101 ], [ %4302, %4661 ]
  %4674 = phi float [ %4067, %4101 ], [ %4303, %4661 ]
  %4675 = phi float [ %4069, %4101 ], [ %4304, %4661 ]
  %4676 = phi float [ %4071, %4101 ], [ %4305, %4661 ]
  %4677 = phi float [ %4097, %4101 ], [ %4306, %4661 ]
  %4678 = phi float [ %4098, %4101 ], [ %4307, %4661 ]
  %4679 = phi float [ %4099, %4101 ], [ %4308, %4661 ]
  %4680 = phi float [ %4034, %4101 ], [ %4309, %4661 ]
  %4681 = phi float [ %4033, %4101 ], [ %4310, %4661 ]
  %4682 = phi float [ 0.000000e+00, %4101 ], [ %4311, %4661 ]
  %4683 = phi float [ %4032, %4101 ], [ %4312, %4661 ]
  %4684 = phi float [ %4052, %4101 ], [ %4313, %4661 ]
  %4685 = phi float [ %4053, %4101 ], [ %4314, %4661 ]
  %4686 = phi float [ %4054, %4101 ], [ %4315, %4661 ]
  %4687 = call float @dx.op.dot3.f32(i32 55, float %4677, float %4678, float %4679, float %4677, float %4678, float %4679)  ; Dot3(ax,ay,az,bx,by,bz)
  %4688 = call float @dx.op.unary.f32(i32 25, float %4687)  ; Rsqrt(value)
  %4689 = fmul fast float %4688, %4677
  %4690 = fmul fast float %4688, %4678
  %4691 = fmul fast float %4688, %4679
  %4692 = fadd fast float %4682, %1206
  %4693 = call float @dx.op.unary.f32(i32 7, float %4692)  ; Saturate(value)
  %4694 = call float @dx.op.dot3.f32(i32 55, float %4689, float %4690, float %4691, float %4689, float %4690, float %4691)  ; Dot3(ax,ay,az,bx,by,bz)
  %4695 = call float @dx.op.unary.f32(i32 25, float %4694)  ; Rsqrt(value)
  %4696 = fmul fast float %4695, %4689
  %4697 = fmul fast float %4695, %4690
  %4698 = fmul fast float %4695, %4691
  br label %4699

; <label>:4699                                    ; preds = %4662, %4017
  %4700 = phi float [ %4696, %4662 ], [ %4097, %4017 ]
  %4701 = phi float [ %4697, %4662 ], [ %4098, %4017 ]
  %4702 = phi float [ %4698, %4662 ], [ %4099, %4017 ]
  %4703 = phi float [ %4684, %4662 ], [ %4052, %4017 ]
  %4704 = phi float [ %4685, %4662 ], [ %4053, %4017 ]
  %4705 = phi float [ %4686, %4662 ], [ %4054, %4017 ]
  %4706 = phi float [ %4674, %4662 ], [ %4067, %4017 ]
  %4707 = phi float [ %4675, %4662 ], [ %4069, %4017 ]
  %4708 = phi float [ %4676, %4662 ], [ %4071, %4017 ]
  %4709 = phi float [ %4671, %4662 ], [ %4029, %4017 ]
  %4710 = phi float [ %4672, %4662 ], [ %4030, %4017 ]
  %4711 = phi float [ %4673, %4662 ], [ %4031, %4017 ]
  %4712 = phi float [ %4666, %4662 ], [ %4026, %4017 ]
  %4713 = phi float [ %4667, %4662 ], [ %4027, %4017 ]
  %4714 = phi float [ %4668, %4662 ], [ %4028, %4017 ]
  %4715 = phi float [ %4683, %4662 ], [ %4032, %4017 ]
  %4716 = phi float [ %4693, %4662 ], [ %1206, %4017 ]
  %4717 = phi float [ %4681, %4662 ], [ %4033, %4017 ]
  %4718 = phi float [ %4680, %4662 ], [ %4034, %4017 ]
  %4719 = phi float [ %4670, %4662 ], [ 0.000000e+00, %4017 ]
  %4720 = phi float [ %4669, %4662 ], [ 0.000000e+00, %4017 ]
  %4721 = phi float [ %4663, %4662 ], [ 0.000000e+00, %4017 ]
  %4722 = phi float [ %4664, %4662 ], [ %4045, %4017 ]
  %4723 = phi float [ %4665, %4662 ], [ %4036, %4017 ]
  %4724 = add i32 %51, 392
  %4725 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %4724, i32 undef)  ; BufferLoad(srv,index,wot)
  %4726 = extractvalue %dx.types.ResRet.i32 %4725, 0
  %4727 = extractvalue %dx.types.ResRet.i32 %4725, 1
  %4728 = extractvalue %dx.types.ResRet.i32 %4725, 2
  %4729 = extractvalue %dx.types.ResRet.i32 %4725, 3
  %4730 = bitcast i32 %4726 to float
  %4731 = bitcast i32 %4727 to float
  %4732 = bitcast i32 %4728 to float
  %4733 = bitcast i32 %4729 to float
  %4734 = fsub fast float %4703, %4730
  %4735 = fsub fast float %4704, %4731
  %4736 = fsub fast float %4705, %4732
  %4737 = fmul fast float %4734, %235
  %4738 = fmul fast float %4735, %235
  %4739 = fmul fast float %4736, %235
  %4740 = fadd fast float %4737, %4730
  %4741 = fadd fast float %4738, %4731
  %4742 = fadd fast float %4739, %4732
  %4743 = fsub fast float %4716, %4733
  %4744 = fmul fast float %4743, %235
  %4745 = fadd fast float %4744, %4733
  %4746 = fadd fast float %4715, 0xBFB99999A0000000
  %4747 = call float @dx.op.unary.f32(i32 7, float %4746)  ; Saturate(value)
  %4748 = fmul fast float %4747, 0x3FF1C71C80000000
  %4749 = call float @dx.op.binary.f32(i32 36, float %4715, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4750 = fsub fast float 1.000000e+00, %4748
  %4751 = call float @dx.op.unary.f32(i32 7, float %4750)  ; Saturate(value)
  %4752 = fmul fast float %4740, %4751
  %4753 = fmul fast float %4741, %4751
  %4754 = fmul fast float %4742, %4751
  %4755 = call float @dx.op.unary.f32(i32 7, float %4752)  ; Saturate(value)
  %4756 = call float @dx.op.unary.f32(i32 7, float %4753)  ; Saturate(value)
  %4757 = call float @dx.op.unary.f32(i32 7, float %4754)  ; Saturate(value)
  %4758 = fmul fast float %4740, %4748
  %4759 = fmul fast float %4741, %4748
  %4760 = fmul fast float %4742, %4748
  %4761 = fadd fast float %4758, %4749
  %4762 = fadd fast float %4759, %4749
  %4763 = fadd fast float %4760, %4749
  %4764 = call float @dx.op.unary.f32(i32 7, float %4761)  ; Saturate(value)
  %4765 = call float @dx.op.unary.f32(i32 7, float %4762)  ; Saturate(value)
  %4766 = call float @dx.op.unary.f32(i32 7, float %4763)  ; Saturate(value)
  %4767 = call float @dx.op.unary.f32(i32 7, float %4717)  ; Saturate(value)
  %4768 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %474, i32 undef)  ; BufferLoad(srv,index,wot)
  %4769 = extractvalue %dx.types.ResRet.i32 %4768, 0
  %4770 = and i32 %4769, 1
  %4771 = icmp eq i32 %4770, 0
  br i1 %4771, label %4786, label %4772

; <label>:4772                                    ; preds = %4699
  %4773 = call float @dx.op.binary.f32(i32 35, float %4756, float %4757)  ; FMax(a,b)
  %4774 = call float @dx.op.binary.f32(i32 35, float %4755, float %4773)  ; FMax(a,b)
  %4775 = fcmp fast ogt float %4774, 0.000000e+00
  %4776 = bitcast float %4774 to i32
  %4777 = sub nsw i32 2129859010, %4776
  %4778 = bitcast i32 %4777 to float
  %4779 = select i1 %4775, float %4778, float 0.000000e+00
  %4780 = fmul fast float %4755, %4709
  %4781 = fmul fast float %4756, %4710
  %4782 = fmul fast float %4757, %4711
  %4783 = fmul fast float %4780, %4779
  %4784 = fmul fast float %4781, %4779
  %4785 = fmul fast float %4782, %4779
  br label %4786

; <label>:4786                                    ; preds = %4772, %4699
  %4787 = phi float [ %4783, %4772 ], [ %4709, %4699 ]
  %4788 = phi float [ %4784, %4772 ], [ %4710, %4699 ]
  %4789 = phi float [ %4785, %4772 ], [ %4711, %4699 ]
  %4790 = call float @dx.op.binary.f32(i32 36, float %4712, float 1.270000e+02)  ; FMin(a,b)
  %4791 = call float @dx.op.binary.f32(i32 36, float %4713, float 1.270000e+02)  ; FMin(a,b)
  %4792 = call float @dx.op.binary.f32(i32 36, float %4714, float 1.270000e+02)  ; FMin(a,b)
  %4793 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4794 = extractvalue %dx.types.CBufRet.i32 %4793, 3
  %4795 = and i32 %4794, 8
  %4796 = icmp ne i32 %4795, 0
  %4797 = call float @dx.op.binary.f32(i32 35, float %4755, float %4740)  ; FMax(a,b)
  %4798 = call float @dx.op.binary.f32(i32 35, float %4756, float %4740)  ; FMax(a,b)
  %4799 = call float @dx.op.binary.f32(i32 35, float %4757, float %4740)  ; FMax(a,b)
  %4800 = call float @dx.op.dot3.f32(i32 55, float %4755, float %4756, float %4757, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4801 = select i1 %294, float %4740, float %4755
  %4802 = select i1 %294, float %4800, float %4756
  %4803 = select i1 %294, float 1.000000e+00, float %4757
  %4804 = select i1 %4796, float %4797, float %4801
  %4805 = select i1 %4796, float %4798, float %4802
  %4806 = select i1 %4796, float %4799, float %4803
  %4807 = call float @dx.op.dot3.f32(i32 55, float %4787, float %4788, float %4789, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4808 = select i1 %294, float %4807, float %4787
  %4809 = select i1 %294, float %4807, float %4788
  %4810 = select i1 %294, float %4807, float %4789
  %4811 = and i32 %270, 3
  %4812 = select i1 %264, i32 %4811, i32 0
  %4813 = icmp eq i32 %4812, 1
  br i1 %4813, label %4814, label %4890

; <label>:4814                                    ; preds = %4786
  %4815 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4816 = extractvalue %dx.types.CBufRet.f32 %4815, 0
  %4817 = extractvalue %dx.types.CBufRet.f32 %4815, 1
  %4818 = fadd fast float %4816, %190
  %4819 = fadd fast float %4817, %191
  %4820 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4821 = extractvalue %dx.types.CBufRet.f32 %4820, 0
  %4822 = extractvalue %dx.types.CBufRet.f32 %4820, 1
  %4823 = fsub fast float %4818, %4821
  %4824 = fsub fast float %4819, %4822
  %4825 = fmul fast float %4823, %4823
  %4826 = fmul fast float %4824, %4824
  %4827 = fadd fast float %4825, %4826
  %4828 = call float @dx.op.unary.f32(i32 24, float %4827)  ; Sqrt(value)
  %4829 = extractvalue %dx.types.CBufRet.f32 %4820, 2
  %4830 = fcmp fast olt float %4828, %4829
  br i1 %4830, label %4831, label %4884

; <label>:4831                                    ; preds = %4814
  %4832 = extractvalue %dx.types.CBufRet.f32 %4815, 2
  %4833 = fadd fast float %4832, %192
  %4834 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4835 = extractvalue %dx.types.CBufRet.f32 %4834, 0
  %4836 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4837 = extractvalue %dx.types.CBufRet.f32 %4836, 0
  %4838 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4839 = extractvalue %dx.types.CBufRet.f32 %4838, 0
  %4840 = extractvalue %dx.types.CBufRet.f32 %4834, 1
  %4841 = extractvalue %dx.types.CBufRet.f32 %4836, 1
  %4842 = extractvalue %dx.types.CBufRet.f32 %4838, 1
  %4843 = extractvalue %dx.types.CBufRet.f32 %4834, 3
  %4844 = extractvalue %dx.types.CBufRet.f32 %4836, 3
  %4845 = extractvalue %dx.types.CBufRet.f32 %4838, 3
  %4846 = fadd fast float %4843, %4818
  %4847 = fadd fast float %4844, %4819
  %4848 = fadd fast float %4833, %4845
  %4849 = fmul fast float %4846, %4835
  %4850 = call float @dx.op.tertiary.f32(i32 46, float %4847, float %4837, float %4849)  ; FMad(a,b,c)
  %4851 = call float @dx.op.tertiary.f32(i32 46, float %4848, float %4839, float %4850)  ; FMad(a,b,c)
  %4852 = fmul fast float %4846, %4840
  %4853 = call float @dx.op.tertiary.f32(i32 46, float %4847, float %4841, float %4852)  ; FMad(a,b,c)
  %4854 = call float @dx.op.tertiary.f32(i32 46, float %4848, float %4842, float %4853)  ; FMad(a,b,c)
  %4855 = fsub fast float %4851, %4843
  %4856 = fsub fast float %4854, %4844
  %4857 = fsub fast float %4855, %4821
  %4858 = fadd fast float %4857, %4829
  %4859 = fsub fast float %4856, %4822
  %4860 = fadd fast float %4859, %4829
  %4861 = extractvalue %dx.types.CBufRet.f32 %4820, 3
  %4862 = fmul fast float %4858, %4861
  %4863 = fmul fast float %4860, %4861
  %4864 = call float @dx.op.unary.f32(i32 7, float %4862)  ; Saturate(value)
  %4865 = call float @dx.op.unary.f32(i32 7, float %4863)  ; Saturate(value)
  %4866 = fsub fast float 1.000000e+00, %4864
  %4867 = fsub fast float 1.000000e+00, %4865
  %4868 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %45, float %4866, float %4867, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4869 = extractvalue %dx.types.ResRet.f32 %4868, 0
  %4870 = fcmp fast ugt float %4869, 0.000000e+00
  br i1 %4870, label %4871, label %4884

; <label>:4871                                    ; preds = %4831
  %4872 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4873 = extractvalue %dx.types.CBufRet.f32 %4872, 2
  %4874 = fmul fast float %4873, %4869
  %4875 = extractvalue %dx.types.CBufRet.f32 %4872, 3
  %4876 = fadd fast float %4875, %4874
  %4877 = extractvalue %dx.types.CBufRet.f32 %4838, 2
  %4878 = fadd fast float %4876, %4845
  %4879 = fmul fast float %4851, %4839
  %4880 = call float @dx.op.tertiary.f32(i32 46, float %4854, float %4842, float %4879)  ; FMad(a,b,c)
  %4881 = call float @dx.op.tertiary.f32(i32 46, float %4878, float %4877, float %4880)  ; FMad(a,b,c)
  %4882 = fsub fast float %4881, %4845
  %4883 = fsub fast float %4882, %4832
  br label %4884

; <label>:4884                                    ; preds = %4871, %4831, %4814
  %4885 = phi i1 [ true, %4871 ], [ false, %4831 ], [ false, %4814 ]
  %4886 = phi float [ %4883, %4871 ], [ -1.310720e+05, %4831 ], [ -1.310720e+05, %4814 ]
  %4887 = fsub fast float %4886, %192
  %4888 = call float @dx.op.unary.f32(i32 7, float %4887)  ; Saturate(value)
  %4889 = select i1 %4885, float %4888, float 1.000000e+00
  br label %4890

; <label>:4890                                    ; preds = %4884, %4786
  %4891 = phi float [ %4889, %4884 ], [ 0.000000e+00, %4786 ]
  %4892 = icmp eq i32 %4812, 3
  %4893 = select i1 %4892, float 1.000000e+00, float %4891
  %4894 = call float @dx.op.binary.f32(i32 35, float %4721, float %4893)  ; FMax(a,b)
  %4895 = fcmp fast olt float %4893, 1.000000e+00
  br i1 %4895, label %4896, label %5069

; <label>:4896                                    ; preds = %4890
  %4897 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 369)  ; CBufferLoadLegacy(handle,regIndex)
  %4898 = extractvalue %dx.types.CBufRet.i32 %4897, 0
  %4899 = and i32 %4898, 7
  %4900 = icmp eq i32 %4899, 0
  br i1 %4900, label %4972, label %4901

; <label>:4901                                    ; preds = %4896
  %4902 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %4903 = extractvalue %dx.types.CBufRet.f32 %4902, 0
  %4904 = extractvalue %dx.types.CBufRet.f32 %4902, 1
  %4905 = extractvalue %dx.types.CBufRet.f32 %4902, 2
  %4906 = fadd fast float %4903, %190
  %4907 = fadd fast float %4904, %191
  %4908 = fadd fast float %4905, %192
  %4909 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 151)  ; CBufferLoadLegacy(handle,regIndex)
  %4910 = extractvalue %dx.types.CBufRet.f32 %4909, 0
  %4911 = extractvalue %dx.types.CBufRet.f32 %4909, 1
  %4912 = extractvalue %dx.types.CBufRet.f32 %4909, 2
  %4913 = extractvalue %dx.types.CBufRet.f32 %4909, 3
  %4914 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 152)  ; CBufferLoadLegacy(handle,regIndex)
  %4915 = extractvalue %dx.types.CBufRet.f32 %4914, 0
  %4916 = extractvalue %dx.types.CBufRet.f32 %4914, 1
  %4917 = extractvalue %dx.types.CBufRet.f32 %4914, 2
  %4918 = extractvalue %dx.types.CBufRet.f32 %4914, 3
  %4919 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 153)  ; CBufferLoadLegacy(handle,regIndex)
  %4920 = extractvalue %dx.types.CBufRet.f32 %4919, 0
  %4921 = extractvalue %dx.types.CBufRet.f32 %4919, 1
  %4922 = extractvalue %dx.types.CBufRet.f32 %4919, 2
  %4923 = extractvalue %dx.types.CBufRet.f32 %4919, 3
  %4924 = fmul fast float %4906, %4910
  %4925 = call float @dx.op.tertiary.f32(i32 46, float %4907, float %4911, float %4924)  ; FMad(a,b,c)
  %4926 = call float @dx.op.tertiary.f32(i32 46, float %4908, float %4912, float %4925)  ; FMad(a,b,c)
  %4927 = fadd fast float %4926, %4913
  %4928 = fmul fast float %4915, %4906
  %4929 = call float @dx.op.tertiary.f32(i32 46, float %4907, float %4916, float %4928)  ; FMad(a,b,c)
  %4930 = call float @dx.op.tertiary.f32(i32 46, float %4908, float %4917, float %4929)  ; FMad(a,b,c)
  %4931 = fadd fast float %4930, %4918
  %4932 = fmul fast float %4920, %4906
  %4933 = call float @dx.op.tertiary.f32(i32 46, float %4907, float %4921, float %4932)  ; FMad(a,b,c)
  %4934 = call float @dx.op.tertiary.f32(i32 46, float %4908, float %4922, float %4933)  ; FMad(a,b,c)
  %4935 = fadd fast float %4934, %4923
  %4936 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 155)  ; CBufferLoadLegacy(handle,regIndex)
  %4937 = extractvalue %dx.types.CBufRet.f32 %4936, 1
  %4938 = extractvalue %dx.types.CBufRet.f32 %4936, 0
  %4939 = fmul fast float %4938, %305
  %4940 = fadd fast float %4935, %4939
  %4941 = fmul fast float %305, 0x401921FB60000000
  %4942 = call float @dx.op.unary.f32(i32 13, float %4941)  ; Sin(value)
  %4943 = call float @dx.op.unary.f32(i32 12, float %4941)  ; Cos(value)
  %4944 = fmul fast float %4943, %4937
  %4945 = call float @dx.op.tertiary.f32(i32 46, float %4942, float %4937, float 0.000000e+00)  ; FMad(a,b,c)
  %4946 = fmul fast float %4937, %4942
  %4947 = fsub fast float -0.000000e+00, %4946
  %4948 = call float @dx.op.tertiary.f32(i32 46, float %4943, float %4937, float 0.000000e+00)  ; FMad(a,b,c)
  br label %4949

; <label>:4949                                    ; preds = %4949, %4901
  %4950 = phi float [ 0.000000e+00, %4901 ], [ %4964, %4949 ]
  %4951 = phi i32 [ 0, %4901 ], [ %4965, %4949 ]
  %4952 = getelementptr [4 x float], [4 x float]* @PCF_OFFSETS_4.0, i32 0, i32 %4951
  %4953 = getelementptr [4 x float], [4 x float]* @PCF_OFFSETS_4.1, i32 0, i32 %4951
  %4954 = load float, float* %4952, align 4
  %4955 = load float, float* %4953, align 4
  %4956 = fmul fast float %4944, %4954
  %4957 = call float @dx.op.tertiary.f32(i32 46, float %4955, float %4947, float %4956)  ; FMad(a,b,c)
  %4958 = fmul fast float %4954, %4945
  %4959 = call float @dx.op.tertiary.f32(i32 46, float %4955, float %4948, float %4958)  ; FMad(a,b,c)
  %4960 = fadd fast float %4927, %4957
  %4961 = fadd fast float %4931, %4959
  %4962 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %2, %dx.types.Handle %47, float %4960, float %4961, float undef, float undef, i32 0, i32 0, i32 undef, float %4940)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4963 = extractvalue %dx.types.ResRet.f32 %4962, 0
  %4964 = fadd fast float %4963, %4950
  %4965 = add nuw nsw i32 %4951, 1
  %4966 = icmp eq i32 %4965, 4
  br i1 %4966, label %4967, label %4949

; <label>:4967                                    ; preds = %4949
  %4968 = fmul fast float %4964, 2.500000e-01
  %4969 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 370)  ; CBufferLoadLegacy(handle,regIndex)
  %4970 = extractvalue %dx.types.CBufRet.f32 %4969, 1
  %4971 = fmul fast float %4970, %4968
  br label %4972

; <label>:4972                                    ; preds = %4967, %4896
  %4973 = phi float [ %4968, %4967 ], [ 0.000000e+00, %4896 ]
  %4974 = phi float [ %4971, %4967 ], [ 0.000000e+00, %4896 ]
  %4975 = fcmp uge float %67, 0.000000e+00
  br i1 %4975, label %4976, label %4987

; <label>:4976                                    ; preds = %4972
  %4977 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %39, %dx.types.Handle %43, float %67, float %68, float %69, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4978 = extractvalue %dx.types.ResRet.f32 %4977, 0
  %4979 = extractvalue %dx.types.ResRet.f32 %4977, 1
  %4980 = extractvalue %dx.types.ResRet.f32 %4977, 2
  %4981 = fadd fast float %4978, %4894
  %4982 = fcmp fast ogt float %66, 0.000000e+00
  %4983 = call float @dx.op.dot3.f32(i32 55, float %63, float %64, float %65, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4984 = select i1 %4982, float 1.000000e+00, float %4983
  %4985 = fmul fast float %4984, %4980
  %4986 = select i1 %4982, float 0.000000e+00, float %4974
  br label %5069

; <label>:4987                                    ; preds = %4972
  %4988 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 369)  ; CBufferLoadLegacy(handle,regIndex)
  %4989 = extractvalue %dx.types.CBufRet.i32 %4988, 0
  %4990 = and i32 %4989, 7
  %4991 = icmp eq i32 %4990, 0
  br i1 %4991, label %5069, label %4992

; <label>:4992                                    ; preds = %4987
  %4993 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 370)  ; CBufferLoadLegacy(handle,regIndex)
  %4994 = extractvalue %dx.types.CBufRet.f32 %4993, 0
  %4995 = fmul fast float %4994, %4973
  %4996 = fadd fast float %4995, %4894
  %4997 = extractvalue %dx.types.CBufRet.f32 %4993, 2
  %4998 = fmul fast float %4997, %4973
  %4999 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 371)  ; CBufferLoadLegacy(handle,regIndex)
  %5000 = extractvalue %dx.types.CBufRet.f32 %4999, 0
  %5001 = fmul fast float %5000, %4973
  %5002 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %5003 = and i32 %4989, 8
  %5004 = icmp eq i32 %5003, 0
  br i1 %5004, label %5069, label %5005

; <label>:5005                                    ; preds = %4992
  %5006 = extractvalue %dx.types.CBufRet.f32 %5002, 2
  %5007 = fadd fast float %5006, %192
  %5008 = extractvalue %dx.types.CBufRet.f32 %5002, 1
  %5009 = fadd fast float %5008, %191
  %5010 = extractvalue %dx.types.CBufRet.f32 %5002, 0
  %5011 = fadd fast float %5010, %190
  %5012 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 377)  ; CBufferLoadLegacy(handle,regIndex)
  %5013 = extractvalue %dx.types.CBufRet.f32 %5012, 0
  %5014 = extractvalue %dx.types.CBufRet.f32 %5012, 1
  %5015 = extractvalue %dx.types.CBufRet.f32 %5012, 2
  %5016 = fsub fast float %5011, %5013
  %5017 = fsub fast float %5009, %5014
  %5018 = fsub fast float %5007, %5015
  %5019 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 378)  ; CBufferLoadLegacy(handle,regIndex)
  %5020 = extractvalue %dx.types.CBufRet.f32 %5019, 0
  %5021 = extractvalue %dx.types.CBufRet.f32 %5019, 1
  %5022 = extractvalue %dx.types.CBufRet.f32 %5019, 2
  %5023 = fmul fast float %5016, %5020
  %5024 = fmul fast float %5017, %5021
  %5025 = fmul fast float %5018, %5022
  %5026 = fcmp fast oge float %5023, 0.000000e+00
  %5027 = fcmp fast oge float %5024, 0.000000e+00
  %5028 = fcmp fast oge float %5025, 0.000000e+00
  %5029 = and i1 %5026, %5027
  %5030 = and i1 %5028, %5029
  %5031 = fcmp fast ole float %5023, 1.000000e+00
  %5032 = fcmp fast ole float %5024, 1.000000e+00
  %5033 = fcmp fast ole float %5025, 1.000000e+00
  %5034 = and i1 %5031, %5032
  %5035 = and i1 %5033, %5034
  %5036 = and i1 %5030, %5035
  br i1 %5036, label %5037, label %5069

; <label>:5037                                    ; preds = %5005
  %5038 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 379)  ; CBufferLoadLegacy(handle,regIndex)
  %5039 = extractvalue %dx.types.CBufRet.i32 %5038, 0
  %5040 = icmp eq i32 %5039, 0
  br i1 %5040, label %5047, label %5041

; <label>:5041                                    ; preds = %5037
  %5042 = add i32 %5039, 0
  %5043 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5042, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5044 = fsub fast float -0.000000e+00, %5024
  %5045 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %5043, %dx.types.Handle %108, float %5023, float %5044, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %5046 = extractvalue %dx.types.ResRet.f32 %5045, 0
  br label %5047

; <label>:5047                                    ; preds = %5041, %5037
  %5048 = phi float [ %5046, %5041 ], [ 1.000000e+00, %5037 ]
  %5049 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 369)  ; CBufferLoadLegacy(handle,regIndex)
  %5050 = extractvalue %dx.types.CBufRet.i32 %5049, 0
  %5051 = and i32 %5050, 32
  %5052 = icmp ne i32 %5051, 0
  %5053 = fmul fast float %5048, %4973
  %5054 = select i1 %5052, float %5048, float %5053
  %5055 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 379)  ; CBufferLoadLegacy(handle,regIndex)
  %5056 = extractvalue %dx.types.CBufRet.f32 %5055, 1
  %5057 = fmul fast float %5054, %5056
  %5058 = fadd fast float %5057, %4996
  %5059 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 380)  ; CBufferLoadLegacy(handle,regIndex)
  %5060 = extractvalue %dx.types.CBufRet.f32 %5059, 0
  %5061 = fmul fast float %5054, %5060
  %5062 = fadd fast float %5061, %4974
  %5063 = extractvalue %dx.types.CBufRet.f32 %5059, 1
  %5064 = fmul fast float %5054, %5063
  %5065 = fadd fast float %5064, %4998
  %5066 = extractvalue %dx.types.CBufRet.f32 %5059, 2
  %5067 = fmul fast float %5066, %5054
  %5068 = fadd fast float %5067, %5001
  br label %5069

; <label>:5069                                    ; preds = %5047, %5005, %4992, %4987, %4976, %4890
  %5070 = phi float [ %4894, %4987 ], [ %4894, %4890 ], [ %4981, %4976 ], [ %5058, %5047 ], [ %4996, %5005 ], [ %4996, %4992 ]
  %5071 = phi float [ %4974, %4987 ], [ 0.000000e+00, %4890 ], [ %4986, %4976 ], [ %5062, %5047 ], [ %4974, %5005 ], [ %4974, %4992 ]
  %5072 = phi float [ 0.000000e+00, %4987 ], [ 0.000000e+00, %4890 ], [ %4979, %4976 ], [ %5065, %5047 ], [ %4998, %5005 ], [ %4998, %4992 ]
  %5073 = phi float [ 0.000000e+00, %4987 ], [ 0.000000e+00, %4890 ], [ %4985, %4976 ], [ %5068, %5047 ], [ %5001, %5005 ], [ %5001, %4992 ]
  %5074 = call float @dx.op.unary.f32(i32 7, float %5070)  ; Saturate(value)
  %5075 = call float @dx.op.unary.f32(i32 7, float %5071)  ; Saturate(value)
  %5076 = call float @dx.op.unary.f32(i32 7, float %5072)  ; Saturate(value)
  %5077 = call float @dx.op.unary.f32(i32 7, float %5073)  ; Saturate(value)
  %5078 = fcmp fast une float %5076, 0.000000e+00
  %5079 = fcmp fast une float %5077, 0.000000e+00
  %5080 = or i1 %5078, %5079
  br i1 %5080, label %5081, label %5656

; <label>:5081                                    ; preds = %5069
  br i1 %5078, label %5082, label %5355

; <label>:5082                                    ; preds = %5081
  %5083 = call float @dx.op.unary.f32(i32 23, float %4718)  ; Log(value)
  %5084 = fmul fast float %5083, 4.000000e+00
  %5085 = call float @dx.op.unary.f32(i32 21, float %5084)  ; Exp(value)
  %5086 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %5087 = extractvalue %dx.types.CBufRet.f32 %5086, 0
  %5088 = fmul fast float %5087, %54
  %5089 = fmul fast float %5087, %55
  %5090 = fmul fast float %5087, %56
  %5091 = call float @dx.op.unary.f32(i32 6, float %63)  ; FAbs(value)
  %5092 = call float @dx.op.unary.f32(i32 6, float %64)  ; FAbs(value)
  %5093 = call float @dx.op.unary.f32(i32 6, float %65)  ; FAbs(value)
  %5094 = call float @dx.op.unary.f32(i32 23, float %5091)  ; Log(value)
  %5095 = call float @dx.op.unary.f32(i32 23, float %5092)  ; Log(value)
  %5096 = call float @dx.op.unary.f32(i32 23, float %5093)  ; Log(value)
  %5097 = fmul fast float %5094, 4.000000e+00
  %5098 = fmul fast float %5095, 4.000000e+00
  %5099 = fmul fast float %5096, 4.000000e+00
  %5100 = call float @dx.op.unary.f32(i32 21, float %5097)  ; Exp(value)
  %5101 = call float @dx.op.unary.f32(i32 21, float %5098)  ; Exp(value)
  %5102 = call float @dx.op.unary.f32(i32 21, float %5099)  ; Exp(value)
  %5103 = fadd fast float %5101, %5100
  %5104 = fadd fast float %5103, %5102
  %5105 = fdiv fast float 1.000000e+00, %5104
  %5106 = fmul fast float %5105, %5100
  %5107 = fcmp fast ogt float %63, 0.000000e+00
  %5108 = fcmp fast ogt float %64, 0.000000e+00
  %5109 = fcmp fast ogt float %65, 0.000000e+00
  %5110 = fcmp fast olt float %63, 0.000000e+00
  %5111 = fcmp fast olt float %64, 0.000000e+00
  %5112 = fcmp fast olt float %65, 0.000000e+00
  %5113 = zext i1 %5107 to i32
  %5114 = zext i1 %5108 to i32
  %5115 = zext i1 %5109 to i32
  %5116 = zext i1 %5110 to i32
  %5117 = zext i1 %5111 to i32
  %5118 = zext i1 %5112 to i32
  %5119 = sub nsw i32 %5113, %5116
  %5120 = sub nsw i32 %5114, %5117
  %5121 = sub nsw i32 %5115, %5118
  %5122 = call float @dx.op.unary.f32(i32 83, float %5088)  ; DerivCoarseX(value)
  %5123 = call float @dx.op.unary.f32(i32 83, float %5089)  ; DerivCoarseX(value)
  %5124 = call float @dx.op.unary.f32(i32 83, float %5090)  ; DerivCoarseX(value)
  %5125 = call float @dx.op.unary.f32(i32 84, float %5088)  ; DerivCoarseY(value)
  %5126 = call float @dx.op.unary.f32(i32 84, float %5089)  ; DerivCoarseY(value)
  %5127 = call float @dx.op.unary.f32(i32 84, float %5090)  ; DerivCoarseY(value)
  %5128 = fcmp fast ole float %305, %5106
  %5129 = fmul fast float %5105, %5103
  %5130 = fcmp fast ole float %305, %5129
  %5131 = select i1 %5130, float %5090, float %5088
  %5132 = select i1 %5130, float %5088, float %5089
  %5133 = select i1 %5128, float %5089, float %5131
  %5134 = select i1 %5128, float %5090, float %5132
  %5135 = select i1 %5130, float %5124, float %5122
  %5136 = select i1 %5130, float %5122, float %5123
  %5137 = select i1 %5128, float %5123, float %5135
  %5138 = select i1 %5128, float %5124, float %5136
  %5139 = select i1 %5130, float %5127, float %5125
  %5140 = select i1 %5130, float %5125, float %5126
  %5141 = select i1 %5128, float %5126, float %5139
  %5142 = select i1 %5128, float %5127, float %5140
  %5143 = call float @dx.op.unary.f32(i32 27, float %5133)  ; Round_ni(value)
  %5144 = call float @dx.op.unary.f32(i32 27, float %5134)  ; Round_ni(value)
  %5145 = fptosi float %5143 to i32
  %5146 = fptosi float %5144 to i32
  %5147 = xor i32 %5146, %5145
  %5148 = sitofp i32 %5147 to float
  %5149 = fptosi float %5148 to i32
  %5150 = sitofp i32 %5149 to float
  %5151 = fmul fast float %5150, 0x3FE3C6EF40000000
  %5152 = frem fast float %5143, 2.560000e+02
  %5153 = frem fast float %5144, 2.560000e+02
  %5154 = fptoui float %5152 to i32
  %5155 = fptoui float %5153 to i32
  %5156 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %28, i32 0, i32 %5154, i32 %5155, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5157 = extractvalue %dx.types.ResRet.f32 %5156, 0
  %5158 = extractvalue %dx.types.ResRet.f32 %5156, 1
  %5159 = extractvalue %dx.types.ResRet.f32 %5156, 2
  %5160 = fadd fast float %5157, %5151
  %5161 = fadd fast float %5158, %5151
  %5162 = fadd fast float %5159, %5151
  %5163 = call float @dx.op.unary.f32(i32 22, float %5160)  ; Frc(value)
  %5164 = call float @dx.op.unary.f32(i32 22, float %5161)  ; Frc(value)
  %5165 = call float @dx.op.unary.f32(i32 22, float %5162)  ; Frc(value)
  %5166 = fmul fast float %5165, 0x401921FB60000000
  %5167 = call float @dx.op.unary.f32(i32 13, float %5166)  ; Sin(value)
  %5168 = call float @dx.op.unary.f32(i32 12, float %5166)  ; Cos(value)
  %5169 = fsub fast float -0.000000e+00, %5168
  %5170 = fmul fast float %5168, %5133
  %5171 = call float @dx.op.tertiary.f32(i32 46, float %5167, float %5134, float %5170)  ; FMad(a,b,c)
  %5172 = fmul fast float %5167, %5133
  %5173 = call float @dx.op.tertiary.f32(i32 46, float %5169, float %5134, float %5172)  ; FMad(a,b,c)
  %5174 = fadd fast float %5171, %5163
  %5175 = fadd fast float %5173, %5164
  %5176 = extractvalue %dx.types.CBufRet.f32 %5086, 3
  %5177 = bitcast float %5176 to i32
  %5178 = icmp eq i32 %5177, 0
  br i1 %5178, label %5217, label %5179

; <label>:5179                                    ; preds = %5082
  %5180 = add i32 %5177, 0
  %5181 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5180, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5182 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5181, %dx.types.Handle %108, float %5174, float %5175, float undef, float undef, i32 0, i32 0, i32 undef, float %5137, float %5138, float undef, float %5141, float %5142, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5183 = extractvalue %dx.types.ResRet.f32 %5182, 0
  %5184 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %5185 = extractvalue %dx.types.CBufRet.f32 %5184, 1
  %5186 = extractvalue %dx.types.CBufRet.f32 %5184, 2
  %5187 = fsub fast float 1.000000e+00, %5076
  %5188 = call float @dx.op.binary.f32(i32 35, float %5187, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %5189 = bitcast float %5076 to i32
  %5190 = sitofp i32 %5189 to float
  %5191 = fadd fast float %5190, 0xC1CFBF8940000000
  %5192 = fmul fast float %5186, %5191
  %5193 = fadd fast float %5192, 0x41CFBF8940000000
  %5194 = fptosi float %5193 to i32
  %5195 = bitcast i32 %5194 to float
  %5196 = bitcast float %5188 to i32
  %5197 = sitofp i32 %5196 to float
  %5198 = fadd fast float %5197, 0xC1CFBF8940000000
  %5199 = fmul fast float %5198, %5186
  %5200 = fadd fast float %5199, 0x41CFBF8940000000
  %5201 = fptosi float %5200 to i32
  %5202 = bitcast i32 %5201 to float
  %5203 = fmul fast float %5195, %5185
  %5204 = fmul fast float %5202, %5185
  %5205 = fsub fast float %5188, %5203
  %5206 = fadd fast float %5204, %5188
  %5207 = call float @dx.op.unary.f32(i32 7, float %5205)  ; Saturate(value)
  %5208 = call float @dx.op.unary.f32(i32 7, float %5206)  ; Saturate(value)
  %5209 = fsub fast float %5183, %5207
  %5210 = fsub fast float %5208, %5207
  %5211 = bitcast float %5210 to i32
  %5212 = sub nsw i32 2129859010, %5211
  %5213 = bitcast i32 %5212 to float
  %5214 = fmul fast float %5213, %5209
  %5215 = call float @dx.op.unary.f32(i32 7, float %5214)  ; Saturate(value)
  %5216 = fcmp fast olt float %5215, 0x3F70101020000000
  br i1 %5216, label %5355, label %5217

; <label>:5217                                    ; preds = %5179, %5082
  %5218 = phi float [ %5215, %5179 ], [ %5076, %5082 ]
  %5219 = fmul fast float %5218, %5085
  %5220 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %5221 = extractvalue %dx.types.CBufRet.i32 %5220, 1
  %5222 = extractvalue %dx.types.CBufRet.i32 %5220, 0
  %5223 = add i32 %5222, 0
  %5224 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5223, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5225 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5224, %dx.types.Handle %107, float %5174, float %5175, float undef, float undef, i32 0, i32 0, i32 undef, float %5137, float %5138, float undef, float %5141, float %5142, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5226 = extractvalue %dx.types.ResRet.f32 %5225, 0
  %5227 = extractvalue %dx.types.ResRet.f32 %5225, 1
  %5228 = extractvalue %dx.types.ResRet.f32 %5225, 2
  %5229 = extractvalue %dx.types.ResRet.f32 %5225, 3
  %5230 = and i32 %5221, 255
  %5231 = uitofp i32 %5230 to float
  %5232 = lshr i32 %5221, 8
  %5233 = and i32 %5232, 255
  %5234 = uitofp i32 %5233 to float
  %5235 = fmul fast float %5229, %5231
  %5236 = fadd fast float %5235, %5234
  %5237 = fmul fast float %5236, 0x3F70101000000000
  %5238 = fadd fast float %5237, 0xBFB99999A0000000
  %5239 = call float @dx.op.unary.f32(i32 7, float %5238)  ; Saturate(value)
  %5240 = fmul fast float %5239, 0x3FF1C71C80000000
  %5241 = call float @dx.op.binary.f32(i32 36, float %5237, float 0x3FB99999A0000000)  ; FMin(a,b)
  %5242 = fsub fast float 1.000000e+00, %5240
  %5243 = call float @dx.op.unary.f32(i32 7, float %5242)  ; Saturate(value)
  %5244 = fmul fast float %5243, %5226
  %5245 = fmul fast float %5243, %5227
  %5246 = fmul fast float %5243, %5228
  %5247 = call float @dx.op.unary.f32(i32 7, float %5244)  ; Saturate(value)
  %5248 = call float @dx.op.unary.f32(i32 7, float %5245)  ; Saturate(value)
  %5249 = call float @dx.op.unary.f32(i32 7, float %5246)  ; Saturate(value)
  %5250 = fmul fast float %5240, %5226
  %5251 = fmul fast float %5240, %5227
  %5252 = fmul fast float %5240, %5228
  %5253 = fadd fast float %5250, %5241
  %5254 = fadd fast float %5251, %5241
  %5255 = fadd fast float %5252, %5241
  %5256 = call float @dx.op.unary.f32(i32 7, float %5253)  ; Saturate(value)
  %5257 = call float @dx.op.unary.f32(i32 7, float %5254)  ; Saturate(value)
  %5258 = call float @dx.op.unary.f32(i32 7, float %5255)  ; Saturate(value)
  %5259 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %5260 = extractvalue %dx.types.CBufRet.i32 %5259, 3
  %5261 = extractvalue %dx.types.CBufRet.i32 %5259, 2
  %5262 = add i32 %5261, 0
  %5263 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5262, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5264 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5263, %dx.types.Handle %107, float %5174, float %5175, float undef, float undef, i32 0, i32 0, i32 undef, float %5137, float %5138, float undef, float %5141, float %5142, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5265 = extractvalue %dx.types.ResRet.f32 %5264, 0
  %5266 = extractvalue %dx.types.ResRet.f32 %5264, 1
  %5267 = extractvalue %dx.types.ResRet.f32 %5264, 2
  %5268 = extractvalue %dx.types.ResRet.f32 %5264, 3
  %5269 = and i32 %5260, 255
  %5270 = uitofp i32 %5269 to float
  %5271 = lshr i32 %5260, 8
  %5272 = and i32 %5271, 255
  %5273 = uitofp i32 %5272 to float
  %5274 = lshr i32 %5260, 16
  %5275 = and i32 %5274, 255
  %5276 = uitofp i32 %5275 to float
  %5277 = fmul fast float %5276, 0x3F70101000000000
  %5278 = fmul fast float %5265, %5270
  %5279 = fadd fast float %5278, %5273
  %5280 = fmul fast float %5279, 0x3F70101000000000
  %5281 = fadd fast float %5266, -5.000000e-01
  %5282 = fadd fast float %5268, -5.000000e-01
  %5283 = fmul fast float %5281, %5277
  %5284 = fmul fast float %5282, %5277
  %5285 = fadd fast float %5283, 5.000000e-01
  %5286 = fadd fast float %5284, 5.000000e-01
  %5287 = fmul fast float %5285, 2.000000e+00
  %5288 = fadd fast float %5287, -1.000000e+00
  %5289 = fmul fast float %5286, 2.000000e+00
  %5290 = fadd fast float %5289, -1.000000e+00
  %5291 = fadd fast float %5288, %5290
  %5292 = fmul fast float %5291, 5.000000e-01
  %5293 = fsub fast float %5288, %5290
  %5294 = fmul fast float %5293, 5.000000e-01
  %5295 = call float @dx.op.unary.f32(i32 6, float %5292)  ; FAbs(value)
  %5296 = fsub fast float 1.000000e+00, %5295
  %5297 = call float @dx.op.unary.f32(i32 6, float %5294)  ; FAbs(value)
  %5298 = fsub fast float %5296, %5297
  %5299 = call float @dx.op.dot3.f32(i32 55, float %5292, float %5294, float %5298, float %5292, float %5294, float %5298)  ; Dot3(ax,ay,az,bx,by,bz)
  %5300 = call float @dx.op.unary.f32(i32 25, float %5299)  ; Rsqrt(value)
  %5301 = fmul fast float %5292, %5300
  %5302 = fmul fast float %5294, %5300
  %5303 = select i1 %5130, i32 %5120, i32 %5121
  %5304 = select i1 %5128, i32 %5119, i32 %5303
  %5305 = sitofp i32 %5304 to float
  %5306 = fmul fast float %5298, %5305
  %5307 = fmul fast float %5306, %5300
  %5308 = select i1 %5130, float %5307, float %5302
  %5309 = select i1 %5130, float %5302, float %5307
  %5310 = select i1 %5128, float %5307, float %5301
  %5311 = select i1 %5128, float %5302, float %5308
  %5312 = select i1 %5128, float %5301, float %5309
  %5313 = fsub fast float %5247, %4804
  %5314 = fsub fast float %5248, %4805
  %5315 = fsub fast float %5249, %4806
  %5316 = fmul fast float %5313, %5219
  %5317 = fmul fast float %5314, %5219
  %5318 = fmul fast float %5315, %5219
  %5319 = fadd fast float %5316, %4804
  %5320 = fadd fast float %5317, %4805
  %5321 = fadd fast float %5318, %4806
  %5322 = fsub fast float %5256, %4764
  %5323 = fsub fast float %5257, %4765
  %5324 = fsub fast float %5258, %4766
  %5325 = fmul fast float %5322, %5219
  %5326 = fmul fast float %5323, %5219
  %5327 = fmul fast float %5324, %5219
  %5328 = fadd fast float %5325, %4764
  %5329 = fadd fast float %5326, %4765
  %5330 = fadd fast float %5327, %4766
  %5331 = fadd fast float %5310, %4700
  %5332 = fadd fast float %5311, %4701
  %5333 = fadd fast float %5312, %4702
  %5334 = call float @dx.op.dot3.f32(i32 55, float %5331, float %5332, float %5333, float %5331, float %5332, float %5333)  ; Dot3(ax,ay,az,bx,by,bz)
  %5335 = call float @dx.op.unary.f32(i32 25, float %5334)  ; Rsqrt(value)
  %5336 = fmul fast float %5331, %5335
  %5337 = fmul fast float %5332, %5335
  %5338 = fmul fast float %5333, %5335
  %5339 = fsub fast float %5336, %4700
  %5340 = fsub fast float %5337, %4701
  %5341 = fsub fast float %5338, %4702
  %5342 = fmul fast float %5339, %5219
  %5343 = fmul fast float %5340, %5219
  %5344 = fmul fast float %5341, %5219
  %5345 = fadd fast float %5342, %4700
  %5346 = fadd fast float %5343, %4701
  %5347 = fadd fast float %5344, %4702
  %5348 = call float @dx.op.binary.f32(i32 36, float %4718, float %5267)  ; FMin(a,b)
  %5349 = fsub fast float %5348, %4718
  %5350 = fmul fast float %5349, %5219
  %5351 = fadd fast float %5350, %4718
  %5352 = fsub fast float %5280, %4767
  %5353 = fmul fast float %5352, %5219
  %5354 = fadd fast float %5353, %4767
  br label %5355

; <label>:5355                                    ; preds = %5217, %5179, %5081
  %5356 = phi float [ %5328, %5217 ], [ %4764, %5179 ], [ %4764, %5081 ]
  %5357 = phi float [ %5329, %5217 ], [ %4765, %5179 ], [ %4765, %5081 ]
  %5358 = phi float [ %5330, %5217 ], [ %4766, %5179 ], [ %4766, %5081 ]
  %5359 = phi float [ %5319, %5217 ], [ %4804, %5179 ], [ %4804, %5081 ]
  %5360 = phi float [ %5320, %5217 ], [ %4805, %5179 ], [ %4805, %5081 ]
  %5361 = phi float [ %5321, %5217 ], [ %4806, %5179 ], [ %4806, %5081 ]
  %5362 = phi float [ %5345, %5217 ], [ %4700, %5179 ], [ %4700, %5081 ]
  %5363 = phi float [ %5346, %5217 ], [ %4701, %5179 ], [ %4701, %5081 ]
  %5364 = phi float [ %5347, %5217 ], [ %4702, %5179 ], [ %4702, %5081 ]
  %5365 = phi float [ %5354, %5217 ], [ %4767, %5179 ], [ %4767, %5081 ]
  %5366 = phi float [ %5351, %5217 ], [ %4718, %5179 ], [ %4718, %5081 ]
  br i1 %5079, label %5367, label %5656

; <label>:5367                                    ; preds = %5355
  %5368 = call float @dx.op.unary.f32(i32 23, float %5366)  ; Log(value)
  %5369 = fmul fast float %5368, 4.000000e+00
  %5370 = call float @dx.op.unary.f32(i32 21, float %5369)  ; Exp(value)
  %5371 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %5372 = extractvalue %dx.types.CBufRet.f32 %5371, 0
  %5373 = fmul fast float %5372, %54
  %5374 = fmul fast float %5372, %55
  %5375 = fmul fast float %5372, %56
  %5376 = call float @dx.op.unary.f32(i32 6, float %63)  ; FAbs(value)
  %5377 = call float @dx.op.unary.f32(i32 6, float %64)  ; FAbs(value)
  %5378 = call float @dx.op.unary.f32(i32 6, float %65)  ; FAbs(value)
  %5379 = call float @dx.op.unary.f32(i32 23, float %5376)  ; Log(value)
  %5380 = call float @dx.op.unary.f32(i32 23, float %5377)  ; Log(value)
  %5381 = call float @dx.op.unary.f32(i32 23, float %5378)  ; Log(value)
  %5382 = fmul fast float %5379, 4.000000e+00
  %5383 = fmul fast float %5380, 4.000000e+00
  %5384 = fmul fast float %5381, 4.000000e+00
  %5385 = call float @dx.op.unary.f32(i32 21, float %5382)  ; Exp(value)
  %5386 = call float @dx.op.unary.f32(i32 21, float %5383)  ; Exp(value)
  %5387 = call float @dx.op.unary.f32(i32 21, float %5384)  ; Exp(value)
  %5388 = fadd fast float %5386, %5385
  %5389 = fadd fast float %5388, %5387
  %5390 = fdiv fast float 1.000000e+00, %5389
  %5391 = fmul fast float %5390, %5385
  %5392 = fcmp fast ogt float %63, 0.000000e+00
  %5393 = fcmp fast ogt float %64, 0.000000e+00
  %5394 = fcmp fast ogt float %65, 0.000000e+00
  %5395 = fcmp fast olt float %63, 0.000000e+00
  %5396 = fcmp fast olt float %64, 0.000000e+00
  %5397 = fcmp fast olt float %65, 0.000000e+00
  %5398 = zext i1 %5392 to i32
  %5399 = zext i1 %5393 to i32
  %5400 = zext i1 %5394 to i32
  %5401 = zext i1 %5395 to i32
  %5402 = zext i1 %5396 to i32
  %5403 = zext i1 %5397 to i32
  %5404 = sub nsw i32 %5398, %5401
  %5405 = sub nsw i32 %5399, %5402
  %5406 = sub nsw i32 %5400, %5403
  %5407 = call float @dx.op.unary.f32(i32 83, float %5373)  ; DerivCoarseX(value)
  %5408 = call float @dx.op.unary.f32(i32 83, float %5374)  ; DerivCoarseX(value)
  %5409 = call float @dx.op.unary.f32(i32 83, float %5375)  ; DerivCoarseX(value)
  %5410 = call float @dx.op.unary.f32(i32 84, float %5373)  ; DerivCoarseY(value)
  %5411 = call float @dx.op.unary.f32(i32 84, float %5374)  ; DerivCoarseY(value)
  %5412 = call float @dx.op.unary.f32(i32 84, float %5375)  ; DerivCoarseY(value)
  %5413 = fcmp fast ole float %305, %5391
  %5414 = fmul fast float %5390, %5388
  %5415 = fcmp fast ole float %305, %5414
  %5416 = select i1 %5415, float %5375, float %5373
  %5417 = select i1 %5415, float %5373, float %5374
  %5418 = select i1 %5413, float %5374, float %5416
  %5419 = select i1 %5413, float %5375, float %5417
  %5420 = select i1 %5415, float %5409, float %5407
  %5421 = select i1 %5415, float %5407, float %5408
  %5422 = select i1 %5413, float %5408, float %5420
  %5423 = select i1 %5413, float %5409, float %5421
  %5424 = select i1 %5415, float %5412, float %5410
  %5425 = select i1 %5415, float %5410, float %5411
  %5426 = select i1 %5413, float %5411, float %5424
  %5427 = select i1 %5413, float %5412, float %5425
  %5428 = call float @dx.op.unary.f32(i32 27, float %5418)  ; Round_ni(value)
  %5429 = call float @dx.op.unary.f32(i32 27, float %5419)  ; Round_ni(value)
  %5430 = fptosi float %5428 to i32
  %5431 = fptosi float %5429 to i32
  %5432 = xor i32 %5431, %5430
  %5433 = sitofp i32 %5432 to float
  %5434 = fptosi float %5433 to i32
  %5435 = sitofp i32 %5434 to float
  %5436 = fmul fast float %5435, 0x3FE3C6EF40000000
  %5437 = frem fast float %5428, 2.560000e+02
  %5438 = frem fast float %5429, 2.560000e+02
  %5439 = fptoui float %5437 to i32
  %5440 = fptoui float %5438 to i32
  %5441 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %28, i32 0, i32 %5439, i32 %5440, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5442 = extractvalue %dx.types.ResRet.f32 %5441, 0
  %5443 = extractvalue %dx.types.ResRet.f32 %5441, 1
  %5444 = extractvalue %dx.types.ResRet.f32 %5441, 2
  %5445 = fadd fast float %5442, %5436
  %5446 = fadd fast float %5443, %5436
  %5447 = fadd fast float %5444, %5436
  %5448 = call float @dx.op.unary.f32(i32 22, float %5445)  ; Frc(value)
  %5449 = call float @dx.op.unary.f32(i32 22, float %5446)  ; Frc(value)
  %5450 = call float @dx.op.unary.f32(i32 22, float %5447)  ; Frc(value)
  %5451 = fmul fast float %5450, 0x401921FB60000000
  %5452 = call float @dx.op.unary.f32(i32 13, float %5451)  ; Sin(value)
  %5453 = call float @dx.op.unary.f32(i32 12, float %5451)  ; Cos(value)
  %5454 = fsub fast float -0.000000e+00, %5453
  %5455 = fmul fast float %5453, %5418
  %5456 = call float @dx.op.tertiary.f32(i32 46, float %5452, float %5419, float %5455)  ; FMad(a,b,c)
  %5457 = fmul fast float %5452, %5418
  %5458 = call float @dx.op.tertiary.f32(i32 46, float %5454, float %5419, float %5457)  ; FMad(a,b,c)
  %5459 = fadd fast float %5456, %5448
  %5460 = fadd fast float %5458, %5449
  %5461 = extractvalue %dx.types.CBufRet.f32 %5371, 3
  %5462 = bitcast float %5461 to i32
  %5463 = icmp eq i32 %5462, 0
  br i1 %5463, label %5502, label %5464

; <label>:5464                                    ; preds = %5367
  %5465 = add i32 %5462, 0
  %5466 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5465, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5467 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5466, %dx.types.Handle %108, float %5459, float %5460, float undef, float undef, i32 0, i32 0, i32 undef, float %5422, float %5423, float undef, float %5426, float %5427, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5468 = extractvalue %dx.types.ResRet.f32 %5467, 0
  %5469 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %5470 = extractvalue %dx.types.CBufRet.f32 %5469, 1
  %5471 = extractvalue %dx.types.CBufRet.f32 %5469, 2
  %5472 = fsub fast float 1.000000e+00, %5077
  %5473 = call float @dx.op.binary.f32(i32 35, float %5472, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %5474 = bitcast float %5077 to i32
  %5475 = sitofp i32 %5474 to float
  %5476 = fadd fast float %5475, 0xC1CFBF8940000000
  %5477 = fmul fast float %5471, %5476
  %5478 = fadd fast float %5477, 0x41CFBF8940000000
  %5479 = fptosi float %5478 to i32
  %5480 = bitcast i32 %5479 to float
  %5481 = bitcast float %5473 to i32
  %5482 = sitofp i32 %5481 to float
  %5483 = fadd fast float %5482, 0xC1CFBF8940000000
  %5484 = fmul fast float %5483, %5471
  %5485 = fadd fast float %5484, 0x41CFBF8940000000
  %5486 = fptosi float %5485 to i32
  %5487 = bitcast i32 %5486 to float
  %5488 = fmul fast float %5480, %5470
  %5489 = fmul fast float %5487, %5470
  %5490 = fsub fast float %5473, %5488
  %5491 = fadd fast float %5489, %5473
  %5492 = call float @dx.op.unary.f32(i32 7, float %5490)  ; Saturate(value)
  %5493 = call float @dx.op.unary.f32(i32 7, float %5491)  ; Saturate(value)
  %5494 = fsub fast float %5468, %5492
  %5495 = fsub fast float %5493, %5492
  %5496 = bitcast float %5495 to i32
  %5497 = sub nsw i32 2129859010, %5496
  %5498 = bitcast i32 %5497 to float
  %5499 = fmul fast float %5498, %5494
  %5500 = call float @dx.op.unary.f32(i32 7, float %5499)  ; Saturate(value)
  %5501 = fcmp fast olt float %5500, 0x3F70101020000000
  br i1 %5501, label %5656, label %5502

; <label>:5502                                    ; preds = %5464, %5367
  %5503 = phi float [ %5500, %5464 ], [ %5077, %5367 ]
  %5504 = fmul fast float %5503, %5370
  %5505 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %5506 = extractvalue %dx.types.CBufRet.i32 %5505, 1
  %5507 = extractvalue %dx.types.CBufRet.i32 %5505, 0
  %5508 = add i32 %5507, 0
  %5509 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5508, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5510 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5509, %dx.types.Handle %107, float %5459, float %5460, float undef, float undef, i32 0, i32 0, i32 undef, float %5422, float %5423, float undef, float %5426, float %5427, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5511 = extractvalue %dx.types.ResRet.f32 %5510, 0
  %5512 = extractvalue %dx.types.ResRet.f32 %5510, 1
  %5513 = extractvalue %dx.types.ResRet.f32 %5510, 2
  %5514 = extractvalue %dx.types.ResRet.f32 %5510, 3
  %5515 = and i32 %5506, 255
  %5516 = uitofp i32 %5515 to float
  %5517 = lshr i32 %5506, 8
  %5518 = and i32 %5517, 255
  %5519 = uitofp i32 %5518 to float
  %5520 = fmul fast float %5514, %5516
  %5521 = fadd fast float %5520, %5519
  %5522 = fmul fast float %5521, 0x3F70101000000000
  %5523 = fadd fast float %5522, 0xBFB99999A0000000
  %5524 = call float @dx.op.unary.f32(i32 7, float %5523)  ; Saturate(value)
  %5525 = fmul fast float %5524, 0x3FF1C71C80000000
  %5526 = call float @dx.op.binary.f32(i32 36, float %5522, float 0x3FB99999A0000000)  ; FMin(a,b)
  %5527 = fsub fast float 1.000000e+00, %5525
  %5528 = call float @dx.op.unary.f32(i32 7, float %5527)  ; Saturate(value)
  %5529 = fmul fast float %5528, %5511
  %5530 = fmul fast float %5528, %5512
  %5531 = fmul fast float %5528, %5513
  %5532 = call float @dx.op.unary.f32(i32 7, float %5529)  ; Saturate(value)
  %5533 = call float @dx.op.unary.f32(i32 7, float %5530)  ; Saturate(value)
  %5534 = call float @dx.op.unary.f32(i32 7, float %5531)  ; Saturate(value)
  %5535 = fmul fast float %5525, %5511
  %5536 = fmul fast float %5525, %5512
  %5537 = fmul fast float %5525, %5513
  %5538 = fadd fast float %5535, %5526
  %5539 = fadd fast float %5536, %5526
  %5540 = fadd fast float %5537, %5526
  %5541 = call float @dx.op.unary.f32(i32 7, float %5538)  ; Saturate(value)
  %5542 = call float @dx.op.unary.f32(i32 7, float %5539)  ; Saturate(value)
  %5543 = call float @dx.op.unary.f32(i32 7, float %5540)  ; Saturate(value)
  %5544 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %5545 = extractvalue %dx.types.CBufRet.i32 %5544, 3
  %5546 = extractvalue %dx.types.CBufRet.i32 %5544, 2
  %5547 = add i32 %5546, 0
  %5548 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5547, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5549 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5548, %dx.types.Handle %107, float %5459, float %5460, float undef, float undef, i32 0, i32 0, i32 undef, float %5422, float %5423, float undef, float %5426, float %5427, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5550 = extractvalue %dx.types.ResRet.f32 %5549, 0
  %5551 = extractvalue %dx.types.ResRet.f32 %5549, 1
  %5552 = extractvalue %dx.types.ResRet.f32 %5549, 2
  %5553 = extractvalue %dx.types.ResRet.f32 %5549, 3
  %5554 = and i32 %5545, 255
  %5555 = uitofp i32 %5554 to float
  %5556 = lshr i32 %5545, 8
  %5557 = and i32 %5556, 255
  %5558 = uitofp i32 %5557 to float
  %5559 = lshr i32 %5545, 16
  %5560 = and i32 %5559, 255
  %5561 = uitofp i32 %5560 to float
  %5562 = fmul fast float %5561, 0x3F70101000000000
  %5563 = fmul fast float %5550, %5555
  %5564 = fadd fast float %5563, %5558
  %5565 = fmul fast float %5564, 0x3F70101000000000
  %5566 = fadd fast float %5551, -5.000000e-01
  %5567 = fadd fast float %5553, -5.000000e-01
  %5568 = fmul fast float %5566, %5562
  %5569 = fmul fast float %5567, %5562
  %5570 = fadd fast float %5568, 5.000000e-01
  %5571 = fadd fast float %5569, 5.000000e-01
  %5572 = fmul fast float %5570, 2.000000e+00
  %5573 = fadd fast float %5572, -1.000000e+00
  %5574 = fmul fast float %5571, 2.000000e+00
  %5575 = fadd fast float %5574, -1.000000e+00
  %5576 = fadd fast float %5573, %5575
  %5577 = fmul fast float %5576, 5.000000e-01
  %5578 = fsub fast float %5573, %5575
  %5579 = fmul fast float %5578, 5.000000e-01
  %5580 = call float @dx.op.unary.f32(i32 6, float %5577)  ; FAbs(value)
  %5581 = fsub fast float 1.000000e+00, %5580
  %5582 = call float @dx.op.unary.f32(i32 6, float %5579)  ; FAbs(value)
  %5583 = fsub fast float %5581, %5582
  %5584 = call float @dx.op.dot3.f32(i32 55, float %5577, float %5579, float %5583, float %5577, float %5579, float %5583)  ; Dot3(ax,ay,az,bx,by,bz)
  %5585 = call float @dx.op.unary.f32(i32 25, float %5584)  ; Rsqrt(value)
  %5586 = fmul fast float %5577, %5585
  %5587 = fmul fast float %5579, %5585
  %5588 = select i1 %5415, i32 %5405, i32 %5406
  %5589 = select i1 %5413, i32 %5404, i32 %5588
  %5590 = sitofp i32 %5589 to float
  %5591 = fmul fast float %5583, %5590
  %5592 = fmul fast float %5591, %5585
  %5593 = select i1 %5415, float %5592, float %5587
  %5594 = select i1 %5415, float %5587, float %5592
  %5595 = select i1 %5413, float %5592, float %5586
  %5596 = select i1 %5413, float %5587, float %5593
  %5597 = select i1 %5413, float %5586, float %5594
  %5598 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 375)  ; CBufferLoadLegacy(handle,regIndex)
  %5599 = extractvalue %dx.types.CBufRet.f32 %5598, 0
  %5600 = fptoui float %5599 to i32
  %5601 = add i32 %5600, 0
  %5602 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5601, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5603 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5602, %dx.types.Handle %107, float %5459, float %5460, float undef, float undef, i32 0, i32 0, i32 undef, float %5422, float %5423, float undef, float %5426, float %5427, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5604 = extractvalue %dx.types.ResRet.f32 %5603, 0
  %5605 = fsub fast float %5532, %5359
  %5606 = fsub fast float %5533, %5360
  %5607 = fsub fast float %5534, %5361
  %5608 = fmul fast float %5605, %5504
  %5609 = fmul fast float %5606, %5504
  %5610 = fmul fast float %5607, %5504
  %5611 = fadd fast float %5608, %5359
  %5612 = fadd fast float %5609, %5360
  %5613 = fadd fast float %5610, %5361
  %5614 = fsub fast float %5541, %5356
  %5615 = fsub fast float %5542, %5357
  %5616 = fsub fast float %5543, %5358
  %5617 = fmul fast float %5614, %5504
  %5618 = fmul fast float %5615, %5504
  %5619 = fmul fast float %5616, %5504
  %5620 = fadd fast float %5617, %5356
  %5621 = fadd fast float %5618, %5357
  %5622 = fadd fast float %5619, %5358
  %5623 = fadd fast float %5595, %5362
  %5624 = fadd fast float %5596, %5363
  %5625 = fadd fast float %5597, %5364
  %5626 = call float @dx.op.dot3.f32(i32 55, float %5623, float %5624, float %5625, float %5623, float %5624, float %5625)  ; Dot3(ax,ay,az,bx,by,bz)
  %5627 = call float @dx.op.unary.f32(i32 25, float %5626)  ; Rsqrt(value)
  %5628 = fmul fast float %5627, %5623
  %5629 = fmul fast float %5627, %5624
  %5630 = fmul fast float %5627, %5625
  %5631 = fsub fast float %5628, %5362
  %5632 = fsub fast float %5629, %5363
  %5633 = fsub fast float %5630, %5364
  %5634 = fmul fast float %5631, %5504
  %5635 = fmul fast float %5632, %5504
  %5636 = fmul fast float %5633, %5504
  %5637 = fadd fast float %5634, %5362
  %5638 = fadd fast float %5635, %5363
  %5639 = fadd fast float %5636, %5364
  %5640 = call float @dx.op.binary.f32(i32 36, float %5366, float %5552)  ; FMin(a,b)
  %5641 = fsub fast float %5640, %5366
  %5642 = fmul fast float %5641, %5504
  %5643 = fadd fast float %5642, %5366
  %5644 = fsub fast float %5565, %5365
  %5645 = fmul fast float %5644, %5504
  %5646 = fadd fast float %5645, %5365
  %5647 = fsub fast float %5604, %4808
  %5648 = fsub fast float %5604, %4809
  %5649 = fsub fast float %5604, %4810
  %5650 = fmul fast float %5647, %5504
  %5651 = fmul fast float %5648, %5504
  %5652 = fmul fast float %5649, %5504
  %5653 = fadd fast float %5650, %4808
  %5654 = fadd fast float %5651, %4809
  %5655 = fadd fast float %5652, %4810
  br label %5656

; <label>:5656                                    ; preds = %5502, %5464, %5355, %5069
  %5657 = phi float [ %5620, %5502 ], [ %5356, %5464 ], [ %5356, %5355 ], [ %4764, %5069 ]
  %5658 = phi float [ %5621, %5502 ], [ %5357, %5464 ], [ %5357, %5355 ], [ %4765, %5069 ]
  %5659 = phi float [ %5622, %5502 ], [ %5358, %5464 ], [ %5358, %5355 ], [ %4766, %5069 ]
  %5660 = phi float [ %5611, %5502 ], [ %5359, %5464 ], [ %5359, %5355 ], [ %4804, %5069 ]
  %5661 = phi float [ %5612, %5502 ], [ %5360, %5464 ], [ %5360, %5355 ], [ %4805, %5069 ]
  %5662 = phi float [ %5613, %5502 ], [ %5361, %5464 ], [ %5361, %5355 ], [ %4806, %5069 ]
  %5663 = phi float [ %5653, %5502 ], [ %4808, %5464 ], [ %4808, %5355 ], [ %4808, %5069 ]
  %5664 = phi float [ %5654, %5502 ], [ %4809, %5464 ], [ %4809, %5355 ], [ %4809, %5069 ]
  %5665 = phi float [ %5655, %5502 ], [ %4810, %5464 ], [ %4810, %5355 ], [ %4810, %5069 ]
  %5666 = phi float [ %5637, %5502 ], [ %5362, %5464 ], [ %5362, %5355 ], [ %4700, %5069 ]
  %5667 = phi float [ %5638, %5502 ], [ %5363, %5464 ], [ %5363, %5355 ], [ %4701, %5069 ]
  %5668 = phi float [ %5639, %5502 ], [ %5364, %5464 ], [ %5364, %5355 ], [ %4702, %5069 ]
  %5669 = phi float [ %5646, %5502 ], [ %5365, %5464 ], [ %5365, %5355 ], [ %4767, %5069 ]
  %5670 = phi float [ %5643, %5502 ], [ %5366, %5464 ], [ %5366, %5355 ], [ %4718, %5069 ]
  %5671 = fcmp fast une float %5074, 0.000000e+00
  %5672 = fsub fast float -0.000000e+00, %221
  %5673 = fsub fast float -0.000000e+00, %222
  %5674 = fsub fast float -0.000000e+00, %223
  br i1 %5671, label %5675, label %6029

; <label>:5675                                    ; preds = %5656
  %5676 = call float @dx.op.dot3.f32(i32 55, float %5672, float %5673, float %5674, float %118, float %119, float %120)  ; Dot3(ax,ay,az,bx,by,bz)
  %5677 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %5678 = fmul fast float %5074, 2.500000e+00
  %5679 = call float @dx.op.unary.f32(i32 7, float %5678)  ; Saturate(value)
  %5680 = fmul fast float %5074, 0x4013FFFFE0000000
  %5681 = fadd fast float %5680, 0xBFFFFFFFE0000000
  %5682 = call float @dx.op.unary.f32(i32 7, float %5681)  ; Saturate(value)
  %5683 = fmul fast float %5074, 0x4004000020000000
  %5684 = fadd fast float %5683, 0xBFF8000040000000
  %5685 = call float @dx.op.unary.f32(i32 7, float %5684)  ; Saturate(value)
  %5686 = fmul fast float %4746, 1.000000e+01
  %5687 = call float @dx.op.unary.f32(i32 7, float %5686)  ; Saturate(value)
  %5688 = fmul fast float %5687, 2.000000e+00
  %5689 = fsub fast float 3.000000e+00, %5688
  %5690 = fmul fast float %5687, %5687
  %5691 = fmul fast float %5690, %5689
  %5692 = fsub fast float 1.000000e+00, %5691
  %5693 = fsub fast float 0x3FE3333340000000, %5669
  %5694 = fmul fast float %5693, 0x400AAAAAA0000000
  %5695 = call float @dx.op.unary.f32(i32 7, float %5694)  ; Saturate(value)
  %5696 = fmul fast float %5692, %5695
  %5697 = fmul fast float %5660, 0x3FEA2B8620000000
  %5698 = fmul fast float %5661, 0x3FEA2B8620000000
  %5699 = fmul fast float %5662, 0x3FEA2B8620000000
  %5700 = fadd fast float %5697, 0x3FC81DFBA0000000
  %5701 = fmul fast float %5700, %5660
  %5702 = fadd fast float %5701, 0x3F910E6020000000
  %5703 = fadd fast float %5698, 0x3FC81DFBA0000000
  %5704 = fmul fast float %5703, %5661
  %5705 = fadd fast float %5704, 0x3F910E6020000000
  %5706 = fadd fast float %5699, 0x3FC81DFBA0000000
  %5707 = fmul fast float %5706, %5662
  %5708 = fadd fast float %5707, 0x3F910E6020000000
  %5709 = call float @dx.op.unary.f32(i32 7, float %5702)  ; Saturate(value)
  %5710 = call float @dx.op.unary.f32(i32 7, float %5705)  ; Saturate(value)
  %5711 = call float @dx.op.unary.f32(i32 7, float %5708)  ; Saturate(value)
  %5712 = fsub fast float %5709, %5660
  %5713 = fsub fast float %5710, %5661
  %5714 = fsub fast float %5711, %5662
  %5715 = fmul fast float %5712, %5679
  %5716 = fmul fast float %5715, %5696
  %5717 = fmul fast float %5713, %5679
  %5718 = fmul fast float %5717, %5696
  %5719 = fmul fast float %5714, %5679
  %5720 = fmul fast float %5719, %5696
  %5721 = fadd fast float %5716, %5660
  %5722 = fadd fast float %5718, %5661
  %5723 = fadd fast float %5720, %5662
  %5724 = fmul fast float %5670, %5670
  %5725 = fmul fast float %5724, %5724
  %5726 = fadd fast float %5682, 1.000000e+00
  %5727 = fsub fast float %5726, %5696
  %5728 = call float @dx.op.unary.f32(i32 7, float %5727)  ; Saturate(value)
  %5729 = call float @dx.op.dot3.f32(i32 55, float %118, float %119, float %120, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5730 = call float @dx.op.unary.f32(i32 7, float %5729)  ; Saturate(value)
  %5731 = fsub fast float 1.000000e+00, %5725
  %5732 = call float @dx.op.binary.f32(i32 36, float %5728, float %5731)  ; FMin(a,b)
  %5733 = call float @dx.op.unary.f32(i32 7, float %5685)  ; Saturate(value)
  %5734 = call float @dx.op.binary.f32(i32 35, float %5732, float %5733)  ; FMax(a,b)
  %5735 = fadd fast float %5730, 0xBFE4CCCCC0000000
  %5736 = fmul fast float %5735, 0x4006DB6DA0000000
  %5737 = call float @dx.op.unary.f32(i32 7, float %5736)  ; Saturate(value)
  %5738 = fmul fast float %5737, 2.000000e+00
  %5739 = fsub fast float 3.000000e+00, %5738
  %5740 = bitcast float %5657 to i32
  %5741 = ashr i32 %5740, 1
  %5742 = add nsw i32 %5741, 532487669
  %5743 = bitcast i32 %5742 to float
  %5744 = fsub fast float 1.000000e+00, %5743
  %5745 = bitcast float %5744 to i32
  %5746 = sub nsw i32 2129859010, %5745
  %5747 = bitcast i32 %5746 to float
  %5748 = fmul fast float %5747, 2.000000e+00
  %5749 = bitcast float %5658 to i32
  %5750 = ashr i32 %5749, 1
  %5751 = add nsw i32 %5750, 532487669
  %5752 = bitcast i32 %5751 to float
  %5753 = fsub fast float 1.000000e+00, %5752
  %5754 = bitcast float %5753 to i32
  %5755 = sub nsw i32 2129859010, %5754
  %5756 = bitcast i32 %5755 to float
  %5757 = fmul fast float %5756, 2.000000e+00
  %5758 = bitcast float %5659 to i32
  %5759 = ashr i32 %5758, 1
  %5760 = add nsw i32 %5759, 532487669
  %5761 = bitcast i32 %5760 to float
  %5762 = fsub fast float 1.000000e+00, %5761
  %5763 = bitcast float %5762 to i32
  %5764 = sub nsw i32 2129859010, %5763
  %5765 = bitcast i32 %5764 to float
  %5766 = fmul fast float %5765, 2.000000e+00
  %5767 = fsub fast float 0x4002A9FBE0000000, %5748
  %5768 = fadd fast float %5748, 0x3FD54FDF00000000
  %5769 = bitcast float %5768 to i32
  %5770 = sub nsw i32 2129859010, %5769
  %5771 = bitcast i32 %5770 to float
  %5772 = fmul fast float %5771, %5767
  %5773 = fmul fast float %5772, %5772
  %5774 = fsub fast float 0x4002A9FBE0000000, %5757
  %5775 = fadd fast float %5757, 0x3FD54FDF00000000
  %5776 = bitcast float %5775 to i32
  %5777 = sub nsw i32 2129859010, %5776
  %5778 = bitcast i32 %5777 to float
  %5779 = fmul fast float %5778, %5774
  %5780 = fmul fast float %5779, %5779
  %5781 = fsub fast float 0x4002A9FBE0000000, %5766
  %5782 = fadd fast float %5766, 0x3FD54FDF00000000
  %5783 = bitcast float %5782 to i32
  %5784 = sub nsw i32 2129859010, %5783
  %5785 = bitcast i32 %5784 to float
  %5786 = fmul fast float %5785, %5781
  %5787 = fmul fast float %5786, %5786
  %5788 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5773)  ; FMax(a,b)
  %5789 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5780)  ; FMax(a,b)
  %5790 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5787)  ; FMax(a,b)
  %5791 = fsub fast float 1.000000e+00, %5676
  %5792 = fadd fast float %5791, %5692
  %5793 = call float @dx.op.unary.f32(i32 7, float %5792)  ; Saturate(value)
  %5794 = fsub fast float 1.000000e+00, %4893
  %5795 = fmul fast float %5734, %5794
  %5796 = fmul fast float %5737, %5737
  %5797 = fmul fast float %5796, %5795
  %5798 = fmul fast float %5797, %5739
  %5799 = fmul fast float %5794, 0xBFE99999A0000000
  %5800 = fmul fast float %5799, %5679
  %5801 = fmul fast float %5800, %5696
  %5802 = fadd fast float %5801, 1.000000e+00
  %5803 = fadd fast float %5669, -1.000000e+00
  %5804 = fmul fast float %5802, %5803
  %5805 = fadd fast float %5804, 1.000000e+00
  %5806 = fsub fast float %5788, %5657
  %5807 = fsub fast float %5789, %5658
  %5808 = fsub fast float %5790, %5659
  %5809 = fmul fast float %5798, %5806
  %5810 = fmul fast float %5798, %5807
  %5811 = fmul fast float %5798, %5808
  %5812 = fadd fast float %5809, %5657
  %5813 = fadd fast float %5810, %5658
  %5814 = fadd fast float %5811, %5659
  %5815 = fsub fast float %118, %5666
  %5816 = fsub fast float %119, %5667
  %5817 = fsub fast float %120, %5668
  %5818 = fmul fast float %5798, %5815
  %5819 = fmul fast float %5798, %5816
  %5820 = fmul fast float %5798, %5817
  %5821 = fadd fast float %5818, %5666
  %5822 = fadd fast float %5819, %5667
  %5823 = fadd fast float %5820, %5668
  %5824 = fmul fast float %5798, %5793
  %5825 = call float @dx.op.unary.f32(i32 7, float %5805)  ; Saturate(value)
  %5826 = fsub fast float 1.000000e+00, %5825
  %5827 = fmul fast float %5824, %5826
  %5828 = fadd fast float %5827, %5825
  %5829 = fsub fast float 1.000000e+00, %5670
  %5830 = fmul fast float %5798, %5829
  %5831 = fadd fast float %5830, %5670
  %5832 = fcmp fast une float %5075, 0.000000e+00
  %5833 = fcmp fast ogt float %5730, 0x3FE4CCCCC0000000
  %5834 = and i1 %5832, %5833
  br i1 %5834, label %5835, label %6021

; <label>:5835                                    ; preds = %5675
  %5836 = extractvalue %dx.types.CBufRet.f32 %5677, 1
  %5837 = fadd fast float %5836, %191
  %5838 = extractvalue %dx.types.CBufRet.f32 %5677, 0
  %5839 = fadd fast float %5838, %190
  %5840 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %5841 = extractvalue %dx.types.CBufRet.f32 %5840, 3
  %5842 = fadd fast float %5841, 0x3FC0A3D700000000
  %5843 = fmul fast float %5842, 0x3FF6666660000000
  %5844 = fmul fast float %5841, 0x3FF2978D40000000
  %5845 = fmul fast float %5841, 0x3FF5BA5E40000000
  %5846 = fmul fast float %5841, 0x3FF94FDF40000000
  %5847 = call float @dx.op.unary.f32(i32 6, float %5839)  ; FAbs(value)
  %5848 = call float @dx.op.unary.f32(i32 6, float %5837)  ; FAbs(value)
  %5849 = fmul fast float %5847, 0x3F8EB851E0000000
  %5850 = fmul fast float %5848, 0x3F8EB851E0000000
  %5851 = fmul fast float %5075, 4.000000e+00
  %5852 = call float @dx.op.unary.f32(i32 7, float %5851)  ; Saturate(value)
  %5853 = fadd fast float %5849, 2.500000e-01
  %5854 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %44, float %5853, float %5850, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5855 = extractvalue %dx.types.ResRet.f32 %5854, 0
  %5856 = extractvalue %dx.types.ResRet.f32 %5854, 1
  %5857 = extractvalue %dx.types.ResRet.f32 %5854, 2
  %5858 = extractvalue %dx.types.ResRet.f32 %5854, 3
  %5859 = fmul fast float %5856, 2.000000e+00
  %5860 = fmul fast float %5857, 2.000000e+00
  %5861 = fadd fast float %5859, -1.000000e+00
  %5862 = fadd fast float %5860, -1.000000e+00
  %5863 = fsub fast float 1.000000e+00, %5852
  %5864 = fmul fast float %5863, 8.000000e+00
  %5865 = call float @dx.op.unary.f32(i32 21, float %5864)  ; Exp(value)
  %5866 = fmul fast float %5858, %5865
  %5867 = fadd fast float %5843, -1.000000e+00
  %5868 = fadd fast float %5867, %5858
  %5869 = fadd fast float %5868, %5866
  %5870 = frem fast float %5869, %5865
  %5871 = fcmp fast ole float %5870, 1.000000e+00
  %5872 = call float @dx.op.unary.f32(i32 22, float %5870)  ; Frc(value)
  %5873 = select i1 %5871, float %5872, float 0.000000e+00
  %5874 = fadd fast float %5855, -1.000000e+00
  %5875 = fadd fast float %5874, %5873
  %5876 = fsub fast float 1.000000e+00, %5873
  %5877 = call float @dx.op.unary.f32(i32 7, float %5876)  ; Saturate(value)
  %5878 = fmul fast float %5877, %5855
  %5879 = fmul fast float %5875, 8.000000e+00
  %5880 = call float @dx.op.binary.f32(i32 35, float %5879, float 0.000000e+00)  ; FMax(a,b)
  %5881 = call float @dx.op.binary.f32(i32 36, float %5880, float 4.000000e+00)  ; FMin(a,b)
  %5882 = fmul fast float %5881, 0x400921FB60000000
  %5883 = call float @dx.op.unary.f32(i32 13, float %5882)  ; Sin(value)
  %5884 = fadd fast float %5873, -1.000000e+00
  %5885 = fmul fast float %5878, %5884
  %5886 = fmul fast float %5885, %5883
  %5887 = fmul fast float %5886, %5861
  %5888 = fmul fast float %5886, %5862
  %5889 = fadd fast float %5851, -1.000000e+00
  %5890 = call float @dx.op.unary.f32(i32 7, float %5889)  ; Saturate(value)
  %5891 = fadd fast float %5849, 0xBFE19999A0000000
  %5892 = fadd fast float %5850, 0x3FD3D70A40000000
  %5893 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %44, float %5891, float %5892, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5894 = extractvalue %dx.types.ResRet.f32 %5893, 0
  %5895 = extractvalue %dx.types.ResRet.f32 %5893, 1
  %5896 = extractvalue %dx.types.ResRet.f32 %5893, 2
  %5897 = extractvalue %dx.types.ResRet.f32 %5893, 3
  %5898 = fmul fast float %5895, 2.000000e+00
  %5899 = fmul fast float %5896, 2.000000e+00
  %5900 = fadd fast float %5898, -1.000000e+00
  %5901 = fadd fast float %5899, -1.000000e+00
  %5902 = fsub fast float 1.000000e+00, %5890
  %5903 = fmul fast float %5902, 8.000000e+00
  %5904 = call float @dx.op.unary.f32(i32 21, float %5903)  ; Exp(value)
  %5905 = fmul fast float %5897, %5904
  %5906 = fadd fast float %5844, 0xBFE5B22D00000000
  %5907 = fadd fast float %5906, %5897
  %5908 = fadd fast float %5907, %5905
  %5909 = frem fast float %5908, %5904
  %5910 = fcmp fast ole float %5909, 1.000000e+00
  %5911 = call float @dx.op.unary.f32(i32 22, float %5909)  ; Frc(value)
  %5912 = select i1 %5910, float %5911, float 0.000000e+00
  %5913 = fadd fast float %5894, -1.000000e+00
  %5914 = fadd fast float %5913, %5912
  %5915 = fsub fast float 1.000000e+00, %5912
  %5916 = call float @dx.op.unary.f32(i32 7, float %5915)  ; Saturate(value)
  %5917 = fmul fast float %5916, %5894
  %5918 = fmul fast float %5914, 8.000000e+00
  %5919 = call float @dx.op.binary.f32(i32 35, float %5918, float 0.000000e+00)  ; FMax(a,b)
  %5920 = call float @dx.op.binary.f32(i32 36, float %5919, float 4.000000e+00)  ; FMin(a,b)
  %5921 = fmul fast float %5920, 0x400921FB60000000
  %5922 = call float @dx.op.unary.f32(i32 13, float %5921)  ; Sin(value)
  %5923 = fadd fast float %5912, -1.000000e+00
  %5924 = fmul fast float %5917, %5923
  %5925 = fmul fast float %5924, %5922
  %5926 = fmul fast float %5925, %5900
  %5927 = fmul fast float %5925, %5901
  %5928 = fadd fast float %5851, -2.000000e+00
  %5929 = call float @dx.op.unary.f32(i32 7, float %5928)  ; Saturate(value)
  %5930 = fadd fast float %5849, 0x3FE3333340000000
  %5931 = fadd fast float %5850, 0x3FEB333340000000
  %5932 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %44, float %5930, float %5931, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5933 = extractvalue %dx.types.ResRet.f32 %5932, 0
  %5934 = extractvalue %dx.types.ResRet.f32 %5932, 1
  %5935 = extractvalue %dx.types.ResRet.f32 %5932, 2
  %5936 = extractvalue %dx.types.ResRet.f32 %5932, 3
  %5937 = fmul fast float %5934, 2.000000e+00
  %5938 = fmul fast float %5935, 2.000000e+00
  %5939 = fadd fast float %5937, -1.000000e+00
  %5940 = fadd fast float %5938, -1.000000e+00
  %5941 = fsub fast float 1.000000e+00, %5929
  %5942 = fmul fast float %5941, 8.000000e+00
  %5943 = call float @dx.op.unary.f32(i32 21, float %5942)  ; Exp(value)
  %5944 = fmul fast float %5936, %5943
  %5945 = fadd fast float %5845, 0xBFD5E35400000000
  %5946 = fadd fast float %5945, %5936
  %5947 = fadd fast float %5946, %5944
  %5948 = frem fast float %5947, %5943
  %5949 = fcmp fast ole float %5948, 1.000000e+00
  %5950 = call float @dx.op.unary.f32(i32 22, float %5948)  ; Frc(value)
  %5951 = select i1 %5949, float %5950, float 0.000000e+00
  %5952 = fadd fast float %5933, -1.000000e+00
  %5953 = fadd fast float %5952, %5951
  %5954 = fsub fast float 1.000000e+00, %5951
  %5955 = call float @dx.op.unary.f32(i32 7, float %5954)  ; Saturate(value)
  %5956 = fmul fast float %5955, %5933
  %5957 = fmul fast float %5953, 8.000000e+00
  %5958 = call float @dx.op.binary.f32(i32 35, float %5957, float 0.000000e+00)  ; FMax(a,b)
  %5959 = call float @dx.op.binary.f32(i32 36, float %5958, float 4.000000e+00)  ; FMin(a,b)
  %5960 = fmul fast float %5959, 0x400921FB60000000
  %5961 = call float @dx.op.unary.f32(i32 13, float %5960)  ; Sin(value)
  %5962 = fadd fast float %5951, -1.000000e+00
  %5963 = fmul fast float %5956, %5962
  %5964 = fmul fast float %5963, %5961
  %5965 = fmul fast float %5964, %5939
  %5966 = fmul fast float %5964, %5940
  %5967 = fadd fast float %5851, -3.000000e+00
  %5968 = call float @dx.op.unary.f32(i32 7, float %5967)  ; Saturate(value)
  %5969 = fadd fast float %5849, 5.000000e-01
  %5970 = fadd fast float %5850, -7.500000e-01
  %5971 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %44, float %5969, float %5970, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5972 = extractvalue %dx.types.ResRet.f32 %5971, 0
  %5973 = extractvalue %dx.types.ResRet.f32 %5971, 1
  %5974 = extractvalue %dx.types.ResRet.f32 %5971, 2
  %5975 = extractvalue %dx.types.ResRet.f32 %5971, 3
  %5976 = fmul fast float %5973, 2.000000e+00
  %5977 = fmul fast float %5974, 2.000000e+00
  %5978 = fadd fast float %5976, -1.000000e+00
  %5979 = fadd fast float %5977, -1.000000e+00
  %5980 = fsub fast float 1.000000e+00, %5968
  %5981 = fmul fast float %5980, 8.000000e+00
  %5982 = call float @dx.op.unary.f32(i32 21, float %5981)  ; Exp(value)
  %5983 = fmul fast float %5975, %5982
  %5984 = fadd fast float %5846, 0xBF78938000000000
  %5985 = fadd fast float %5984, %5975
  %5986 = fadd fast float %5985, %5983
  %5987 = frem fast float %5986, %5982
  %5988 = fcmp fast ole float %5987, 1.000000e+00
  %5989 = call float @dx.op.unary.f32(i32 22, float %5987)  ; Frc(value)
  %5990 = select i1 %5988, float %5989, float 0.000000e+00
  %5991 = fadd fast float %5972, -1.000000e+00
  %5992 = fadd fast float %5991, %5990
  %5993 = fsub fast float 1.000000e+00, %5990
  %5994 = call float @dx.op.unary.f32(i32 7, float %5993)  ; Saturate(value)
  %5995 = fmul fast float %5994, %5972
  %5996 = fmul fast float %5992, 8.000000e+00
  %5997 = call float @dx.op.binary.f32(i32 35, float %5996, float 0.000000e+00)  ; FMax(a,b)
  %5998 = call float @dx.op.binary.f32(i32 36, float %5997, float 4.000000e+00)  ; FMin(a,b)
  %5999 = fmul fast float %5998, 0x400921FB60000000
  %6000 = call float @dx.op.unary.f32(i32 13, float %5999)  ; Sin(value)
  %6001 = fadd fast float %5990, -1.000000e+00
  %6002 = fmul fast float %5995, %6001
  %6003 = fmul fast float %6002, %6000
  %6004 = fmul fast float %6003, %5978
  %6005 = fmul fast float %6003, %5979
  %6006 = fadd fast float %5926, %5887
  %6007 = fadd fast float %5927, %5888
  %6008 = fadd fast float %6006, %5965
  %6009 = fadd fast float %6007, %5966
  %6010 = fadd fast float %6008, %6004
  %6011 = fadd fast float %6009, %6005
  %6012 = fmul fast float %5730, 0x4006DB6DA0000000
  %6013 = fadd fast float %6012, 0xBFFDB6DB40000000
  %6014 = call float @dx.op.unary.f32(i32 7, float %6013)  ; Saturate(value)
  %6015 = fmul fast float %6014, %5679
  %6016 = fmul fast float %6015, %5794
  %6017 = fmul fast float %6016, %6010
  %6018 = fmul fast float %6016, %6011
  %6019 = fadd fast float %6017, %5821
  %6020 = fadd fast float %6018, %5822
  br label %6021

; <label>:6021                                    ; preds = %5835, %5675
  %6022 = phi float [ %5821, %5675 ], [ %6019, %5835 ]
  %6023 = phi float [ %5822, %5675 ], [ %6020, %5835 ]
  %6024 = call float @dx.op.dot3.f32(i32 55, float %6022, float %6023, float %5823, float %6022, float %6023, float %5823)  ; Dot3(ax,ay,az,bx,by,bz)
  %6025 = call float @dx.op.unary.f32(i32 25, float %6024)  ; Rsqrt(value)
  %6026 = fmul fast float %6025, %6022
  %6027 = fmul fast float %6025, %6023
  %6028 = fmul fast float %6025, %5823
  br label %6029

; <label>:6029                                    ; preds = %6021, %5656
  %6030 = phi float [ %5812, %6021 ], [ %5657, %5656 ]
  %6031 = phi float [ %5813, %6021 ], [ %5658, %5656 ]
  %6032 = phi float [ %5814, %6021 ], [ %5659, %5656 ]
  %6033 = phi float [ %5721, %6021 ], [ %5660, %5656 ]
  %6034 = phi float [ %5722, %6021 ], [ %5661, %5656 ]
  %6035 = phi float [ %5723, %6021 ], [ %5662, %5656 ]
  %6036 = phi float [ %6026, %6021 ], [ %5666, %5656 ]
  %6037 = phi float [ %6027, %6021 ], [ %5667, %5656 ]
  %6038 = phi float [ %6028, %6021 ], [ %5668, %5656 ]
  %6039 = phi float [ %5828, %6021 ], [ %5669, %5656 ]
  %6040 = phi float [ %5831, %6021 ], [ %5670, %5656 ]
  %6041 = select i1 %294, float 0.000000e+00, float %6032
  %6042 = call float @dx.op.dot3.f32(i32 55, float %6036, float %6037, float %6038, float %5672, float %5673, float %5674)  ; Dot3(ax,ay,az,bx,by,bz)
  %6043 = call float @dx.op.unary.f32(i32 7, float %6042)  ; Saturate(value)
  %6044 = call float @dx.op.dot3.f32(i32 55, float %221, float %222, float %223, float %6036, float %6037, float %6038)  ; Dot3(ax,ay,az,bx,by,bz)
  %6045 = fmul fast float %6044, 2.000000e+00
  %6046 = fmul fast float %6045, %6036
  %6047 = fmul fast float %6045, %6037
  %6048 = fmul fast float %6045, %6038
  %6049 = fsub fast float %221, %6046
  %6050 = fsub fast float %222, %6047
  %6051 = fsub fast float %223, %6048
  %6052 = call float @dx.op.binary.f32(i32 36, float %6040, float 1.000000e+00)  ; FMin(a,b)
  %6053 = fsub fast float 1.000000e+00, %6052
  %6054 = bitcast float %6053 to i32
  %6055 = ashr i32 %6054, 1
  %6056 = add nsw i32 %6055, 532487669
  %6057 = bitcast i32 %6056 to float
  %6058 = fsub fast float 1.000000e+00, %6039
  %6059 = call float @dx.op.binary.f32(i32 35, float %6058, float 0x3F847AE140000000)  ; FMax(a,b)
  %6060 = fmul fast float %6059, %6059
  %6061 = fmul fast float %6060, %6060
  %6062 = call float @dx.op.unary.f32(i32 7, float %6043)  ; Saturate(value)
  %6063 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %45, float %6057, float %6061, float %6062, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6064 = extractvalue %dx.types.ResRet.f32 %6063, 0
  %6065 = fsub fast float 1.000000e+00, %6040
  %6066 = bitcast float %6065 to i32
  %6067 = sub nsw i32 2129859010, %6066
  %6068 = bitcast i32 %6067 to float
  %6069 = call float @dx.op.dot3.f32(i32 55, float %78, float %74, float %70, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6070 = fmul fast float %6069, 0x3FD20DD760000000
  %6071 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %78)  ; FMax(a,b)
  %6072 = call float @dx.op.dot3.f32(i32 55, float %79, float %80, float %81, float %79, float %80, float %81)  ; Dot3(ax,ay,az,bx,by,bz)
  %6073 = fcmp fast oeq float %6072, 0.000000e+00
  %6074 = fcmp fast oeq float %6071, 0.000000e+00
  %6075 = or i1 %6074, %6073
  br i1 %6075, label %6105, label %6076

; <label>:6076                                    ; preds = %6029
  %6077 = fsub fast float -0.000000e+00, %81
  %6078 = fsub fast float -0.000000e+00, %79
  %6079 = call float @dx.op.unary.f32(i32 24, float %6072)  ; Sqrt(value)
  %6080 = fdiv fast float %6079, %6071
  %6081 = fcmp fast ogt float %6080, 0x3FFB6F8900000000
  %6082 = select i1 %6081, float 0x3FFB6F8900000000, float %6080
  %6083 = fmul fast float %6082, 0x3FE8A23460000000
  %6084 = call float @dx.op.unary.f32(i32 7, float %6083)  ; Saturate(value)
  %6085 = call float @dx.op.binary.f32(i32 35, float %6082, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %6086 = fmul fast float %6084, %6071
  %6087 = fmul fast float %6085, 0x3FF279A740000000
  %6088 = fadd fast float %6087, -1.000000e+00
  %6089 = call float @dx.op.dot3.f32(i32 55, float %6077, float %6078, float %80, float %6077, float %6078, float %80)  ; Dot3(ax,ay,az,bx,by,bz)
  %6090 = call float @dx.op.unary.f32(i32 25, float %6089)  ; Rsqrt(value)
  %6091 = fmul fast float %6090, %6077
  %6092 = fmul fast float %6090, %6078
  %6093 = fmul fast float %6090, %80
  %6094 = fmul fast float %6088, %6088
  %6095 = fsub fast float 1.000000e+00, %6094
  %6096 = fmul fast float %6085, 0x40005F8BE0000000
  %6097 = fsub fast float 0x400C5BF8A0000000, %6096
  %6098 = fdiv fast float %6086, %6097
  %6099 = fmul fast float %6098, 0x3FEE31C3C0000000
  %6100 = fmul fast float %6099, %6095
  %6101 = fmul fast float %6085, 0x3FDACB7480000000
  %6102 = fadd fast float %6101, 0xBFD7347680000000
  %6103 = fmul fast float %6102, %6098
  %6104 = fmul fast float %6103, %6095
  br label %6105

; <label>:6105                                    ; preds = %6076, %6029
  %6106 = phi float [ %6091, %6076 ], [ 0.000000e+00, %6029 ]
  %6107 = phi float [ %6092, %6076 ], [ 0.000000e+00, %6029 ]
  %6108 = phi float [ %6093, %6076 ], [ 0.000000e+00, %6029 ]
  %6109 = phi float [ %6100, %6076 ], [ 0.000000e+00, %6029 ]
  %6110 = phi float [ %6104, %6076 ], [ 0.000000e+00, %6029 ]
  %6111 = call float @dx.op.dot3.f32(i32 55, float %6106, float %6107, float %6108, float %6036, float %6037, float %6038)  ; Dot3(ax,ay,az,bx,by,bz)
  %6112 = fmul fast float %6111, 0x3FDF454380000000
  %6113 = fmul fast float %6111, %6111
  %6114 = fmul fast float %6113, 0x3FEE471020000000
  %6115 = fadd fast float %6114, 0xBFD42F6020000000
  %6116 = fmul fast float %6071, 0x3FD20DD760000000
  %6117 = fmul fast float %6115, %6110
  %6118 = fadd fast float %6117, %6116
  %6119 = fmul fast float %6112, %6109
  %6120 = fadd fast float %6118, %6119
  %6121 = fsub fast float %6118, %6119
  %6122 = call float @dx.op.dot3.f32(i32 55, float %6106, float %6107, float %6108, float %6049, float %6050, float %6051)  ; Dot3(ax,ay,az,bx,by,bz)
  %6123 = fmul fast float %6122, 0x3FDF454380000000
  %6124 = fmul fast float %6122, %6122
  %6125 = fmul fast float %6124, 0x3FEE471020000000
  %6126 = fadd fast float %6125, 0xBFD42F6020000000
  %6127 = call float @dx.op.dot3.f32(i32 55, float %6071, float %6109, float %6110, float 0x3FD20DD760000000, float %6123, float %6126)  ; Dot3(ax,ay,az,bx,by,bz)
  %6128 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %74)  ; FMax(a,b)
  %6129 = call float @dx.op.dot3.f32(i32 55, float %75, float %76, float %77, float %75, float %76, float %77)  ; Dot3(ax,ay,az,bx,by,bz)
  %6130 = fcmp fast oeq float %6129, 0.000000e+00
  %6131 = fcmp fast oeq float %6128, 0.000000e+00
  %6132 = or i1 %6131, %6130
  br i1 %6132, label %6162, label %6133

; <label>:6133                                    ; preds = %6105
  %6134 = fsub fast float -0.000000e+00, %77
  %6135 = fsub fast float -0.000000e+00, %75
  %6136 = call float @dx.op.unary.f32(i32 24, float %6129)  ; Sqrt(value)
  %6137 = fdiv fast float %6136, %6128
  %6138 = fcmp fast ogt float %6137, 0x3FFB6F8900000000
  %6139 = select i1 %6138, float 0x3FFB6F8900000000, float %6137
  %6140 = fmul fast float %6139, 0x3FE8A23460000000
  %6141 = call float @dx.op.unary.f32(i32 7, float %6140)  ; Saturate(value)
  %6142 = call float @dx.op.binary.f32(i32 35, float %6139, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %6143 = fmul fast float %6141, %6128
  %6144 = fmul fast float %6142, 0x3FF279A740000000
  %6145 = fadd fast float %6144, -1.000000e+00
  %6146 = call float @dx.op.dot3.f32(i32 55, float %6134, float %6135, float %76, float %6134, float %6135, float %76)  ; Dot3(ax,ay,az,bx,by,bz)
  %6147 = call float @dx.op.unary.f32(i32 25, float %6146)  ; Rsqrt(value)
  %6148 = fmul fast float %6147, %6134
  %6149 = fmul fast float %6147, %6135
  %6150 = fmul fast float %6147, %76
  %6151 = fmul fast float %6145, %6145
  %6152 = fsub fast float 1.000000e+00, %6151
  %6153 = fmul fast float %6142, 0x40005F8BE0000000
  %6154 = fsub fast float 0x400C5BF8A0000000, %6153
  %6155 = fdiv fast float %6143, %6154
  %6156 = fmul fast float %6155, 0x3FEE31C3C0000000
  %6157 = fmul fast float %6156, %6152
  %6158 = fmul fast float %6142, 0x3FDACB7480000000
  %6159 = fadd fast float %6158, 0xBFD7347680000000
  %6160 = fmul fast float %6159, %6155
  %6161 = fmul fast float %6160, %6152
  br label %6162

; <label>:6162                                    ; preds = %6133, %6105
  %6163 = phi float [ %6148, %6133 ], [ 0.000000e+00, %6105 ]
  %6164 = phi float [ %6149, %6133 ], [ 0.000000e+00, %6105 ]
  %6165 = phi float [ %6150, %6133 ], [ 0.000000e+00, %6105 ]
  %6166 = phi float [ %6157, %6133 ], [ 0.000000e+00, %6105 ]
  %6167 = phi float [ %6161, %6133 ], [ 0.000000e+00, %6105 ]
  %6168 = call float @dx.op.dot3.f32(i32 55, float %6163, float %6164, float %6165, float %6036, float %6037, float %6038)  ; Dot3(ax,ay,az,bx,by,bz)
  %6169 = fmul fast float %6168, 0x3FDF454380000000
  %6170 = fmul fast float %6168, %6168
  %6171 = fmul fast float %6170, 0x3FEE471020000000
  %6172 = fadd fast float %6171, 0xBFD42F6020000000
  %6173 = fmul fast float %6128, 0x3FD20DD760000000
  %6174 = fmul fast float %6172, %6167
  %6175 = fadd fast float %6174, %6173
  %6176 = fmul fast float %6169, %6166
  %6177 = fadd fast float %6175, %6176
  %6178 = fsub fast float %6175, %6176
  %6179 = call float @dx.op.dot3.f32(i32 55, float %6163, float %6164, float %6165, float %6049, float %6050, float %6051)  ; Dot3(ax,ay,az,bx,by,bz)
  %6180 = fmul fast float %6179, 0x3FDF454380000000
  %6181 = fmul fast float %6179, %6179
  %6182 = fmul fast float %6181, 0x3FEE471020000000
  %6183 = fadd fast float %6182, 0xBFD42F6020000000
  %6184 = call float @dx.op.dot3.f32(i32 55, float %6128, float %6166, float %6167, float 0x3FD20DD760000000, float %6180, float %6183)  ; Dot3(ax,ay,az,bx,by,bz)
  %6185 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %70)  ; FMax(a,b)
  %6186 = call float @dx.op.dot3.f32(i32 55, float %71, float %72, float %73, float %71, float %72, float %73)  ; Dot3(ax,ay,az,bx,by,bz)
  %6187 = fcmp fast oeq float %6186, 0.000000e+00
  %6188 = fcmp fast oeq float %6185, 0.000000e+00
  %6189 = or i1 %6188, %6187
  br i1 %6189, label %6219, label %6190

; <label>:6190                                    ; preds = %6162
  %6191 = fsub fast float -0.000000e+00, %73
  %6192 = fsub fast float -0.000000e+00, %71
  %6193 = call float @dx.op.unary.f32(i32 24, float %6186)  ; Sqrt(value)
  %6194 = fdiv fast float %6193, %6185
  %6195 = fcmp fast ogt float %6194, 0x3FFB6F8900000000
  %6196 = select i1 %6195, float 0x3FFB6F8900000000, float %6194
  %6197 = fmul fast float %6196, 0x3FE8A23460000000
  %6198 = call float @dx.op.unary.f32(i32 7, float %6197)  ; Saturate(value)
  %6199 = call float @dx.op.binary.f32(i32 35, float %6196, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %6200 = fmul fast float %6198, %6185
  %6201 = fmul fast float %6199, 0x3FF279A740000000
  %6202 = fadd fast float %6201, -1.000000e+00
  %6203 = call float @dx.op.dot3.f32(i32 55, float %6191, float %6192, float %72, float %6191, float %6192, float %72)  ; Dot3(ax,ay,az,bx,by,bz)
  %6204 = call float @dx.op.unary.f32(i32 25, float %6203)  ; Rsqrt(value)
  %6205 = fmul fast float %6204, %6191
  %6206 = fmul fast float %6204, %6192
  %6207 = fmul fast float %6204, %72
  %6208 = fmul fast float %6202, %6202
  %6209 = fsub fast float 1.000000e+00, %6208
  %6210 = fmul fast float %6199, 0x40005F8BE0000000
  %6211 = fsub fast float 0x400C5BF8A0000000, %6210
  %6212 = fdiv fast float %6200, %6211
  %6213 = fmul fast float %6212, 0x3FEE31C3C0000000
  %6214 = fmul fast float %6213, %6209
  %6215 = fmul fast float %6199, 0x3FDACB7480000000
  %6216 = fadd fast float %6215, 0xBFD7347680000000
  %6217 = fmul fast float %6216, %6212
  %6218 = fmul fast float %6217, %6209
  br label %6219

; <label>:6219                                    ; preds = %6190, %6162
  %6220 = phi float [ %6205, %6190 ], [ 0.000000e+00, %6162 ]
  %6221 = phi float [ %6206, %6190 ], [ 0.000000e+00, %6162 ]
  %6222 = phi float [ %6207, %6190 ], [ 0.000000e+00, %6162 ]
  %6223 = phi float [ %6214, %6190 ], [ 0.000000e+00, %6162 ]
  %6224 = phi float [ %6218, %6190 ], [ 0.000000e+00, %6162 ]
  %6225 = call float @dx.op.dot3.f32(i32 55, float %6220, float %6221, float %6222, float %6036, float %6037, float %6038)  ; Dot3(ax,ay,az,bx,by,bz)
  %6226 = fmul fast float %6225, 0x3FDF454380000000
  %6227 = fmul fast float %6225, %6225
  %6228 = fmul fast float %6227, 0x3FEE471020000000
  %6229 = fadd fast float %6228, 0xBFD42F6020000000
  %6230 = fmul fast float %6185, 0x3FD20DD760000000
  %6231 = fmul fast float %6229, %6224
  %6232 = fadd fast float %6231, %6230
  %6233 = fmul fast float %6226, %6223
  %6234 = fadd fast float %6232, %6233
  %6235 = fsub fast float %6232, %6233
  %6236 = call float @dx.op.dot3.f32(i32 55, float %6220, float %6221, float %6222, float %6049, float %6050, float %6051)  ; Dot3(ax,ay,az,bx,by,bz)
  %6237 = fmul fast float %6236, 0x3FDF454380000000
  %6238 = fmul fast float %6236, %6236
  %6239 = fmul fast float %6238, 0x3FEE471020000000
  %6240 = fadd fast float %6239, 0xBFD42F6020000000
  %6241 = call float @dx.op.dot3.f32(i32 55, float %6185, float %6223, float %6224, float 0x3FD20DD760000000, float %6237, float %6240)  ; Dot3(ax,ay,az,bx,by,bz)
  %6242 = call float @dx.op.binary.f32(i32 35, float %6120, float 0.000000e+00)  ; FMax(a,b)
  %6243 = call float @dx.op.binary.f32(i32 35, float %6177, float 0.000000e+00)  ; FMax(a,b)
  %6244 = call float @dx.op.binary.f32(i32 35, float %6234, float 0.000000e+00)  ; FMax(a,b)
  %6245 = call float @dx.op.binary.f32(i32 35, float %6121, float 0.000000e+00)  ; FMax(a,b)
  %6246 = call float @dx.op.binary.f32(i32 35, float %6178, float 0.000000e+00)  ; FMax(a,b)
  %6247 = call float @dx.op.binary.f32(i32 35, float %6235, float 0.000000e+00)  ; FMax(a,b)
  %6248 = call float @dx.op.binary.f32(i32 35, float %6127, float 0.000000e+00)  ; FMax(a,b)
  %6249 = call float @dx.op.binary.f32(i32 35, float %6184, float 0.000000e+00)  ; FMax(a,b)
  %6250 = call float @dx.op.binary.f32(i32 35, float %6241, float 0.000000e+00)  ; FMax(a,b)
  %6251 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %6252 = extractvalue %dx.types.CBufRet.f32 %6251, 0
  %6253 = call float @dx.op.binary.f32(i32 36, float %6033, float %6252)  ; FMin(a,b)
  %6254 = fmul fast float %6253, %6053
  %6255 = fsub fast float 1.000000e+00, %6254
  %6256 = bitcast float %6255 to i32
  %6257 = sub nsw i32 2129859010, %6256
  %6258 = bitcast i32 %6257 to float
  %6259 = call float @dx.op.binary.f32(i32 36, float %6034, float %6252)  ; FMin(a,b)
  %6260 = fmul fast float %6259, %6053
  %6261 = fsub fast float 1.000000e+00, %6260
  %6262 = bitcast float %6261 to i32
  %6263 = sub nsw i32 2129859010, %6262
  %6264 = bitcast i32 %6263 to float
  %6265 = call float @dx.op.binary.f32(i32 36, float %6035, float %6252)  ; FMin(a,b)
  %6266 = fmul fast float %6265, %6053
  %6267 = fsub fast float 1.000000e+00, %6266
  %6268 = bitcast float %6267 to i32
  %6269 = sub nsw i32 2129859010, %6268
  %6270 = bitcast i32 %6269 to float
  %6271 = fmul fast float %6242, %6052
  %6272 = fmul fast float %6271, %6258
  %6273 = fmul fast float %6243, %6052
  %6274 = fmul fast float %6273, %6264
  %6275 = fmul fast float %6244, %6052
  %6276 = fmul fast float %6275, %6270
  %6277 = call float @dx.op.binary.f32(i32 36, float %6030, float %6252)  ; FMin(a,b)
  %6278 = fmul fast float %6277, %6053
  %6279 = fsub fast float 1.000000e+00, %6278
  %6280 = bitcast float %6279 to i32
  %6281 = sub nsw i32 2129859010, %6280
  %6282 = bitcast i32 %6281 to float
  %6283 = call float @dx.op.binary.f32(i32 36, float %6031, float %6252)  ; FMin(a,b)
  %6284 = fmul fast float %6283, %6053
  %6285 = fsub fast float 1.000000e+00, %6284
  %6286 = bitcast float %6285 to i32
  %6287 = sub nsw i32 2129859010, %6286
  %6288 = bitcast i32 %6287 to float
  %6289 = call float @dx.op.binary.f32(i32 36, float %6041, float %6252)  ; FMin(a,b)
  %6290 = fmul fast float %6289, %6053
  %6291 = fsub fast float 1.000000e+00, %6290
  %6292 = bitcast float %6291 to i32
  %6293 = sub nsw i32 2129859010, %6292
  %6294 = bitcast i32 %6293 to float
  %6295 = fmul fast float %6248, %6052
  %6296 = fmul fast float %6295, %6282
  %6297 = fmul fast float %6249, %6052
  %6298 = fmul fast float %6297, %6288
  %6299 = fmul fast float %6250, %6052
  %6300 = fmul fast float %6299, %6294
  %6301 = call float @dx.op.dot3.f32(i32 55, float %6272, float %6274, float %6276, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6302 = select i1 %294, float 0.000000e+00, float %6272
  %6303 = select i1 %294, float %6301, float %6274
  %6304 = select i1 %294, float 0.000000e+00, float %6276
  %6305 = call float @dx.op.dot3.f32(i32 55, float %6245, float %6246, float %6247, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6306 = select i1 %294, float 0.000000e+00, float %6245
  %6307 = select i1 %294, float %6305, float %6246
  %6308 = select i1 %294, float 0.000000e+00, float %6247
  %6309 = call float @dx.op.dot3.f32(i32 55, float %6296, float %6298, float %6300, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6310 = select i1 %294, float 0.000000e+00, float %6296
  %6311 = select i1 %294, float %6309, float %6298
  %6312 = select i1 %294, float 0.000000e+00, float %6300
  %6313 = fmul fast float %4035, %4035
  %6314 = call float @dx.op.unary.f32(i32 7, float %6313)  ; Saturate(value)
  %6315 = fmul fast float %6043, 9.843750e-01
  %6316 = fmul fast float %6039, 9.843750e-01
  %6317 = fadd fast float %6315, 7.812500e-03
  %6318 = fadd fast float %6316, 7.812500e-03
  %6319 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %38, %dx.types.Handle %45, float %6317, float %6318, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6320 = extractvalue %dx.types.ResRet.f32 %6319, 0
  %6321 = extractvalue %dx.types.ResRet.f32 %6319, 1
  %6322 = extractvalue %dx.types.ResRet.f32 %6319, 2
  %6323 = extractvalue %dx.types.ResRet.f32 %6319, 3
  %6324 = fsub fast float 1.000000e+00, %6314
  %6325 = fsub fast float %6322, %6320
  %6326 = fsub fast float %6323, %6321
  %6327 = fmul fast float %6325, %6324
  %6328 = fmul fast float %6326, %6324
  %6329 = fadd fast float %6327, %6320
  %6330 = fadd fast float %6328, %6321
  %6331 = fmul fast float %6329, %6030
  %6332 = fmul fast float %6329, %6031
  %6333 = fmul fast float %6329, %6041
  %6334 = fadd fast float %6331, %6330
  %6335 = fadd fast float %6332, %6330
  %6336 = fadd fast float %6333, %6330
  %6337 = fcmp fast ogt float %4719, 0.000000e+00
  br i1 %6337, label %6338, label %6364

; <label>:6338                                    ; preds = %6219
  %6339 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %45, float %4719, float %6043, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6340 = extractvalue %dx.types.ResRet.f32 %6339, 0
  %6341 = extractvalue %dx.types.ResRet.f32 %6339, 1
  %6342 = extractvalue %dx.types.ResRet.f32 %6339, 2
  %6343 = fadd fast float %6340, -5.000000e-01
  %6344 = fadd fast float %6341, -5.000000e-01
  %6345 = fadd fast float %6342, -5.000000e-01
  %6346 = fsub fast float 1.000000e+00, %6030
  %6347 = fsub fast float 1.000000e+00, %6031
  %6348 = fsub fast float 1.000000e+00, %6041
  %6349 = fmul fast float %6030, 4.000000e+00
  %6350 = fmul fast float %6349, %6346
  %6351 = fmul fast float %6350, %6343
  %6352 = fmul fast float %6031, 4.000000e+00
  %6353 = fmul fast float %6352, %6347
  %6354 = fmul fast float %6353, %6344
  %6355 = fmul fast float %6041, 4.000000e+00
  %6356 = fmul fast float %6355, %6348
  %6357 = fmul fast float %6356, %6345
  %6358 = fadd fast float %6351, %6334
  %6359 = fadd fast float %6354, %6335
  %6360 = fadd fast float %6357, %6336
  %6361 = call float @dx.op.unary.f32(i32 7, float %6358)  ; Saturate(value)
  %6362 = call float @dx.op.unary.f32(i32 7, float %6359)  ; Saturate(value)
  %6363 = call float @dx.op.unary.f32(i32 7, float %6360)  ; Saturate(value)
  br label %6364

; <label>:6364                                    ; preds = %6338, %6219
  %6365 = phi float [ %6361, %6338 ], [ %6334, %6219 ]
  %6366 = phi float [ %6362, %6338 ], [ %6335, %6219 ]
  %6367 = phi float [ %6363, %6338 ], [ %6336, %6219 ]
  %6368 = call float @dx.op.binary.f32(i32 35, float %6366, float %6367)  ; FMax(a,b)
  %6369 = call float @dx.op.binary.f32(i32 35, float %6365, float %6368)  ; FMax(a,b)
  %6370 = fsub fast float 1.000000e+00, %6369
  %6371 = fmul fast float %6369, %6039
  %6372 = fadd fast float %6371, %6039
  %6373 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 252)  ; CBufferLoadLegacy(handle,regIndex)
  %6374 = extractvalue %dx.types.CBufRet.f32 %6373, 2
  %6375 = extractvalue %dx.types.CBufRet.f32 %6373, 3
  %6376 = fmul fast float %6372, %6374
  %6377 = fadd fast float %6376, %6375
  %6378 = call float @dx.op.unary.f32(i32 7, float %6377)  ; Saturate(value)
  %6379 = fsub fast float 1.000000e+00, %6064
  %6380 = fadd fast float %6379, %6378
  %6381 = call float @dx.op.unary.f32(i32 7, float %6380)  ; Saturate(value)
  %6382 = fcmp fast olt float %6381, 1.000000e+00
  br i1 %6382, label %6383, label %6831

; <label>:6383                                    ; preds = %6364
  %6384 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %6385 = extractvalue %dx.types.CBufRet.f32 %6384, 2
  %6386 = extractvalue %dx.types.CBufRet.f32 %6384, 3
  %6387 = fmul fast float %6385, %111
  %6388 = fmul fast float %6386, %112
  %6389 = fptoui float %6387 to i32
  %6390 = fptoui float %6388 to i32
  %6391 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %6392 = extractvalue %dx.types.CBufRet.f32 %6391, 0
  %6393 = extractvalue %dx.types.CBufRet.f32 %6391, 2
  %6394 = extractvalue %dx.types.CBufRet.f32 %6391, 3
  %6395 = fadd fast float %98, -4.000000e+00
  %6396 = call float @dx.op.binary.f32(i32 35, float %6395, float 0.000000e+00)  ; FMax(a,b)
  %6397 = fadd fast float %6396, %6392
  %6398 = fmul fast float %6397, %6393
  %6399 = call float @dx.op.unary.f32(i32 23, float %6398)  ; Log(value)
  %6400 = fmul fast float %6399, %6394
  %6401 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6402 = extractvalue %dx.types.CBufRet.f32 %6401, 2
  %6403 = fmul fast float %6400, %6402
  %6404 = call float @dx.op.unary.f32(i32 7, float %6403)  ; Saturate(value)
  %6405 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6406 = extractvalue %dx.types.CBufRet.i32 %6405, 1
  %6407 = add i32 %6406, -1
  %6408 = uitofp i32 %6406 to float
  %6409 = fmul fast float %6408, %6404
  %6410 = fptoui float %6409 to i32
  %6411 = call i32 @dx.op.binary.i32(i32 40, i32 %6410, i32 %6407)  ; UMin(a,b)
  %6412 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %6413 = extractvalue %dx.types.CBufRet.i32 %6412, 2
  %6414 = extractvalue %dx.types.CBufRet.i32 %6412, 3
  %6415 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6390, i32 %6413, i32 %6389)  ; UMad(a,b,c)
  %6416 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6411, i32 %6414, i32 %6415)  ; UMad(a,b,c)
  %6417 = call float @dx.op.binary.f32(i32 35, float %98, float 0.000000e+00)  ; FMax(a,b)
  %6418 = fptoui float %6417 to i32
  %6419 = lshr i32 %6418, 5
  %6420 = call i32 @dx.op.binary.i32(i32 40, i32 %6419, i32 8191)  ; UMin(a,b)
  br i1 false, label %6421, label %6428

; <label>:6421                                    ; preds = %6383
  %6422 = fadd fast float 0.000000e+00, %6051
  %6423 = call float @dx.op.dot3.f32(i32 55, float %6049, float %6050, float %6422, float %6049, float %6050, float %6422)  ; Dot3(ax,ay,az,bx,by,bz)
  %6424 = call float @dx.op.unary.f32(i32 25, float %6423)  ; Rsqrt(value)
  %6425 = fmul fast float %6424, %6049
  %6426 = fmul fast float %6424, %6050
  %6427 = fmul fast float %6422, %6424
  br label %6428

; <label>:6428                                    ; preds = %6421, %6383
  %6429 = phi float [ %6425, %6421 ], [ %6049, %6383 ]
  %6430 = phi float [ %6426, %6421 ], [ %6050, %6383 ]
  %6431 = phi float [ %6427, %6421 ], [ %6051, %6383 ]
  %6432 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6433 = extractvalue %dx.types.CBufRet.i32 %6432, 2
  %6434 = add nsw i32 %6433, -1
  %6435 = call i32 @dx.op.binary.i32(i32 37, i32 %6434, i32 0)  ; IMax(a,b)
  %6436 = shl i32 %6420, 2
  %6437 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %6436, i32 undef)  ; BufferLoad(srv,index,wot)
  %6438 = extractvalue %dx.types.ResRet.i32 %6437, 0
  %6439 = lshr i32 %6438, 16
  %6440 = and i32 %6438, 65535
  %6441 = lshr i32 %6438, 21
  %6442 = lshr i32 %6440, 5
  %6443 = call i32 @dx.op.binary.i32(i32 40, i32 %6442, i32 %6435)  ; UMin(a,b)
  %6444 = icmp ugt i32 %6441, %6443
  br i1 %6444, label %6807, label %6445

; <label>:6445                                    ; preds = %6428
  br label %6446

; <label>:6446                                    ; preds = %6799, %6445
  %6447 = phi float [ %6800, %6799 ], [ 0.000000e+00, %6445 ]
  %6448 = phi float [ %6801, %6799 ], [ 0.000000e+00, %6445 ]
  %6449 = phi float [ %6802, %6799 ], [ 0.000000e+00, %6445 ]
  %6450 = phi float [ %6803, %6799 ], [ 1.000000e+00, %6445 ]
  %6451 = phi i32 [ %6804, %6799 ], [ %6441, %6445 ]
  %6452 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6453 = extractvalue %dx.types.CBufRet.i32 %6452, 2
  %6454 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6416, i32 %6453, i32 %6451)  ; UMad(a,b,c)
  %6455 = shl i32 %6454, 2
  %6456 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 %6455, i32 undef)  ; BufferLoad(srv,index,wot)
  %6457 = extractvalue %dx.types.ResRet.i32 %6456, 0
  %6458 = shl i32 %6451, 5
  %6459 = sub nsw i32 %6439, %6458
  %6460 = call i32 @dx.op.binary.i32(i32 37, i32 %6459, i32 0)  ; IMax(a,b)
  %6461 = call i32 @dx.op.binary.i32(i32 38, i32 %6460, i32 31)  ; IMin(a,b)
  %6462 = sub nsw i32 1, %6439
  %6463 = add nsw i32 %6462, %6440
  %6464 = call i32 @dx.op.binary.i32(i32 37, i32 %6463, i32 0)  ; IMax(a,b)
  %6465 = call i32 @dx.op.binary.i32(i32 38, i32 %6464, i32 32)  ; IMin(a,b)
  %6466 = and i32 %6465, 31
  %6467 = shl i32 -1, %6466
  %6468 = xor i32 %6467, -1
  %6469 = and i32 %6461, 31
  %6470 = shl i32 %6468, %6469
  %6471 = icmp eq i32 %6465, 32
  %6472 = select i1 %6471, i32 -1, i32 %6470
  %6473 = and i32 %6472, %6457
  %6474 = icmp eq i32 %6473, 0
  br i1 %6474, label %6799, label %6475

; <label>:6475                                    ; preds = %6446
  br label %6476

; <label>:6476                                    ; preds = %6582, %6475
  %6477 = phi float [ %6583, %6582 ], [ %6447, %6475 ]
  %6478 = phi float [ %6584, %6582 ], [ %6448, %6475 ]
  %6479 = phi float [ %6585, %6582 ], [ %6449, %6475 ]
  %6480 = phi float [ %6586, %6582 ], [ %6450, %6475 ]
  %6481 = phi i32 [ %6486, %6582 ], [ %6473, %6475 ]
  %6482 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %6481)  ; FirstbitLo(value)
  %6483 = add i32 %6482, %6458
  %6484 = and i32 %6482, 31
  %6485 = shl i32 1, %6484
  %6486 = xor i32 %6485, %6481
  %6487 = mul i32 %6483, 72
  %6488 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %6487, i32 undef)  ; BufferLoad(srv,index,wot)
  %6489 = extractvalue %dx.types.ResRet.f32 %6488, 0
  %6490 = extractvalue %dx.types.ResRet.f32 %6488, 1
  %6491 = extractvalue %dx.types.ResRet.f32 %6488, 2
  %6492 = add i32 %6487, 12
  %6493 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %6492, i32 undef)  ; BufferLoad(srv,index,wot)
  %6494 = extractvalue %dx.types.ResRet.i32 %6493, 0
  %6495 = add i32 %6487, 16
  %6496 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %6495, i32 undef)  ; BufferLoad(srv,index,wot)
  %6497 = extractvalue %dx.types.ResRet.f32 %6496, 0
  %6498 = extractvalue %dx.types.ResRet.f32 %6496, 1
  %6499 = extractvalue %dx.types.ResRet.f32 %6496, 2
  %6500 = add i32 %6487, 28
  %6501 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %6500, i32 undef)  ; BufferLoad(srv,index,wot)
  %6502 = extractvalue %dx.types.ResRet.f32 %6501, 0
  %6503 = add i32 %6487, 32
  %6504 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %6503, i32 undef)  ; BufferLoad(srv,index,wot)
  %6505 = extractvalue %dx.types.ResRet.f32 %6504, 0
  %6506 = extractvalue %dx.types.ResRet.f32 %6504, 1
  %6507 = extractvalue %dx.types.ResRet.f32 %6504, 2
  %6508 = extractvalue %dx.types.ResRet.f32 %6504, 3
  %6509 = add i32 %6487, 48
  %6510 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %6509, i32 undef)  ; BufferLoad(srv,index,wot)
  %6511 = extractvalue %dx.types.ResRet.f32 %6510, 0
  %6512 = extractvalue %dx.types.ResRet.f32 %6510, 1
  %6513 = add i32 %6487, 56
  %6514 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %6513, i32 undef)  ; BufferLoad(srv,index,wot)
  %6515 = extractvalue %dx.types.ResRet.f32 %6514, 0
  %6516 = extractvalue %dx.types.ResRet.f32 %6514, 1
  %6517 = add i32 %6487, 64
  %6518 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %6517, i32 undef)  ; BufferLoad(srv,index,wot)
  %6519 = extractvalue %dx.types.ResRet.f32 %6518, 0
  %6520 = extractvalue %dx.types.ResRet.f32 %6518, 1
  %6521 = mul i32 %6483, 60
  %6522 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %36, i32 %6521, i32 undef)  ; BufferLoad(srv,index,wot)
  %6523 = extractvalue %dx.types.ResRet.f32 %6522, 0
  %6524 = extractvalue %dx.types.ResRet.f32 %6522, 1
  %6525 = extractvalue %dx.types.ResRet.f32 %6522, 2
  %6526 = add i32 %6521, 12
  %6527 = add i32 %6521, 48
  %6528 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %36, i32 %6527, i32 undef)  ; BufferLoad(srv,index,wot)
  %6529 = extractvalue %dx.types.ResRet.f32 %6528, 0
  %6530 = extractvalue %dx.types.ResRet.f32 %6528, 1
  %6531 = extractvalue %dx.types.ResRet.f32 %6528, 2
  %6532 = and i32 %6494, 32767
  %6533 = bitcast float %6489 to i32
  %6534 = icmp eq i32 %6533, -1
  %6535 = bitcast float %6490 to i32
  %6536 = and i32 %6494, 32768
  %6537 = icmp ne i32 %6536, 0
  %6538 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %6539 = extractvalue %dx.types.CBufRet.f32 %6538, 0
  %6540 = extractvalue %dx.types.CBufRet.f32 %6538, 1
  %6541 = extractvalue %dx.types.CBufRet.f32 %6538, 2
  %6542 = fsub fast float %6523, %6539
  %6543 = fsub fast float %6524, %6540
  %6544 = fsub fast float %6525, %6541
  %6545 = fsub fast float %190, %6542
  %6546 = fsub fast float %191, %6543
  %6547 = fsub fast float %192, %6544
  %6548 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %36, i32 %6526, i32 undef)  ; BufferLoad(srv,index,wot)
  %6549 = extractvalue %dx.types.ResRet.f32 %6548, 0
  %6550 = extractvalue %dx.types.ResRet.f32 %6548, 1
  %6551 = extractvalue %dx.types.ResRet.f32 %6548, 2
  %6552 = call float @dx.op.dot3.f32(i32 55, float %6545, float %6546, float %6547, float %6549, float %6550, float %6551)  ; Dot3(ax,ay,az,bx,by,bz)
  %6553 = add i32 %6521, 24
  %6554 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %36, i32 %6553, i32 undef)  ; BufferLoad(srv,index,wot)
  %6555 = extractvalue %dx.types.ResRet.f32 %6554, 0
  %6556 = extractvalue %dx.types.ResRet.f32 %6554, 1
  %6557 = extractvalue %dx.types.ResRet.f32 %6554, 2
  %6558 = call float @dx.op.dot3.f32(i32 55, float %6545, float %6546, float %6547, float %6555, float %6556, float %6557)  ; Dot3(ax,ay,az,bx,by,bz)
  %6559 = add i32 %6521, 36
  %6560 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %36, i32 %6559, i32 undef)  ; BufferLoad(srv,index,wot)
  %6561 = extractvalue %dx.types.ResRet.f32 %6560, 0
  %6562 = extractvalue %dx.types.ResRet.f32 %6560, 1
  %6563 = extractvalue %dx.types.ResRet.f32 %6560, 2
  %6564 = call float @dx.op.dot3.f32(i32 55, float %6545, float %6546, float %6547, float %6561, float %6562, float %6563)  ; Dot3(ax,ay,az,bx,by,bz)
  %6565 = call float @dx.op.unary.f32(i32 6, float %6552)  ; FAbs(value)
  %6566 = call float @dx.op.unary.f32(i32 6, float %6558)  ; FAbs(value)
  %6567 = call float @dx.op.unary.f32(i32 6, float %6564)  ; FAbs(value)
  %6568 = fsub fast float %6529, %6565
  %6569 = fsub fast float %6530, %6566
  %6570 = fsub fast float %6531, %6567
  %6571 = fmul fast float %6568, %6497
  %6572 = fmul fast float %6569, %6498
  %6573 = fmul fast float %6570, %6499
  %6574 = call float @dx.op.binary.f32(i32 36, float %6572, float %6573)  ; FMin(a,b)
  %6575 = call float @dx.op.binary.f32(i32 36, float %6571, float %6574)  ; FMin(a,b)
  %6576 = call float @dx.op.unary.f32(i32 7, float %6575)  ; Saturate(value)
  %6577 = call float @dx.op.binary.f32(i32 36, float %6480, float %6576)  ; FMin(a,b)
  %6578 = uitofp i1 %6537 to float
  %6579 = fsub fast float 1.000000e+00, %6578
  %6580 = fmul fast float %6577, %6579
  %6581 = fcmp fast ogt float %6580, 0.000000e+00
  br i1 %6581, label %6588, label %6582

; <label>:6582                                    ; preds = %6730, %6476
  %6583 = phi float [ %6794, %6730 ], [ %6477, %6476 ]
  %6584 = phi float [ %6795, %6730 ], [ %6478, %6476 ]
  %6585 = phi float [ %6796, %6730 ], [ %6479, %6476 ]
  %6586 = phi float [ %6797, %6730 ], [ %6480, %6476 ]
  %6587 = icmp eq i32 %6481, %6485
  br i1 %6587, label %6798, label %6476

; <label>:6588                                    ; preds = %6476
  br i1 %6534, label %6646, label %6589

; <label>:6589                                    ; preds = %6588
  %6590 = fsub fast float -0.000000e+00, %6549
  %6591 = fsub fast float -0.000000e+00, %6550
  %6592 = fsub fast float -0.000000e+00, %6551
  %6593 = call float @dx.op.dot3.f32(i32 55, float %6429, float %6430, float %6431, float %6590, float %6591, float %6592)  ; Dot3(ax,ay,az,bx,by,bz)
  %6594 = fsub fast float -0.000000e+00, %6593
  %6595 = call float @dx.op.dot3.f32(i32 55, float %6545, float %6546, float %6547, float %6590, float %6591, float %6592)  ; Dot3(ax,ay,az,bx,by,bz)
  %6596 = fadd fast float %6595, %6512
  %6597 = fadd fast float %6511, %6595
  %6598 = fsub fast float -0.000000e+00, %6597
  %6599 = fcmp ogt float %6593, -0.000000e+00
  %6600 = select i1 %6599, float %6598, float %6596
  %6601 = call float @dx.op.unary.f32(i32 6, float %6594)  ; FAbs(value)
  %6602 = fdiv fast float 1.000000e+00, %6601
  %6603 = fmul fast float %6600, %6602
  %6604 = call float @dx.op.binary.f32(i32 35, float %6603, float 0.000000e+00)  ; FMax(a,b)
  %6605 = fsub fast float -0.000000e+00, %6555
  %6606 = fsub fast float -0.000000e+00, %6556
  %6607 = fsub fast float -0.000000e+00, %6557
  %6608 = call float @dx.op.dot3.f32(i32 55, float %6429, float %6430, float %6431, float %6605, float %6606, float %6607)  ; Dot3(ax,ay,az,bx,by,bz)
  %6609 = fsub fast float -0.000000e+00, %6608
  %6610 = call float @dx.op.dot3.f32(i32 55, float %6545, float %6546, float %6547, float %6605, float %6606, float %6607)  ; Dot3(ax,ay,az,bx,by,bz)
  %6611 = fadd fast float %6610, %6516
  %6612 = fadd fast float %6515, %6610
  %6613 = fsub fast float -0.000000e+00, %6612
  %6614 = fcmp ogt float %6608, -0.000000e+00
  %6615 = select i1 %6614, float %6613, float %6611
  %6616 = call float @dx.op.unary.f32(i32 6, float %6609)  ; FAbs(value)
  %6617 = fdiv fast float 1.000000e+00, %6616
  %6618 = fmul fast float %6615, %6617
  %6619 = call float @dx.op.binary.f32(i32 35, float %6618, float 0.000000e+00)  ; FMax(a,b)
  %6620 = fsub fast float -0.000000e+00, %6561
  %6621 = fsub fast float -0.000000e+00, %6562
  %6622 = fsub fast float -0.000000e+00, %6563
  %6623 = call float @dx.op.dot3.f32(i32 55, float %6429, float %6430, float %6431, float %6620, float %6621, float %6622)  ; Dot3(ax,ay,az,bx,by,bz)
  %6624 = fsub fast float -0.000000e+00, %6623
  %6625 = call float @dx.op.dot3.f32(i32 55, float %6545, float %6546, float %6547, float %6620, float %6621, float %6622)  ; Dot3(ax,ay,az,bx,by,bz)
  %6626 = fadd fast float %6625, %6520
  %6627 = fadd fast float %6519, %6625
  %6628 = fsub fast float -0.000000e+00, %6627
  %6629 = fcmp ogt float %6623, -0.000000e+00
  %6630 = select i1 %6629, float %6628, float %6626
  %6631 = call float @dx.op.unary.f32(i32 6, float %6624)  ; FAbs(value)
  %6632 = fdiv fast float 1.000000e+00, %6631
  %6633 = fmul fast float %6630, %6632
  %6634 = call float @dx.op.binary.f32(i32 35, float %6633, float 0.000000e+00)  ; FMax(a,b)
  %6635 = call float @dx.op.binary.f32(i32 36, float %6619, float %6634)  ; FMin(a,b)
  %6636 = call float @dx.op.binary.f32(i32 36, float %6604, float %6635)  ; FMin(a,b)
  %6637 = fmul fast float %6636, %6429
  %6638 = fmul fast float %6636, %6430
  %6639 = fmul fast float %6636, %6431
  %6640 = fadd fast float %6637, %190
  %6641 = fadd fast float %6638, %191
  %6642 = fadd fast float %6639, %192
  %6643 = fsub fast float %6640, %6489
  %6644 = fsub fast float %6641, %6490
  %6645 = fsub fast float %6642, %6491
  br label %6653

; <label>:6646                                    ; preds = %6588
  %6647 = fmul fast float %6429, 8.096000e+03
  %6648 = fmul fast float %6430, 8.096000e+03
  %6649 = fmul fast float %6431, 8.096000e+03
  %6650 = fadd fast float %6647, %190
  %6651 = fadd fast float %6648, %191
  %6652 = fadd fast float %6649, %192
  br label %6653

; <label>:6653                                    ; preds = %6646, %6589
  %6654 = phi float [ %6429, %6646 ], [ %6643, %6589 ]
  %6655 = phi float [ %6430, %6646 ], [ %6644, %6589 ]
  %6656 = phi float [ %6431, %6646 ], [ %6645, %6589 ]
  %6657 = phi float [ %6650, %6646 ], [ %6640, %6589 ]
  %6658 = phi float [ %6651, %6646 ], [ %6641, %6589 ]
  %6659 = phi float [ %6652, %6646 ], [ %6642, %6589 ]
  %6660 = fcmp fast olt float %6508, 1.000000e+00
  br i1 %6660, label %6661, label %6692, !dx.controlflow.hints !94

; <label>:6661                                    ; preds = %6653
  %6662 = fmul fast float %6656, %6506
  %6663 = fmul fast float %6655, %6507
  %6664 = fsub fast float %6662, %6663
  %6665 = fmul fast float %6654, %6507
  %6666 = fmul fast float %6656, %6505
  %6667 = fsub fast float %6665, %6666
  %6668 = fmul fast float %6655, %6505
  %6669 = fmul fast float %6654, %6506
  %6670 = fsub fast float %6668, %6669
  %6671 = fmul fast float %6664, 2.000000e+00
  %6672 = fmul fast float %6667, 2.000000e+00
  %6673 = fmul fast float %6670, 2.000000e+00
  %6674 = fmul fast float %6671, %6508
  %6675 = fmul fast float %6672, %6508
  %6676 = fmul fast float %6673, %6508
  %6677 = fmul fast float %6673, %6506
  %6678 = fmul fast float %6672, %6507
  %6679 = fmul fast float %6671, %6507
  %6680 = fmul fast float %6673, %6505
  %6681 = fmul fast float %6672, %6505
  %6682 = fmul fast float %6671, %6506
  %6683 = fadd fast float %6677, %6654
  %6684 = fadd fast float %6683, %6674
  %6685 = fsub fast float %6684, %6678
  %6686 = fsub fast float %6655, %6680
  %6687 = fadd fast float %6686, %6675
  %6688 = fadd fast float %6687, %6679
  %6689 = fadd fast float %6676, %6656
  %6690 = fsub fast float %6689, %6682
  %6691 = fadd fast float %6690, %6681
  br label %6692

; <label>:6692                                    ; preds = %6661, %6653
  %6693 = phi float [ %6685, %6661 ], [ %6654, %6653 ]
  %6694 = phi float [ %6688, %6661 ], [ %6655, %6653 ]
  %6695 = phi float [ %6691, %6661 ], [ %6656, %6653 ]
  br i1 %6534, label %6727, label %6696

; <label>:6696                                    ; preds = %6692
  %6697 = fmul fast float %6039, 0x400187C840000000
  %6698 = fadd fast float %6697, 0xC00EFC2120000000
  %6699 = fmul fast float %6698, %6039
  %6700 = fadd fast float %6699, 0x3FE5D16340000000
  %6701 = fmul fast float %6700, %6039
  %6702 = fadd fast float %6701, 1.000000e+00
  %6703 = call float @dx.op.unary.f32(i32 7, float %6702)  ; Saturate(value)
  %6704 = fsub fast float %6657, %190
  %6705 = fsub fast float %6658, %191
  %6706 = fsub fast float %6659, %192
  %6707 = fsub fast float %6657, %6489
  %6708 = fsub fast float %6658, %6490
  %6709 = fsub fast float %6659, %6491
  %6710 = call float @dx.op.dot3.f32(i32 55, float %6704, float %6705, float %6706, float %6704, float %6705, float %6706)  ; Dot3(ax,ay,az,bx,by,bz)
  %6711 = call float @dx.op.dot3.f32(i32 55, float %6707, float %6708, float %6709, float %6707, float %6708, float %6709)  ; Dot3(ax,ay,az,bx,by,bz)
  %6712 = fadd fast float %6711, 0x3EE4F8B580000000
  %6713 = fdiv fast float %6710, %6712
  %6714 = bitcast float %6713 to i32
  %6715 = ashr i32 %6714, 1
  %6716 = add nsw i32 %6715, 532487669
  %6717 = bitcast i32 %6716 to float
  %6718 = fmul fast float %6717, %6703
  %6719 = call float @dx.op.unary.f32(i32 7, float %6718)  ; Saturate(value)
  %6720 = fmul fast float %6719, 0x4009981AE0000000
  %6721 = fsub fast float 0x40111BBD80000000, %6720
  %6722 = fmul fast float %6721, %6719
  %6723 = fadd fast float %6722, 0xC0009F6020000000
  %6724 = fmul fast float %6723, %6719
  %6725 = fadd fast float %6724, 1.000000e+00
  %6726 = call float @dx.op.unary.f32(i32 7, float %6725)  ; Saturate(value)
  br label %6730

; <label>:6727                                    ; preds = %6692
  %6728 = icmp ne i32 %6535, -1
  %6729 = zext i1 %6728 to i32
  br label %6730

; <label>:6730                                    ; preds = %6727, %6696
  %6731 = phi float [ %6039, %6727 ], [ %6726, %6696 ]
  %6732 = phi i32 [ %6729, %6727 ], [ 0, %6696 ]
  %6733 = fmul float %6731, 5.000000e+00
  %6734 = fsub float 5.000000e+00, %6733
  %6735 = icmp ne i32 %6732, 0
  %6736 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %6737 = extractvalue %dx.types.CBufRet.f32 %6736, 3
  %6738 = fadd fast float %6737, %6734
  %6739 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6738)  ; FMax(a,b)
  %6740 = call float @dx.op.unary.f32(i32 6, float %6693)  ; FAbs(value)
  %6741 = call float @dx.op.unary.f32(i32 6, float %6694)  ; FAbs(value)
  %6742 = fadd fast float %6741, %6740
  %6743 = call float @dx.op.unary.f32(i32 6, float %6695)  ; FAbs(value)
  %6744 = fadd fast float %6742, %6743
  %6745 = fcmp fast oeq float %6744, 0.000000e+00
  %6746 = fdiv fast float 1.000000e+00, %6744
  %6747 = select i1 %6745, float 1.000000e+00, float %6746
  %6748 = fmul fast float %6747, %6693
  %6749 = fmul fast float %6747, %6694
  %6750 = call float @dx.op.unary.f32(i32 6, float %6749)  ; FAbs(value)
  %6751 = call float @dx.op.unary.f32(i32 6, float %6748)  ; FAbs(value)
  %6752 = fsub fast float 1.000000e+00, %6750
  %6753 = fsub fast float 1.000000e+00, %6751
  %6754 = fcmp fast oge float %6748, 0.000000e+00
  %6755 = fcmp fast oge float %6749, 0.000000e+00
  %6756 = select i1 %6754, float 1.000000e+00, float -1.000000e+00
  %6757 = select i1 %6755, float 1.000000e+00, float -1.000000e+00
  %6758 = fcmp fast ole float %6695, 0.000000e+00
  %6759 = fmul fast float %6756, %6752
  %6760 = fmul fast float %6757, %6753
  %6761 = select i1 %6758, float %6759, float %6748
  %6762 = select i1 %6758, float %6760, float %6749
  %6763 = fmul fast float %6761, 5.000000e-01
  %6764 = fmul fast float %6762, 5.000000e-01
  %6765 = fadd fast float %6763, 5.000000e-01
  %6766 = fadd fast float %6764, 5.000000e-01
  %6767 = uitofp i32 %6532 to float
  %6768 = call float @dx.op.binary.f32(i32 36, float %6739, float 3.000000e+00)  ; FMin(a,b)
  %6769 = fadd fast float %6768, 2.000000e+00
  %6770 = call float @dx.op.unary.f32(i32 21, float %6769)  ; Exp(value)
  %6771 = extractvalue %dx.types.CBufRet.f32 %6736, 1
  %6772 = fmul fast float %6771, %6770
  %6773 = fmul fast float %6772, 2.000000e+00
  %6774 = fsub fast float 1.000000e+00, %6773
  %6775 = fmul fast float %6765, %6774
  %6776 = fmul fast float %6766, %6774
  %6777 = fadd fast float %6775, %6772
  %6778 = fadd fast float %6776, %6772
  %6779 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %43, float %6777, float %6778, float %6767, float undef, i32 0, i32 0, i32 undef, float %6739)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6780 = extractvalue %dx.types.ResRet.f32 %6779, 0
  %6781 = extractvalue %dx.types.ResRet.f32 %6779, 1
  %6782 = extractvalue %dx.types.ResRet.f32 %6779, 2
  %6783 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6784 = extractvalue %dx.types.CBufRet.f32 %6783, 3
  %6785 = fmul fast float %6784, %6502
  %6786 = call float @dx.op.binary.f32(i32 36, float %6070, float %6785)  ; FMin(a,b)
  %6787 = select i1 %6735, float %6786, float %6785
  %6788 = fmul fast float %6780, %6580
  %6789 = fmul fast float %6788, %6787
  %6790 = fmul fast float %6781, %6580
  %6791 = fmul fast float %6790, %6787
  %6792 = fmul fast float %6782, %6580
  %6793 = fmul fast float %6792, %6787
  %6794 = fadd fast float %6789, %6477
  %6795 = fadd fast float %6791, %6478
  %6796 = fadd fast float %6793, %6479
  %6797 = fsub fast float %6480, %6580
  br label %6582

; <label>:6798                                    ; preds = %6582
  br label %6799

; <label>:6799                                    ; preds = %6798, %6446
  %6800 = phi float [ %6447, %6446 ], [ %6583, %6798 ]
  %6801 = phi float [ %6448, %6446 ], [ %6584, %6798 ]
  %6802 = phi float [ %6449, %6446 ], [ %6585, %6798 ]
  %6803 = phi float [ %6450, %6446 ], [ %6586, %6798 ]
  %6804 = add i32 %6451, 1
  %6805 = icmp ugt i32 %6804, %6443
  br i1 %6805, label %6806, label %6446, !llvm.loop !95

; <label>:6806                                    ; preds = %6799
  br label %6807

; <label>:6807                                    ; preds = %6806, %6428
  %6808 = phi float [ 0.000000e+00, %6428 ], [ %6800, %6806 ]
  %6809 = phi float [ 0.000000e+00, %6428 ], [ %6801, %6806 ]
  %6810 = phi float [ 0.000000e+00, %6428 ], [ %6802, %6806 ]
  %6811 = call float @dx.op.dot3.f32(i32 55, float %6808, float %6809, float %6810, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6812 = select i1 %294, float 0.000000e+00, float %6808
  %6813 = select i1 %294, float %6811, float %6809
  %6814 = select i1 %294, float 0.000000e+00, float %6810
  %6815 = fcmp fast olt float %6381, 0.000000e+00
  %6816 = call float @dx.op.unary.f32(i32 6, float %6381)  ; FAbs(value)
  %6817 = fmul fast float %6816, %6310
  %6818 = fmul fast float %6816, %6311
  %6819 = fmul fast float %6816, %6312
  %6820 = select i1 %6815, float %6310, float %6817
  %6821 = select i1 %6815, float %6311, float %6818
  %6822 = select i1 %6815, float %6312, float %6819
  %6823 = fsub fast float 1.000000e+00, %6816
  %6824 = call float @dx.op.unary.f32(i32 7, float %6823)  ; Saturate(value)
  %6825 = fmul fast float %6824, %6812
  %6826 = fmul fast float %6824, %6813
  %6827 = fmul fast float %6824, %6814
  %6828 = fadd fast float %6820, %6825
  %6829 = fadd fast float %6821, %6826
  %6830 = fadd fast float %6822, %6827
  br label %6831

; <label>:6831                                    ; preds = %6807, %6364
  %6832 = phi float [ %6310, %6364 ], [ %6828, %6807 ]
  %6833 = phi float [ %6311, %6364 ], [ %6829, %6807 ]
  %6834 = phi float [ %6312, %6364 ], [ %6830, %6807 ]
  %6835 = call float @dx.op.dot3.f32(i32 55, float %6033, float %6034, float %6035, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6836 = fcmp fast ogt float %6835, 0x3E7FF19E20000000
  %6837 = fdiv fast float 1.000000e+00, %6835
  %6838 = select i1 %6836, float %6837, float 0.000000e+00
  %6839 = fmul fast float %6838, %6033
  %6840 = fmul fast float %6838, %6034
  %6841 = fmul fast float %6838, %6035
  %6842 = fadd fast float %6839, -1.000000e+00
  %6843 = fadd fast float %6840, -1.000000e+00
  %6844 = fadd fast float %6841, -1.000000e+00
  %6845 = fmul fast float %6842, 5.000000e-01
  %6846 = fmul fast float %6843, 5.000000e-01
  %6847 = fmul fast float %6844, 5.000000e-01
  %6848 = fadd fast float %6845, 1.000000e+00
  %6849 = fadd fast float %6846, 1.000000e+00
  %6850 = fadd fast float %6847, 1.000000e+00
  %6851 = call float @dx.op.binary.f32(i32 35, float %6043, float 0x3F50624DE0000000)  ; FMax(a,b)
  %6852 = fdiv fast float %4035, %6851
  %6853 = fcmp fast olt float %4790, 1.270000e+02
  %6854 = fcmp fast olt float %4791, 1.270000e+02
  %6855 = fcmp fast olt float %4792, 1.270000e+02
  %6856 = fmul fast float %4790, 0xBFF7154760000000
  %6857 = fmul fast float %6856, %6852
  %6858 = fmul fast float %4791, 0xBFF7154760000000
  %6859 = fmul fast float %6858, %6852
  %6860 = fmul fast float %4792, 0xBFF7154760000000
  %6861 = fmul fast float %6860, %6852
  %6862 = call float @dx.op.unary.f32(i32 21, float %6857)  ; Exp(value)
  %6863 = call float @dx.op.unary.f32(i32 21, float %6859)  ; Exp(value)
  %6864 = call float @dx.op.unary.f32(i32 21, float %6861)  ; Exp(value)
  %6865 = call float @dx.op.unary.f32(i32 7, float %6862)  ; Saturate(value)
  %6866 = call float @dx.op.unary.f32(i32 7, float %6863)  ; Saturate(value)
  %6867 = call float @dx.op.unary.f32(i32 7, float %6864)  ; Saturate(value)
  %6868 = select i1 %6853, float %6865, float 0.000000e+00
  %6869 = select i1 %6854, float %6866, float 0.000000e+00
  %6870 = select i1 %6855, float %6867, float 0.000000e+00
  %6871 = fmul fast float %6868, %6370
  %6872 = fmul fast float %6869, %6370
  %6873 = fmul fast float %6870, %6370
  %6874 = fadd fast float %6871, -1.000000e+00
  %6875 = fadd fast float %6872, -1.000000e+00
  %6876 = fadd fast float %6873, -1.000000e+00
  %6877 = fmul fast float %6874, %4745
  %6878 = fmul fast float %6875, %4745
  %6879 = fmul fast float %6876, %4745
  %6880 = fmul fast float %6832, %6365
  %6881 = fmul fast float %6833, %6366
  %6882 = fmul fast float %6834, %6367
  %6883 = fsub fast float 1.000000e+00, %6043
  %6884 = bitcast float %6883 to i32
  %6885 = sitofp i32 %6884 to float
  %6886 = fmul fast float %6885, 5.000000e+00
  %6887 = fadd fast float %6886, 0xC1EFBF8940000000
  %6888 = fptosi float %6887 to i32
  %6889 = bitcast i32 %6888 to float
  %6890 = fmul fast float %6889, %4720
  %6891 = fmul fast float %6302, %6890
  %6892 = fmul fast float %6891, %6370
  %6893 = fmul fast float %6892, %6848
  %6894 = fmul fast float %6303, %6890
  %6895 = fmul fast float %6894, %6370
  %6896 = fmul fast float %6895, %6849
  %6897 = fmul fast float %6304, %6890
  %6898 = fmul fast float %6897, %6370
  %6899 = fmul fast float %6898, %6850
  %6900 = fadd fast float %6880, %4706
  %6901 = fadd fast float %6900, %6893
  %6902 = fmul fast float %6901, %4745
  %6903 = fadd fast float %6881, %4707
  %6904 = fadd fast float %6903, %6896
  %6905 = fmul fast float %6904, %4745
  %6906 = fadd fast float %6882, %4708
  %6907 = fadd fast float %6906, %6899
  %6908 = fmul fast float %6907, %4745
  %6909 = fmul fast float %6031, 0x4012D0A400000000
  %6910 = fadd fast float %6879, 1.000000e+00
  %6911 = fadd fast float %6878, 1.000000e+00
  %6912 = fadd fast float %6877, 1.000000e+00
  %6913 = fmul fast float %6370, %6304
  %6914 = fmul fast float %6370, %6303
  %6915 = fmul fast float %6370, %6302
  %6916 = fmul fast float %6058, %4745
  %6917 = fsub fast float 1.000000e+00, %6916
  %6918 = call float @dx.op.unary.f32(i32 7, float %6917)  ; Saturate(value)
  %6919 = fsub fast float 1.000000e+00, %6918
  %6920 = fadd fast float %6909, 0x3FDB6377A0000000
  %6921 = fmul fast float %6919, %6920
  %6922 = call float @dx.op.dot3.f32(i32 55, float %5663, float %5664, float %5665, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6923 = fadd fast float %6921, %6922
  %6924 = call float @dx.op.unary.f32(i32 7, float %6923)  ; Saturate(value)
  %6925 = call float @dx.op.binary.f32(i32 35, float %6924, float 0x3F847AE140000000)  ; FMax(a,b)
  %6926 = fmul fast float %6925, %6925
  %6927 = fmul fast float %6926, %6926
  %6928 = fmul fast float %6927, 0xC00A935000000000
  %6929 = call float @dx.op.unary.f32(i32 21, float %6928)  ; Exp(value)
  %6930 = fsub fast float 1.000000e+00, %6929
  %6931 = fmul fast float %6912, %6306
  %6932 = fmul fast float %6931, %6930
  %6933 = fmul fast float %6911, %6307
  %6934 = fmul fast float %6933, %6930
  %6935 = fmul fast float %6910, %6308
  %6936 = fmul fast float %6935, %6930
  %6937 = fadd fast float %6932, %6915
  %6938 = fmul fast float %6937, %4745
  %6939 = fadd fast float %6934, %6914
  %6940 = fmul fast float %6939, %4745
  %6941 = fadd fast float %6936, %6913
  %6942 = fmul fast float %6941, %4745
  %6943 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %6944 = extractvalue %dx.types.CBufRet.f32 %6943, 3
  %6945 = fcmp fast oeq float %6944, 0.000000e+00
  br i1 %6945, label %8710, label %6946

; <label>:6946                                    ; preds = %6831
  %6947 = extractvalue %dx.types.CBufRet.f32 %6943, 0
  %6948 = extractvalue %dx.types.CBufRet.f32 %6943, 1
  %6949 = extractvalue %dx.types.CBufRet.f32 %6943, 2
  %6950 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %6951 = extractvalue %dx.types.CBufRet.f32 %6950, 0
  %6952 = extractvalue %dx.types.CBufRet.f32 %6950, 1
  %6953 = extractvalue %dx.types.CBufRet.f32 %6950, 2
  %6954 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %6955 = extractvalue %dx.types.CBufRet.f32 %6954, 0
  %6956 = extractvalue %dx.types.CBufRet.f32 %6954, 1
  %6957 = call float @dx.op.dot3.f32(i32 55, float %6951, float %6952, float %6953, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6958 = select i1 %294, float %6955, float %6951
  %6959 = select i1 %294, float %6957, float %6952
  %6960 = select i1 %294, float %6956, float %6953
  %6961 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %6962 = extractvalue %dx.types.CBufRet.f32 %6961, 2
  %6963 = fmul fast float %6962, %118
  %6964 = fmul fast float %6962, %119
  %6965 = fmul fast float %6962, %120
  %6966 = fadd fast float %6963, %190
  %6967 = fadd fast float %6964, %191
  %6968 = fadd fast float %6965, %192
  %6969 = fcmp fast olt float %6944, 0.000000e+00
  br i1 %6969, label %8227, label %6970

; <label>:6970                                    ; preds = %6946
  %6971 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6972 = extractvalue %dx.types.CBufRet.f32 %6971, 0
  %6973 = extractvalue %dx.types.CBufRet.f32 %6971, 1
  %6974 = extractvalue %dx.types.CBufRet.f32 %6971, 2
  %6975 = extractvalue %dx.types.CBufRet.f32 %6971, 3
  %6976 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %6977 = extractvalue %dx.types.CBufRet.f32 %6976, 0
  %6978 = extractvalue %dx.types.CBufRet.f32 %6976, 1
  %6979 = extractvalue %dx.types.CBufRet.f32 %6976, 2
  %6980 = extractvalue %dx.types.CBufRet.f32 %6976, 3
  %6981 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %6982 = extractvalue %dx.types.CBufRet.f32 %6981, 0
  %6983 = extractvalue %dx.types.CBufRet.f32 %6981, 1
  %6984 = extractvalue %dx.types.CBufRet.f32 %6981, 2
  %6985 = extractvalue %dx.types.CBufRet.f32 %6981, 3
  %6986 = fmul fast float %6972, %6966
  %6987 = call float @dx.op.tertiary.f32(i32 46, float %6967, float %6973, float %6986)  ; FMad(a,b,c)
  %6988 = call float @dx.op.tertiary.f32(i32 46, float %6968, float %6974, float %6987)  ; FMad(a,b,c)
  %6989 = fadd fast float %6988, %6975
  %6990 = fmul fast float %6977, %6966
  %6991 = call float @dx.op.tertiary.f32(i32 46, float %6967, float %6978, float %6990)  ; FMad(a,b,c)
  %6992 = call float @dx.op.tertiary.f32(i32 46, float %6968, float %6979, float %6991)  ; FMad(a,b,c)
  %6993 = fadd fast float %6992, %6980
  %6994 = fmul fast float %6982, %6966
  %6995 = call float @dx.op.tertiary.f32(i32 46, float %6967, float %6983, float %6994)  ; FMad(a,b,c)
  %6996 = call float @dx.op.tertiary.f32(i32 46, float %6968, float %6984, float %6995)  ; FMad(a,b,c)
  %6997 = fadd fast float %6996, %6985
  %6998 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %6999 = extractvalue %dx.types.CBufRet.f32 %6998, 0
  %7000 = fcmp fast une float %6999, 0.000000e+00
  %7001 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %7002 = extractvalue %dx.types.CBufRet.f32 %7001, 0
  %7003 = extractvalue %dx.types.CBufRet.f32 %7001, 1
  %7004 = extractvalue %dx.types.CBufRet.f32 %7001, 3
  %7005 = fmul fast float %7004, %6989
  %7006 = fmul fast float %7004, %6993
  %7007 = fadd fast float %7005, %7002
  %7008 = fadd fast float %7006, %7003
  %7009 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %7010 = extractvalue %dx.types.CBufRet.f32 %7009, 0
  %7011 = extractvalue %dx.types.CBufRet.f32 %7009, 1
  %7012 = extractvalue %dx.types.CBufRet.f32 %7009, 3
  %7013 = fmul fast float %7012, %6989
  %7014 = fmul fast float %7012, %6993
  %7015 = fadd fast float %7013, %7010
  %7016 = fadd fast float %7014, %7011
  %7017 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %7018 = extractvalue %dx.types.CBufRet.f32 %7017, 1
  %7019 = fsub fast float %7018, %6997
  %7020 = extractvalue %dx.types.CBufRet.f32 %7017, 2
  %7021 = fmul fast float %7019, %7020
  %7022 = fsub fast float 1.000000e+00, %7021
  %7023 = call float @dx.op.unary.f32(i32 7, float %7022)  ; Saturate(value)
  br i1 %7000, label %7084, label %7024

; <label>:7024                                    ; preds = %6970
  %7025 = extractvalue %dx.types.CBufRet.f32 %7009, 2
  %7026 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %7027 = extractvalue %dx.types.CBufRet.f32 %7026, 2
  %7028 = fadd fast float %7027, %7025
  %7029 = fcmp fast ogt float %7028, 0.000000e+00
  br i1 %7029, label %7030, label %7054

; <label>:7030                                    ; preds = %7024
  %7031 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %7032 = extractvalue %dx.types.CBufRet.f32 %7031, 0
  %7033 = extractvalue %dx.types.CBufRet.f32 %7031, 1
  %7034 = fsub fast float %7015, %7032
  %7035 = fsub fast float %7016, %7033
  %7036 = fcmp fast olt float %7034, 0.000000e+00
  %7037 = fcmp fast olt float %7035, 0.000000e+00
  %7038 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %7039 = extractvalue %dx.types.CBufRet.f32 %7038, 0
  %7040 = extractvalue %dx.types.CBufRet.f32 %7038, 1
  %7041 = extractvalue %dx.types.CBufRet.f32 %7038, 2
  %7042 = extractvalue %dx.types.CBufRet.f32 %7038, 3
  %7043 = select i1 %7036, float %7039, float %7041
  %7044 = select i1 %7037, float %7040, float %7042
  %7045 = fmul fast float %7043, %7034
  %7046 = fmul fast float %7044, %7035
  %7047 = call float @dx.op.unary.f32(i32 6, float %7045)  ; FAbs(value)
  %7048 = call float @dx.op.unary.f32(i32 6, float %7046)  ; FAbs(value)
  %7049 = extractvalue %dx.types.CBufRet.f32 %6961, 0
  %7050 = call float @dx.op.binary.f32(i32 35, float %7047, float %7048)  ; FMax(a,b)
  %7051 = fsub fast float %7049, %7050
  %7052 = call float @dx.op.unary.f32(i32 7, float %7051)  ; Saturate(value)
  %7053 = fmul fast float %7052, %7023
  br label %7054

; <label>:7054                                    ; preds = %7030, %7024
  %7055 = phi float [ %7053, %7030 ], [ 0.000000e+00, %7024 ]
  %7056 = extractvalue %dx.types.CBufRet.f32 %7001, 2
  %7057 = extractvalue %dx.types.CBufRet.f32 %7026, 1
  %7058 = fadd fast float %7057, %7056
  %7059 = fcmp fast ogt float %7058, 0.000000e+00
  br i1 %7059, label %7060, label %7084

; <label>:7060                                    ; preds = %7054
  %7061 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %7062 = extractvalue %dx.types.CBufRet.f32 %7061, 0
  %7063 = extractvalue %dx.types.CBufRet.f32 %7061, 1
  %7064 = fsub fast float %7007, %7062
  %7065 = fsub fast float %7008, %7063
  %7066 = fcmp fast olt float %7064, 0.000000e+00
  %7067 = fcmp fast olt float %7065, 0.000000e+00
  %7068 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %7069 = extractvalue %dx.types.CBufRet.f32 %7068, 0
  %7070 = extractvalue %dx.types.CBufRet.f32 %7068, 1
  %7071 = extractvalue %dx.types.CBufRet.f32 %7068, 2
  %7072 = extractvalue %dx.types.CBufRet.f32 %7068, 3
  %7073 = select i1 %7066, float %7069, float %7071
  %7074 = select i1 %7067, float %7070, float %7072
  %7075 = fmul fast float %7073, %7064
  %7076 = fmul fast float %7074, %7065
  %7077 = call float @dx.op.unary.f32(i32 6, float %7075)  ; FAbs(value)
  %7078 = call float @dx.op.unary.f32(i32 6, float %7076)  ; FAbs(value)
  %7079 = extractvalue %dx.types.CBufRet.f32 %6961, 0
  %7080 = call float @dx.op.binary.f32(i32 35, float %7077, float %7078)  ; FMax(a,b)
  %7081 = fsub fast float %7079, %7080
  %7082 = call float @dx.op.unary.f32(i32 7, float %7081)  ; Saturate(value)
  %7083 = fmul fast float %7082, %7023
  br label %7084

; <label>:7084                                    ; preds = %7060, %7054, %6970
  %7085 = phi float [ 0.000000e+00, %6970 ], [ %7083, %7060 ], [ 0.000000e+00, %7054 ]
  %7086 = phi float [ 0.000000e+00, %6970 ], [ %7055, %7060 ], [ %7055, %7054 ]
  %7087 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %7088 = extractvalue %dx.types.CBufRet.f32 %7087, 1
  %7089 = call float @dx.op.unary.f32(i32 7, float %7088)  ; Saturate(value)
  %7090 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %7091 = extractvalue %dx.types.CBufRet.f32 %7090, 0
  %7092 = extractvalue %dx.types.CBufRet.f32 %7090, 1
  %7093 = fsub fast float %6989, %7091
  %7094 = fsub fast float %6993, %7092
  %7095 = fcmp fast olt float %7093, 0.000000e+00
  %7096 = fcmp fast olt float %7094, 0.000000e+00
  %7097 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %7098 = extractvalue %dx.types.CBufRet.f32 %7097, 0
  %7099 = extractvalue %dx.types.CBufRet.f32 %7097, 1
  %7100 = extractvalue %dx.types.CBufRet.f32 %7097, 2
  %7101 = extractvalue %dx.types.CBufRet.f32 %7097, 3
  %7102 = select i1 %7095, float %7098, float %7100
  %7103 = select i1 %7096, float %7099, float %7101
  %7104 = fmul fast float %7102, %7093
  %7105 = fmul fast float %7103, %7094
  %7106 = call float @dx.op.unary.f32(i32 6, float %7104)  ; FAbs(value)
  %7107 = call float @dx.op.unary.f32(i32 6, float %7105)  ; FAbs(value)
  %7108 = extractvalue %dx.types.CBufRet.f32 %6961, 0
  %7109 = call float @dx.op.binary.f32(i32 35, float %7106, float %7107)  ; FMax(a,b)
  %7110 = fsub fast float %7108, %7109
  %7111 = call float @dx.op.unary.f32(i32 7, float %7110)  ; Saturate(value)
  %7112 = call float @dx.op.binary.f32(i32 36, float %7111, float %7089)  ; FMin(a,b)
  %7113 = fmul fast float %7112, %7023
  %7114 = fsub fast float %7085, %7113
  %7115 = fsub fast float %7086, %7085
  %7116 = fsub fast float %7115, %7113
  %7117 = call float @dx.op.binary.f32(i32 35, float %7085, float %7086)  ; FMax(a,b)
  %7118 = call float @dx.op.binary.f32(i32 35, float %7113, float %7117)  ; FMax(a,b)
  %7119 = fcmp fast olt float %7118, 1.000000e+00
  br i1 %7119, label %7120, label %7518, !dx.controlflow.hints !97

; <label>:7120                                    ; preds = %7084
  %7121 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %7122 = extractvalue %dx.types.CBufRet.f32 %7121, 0
  %7123 = fcmp fast une float %7122, 0.000000e+00
  br i1 %7123, label %7124, label %7518, !dx.controlflow.hints !98

; <label>:7124                                    ; preds = %7120
  %7125 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %7126 = extractvalue %dx.types.CBufRet.f32 %7125, 0
  %7127 = extractvalue %dx.types.CBufRet.f32 %7125, 1
  %7128 = extractvalue %dx.types.CBufRet.f32 %7125, 2
  %7129 = extractvalue %dx.types.CBufRet.f32 %7125, 3
  %7130 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %7131 = extractvalue %dx.types.CBufRet.f32 %7130, 0
  %7132 = extractvalue %dx.types.CBufRet.f32 %7130, 1
  %7133 = extractvalue %dx.types.CBufRet.f32 %7130, 2
  %7134 = extractvalue %dx.types.CBufRet.f32 %7130, 3
  %7135 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %7136 = extractvalue %dx.types.CBufRet.f32 %7135, 0
  %7137 = extractvalue %dx.types.CBufRet.f32 %7135, 1
  %7138 = extractvalue %dx.types.CBufRet.f32 %7135, 2
  %7139 = extractvalue %dx.types.CBufRet.f32 %7135, 3
  %7140 = fmul fast float %7126, %6966
  %7141 = call float @dx.op.tertiary.f32(i32 46, float %6967, float %7127, float %7140)  ; FMad(a,b,c)
  %7142 = call float @dx.op.tertiary.f32(i32 46, float %6968, float %7128, float %7141)  ; FMad(a,b,c)
  %7143 = fadd fast float %7142, %7129
  %7144 = fmul fast float %7131, %6966
  %7145 = call float @dx.op.tertiary.f32(i32 46, float %6967, float %7132, float %7144)  ; FMad(a,b,c)
  %7146 = call float @dx.op.tertiary.f32(i32 46, float %6968, float %7133, float %7145)  ; FMad(a,b,c)
  %7147 = fadd fast float %7146, %7134
  %7148 = fmul fast float %7136, %6966
  %7149 = call float @dx.op.tertiary.f32(i32 46, float %6967, float %7137, float %7148)  ; FMad(a,b,c)
  %7150 = call float @dx.op.tertiary.f32(i32 46, float %6968, float %7138, float %7149)  ; FMad(a,b,c)
  %7151 = fadd fast float %7150, %7139
  %7152 = fcmp fast oge float %7143, 1.000000e+00
  %7153 = fcmp fast oge float %7147, 1.000000e+00
  %7154 = or i1 %7152, %7153
  %7155 = fcmp fast olt float %7143, 0.000000e+00
  %7156 = fcmp fast olt float %7147, 0.000000e+00
  %7157 = or i1 %7155, %7156
  %7158 = or i1 %7154, %7157
  br i1 %7158, label %7518, label %7159, !dx.controlflow.hints !99

; <label>:7159                                    ; preds = %7124
  %7160 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %7161 = extractvalue %dx.types.CBufRet.f32 %7160, 0
  %7162 = extractvalue %dx.types.CBufRet.f32 %7160, 1
  %7163 = extractvalue %dx.types.CBufRet.f32 %7160, 2
  %7164 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %7165 = extractvalue %dx.types.CBufRet.i32 %7164, 2
  %7166 = uitofp i32 %7165 to float
  %7167 = extractvalue %dx.types.CBufRet.i32 %7164, 3
  %7168 = uitofp i32 %7167 to float
  %7169 = extractvalue %dx.types.CBufRet.f32 %7160, 3
  %7170 = fmul fast float %7169, 2.000000e+00
  %7171 = fsub fast float %7143, %7161
  %7172 = fsub fast float %7147, %7162
  %7173 = fmul fast float %7170, %7171
  %7174 = fmul fast float %7170, %7172
  %7175 = fdiv fast float 1.000000e+00, %6949
  %7176 = fmul fast float %7174, %7175
  %7177 = call float @dx.op.unary.f32(i32 6, float %7176)  ; FAbs(value)
  %7178 = fmul fast float %7163, %6968
  %7179 = fmul fast float %7178, %7170
  %7180 = call float @dx.op.unary.f32(i32 6, float %7179)  ; FAbs(value)
  %7181 = call float @dx.op.unary.f32(i32 6, float %7173)  ; FAbs(value)
  %7182 = call float @dx.op.binary.f32(i32 35, float %7180, float %7177)  ; FMax(a,b)
  %7183 = call float @dx.op.binary.f32(i32 35, float %7181, float %7182)  ; FMax(a,b)
  %7184 = fmul fast float %7183, 2.000000e+00
  %7185 = call float @dx.op.unary.f32(i32 23, float %7184)  ; Log(value)
  %7186 = call float @dx.op.binary.f32(i32 35, float %7185, float %7166)  ; FMax(a,b)
  %7187 = call float @dx.op.unary.f32(i32 22, float %7186)  ; Frc(value)
  %7188 = fadd fast float %7187, 0xBFEA666660000000
  %7189 = fmul fast float %7188, 8.000000e+00
  %7190 = call float @dx.op.unary.f32(i32 7, float %7189)  ; Saturate(value)
  %7191 = call float @dx.op.unary.f32(i32 27, float %7186)  ; Round_ni(value)
  %7192 = fadd fast float %7191, %7190
  %7193 = call float @dx.op.binary.f32(i32 36, float %7192, float %7168)  ; FMin(a,b)
  %7194 = call float @dx.op.unary.f32(i32 27, float %7193)  ; Round_ni(value)
  %7195 = fsub fast float -0.000000e+00, %7194
  %7196 = call float @dx.op.unary.f32(i32 21, float %7195)  ; Exp(value)
  %7197 = fmul fast float %7196, %7170
  %7198 = fmul fast float %7197, %7143
  %7199 = fmul fast float %7197, %7147
  %7200 = fmul fast float %7198, 2.500000e-01
  %7201 = fmul fast float %7199, 2.500000e-01
  %7202 = fadd fast float %7200, 5.000000e-01
  %7203 = fadd fast float %7201, 5.000000e-01
  %7204 = fsub fast float %7168, %7166
  %7205 = fptoui float %7204 to i32
  %7206 = add i32 %7205, 320
  %7207 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 %7206)  ; CBufferLoadLegacy(handle,regIndex)
  %7208 = extractvalue %dx.types.CBufRet.f32 %7207, 0
  %7209 = extractvalue %dx.types.CBufRet.f32 %7207, 1
  %7210 = fcmp fast une float %7193, %7168
  %7211 = fsub fast float %7143, %7208
  %7212 = fsub fast float %7147, %7209
  %7213 = call float @dx.op.unary.f32(i32 6, float %7211)  ; FAbs(value)
  %7214 = call float @dx.op.unary.f32(i32 6, float %7212)  ; FAbs(value)
  %7215 = fmul fast float %7213, %7197
  %7216 = fmul fast float %7214, %7197
  %7217 = fcmp fast olt float %7215, 1.000000e+00
  %7218 = fcmp fast olt float %7216, 1.000000e+00
  %7219 = and i1 %7217, %7218
  %7220 = or i1 %7210, %7219
  br i1 %7220, label %7221, label %7518, !dx.controlflow.hints !100

; <label>:7221                                    ; preds = %7159
  %7222 = fmul fast float %7199, 5.000000e-01
  %7223 = fmul fast float %7198, 5.000000e-01
  %7224 = fadd fast float %7222, 5.000000e-01
  %7225 = fadd fast float %7223, 5.000000e-01
  %7226 = sitofp i32 %7165 to float
  %7227 = fsub fast float %7193, %7226
  %7228 = call float @dx.op.unary.f32(i32 27, float %7227)  ; Round_ni(value)
  %7229 = call float @dx.op.unary.f32(i32 22, float %7193)  ; Frc(value)
  %7230 = call float @dx.op.unary.f32(i32 22, float %7225)  ; Frc(value)
  %7231 = call float @dx.op.unary.f32(i32 22, float %7224)  ; Frc(value)
  %7232 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %44, float %7230, float %7231, float %7228, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7233 = extractvalue %dx.types.ResRet.f32 %7232, 0
  %7234 = extractvalue %dx.types.ResRet.f32 %7232, 1
  %7235 = extractvalue %dx.types.ResRet.f32 %7232, 2
  %7236 = extractvalue %dx.types.ResRet.f32 %7232, 3
  %7237 = fcmp fast ogt float %7229, 0.000000e+00
  br i1 %7237, label %7238, label %7259, !dx.controlflow.hints !101

; <label>:7238                                    ; preds = %7221
  %7239 = fadd fast float %7228, 1.000000e+00
  %7240 = call float @dx.op.unary.f32(i32 22, float %7202)  ; Frc(value)
  %7241 = call float @dx.op.unary.f32(i32 22, float %7203)  ; Frc(value)
  %7242 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %44, float %7240, float %7241, float %7239, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7243 = extractvalue %dx.types.ResRet.f32 %7242, 0
  %7244 = extractvalue %dx.types.ResRet.f32 %7242, 1
  %7245 = extractvalue %dx.types.ResRet.f32 %7242, 2
  %7246 = extractvalue %dx.types.ResRet.f32 %7242, 3
  %7247 = fsub fast float %7243, %7233
  %7248 = fsub fast float %7244, %7234
  %7249 = fsub fast float %7245, %7235
  %7250 = fsub fast float %7246, %7236
  %7251 = fmul fast float %7247, %7229
  %7252 = fmul fast float %7248, %7229
  %7253 = fmul fast float %7249, %7229
  %7254 = fmul fast float %7250, %7229
  %7255 = fadd fast float %7251, %7233
  %7256 = fadd fast float %7252, %7234
  %7257 = fadd fast float %7253, %7235
  %7258 = fadd fast float %7254, %7236
  br label %7259

; <label>:7259                                    ; preds = %7238, %7221
  %7260 = phi float [ %7255, %7238 ], [ %7233, %7221 ]
  %7261 = phi float [ %7256, %7238 ], [ %7234, %7221 ]
  %7262 = phi float [ %7257, %7238 ], [ %7235, %7221 ]
  %7263 = phi float [ %7258, %7238 ], [ %7236, %7221 ]
  %7264 = fadd fast float %7260, -5.000000e-01
  %7265 = fadd fast float %7262, -5.000000e-01
  %7266 = fmul fast float %7264, 0xBFD5555560000000
  %7267 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %7265, float %7266)  ; FMad(a,b,c)
  %7268 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %7261, float 0.000000e+00)  ; FMad(a,b,c)
  %7269 = fadd fast float %7268, %7263
  %7270 = fmul fast float %7264, -7.500000e-01
  %7271 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %7265, float %7270)  ; FMad(a,b,c)
  %7272 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %7261, float 0.000000e+00)  ; FMad(a,b,c)
  %7273 = fadd fast float %7272, %7263
  %7274 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %7275 = extractvalue %dx.types.CBufRet.f32 %7274, 0
  %7276 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %7277 = extractvalue %dx.types.CBufRet.f32 %7276, 0
  %7278 = extractvalue %dx.types.CBufRet.f32 %7276, 1
  %7279 = extractvalue %dx.types.CBufRet.f32 %7276, 2
  %7280 = extractvalue %dx.types.CBufRet.f32 %7276, 3
  %7281 = fsub fast float %7277, %7267
  %7282 = fsub fast float %7278, %7269
  %7283 = fsub fast float %7279, %7271
  %7284 = fsub fast float %7280, %7273
  %7285 = fmul fast float %7281, %7275
  %7286 = fmul fast float %7282, %7275
  %7287 = fmul fast float %7283, %7275
  %7288 = fmul fast float %7284, %7275
  %7289 = fadd fast float %7285, %7267
  %7290 = fadd fast float %7286, %7269
  %7291 = fadd fast float %7287, %7271
  %7292 = fadd fast float %7288, %7273
  %7293 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %7294 = extractvalue %dx.types.ResRet.i32 %7293, 0
  %7295 = and i32 %7294, 536870911
  %7296 = uitofp i32 %7295 to float
  %7297 = fmul fast float %7296, %7143
  %7298 = fmul fast float %7296, %7147
  %7299 = fptoui float %7297 to i32
  %7300 = fptoui float %7298 to i32
  %7301 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %7302 = extractvalue %dx.types.ResRet.i32 %7301, 0
  %7303 = and i32 %7302, 31
  %7304 = lshr i32 %7299, %7303
  %7305 = lshr i32 %7300, %7303
  %7306 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %7307 = extractvalue %dx.types.ResRet.i32 %7306, 0
  %7308 = and i32 %7307, 31
  %7309 = shl i32 1, %7308
  %7310 = call i32 @dx.op.binary.i32(i32 40, i32 %7309, i32 4)  ; UMin(a,b)
  %7311 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %7312 = extractvalue %dx.types.ResRet.i32 %7311, 0
  %7313 = extractvalue %dx.types.ResRet.i32 %7311, 1
  %7314 = icmp eq i32 %7310, 0
  br i1 %7314, label %7356, label %7315

; <label>:7315                                    ; preds = %7259
  br label %7316

; <label>:7316                                    ; preds = %7344, %7315
  %7317 = phi i32 [ %7347, %7344 ], [ 0, %7315 ]
  %7318 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %7319 = extractvalue %dx.types.ResRet.i32 %7318, 0
  %7320 = lshr i32 %7319, 16
  %7321 = and i32 %7320, 31
  %7322 = shl i32 %7305, %7321
  %7323 = add i32 %7322, %7304
  %7324 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %7325 = extractvalue %dx.types.ResRet.i32 %7324, 0
  %7326 = and i32 %7325, 31
  %7327 = shl i32 %7323, %7326
  %7328 = add i32 %7327, %7317
  %7329 = shl i32 %7328, 2
  %7330 = add i32 %7329, 32
  %7331 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %7330, i32 undef)  ; BufferLoad(srv,index,wot)
  %7332 = extractvalue %dx.types.ResRet.i32 %7331, 0
  %7333 = icmp slt i32 %7332, 0
  %7334 = getelementptr [12 x float], [12 x float]* %99, i32 0, i32 %7317
  %7335 = getelementptr [12 x float], [12 x float]* %100, i32 0, i32 %7317
  %7336 = bitcast float* %7334 to i32*
  %7337 = bitcast float* %7335 to i32*
  br i1 %7333, label %7338, label %7344

; <label>:7338                                    ; preds = %7316
  %7339 = and i32 %7332, 1073741823
  %7340 = add nuw nsw i32 %7339, 20
  %7341 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %7340, i32 undef)  ; BufferLoad(srv,index,wot)
  %7342 = extractvalue %dx.types.ResRet.i32 %7341, 0
  %7343 = extractvalue %dx.types.ResRet.i32 %7341, 1
  br label %7344

; <label>:7344                                    ; preds = %7338, %7316
  %7345 = phi i32 [ %7342, %7338 ], [ %7312, %7316 ]
  %7346 = phi i32 [ %7343, %7338 ], [ %7313, %7316 ]
  store i32 %7345, i32* %7336, align 4
  store i32 %7346, i32* %7337, align 4
  %7347 = add nuw i32 %7317, 1
  %7348 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %7349 = extractvalue %dx.types.CBufRet.i32 %7348, 2
  %7350 = icmp eq i32 %7349, 0
  %7351 = icmp ugt i32 %7332, -1073741825
  %7352 = and i1 %7351, %7350
  %7353 = icmp ult i32 %7347, %7310
  %7354 = and i1 %7352, %7353
  br i1 %7354, label %7316, label %7355

; <label>:7355                                    ; preds = %7344
  br label %7356

; <label>:7356                                    ; preds = %7355, %7259
  %7357 = phi i32 [ 0, %7259 ], [ %7347, %7355 ]
  %7358 = extractvalue %dx.types.CBufRet.f32 %7121, 2
  %7359 = fptoui float %7358 to i32
  %7360 = icmp eq i32 %7359, 0
  br i1 %7360, label %7412, label %7361

; <label>:7361                                    ; preds = %7356
  br label %7362

; <label>:7362                                    ; preds = %7407, %7361
  %7363 = phi i32 [ %7408, %7407 ], [ %7357, %7361 ]
  %7364 = phi i32 [ %7409, %7407 ], [ 0, %7361 ]
  %7365 = lshr i32 %7364, 2
  %7366 = and i32 %7364, 3
  %7367 = add nuw nsw i32 %7365, 83
  %7368 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 %7367)  ; CBufferLoadLegacy(handle,regIndex)
  %7369 = extractvalue %dx.types.CBufRet.i32 %7368, 0
  %7370 = extractvalue %dx.types.CBufRet.i32 %7368, 1
  %7371 = extractvalue %dx.types.CBufRet.i32 %7368, 2
  %7372 = extractvalue %dx.types.CBufRet.i32 %7368, 3
  %7373 = getelementptr inbounds [4 x i32], [4 x i32]* %50, i32 0, i32 0
  store i32 %7369, i32* %7373, align 4
  %7374 = getelementptr inbounds [4 x i32], [4 x i32]* %50, i32 0, i32 1
  store i32 %7370, i32* %7374, align 4
  %7375 = getelementptr inbounds [4 x i32], [4 x i32]* %50, i32 0, i32 2
  store i32 %7371, i32* %7375, align 4
  %7376 = getelementptr inbounds [4 x i32], [4 x i32]* %50, i32 0, i32 3
  store i32 %7372, i32* %7376, align 4
  %7377 = getelementptr inbounds [4 x i32], [4 x i32]* %50, i32 0, i32 %7366
  %7378 = load i32, i32* %7377, align 4, !tbaa !102, !noalias !106
  %7379 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %7380 = extractvalue %dx.types.ResRet.i32 %7379, 0
  %7381 = lshr i32 %7380, 16
  %7382 = and i32 %7381, 31
  %7383 = shl i32 %7305, %7382
  %7384 = add i32 %7383, %7304
  %7385 = shl i32 %7384, 2
  %7386 = add i32 %7385, %7378
  %7387 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %7386, i32 undef)  ; BufferLoad(srv,index,wot)
  %7388 = extractvalue %dx.types.ResRet.i32 %7387, 0
  %7389 = icmp eq i32 %7388, 0
  br i1 %7389, label %7407, label %7390

; <label>:7390                                    ; preds = %7362
  %7391 = icmp slt i32 %7388, 0
  %7392 = getelementptr [12 x float], [12 x float]* %99, i32 0, i32 %7363
  %7393 = getelementptr [12 x float], [12 x float]* %100, i32 0, i32 %7363
  %7394 = bitcast float* %7392 to i32*
  %7395 = bitcast float* %7393 to i32*
  br i1 %7391, label %7396, label %7403

; <label>:7396                                    ; preds = %7390
  %7397 = and i32 %7388, 1073741823
  %7398 = add i32 %7378, 20
  %7399 = add i32 %7398, %7397
  %7400 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %7399, i32 undef)  ; BufferLoad(srv,index,wot)
  %7401 = extractvalue %dx.types.ResRet.i32 %7400, 0
  %7402 = extractvalue %dx.types.ResRet.i32 %7400, 1
  br label %7403

; <label>:7403                                    ; preds = %7396, %7390
  %7404 = phi i32 [ %7401, %7396 ], [ %7312, %7390 ]
  %7405 = phi i32 [ %7402, %7396 ], [ %7313, %7390 ]
  store i32 %7404, i32* %7394, align 4
  store i32 %7405, i32* %7395, align 4
  %7406 = add i32 %7363, 1
  br label %7407

; <label>:7407                                    ; preds = %7403, %7362
  %7408 = phi i32 [ %7363, %7362 ], [ %7406, %7403 ]
  %7409 = add nuw i32 %7364, 1
  %7410 = icmp eq i32 %7409, %7359
  br i1 %7410, label %7411, label %7362

; <label>:7411                                    ; preds = %7407
  br label %7412

; <label>:7412                                    ; preds = %7411, %7356
  %7413 = phi i32 [ %7357, %7356 ], [ %7408, %7411 ]
  %7414 = icmp eq i32 %7413, 1
  %7415 = getelementptr [12 x float], [12 x float]* %99, i32 0, i32 0
  %7416 = getelementptr [12 x float], [12 x float]* %100, i32 0, i32 0
  br i1 %7414, label %7417, label %7420

; <label>:7417                                    ; preds = %7412
  %7418 = load float, float* %7415, align 4
  %7419 = load float, float* %7416, align 4
  br label %7447

; <label>:7420                                    ; preds = %7412
  %7421 = load float, float* %7415, align 4
  %7422 = load float, float* %7416, align 4
  %7423 = fdiv fast float 1.000000e+00, %7422
  %7424 = fsub fast float %7421, %7423
  %7425 = icmp ugt i32 %7413, 1
  br i1 %7425, label %7426, label %7442

; <label>:7426                                    ; preds = %7420
  br label %7427

; <label>:7427                                    ; preds = %7427, %7426
  %7428 = phi float [ %7437, %7427 ], [ %7424, %7426 ]
  %7429 = phi float [ %7438, %7427 ], [ %7421, %7426 ]
  %7430 = phi i32 [ %7439, %7427 ], [ 1, %7426 ]
  %7431 = getelementptr [12 x float], [12 x float]* %99, i32 0, i32 %7430
  %7432 = load float, float* %7431, align 4
  %7433 = getelementptr [12 x float], [12 x float]* %100, i32 0, i32 %7430
  %7434 = load float, float* %7433, align 4
  %7435 = fdiv fast float 1.000000e+00, %7434
  %7436 = fsub fast float %7432, %7435
  %7437 = call float @dx.op.binary.f32(i32 36, float %7428, float %7436)  ; FMin(a,b)
  %7438 = call float @dx.op.binary.f32(i32 35, float %7429, float %7432)  ; FMax(a,b)
  %7439 = add nuw i32 %7430, 1
  %7440 = icmp eq i32 %7439, %7413
  br i1 %7440, label %7441, label %7427

; <label>:7441                                    ; preds = %7427
  br label %7442

; <label>:7442                                    ; preds = %7441, %7420
  %7443 = phi float [ %7424, %7420 ], [ %7437, %7441 ]
  %7444 = phi float [ %7421, %7420 ], [ %7438, %7441 ]
  %7445 = fsub fast float %7444, %7443
  %7446 = fdiv fast float 1.000000e+00, %7445
  br label %7447

; <label>:7447                                    ; preds = %7442, %7417
  %7448 = phi float [ %7418, %7417 ], [ %7444, %7442 ]
  %7449 = phi float [ %7419, %7417 ], [ %7446, %7442 ]
  %7450 = fadd fast float %7151, %7448
  %7451 = fmul fast float %7450, %7449
  %7452 = call float @dx.op.unary.f32(i32 7, float %7451)  ; Saturate(value)
  %7453 = fmul fast float %7452, 2.000000e+00
  %7454 = fsub fast float 1.000000e+00, %7453
  %7455 = fmul fast float %7289, %7289
  %7456 = fsub fast float %7290, %7455
  %7457 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %7456)  ; FMax(a,b)
  %7458 = fdiv fast float 1.000000e+00, %7457
  %7459 = fmul fast float %7290, %7289
  %7460 = fsub fast float %7291, %7459
  %7461 = fsub fast float %7454, %7289
  %7462 = fmul fast float %7454, %7454
  %7463 = fsub fast float %7462, %7290
  %7464 = fmul fast float %7458, %7460
  %7465 = fmul fast float %7464, %7461
  %7466 = fsub fast float %7463, %7465
  %7467 = fmul fast float %7290, %7290
  %7468 = fsub fast float %7292, %7467
  %7469 = fmul fast float %7460, %7460
  %7470 = fmul fast float %7469, %7458
  %7471 = fsub fast float %7468, %7470
  %7472 = fdiv fast float %7466, %7471
  %7473 = fmul fast float %7472, %7460
  %7474 = fsub fast float %7461, %7473
  %7475 = fmul fast float %7474, %7458
  %7476 = fmul fast float %7475, %7289
  %7477 = fsub fast float 1.000000e+00, %7476
  %7478 = fmul fast float %7472, %7290
  %7479 = fsub fast float %7477, %7478
  %7480 = fmul fast float %7475, %7475
  %7481 = fmul fast float %7472, 4.000000e+00
  %7482 = fmul fast float %7481, %7479
  %7483 = fsub fast float %7480, %7482
  %7484 = call float @dx.op.unary.f32(i32 24, float %7483)  ; Sqrt(value)
  %7485 = fcmp fast oge float %7475, 0.000000e+00
  %7486 = fsub fast float -0.000000e+00, %7484
  %7487 = select i1 %7485, float %7486, float %7484
  %7488 = fsub fast float %7487, %7475
  %7489 = fdiv fast float %7488, %7472
  %7490 = fdiv fast float %7479, %7488
  %7491 = fmul fast float %7489, 5.000000e-01
  %7492 = fmul fast float %7490, 2.000000e+00
  %7493 = select i1 %7485, float %7491, float %7492
  %7494 = select i1 %7485, float %7492, float %7491
  %7495 = call float @dx.op.binary.f32(i32 35, float %7493, float %7494)  ; FMax(a,b)
  %7496 = call float @dx.op.binary.f32(i32 36, float %7493, float %7494)  ; FMin(a,b)
  %7497 = fcmp fast ogt float %7454, %7495
  %7498 = fsub fast float %7454, %7496
  %7499 = fsub fast float %7454, %7495
  %7500 = fsub fast float %7495, %7496
  %7501 = select i1 %7497, float %7499, float %7500
  %7502 = fmul float %7498, %7501
  %7503 = select i1 %7497, float %7496, float %7454
  %7504 = fcmp fast ogt float %7454, %7496
  %7505 = fmul fast float %7503, %7495
  %7506 = fadd fast float %7503, %7495
  %7507 = fmul fast float %7506, %7289
  %7508 = fadd fast float %7505, %7290
  %7509 = fsub fast float %7508, %7507
  %7510 = fdiv fast float %7509, %7502
  %7511 = select i1 %7504, float %7510, float 0.000000e+00
  %7512 = fsub fast float 1.000000e+00, %7511
  %7513 = select i1 %7497, float %7512, float %7511
  %7514 = call float @dx.op.unary.f32(i32 7, float %7513)  ; Saturate(value)
  %7515 = extractvalue %dx.types.CBufRet.f32 %7274, 3
  %7516 = fmul fast float %7515, %7514
  %7517 = fsub fast float 1.000000e+00, %7516
  br label %7518

; <label>:7518                                    ; preds = %7447, %7159, %7124, %7120, %7084
  %7519 = phi float [ 1.000000e+00, %7084 ], [ %7517, %7447 ], [ 1.000000e+00, %7124 ], [ 1.000000e+00, %7159 ], [ 1.000000e+00, %7120 ]
  %7520 = fcmp fast ogt float %7116, 0.000000e+00
  br i1 %7520, label %7521, label %7685, !dx.controlflow.hints !115

; <label>:7521                                    ; preds = %7518
  %7522 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %7523 = extractvalue %dx.types.CBufRet.f32 %7522, 2
  %7524 = fadd fast float %7523, %6997
  %7525 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %7526 = extractvalue %dx.types.CBufRet.f32 %7525, 2
  %7527 = extractvalue %dx.types.CBufRet.f32 %7525, 3
  %7528 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %7529 = extractvalue %dx.types.CBufRet.f32 %7528, 2
  %7530 = call float @dx.op.binary.f32(i32 35, float %7524, float 0.000000e+00)  ; FMax(a,b)
  %7531 = fadd fast float %7530, 0x3F10000000000000
  %7532 = fcmp fast oeq float %7529, 0.000000e+00
  br i1 %7532, label %7533, label %7600

; <label>:7533                                    ; preds = %7521
  %7534 = extractvalue %dx.types.CBufRet.f32 %7525, 1
  %7535 = extractvalue %dx.types.CBufRet.f32 %7525, 0
  %7536 = fmul fast float %7535, %7015
  %7537 = fmul fast float %7534, %7016
  %7538 = fadd fast float %7536, 5.000000e-01
  %7539 = call float @dx.op.unary.f32(i32 27, float %7538)  ; Round_ni(value)
  %7540 = fadd fast float %7537, 5.000000e-01
  %7541 = call float @dx.op.unary.f32(i32 27, float %7540)  ; Round_ni(value)
  %7542 = fsub fast float %7538, %7539
  %7543 = fsub fast float %7540, %7541
  %7544 = fadd fast float %7539, -5.000000e-01
  %7545 = fadd fast float %7541, -5.000000e-01
  %7546 = fmul fast float %7542, 2.000000e+00
  %7547 = fsub fast float 3.000000e+00, %7546
  %7548 = fadd fast float %7546, 1.000000e+00
  %7549 = fsub fast float 2.000000e+00, %7542
  %7550 = bitcast float %7547 to i32
  %7551 = sub nsw i32 2129859010, %7550
  %7552 = bitcast i32 %7551 to float
  %7553 = fmul fast float %7552, %7549
  %7554 = fadd fast float %7553, -1.000000e+00
  %7555 = bitcast float %7548 to i32
  %7556 = sub nsw i32 2129859010, %7555
  %7557 = bitcast i32 %7556 to float
  %7558 = fmul fast float %7557, %7542
  %7559 = fadd fast float %7558, 1.000000e+00
  %7560 = fmul fast float %7543, 2.000000e+00
  %7561 = fsub fast float 3.000000e+00, %7560
  %7562 = fadd fast float %7560, 1.000000e+00
  %7563 = fsub fast float 2.000000e+00, %7543
  %7564 = bitcast float %7561 to i32
  %7565 = sub nsw i32 2129859010, %7564
  %7566 = bitcast i32 %7565 to float
  %7567 = fmul fast float %7566, %7563
  %7568 = fadd fast float %7567, -1.000000e+00
  %7569 = bitcast float %7562 to i32
  %7570 = sub nsw i32 2129859010, %7569
  %7571 = bitcast i32 %7570 to float
  %7572 = fmul fast float %7571, %7543
  %7573 = fadd fast float %7572, 1.000000e+00
  %7574 = fadd fast float %7554, %7544
  %7575 = fmul fast float %7574, %7526
  %7576 = fadd fast float %7568, %7545
  %7577 = fmul fast float %7576, %7527
  %7578 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %47, float %7575, float %7577, float undef, float undef, i32 0, i32 0, i32 undef, float %7531)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7579 = extractvalue %dx.types.ResRet.f32 %7578, 0
  %7580 = fmul fast float %7579, %7547
  %7581 = fadd fast float %7559, %7544
  %7582 = fmul fast float %7581, %7526
  %7583 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %47, float %7582, float %7577, float undef, float undef, i32 0, i32 0, i32 undef, float %7531)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7584 = extractvalue %dx.types.ResRet.f32 %7583, 0
  %7585 = fmul fast float %7584, %7548
  %7586 = fadd fast float %7573, %7545
  %7587 = fmul fast float %7586, %7527
  %7588 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %47, float %7575, float %7587, float undef, float undef, i32 0, i32 0, i32 undef, float %7531)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7589 = extractvalue %dx.types.ResRet.f32 %7588, 0
  %7590 = fmul fast float %7589, %7547
  %7591 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %47, float %7582, float %7587, float undef, float undef, i32 0, i32 0, i32 undef, float %7531)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7592 = extractvalue %dx.types.ResRet.f32 %7591, 0
  %7593 = fmul fast float %7592, %7548
  %7594 = fadd fast float %7593, %7590
  %7595 = fmul fast float %7594, %7562
  %7596 = fadd fast float %7585, %7580
  %7597 = fmul fast float %7596, %7561
  %7598 = fadd fast float %7597, %7595
  %7599 = fmul fast float %7598, 6.250000e-02
  br label %7685

; <label>:7600                                    ; preds = %7521
  %7601 = fmul fast float %305, 0x401921FB60000000
  %7602 = call float @dx.op.unary.f32(i32 13, float %7601)  ; Sin(value)
  %7603 = call float @dx.op.unary.f32(i32 12, float %7601)  ; Cos(value)
  %7604 = fsub fast float -0.000000e+00, %7602
  br label %7605

; <label>:7605                                    ; preds = %7654, %7600
  %7606 = phi float [ 0.000000e+00, %7600 ], [ %7649, %7654 ]
  %7607 = phi float [ 0.000000e+00, %7600 ], [ %7651, %7654 ]
  %7608 = phi i32 [ 0, %7600 ], [ %7655, %7654 ]
  %7609 = mul i32 %7608, 2
  %7610 = add i32 0, %7609
  %7611 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7610
  %7612 = load float, float* %7611, align 4
  %7613 = mul i32 %7608, 2
  %7614 = add i32 1, %7613
  %7615 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7614
  %7616 = load float, float* %7615, align 4
  %7617 = fmul fast float %7612, %7603
  %7618 = call float @dx.op.tertiary.f32(i32 46, float %7616, float %7604, float %7617)  ; FMad(a,b,c)
  %7619 = fmul fast float %7612, %7602
  %7620 = call float @dx.op.tertiary.f32(i32 46, float %7616, float %7603, float %7619)  ; FMad(a,b,c)
  %7621 = fmul fast float %7618, %7529
  %7622 = fmul fast float %7620, %7529
  %7623 = fadd fast float %7621, %7015
  %7624 = fadd fast float %7622, %7016
  %7625 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %16, %dx.types.Handle %46, float %7623, float %7624, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7626 = extractvalue %dx.types.ResRet.f32 %7625, 0
  %7627 = extractvalue %dx.types.ResRet.f32 %7625, 1
  %7628 = extractvalue %dx.types.ResRet.f32 %7625, 2
  %7629 = extractvalue %dx.types.ResRet.f32 %7625, 3
  %7630 = getelementptr inbounds [4 x float], [4 x float]* %104, i32 0, i32 0
  store float %7626, float* %7630, align 4
  %7631 = getelementptr inbounds [4 x float], [4 x float]* %104, i32 0, i32 1
  store float %7627, float* %7631, align 4
  %7632 = getelementptr inbounds [4 x float], [4 x float]* %104, i32 0, i32 2
  store float %7628, float* %7632, align 4
  %7633 = getelementptr inbounds [4 x float], [4 x float]* %104, i32 0, i32 3
  store float %7629, float* %7633, align 4
  %7634 = fsub fast float %7626, %7531
  %7635 = fcmp fast olt float %7634, 0.000000e+00
  %7636 = select i1 %7635, float 0.000000e+00, float 1.000000e+00
  %7637 = fadd fast float %7636, %7606
  %7638 = fmul fast float %7636, %7634
  %7639 = fadd fast float %7638, %7607
  br label %7640

; <label>:7640                                    ; preds = %7640, %7605
  %7641 = phi i32 [ 1, %7605 ], [ %7652, %7640 ]
  %7642 = phi float [ %7639, %7605 ], [ %7651, %7640 ]
  %7643 = phi float [ %7637, %7605 ], [ %7649, %7640 ]
  %7644 = getelementptr [4 x float], [4 x float]* %104, i32 0, i32 %7641
  %7645 = load float, float* %7644, align 4, !tbaa !116, !noalias !106
  %7646 = fsub fast float %7645, %7531
  %7647 = fcmp fast olt float %7646, 0.000000e+00
  %7648 = select i1 %7647, float 0.000000e+00, float 1.000000e+00
  %7649 = fadd fast float %7648, %7643
  %7650 = fmul fast float %7648, %7646
  %7651 = fadd fast float %7650, %7642
  %7652 = add nuw nsw i32 %7641, 1
  %7653 = icmp eq i32 %7652, 4
  br i1 %7653, label %7654, label %7640, !llvm.loop !118

; <label>:7654                                    ; preds = %7640
  %7655 = add nuw nsw i32 %7608, 1
  %7656 = icmp eq i32 %7655, 8
  br i1 %7656, label %7657, label %7605, !llvm.loop !119

; <label>:7657                                    ; preds = %7654
  %7658 = fdiv fast float 1.000000e+00, %7649
  %7659 = fmul fast float %7658, %7651
  %7660 = fdiv fast float 1.000000e+00, %7531
  %7661 = fmul fast float %7659, %7660
  %7662 = call float @dx.op.unary.f32(i32 7, float %7661)  ; Saturate(value)
  %7663 = call float @dx.op.binary.f32(i32 35, float %7662, float 0.000000e+00)  ; FMax(a,b)
  %7664 = fmul fast float %7649, 3.125000e-02
  %7665 = call float @dx.op.unary.f32(i32 7, float %7664)  ; Saturate(value)
  %7666 = fmul fast float %7665, 2.000000e+00
  %7667 = fadd fast float %7666, -1.000000e+00
  %7668 = fcmp fast ogt float %7667, 0.000000e+00
  %7669 = fcmp fast olt float %7667, 0.000000e+00
  %7670 = zext i1 %7668 to i32
  %7671 = zext i1 %7669 to i32
  %7672 = sub nsw i32 %7670, %7671
  %7673 = sitofp i32 %7672 to float
  %7674 = fmul fast float %7673, %7667
  %7675 = fsub fast float 1.000000e+00, %7674
  %7676 = fmul fast float %7675, %7675
  %7677 = fmul fast float %7676, %7675
  %7678 = fsub fast float %7675, %7677
  %7679 = fmul fast float %7678, %7663
  %7680 = fsub fast float 1.000000e+00, %7677
  %7681 = fsub fast float %7680, %7679
  %7682 = fmul fast float %7673, 5.000000e-01
  %7683 = fmul fast float %7682, %7681
  %7684 = fsub fast float 5.000000e-01, %7683
  br label %7685

; <label>:7685                                    ; preds = %7657, %7533, %7518
  %7686 = phi float [ 1.000000e+00, %7518 ], [ %7599, %7533 ], [ %7684, %7657 ]
  %7687 = fcmp fast ogt float %7114, 0.000000e+00
  br i1 %7687, label %7688, label %7852, !dx.controlflow.hints !120

; <label>:7688                                    ; preds = %7685
  %7689 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %7690 = extractvalue %dx.types.CBufRet.f32 %7689, 1
  %7691 = fadd fast float %7690, %6997
  %7692 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %7693 = extractvalue %dx.types.CBufRet.f32 %7692, 2
  %7694 = extractvalue %dx.types.CBufRet.f32 %7692, 3
  %7695 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %7696 = extractvalue %dx.types.CBufRet.f32 %7695, 1
  %7697 = call float @dx.op.binary.f32(i32 35, float %7691, float 0.000000e+00)  ; FMax(a,b)
  %7698 = fadd fast float %7697, 0x3F10000000000000
  %7699 = fcmp fast oeq float %7696, 0.000000e+00
  br i1 %7699, label %7700, label %7767

; <label>:7700                                    ; preds = %7688
  %7701 = extractvalue %dx.types.CBufRet.f32 %7692, 1
  %7702 = extractvalue %dx.types.CBufRet.f32 %7692, 0
  %7703 = fmul fast float %7702, %7007
  %7704 = fmul fast float %7701, %7008
  %7705 = fadd fast float %7703, 5.000000e-01
  %7706 = call float @dx.op.unary.f32(i32 27, float %7705)  ; Round_ni(value)
  %7707 = fadd fast float %7704, 5.000000e-01
  %7708 = call float @dx.op.unary.f32(i32 27, float %7707)  ; Round_ni(value)
  %7709 = fsub fast float %7705, %7706
  %7710 = fsub fast float %7707, %7708
  %7711 = fadd fast float %7706, -5.000000e-01
  %7712 = fadd fast float %7708, -5.000000e-01
  %7713 = fmul fast float %7709, 2.000000e+00
  %7714 = fsub fast float 3.000000e+00, %7713
  %7715 = fadd fast float %7713, 1.000000e+00
  %7716 = fsub fast float 2.000000e+00, %7709
  %7717 = bitcast float %7714 to i32
  %7718 = sub nsw i32 2129859010, %7717
  %7719 = bitcast i32 %7718 to float
  %7720 = fmul fast float %7719, %7716
  %7721 = fadd fast float %7720, -1.000000e+00
  %7722 = bitcast float %7715 to i32
  %7723 = sub nsw i32 2129859010, %7722
  %7724 = bitcast i32 %7723 to float
  %7725 = fmul fast float %7724, %7709
  %7726 = fadd fast float %7725, 1.000000e+00
  %7727 = fmul fast float %7710, 2.000000e+00
  %7728 = fsub fast float 3.000000e+00, %7727
  %7729 = fadd fast float %7727, 1.000000e+00
  %7730 = fsub fast float 2.000000e+00, %7710
  %7731 = bitcast float %7728 to i32
  %7732 = sub nsw i32 2129859010, %7731
  %7733 = bitcast i32 %7732 to float
  %7734 = fmul fast float %7733, %7730
  %7735 = fadd fast float %7734, -1.000000e+00
  %7736 = bitcast float %7729 to i32
  %7737 = sub nsw i32 2129859010, %7736
  %7738 = bitcast i32 %7737 to float
  %7739 = fmul fast float %7738, %7710
  %7740 = fadd fast float %7739, 1.000000e+00
  %7741 = fadd fast float %7721, %7711
  %7742 = fmul fast float %7741, %7693
  %7743 = fadd fast float %7735, %7712
  %7744 = fmul fast float %7743, %7694
  %7745 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %47, float %7742, float %7744, float undef, float undef, i32 0, i32 0, i32 undef, float %7698)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7746 = extractvalue %dx.types.ResRet.f32 %7745, 0
  %7747 = fmul fast float %7746, %7714
  %7748 = fadd fast float %7726, %7711
  %7749 = fmul fast float %7748, %7693
  %7750 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %47, float %7749, float %7744, float undef, float undef, i32 0, i32 0, i32 undef, float %7698)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7751 = extractvalue %dx.types.ResRet.f32 %7750, 0
  %7752 = fmul fast float %7751, %7715
  %7753 = fadd fast float %7740, %7712
  %7754 = fmul fast float %7753, %7694
  %7755 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %47, float %7742, float %7754, float undef, float undef, i32 0, i32 0, i32 undef, float %7698)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7756 = extractvalue %dx.types.ResRet.f32 %7755, 0
  %7757 = fmul fast float %7756, %7714
  %7758 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %47, float %7749, float %7754, float undef, float undef, i32 0, i32 0, i32 undef, float %7698)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7759 = extractvalue %dx.types.ResRet.f32 %7758, 0
  %7760 = fmul fast float %7759, %7715
  %7761 = fadd fast float %7760, %7757
  %7762 = fmul fast float %7761, %7729
  %7763 = fadd fast float %7752, %7747
  %7764 = fmul fast float %7763, %7728
  %7765 = fadd fast float %7764, %7762
  %7766 = fmul fast float %7765, 6.250000e-02
  br label %7852

; <label>:7767                                    ; preds = %7688
  %7768 = fmul fast float %305, 0x401921FB60000000
  %7769 = call float @dx.op.unary.f32(i32 13, float %7768)  ; Sin(value)
  %7770 = call float @dx.op.unary.f32(i32 12, float %7768)  ; Cos(value)
  %7771 = fsub fast float -0.000000e+00, %7769
  br label %7772

; <label>:7772                                    ; preds = %7821, %7767
  %7773 = phi float [ 0.000000e+00, %7767 ], [ %7816, %7821 ]
  %7774 = phi float [ 0.000000e+00, %7767 ], [ %7818, %7821 ]
  %7775 = phi i32 [ 0, %7767 ], [ %7822, %7821 ]
  %7776 = mul i32 %7775, 2
  %7777 = add i32 0, %7776
  %7778 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7777
  %7779 = load float, float* %7778, align 4
  %7780 = mul i32 %7775, 2
  %7781 = add i32 1, %7780
  %7782 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7781
  %7783 = load float, float* %7782, align 4
  %7784 = fmul fast float %7779, %7770
  %7785 = call float @dx.op.tertiary.f32(i32 46, float %7783, float %7771, float %7784)  ; FMad(a,b,c)
  %7786 = fmul fast float %7779, %7769
  %7787 = call float @dx.op.tertiary.f32(i32 46, float %7783, float %7770, float %7786)  ; FMad(a,b,c)
  %7788 = fmul fast float %7785, %7696
  %7789 = fmul fast float %7787, %7696
  %7790 = fadd fast float %7788, %7007
  %7791 = fadd fast float %7789, %7008
  %7792 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %17, %dx.types.Handle %46, float %7790, float %7791, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7793 = extractvalue %dx.types.ResRet.f32 %7792, 0
  %7794 = extractvalue %dx.types.ResRet.f32 %7792, 1
  %7795 = extractvalue %dx.types.ResRet.f32 %7792, 2
  %7796 = extractvalue %dx.types.ResRet.f32 %7792, 3
  %7797 = getelementptr inbounds [4 x float], [4 x float]* %103, i32 0, i32 0
  store float %7793, float* %7797, align 4
  %7798 = getelementptr inbounds [4 x float], [4 x float]* %103, i32 0, i32 1
  store float %7794, float* %7798, align 4
  %7799 = getelementptr inbounds [4 x float], [4 x float]* %103, i32 0, i32 2
  store float %7795, float* %7799, align 4
  %7800 = getelementptr inbounds [4 x float], [4 x float]* %103, i32 0, i32 3
  store float %7796, float* %7800, align 4
  %7801 = fsub fast float %7793, %7698
  %7802 = fcmp fast olt float %7801, 0.000000e+00
  %7803 = select i1 %7802, float 0.000000e+00, float 1.000000e+00
  %7804 = fadd fast float %7803, %7773
  %7805 = fmul fast float %7803, %7801
  %7806 = fadd fast float %7805, %7774
  br label %7807

; <label>:7807                                    ; preds = %7807, %7772
  %7808 = phi i32 [ 1, %7772 ], [ %7819, %7807 ]
  %7809 = phi float [ %7806, %7772 ], [ %7818, %7807 ]
  %7810 = phi float [ %7804, %7772 ], [ %7816, %7807 ]
  %7811 = getelementptr [4 x float], [4 x float]* %103, i32 0, i32 %7808
  %7812 = load float, float* %7811, align 4, !tbaa !116, !noalias !106
  %7813 = fsub fast float %7812, %7698
  %7814 = fcmp fast olt float %7813, 0.000000e+00
  %7815 = select i1 %7814, float 0.000000e+00, float 1.000000e+00
  %7816 = fadd fast float %7815, %7810
  %7817 = fmul fast float %7815, %7813
  %7818 = fadd fast float %7817, %7809
  %7819 = add nuw nsw i32 %7808, 1
  %7820 = icmp eq i32 %7819, 4
  br i1 %7820, label %7821, label %7807, !llvm.loop !118

; <label>:7821                                    ; preds = %7807
  %7822 = add nuw nsw i32 %7775, 1
  %7823 = icmp eq i32 %7822, 8
  br i1 %7823, label %7824, label %7772, !llvm.loop !119

; <label>:7824                                    ; preds = %7821
  %7825 = fdiv fast float 1.000000e+00, %7816
  %7826 = fmul fast float %7825, %7818
  %7827 = fdiv fast float 1.000000e+00, %7698
  %7828 = fmul fast float %7826, %7827
  %7829 = call float @dx.op.unary.f32(i32 7, float %7828)  ; Saturate(value)
  %7830 = call float @dx.op.binary.f32(i32 35, float %7829, float 0.000000e+00)  ; FMax(a,b)
  %7831 = fmul fast float %7816, 3.125000e-02
  %7832 = call float @dx.op.unary.f32(i32 7, float %7831)  ; Saturate(value)
  %7833 = fmul fast float %7832, 2.000000e+00
  %7834 = fadd fast float %7833, -1.000000e+00
  %7835 = fcmp fast ogt float %7834, 0.000000e+00
  %7836 = fcmp fast olt float %7834, 0.000000e+00
  %7837 = zext i1 %7835 to i32
  %7838 = zext i1 %7836 to i32
  %7839 = sub nsw i32 %7837, %7838
  %7840 = sitofp i32 %7839 to float
  %7841 = fmul fast float %7840, %7834
  %7842 = fsub fast float 1.000000e+00, %7841
  %7843 = fmul fast float %7842, %7842
  %7844 = fmul fast float %7843, %7842
  %7845 = fsub fast float %7842, %7844
  %7846 = fmul fast float %7845, %7830
  %7847 = fsub fast float 1.000000e+00, %7844
  %7848 = fsub fast float %7847, %7846
  %7849 = fmul fast float %7840, 5.000000e-01
  %7850 = fmul fast float %7849, %7848
  %7851 = fsub fast float 5.000000e-01, %7850
  br label %7852

; <label>:7852                                    ; preds = %7824, %7700, %7685
  %7853 = phi float [ 1.000000e+00, %7685 ], [ %7766, %7700 ], [ %7851, %7824 ]
  %7854 = fcmp fast ogt float %7113, 0.000000e+00
  br i1 %7854, label %7855, label %8173, !dx.controlflow.hints !121

; <label>:7855                                    ; preds = %7852
  %7856 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %7857 = extractvalue %dx.types.CBufRet.f32 %7856, 0
  %7858 = fadd fast float %7857, %6997
  %7859 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %7860 = extractvalue %dx.types.CBufRet.f32 %7859, 2
  %7861 = extractvalue %dx.types.CBufRet.f32 %7859, 3
  %7862 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %7863 = extractvalue %dx.types.CBufRet.f32 %7862, 0
  %7864 = call float @dx.op.binary.f32(i32 35, float %7858, float 0.000000e+00)  ; FMax(a,b)
  %7865 = fadd fast float %7864, 0x3F10000000000000
  %7866 = fcmp fast oeq float %7863, 0.000000e+00
  br i1 %7000, label %7867, label %8020, !dx.controlflow.hints !122

; <label>:7867                                    ; preds = %7855
  br i1 %7866, label %7868, label %7935

; <label>:7868                                    ; preds = %7867
  %7869 = extractvalue %dx.types.CBufRet.f32 %7859, 1
  %7870 = extractvalue %dx.types.CBufRet.f32 %7859, 0
  %7871 = fmul fast float %7870, %6989
  %7872 = fmul fast float %7869, %6993
  %7873 = fadd fast float %7871, 5.000000e-01
  %7874 = call float @dx.op.unary.f32(i32 27, float %7873)  ; Round_ni(value)
  %7875 = fadd fast float %7872, 5.000000e-01
  %7876 = call float @dx.op.unary.f32(i32 27, float %7875)  ; Round_ni(value)
  %7877 = fsub fast float %7873, %7874
  %7878 = fsub fast float %7875, %7876
  %7879 = fadd fast float %7874, -5.000000e-01
  %7880 = fadd fast float %7876, -5.000000e-01
  %7881 = fmul fast float %7877, 2.000000e+00
  %7882 = fsub fast float 3.000000e+00, %7881
  %7883 = fadd fast float %7881, 1.000000e+00
  %7884 = fsub fast float 2.000000e+00, %7877
  %7885 = bitcast float %7882 to i32
  %7886 = sub nsw i32 2129859010, %7885
  %7887 = bitcast i32 %7886 to float
  %7888 = fmul fast float %7887, %7884
  %7889 = fadd fast float %7888, -1.000000e+00
  %7890 = bitcast float %7883 to i32
  %7891 = sub nsw i32 2129859010, %7890
  %7892 = bitcast i32 %7891 to float
  %7893 = fmul fast float %7892, %7877
  %7894 = fadd fast float %7893, 1.000000e+00
  %7895 = fmul fast float %7878, 2.000000e+00
  %7896 = fsub fast float 3.000000e+00, %7895
  %7897 = fadd fast float %7895, 1.000000e+00
  %7898 = fsub fast float 2.000000e+00, %7878
  %7899 = bitcast float %7896 to i32
  %7900 = sub nsw i32 2129859010, %7899
  %7901 = bitcast i32 %7900 to float
  %7902 = fmul fast float %7901, %7898
  %7903 = fadd fast float %7902, -1.000000e+00
  %7904 = bitcast float %7897 to i32
  %7905 = sub nsw i32 2129859010, %7904
  %7906 = bitcast i32 %7905 to float
  %7907 = fmul fast float %7906, %7878
  %7908 = fadd fast float %7907, 1.000000e+00
  %7909 = fadd fast float %7889, %7879
  %7910 = fmul fast float %7909, %7860
  %7911 = fadd fast float %7903, %7880
  %7912 = fmul fast float %7911, %7861
  %7913 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %47, float %7910, float %7912, float undef, float undef, i32 0, i32 0, i32 undef, float %7865)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7914 = extractvalue %dx.types.ResRet.f32 %7913, 0
  %7915 = fmul fast float %7914, %7882
  %7916 = fadd fast float %7894, %7879
  %7917 = fmul fast float %7916, %7860
  %7918 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %47, float %7917, float %7912, float undef, float undef, i32 0, i32 0, i32 undef, float %7865)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7919 = extractvalue %dx.types.ResRet.f32 %7918, 0
  %7920 = fmul fast float %7919, %7883
  %7921 = fadd fast float %7908, %7880
  %7922 = fmul fast float %7921, %7861
  %7923 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %47, float %7910, float %7922, float undef, float undef, i32 0, i32 0, i32 undef, float %7865)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7924 = extractvalue %dx.types.ResRet.f32 %7923, 0
  %7925 = fmul fast float %7924, %7882
  %7926 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %47, float %7917, float %7922, float undef, float undef, i32 0, i32 0, i32 undef, float %7865)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7927 = extractvalue %dx.types.ResRet.f32 %7926, 0
  %7928 = fmul fast float %7927, %7883
  %7929 = fadd fast float %7928, %7925
  %7930 = fmul fast float %7929, %7897
  %7931 = fadd fast float %7920, %7915
  %7932 = fmul fast float %7931, %7896
  %7933 = fadd fast float %7932, %7930
  %7934 = fmul fast float %7933, 6.250000e-02
  br label %8173

; <label>:7935                                    ; preds = %7867
  %7936 = fmul fast float %305, 0x401921FB60000000
  %7937 = call float @dx.op.unary.f32(i32 13, float %7936)  ; Sin(value)
  %7938 = call float @dx.op.unary.f32(i32 12, float %7936)  ; Cos(value)
  %7939 = fsub fast float -0.000000e+00, %7937
  br label %7940

; <label>:7940                                    ; preds = %7989, %7935
  %7941 = phi float [ 0.000000e+00, %7935 ], [ %7984, %7989 ]
  %7942 = phi float [ 0.000000e+00, %7935 ], [ %7986, %7989 ]
  %7943 = phi i32 [ 0, %7935 ], [ %7990, %7989 ]
  %7944 = mul i32 %7943, 2
  %7945 = add i32 0, %7944
  %7946 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7945
  %7947 = load float, float* %7946, align 4
  %7948 = mul i32 %7943, 2
  %7949 = add i32 1, %7948
  %7950 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7949
  %7951 = load float, float* %7950, align 4
  %7952 = fmul fast float %7947, %7938
  %7953 = call float @dx.op.tertiary.f32(i32 46, float %7951, float %7939, float %7952)  ; FMad(a,b,c)
  %7954 = fmul fast float %7947, %7937
  %7955 = call float @dx.op.tertiary.f32(i32 46, float %7951, float %7938, float %7954)  ; FMad(a,b,c)
  %7956 = fmul fast float %7953, %7863
  %7957 = fmul fast float %7955, %7863
  %7958 = fadd fast float %7956, %6989
  %7959 = fadd fast float %7957, %6993
  %7960 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %19, %dx.types.Handle %46, float %7958, float %7959, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7961 = extractvalue %dx.types.ResRet.f32 %7960, 0
  %7962 = extractvalue %dx.types.ResRet.f32 %7960, 1
  %7963 = extractvalue %dx.types.ResRet.f32 %7960, 2
  %7964 = extractvalue %dx.types.ResRet.f32 %7960, 3
  %7965 = getelementptr inbounds [4 x float], [4 x float]* %102, i32 0, i32 0
  store float %7961, float* %7965, align 4
  %7966 = getelementptr inbounds [4 x float], [4 x float]* %102, i32 0, i32 1
  store float %7962, float* %7966, align 4
  %7967 = getelementptr inbounds [4 x float], [4 x float]* %102, i32 0, i32 2
  store float %7963, float* %7967, align 4
  %7968 = getelementptr inbounds [4 x float], [4 x float]* %102, i32 0, i32 3
  store float %7964, float* %7968, align 4
  %7969 = fsub fast float %7961, %7865
  %7970 = fcmp fast olt float %7969, 0.000000e+00
  %7971 = select i1 %7970, float 0.000000e+00, float 1.000000e+00
  %7972 = fadd fast float %7971, %7941
  %7973 = fmul fast float %7971, %7969
  %7974 = fadd fast float %7973, %7942
  br label %7975

; <label>:7975                                    ; preds = %7975, %7940
  %7976 = phi i32 [ 1, %7940 ], [ %7987, %7975 ]
  %7977 = phi float [ %7974, %7940 ], [ %7986, %7975 ]
  %7978 = phi float [ %7972, %7940 ], [ %7984, %7975 ]
  %7979 = getelementptr [4 x float], [4 x float]* %102, i32 0, i32 %7976
  %7980 = load float, float* %7979, align 4, !tbaa !116, !noalias !106
  %7981 = fsub fast float %7980, %7865
  %7982 = fcmp fast olt float %7981, 0.000000e+00
  %7983 = select i1 %7982, float 0.000000e+00, float 1.000000e+00
  %7984 = fadd fast float %7983, %7978
  %7985 = fmul fast float %7983, %7981
  %7986 = fadd fast float %7985, %7977
  %7987 = add nuw nsw i32 %7976, 1
  %7988 = icmp eq i32 %7987, 4
  br i1 %7988, label %7989, label %7975, !llvm.loop !118

; <label>:7989                                    ; preds = %7975
  %7990 = add nuw nsw i32 %7943, 1
  %7991 = icmp eq i32 %7990, 8
  br i1 %7991, label %7992, label %7940, !llvm.loop !119

; <label>:7992                                    ; preds = %7989
  %7993 = fdiv fast float 1.000000e+00, %7984
  %7994 = fmul fast float %7993, %7986
  %7995 = fdiv fast float 1.000000e+00, %7865
  %7996 = fmul fast float %7994, %7995
  %7997 = call float @dx.op.unary.f32(i32 7, float %7996)  ; Saturate(value)
  %7998 = call float @dx.op.binary.f32(i32 35, float %7997, float 0.000000e+00)  ; FMax(a,b)
  %7999 = fmul fast float %7984, 3.125000e-02
  %8000 = call float @dx.op.unary.f32(i32 7, float %7999)  ; Saturate(value)
  %8001 = fmul fast float %8000, 2.000000e+00
  %8002 = fadd fast float %8001, -1.000000e+00
  %8003 = fcmp fast ogt float %8002, 0.000000e+00
  %8004 = fcmp fast olt float %8002, 0.000000e+00
  %8005 = zext i1 %8003 to i32
  %8006 = zext i1 %8004 to i32
  %8007 = sub nsw i32 %8005, %8006
  %8008 = sitofp i32 %8007 to float
  %8009 = fmul fast float %8008, %8002
  %8010 = fsub fast float 1.000000e+00, %8009
  %8011 = fmul fast float %8010, %8010
  %8012 = fmul fast float %8011, %8010
  %8013 = fsub fast float %8010, %8012
  %8014 = fmul fast float %8013, %7998
  %8015 = fsub fast float 1.000000e+00, %8012
  %8016 = fsub fast float %8015, %8014
  %8017 = fmul fast float %8008, 5.000000e-01
  %8018 = fmul fast float %8017, %8016
  %8019 = fsub fast float 5.000000e-01, %8018
  br label %8173

; <label>:8020                                    ; preds = %7855
  br i1 %7866, label %8021, label %8088

; <label>:8021                                    ; preds = %8020
  %8022 = extractvalue %dx.types.CBufRet.f32 %7859, 1
  %8023 = extractvalue %dx.types.CBufRet.f32 %7859, 0
  %8024 = fmul fast float %8023, %6989
  %8025 = fmul fast float %8022, %6993
  %8026 = fadd fast float %8024, 5.000000e-01
  %8027 = call float @dx.op.unary.f32(i32 27, float %8026)  ; Round_ni(value)
  %8028 = fadd fast float %8025, 5.000000e-01
  %8029 = call float @dx.op.unary.f32(i32 27, float %8028)  ; Round_ni(value)
  %8030 = fsub fast float %8026, %8027
  %8031 = fsub fast float %8028, %8029
  %8032 = fadd fast float %8027, -5.000000e-01
  %8033 = fadd fast float %8029, -5.000000e-01
  %8034 = fmul fast float %8030, 2.000000e+00
  %8035 = fsub fast float 3.000000e+00, %8034
  %8036 = fadd fast float %8034, 1.000000e+00
  %8037 = fsub fast float 2.000000e+00, %8030
  %8038 = bitcast float %8035 to i32
  %8039 = sub nsw i32 2129859010, %8038
  %8040 = bitcast i32 %8039 to float
  %8041 = fmul fast float %8040, %8037
  %8042 = fadd fast float %8041, -1.000000e+00
  %8043 = bitcast float %8036 to i32
  %8044 = sub nsw i32 2129859010, %8043
  %8045 = bitcast i32 %8044 to float
  %8046 = fmul fast float %8045, %8030
  %8047 = fadd fast float %8046, 1.000000e+00
  %8048 = fmul fast float %8031, 2.000000e+00
  %8049 = fsub fast float 3.000000e+00, %8048
  %8050 = fadd fast float %8048, 1.000000e+00
  %8051 = fsub fast float 2.000000e+00, %8031
  %8052 = bitcast float %8049 to i32
  %8053 = sub nsw i32 2129859010, %8052
  %8054 = bitcast i32 %8053 to float
  %8055 = fmul fast float %8054, %8051
  %8056 = fadd fast float %8055, -1.000000e+00
  %8057 = bitcast float %8050 to i32
  %8058 = sub nsw i32 2129859010, %8057
  %8059 = bitcast i32 %8058 to float
  %8060 = fmul fast float %8059, %8031
  %8061 = fadd fast float %8060, 1.000000e+00
  %8062 = fadd fast float %8042, %8032
  %8063 = fmul fast float %8062, %7860
  %8064 = fadd fast float %8056, %8033
  %8065 = fmul fast float %8064, %7861
  %8066 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %47, float %8063, float %8065, float undef, float undef, i32 0, i32 0, i32 undef, float %7865)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %8067 = extractvalue %dx.types.ResRet.f32 %8066, 0
  %8068 = fmul fast float %8067, %8035
  %8069 = fadd fast float %8047, %8032
  %8070 = fmul fast float %8069, %7860
  %8071 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %47, float %8070, float %8065, float undef, float undef, i32 0, i32 0, i32 undef, float %7865)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %8072 = extractvalue %dx.types.ResRet.f32 %8071, 0
  %8073 = fmul fast float %8072, %8036
  %8074 = fadd fast float %8061, %8033
  %8075 = fmul fast float %8074, %7861
  %8076 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %47, float %8063, float %8075, float undef, float undef, i32 0, i32 0, i32 undef, float %7865)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %8077 = extractvalue %dx.types.ResRet.f32 %8076, 0
  %8078 = fmul fast float %8077, %8035
  %8079 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %47, float %8070, float %8075, float undef, float undef, i32 0, i32 0, i32 undef, float %7865)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %8080 = extractvalue %dx.types.ResRet.f32 %8079, 0
  %8081 = fmul fast float %8080, %8036
  %8082 = fadd fast float %8081, %8078
  %8083 = fmul fast float %8082, %8050
  %8084 = fadd fast float %8073, %8068
  %8085 = fmul fast float %8084, %8049
  %8086 = fadd fast float %8085, %8083
  %8087 = fmul fast float %8086, 6.250000e-02
  br label %8173

; <label>:8088                                    ; preds = %8020
  %8089 = fmul fast float %305, 0x401921FB60000000
  %8090 = call float @dx.op.unary.f32(i32 13, float %8089)  ; Sin(value)
  %8091 = call float @dx.op.unary.f32(i32 12, float %8089)  ; Cos(value)
  %8092 = fsub fast float -0.000000e+00, %8090
  br label %8093

; <label>:8093                                    ; preds = %8142, %8088
  %8094 = phi float [ 0.000000e+00, %8088 ], [ %8137, %8142 ]
  %8095 = phi float [ 0.000000e+00, %8088 ], [ %8139, %8142 ]
  %8096 = phi i32 [ 0, %8088 ], [ %8143, %8142 ]
  %8097 = mul i32 %8096, 2
  %8098 = add i32 0, %8097
  %8099 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %8098
  %8100 = load float, float* %8099, align 4
  %8101 = mul i32 %8096, 2
  %8102 = add i32 1, %8101
  %8103 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %8102
  %8104 = load float, float* %8103, align 4
  %8105 = fmul fast float %8100, %8091
  %8106 = call float @dx.op.tertiary.f32(i32 46, float %8104, float %8092, float %8105)  ; FMad(a,b,c)
  %8107 = fmul fast float %8100, %8090
  %8108 = call float @dx.op.tertiary.f32(i32 46, float %8104, float %8091, float %8107)  ; FMad(a,b,c)
  %8109 = fmul fast float %8106, %7863
  %8110 = fmul fast float %8108, %7863
  %8111 = fadd fast float %8109, %6989
  %8112 = fadd fast float %8110, %6993
  %8113 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %18, %dx.types.Handle %46, float %8111, float %8112, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8114 = extractvalue %dx.types.ResRet.f32 %8113, 0
  %8115 = extractvalue %dx.types.ResRet.f32 %8113, 1
  %8116 = extractvalue %dx.types.ResRet.f32 %8113, 2
  %8117 = extractvalue %dx.types.ResRet.f32 %8113, 3
  %8118 = getelementptr inbounds [4 x float], [4 x float]* %101, i32 0, i32 0
  store float %8114, float* %8118, align 4
  %8119 = getelementptr inbounds [4 x float], [4 x float]* %101, i32 0, i32 1
  store float %8115, float* %8119, align 4
  %8120 = getelementptr inbounds [4 x float], [4 x float]* %101, i32 0, i32 2
  store float %8116, float* %8120, align 4
  %8121 = getelementptr inbounds [4 x float], [4 x float]* %101, i32 0, i32 3
  store float %8117, float* %8121, align 4
  %8122 = fsub fast float %8114, %7865
  %8123 = fcmp fast olt float %8122, 0.000000e+00
  %8124 = select i1 %8123, float 0.000000e+00, float 1.000000e+00
  %8125 = fadd fast float %8124, %8094
  %8126 = fmul fast float %8124, %8122
  %8127 = fadd fast float %8126, %8095
  br label %8128

; <label>:8128                                    ; preds = %8128, %8093
  %8129 = phi i32 [ 1, %8093 ], [ %8140, %8128 ]
  %8130 = phi float [ %8127, %8093 ], [ %8139, %8128 ]
  %8131 = phi float [ %8125, %8093 ], [ %8137, %8128 ]
  %8132 = getelementptr [4 x float], [4 x float]* %101, i32 0, i32 %8129
  %8133 = load float, float* %8132, align 4, !tbaa !116, !noalias !106
  %8134 = fsub fast float %8133, %7865
  %8135 = fcmp fast olt float %8134, 0.000000e+00
  %8136 = select i1 %8135, float 0.000000e+00, float 1.000000e+00
  %8137 = fadd fast float %8136, %8131
  %8138 = fmul fast float %8136, %8134
  %8139 = fadd fast float %8138, %8130
  %8140 = add nuw nsw i32 %8129, 1
  %8141 = icmp eq i32 %8140, 4
  br i1 %8141, label %8142, label %8128, !llvm.loop !118

; <label>:8142                                    ; preds = %8128
  %8143 = add nuw nsw i32 %8096, 1
  %8144 = icmp eq i32 %8143, 8
  br i1 %8144, label %8145, label %8093, !llvm.loop !119

; <label>:8145                                    ; preds = %8142
  %8146 = fdiv fast float 1.000000e+00, %8137
  %8147 = fmul fast float %8146, %8139
  %8148 = fdiv fast float 1.000000e+00, %7865
  %8149 = fmul fast float %8147, %8148
  %8150 = call float @dx.op.unary.f32(i32 7, float %8149)  ; Saturate(value)
  %8151 = call float @dx.op.binary.f32(i32 35, float %8150, float 0.000000e+00)  ; FMax(a,b)
  %8152 = fmul fast float %8137, 3.125000e-02
  %8153 = call float @dx.op.unary.f32(i32 7, float %8152)  ; Saturate(value)
  %8154 = fmul fast float %8153, 2.000000e+00
  %8155 = fadd fast float %8154, -1.000000e+00
  %8156 = fcmp fast ogt float %8155, 0.000000e+00
  %8157 = fcmp fast olt float %8155, 0.000000e+00
  %8158 = zext i1 %8156 to i32
  %8159 = zext i1 %8157 to i32
  %8160 = sub nsw i32 %8158, %8159
  %8161 = sitofp i32 %8160 to float
  %8162 = fmul fast float %8161, %8155
  %8163 = fsub fast float 1.000000e+00, %8162
  %8164 = fmul fast float %8163, %8163
  %8165 = fmul fast float %8164, %8163
  %8166 = fsub fast float %8163, %8165
  %8167 = fmul fast float %8166, %8151
  %8168 = fsub fast float 1.000000e+00, %8165
  %8169 = fsub fast float %8168, %8167
  %8170 = fmul fast float %8161, 5.000000e-01
  %8171 = fmul fast float %8170, %8169
  %8172 = fsub fast float 5.000000e-01, %8171
  br label %8173

; <label>:8173                                    ; preds = %8145, %8021, %7992, %7868, %7852
  %8174 = phi float [ 1.000000e+00, %7852 ], [ %7934, %7868 ], [ %8019, %7992 ], [ %8087, %8021 ], [ %8172, %8145 ]
  %8175 = fsub fast float %7686, %7519
  %8176 = fmul fast float %8175, %7086
  %8177 = fadd fast float %8176, %7519
  %8178 = fsub fast float %7853, %8177
  %8179 = fmul fast float %8178, %7085
  %8180 = fadd fast float %8179, %8177
  %8181 = fsub fast float %8174, %8180
  %8182 = fmul fast float %8181, %7113
  %8183 = fadd fast float %8182, %8180
  %8184 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %8185 = extractvalue %dx.types.CBufRet.f32 %8184, 2
  %8186 = fcmp fast ogt float %8185, 0.000000e+00
  br i1 %8186, label %8187, label %8227, !dx.controlflow.hints !123

; <label>:8187                                    ; preds = %8173
  %8188 = fcmp fast ugt float %8185, 0.000000e+00
  br i1 %8188, label %8189, label %8224

; <label>:8189                                    ; preds = %8187
  %8190 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %8191 = extractvalue %dx.types.CBufRet.f32 %8190, 0
  %8192 = extractvalue %dx.types.CBufRet.f32 %8190, 1
  %8193 = extractvalue %dx.types.CBufRet.f32 %8190, 2
  %8194 = extractvalue %dx.types.CBufRet.f32 %8190, 3
  %8195 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %8196 = extractvalue %dx.types.CBufRet.f32 %8195, 0
  %8197 = extractvalue %dx.types.CBufRet.f32 %8195, 1
  %8198 = extractvalue %dx.types.CBufRet.f32 %8195, 2
  %8199 = extractvalue %dx.types.CBufRet.f32 %8195, 3
  %8200 = extractvalue %dx.types.CBufRet.f32 %8184, 0
  %8201 = extractvalue %dx.types.CBufRet.f32 %8184, 1
  %8202 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %8203 = extractvalue %dx.types.CBufRet.f32 %8202, 0
  %8204 = extractvalue %dx.types.CBufRet.f32 %8202, 1
  %8205 = extractvalue %dx.types.CBufRet.f32 %8202, 2
  %8206 = fadd fast float %8203, %6966
  %8207 = fadd fast float %8204, %6967
  %8208 = fadd fast float %8205, %6968
  %8209 = fmul fast float %8206, %8191
  %8210 = call float @dx.op.tertiary.f32(i32 46, float %8192, float %8207, float %8209)  ; FMad(a,b,c)
  %8211 = call float @dx.op.tertiary.f32(i32 46, float %8193, float %8208, float %8210)  ; FMad(a,b,c)
  %8212 = fadd fast float %8211, %8194
  %8213 = fmul fast float %8206, %8196
  %8214 = call float @dx.op.tertiary.f32(i32 46, float %8197, float %8207, float %8213)  ; FMad(a,b,c)
  %8215 = call float @dx.op.tertiary.f32(i32 46, float %8198, float %8208, float %8214)  ; FMad(a,b,c)
  %8216 = fadd fast float %8215, %8199
  %8217 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %42, float %8212, float %8216, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %8218 = extractvalue %dx.types.ResRet.f32 %8217, 0
  %8219 = fmul fast float %8218, %8201
  %8220 = fadd fast float %8219, %8200
  %8221 = call float @dx.op.unary.f32(i32 7, float %8220)  ; Saturate(value)
  %8222 = fmul fast float %8221, %8185
  %8223 = fsub fast float 1.000000e+00, %8222
  br label %8224

; <label>:8224                                    ; preds = %8189, %8187
  %8225 = phi float [ %8223, %8189 ], [ 1.000000e+00, %8187 ]
  %8226 = fmul fast float %8225, %8183
  br label %8227

; <label>:8227                                    ; preds = %8224, %8173, %6946
  %8228 = phi float [ 1.000000e+00, %6946 ], [ %8226, %8224 ], [ %8183, %8173 ]
  %8229 = call float @dx.op.binary.f32(i32 36, float %8228, float %8228)  ; FMin(a,b)
  %8230 = call float @dx.op.binary.f32(i32 36, float %8228, float %8229)  ; FMin(a,b)
  %8231 = fcmp fast ogt float %8230, 0.000000e+00
  br i1 %8231, label %8232, label %8398, !dx.controlflow.hints !124

; <label>:8232                                    ; preds = %8227
  %8233 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %8234 = extractvalue %dx.types.CBufRet.f32 %8233, 0
  %8235 = extractvalue %dx.types.CBufRet.f32 %8233, 1
  %8236 = extractvalue %dx.types.CBufRet.f32 %8233, 2
  %8237 = extractvalue %dx.types.CBufRet.f32 %8233, 3
  %8238 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %8239 = extractvalue %dx.types.CBufRet.f32 %8238, 0
  %8240 = extractvalue %dx.types.CBufRet.f32 %8238, 1
  %8241 = extractvalue %dx.types.CBufRet.f32 %8238, 2
  %8242 = extractvalue %dx.types.CBufRet.f32 %8238, 3
  %8243 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %8244 = extractvalue %dx.types.CBufRet.f32 %8243, 0
  %8245 = extractvalue %dx.types.CBufRet.f32 %8243, 1
  %8246 = extractvalue %dx.types.CBufRet.f32 %8243, 2
  %8247 = extractvalue %dx.types.CBufRet.f32 %8243, 3
  %8248 = fmul fast float %8234, %6966
  %8249 = call float @dx.op.tertiary.f32(i32 46, float %6967, float %8235, float %8248)  ; FMad(a,b,c)
  %8250 = call float @dx.op.tertiary.f32(i32 46, float %6968, float %8236, float %8249)  ; FMad(a,b,c)
  %8251 = fadd fast float %8250, %8237
  %8252 = fmul fast float %8239, %6966
  %8253 = call float @dx.op.tertiary.f32(i32 46, float %6967, float %8240, float %8252)  ; FMad(a,b,c)
  %8254 = call float @dx.op.tertiary.f32(i32 46, float %6968, float %8241, float %8253)  ; FMad(a,b,c)
  %8255 = fadd fast float %8254, %8242
  %8256 = fmul fast float %8244, %6966
  %8257 = call float @dx.op.tertiary.f32(i32 46, float %6967, float %8245, float %8256)  ; FMad(a,b,c)
  %8258 = call float @dx.op.tertiary.f32(i32 46, float %6968, float %8246, float %8257)  ; FMad(a,b,c)
  %8259 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %8260 = extractvalue %dx.types.CBufRet.f32 %8259, 0
  %8261 = extractvalue %dx.types.CBufRet.f32 %8259, 1
  %8262 = extractvalue %dx.types.CBufRet.f32 %8259, 3
  %8263 = fmul fast float %8262, %8251
  %8264 = fmul fast float %8262, %8255
  %8265 = fadd fast float %8263, %8260
  %8266 = fadd fast float %8264, %8261
  %8267 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %8268 = extractvalue %dx.types.CBufRet.f32 %8267, 0
  %8269 = extractvalue %dx.types.CBufRet.f32 %8267, 1
  %8270 = fsub fast float %8265, %8268
  %8271 = fsub fast float %8266, %8269
  %8272 = fcmp fast olt float %8270, 0.000000e+00
  %8273 = fcmp fast olt float %8271, 0.000000e+00
  %8274 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %8275 = extractvalue %dx.types.CBufRet.f32 %8274, 0
  %8276 = extractvalue %dx.types.CBufRet.f32 %8274, 1
  %8277 = extractvalue %dx.types.CBufRet.f32 %8274, 2
  %8278 = extractvalue %dx.types.CBufRet.f32 %8274, 3
  %8279 = select i1 %8272, float %8275, float %8277
  %8280 = select i1 %8273, float %8276, float %8278
  %8281 = fmul fast float %8279, %8270
  %8282 = fmul fast float %8280, %8271
  %8283 = call float @dx.op.unary.f32(i32 6, float %8281)  ; FAbs(value)
  %8284 = call float @dx.op.unary.f32(i32 6, float %8282)  ; FAbs(value)
  %8285 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %8286 = extractvalue %dx.types.CBufRet.f32 %8285, 0
  %8287 = call float @dx.op.binary.f32(i32 35, float %8283, float %8284)  ; FMax(a,b)
  %8288 = fsub fast float %8286, %8287
  %8289 = call float @dx.op.unary.f32(i32 7, float %8288)  ; Saturate(value)
  %8290 = fcmp fast ogt float %8289, 0.000000e+00
  br i1 %8290, label %8291, label %8332, !dx.controlflow.hints !125

; <label>:8291                                    ; preds = %8232
  %8292 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %45, float %8265, float %8266, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8293 = extractvalue %dx.types.ResRet.f32 %8292, 1
  %8294 = fcmp fast ogt float %8293, 0.000000e+00
  br i1 %8294, label %8295, label %8327

; <label>:8295                                    ; preds = %8291
  %8296 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %45, float %8265, float %8266, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8297 = extractvalue %dx.types.ResRet.f32 %8296, 0
  %8298 = extractvalue %dx.types.ResRet.f32 %8296, 1
  %8299 = extractvalue %dx.types.ResRet.f32 %8296, 2
  %8300 = extractvalue %dx.types.ResRet.f32 %8296, 3
  %8301 = fsub fast float 1.000000e+00, %8247
  %8302 = fsub fast float %8301, %8258
  %8303 = fmul fast float %8302, 0x400921FB60000000
  %8304 = fadd fast float %8303, 0x3FF921FB60000000
  %8305 = call float @dx.op.unary.f32(i32 13, float %8304)  ; Sin(value)
  %8306 = fadd fast float %8305, -1.000000e+00
  %8307 = fmul fast float %8306, 0x3FD45F3060000000
  %8308 = fmul fast float %8302, 0x401921FB60000000
  %8309 = fadd fast float %8308, 0x400921FB60000000
  %8310 = call float @dx.op.unary.f32(i32 13, float %8309)  ; Sin(value)
  %8311 = fadd fast float %8310, 0x3E7777A5C0000000
  %8312 = fmul fast float %8311, 0x3FC45F3060000000
  %8313 = fmul fast float %8302, 0x4022D97C80000000
  %8314 = fadd fast float %8313, 0x4012D97C80000000
  %8315 = call float @dx.op.unary.f32(i32 13, float %8314)  ; Sin(value)
  %8316 = fadd fast float %8315, 1.000000e+00
  %8317 = fmul fast float %8316, 0x3FBB2995E0000000
  %8318 = fmul fast float %8302, 0x402921FB60000000
  %8319 = fadd fast float %8318, 0x401921FB60000000
  %8320 = call float @dx.op.unary.f32(i32 13, float %8319)  ; Sin(value)
  %8321 = fadd fast float %8320, 0xBE8777A5C0000000
  %8322 = fmul fast float %8321, 0x3FB45F3060000000
  %8323 = call float @dx.op.dot4.f32(i32 56, float %8297, float %8298, float %8299, float %8300, float %8307, float %8312, float %8317, float %8322)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %8324 = fmul fast float %8323, 0xBFF7154760000000
  %8325 = call float @dx.op.unary.f32(i32 21, float %8324)  ; Exp(value)
  %8326 = call float @dx.op.unary.f32(i32 7, float %8325)  ; Saturate(value)
  br label %8327

; <label>:8327                                    ; preds = %8295, %8291
  %8328 = phi float [ %8326, %8295 ], [ 1.000000e+00, %8291 ]
  %8329 = fadd fast float %8328, -1.000000e+00
  %8330 = fmul fast float %8329, %8289
  %8331 = fadd fast float %8330, 1.000000e+00
  br label %8332

; <label>:8332                                    ; preds = %8327, %8232
  %8333 = phi float [ %8331, %8327 ], [ 1.000000e+00, %8232 ]
  %8334 = fmul fast float %8333, %8228
  %8335 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %8336 = extractvalue %dx.types.CBufRet.f32 %8335, 0
  %8337 = extractvalue %dx.types.CBufRet.f32 %8335, 1
  %8338 = extractvalue %dx.types.CBufRet.f32 %8335, 2
  %8339 = fadd fast float %8336, %190
  %8340 = fadd fast float %8337, %191
  %8341 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %8342 = extractvalue %dx.types.CBufRet.f32 %8341, 1
  %8343 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %8344 = extractvalue %dx.types.CBufRet.f32 %8343, 0
  %8345 = extractvalue %dx.types.CBufRet.f32 %8343, 1
  %8346 = extractvalue %dx.types.CBufRet.f32 %8343, 2
  %8347 = fsub fast float -0.000000e+00, %8339
  %8348 = fsub fast float -0.000000e+00, %8340
  %8349 = fsub fast float -0.000000e+00, %192
  %8350 = fsub fast float %8349, %8338
  %8351 = fadd fast float %8350, %8342
  %8352 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %8347, float %8348, float %8351)  ; Dot3(ax,ay,az,bx,by,bz)
  %8353 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %8344, float %8345, float %8346)  ; Dot3(ax,ay,az,bx,by,bz)
  %8354 = fdiv fast float 1.000000e+00, %8353
  %8355 = fmul fast float %8354, %8352
  %8356 = fmul fast float %8344, %8355
  %8357 = fmul fast float %8345, %8355
  %8358 = fadd fast float %8356, %8339
  %8359 = fadd fast float %8357, %8340
  %8360 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %8361 = extractvalue %dx.types.CBufRet.f32 %8360, 0
  %8362 = extractvalue %dx.types.CBufRet.f32 %8360, 1
  %8363 = fsub fast float %8358, %8361
  %8364 = fsub fast float %8359, %8362
  %8365 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %8366 = extractvalue %dx.types.CBufRet.f32 %8365, 2
  %8367 = extractvalue %dx.types.CBufRet.f32 %8365, 3
  %8368 = fmul fast float %8363, %8366
  %8369 = fmul fast float %8364, %8367
  %8370 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %8371 = extractvalue %dx.types.CBufRet.i32 %8370, 3
  %8372 = icmp eq i32 %8371, 0
  br i1 %8372, label %8378, label %8373

; <label>:8373                                    ; preds = %8332
  %8374 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %44, float %8368, float %8369, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8375 = extractvalue %dx.types.ResRet.f32 %8374, 0
  %8376 = extractvalue %dx.types.ResRet.f32 %8374, 1
  %8377 = extractvalue %dx.types.ResRet.f32 %8374, 2
  br label %8383

; <label>:8378                                    ; preds = %8332
  %8379 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %45, float %8368, float %8369, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8380 = extractvalue %dx.types.ResRet.f32 %8379, 0
  %8381 = extractvalue %dx.types.ResRet.f32 %8379, 1
  %8382 = extractvalue %dx.types.ResRet.f32 %8379, 2
  br label %8383

; <label>:8383                                    ; preds = %8378, %8373
  %8384 = phi float [ %8375, %8373 ], [ %8380, %8378 ]
  %8385 = phi float [ %8376, %8373 ], [ %8381, %8378 ]
  %8386 = phi float [ %8377, %8373 ], [ %8382, %8378 ]
  %8387 = extractvalue %dx.types.CBufRet.f32 %8341, 2
  %8388 = fmul fast float %8387, %8384
  %8389 = extractvalue %dx.types.CBufRet.f32 %8341, 0
  %8390 = fsub fast float %8355, %8389
  %8391 = fsub fast float %8390, %8388
  %8392 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8391)  ; FMax(a,b)
  %8393 = fmul fast float %8392, %8385
  %8394 = call float @dx.op.binary.f32(i32 36, float %8386, float %8393)  ; FMin(a,b)
  %8395 = fmul fast float %8394, 0xBFF7154760000000
  %8396 = call float @dx.op.unary.f32(i32 21, float %8395)  ; Exp(value)
  %8397 = fmul fast float %8334, %8396
  br label %8398

; <label>:8398                                    ; preds = %8383, %8227
  %8399 = phi float [ %8397, %8383 ], [ %8228, %8227 ]
  %8400 = call float @dx.op.binary.f32(i32 36, float %8399, float %8399)  ; FMin(a,b)
  %8401 = call float @dx.op.binary.f32(i32 36, float %8399, float %8400)  ; FMin(a,b)
  %8402 = fcmp fast ogt float %8401, 0.000000e+00
  br i1 %8402, label %8403, label %8710, !dx.controlflow.hints !126

; <label>:8403                                    ; preds = %8398
  %8404 = fmul fast float %8399, %6958
  %8405 = fmul fast float %8399, %6959
  %8406 = fmul fast float %8399, %6960
  %8407 = fsub fast float %6947, %221
  %8408 = fsub fast float %6948, %222
  %8409 = fsub fast float %6949, %223
  %8410 = call float @dx.op.dot3.f32(i32 55, float %8407, float %8408, float %8409, float %8407, float %8408, float %8409)  ; Dot3(ax,ay,az,bx,by,bz)
  %8411 = call float @dx.op.unary.f32(i32 25, float %8410)  ; Rsqrt(value)
  %8412 = fmul fast float %8411, %8407
  %8413 = fmul fast float %8411, %8408
  %8414 = fmul fast float %8411, %8409
  %8415 = call float @dx.op.dot3.f32(i32 55, float %6947, float %6948, float %6949, float %6036, float %6037, float %6038)  ; Dot3(ax,ay,az,bx,by,bz)
  %8416 = call float @dx.op.dot3.f32(i32 55, float %5672, float %5673, float %5674, float %8412, float %8413, float %8414)  ; Dot3(ax,ay,az,bx,by,bz)
  %8417 = call float @dx.op.unary.f32(i32 7, float %8415)  ; Saturate(value)
  %8418 = fmul fast float %8417, %8417
  %8419 = fmul fast float %8418, %6068
  %8420 = call float @dx.op.unary.f32(i32 7, float %8419)  ; Saturate(value)
  %8421 = fmul fast float %8420, %8417
  %8422 = call float @dx.op.dot3.f32(i32 55, float %6036, float %6037, float %6038, float %8412, float %8413, float %8414)  ; Dot3(ax,ay,az,bx,by,bz)
  %8423 = fmul fast float %8422, %8422
  %8424 = call float @dx.op.unary.f32(i32 6, float %8415)  ; FAbs(value)
  %8425 = fsub fast float 1.000000e+00, %6061
  %8426 = fmul fast float %6043, %6043
  %8427 = fmul fast float %8426, %8425
  %8428 = fadd fast float %8427, %6061
  %8429 = bitcast float %8428 to i32
  %8430 = ashr i32 %8429, 1
  %8431 = add nsw i32 %8430, 532487669
  %8432 = bitcast i32 %8431 to float
  %8433 = fadd fast float %8432, %6043
  %8434 = fmul fast float %6061, %8423
  %8435 = fsub fast float 1.000000e+00, %8423
  %8436 = fadd fast float %8435, %8434
  %8437 = fmul fast float %8424, %8424
  %8438 = fmul fast float %8437, %8425
  %8439 = fadd fast float %8438, %6061
  %8440 = bitcast float %8439 to i32
  %8441 = ashr i32 %8440, 1
  %8442 = add nsw i32 %8441, 532487669
  %8443 = bitcast i32 %8442 to float
  %8444 = fadd fast float %8443, %8424
  %8445 = fmul fast float %8436, %8436
  %8446 = fmul fast float %8445, %8433
  %8447 = fmul fast float %8446, %8444
  %8448 = fdiv fast float 0x3FF0A00000000000, %8447
  %8449 = fmul fast float %8448, %6061
  %8450 = fmul fast float %6314, 0x3FF9999980000000
  %8451 = fsub fast float 5.000000e+00, %8450
  %8452 = call float @dx.op.unary.f32(i32 6, float %8416)  ; FAbs(value)
  %8453 = fsub fast float 1.000000e+00, %8452
  %8454 = fmul fast float %6314, 0x41D9660740000000
  %8455 = fadd fast float %8454, 0xC1EFBF8940000000
  %8456 = bitcast float %8453 to i32
  %8457 = sitofp i32 %8456 to float
  %8458 = fmul fast float %8457, %8451
  %8459 = fadd fast float %8455, %8458
  %8460 = fptosi float %8459 to i32
  %8461 = bitcast i32 %8460 to float
  %8462 = fsub fast float 1.000000e+00, %6030
  %8463 = fsub fast float 1.000000e+00, %6031
  %8464 = fsub fast float 1.000000e+00, %6041
  %8465 = fmul fast float %8461, %8462
  %8466 = fmul fast float %8461, %8463
  %8467 = fmul fast float %8461, %8464
  %8468 = fadd fast float %8465, %6030
  %8469 = fadd fast float %8466, %6031
  %8470 = fadd fast float %8467, %6041
  br i1 %6337, label %8471, label %8494

; <label>:8471                                    ; preds = %8403
  %8472 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %45, float %4719, float %8452, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8473 = extractvalue %dx.types.ResRet.f32 %8472, 0
  %8474 = extractvalue %dx.types.ResRet.f32 %8472, 1
  %8475 = extractvalue %dx.types.ResRet.f32 %8472, 2
  %8476 = fadd fast float %8473, -5.000000e-01
  %8477 = fadd fast float %8474, -5.000000e-01
  %8478 = fadd fast float %8475, -5.000000e-01
  %8479 = fmul fast float %6030, 4.000000e+00
  %8480 = fmul fast float %8479, %8462
  %8481 = fmul fast float %8480, %8476
  %8482 = fmul fast float %6031, 4.000000e+00
  %8483 = fmul fast float %8482, %8463
  %8484 = fmul fast float %8483, %8477
  %8485 = fmul fast float %6041, 4.000000e+00
  %8486 = fmul fast float %8485, %8464
  %8487 = fmul fast float %8486, %8478
  %8488 = fadd fast float %8481, %8468
  %8489 = fadd fast float %8484, %8469
  %8490 = fadd fast float %8487, %8470
  %8491 = call float @dx.op.unary.f32(i32 7, float %8488)  ; Saturate(value)
  %8492 = call float @dx.op.unary.f32(i32 7, float %8489)  ; Saturate(value)
  %8493 = call float @dx.op.unary.f32(i32 7, float %8490)  ; Saturate(value)
  br label %8494

; <label>:8494                                    ; preds = %8471, %8403
  %8495 = phi float [ %8491, %8471 ], [ %8468, %8403 ]
  %8496 = phi float [ %8492, %8471 ], [ %8469, %8403 ]
  %8497 = phi float [ %8493, %8471 ], [ %8470, %8403 ]
  %8498 = fmul fast float %8415, 9.843750e-01
  %8499 = fadd fast float %8498, 7.812500e-03
  %8500 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %38, %dx.types.Handle %45, float %8499, float %6318, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8501 = extractvalue %dx.types.ResRet.f32 %8500, 0
  %8502 = extractvalue %dx.types.ResRet.f32 %8500, 1
  %8503 = extractvalue %dx.types.ResRet.f32 %8500, 2
  %8504 = extractvalue %dx.types.ResRet.f32 %8500, 3
  %8505 = fsub fast float %8503, %8501
  %8506 = fsub fast float %8504, %8502
  %8507 = fmul fast float %8505, %6324
  %8508 = fmul fast float %8506, %6324
  %8509 = fadd fast float %8507, %8501
  %8510 = fadd fast float %8508, %8502
  %8511 = fmul fast float %8509, %6030
  %8512 = fmul fast float %8509, %6031
  %8513 = fmul fast float %8509, %6041
  %8514 = fadd fast float %8511, %8510
  %8515 = fadd fast float %8512, %8510
  %8516 = fadd fast float %8513, %8510
  br i1 %6337, label %8517, label %8540

; <label>:8517                                    ; preds = %8494
  %8518 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %45, float %4719, float %8415, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8519 = extractvalue %dx.types.ResRet.f32 %8518, 0
  %8520 = extractvalue %dx.types.ResRet.f32 %8518, 1
  %8521 = extractvalue %dx.types.ResRet.f32 %8518, 2
  %8522 = fadd fast float %8519, -5.000000e-01
  %8523 = fadd fast float %8520, -5.000000e-01
  %8524 = fadd fast float %8521, -5.000000e-01
  %8525 = fmul fast float %6030, 4.000000e+00
  %8526 = fmul fast float %8525, %8462
  %8527 = fmul fast float %8526, %8522
  %8528 = fmul fast float %6031, 4.000000e+00
  %8529 = fmul fast float %8528, %8463
  %8530 = fmul fast float %8529, %8523
  %8531 = fmul fast float %6041, 4.000000e+00
  %8532 = fmul fast float %8531, %8464
  %8533 = fmul fast float %8532, %8524
  %8534 = fadd fast float %8527, %8514
  %8535 = fadd fast float %8530, %8515
  %8536 = fadd fast float %8533, %8516
  %8537 = call float @dx.op.unary.f32(i32 7, float %8534)  ; Saturate(value)
  %8538 = call float @dx.op.unary.f32(i32 7, float %8535)  ; Saturate(value)
  %8539 = call float @dx.op.unary.f32(i32 7, float %8536)  ; Saturate(value)
  br label %8540

; <label>:8540                                    ; preds = %8517, %8494
  %8541 = phi float [ %8537, %8517 ], [ %8514, %8494 ]
  %8542 = phi float [ %8538, %8517 ], [ %8515, %8494 ]
  %8543 = phi float [ %8539, %8517 ], [ %8516, %8494 ]
  %8544 = call float @dx.op.binary.f32(i32 35, float %8542, float %8543)  ; FMax(a,b)
  %8545 = call float @dx.op.binary.f32(i32 35, float %8541, float %8544)  ; FMax(a,b)
  %8546 = fsub fast float 1.000000e+00, %8545
  %8547 = call float @dx.op.binary.f32(i32 35, float %8424, float 0x3F50624DE0000000)  ; FMax(a,b)
  %8548 = fdiv fast float %4035, %8547
  %8549 = fmul fast float %6856, %8548
  %8550 = fmul fast float %6858, %8548
  %8551 = fmul fast float %6860, %8548
  %8552 = call float @dx.op.unary.f32(i32 21, float %8549)  ; Exp(value)
  %8553 = call float @dx.op.unary.f32(i32 21, float %8550)  ; Exp(value)
  %8554 = call float @dx.op.unary.f32(i32 21, float %8551)  ; Exp(value)
  %8555 = call float @dx.op.unary.f32(i32 7, float %8552)  ; Saturate(value)
  %8556 = call float @dx.op.unary.f32(i32 7, float %8553)  ; Saturate(value)
  %8557 = call float @dx.op.unary.f32(i32 7, float %8554)  ; Saturate(value)
  %8558 = select i1 %6853, float %8555, float 0.000000e+00
  %8559 = select i1 %6854, float %8556, float 0.000000e+00
  %8560 = select i1 %6855, float %8557, float 0.000000e+00
  %8561 = fsub fast float -0.000000e+00, %6036
  %8562 = fsub fast float -0.000000e+00, %6037
  %8563 = fsub fast float -0.000000e+00, %6038
  %8564 = call float @dx.op.dot3.f32(i32 55, float %6947, float %6948, float %6949, float %8561, float %8562, float %8563)  ; Dot3(ax,ay,az,bx,by,bz)
  %8565 = call float @dx.op.unary.f32(i32 7, float %8564)  ; Saturate(value)
  %8566 = fmul fast float %8565, 9.843750e-01
  %8567 = fadd fast float %8566, 7.812500e-03
  %8568 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %38, %dx.types.Handle %45, float %8567, float %6318, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8569 = extractvalue %dx.types.ResRet.f32 %8568, 0
  %8570 = extractvalue %dx.types.ResRet.f32 %8568, 1
  %8571 = extractvalue %dx.types.ResRet.f32 %8568, 2
  %8572 = extractvalue %dx.types.ResRet.f32 %8568, 3
  %8573 = fsub fast float %8571, %8569
  %8574 = fsub fast float %8572, %8570
  %8575 = fmul fast float %8573, %6324
  %8576 = fmul fast float %8574, %6324
  %8577 = fadd fast float %8575, %8569
  %8578 = fadd fast float %8576, %8570
  %8579 = fmul fast float %8577, %6030
  %8580 = fmul fast float %8577, %6031
  %8581 = fmul fast float %8577, %6041
  %8582 = fadd fast float %8579, %8578
  %8583 = fadd fast float %8580, %8578
  %8584 = fadd fast float %8581, %8578
  br i1 %6337, label %8585, label %8608

; <label>:8585                                    ; preds = %8540
  %8586 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %45, float %4719, float %8565, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8587 = extractvalue %dx.types.ResRet.f32 %8586, 0
  %8588 = extractvalue %dx.types.ResRet.f32 %8586, 1
  %8589 = extractvalue %dx.types.ResRet.f32 %8586, 2
  %8590 = fadd fast float %8587, -5.000000e-01
  %8591 = fadd fast float %8588, -5.000000e-01
  %8592 = fadd fast float %8589, -5.000000e-01
  %8593 = fmul fast float %6030, 4.000000e+00
  %8594 = fmul fast float %8593, %8462
  %8595 = fmul fast float %8594, %8590
  %8596 = fmul fast float %6031, 4.000000e+00
  %8597 = fmul fast float %8596, %8463
  %8598 = fmul fast float %8597, %8591
  %8599 = fmul fast float %6041, 4.000000e+00
  %8600 = fmul fast float %8599, %8464
  %8601 = fmul fast float %8600, %8592
  %8602 = fadd fast float %8595, %8582
  %8603 = fadd fast float %8598, %8583
  %8604 = fadd fast float %8601, %8584
  %8605 = call float @dx.op.unary.f32(i32 7, float %8602)  ; Saturate(value)
  %8606 = call float @dx.op.unary.f32(i32 7, float %8603)  ; Saturate(value)
  %8607 = call float @dx.op.unary.f32(i32 7, float %8604)  ; Saturate(value)
  br label %8608

; <label>:8608                                    ; preds = %8585, %8540
  %8609 = phi float [ %8605, %8585 ], [ %8582, %8540 ]
  %8610 = phi float [ %8606, %8585 ], [ %8583, %8540 ]
  %8611 = phi float [ %8607, %8585 ], [ %8584, %8540 ]
  %8612 = call float @dx.op.binary.f32(i32 35, float %8610, float %8611)  ; FMax(a,b)
  %8613 = call float @dx.op.binary.f32(i32 35, float %8609, float %8612)  ; FMax(a,b)
  %8614 = fsub fast float 1.000000e+00, %8613
  %8615 = fmul fast float %6058, %6920
  %8616 = fadd fast float %6922, %8615
  %8617 = call float @dx.op.unary.f32(i32 7, float %8616)  ; Saturate(value)
  %8618 = fsub fast float %6947, %6049
  %8619 = fsub fast float %6948, %6050
  %8620 = fsub fast float %6949, %6051
  %8621 = call float @dx.op.dot3.f32(i32 55, float %8618, float %8619, float %8620, float %8618, float %8619, float %8620)  ; Dot3(ax,ay,az,bx,by,bz)
  %8622 = call float @dx.op.unary.f32(i32 25, float %8621)  ; Rsqrt(value)
  %8623 = fmul fast float %8622, %8618
  %8624 = fmul fast float %8622, %8619
  %8625 = fmul fast float %8622, %8620
  %8626 = call float @dx.op.dot3.f32(i32 55, float %8561, float %8562, float %8563, float %8623, float %8624, float %8625)  ; Dot3(ax,ay,az,bx,by,bz)
  %8627 = fmul fast float %8626, %8626
  %8628 = call float @dx.op.unary.f32(i32 6, float %8565)  ; FAbs(value)
  %8629 = call float @dx.op.binary.f32(i32 35, float %8617, float 0x3F847AE140000000)  ; FMax(a,b)
  %8630 = fmul fast float %8629, %8629
  %8631 = fmul fast float %8630, %8630
  %8632 = fsub fast float 1.000000e+00, %8631
  %8633 = fmul fast float %8426, %8632
  %8634 = fadd fast float %8633, %8631
  %8635 = bitcast float %8634 to i32
  %8636 = ashr i32 %8635, 1
  %8637 = add nsw i32 %8636, 532487669
  %8638 = bitcast i32 %8637 to float
  %8639 = fadd fast float %8638, %6043
  %8640 = fmul fast float %8631, %8627
  %8641 = fsub fast float 1.000000e+00, %8627
  %8642 = fadd fast float %8641, %8640
  %8643 = fmul fast float %8628, %8628
  %8644 = fmul fast float %8643, %8632
  %8645 = fadd fast float %8644, %8631
  %8646 = bitcast float %8645 to i32
  %8647 = ashr i32 %8646, 1
  %8648 = add nsw i32 %8647, 532487669
  %8649 = bitcast i32 %8648 to float
  %8650 = fadd fast float %8649, %8628
  %8651 = fmul fast float %8642, %8642
  %8652 = fmul fast float %8651, %8639
  %8653 = fmul fast float %8652, %8650
  %8654 = fdiv fast float 0x3FF0A00000000000, %8653
  %8655 = fmul fast float %8654, %8631
  %8656 = fmul fast float %8565, %8558
  %8657 = fmul fast float %8565, %8559
  %8658 = fmul fast float %8565, %8560
  %8659 = fmul fast float %8656, %8614
  %8660 = fmul fast float %8659, %8655
  %8661 = fmul fast float %8657, %8614
  %8662 = fmul fast float %8661, %8655
  %8663 = fmul fast float %8658, %8614
  %8664 = fmul fast float %8663, %8655
  %8665 = fmul fast float %8495, %8449
  %8666 = fmul fast float %8496, %8449
  %8667 = fmul fast float %8497, %8449
  %8668 = fsub fast float 1.000000e+00, %8416
  %8669 = bitcast float %8668 to i32
  %8670 = sitofp i32 %8669 to float
  %8671 = fmul fast float %8670, 5.000000e+00
  %8672 = fadd fast float %8671, 0xC1EFBF8940000000
  %8673 = fptosi float %8672 to i32
  %8674 = bitcast i32 %8673 to float
  %8675 = fmul fast float %8674, %4720
  %8676 = fmul fast float %8546, %8675
  %8677 = fmul fast float %8676, %6848
  %8678 = fmul fast float %8676, %6849
  %8679 = fmul fast float %8676, %6850
  %8680 = fadd fast float %8677, %8665
  %8681 = fadd fast float %8678, %8666
  %8682 = fadd fast float %8679, %8667
  %8683 = fmul fast float %8680, %8421
  %8684 = fmul fast float %8681, %8421
  %8685 = fmul fast float %8682, %8421
  %8686 = fmul fast float %8421, %8404
  %8687 = fmul fast float %8686, %8546
  %8688 = fmul fast float %8421, %8405
  %8689 = fmul fast float %8688, %8546
  %8690 = fmul fast float %8421, %8406
  %8691 = fmul fast float %8690, %8546
  %8692 = fadd fast float %8683, %8660
  %8693 = fadd fast float %8684, %8662
  %8694 = fadd fast float %8685, %8664
  %8695 = fmul fast float %8692, %8404
  %8696 = fmul fast float %8693, %8405
  %8697 = fmul fast float %8694, %8406
  %8698 = fadd fast float %8687, %6937
  %8699 = fmul fast float %8698, %4745
  %8700 = fadd fast float %8689, %6939
  %8701 = fmul fast float %8700, %4745
  %8702 = fadd fast float %8691, %6941
  %8703 = fmul fast float %8702, %4745
  %8704 = fadd fast float %8695, %6901
  %8705 = fmul fast float %8704, %4745
  %8706 = fadd fast float %8696, %6904
  %8707 = fmul fast float %8706, %4745
  %8708 = fadd fast float %8697, %6907
  %8709 = fmul fast float %8708, %4745
  br label %8710

; <label>:8710                                    ; preds = %8608, %8398, %6831
  %8711 = phi float [ %6902, %6831 ], [ %6902, %8398 ], [ %8705, %8608 ]
  %8712 = phi float [ %6905, %6831 ], [ %6905, %8398 ], [ %8707, %8608 ]
  %8713 = phi float [ %6908, %6831 ], [ %6908, %8398 ], [ %8709, %8608 ]
  %8714 = phi float [ %6938, %6831 ], [ %6938, %8398 ], [ %8699, %8608 ]
  %8715 = phi float [ %6940, %6831 ], [ %6940, %8398 ], [ %8701, %8608 ]
  %8716 = phi float [ %6942, %6831 ], [ %6942, %8398 ], [ %8703, %8608 ]
  %8717 = fmul fast float %4745, %6877
  %8718 = fsub fast float -0.000000e+00, %8717
  %8719 = fmul fast float %4745, %6878
  %8720 = fsub fast float -0.000000e+00, %8719
  %8721 = fmul fast float %4745, %6879
  %8722 = fsub fast float -0.000000e+00, %8721
  %8723 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %8724 = extractvalue %dx.types.CBufRet.f32 %8723, 0
  %8725 = fmul fast float %8724, %6883
  %8726 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %8727 = extractvalue %dx.types.CBufRet.f32 %8726, 3
  %8728 = fsub fast float 1.000000e+00, %4723
  %8729 = call float @dx.op.unary.f32(i32 7, float %8728)  ; Saturate(value)
  %8730 = fadd fast float %8716, %4722
  %8731 = fmul fast float %8730, %4723
  %8732 = fmul fast float %8729, %8727
  %8733 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %4724, i32 undef)  ; BufferLoad(srv,index,wot)
  %8734 = extractvalue %dx.types.ResRet.i32 %8733, 3
  %8735 = bitcast i32 %8734 to float
  %8736 = fsub fast float %8718, %8735
  %8737 = fsub fast float %8720, %8735
  %8738 = fsub fast float %8722, %8735
  %8739 = fmul fast float %8736, %235
  %8740 = fmul fast float %8737, %235
  %8741 = fmul fast float %8738, %235
  %8742 = fadd fast float %8739, %8735
  %8743 = fadd fast float %8740, %8735
  %8744 = fadd fast float %8741, %8735
  %8745 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %8746 = extractvalue %dx.types.CBufRet.f32 %8745, 3
  %8747 = fmul fast float %8714, %6033
  %8748 = fmul fast float %8715, %6034
  %8749 = fmul fast float %8716, %6035
  %8750 = fcmp fast ogt float %98, %255
  %8751 = and i1 %8750, %4813
  %8752 = or i1 %4892, %8751
  %8753 = icmp eq i32 %4812, 2
  %8754 = fcmp fast ole float %98, %255
  %8755 = and i1 %8754, %8753
  %8756 = or i1 %8755, %8752
  br i1 %8751, label %8757, label %9014

; <label>:8757                                    ; preds = %8710
  %8758 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %8759 = extractvalue %dx.types.CBufRet.f32 %8758, 2
  %8760 = extractvalue %dx.types.CBufRet.f32 %8758, 3
  %8761 = fmul fast float %8759, %111
  %8762 = fmul fast float %8760, %112
  %8763 = call float @dx.op.unary.f32(i32 7, float %8761)  ; Saturate(value)
  %8764 = call float @dx.op.unary.f32(i32 7, float %8762)  ; Saturate(value)
  %8765 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %45, float %8763, float %8764, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8766 = extractvalue %dx.types.ResRet.f32 %8765, 0
  %8767 = extractvalue %dx.types.ResRet.f32 %8765, 1
  %8768 = extractvalue %dx.types.ResRet.f32 %8765, 2
  %8769 = extractvalue %dx.types.ResRet.f32 %8765, 3
  %8770 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %45, float %8763, float %8764, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8771 = extractvalue %dx.types.ResRet.f32 %8770, 0
  %8772 = extractvalue %dx.types.ResRet.f32 %8770, 1
  %8773 = extractvalue %dx.types.ResRet.f32 %8770, 2
  %8774 = extractvalue %dx.types.ResRet.f32 %8770, 3
  %8775 = call float @dx.op.binary.f32(i32 35, float %8767, float %8768)  ; FMax(a,b)
  %8776 = call float @dx.op.binary.f32(i32 35, float %8766, float %8775)  ; FMax(a,b)
  %8777 = call float @dx.op.binary.f32(i32 35, float %8776, float %8769)  ; FMax(a,b)
  %8778 = call float @dx.op.binary.f32(i32 36, float %8772, float %8773)  ; FMin(a,b)
  %8779 = call float @dx.op.binary.f32(i32 36, float %8771, float %8778)  ; FMin(a,b)
  %8780 = call float @dx.op.binary.f32(i32 36, float %8779, float %8774)  ; FMin(a,b)
  %8781 = fmul fast float %8777, 2.550000e+02
  %8782 = fadd fast float %8781, 0x3F70101020000000
  %8783 = fptoui float %8782 to i32
  %8784 = fmul fast float %8780, 2.550000e+02
  %8785 = fadd fast float %8784, 0x3F70101020000000
  %8786 = fptoui float %8785 to i32
  %8787 = icmp ult i32 %8783, %8786
  br i1 %8787, label %8788, label %8956

; <label>:8788                                    ; preds = %8757
  %8789 = fcmp fast ogt float %97, 9.843750e-01
  %8790 = fadd fast float %98, -4.000000e+00
  %8791 = select i1 %8789, float -4.000000e+00, float %8790
  %8792 = call float @dx.op.binary.f32(i32 35, float %8791, float 0.000000e+00)  ; FMax(a,b)
  %8793 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %8794 = extractvalue %dx.types.CBufRet.f32 %8793, 0
  %8795 = fadd fast float %8794, %8792
  %8796 = extractvalue %dx.types.CBufRet.f32 %8793, 2
  %8797 = fmul fast float %8795, %8796
  %8798 = call float @dx.op.unary.f32(i32 23, float %8797)  ; Log(value)
  %8799 = extractvalue %dx.types.CBufRet.f32 %8793, 3
  %8800 = fmul fast float %8799, %8798
  %8801 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8802 = extractvalue %dx.types.CBufRet.f32 %8801, 2
  %8803 = fmul fast float %8800, %8802
  %8804 = call float @dx.op.unary.f32(i32 7, float %8803)  ; Saturate(value)
  %8805 = uitofp i32 %8783 to float
  %8806 = uitofp i32 %8786 to float
  %8807 = fadd fast float %8805, 5.000000e-01
  %8808 = fadd fast float %8806, 5.000000e-01
  %8809 = fmul fast float %8802, %8807
  %8810 = fmul fast float %8802, %8808
  %8811 = fadd fast float %8809, 0x3F0FFB4800000000
  %8812 = fadd fast float %8810, 0xBF0FFB4800000000
  %8813 = call float @dx.op.binary.f32(i32 35, float %8804, float %8811)  ; FMax(a,b)
  %8814 = call float @dx.op.binary.f32(i32 36, float %8813, float %8812)  ; FMin(a,b)
  %8815 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %8816 = extractvalue %dx.types.CBufRet.f32 %8815, 1
  %8817 = extractvalue %dx.types.CBufRet.f32 %8815, 2
  %8818 = extractvalue %dx.types.CBufRet.f32 %8815, 0
  %8819 = fmul fast float %8816, %8814
  %8820 = fadd fast float %8818, %8819
  %8821 = fadd fast float %8818, %8817
  %8822 = fsub fast float %8816, %8817
  %8823 = fadd fast float %8822, %8818
  %8824 = call float @dx.op.binary.f32(i32 35, float %8820, float %8821)  ; FMax(a,b)
  %8825 = call float @dx.op.binary.f32(i32 36, float %8824, float %8823)  ; FMin(a,b)
  %8826 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %43, float %8763, float %8764, float %8825, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8827 = extractvalue %dx.types.ResRet.f32 %8826, 0
  %8828 = extractvalue %dx.types.ResRet.f32 %8826, 1
  %8829 = extractvalue %dx.types.ResRet.f32 %8826, 2
  %8830 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %8831 = extractvalue %dx.types.CBufRet.i32 %8830, 0
  %8832 = extractvalue %dx.types.CBufRet.i32 %8830, 1
  %8833 = uitofp i32 %8831 to float
  %8834 = uitofp i32 %8832 to float
  %8835 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %8836 = extractvalue %dx.types.CBufRet.f32 %8835, 0
  %8837 = extractvalue %dx.types.CBufRet.f32 %8835, 1
  %8838 = fmul fast float %8833, %8763
  %8839 = fmul fast float %8834, %8764
  %8840 = fadd fast float %8838, -5.000000e-01
  %8841 = fadd fast float %8839, -5.000000e-01
  %8842 = call float @dx.op.unary.f32(i32 22, float %8840)  ; Frc(value)
  %8843 = call float @dx.op.unary.f32(i32 22, float %8841)  ; Frc(value)
  %8844 = fmul fast float %8842, %8842
  %8845 = fmul fast float %8844, %8842
  %8846 = fsub fast float 3.000000e+00, %8842
  %8847 = fmul fast float %8844, %8846
  %8848 = fmul fast float %8842, 3.000000e+00
  %8849 = fmul fast float %8845, 3.000000e+00
  %8850 = fmul fast float %8844, 6.000000e+00
  %8851 = fsub fast float %8849, %8850
  %8852 = fadd fast float %8851, 4.000000e+00
  %8853 = fmul fast float %8852, 0x3FC5555560000000
  %8854 = fmul fast float %8845, -3.000000e+00
  %8855 = fadd fast float %8844, %8842
  %8856 = fmul fast float %8855, 3.000000e+00
  %8857 = fadd fast float %8854, 1.000000e+00
  %8858 = fadd fast float %8857, %8856
  %8859 = fmul fast float %8845, 0x3FC5555560000000
  %8860 = fmul fast float %8843, %8843
  %8861 = fmul fast float %8860, %8843
  %8862 = fsub fast float 3.000000e+00, %8843
  %8863 = fmul fast float %8860, %8862
  %8864 = fmul fast float %8843, 3.000000e+00
  %8865 = fmul fast float %8861, 3.000000e+00
  %8866 = fmul fast float %8860, 6.000000e+00
  %8867 = fsub fast float %8865, %8866
  %8868 = fadd fast float %8867, 4.000000e+00
  %8869 = fmul fast float %8868, 0x3FC5555560000000
  %8870 = fmul fast float %8861, -3.000000e+00
  %8871 = fadd fast float %8860, %8843
  %8872 = fmul fast float %8871, 3.000000e+00
  %8873 = fadd fast float %8870, 1.000000e+00
  %8874 = fadd fast float %8873, %8872
  %8875 = fmul fast float %8861, 0x3FC5555560000000
  %8876 = fadd fast float %8842, 1.000000e+00
  %8877 = fsub fast float 1.000000e+00, %8848
  %8878 = fadd fast float %8877, %8847
  %8879 = fadd fast float %8878, %8852
  %8880 = fmul fast float %8879, 0x3FC5555560000000
  %8881 = fdiv fast float %8853, %8880
  %8882 = fsub fast float %8876, %8881
  %8883 = fsub fast float 1.000000e+00, %8842
  %8884 = fadd fast float %8858, %8845
  %8885 = fmul fast float %8884, 0x3FC5555560000000
  %8886 = fdiv fast float %8859, %8885
  %8887 = fadd fast float %8883, %8886
  %8888 = fadd fast float %8843, 1.000000e+00
  %8889 = fsub fast float 1.000000e+00, %8864
  %8890 = fadd fast float %8889, %8863
  %8891 = fadd fast float %8890, %8868
  %8892 = fmul fast float %8891, 0x3FC5555560000000
  %8893 = fdiv fast float %8869, %8892
  %8894 = fsub fast float %8888, %8893
  %8895 = fsub fast float 1.000000e+00, %8843
  %8896 = fadd fast float %8874, %8861
  %8897 = fmul fast float %8896, 0x3FC5555560000000
  %8898 = fdiv fast float %8875, %8897
  %8899 = fadd fast float %8898, %8895
  %8900 = fmul fast float %8882, %8836
  %8901 = fsub fast float %8763, %8900
  %8902 = fmul fast float %8887, %8836
  %8903 = fadd fast float %8902, %8763
  %8904 = fmul fast float %8899, %8837
  %8905 = fadd fast float %8904, %8764
  %8906 = fmul fast float %8894, %8837
  %8907 = fsub fast float %8764, %8906
  %8908 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %43, float %8901, float %8907, float %8825, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8909 = extractvalue %dx.types.ResRet.f32 %8908, 0
  %8910 = extractvalue %dx.types.ResRet.f32 %8908, 1
  %8911 = extractvalue %dx.types.ResRet.f32 %8908, 2
  %8912 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %43, float %8903, float %8907, float %8825, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8913 = extractvalue %dx.types.ResRet.f32 %8912, 0
  %8914 = extractvalue %dx.types.ResRet.f32 %8912, 1
  %8915 = extractvalue %dx.types.ResRet.f32 %8912, 2
  %8916 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %43, float %8901, float %8905, float %8825, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8917 = extractvalue %dx.types.ResRet.f32 %8916, 0
  %8918 = extractvalue %dx.types.ResRet.f32 %8916, 1
  %8919 = extractvalue %dx.types.ResRet.f32 %8916, 2
  %8920 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %43, float %8903, float %8905, float %8825, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8921 = extractvalue %dx.types.ResRet.f32 %8920, 0
  %8922 = extractvalue %dx.types.ResRet.f32 %8920, 1
  %8923 = extractvalue %dx.types.ResRet.f32 %8920, 2
  %8924 = fsub fast float %8917, %8909
  %8925 = fsub fast float %8918, %8910
  %8926 = fsub fast float %8919, %8911
  %8927 = fmul fast float %8924, %8897
  %8928 = fmul fast float %8925, %8897
  %8929 = fmul fast float %8926, %8897
  %8930 = fadd fast float %8927, %8909
  %8931 = fadd fast float %8928, %8910
  %8932 = fadd fast float %8929, %8911
  %8933 = fsub fast float %8921, %8913
  %8934 = fsub fast float %8922, %8914
  %8935 = fsub fast float %8923, %8915
  %8936 = fmul fast float %8933, %8897
  %8937 = fmul fast float %8934, %8897
  %8938 = fmul fast float %8935, %8897
  %8939 = fsub fast float %8913, %8930
  %8940 = fadd fast float %8939, %8936
  %8941 = fsub fast float %8914, %8931
  %8942 = fadd fast float %8941, %8937
  %8943 = fsub fast float %8915, %8932
  %8944 = fadd fast float %8943, %8938
  %8945 = fmul fast float %8940, %8885
  %8946 = fmul fast float %8942, %8885
  %8947 = fmul fast float %8944, %8885
  %8948 = fadd fast float %8945, %8930
  %8949 = fadd fast float %8946, %8931
  %8950 = fadd fast float %8947, %8932
  %8951 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8952 = extractvalue %dx.types.CBufRet.f32 %8951, 1
  %8953 = fmul fast float %8948, %8952
  %8954 = fmul fast float %8949, %8952
  %8955 = fmul fast float %8950, %8952
  br label %8956

; <label>:8956                                    ; preds = %8788, %8757
  %8957 = phi float [ %8827, %8788 ], [ 1.000000e+00, %8757 ]
  %8958 = phi float [ %8828, %8788 ], [ 1.000000e+00, %8757 ]
  %8959 = phi float [ %8829, %8788 ], [ 1.000000e+00, %8757 ]
  %8960 = phi float [ %8953, %8788 ], [ 0.000000e+00, %8757 ]
  %8961 = phi float [ %8954, %8788 ], [ 0.000000e+00, %8757 ]
  %8962 = phi float [ %8955, %8788 ], [ 0.000000e+00, %8757 ]
  %8963 = fmul fast float %8960, %8742
  %8964 = fmul fast float %8961, %8743
  %8965 = fmul fast float %8962, %8744
  %8966 = call float @dx.op.dot3.f32(i32 55, float %8957, float %8958, float %8959, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8967 = call float @dx.op.dot3.f32(i32 55, float %8963, float %8964, float %8965, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8968 = select i1 %294, float %8966, float %8957
  %8969 = select i1 %294, float %8966, float %8958
  %8970 = select i1 %294, float 1.000000e+00, float %8959
  %8971 = select i1 %294, float %8967, float %8963
  %8972 = select i1 %294, float 0.000000e+00, float %8964
  %8973 = select i1 %294, float 0.000000e+00, float %8965
  %8974 = fmul fast float %8968, %8747
  %8975 = fmul fast float %8969, %8748
  %8976 = fmul fast float %8970, %8749
  %8977 = fadd fast float %8974, %8971
  %8978 = fadd fast float %8975, %8972
  %8979 = fadd fast float %8973, %8976
  %8980 = fmul fast float %8968, %8711
  %8981 = fmul fast float %8969, %8712
  %8982 = fmul fast float %8970, %8713
  %8983 = fmul fast float %139, %8759
  %8984 = fmul fast float %141, %8760
  %8985 = fsub fast float 1.000000e+00, %8983
  %8986 = fsub fast float 1.000000e+00, %8984
  %8987 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %8988 = extractvalue %dx.types.CBufRet.f32 %8987, 0
  %8989 = extractvalue %dx.types.CBufRet.f32 %8987, 1
  %8990 = extractvalue %dx.types.CBufRet.f32 %8987, 2
  %8991 = fmul fast float %8985, %8988
  %8992 = fmul fast float %8985, %8989
  %8993 = fmul fast float %8985, %8990
  %8994 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %8995 = extractvalue %dx.types.CBufRet.f32 %8994, 0
  %8996 = extractvalue %dx.types.CBufRet.f32 %8994, 1
  %8997 = extractvalue %dx.types.CBufRet.f32 %8994, 2
  %8998 = fmul fast float %8986, %8995
  %8999 = fmul fast float %8986, %8996
  %9000 = fmul fast float %8986, %8997
  %9001 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %9002 = extractvalue %dx.types.CBufRet.f32 %9001, 0
  %9003 = extractvalue %dx.types.CBufRet.f32 %9001, 1
  %9004 = extractvalue %dx.types.CBufRet.f32 %9001, 2
  %9005 = fadd fast float %8998, %9002
  %9006 = fadd fast float %9005, %8991
  %9007 = fadd fast float %8999, %9003
  %9008 = fadd fast float %9007, %8992
  %9009 = fadd fast float %9000, %9004
  %9010 = fadd fast float %9009, %8993
  %9011 = fmul fast float %9006, %255
  %9012 = fmul fast float %9008, %255
  %9013 = fmul fast float %9010, %255
  br label %9014

; <label>:9014                                    ; preds = %8956, %8710
  %9015 = phi float [ %9011, %8956 ], [ %190, %8710 ]
  %9016 = phi float [ %9012, %8956 ], [ %191, %8710 ]
  %9017 = phi float [ %9013, %8956 ], [ %192, %8710 ]
  %9018 = phi float [ %255, %8956 ], [ %98, %8710 ]
  %9019 = phi float [ %8977, %8956 ], [ %8747, %8710 ]
  %9020 = phi float [ %8978, %8956 ], [ %8748, %8710 ]
  %9021 = phi float [ %8979, %8956 ], [ %8749, %8710 ]
  %9022 = phi float [ %8980, %8956 ], [ %8711, %8710 ]
  %9023 = phi float [ %8981, %8956 ], [ %8712, %8710 ]
  %9024 = phi float [ %8982, %8956 ], [ %8713, %8710 ]
  %9025 = phi float [ %8957, %8956 ], [ 1.000000e+00, %8710 ]
  br i1 %8756, label %10180, label %9026

; <label>:9026                                    ; preds = %9014
  %9027 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %9028 = extractvalue %dx.types.CBufRet.f32 %9027, 0
  %9029 = extractvalue %dx.types.CBufRet.f32 %9027, 1
  %9030 = extractvalue %dx.types.CBufRet.f32 %9027, 2
  %9031 = extractvalue %dx.types.CBufRet.f32 %9027, 3
  %9032 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %9033 = extractvalue %dx.types.CBufRet.f32 %9032, 0
  %9034 = extractvalue %dx.types.CBufRet.f32 %9032, 1
  %9035 = extractvalue %dx.types.CBufRet.f32 %9032, 2
  %9036 = extractvalue %dx.types.CBufRet.f32 %9032, 3
  %9037 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %9038 = extractvalue %dx.types.CBufRet.f32 %9037, 0
  %9039 = extractvalue %dx.types.CBufRet.f32 %9037, 1
  %9040 = extractvalue %dx.types.CBufRet.f32 %9037, 2
  %9041 = extractvalue %dx.types.CBufRet.f32 %9037, 3
  %9042 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %9043 = extractvalue %dx.types.CBufRet.f32 %9042, 0
  %9044 = extractvalue %dx.types.CBufRet.f32 %9042, 1
  %9045 = extractvalue %dx.types.CBufRet.f32 %9042, 2
  %9046 = extractvalue %dx.types.CBufRet.f32 %9042, 3
  %9047 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %9048 = extractvalue %dx.types.CBufRet.f32 %9047, 3
  %9049 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %9050 = extractvalue %dx.types.CBufRet.f32 %9049, 3
  %9051 = extractvalue %dx.types.CBufRet.f32 %9049, 0
  %9052 = extractvalue %dx.types.CBufRet.f32 %9049, 1
  %9053 = extractvalue %dx.types.CBufRet.f32 %9049, 2
  %9054 = fcmp fast olt float %9053, -5.000000e-01
  %9055 = call float @dx.op.dot3.f32(i32 55, float %9015, float %9016, float %9017, float %9015, float %9016, float %9017)  ; Dot3(ax,ay,az,bx,by,bz)
  %9056 = call float @dx.op.unary.f32(i32 25, float %9055)  ; Rsqrt(value)
  %9057 = fmul fast float %9056, %9055
  %9058 = fmul fast float %9056, %9015
  %9059 = fmul fast float %9056, %9016
  %9060 = fmul fast float %9056, %9017
  %9061 = fadd fast float %9057, %9031
  %9062 = call float @dx.op.dot3.f32(i32 55, float %9058, float %9059, float %9060, float %9028, float %9029, float %9030)  ; Dot3(ax,ay,az,bx,by,bz)
  %9063 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %9064 = extractvalue %dx.types.CBufRet.i32 %9063, 1
  %9065 = and i32 %9064, 1
  %9066 = icmp ne i32 %9065, 0
  %9067 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %9068 = extractvalue %dx.types.CBufRet.f32 %9067, 2
  %9069 = fcmp fast ogt float %9068, 0.000000e+00
  %9070 = and i1 %9066, %9069
  br i1 %9070, label %9071, label %9477, !dx.controlflow.hints !127

; <label>:9071                                    ; preds = %9026
  %9072 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %9073 = extractvalue %dx.types.CBufRet.f32 %9072, 3
  %9074 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %9075 = extractvalue %dx.types.CBufRet.f32 %9074, 2
  %9076 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %9077 = extractvalue %dx.types.CBufRet.f32 %9076, 2
  %9078 = fsub fast float %9075, %9077
  %9079 = and i32 %9064, 2
  %9080 = extractvalue %dx.types.CBufRet.i32 %9063, 0
  %9081 = call i32 @dx.op.binary.i32(i32 40, i32 %9080, i32 3)  ; UMin(a,b)
  %9082 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %9083 = extractvalue %dx.types.CBufRet.f32 %9082, 0
  %9084 = extractvalue %dx.types.CBufRet.f32 %9082, 1
  %9085 = extractvalue %dx.types.CBufRet.f32 %9076, 0
  %9086 = extractvalue %dx.types.CBufRet.f32 %9076, 1
  %9087 = fsub fast float %9083, %9085
  %9088 = fsub fast float %9084, %9086
  %9089 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %9090 = extractvalue %dx.types.CBufRet.f32 %9089, 0
  %9091 = fcmp fast ogt float %9090, 0.000000e+00
  %9092 = fsub fast float -0.000000e+00, %9087
  %9093 = fsub fast float -0.000000e+00, %9088
  %9094 = call float @dx.op.dot2.f32(i32 54, float %9058, float %9059, float %9058, float %9059)  ; Dot2(ax,ay,bx,by)
  %9095 = call float @dx.op.dot2.f32(i32 54, float %9058, float %9059, float %9092, float %9093)  ; Dot2(ax,ay,bx,by)
  %9096 = fmul fast float %9095, 2.000000e+00
  %9097 = call float @dx.op.dot2.f32(i32 54, float %9092, float %9093, float %9092, float %9093)  ; Dot2(ax,ay,bx,by)
  %9098 = fmul fast float %9090, %9090
  %9099 = fsub fast float %9097, %9098
  %9100 = fmul fast float %9096, %9096
  %9101 = fmul fast float %9094, 4.000000e+00
  %9102 = fmul fast float %9101, %9099
  %9103 = fsub fast float %9100, %9102
  %9104 = fcmp fast ogt float %9103, 0.000000e+00
  br i1 %9104, label %9105, label %9120

; <label>:9105                                    ; preds = %9071
  %9106 = fcmp fast ogt float %9096, 0.000000e+00
  %9107 = call float @dx.op.unary.f32(i32 24, float %9103)  ; Sqrt(value)
  %9108 = fsub fast float -0.000000e+00, %9107
  %9109 = select i1 %9106, float %9107, float %9108
  %9110 = fadd fast float %9109, %9096
  %9111 = fmul float %9110, -5.000000e-01
  %9112 = fdiv fast float %9111, %9094
  %9113 = call float @dx.op.binary.f32(i32 35, float %9112, float 0.000000e+00)  ; FMax(a,b)
  %9114 = call float @dx.op.binary.f32(i32 36, float %9057, float %9113)  ; FMin(a,b)
  %9115 = fdiv fast float %9099, %9111
  %9116 = call float @dx.op.binary.f32(i32 35, float %9115, float 0.000000e+00)  ; FMax(a,b)
  %9117 = call float @dx.op.binary.f32(i32 36, float %9057, float %9116)  ; FMin(a,b)
  %9118 = call float @dx.op.binary.f32(i32 36, float %9114, float %9117)  ; FMin(a,b)
  %9119 = call float @dx.op.binary.f32(i32 35, float %9114, float %9117)  ; FMax(a,b)
  br label %9120

; <label>:9120                                    ; preds = %9105, %9071
  %9121 = phi float [ %9119, %9105 ], [ -1.000000e+00, %9071 ]
  %9122 = phi float [ %9118, %9105 ], [ -1.000000e+00, %9071 ]
  %9123 = phi i1 [ true, %9105 ], [ false, %9071 ]
  %9124 = and i1 %9091, %9123
  br i1 %9124, label %9125, label %9127

; <label>:9125                                    ; preds = %9120
  %9126 = fcmp fast oeq float %9122, %9121
  br i1 %9126, label %9430, label %9128

; <label>:9127                                    ; preds = %9120
  br i1 %9091, label %9430, label %9128

; <label>:9128                                    ; preds = %9127, %9125
  %9129 = phi float [ %9057, %9127 ], [ %9121, %9125 ]
  %9130 = phi float [ 0.000000e+00, %9127 ], [ %9122, %9125 ]
  %9131 = icmp ne i32 %9079, 0
  %9132 = fmul fast float %9129, %9060
  %9133 = fadd fast float %9132, %9073
  %9134 = fmul fast float %9133, %9129
  %9135 = select i1 %9131, float 0.000000e+00, float %9134
  %9136 = fcmp fast oeq float %9060, 0.000000e+00
  %9137 = fdiv fast float %9078, %9060
  %9138 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %9137)  ; FMax(a,b)
  %9139 = select i1 %9136, float %9129, float %9138
  %9140 = call float @dx.op.binary.f32(i32 36, float %9129, float %9139)  ; FMin(a,b)
  %9141 = fcmp fast ogt float %9060, 0.000000e+00
  %9142 = fcmp fast olt float %9078, 0.000000e+00
  br i1 %9141, label %9143, label %9200

; <label>:9143                                    ; preds = %9128
  %9144 = icmp eq i32 %9079, 0
  br i1 %9142, label %9145, label %9189

; <label>:9145                                    ; preds = %9143
  %9146 = select i1 %9144, float %9129, float 0.000000e+00
  %9147 = fsub fast float -0.000000e+00, %9146
  %9148 = call float @dx.op.unary.f32(i32 6, float %9147)  ; FAbs(value)
  %9149 = fmul fast float %9146, %9060
  %9150 = fadd fast float %9149, %9073
  %9151 = fmul fast float %9148, %9150
  %9152 = fsub fast float %9135, %9151
  %9153 = fsub fast float %9129, %9148
  %9154 = select i1 %9144, float %9153, float 0.000000e+00
  %9155 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %9156 = extractvalue %dx.types.CBufRet.f32 %9155, 0
  %9157 = extractvalue %dx.types.CBufRet.f32 %9155, 1
  %9158 = extractvalue %dx.types.CBufRet.f32 %9155, 2
  %9159 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %9160 = extractvalue %dx.types.CBufRet.f32 %9159, 0
  %9161 = extractvalue %dx.types.CBufRet.f32 %9159, 1
  %9162 = extractvalue %dx.types.CBufRet.f32 %9159, 2
  %9163 = extractvalue %dx.types.CBufRet.f32 %9159, 3
  %9164 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %9165 = extractvalue %dx.types.CBufRet.f32 %9164, 3
  %9166 = call float @dx.op.binary.f32(i32 36, float %9152, float %9165)  ; FMin(a,b)
  %9167 = fmul fast float %9163, %9154
  %9168 = call float @dx.op.unary.f32(i32 7, float %9167)  ; Saturate(value)
  %9169 = fsub fast float %9160, %9156
  %9170 = fsub fast float %9161, %9157
  %9171 = fsub fast float %9162, %9158
  %9172 = fmul fast float %9168, %9169
  %9173 = fmul fast float %9168, %9170
  %9174 = fmul fast float %9168, %9171
  %9175 = fadd fast float %9172, %9156
  %9176 = fadd fast float %9173, %9157
  %9177 = fadd fast float %9174, %9158
  %9178 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %9179 = extractvalue %dx.types.CBufRet.f32 %9178, 0
  %9180 = extractvalue %dx.types.CBufRet.f32 %9178, 1
  %9181 = fadd fast float %9180, %9179
  %9182 = call float @dx.op.unary.f32(i32 7, float %9181)  ; Saturate(value)
  %9183 = extractvalue %dx.types.CBufRet.f32 %9178, 2
  %9184 = extractvalue %dx.types.CBufRet.f32 %9178, 3
  %9185 = fadd fast float %9184, %9183
  %9186 = call float @dx.op.unary.f32(i32 7, float %9185)  ; Saturate(value)
  %9187 = fmul fast float %9182, %9166
  %9188 = fmul fast float %9187, %9186
  br label %9430

; <label>:9189                                    ; preds = %9143
  br i1 %9144, label %9190, label %9211

; <label>:9190                                    ; preds = %9189
  %9191 = call float @dx.op.binary.f32(i32 36, float %9140, float %9130)  ; FMin(a,b)
  %9192 = fsub fast float %9140, %9191
  %9193 = fsub fast float %9192, %9129
  %9194 = call float @dx.op.unary.f32(i32 6, float %9193)  ; FAbs(value)
  %9195 = fadd fast float %9192, %9129
  %9196 = fmul fast float %9195, %9060
  %9197 = fadd fast float %9196, %9073
  %9198 = fmul fast float %9197, %9194
  %9199 = fsub fast float %9135, %9198
  br label %9211

; <label>:9200                                    ; preds = %9128
  br i1 %9142, label %9201, label %9211

; <label>:9201                                    ; preds = %9200
  %9202 = call float @dx.op.binary.f32(i32 35, float %9130, float %9140)  ; FMax(a,b)
  %9203 = icmp eq i32 %9079, 0
  %9204 = select i1 %9203, float %9140, float 0.000000e+00
  %9205 = fsub fast float -0.000000e+00, %9204
  %9206 = call float @dx.op.unary.f32(i32 6, float %9205)  ; FAbs(value)
  %9207 = fmul fast float %9204, %9060
  %9208 = fadd fast float %9207, %9073
  %9209 = fmul fast float %9206, %9208
  %9210 = fsub fast float %9135, %9209
  br label %9211

; <label>:9211                                    ; preds = %9201, %9200, %9190, %9189
  %9212 = phi float [ %9130, %9189 ], [ %9130, %9190 ], [ %9202, %9201 ], [ %9130, %9200 ]
  %9213 = phi float [ 0.000000e+00, %9189 ], [ %9194, %9190 ], [ %9206, %9201 ], [ 0.000000e+00, %9200 ]
  %9214 = phi float [ %9135, %9189 ], [ %9199, %9190 ], [ %9210, %9201 ], [ %9135, %9200 ]
  %9215 = phi float [ %9140, %9189 ], [ %9140, %9190 ], [ %9129, %9201 ], [ %9129, %9200 ]
  %9216 = getelementptr inbounds [3 x float], [3 x float]* %105, i32 0, i32 0
  store float -1.000000e+00, float* %9216, align 4, !tbaa !116, !noalias !128
  %9217 = getelementptr inbounds [3 x float], [3 x float]* %105, i32 0, i32 1
  store float -1.000000e+00, float* %9217, align 4, !tbaa !116, !noalias !128
  %9218 = getelementptr inbounds [3 x float], [3 x float]* %105, i32 0, i32 2
  store float -1.000000e+00, float* %9218, align 4, !tbaa !116, !noalias !128
  %9219 = getelementptr inbounds [3 x float], [3 x float]* %106, i32 0, i32 0
  store float -1.000000e+00, float* %9219, align 4, !tbaa !116, !noalias !128
  %9220 = getelementptr inbounds [3 x float], [3 x float]* %106, i32 0, i32 1
  store float -1.000000e+00, float* %9220, align 4, !tbaa !116, !noalias !128
  %9221 = getelementptr inbounds [3 x float], [3 x float]* %106, i32 0, i32 2
  store float -1.000000e+00, float* %9221, align 4, !tbaa !116, !noalias !128
  %9222 = icmp sgt i32 %9081, 0
  br i1 %9222, label %9223, label %9284

; <label>:9223                                    ; preds = %9211
  br label %9224

; <label>:9224                                    ; preds = %9273, %9223
  %9225 = phi i32 [ %9274, %9273 ], [ 0, %9223 ]
  %9226 = phi i32 [ %9275, %9273 ], [ 0, %9223 ]
  %9227 = add nuw i32 %9226, 171
  %9228 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 %9227)  ; CBufferLoadLegacy(handle,regIndex)
  %9229 = extractvalue %dx.types.CBufRet.f32 %9228, 0
  %9230 = extractvalue %dx.types.CBufRet.f32 %9228, 1
  %9231 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %9232 = extractvalue %dx.types.CBufRet.f32 %9231, 0
  %9233 = extractvalue %dx.types.CBufRet.f32 %9231, 1
  %9234 = fsub fast float %9229, %9232
  %9235 = fsub fast float %9230, %9233
  %9236 = extractvalue %dx.types.CBufRet.f32 %9228, 2
  %9237 = fsub fast float -0.000000e+00, %9234
  %9238 = fsub fast float -0.000000e+00, %9235
  %9239 = call float @dx.op.dot2.f32(i32 54, float %9058, float %9059, float %9237, float %9238)  ; Dot2(ax,ay,bx,by)
  %9240 = fmul fast float %9239, 2.000000e+00
  %9241 = call float @dx.op.dot2.f32(i32 54, float %9237, float %9238, float %9237, float %9238)  ; Dot2(ax,ay,bx,by)
  %9242 = fmul fast float %9236, %9236
  %9243 = fsub fast float %9241, %9242
  %9244 = fmul fast float %9240, %9240
  %9245 = fmul fast float %9101, %9243
  %9246 = fsub fast float %9244, %9245
  %9247 = fcmp fast ogt float %9246, 0.000000e+00
  br i1 %9247, label %9248, label %9263

; <label>:9248                                    ; preds = %9224
  %9249 = fcmp fast ogt float %9240, 0.000000e+00
  %9250 = call float @dx.op.unary.f32(i32 24, float %9246)  ; Sqrt(value)
  %9251 = fsub fast float -0.000000e+00, %9250
  %9252 = select i1 %9249, float %9250, float %9251
  %9253 = fadd fast float %9252, %9240
  %9254 = fmul float %9253, -5.000000e-01
  %9255 = fdiv fast float %9254, %9094
  %9256 = call float @dx.op.binary.f32(i32 35, float %9255, float 0.000000e+00)  ; FMax(a,b)
  %9257 = call float @dx.op.binary.f32(i32 36, float %9129, float %9256)  ; FMin(a,b)
  %9258 = fdiv fast float %9243, %9254
  %9259 = call float @dx.op.binary.f32(i32 35, float %9258, float 0.000000e+00)  ; FMax(a,b)
  %9260 = call float @dx.op.binary.f32(i32 36, float %9129, float %9259)  ; FMin(a,b)
  %9261 = call float @dx.op.binary.f32(i32 36, float %9257, float %9260)  ; FMin(a,b)
  %9262 = call float @dx.op.binary.f32(i32 35, float %9257, float %9260)  ; FMax(a,b)
  br label %9263

; <label>:9263                                    ; preds = %9248, %9224
  %9264 = phi float [ %9262, %9248 ], [ -1.000000e+00, %9224 ]
  %9265 = phi float [ %9261, %9248 ], [ -1.000000e+00, %9224 ]
  %9266 = phi i1 [ true, %9248 ], [ false, %9224 ]
  br i1 %9266, label %9267, label %9273

; <label>:9267                                    ; preds = %9263
  %9268 = call float @dx.op.binary.f32(i32 35, float %9212, float %9265)  ; FMax(a,b)
  %9269 = getelementptr inbounds [3 x float], [3 x float]* %105, i32 0, i32 %9226
  store float %9268, float* %9269, align 4, !tbaa !116, !noalias !128
  %9270 = call float @dx.op.binary.f32(i32 35, float %9212, float %9264)  ; FMax(a,b)
  %9271 = getelementptr inbounds [3 x float], [3 x float]* %106, i32 0, i32 %9226
  store float %9270, float* %9271, align 4, !tbaa !116, !noalias !128
  %9272 = add nsw i32 %9225, 1
  br label %9273

; <label>:9273                                    ; preds = %9267, %9263
  %9274 = phi i32 [ %9272, %9267 ], [ %9225, %9263 ]
  %9275 = add nuw nsw i32 %9226, 1
  %9276 = icmp eq i32 %9275, %9081
  br i1 %9276, label %9277, label %9224

; <label>:9277                                    ; preds = %9273
  %9278 = load float, float* %9218, align 4, !tbaa !116, !alias.scope !144, !noalias !147
  %9279 = load float, float* %9217, align 4, !tbaa !116, !alias.scope !150, !noalias !151
  %9280 = load float, float* %9216, align 4, !tbaa !116, !alias.scope !152, !noalias !153
  %9281 = load float, float* %9221, align 4, !tbaa !116, !alias.scope !154, !noalias !157
  %9282 = load float, float* %9220, align 4, !tbaa !116, !alias.scope !160, !noalias !161
  %9283 = load float, float* %9219, align 4, !tbaa !116, !alias.scope !162, !noalias !163
  br label %9284

; <label>:9284                                    ; preds = %9277, %9211
  %9285 = phi float [ -1.000000e+00, %9211 ], [ %9283, %9277 ]
  %9286 = phi float [ -1.000000e+00, %9211 ], [ %9282, %9277 ]
  %9287 = phi float [ -1.000000e+00, %9211 ], [ %9281, %9277 ]
  %9288 = phi float [ -1.000000e+00, %9211 ], [ %9280, %9277 ]
  %9289 = phi float [ -1.000000e+00, %9211 ], [ %9279, %9277 ]
  %9290 = phi float [ -1.000000e+00, %9211 ], [ %9278, %9277 ]
  %9291 = phi i32 [ 0, %9211 ], [ %9274, %9277 ]
  %9292 = call float @dx.op.binary.f32(i32 36, float %9289, float %9290)  ; FMin(a,b)
  %9293 = call float @dx.op.binary.f32(i32 36, float %9288, float %9292)  ; FMin(a,b)
  %9294 = call float @dx.op.binary.f32(i32 35, float %9288, float %9289)  ; FMax(a,b)
  %9295 = call float @dx.op.binary.f32(i32 36, float %9294, float %9290)  ; FMin(a,b)
  %9296 = call float @dx.op.binary.f32(i32 36, float %9288, float %9289)  ; FMin(a,b)
  %9297 = call float @dx.op.binary.f32(i32 35, float %9296, float %9295)  ; FMax(a,b)
  %9298 = call float @dx.op.binary.f32(i32 35, float %9289, float %9290)  ; FMax(a,b)
  %9299 = call float @dx.op.binary.f32(i32 35, float %9288, float %9298)  ; FMax(a,b)
  store float %9293, float* %9216, align 4, !tbaa !116, !alias.scope !152, !noalias !153
  store float %9297, float* %9217, align 4, !tbaa !116, !alias.scope !150, !noalias !151
  store float %9299, float* %9218, align 4, !tbaa !116, !alias.scope !144, !noalias !147
  %9300 = call float @dx.op.binary.f32(i32 36, float %9286, float %9287)  ; FMin(a,b)
  %9301 = call float @dx.op.binary.f32(i32 36, float %9285, float %9300)  ; FMin(a,b)
  %9302 = call float @dx.op.binary.f32(i32 35, float %9285, float %9286)  ; FMax(a,b)
  %9303 = call float @dx.op.binary.f32(i32 36, float %9302, float %9287)  ; FMin(a,b)
  %9304 = call float @dx.op.binary.f32(i32 36, float %9285, float %9286)  ; FMin(a,b)
  %9305 = call float @dx.op.binary.f32(i32 35, float %9304, float %9303)  ; FMax(a,b)
  %9306 = call float @dx.op.binary.f32(i32 35, float %9286, float %9287)  ; FMax(a,b)
  %9307 = call float @dx.op.binary.f32(i32 35, float %9285, float %9306)  ; FMax(a,b)
  store float %9301, float* %9219, align 4, !tbaa !116, !alias.scope !162, !noalias !163
  store float %9305, float* %9220, align 4, !tbaa !116, !alias.scope !160, !noalias !161
  store float %9307, float* %9221, align 4, !tbaa !116, !alias.scope !154, !noalias !157
  %9308 = sub nsw i32 3, %9291
  %9309 = icmp sgt i32 %9308, 2
  br i1 %9309, label %9310, label %9348

; <label>:9310                                    ; preds = %9284
  %9311 = icmp eq i32 %9079, 0
  %9312 = fsub fast float %9129, %9213
  %9313 = select i1 %9311, float %9312, float %9213
  %9314 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %9315 = extractvalue %dx.types.CBufRet.f32 %9314, 0
  %9316 = extractvalue %dx.types.CBufRet.f32 %9314, 1
  %9317 = extractvalue %dx.types.CBufRet.f32 %9314, 2
  %9318 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %9319 = extractvalue %dx.types.CBufRet.f32 %9318, 0
  %9320 = extractvalue %dx.types.CBufRet.f32 %9318, 1
  %9321 = extractvalue %dx.types.CBufRet.f32 %9318, 2
  %9322 = extractvalue %dx.types.CBufRet.f32 %9318, 3
  %9323 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %9324 = extractvalue %dx.types.CBufRet.f32 %9323, 3
  %9325 = call float @dx.op.binary.f32(i32 36, float %9214, float %9324)  ; FMin(a,b)
  %9326 = fmul fast float %9322, %9313
  %9327 = call float @dx.op.unary.f32(i32 7, float %9326)  ; Saturate(value)
  %9328 = fsub fast float %9319, %9315
  %9329 = fsub fast float %9320, %9316
  %9330 = fsub fast float %9321, %9317
  %9331 = fmul fast float %9327, %9328
  %9332 = fmul fast float %9327, %9329
  %9333 = fmul fast float %9327, %9330
  %9334 = fadd fast float %9331, %9315
  %9335 = fadd fast float %9332, %9316
  %9336 = fadd fast float %9333, %9317
  %9337 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %9338 = extractvalue %dx.types.CBufRet.f32 %9337, 0
  %9339 = extractvalue %dx.types.CBufRet.f32 %9337, 1
  %9340 = fadd fast float %9339, %9338
  %9341 = call float @dx.op.unary.f32(i32 7, float %9340)  ; Saturate(value)
  %9342 = extractvalue %dx.types.CBufRet.f32 %9337, 2
  %9343 = extractvalue %dx.types.CBufRet.f32 %9337, 3
  %9344 = fadd fast float %9343, %9342
  %9345 = call float @dx.op.unary.f32(i32 7, float %9344)  ; Saturate(value)
  %9346 = fmul fast float %9341, %9325
  %9347 = fmul fast float %9346, %9345
  br label %9430

; <label>:9348                                    ; preds = %9284
  %9349 = getelementptr inbounds [3 x float], [3 x float]* %105, i32 0, i32 %9308
  %9350 = load float, float* %9349, align 4, !tbaa !116, !noalias !128
  %9351 = fcmp fast olt float %9350, %9215
  %9352 = icmp sgt i32 %9291, 0
  %9353 = and i1 %9352, %9351
  br i1 %9353, label %9354, label %9391

; <label>:9354                                    ; preds = %9348
  br label %9355

; <label>:9355                                    ; preds = %9384, %9354
  %9356 = phi float [ %9385, %9384 ], [ %9213, %9354 ]
  %9357 = phi float [ %9386, %9384 ], [ %9214, %9354 ]
  %9358 = phi float [ %9366, %9384 ], [ %9350, %9354 ]
  %9359 = phi i32 [ %9363, %9384 ], [ %9308, %9354 ]
  %9360 = getelementptr inbounds [3 x float], [3 x float]* %106, i32 0, i32 %9359
  %9361 = load float, float* %9360, align 4, !tbaa !116, !noalias !128
  %9362 = icmp slt i32 %9359, 2
  %9363 = add nsw i32 %9359, 1
  %9364 = getelementptr inbounds [3 x float], [3 x float]* %105, i32 0, i32 %9363
  %9365 = load float, float* %9364, align 4, !tbaa !116, !noalias !128
  %9366 = select i1 %9362, float %9365, float %9129
  %9367 = call float @dx.op.binary.f32(i32 36, float %9366, float %9361)  ; FMin(a,b)
  %9368 = call float @dx.op.binary.f32(i32 36, float %9215, float %9367)  ; FMin(a,b)
  %9369 = icmp eq i32 %9079, 0
  %9370 = fadd fast float %9368, %9358
  %9371 = fmul fast float %9370, %9060
  %9372 = fadd fast float %9371, %9073
  br i1 %9369, label %9378, label %9373

; <label>:9373                                    ; preds = %9355
  %9374 = fsub fast float %9368, %9358
  %9375 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %9374)  ; FMax(a,b)
  %9376 = fmul fast float %9375, %9372
  %9377 = fadd fast float %9376, %9357
  br label %9384

; <label>:9378                                    ; preds = %9355
  %9379 = fsub fast float %9358, %9368
  %9380 = call float @dx.op.unary.f32(i32 6, float %9379)  ; FAbs(value)
  %9381 = fadd fast float %9380, %9356
  %9382 = fmul fast float %9380, %9372
  %9383 = fsub fast float %9357, %9382
  br label %9384

; <label>:9384                                    ; preds = %9378, %9373
  %9385 = phi float [ %9375, %9373 ], [ %9381, %9378 ]
  %9386 = phi float [ %9377, %9373 ], [ %9383, %9378 ]
  %9387 = fcmp fast olt float %9366, %9215
  %9388 = icmp slt i32 %9363, 3
  %9389 = and i1 %9388, %9387
  br i1 %9389, label %9355, label %9390

; <label>:9390                                    ; preds = %9384
  br label %9391

; <label>:9391                                    ; preds = %9390, %9348
  %9392 = phi float [ %9213, %9348 ], [ %9385, %9390 ]
  %9393 = phi float [ %9214, %9348 ], [ %9386, %9390 ]
  %9394 = fsub fast float %9129, %9392
  %9395 = select i1 %9131, float %9392, float %9394
  %9396 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %9397 = extractvalue %dx.types.CBufRet.f32 %9396, 0
  %9398 = extractvalue %dx.types.CBufRet.f32 %9396, 1
  %9399 = extractvalue %dx.types.CBufRet.f32 %9396, 2
  %9400 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %9401 = extractvalue %dx.types.CBufRet.f32 %9400, 0
  %9402 = extractvalue %dx.types.CBufRet.f32 %9400, 1
  %9403 = extractvalue %dx.types.CBufRet.f32 %9400, 2
  %9404 = extractvalue %dx.types.CBufRet.f32 %9400, 3
  %9405 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %9406 = extractvalue %dx.types.CBufRet.f32 %9405, 3
  %9407 = call float @dx.op.binary.f32(i32 36, float %9393, float %9406)  ; FMin(a,b)
  %9408 = fmul fast float %9404, %9395
  %9409 = call float @dx.op.unary.f32(i32 7, float %9408)  ; Saturate(value)
  %9410 = fsub fast float %9401, %9397
  %9411 = fsub fast float %9402, %9398
  %9412 = fsub fast float %9403, %9399
  %9413 = fmul fast float %9409, %9410
  %9414 = fmul fast float %9409, %9411
  %9415 = fmul fast float %9409, %9412
  %9416 = fadd fast float %9413, %9397
  %9417 = fadd fast float %9414, %9398
  %9418 = fadd fast float %9415, %9399
  %9419 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %9420 = extractvalue %dx.types.CBufRet.f32 %9419, 0
  %9421 = extractvalue %dx.types.CBufRet.f32 %9419, 1
  %9422 = fadd fast float %9421, %9420
  %9423 = call float @dx.op.unary.f32(i32 7, float %9422)  ; Saturate(value)
  %9424 = extractvalue %dx.types.CBufRet.f32 %9419, 2
  %9425 = extractvalue %dx.types.CBufRet.f32 %9419, 3
  %9426 = fadd fast float %9425, %9424
  %9427 = call float @dx.op.unary.f32(i32 7, float %9426)  ; Saturate(value)
  %9428 = fmul fast float %9423, %9407
  %9429 = fmul fast float %9428, %9427
  br label %9430

; <label>:9430                                    ; preds = %9391, %9310, %9145, %9127, %9125
  %9431 = phi float [ %9154, %9145 ], [ %9313, %9310 ], [ %9395, %9391 ], [ 0.000000e+00, %9125 ], [ 0.000000e+00, %9127 ]
  %9432 = phi float [ %9188, %9145 ], [ %9347, %9310 ], [ %9429, %9391 ], [ 0.000000e+00, %9125 ], [ 0.000000e+00, %9127 ]
  %9433 = phi float [ %9175, %9145 ], [ %9334, %9310 ], [ %9416, %9391 ], [ 0.000000e+00, %9125 ], [ 0.000000e+00, %9127 ]
  %9434 = phi float [ %9176, %9145 ], [ %9335, %9310 ], [ %9417, %9391 ], [ 0.000000e+00, %9125 ], [ 0.000000e+00, %9127 ]
  %9435 = phi float [ %9177, %9145 ], [ %9336, %9310 ], [ %9418, %9391 ], [ 0.000000e+00, %9125 ], [ 0.000000e+00, %9127 ]
  %9436 = fmul fast float %9068, %9432
  %9437 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %9438 = extractvalue %dx.types.CBufRet.f32 %9437, 2
  %9439 = fsub fast float %9075, %9438
  %9440 = fcmp fast olt float %9436, -2.000000e+01
  %9441 = call float @dx.op.unary.f32(i32 21, float %9436)  ; Exp(value)
  %9442 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %9443 = extractvalue %dx.types.CBufRet.f32 %9442, 2
  %9444 = extractvalue %dx.types.CBufRet.f32 %9442, 3
  %9445 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %9446 = extractvalue %dx.types.CBufRet.f32 %9445, 2
  %9447 = fmul fast float %9444, %9439
  %9448 = call float @dx.op.unary.f32(i32 7, float %9447)  ; Saturate(value)
  %9449 = fsub fast float 1.000000e+00, %9448
  %9450 = fmul fast float %9060, 5.000000e-01
  %9451 = fadd fast float %9450, 5.000000e-01
  %9452 = call float @dx.op.unary.f32(i32 7, float %9451)  ; Saturate(value)
  %9453 = fsub fast float 1.000000e+00, %9452
  %9454 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %9449)  ; FMax(a,b)
  %9455 = fdiv fast float %9453, %9454
  %9456 = fsub fast float %9439, %9017
  %9457 = call float @dx.op.unary.f32(i32 6, float %9456)  ; FAbs(value)
  %9458 = fmul fast float %9457, %9443
  %9459 = call float @dx.op.unary.f32(i32 7, float %9455)  ; Saturate(value)
  %9460 = fsub fast float 1.000000e+00, %9458
  %9461 = fmul fast float %9460, %9459
  %9462 = fadd fast float %9461, %9458
  %9463 = fmul fast float %9446, %9439
  %9464 = call float @dx.op.unary.f32(i32 7, float %9463)  ; Saturate(value)
  %9465 = fsub fast float 1.000000e+00, %9462
  %9466 = fmul fast float %9465, %9464
  %9467 = fadd fast float %9466, %9462
  %9468 = call float @dx.op.unary.f32(i32 7, float %9467)  ; Saturate(value)
  %9469 = fadd fast float %9441, -1.000000e+00
  %9470 = select i1 %9440, float -1.000000e+00, float %9469
  %9471 = fmul fast float %9468, %9470
  %9472 = fadd fast float %9471, 1.000000e+00
  %9473 = fsub fast float -0.000000e+00, %9471
  %9474 = fmul fast float %9433, %9473
  %9475 = fmul fast float %9434, %9473
  %9476 = fmul fast float %9435, %9473
  br label %9477

; <label>:9477                                    ; preds = %9430, %9026
  %9478 = phi float [ %9431, %9430 ], [ 0.000000e+00, %9026 ]
  %9479 = phi float [ %9472, %9430 ], [ 1.000000e+00, %9026 ]
  %9480 = phi float [ %9474, %9430 ], [ 0.000000e+00, %9026 ]
  %9481 = phi float [ %9475, %9430 ], [ 0.000000e+00, %9026 ]
  %9482 = phi float [ %9476, %9430 ], [ 0.000000e+00, %9026 ]
  %9483 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %9484 = extractvalue %dx.types.CBufRet.f32 %9483, 1
  %9485 = fsub fast float 1.000000e+00, %9479
  %9486 = fmul fast float %9485, %9061
  %9487 = fmul fast float %9486, %9484
  %9488 = fsub fast float %9061, %9487
  br i1 %9054, label %9489, label %9518, !dx.controlflow.hints !164

; <label>:9489                                    ; preds = %9477
  %9490 = fmul fast float %9062, %9051
  %9491 = fadd fast float %9490, %9052
  %9492 = call float @dx.op.unary.f32(i32 7, float %9491)  ; Saturate(value)
  %9493 = fmul fast float %9033, %9488
  %9494 = fsub fast float -0.000000e+00, %9493
  %9495 = fmul fast float %9034, %9488
  %9496 = fsub fast float -0.000000e+00, %9495
  %9497 = call float @dx.op.unary.f32(i32 21, float %9494)  ; Exp(value)
  %9498 = call float @dx.op.unary.f32(i32 21, float %9496)  ; Exp(value)
  %9499 = call float @dx.op.binary.f32(i32 35, float %9041, float %9497)  ; FMax(a,b)
  %9500 = call float @dx.op.binary.f32(i32 35, float %9041, float %9498)  ; FMax(a,b)
  %9501 = fsub fast float %9500, %9499
  %9502 = fmul fast float %9501, %9492
  %9503 = fadd fast float %9502, %9499
  %9504 = call float @dx.op.unary.f32(i32 7, float %9503)  ; Saturate(value)
  %9505 = fsub fast float %9038, %9043
  %9506 = fsub fast float %9039, %9044
  %9507 = fsub fast float %9040, %9045
  %9508 = fmul fast float %9492, %9505
  %9509 = fmul fast float %9492, %9506
  %9510 = fmul fast float %9492, %9507
  %9511 = fadd fast float %9508, %9043
  %9512 = fadd fast float %9509, %9044
  %9513 = fadd fast float %9510, %9045
  %9514 = fsub fast float 1.000000e+00, %9504
  %9515 = fmul fast float %9514, %9511
  %9516 = fmul fast float %9514, %9512
  %9517 = fmul fast float %9514, %9513
  br label %9577

; <label>:9518                                    ; preds = %9477
  %9519 = fmul fast float %9488, %9050
  %9520 = call float @dx.op.unary.f32(i32 7, float %9519)  ; Saturate(value)
  %9521 = fsub fast float 2.000000e+00, %9520
  %9522 = fmul fast float %9520, 9.921875e-01
  %9523 = fmul fast float %9522, %9521
  %9524 = fadd fast float %9523, 3.906250e-03
  %9525 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %45, float %9524, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9526 = extractvalue %dx.types.ResRet.f32 %9525, 0
  %9527 = fsub fast float %9520, %9526
  %9528 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %9527)  ; FMax(a,b)
  %9529 = fmul fast float %9036, %9017
  %9530 = call float @dx.op.unary.f32(i32 6, float %9529)  ; FAbs(value)
  %9531 = fcmp fast ogt float %9530, 0x3EB0C6F7A0000000
  br i1 %9531, label %9532, label %9538, !dx.controlflow.hints !165

; <label>:9532                                    ; preds = %9518
  %9533 = fmul fast float %9529, 0xBFF7154760000000
  %9534 = call float @dx.op.unary.f32(i32 21, float %9533)  ; Exp(value)
  %9535 = fsub fast float 1.000000e+00, %9534
  %9536 = fdiv fast float %9535, %9529
  %9537 = fmul fast float %9536, %9046
  br label %9538

; <label>:9538                                    ; preds = %9532, %9518
  %9539 = phi float [ %9537, %9532 ], [ %9046, %9518 ]
  %9540 = fadd fast float %9539, %9048
  %9541 = fmul fast float %9540, %9528
  %9542 = fmul fast float %9033, %9541
  %9543 = fsub fast float -0.000000e+00, %9542
  %9544 = fmul fast float %9034, %9541
  %9545 = fsub fast float -0.000000e+00, %9544
  %9546 = fmul fast float %9035, %9541
  %9547 = fsub fast float -0.000000e+00, %9546
  %9548 = call float @dx.op.unary.f32(i32 21, float %9543)  ; Exp(value)
  %9549 = call float @dx.op.unary.f32(i32 21, float %9545)  ; Exp(value)
  %9550 = call float @dx.op.unary.f32(i32 21, float %9547)  ; Exp(value)
  %9551 = fmul fast float %9062, %9062
  %9552 = fadd fast float %9551, 1.000000e+00
  %9553 = fmul fast float %9552, 0x3FAE8EC8A0000000
  %9554 = fmul fast float %9553, %9043
  %9555 = fmul fast float %9553, %9044
  %9556 = fmul fast float %9553, %9045
  %9557 = fmul fast float %9062, %9041
  %9558 = fsub fast float 1.000000e+00, %9557
  %9559 = fmul fast float %9041, %9041
  %9560 = fsub fast float 1.000000e+00, %9559
  %9561 = fmul fast float %9560, 0x3FB45F3060000000
  %9562 = fmul fast float %9558, %9558
  %9563 = fdiv fast float 1.000000e+00, %9562
  %9564 = fmul fast float %9561, %9563
  %9565 = fmul fast float %9564, %9038
  %9566 = fmul fast float %9564, %9039
  %9567 = fmul fast float %9564, %9040
  %9568 = fadd fast float %9565, %9554
  %9569 = fadd fast float %9566, %9555
  %9570 = fadd fast float %9567, %9556
  %9571 = fsub fast float 1.000000e+00, %9548
  %9572 = fsub fast float 1.000000e+00, %9549
  %9573 = fsub fast float 1.000000e+00, %9550
  %9574 = fmul fast float %9568, %9571
  %9575 = fmul fast float %9569, %9572
  %9576 = fmul fast float %9570, %9573
  br label %9577

; <label>:9577                                    ; preds = %9538, %9489
  %9578 = phi float [ %9515, %9489 ], [ %9574, %9538 ]
  %9579 = phi float [ %9516, %9489 ], [ %9575, %9538 ]
  %9580 = phi float [ %9517, %9489 ], [ %9576, %9538 ]
  %9581 = phi float [ %9504, %9489 ], [ %9548, %9538 ]
  %9582 = phi float [ %9504, %9489 ], [ %9549, %9538 ]
  %9583 = phi float [ %9504, %9489 ], [ %9550, %9538 ]
  br i1 %9070, label %9584, label %9782, !dx.controlflow.hints !166

; <label>:9584                                    ; preds = %9577
  %9585 = extractvalue %dx.types.CBufRet.f32 %9483, 0
  %9586 = fmul fast float %9585, %9485
  %9587 = fsub fast float %9480, %9578
  %9588 = fsub fast float %9481, %9579
  %9589 = fsub fast float %9482, %9580
  %9590 = fmul fast float %9586, %9587
  %9591 = fmul fast float %9586, %9588
  %9592 = fmul fast float %9586, %9589
  %9593 = fadd fast float %9590, %9578
  %9594 = fadd fast float %9591, %9579
  %9595 = fadd fast float %9592, %9580
  %9596 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9581)  ; FMax(a,b)
  %9597 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9582)  ; FMax(a,b)
  %9598 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9583)  ; FMax(a,b)
  %9599 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9479)  ; FMax(a,b)
  %9600 = call float @dx.op.binary.f32(i32 35, float %9478, float %9488)  ; FMax(a,b)
  %9601 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %9600)  ; FMax(a,b)
  %9602 = fdiv fast float %9478, %9601
  %9603 = call float @dx.op.unary.f32(i32 7, float %9602)  ; Saturate(value)
  %9604 = fdiv fast float %9488, %9601
  %9605 = call float @dx.op.unary.f32(i32 7, float %9604)  ; Saturate(value)
  %9606 = fcmp fast une float %9599, 1.000000e+00
  br i1 %9606, label %9607, label %9620, !dx.controlflow.hints !167

; <label>:9607                                    ; preds = %9584
  %9608 = call float @dx.op.unary.f32(i32 23, float %9599)  ; Log(value)
  %9609 = fmul fast float %9608, 0x3FE62E4300000000
  %9610 = fmul fast float %9480, %9609
  %9611 = fsub fast float -0.000000e+00, %9610
  %9612 = fmul fast float %9481, %9609
  %9613 = fsub fast float -0.000000e+00, %9612
  %9614 = fmul fast float %9482, %9609
  %9615 = fsub fast float -0.000000e+00, %9614
  %9616 = fsub fast float 1.000000e+00, %9599
  %9617 = fdiv fast float %9611, %9616
  %9618 = fdiv fast float %9613, %9616
  %9619 = fdiv fast float %9615, %9616
  br label %9620

; <label>:9620                                    ; preds = %9607, %9584
  %9621 = phi float [ %9617, %9607 ], [ %9480, %9584 ]
  %9622 = phi float [ %9618, %9607 ], [ %9481, %9584 ]
  %9623 = phi float [ %9619, %9607 ], [ %9482, %9584 ]
  %9624 = phi float [ %9609, %9607 ], [ 0.000000e+00, %9584 ]
  %9625 = fcmp fast une float %9596, 1.000000e+00
  br i1 %9625, label %9626, label %9633, !dx.controlflow.hints !168

; <label>:9626                                    ; preds = %9620
  %9627 = call float @dx.op.unary.f32(i32 23, float %9596)  ; Log(value)
  %9628 = fmul fast float %9627, 0x3FE62E4300000000
  %9629 = fmul fast float %9593, %9628
  %9630 = fsub fast float -0.000000e+00, %9629
  %9631 = fsub fast float 1.000000e+00, %9596
  %9632 = fdiv fast float %9630, %9631
  br label %9633

; <label>:9633                                    ; preds = %9626, %9620
  %9634 = phi float [ %9632, %9626 ], [ %9593, %9620 ]
  %9635 = phi float [ %9628, %9626 ], [ 0.000000e+00, %9620 ]
  %9636 = fcmp fast une float %9597, 1.000000e+00
  br i1 %9636, label %9637, label %9644, !dx.controlflow.hints !168

; <label>:9637                                    ; preds = %9633
  %9638 = call float @dx.op.unary.f32(i32 23, float %9597)  ; Log(value)
  %9639 = fmul fast float %9638, 0x3FE62E4300000000
  %9640 = fmul fast float %9594, %9639
  %9641 = fsub fast float -0.000000e+00, %9640
  %9642 = fsub fast float 1.000000e+00, %9597
  %9643 = fdiv fast float %9641, %9642
  br label %9644

; <label>:9644                                    ; preds = %9637, %9633
  %9645 = phi float [ %9643, %9637 ], [ %9594, %9633 ]
  %9646 = phi float [ %9639, %9637 ], [ 0.000000e+00, %9633 ]
  %9647 = fcmp fast une float %9598, 1.000000e+00
  br i1 %9647, label %9648, label %9655, !dx.controlflow.hints !168

; <label>:9648                                    ; preds = %9644
  %9649 = call float @dx.op.unary.f32(i32 23, float %9598)  ; Log(value)
  %9650 = fmul fast float %9649, 0x3FE62E4300000000
  %9651 = fmul fast float %9595, %9650
  %9652 = fsub fast float -0.000000e+00, %9651
  %9653 = fsub fast float 1.000000e+00, %9598
  %9654 = fdiv fast float %9652, %9653
  br label %9655

; <label>:9655                                    ; preds = %9648, %9644
  %9656 = phi float [ %9654, %9648 ], [ %9595, %9644 ]
  %9657 = phi float [ %9650, %9648 ], [ 0.000000e+00, %9644 ]
  %9658 = fmul fast float %9621, %9605
  %9659 = fmul fast float %9622, %9605
  %9660 = fmul fast float %9623, %9605
  %9661 = fmul fast float %9624, %9605
  %9662 = fmul fast float %9634, %9603
  %9663 = fmul fast float %9645, %9603
  %9664 = fmul fast float %9656, %9603
  %9665 = fmul fast float %9635, %9603
  %9666 = fmul fast float %9646, %9603
  %9667 = fmul fast float %9657, %9603
  %9668 = fadd fast float %9662, %9658
  %9669 = fadd fast float %9663, %9659
  %9670 = fadd fast float %9664, %9660
  %9671 = fadd fast float %9665, %9661
  %9672 = fadd fast float %9666, %9661
  %9673 = fadd fast float %9667, %9661
  %9674 = fcmp fast une float %9671, 0.000000e+00
  br i1 %9674, label %9675, label %9682, !dx.controlflow.hints !169

; <label>:9675                                    ; preds = %9655
  %9676 = fmul fast float %9671, 0x3FF7154760000000
  %9677 = call float @dx.op.unary.f32(i32 21, float %9676)  ; Exp(value)
  %9678 = fsub fast float 1.000000e+00, %9677
  %9679 = fmul fast float %9668, %9678
  %9680 = fsub fast float -0.000000e+00, %9679
  %9681 = fdiv fast float %9680, %9671
  br label %9682

; <label>:9682                                    ; preds = %9675, %9655
  %9683 = phi float [ %9677, %9675 ], [ 1.000000e+00, %9655 ]
  %9684 = phi float [ %9681, %9675 ], [ %9668, %9655 ]
  %9685 = fcmp fast une float %9672, 0.000000e+00
  br i1 %9685, label %9686, label %9693, !dx.controlflow.hints !169

; <label>:9686                                    ; preds = %9682
  %9687 = fmul fast float %9672, 0x3FF7154760000000
  %9688 = call float @dx.op.unary.f32(i32 21, float %9687)  ; Exp(value)
  %9689 = fsub fast float 1.000000e+00, %9688
  %9690 = fmul fast float %9669, %9689
  %9691 = fsub fast float -0.000000e+00, %9690
  %9692 = fdiv fast float %9691, %9672
  br label %9693

; <label>:9693                                    ; preds = %9686, %9682
  %9694 = phi float [ %9688, %9686 ], [ 1.000000e+00, %9682 ]
  %9695 = phi float [ %9692, %9686 ], [ %9669, %9682 ]
  %9696 = fcmp fast une float %9673, 0.000000e+00
  br i1 %9696, label %9697, label %9704, !dx.controlflow.hints !169

; <label>:9697                                    ; preds = %9693
  %9698 = fmul fast float %9673, 0x3FF7154760000000
  %9699 = call float @dx.op.unary.f32(i32 21, float %9698)  ; Exp(value)
  %9700 = fsub fast float 1.000000e+00, %9699
  %9701 = fmul fast float %9670, %9700
  %9702 = fsub fast float -0.000000e+00, %9701
  %9703 = fdiv fast float %9702, %9673
  br label %9704

; <label>:9704                                    ; preds = %9697, %9693
  %9705 = phi float [ %9699, %9697 ], [ 1.000000e+00, %9693 ]
  %9706 = phi float [ %9703, %9697 ], [ %9670, %9693 ]
  %9707 = fcmp fast ogt float %9603, %9605
  br i1 %9707, label %9708, label %9728

; <label>:9708                                    ; preds = %9704
  %9709 = fsub fast float 1.000000e+00, %9605
  %9710 = fmul fast float %9621, %9709
  %9711 = fmul fast float %9622, %9709
  %9712 = fmul fast float %9623, %9709
  %9713 = fmul fast float %9624, %9709
  %9714 = fcmp fast une float %9713, 0.000000e+00
  br i1 %9714, label %9715, label %9766, !dx.controlflow.hints !170

; <label>:9715                                    ; preds = %9708
  %9716 = fmul fast float %9713, 0x3FF7154760000000
  %9717 = call float @dx.op.unary.f32(i32 21, float %9716)  ; Exp(value)
  %9718 = fsub fast float 1.000000e+00, %9717
  %9719 = fmul fast float %9710, %9718
  %9720 = fsub fast float -0.000000e+00, %9719
  %9721 = fmul fast float %9711, %9718
  %9722 = fsub fast float -0.000000e+00, %9721
  %9723 = fmul fast float %9712, %9718
  %9724 = fsub fast float -0.000000e+00, %9723
  %9725 = fdiv fast float %9720, %9713
  %9726 = fdiv fast float %9722, %9713
  %9727 = fdiv fast float %9724, %9713
  br label %9766

; <label>:9728                                    ; preds = %9704
  %9729 = fsub fast float 1.000000e+00, %9603
  %9730 = fmul fast float %9634, %9729
  %9731 = fmul fast float %9645, %9729
  %9732 = fmul fast float %9656, %9729
  %9733 = fmul fast float %9635, %9729
  %9734 = fmul fast float %9646, %9729
  %9735 = fmul fast float %9657, %9729
  %9736 = fcmp fast une float %9733, 0.000000e+00
  br i1 %9736, label %9737, label %9744, !dx.controlflow.hints !169

; <label>:9737                                    ; preds = %9728
  %9738 = fmul fast float %9733, 0x3FF7154760000000
  %9739 = call float @dx.op.unary.f32(i32 21, float %9738)  ; Exp(value)
  %9740 = fsub fast float 1.000000e+00, %9739
  %9741 = fmul fast float %9730, %9740
  %9742 = fsub fast float -0.000000e+00, %9741
  %9743 = fdiv fast float %9742, %9733
  br label %9744

; <label>:9744                                    ; preds = %9737, %9728
  %9745 = phi float [ %9743, %9737 ], [ %9730, %9728 ]
  %9746 = phi float [ %9739, %9737 ], [ 1.000000e+00, %9728 ]
  %9747 = fcmp fast une float %9734, 0.000000e+00
  br i1 %9747, label %9748, label %9755, !dx.controlflow.hints !169

; <label>:9748                                    ; preds = %9744
  %9749 = fmul fast float %9734, 0x3FF7154760000000
  %9750 = call float @dx.op.unary.f32(i32 21, float %9749)  ; Exp(value)
  %9751 = fsub fast float 1.000000e+00, %9750
  %9752 = fmul fast float %9731, %9751
  %9753 = fsub fast float -0.000000e+00, %9752
  %9754 = fdiv fast float %9753, %9734
  br label %9755

; <label>:9755                                    ; preds = %9748, %9744
  %9756 = phi float [ %9754, %9748 ], [ %9731, %9744 ]
  %9757 = phi float [ %9750, %9748 ], [ 1.000000e+00, %9744 ]
  %9758 = fcmp fast une float %9735, 0.000000e+00
  br i1 %9758, label %9759, label %9766, !dx.controlflow.hints !169

; <label>:9759                                    ; preds = %9755
  %9760 = fmul fast float %9735, 0x3FF7154760000000
  %9761 = call float @dx.op.unary.f32(i32 21, float %9760)  ; Exp(value)
  %9762 = fsub fast float 1.000000e+00, %9761
  %9763 = fmul fast float %9732, %9762
  %9764 = fsub fast float -0.000000e+00, %9763
  %9765 = fdiv fast float %9764, %9735
  br label %9766

; <label>:9766                                    ; preds = %9759, %9755, %9715, %9708
  %9767 = phi float [ %9765, %9759 ], [ %9727, %9715 ], [ %9712, %9708 ], [ %9732, %9755 ]
  %9768 = phi float [ %9756, %9759 ], [ %9726, %9715 ], [ %9711, %9708 ], [ %9756, %9755 ]
  %9769 = phi float [ %9745, %9759 ], [ %9725, %9715 ], [ %9710, %9708 ], [ %9745, %9755 ]
  %9770 = phi float [ %9761, %9759 ], [ %9717, %9715 ], [ 1.000000e+00, %9708 ], [ 1.000000e+00, %9755 ]
  %9771 = phi float [ %9757, %9759 ], [ %9717, %9715 ], [ 1.000000e+00, %9708 ], [ %9757, %9755 ]
  %9772 = phi float [ %9746, %9759 ], [ %9717, %9715 ], [ 1.000000e+00, %9708 ], [ %9746, %9755 ]
  %9773 = fmul fast float %9772, %9684
  %9774 = fmul fast float %9771, %9695
  %9775 = fmul fast float %9770, %9706
  %9776 = fadd fast float %9773, %9769
  %9777 = fadd fast float %9774, %9768
  %9778 = fadd fast float %9775, %9767
  %9779 = fmul fast float %9772, %9683
  %9780 = fmul fast float %9771, %9694
  %9781 = fmul fast float %9770, %9705
  br label %9782

; <label>:9782                                    ; preds = %9766, %9577
  %9783 = phi float [ %9781, %9766 ], [ %9583, %9577 ]
  %9784 = phi float [ %9780, %9766 ], [ %9582, %9577 ]
  %9785 = phi float [ %9779, %9766 ], [ %9581, %9577 ]
  %9786 = phi float [ %9778, %9766 ], [ %9580, %9577 ]
  %9787 = phi float [ %9777, %9766 ], [ %9579, %9577 ]
  %9788 = phi float [ %9776, %9766 ], [ %9578, %9577 ]
  %9789 = fmul fast float %9788, %8742
  %9790 = fmul fast float %9787, %8743
  %9791 = fmul fast float %9786, %8744
  %9792 = fmul fast float %9785, %9025
  %9793 = call float @dx.op.dot3.f32(i32 55, float %9785, float %9784, float %9783, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9794 = call float @dx.op.dot3.f32(i32 55, float %9789, float %9790, float %9791, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9795 = select i1 %294, float %9793, float %9785
  %9796 = select i1 %294, float %9793, float %9784
  %9797 = select i1 %294, float 1.000000e+00, float %9783
  %9798 = select i1 %294, float %9794, float %9789
  %9799 = select i1 %294, float 0.000000e+00, float %9790
  %9800 = select i1 %294, float 0.000000e+00, float %9791
  %9801 = fmul fast float %9795, %9019
  %9802 = fmul fast float %9796, %9020
  %9803 = fmul fast float %9797, %9021
  %9804 = fadd fast float %9801, %9798
  %9805 = fadd fast float %9802, %9799
  %9806 = fadd fast float %9800, %9803
  %9807 = fmul fast float %9795, %9022
  %9808 = fmul fast float %9796, %9023
  %9809 = fmul fast float %9797, %9024
  %9810 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %9811 = extractvalue %dx.types.CBufRet.i32 %9810, 0
  %9812 = icmp eq i32 %9811, 0
  br i1 %9812, label %10180, label %9813, !dx.controlflow.hints !171

; <label>:9813                                    ; preds = %9782
  %9814 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %9815 = extractvalue %dx.types.CBufRet.f32 %9814, 2
  %9816 = extractvalue %dx.types.CBufRet.f32 %9814, 3
  %9817 = fmul fast float %9815, %111
  %9818 = fmul fast float %9816, %112
  %9819 = fmul fast float %9817, 2.000000e+00
  %9820 = fmul fast float %9818, 2.000000e+00
  %9821 = fsub fast float 1.000000e+00, %9819
  %9822 = fsub fast float 1.000000e+00, %9820
  %9823 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %9824 = extractvalue %dx.types.CBufRet.f32 %9823, 0
  %9825 = extractvalue %dx.types.CBufRet.f32 %9823, 1
  %9826 = extractvalue %dx.types.CBufRet.f32 %9823, 2
  %9827 = fmul fast float %9821, %9824
  %9828 = fmul fast float %9821, %9825
  %9829 = fmul fast float %9821, %9826
  %9830 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %9831 = extractvalue %dx.types.CBufRet.f32 %9830, 0
  %9832 = extractvalue %dx.types.CBufRet.f32 %9830, 1
  %9833 = extractvalue %dx.types.CBufRet.f32 %9830, 2
  %9834 = fmul fast float %9822, %9831
  %9835 = fmul fast float %9822, %9832
  %9836 = fmul fast float %9822, %9833
  %9837 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %9838 = extractvalue %dx.types.CBufRet.f32 %9837, 0
  %9839 = extractvalue %dx.types.CBufRet.f32 %9837, 1
  %9840 = extractvalue %dx.types.CBufRet.f32 %9837, 2
  %9841 = fadd fast float %9834, %9838
  %9842 = fadd fast float %9841, %9827
  %9843 = fadd fast float %9835, %9839
  %9844 = fadd fast float %9843, %9828
  %9845 = fadd fast float %9836, %9840
  %9846 = fadd fast float %9845, %9829
  %9847 = fmul fast float %9842, %9018
  %9848 = fmul fast float %9844, %9018
  %9849 = fmul fast float %9846, %9018
  %9850 = fmul fast float %9847, %9847
  %9851 = fmul fast float %9848, %9848
  %9852 = fadd fast float %9850, %9851
  %9853 = fmul fast float %9849, %9849
  %9854 = fadd fast float %9852, %9853
  %9855 = call float @dx.op.unary.f32(i32 24, float %9854)  ; Sqrt(value)
  %9856 = extractvalue %dx.types.CBufRet.f32 %8745, 0
  %9857 = fsub fast float %9855, %9856
  %9858 = extractvalue %dx.types.CBufRet.f32 %8745, 2
  %9859 = fmul fast float %9857, %9858
  %9860 = call float @dx.op.unary.f32(i32 7, float %9859)  ; Saturate(value)
  %9861 = fadd fast float %9860, -5.000000e-01
  %9862 = fmul fast float %9861, 2.000000e+00
  %9863 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %9864 = extractvalue %dx.types.CBufRet.f32 %9863, 2
  %9865 = call float @dx.op.binary.f32(i32 36, float %9864, float %9862)  ; FMin(a,b)
  %9866 = fsub fast float -0.000000e+00, %9864
  %9867 = fcmp fast ogt float %9865, %9866
  br i1 %9867, label %9868, label %10180, !dx.controlflow.hints !172

; <label>:9868                                    ; preds = %9813
  %9869 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %9870 = extractvalue %dx.types.CBufRet.f32 %9869, 3
  %9871 = fcmp fast ogt float %9870, 0.000000e+00
  br i1 %9871, label %9872, label %9947, !dx.controlflow.hints !173

; <label>:9872                                    ; preds = %9868
  %9873 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %27, i32 0)  ; GetDimensions(handle,mipLevel)
  %9874 = extractvalue %dx.types.Dimensions %9873, 0
  %9875 = sitofp i32 %9874 to float
  %9876 = extractvalue %dx.types.Dimensions %9873, 1
  %9877 = sitofp i32 %9876 to float
  %9878 = fmul fast float %9817, %9875
  %9879 = fmul fast float %9818, %9877
  %9880 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %9881 = extractvalue %dx.types.CBufRet.f32 %9880, 1
  %9882 = fsub fast float -0.000000e+00, %9881
  %9883 = fptoui float %9882 to i32
  %9884 = fptoui float %9878 to i32
  %9885 = fptoui float %9879 to i32
  %9886 = and i32 %9883, 31
  %9887 = lshr i32 %9884, %9886
  %9888 = lshr i32 %9885, %9886
  %9889 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %27, i32 %9883, i32 %9887, i32 %9888, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %9890 = extractvalue %dx.types.ResRet.f32 %9889, 0
  %9891 = fcmp fast olt float %9890, -1.000000e+00
  %9892 = fcmp fast ogt float %9890, -1.000000e+00
  %9893 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %9894 = extractvalue %dx.types.CBufRet.f32 %9893, 1
  %9895 = select i1 %9892, float %9894, float 1.000000e+00
  %9896 = fadd fast float %9890, 1.000000e+00
  %9897 = fmul fast float %9895, %9896
  %9898 = call float @dx.op.unary.f32(i32 6, float %9897)  ; FAbs(value)
  %9899 = extractvalue %dx.types.CBufRet.f32 %9893, 3
  %9900 = fcmp fast oge float %9898, %9899
  %9901 = select i1 %9900, float 0x4197782600000000, float %9898
  %9902 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %9903 = extractvalue %dx.types.CBufRet.f32 %9902, 0
  %9904 = extractvalue %dx.types.CBufRet.f32 %9902, 1
  %9905 = extractvalue %dx.types.CBufRet.f32 %9902, 2
  %9906 = select i1 %9891, float %9903, float %9824
  %9907 = select i1 %9891, float %9904, float %9825
  %9908 = select i1 %9891, float %9905, float %9826
  %9909 = fmul fast float %9906, %9821
  %9910 = fmul fast float %9907, %9821
  %9911 = fmul fast float %9908, %9821
  %9912 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %9913 = extractvalue %dx.types.CBufRet.f32 %9912, 0
  %9914 = extractvalue %dx.types.CBufRet.f32 %9912, 1
  %9915 = extractvalue %dx.types.CBufRet.f32 %9912, 2
  %9916 = select i1 %9891, float %9913, float %9831
  %9917 = select i1 %9891, float %9914, float %9832
  %9918 = select i1 %9891, float %9915, float %9833
  %9919 = fmul fast float %9916, %9822
  %9920 = fmul fast float %9917, %9822
  %9921 = fmul fast float %9918, %9822
  %9922 = fadd fast float %9919, %9909
  %9923 = fadd fast float %9920, %9910
  %9924 = fadd fast float %9921, %9911
  %9925 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %9926 = extractvalue %dx.types.CBufRet.f32 %9925, 0
  %9927 = extractvalue %dx.types.CBufRet.f32 %9925, 1
  %9928 = extractvalue %dx.types.CBufRet.f32 %9925, 2
  %9929 = select i1 %9891, float %9926, float %9838
  %9930 = select i1 %9891, float %9927, float %9839
  %9931 = select i1 %9891, float %9928, float %9840
  %9932 = fadd fast float %9922, %9929
  %9933 = fadd fast float %9923, %9930
  %9934 = fadd fast float %9924, %9931
  %9935 = fmul fast float %9932, %9901
  %9936 = fmul fast float %9933, %9901
  %9937 = fmul fast float %9934, %9901
  %9938 = fmul fast float %9935, %9935
  %9939 = fmul fast float %9936, %9936
  %9940 = fadd fast float %9938, %9939
  %9941 = fmul fast float %9937, %9937
  %9942 = fadd fast float %9940, %9941
  %9943 = call float @dx.op.unary.f32(i32 24, float %9942)  ; Sqrt(value)
  %9944 = fsub fast float %9943, %9856
  %9945 = fmul fast float %9944, %9858
  %9946 = call float @dx.op.unary.f32(i32 7, float %9945)  ; Saturate(value)
  br label %9947

; <label>:9947                                    ; preds = %9872, %9868
  %9948 = phi float [ %9946, %9872 ], [ 1.000000e+00, %9868 ]
  %9949 = fmul fast float %9865, 5.000000e-01
  %9950 = fadd fast float %9949, 5.000000e-01
  %9951 = call float @dx.op.unary.f32(i32 22, float %9950)  ; Frc(value)
  %9952 = call float @dx.op.unary.f32(i32 27, float %9951)  ; Round_ni(value)
  %9953 = call float @dx.op.unary.f32(i32 22, float %9951)  ; Frc(value)
  %9954 = fmul fast float %9953, 2.000000e+00
  %9955 = fadd fast float %9954, -1.000000e+00
  %9956 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %45, float %9817, float %9818, float %9952, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9957 = extractvalue %dx.types.ResRet.f32 %9956, 0
  %9958 = extractvalue %dx.types.ResRet.f32 %9956, 1
  %9959 = extractvalue %dx.types.ResRet.f32 %9956, 2
  %9960 = extractvalue %dx.types.ResRet.f32 %9956, 3
  %9961 = fadd fast float %9957, -5.000000e-01
  %9962 = fadd fast float %9959, -5.000000e-01
  %9963 = fmul fast float %9961, 0xBFD5555560000000
  %9964 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %9962, float %9963)  ; FMad(a,b,c)
  %9965 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %9958, float 0.000000e+00)  ; FMad(a,b,c)
  %9966 = fadd fast float %9965, %9960
  %9967 = fmul fast float %9961, -7.500000e-01
  %9968 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %9962, float %9967)  ; FMad(a,b,c)
  %9969 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %9958, float 0.000000e+00)  ; FMad(a,b,c)
  %9970 = fadd fast float %9969, %9960
  %9971 = call float @dx.op.binary.f32(i32 35, float %9964, float -1.000000e+00)  ; FMax(a,b)
  %9972 = call float @dx.op.binary.f32(i32 35, float %9966, float -1.000000e+00)  ; FMax(a,b)
  %9973 = call float @dx.op.binary.f32(i32 35, float %9968, float -1.000000e+00)  ; FMax(a,b)
  %9974 = call float @dx.op.binary.f32(i32 35, float %9970, float -1.000000e+00)  ; FMax(a,b)
  %9975 = call float @dx.op.binary.f32(i32 36, float %9971, float 1.000000e+00)  ; FMin(a,b)
  %9976 = call float @dx.op.binary.f32(i32 36, float %9972, float 1.000000e+00)  ; FMin(a,b)
  %9977 = call float @dx.op.binary.f32(i32 36, float %9973, float 1.000000e+00)  ; FMin(a,b)
  %9978 = call float @dx.op.binary.f32(i32 36, float %9974, float 1.000000e+00)  ; FMin(a,b)
  %9979 = fcmp fast olt float %9975, 0x3FEFFF8020000000
  br i1 %9979, label %9980, label %10095, !dx.controlflow.hints !174

; <label>:9980                                    ; preds = %9947
  %9981 = extractvalue %dx.types.CBufRet.f32 %9863, 3
  %9982 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %9983 = extractvalue %dx.types.CBufRet.f32 %9982, 0
  %9984 = extractvalue %dx.types.CBufRet.f32 %9982, 1
  %9985 = extractvalue %dx.types.CBufRet.f32 %9982, 2
  %9986 = extractvalue %dx.types.CBufRet.f32 %9982, 3
  %9987 = fsub fast float %9983, %9975
  %9988 = fsub fast float %9984, %9976
  %9989 = fsub fast float %9985, %9977
  %9990 = fsub fast float %9986, %9978
  %9991 = fmul fast float %9987, %9981
  %9992 = fmul fast float %9988, %9981
  %9993 = fmul fast float %9989, %9981
  %9994 = fmul fast float %9990, %9981
  %9995 = fadd fast float %9991, %9975
  %9996 = fadd fast float %9992, %9976
  %9997 = fsub fast float -0.000000e+00, %9996
  %9998 = fadd fast float %9993, %9977
  %9999 = fadd fast float %9994, %9978
  %10000 = fmul fast float %9995, %9995
  %10001 = fsub fast float %9996, %10000
  %10002 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %10001)  ; FMax(a,b)
  %10003 = fdiv fast float 1.000000e+00, %10002
  %10004 = fmul fast float %9996, %9995
  %10005 = fsub fast float %9998, %10004
  %10006 = fsub fast float %9955, %9995
  %10007 = fmul fast float %9955, %9955
  %10008 = fsub fast float %10007, %9996
  %10009 = fmul fast float %10006, %10003
  %10010 = fmul fast float %10009, %10005
  %10011 = fsub fast float %10008, %10010
  %10012 = fmul fast float %9996, %9996
  %10013 = fsub fast float %9999, %10012
  %10014 = fmul fast float %10005, %10005
  %10015 = fmul fast float %10014, %10003
  %10016 = fsub fast float %10013, %10015
  %10017 = fdiv fast float %10011, %10016
  %10018 = fmul fast float %10005, %10017
  %10019 = fsub fast float %10006, %10018
  %10020 = fmul fast float %10019, %10003
  %10021 = fmul fast float %10020, %9995
  %10022 = fsub fast float 1.000000e+00, %10021
  %10023 = fmul fast float %9996, %10017
  %10024 = fsub fast float %10022, %10023
  %10025 = fmul fast float %10020, %10020
  %10026 = fmul fast float %10017, 4.000000e+00
  %10027 = fmul fast float %10026, %10024
  %10028 = fsub fast float %10025, %10027
  %10029 = call float @dx.op.unary.f32(i32 24, float %10028)  ; Sqrt(value)
  %10030 = fcmp fast oge float %10020, 0.000000e+00
  %10031 = fsub fast float -0.000000e+00, %10029
  %10032 = select i1 %10030, float %10031, float %10029
  %10033 = fsub fast float %10032, %10020
  %10034 = fdiv fast float %10033, %10017
  %10035 = fdiv fast float %10024, %10033
  %10036 = fmul fast float %10034, 5.000000e-01
  %10037 = fmul fast float %10035, 2.000000e+00
  %10038 = select i1 %10030, float %10036, float %10037
  %10039 = select i1 %10030, float %10037, float %10036
  %10040 = call float @dx.op.binary.f32(i32 35, float %10038, float %10039)  ; FMax(a,b)
  %10041 = call float @dx.op.binary.f32(i32 36, float %10038, float %10039)  ; FMin(a,b)
  %10042 = fcmp fast ogt float %9955, %10041
  br i1 %10042, label %10043, label %10053

; <label>:10043                                   ; preds = %9980
  %10044 = fsub fast float %9955, %10041
  %10045 = fsub fast float %10040, %10041
  %10046 = fmul fast float %10044, %10045
  %10047 = fmul fast float %10040, %9955
  %10048 = fadd fast float %10040, %9955
  %10049 = fmul fast float %10048, %9995
  %10050 = fadd fast float %10047, %9996
  %10051 = fsub fast float %10050, %10049
  %10052 = fdiv fast float %10051, %10046
  br label %10053

; <label>:10053                                   ; preds = %10043, %9980
  %10054 = phi float [ %10052, %10043 ], [ 0.000000e+00, %9980 ]
  %10055 = fcmp fast ogt float %9955, %10040
  %10056 = fsub fast float %9955, %10040
  br i1 %10055, label %10057, label %10067

; <label>:10057                                   ; preds = %10053
  %10058 = fsub fast float %10040, %10041
  %10059 = fmul fast float %10058, %10056
  %10060 = fmul fast float %10041, %9955
  %10061 = fadd fast float %10041, %9955
  %10062 = fmul fast float %10061, %9995
  %10063 = fsub fast float %9997, %10060
  %10064 = fadd fast float %10063, %10062
  %10065 = fdiv fast float %10064, %10059
  %10066 = fadd fast float %10065, %10054
  br label %10067

; <label>:10067                                   ; preds = %10057, %10053
  %10068 = phi float [ %10066, %10057 ], [ %10054, %10053 ]
  %10069 = fsub fast float %9955, %10041
  %10070 = fmul fast float %10069, %10056
  %10071 = fmul fast float %10041, %10040
  %10072 = fadd fast float %10041, %10040
  %10073 = fmul fast float %10072, %9995
  %10074 = fadd fast float %10071, %9996
  %10075 = fsub fast float %10074, %10073
  %10076 = fdiv fast float %10075, %10070
  %10077 = call float @dx.op.unary.f32(i32 7, float %10068)  ; Saturate(value)
  %10078 = fcmp fast oeq float %8746, 0.000000e+00
  %10079 = extractvalue %dx.types.CBufRet.f32 %9863, 0
  %10080 = fcmp fast oeq float %10079, 0.000000e+00
  %10081 = or i1 %10078, %10080
  %10082 = fmul fast float %10079, 2.000000e+00
  %10083 = fadd fast float %9864, %9865
  %10084 = fdiv fast float %10083, %10082
  %10085 = call float @dx.op.unary.f32(i32 7, float %10084)  ; Saturate(value)
  %10086 = fmul fast float %10085, 2.000000e+00
  %10087 = fsub fast float 3.000000e+00, %10086
  %10088 = fmul fast float %10085, %10085
  %10089 = fmul fast float %10088, %10087
  %10090 = select i1 %10081, float 1.000000e+00, float %10089
  %10091 = fmul fast float %10076, %8746
  %10092 = fadd fast float %10077, %10091
  %10093 = call float @dx.op.unary.f32(i32 7, float %10092)  ; Saturate(value)
  %10094 = fmul fast float %10090, %10093
  br label %10095

; <label>:10095                                   ; preds = %10067, %9947
  %10096 = phi float [ %10094, %10067 ], [ 0.000000e+00, %9947 ]
  %10097 = fsub fast float 1.000000e+00, %10096
  %10098 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %45, float %9817, float %9818, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10099 = extractvalue %dx.types.ResRet.f32 %10098, 0
  %10100 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %10101 = extractvalue %dx.types.CBufRet.i32 %10100, 2
  %10102 = icmp eq i32 %10101, 0
  br i1 %10102, label %10108, label %10103

; <label>:10103                                   ; preds = %10095
  %10104 = call float @dx.op.unary.f32(i32 7, float %10096)  ; Saturate(value)
  %10105 = fadd fast float %10099, -1.000000e+00
  %10106 = fmul fast float %10104, %10105
  %10107 = fadd fast float %10106, 1.000000e+00
  br label %10108

; <label>:10108                                   ; preds = %10103, %10095
  %10109 = phi float [ %10107, %10103 ], [ %10097, %10095 ]
  br i1 %9871, label %10110, label %10128

; <label>:10110                                   ; preds = %10108
  %10111 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %10112 = extractvalue %dx.types.CBufRet.f32 %10111, 1
  %10113 = fsub fast float %9948, %10112
  %10114 = call float @dx.op.unary.f32(i32 7, float %10113)  ; Saturate(value)
  %10115 = fsub fast float %9948, %9870
  %10116 = call float @dx.op.unary.f32(i32 7, float %10115)  ; Saturate(value)
  %10117 = fsub fast float %10114, %10116
  %10118 = fsub fast float %9950, %10116
  %10119 = fdiv fast float %10118, %10117
  %10120 = call float @dx.op.unary.f32(i32 7, float %10119)  ; Saturate(value)
  %10121 = fmul fast float %10120, 2.000000e+00
  %10122 = fsub fast float 3.000000e+00, %10121
  %10123 = fsub fast float %10099, %10109
  %10124 = fmul fast float %10120, %10120
  %10125 = fmul fast float %10124, %10123
  %10126 = fmul fast float %10125, %10122
  %10127 = fadd fast float %10126, %10109
  br label %10128

; <label>:10128                                   ; preds = %10110, %10108
  %10129 = phi float [ %10127, %10110 ], [ %10109, %10108 ]
  %10130 = call float @dx.op.binary.f32(i32 35, float %10099, float %10129)  ; FMax(a,b)
  %10131 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %10132 = extractvalue %dx.types.CBufRet.i32 %10131, 2
  %10133 = and i32 %10132, 1
  %10134 = icmp eq i32 %10133, 0
  %10135 = fcmp fast une float %10130, 1.000000e+00
  %10136 = and i1 %10135, %10134
  br i1 %10136, label %10137, label %10156

; <label>:10137                                   ; preds = %10128
  %10138 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %45, float %9817, float %9818, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10139 = extractvalue %dx.types.ResRet.f32 %10138, 0
  %10140 = extractvalue %dx.types.ResRet.f32 %10138, 1
  %10141 = extractvalue %dx.types.ResRet.f32 %10138, 2
  %10142 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %10143 = extractvalue %dx.types.CBufRet.f32 %10142, 1
  %10144 = fmul fast float %10143, %10139
  %10145 = fmul fast float %10143, %10140
  %10146 = fmul fast float %10143, %10141
  %10147 = fcmp fast ogt float %10099, 0x3FEFFF2E40000000
  %10148 = fsub fast float 1.000000e+00, %10130
  %10149 = fsub fast float 1.000000e+00, %10099
  %10150 = fdiv fast float %10148, %10149
  %10151 = call float @dx.op.unary.f32(i32 7, float %10150)  ; Saturate(value)
  %10152 = select i1 %10147, float 0.000000e+00, float %10151
  %10153 = fmul fast float %10144, %10152
  %10154 = fmul fast float %10145, %10152
  %10155 = fmul fast float %10146, %10152
  br label %10156

; <label>:10156                                   ; preds = %10137, %10128
  %10157 = phi float [ 0.000000e+00, %10128 ], [ %10153, %10137 ]
  %10158 = phi float [ 0.000000e+00, %10128 ], [ %10154, %10137 ]
  %10159 = phi float [ 0.000000e+00, %10128 ], [ %10155, %10137 ]
  %10160 = fmul fast float %10157, %8742
  %10161 = fmul fast float %10158, %8743
  %10162 = fmul fast float %10159, %8744
  %10163 = fmul fast float %10130, %9792
  %10164 = call float @dx.op.dot3.f32(i32 55, float %10130, float %10130, float %10130, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10165 = call float @dx.op.dot3.f32(i32 55, float %10160, float %10161, float %10162, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10166 = select i1 %294, float %10164, float %10130
  %10167 = select i1 %294, float 1.000000e+00, float %10130
  %10168 = select i1 %294, float %10165, float %10160
  %10169 = select i1 %294, float 0.000000e+00, float %10161
  %10170 = select i1 %294, float 0.000000e+00, float %10162
  %10171 = fmul fast float %10166, %9804
  %10172 = fmul fast float %10166, %9805
  %10173 = fmul fast float %10167, %9806
  %10174 = fadd fast float %10171, %10168
  %10175 = fadd fast float %10172, %10169
  %10176 = fadd fast float %10170, %10173
  %10177 = fmul fast float %10166, %9807
  %10178 = fmul fast float %10166, %9808
  %10179 = fmul fast float %10167, %9809
  br label %10180

; <label>:10180                                   ; preds = %10156, %9813, %9782, %9014
  %10181 = phi float [ %9019, %9014 ], [ %9804, %9782 ], [ %10174, %10156 ], [ %9804, %9813 ]
  %10182 = phi float [ %9020, %9014 ], [ %9805, %9782 ], [ %10175, %10156 ], [ %9805, %9813 ]
  %10183 = phi float [ %9021, %9014 ], [ %9806, %9782 ], [ %10176, %10156 ], [ %9806, %9813 ]
  %10184 = phi float [ %9022, %9014 ], [ %9807, %9782 ], [ %10177, %10156 ], [ %9807, %9813 ]
  %10185 = phi float [ %9023, %9014 ], [ %9808, %9782 ], [ %10178, %10156 ], [ %9808, %9813 ]
  %10186 = phi float [ %9024, %9014 ], [ %9809, %9782 ], [ %10179, %10156 ], [ %9809, %9813 ]
  %10187 = phi float [ %9025, %9014 ], [ %9792, %9782 ], [ %10163, %10156 ], [ %9792, %9813 ]
  %10188 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %10189 = extractvalue %dx.types.CBufRet.f32 %10188, 2
  %10190 = extractvalue %dx.types.CBufRet.f32 %10188, 3
  %10191 = fmul fast float %10189, %111
  %10192 = fmul fast float %10190, %112
  %10193 = call float @dx.op.unary.f32(i32 7, float %10191)  ; Saturate(value)
  %10194 = call float @dx.op.unary.f32(i32 7, float %10192)  ; Saturate(value)
  %10195 = select i1 %8756, i32 2, i32 0
  %10196 = or i32 %10195, 1
  %10197 = uitofp i32 %10196 to float
  %10198 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %45, float %10193, float %10194, float %10197, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %10199 = extractvalue %dx.types.ResRet.f32 %10198, 0
  %10200 = extractvalue %dx.types.ResRet.f32 %10198, 1
  %10201 = extractvalue %dx.types.ResRet.f32 %10198, 2
  %10202 = extractvalue %dx.types.ResRet.f32 %10198, 3
  %10203 = add nuw nsw i32 %10195, 2
  %10204 = uitofp i32 %10203 to float
  %10205 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %45, float %10193, float %10194, float %10204, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %10206 = extractvalue %dx.types.ResRet.f32 %10205, 0
  %10207 = extractvalue %dx.types.ResRet.f32 %10205, 1
  %10208 = extractvalue %dx.types.ResRet.f32 %10205, 2
  %10209 = extractvalue %dx.types.ResRet.f32 %10205, 3
  %10210 = call float @dx.op.binary.f32(i32 35, float %10200, float %10201)  ; FMax(a,b)
  %10211 = call float @dx.op.binary.f32(i32 35, float %10199, float %10210)  ; FMax(a,b)
  %10212 = call float @dx.op.binary.f32(i32 35, float %10211, float %10202)  ; FMax(a,b)
  %10213 = call float @dx.op.binary.f32(i32 36, float %10207, float %10208)  ; FMin(a,b)
  %10214 = call float @dx.op.binary.f32(i32 36, float %10206, float %10213)  ; FMin(a,b)
  %10215 = call float @dx.op.binary.f32(i32 36, float %10214, float %10209)  ; FMin(a,b)
  %10216 = fmul fast float %10212, 2.550000e+02
  %10217 = fadd fast float %10216, 0x3F70101020000000
  %10218 = fptoui float %10217 to i32
  %10219 = fmul fast float %10215, 2.550000e+02
  %10220 = fadd fast float %10219, 0x3F70101020000000
  %10221 = fptoui float %10220 to i32
  %10222 = icmp ult i32 %10218, %10221
  br i1 %10222, label %10223, label %10392

; <label>:10223                                   ; preds = %10180
  %10224 = fcmp fast ogt float %97, 9.843750e-01
  %10225 = fadd fast float %9018, -4.000000e+00
  %10226 = select i1 %10224, float -4.000000e+00, float %10225
  %10227 = call float @dx.op.binary.f32(i32 35, float %10226, float 0.000000e+00)  ; FMax(a,b)
  %10228 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %10229 = extractvalue %dx.types.CBufRet.f32 %10228, 0
  %10230 = fadd fast float %10229, %10227
  %10231 = extractvalue %dx.types.CBufRet.f32 %10228, 2
  %10232 = fmul fast float %10230, %10231
  %10233 = call float @dx.op.unary.f32(i32 23, float %10232)  ; Log(value)
  %10234 = extractvalue %dx.types.CBufRet.f32 %10228, 3
  %10235 = fmul fast float %10234, %10233
  %10236 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %10237 = extractvalue %dx.types.CBufRet.f32 %10236, 2
  %10238 = fmul fast float %10235, %10237
  %10239 = call float @dx.op.unary.f32(i32 7, float %10238)  ; Saturate(value)
  %10240 = uitofp i32 %10218 to float
  %10241 = uitofp i32 %10221 to float
  %10242 = fadd fast float %10240, 5.000000e-01
  %10243 = fadd fast float %10241, 5.000000e-01
  %10244 = fmul fast float %10237, %10242
  %10245 = fmul fast float %10237, %10243
  %10246 = fadd fast float %10244, 0x3F0FFB4800000000
  %10247 = fadd fast float %10245, 0xBF0FFB4800000000
  %10248 = call float @dx.op.binary.f32(i32 35, float %10239, float %10246)  ; FMax(a,b)
  %10249 = call float @dx.op.binary.f32(i32 36, float %10248, float %10247)  ; FMin(a,b)
  %10250 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %10251 = extractvalue %dx.types.CBufRet.f32 %10250, 1
  %10252 = extractvalue %dx.types.CBufRet.f32 %10250, 2
  %10253 = extractvalue %dx.types.CBufRet.f32 %10250, 0
  %10254 = select i1 %8756, float %10253, float 0.000000e+00
  %10255 = fmul fast float %10251, %10249
  %10256 = fadd fast float %10254, %10255
  %10257 = fadd fast float %10254, %10252
  %10258 = fsub fast float %10251, %10252
  %10259 = fadd fast float %10258, %10254
  %10260 = call float @dx.op.binary.f32(i32 35, float %10256, float %10257)  ; FMax(a,b)
  %10261 = call float @dx.op.binary.f32(i32 36, float %10260, float %10259)  ; FMin(a,b)
  %10262 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %43, float %10193, float %10194, float %10261, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10263 = extractvalue %dx.types.ResRet.f32 %10262, 0
  %10264 = extractvalue %dx.types.ResRet.f32 %10262, 1
  %10265 = extractvalue %dx.types.ResRet.f32 %10262, 2
  %10266 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %10267 = extractvalue %dx.types.CBufRet.i32 %10266, 0
  %10268 = extractvalue %dx.types.CBufRet.i32 %10266, 1
  %10269 = uitofp i32 %10267 to float
  %10270 = uitofp i32 %10268 to float
  %10271 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %10272 = extractvalue %dx.types.CBufRet.f32 %10271, 0
  %10273 = extractvalue %dx.types.CBufRet.f32 %10271, 1
  %10274 = fmul fast float %10269, %10193
  %10275 = fmul fast float %10270, %10194
  %10276 = fadd fast float %10274, -5.000000e-01
  %10277 = fadd fast float %10275, -5.000000e-01
  %10278 = call float @dx.op.unary.f32(i32 22, float %10276)  ; Frc(value)
  %10279 = call float @dx.op.unary.f32(i32 22, float %10277)  ; Frc(value)
  %10280 = fmul fast float %10278, %10278
  %10281 = fmul fast float %10280, %10278
  %10282 = fsub fast float 3.000000e+00, %10278
  %10283 = fmul fast float %10280, %10282
  %10284 = fmul fast float %10278, 3.000000e+00
  %10285 = fmul fast float %10281, 3.000000e+00
  %10286 = fmul fast float %10280, 6.000000e+00
  %10287 = fsub fast float %10285, %10286
  %10288 = fadd fast float %10287, 4.000000e+00
  %10289 = fmul fast float %10288, 0x3FC5555560000000
  %10290 = fmul fast float %10281, -3.000000e+00
  %10291 = fadd fast float %10280, %10278
  %10292 = fmul fast float %10291, 3.000000e+00
  %10293 = fadd fast float %10290, 1.000000e+00
  %10294 = fadd fast float %10293, %10292
  %10295 = fmul fast float %10281, 0x3FC5555560000000
  %10296 = fmul fast float %10279, %10279
  %10297 = fmul fast float %10296, %10279
  %10298 = fsub fast float 3.000000e+00, %10279
  %10299 = fmul fast float %10296, %10298
  %10300 = fmul fast float %10279, 3.000000e+00
  %10301 = fmul fast float %10297, 3.000000e+00
  %10302 = fmul fast float %10296, 6.000000e+00
  %10303 = fsub fast float %10301, %10302
  %10304 = fadd fast float %10303, 4.000000e+00
  %10305 = fmul fast float %10304, 0x3FC5555560000000
  %10306 = fmul fast float %10297, -3.000000e+00
  %10307 = fadd fast float %10296, %10279
  %10308 = fmul fast float %10307, 3.000000e+00
  %10309 = fadd fast float %10306, 1.000000e+00
  %10310 = fadd fast float %10309, %10308
  %10311 = fmul fast float %10297, 0x3FC5555560000000
  %10312 = fadd fast float %10278, 1.000000e+00
  %10313 = fsub fast float 1.000000e+00, %10284
  %10314 = fadd fast float %10313, %10283
  %10315 = fadd fast float %10314, %10288
  %10316 = fmul fast float %10315, 0x3FC5555560000000
  %10317 = fdiv fast float %10289, %10316
  %10318 = fsub fast float %10312, %10317
  %10319 = fsub fast float 1.000000e+00, %10278
  %10320 = fadd fast float %10294, %10281
  %10321 = fmul fast float %10320, 0x3FC5555560000000
  %10322 = fdiv fast float %10295, %10321
  %10323 = fadd fast float %10319, %10322
  %10324 = fadd fast float %10279, 1.000000e+00
  %10325 = fsub fast float 1.000000e+00, %10300
  %10326 = fadd fast float %10325, %10299
  %10327 = fadd fast float %10326, %10304
  %10328 = fmul fast float %10327, 0x3FC5555560000000
  %10329 = fdiv fast float %10305, %10328
  %10330 = fsub fast float %10324, %10329
  %10331 = fsub fast float 1.000000e+00, %10279
  %10332 = fadd fast float %10310, %10297
  %10333 = fmul fast float %10332, 0x3FC5555560000000
  %10334 = fdiv fast float %10311, %10333
  %10335 = fadd fast float %10334, %10331
  %10336 = fmul fast float %10318, %10272
  %10337 = fsub fast float %10193, %10336
  %10338 = fmul fast float %10323, %10272
  %10339 = fadd fast float %10338, %10193
  %10340 = fmul fast float %10335, %10273
  %10341 = fadd fast float %10340, %10194
  %10342 = fmul fast float %10330, %10273
  %10343 = fsub fast float %10194, %10342
  %10344 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %43, float %10337, float %10343, float %10261, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10345 = extractvalue %dx.types.ResRet.f32 %10344, 0
  %10346 = extractvalue %dx.types.ResRet.f32 %10344, 1
  %10347 = extractvalue %dx.types.ResRet.f32 %10344, 2
  %10348 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %43, float %10339, float %10343, float %10261, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10349 = extractvalue %dx.types.ResRet.f32 %10348, 0
  %10350 = extractvalue %dx.types.ResRet.f32 %10348, 1
  %10351 = extractvalue %dx.types.ResRet.f32 %10348, 2
  %10352 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %43, float %10337, float %10341, float %10261, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10353 = extractvalue %dx.types.ResRet.f32 %10352, 0
  %10354 = extractvalue %dx.types.ResRet.f32 %10352, 1
  %10355 = extractvalue %dx.types.ResRet.f32 %10352, 2
  %10356 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %43, float %10339, float %10341, float %10261, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10357 = extractvalue %dx.types.ResRet.f32 %10356, 0
  %10358 = extractvalue %dx.types.ResRet.f32 %10356, 1
  %10359 = extractvalue %dx.types.ResRet.f32 %10356, 2
  %10360 = fsub fast float %10353, %10345
  %10361 = fsub fast float %10354, %10346
  %10362 = fsub fast float %10355, %10347
  %10363 = fmul fast float %10360, %10333
  %10364 = fmul fast float %10361, %10333
  %10365 = fmul fast float %10362, %10333
  %10366 = fadd fast float %10363, %10345
  %10367 = fadd fast float %10364, %10346
  %10368 = fadd fast float %10365, %10347
  %10369 = fsub fast float %10357, %10349
  %10370 = fsub fast float %10358, %10350
  %10371 = fsub fast float %10359, %10351
  %10372 = fmul fast float %10369, %10333
  %10373 = fmul fast float %10370, %10333
  %10374 = fmul fast float %10371, %10333
  %10375 = fsub fast float %10349, %10366
  %10376 = fadd fast float %10375, %10372
  %10377 = fsub fast float %10350, %10367
  %10378 = fadd fast float %10377, %10373
  %10379 = fsub fast float %10351, %10368
  %10380 = fadd fast float %10379, %10374
  %10381 = fmul fast float %10376, %10321
  %10382 = fmul fast float %10378, %10321
  %10383 = fmul fast float %10380, %10321
  %10384 = fadd fast float %10381, %10366
  %10385 = fadd fast float %10382, %10367
  %10386 = fadd fast float %10383, %10368
  %10387 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %10388 = extractvalue %dx.types.CBufRet.f32 %10387, 1
  %10389 = fmul fast float %10384, %10388
  %10390 = fmul fast float %10385, %10388
  %10391 = fmul fast float %10386, %10388
  br label %10392

; <label>:10392                                   ; preds = %10223, %10180
  %10393 = phi float [ %10263, %10223 ], [ 1.000000e+00, %10180 ]
  %10394 = phi float [ %10264, %10223 ], [ 1.000000e+00, %10180 ]
  %10395 = phi float [ %10265, %10223 ], [ 1.000000e+00, %10180 ]
  %10396 = phi float [ %10389, %10223 ], [ 0.000000e+00, %10180 ]
  %10397 = phi float [ %10390, %10223 ], [ 0.000000e+00, %10180 ]
  %10398 = phi float [ %10391, %10223 ], [ 0.000000e+00, %10180 ]
  %10399 = fmul fast float %10396, %8742
  %10400 = fmul fast float %10397, %8743
  %10401 = fmul fast float %10398, %8744
  %10402 = fmul fast float %10393, %10187
  %10403 = call float @dx.op.dot3.f32(i32 55, float %10393, float %10394, float %10395, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10404 = call float @dx.op.dot3.f32(i32 55, float %10399, float %10400, float %10401, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10405 = select i1 %294, float %10403, float %10393
  %10406 = select i1 %294, float %10403, float %10394
  %10407 = select i1 %294, float 1.000000e+00, float %10395
  %10408 = select i1 %294, float %10404, float %10399
  %10409 = select i1 %294, float 0.000000e+00, float %10400
  %10410 = select i1 %294, float 0.000000e+00, float %10401
  %10411 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %10412 = extractvalue %dx.types.CBufRet.i32 %10411, 3
  %10413 = and i32 %10412, 3
  %10414 = icmp ne i32 %10413, 0
  %10415 = and i32 %10412, 4
  %10416 = icmp ne i32 %10415, 0
  %10417 = and i1 %10414, %10416
  %10418 = and i1 %294, %10417
  br i1 %10418, label %10419, label %10425

; <label>:10419                                   ; preds = %10392
  %10420 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %10421 = extractvalue %dx.types.CBufRet.f32 %10420, 1
  %10422 = fadd fast float %10402, -1.000000e+00
  %10423 = fmul fast float %10421, %10422
  %10424 = fadd fast float %10423, 1.000000e+00
  br label %10425

; <label>:10425                                   ; preds = %10419, %10392
  %10426 = phi float [ %10424, %10419 ], [ %10402, %10392 ]
  %10427 = fadd fast float %10184, %10181
  %10428 = fmul fast float %10405, %10427
  %10429 = fadd fast float %10428, %10408
  %10430 = fadd fast float %10185, %10182
  %10431 = fmul fast float %10406, %10430
  %10432 = fadd fast float %10431, %10409
  %10433 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %10434 = extractvalue %dx.types.CBufRet.f32 %10433, 0
  br i1 %294, label %10435, label %10450

; <label>:10435                                   ; preds = %10425
  %10436 = fadd fast float %10429, %10432
  %10437 = fmul fast float %10434, %10436
  %10438 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %10439 = extractvalue %dx.types.CBufRet.f32 %10438, 3
  %10440 = extractvalue %dx.types.CBufRet.f32 %8726, 1
  %10441 = fsub fast float %8731, %8725
  %10442 = fadd fast float %10441, %8732
  %10443 = fsub fast float %10442, %10440
  %10444 = extractvalue %dx.types.CBufRet.f32 %8726, 2
  %10445 = fmul fast float %10443, %10444
  %10446 = call float @dx.op.unary.f32(i32 7, float %10445)  ; Saturate(value)
  %10447 = fsub fast float %10446, %10439
  %10448 = fmul fast float %10447, %10426
  %10449 = fadd fast float %10448, %10439
  br label %10476

; <label>:10450                                   ; preds = %10425
  %10451 = fadd fast float %10186, %10183
  %10452 = fmul fast float %10407, %10451
  %10453 = fadd fast float %10452, %10410
  %10454 = fmul fast float %10434, %10429
  %10455 = fmul fast float %10434, %10432
  %10456 = fmul fast float %10434, %10453
  %10457 = call float @dx.op.binary.f32(i32 35, float %10455, float %10456)  ; FMax(a,b)
  %10458 = call float @dx.op.binary.f32(i32 35, float %10454, float %10457)  ; FMax(a,b)
  %10459 = call float @dx.op.binary.f32(i32 35, float %8743, float %8744)  ; FMax(a,b)
  %10460 = call float @dx.op.binary.f32(i32 35, float %8742, float %10459)  ; FMax(a,b)
  %10461 = call float @dx.op.binary.f32(i32 35, float %10458, float %10460)  ; FMax(a,b)
  %10462 = fcmp fast ugt float %10461, 0x3F10000000000000
  br i1 %10462, label %10464, label %10463

; <label>:10463                                   ; preds = %10450
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %10464

; <label>:10464                                   ; preds = %10463, %10450
  %10465 = add i32 %51, 356
  %10466 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %10465, i32 undef)  ; BufferLoad(srv,index,wot)
  %10467 = extractvalue %dx.types.ResRet.i32 %10466, 0
  %10468 = and i32 %10467, 32
  %10469 = icmp eq i32 %10468, 0
  br i1 %10469, label %10476, label %10470

; <label>:10470                                   ; preds = %10464
  %10471 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %10472 = extractvalue %dx.types.CBufRet.f32 %10471, 0
  %10473 = fmul fast float %10472, 0x3FE99999A0000000
  %10474 = fadd fast float %10472, %10454
  %10475 = fadd fast float %10473, %10456
  br label %10476

; <label>:10476                                   ; preds = %10470, %10464, %10435
  %10477 = phi float [ 1.000000e+00, %10435 ], [ %8743, %10470 ], [ %8743, %10464 ]
  %10478 = phi float [ 1.000000e+00, %10435 ], [ %8744, %10470 ], [ %8744, %10464 ]
  %10479 = phi float [ %10437, %10435 ], [ %10474, %10470 ], [ %10454, %10464 ]
  %10480 = phi float [ %10449, %10435 ], [ %10455, %10470 ], [ %10455, %10464 ]
  %10481 = phi float [ 1.000000e+00, %10435 ], [ %10475, %10470 ], [ %10456, %10464 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %10482 = call float @dx.op.binary.f32(i32 36, float %10479, float 3.225500e+04)  ; FMin(a,b)
  %10483 = call float @dx.op.binary.f32(i32 36, float %10480, float 3.225500e+04)  ; FMin(a,b)
  %10484 = call float @dx.op.binary.f32(i32 36, float %10481, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %10482)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %10483)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %10484)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %10485 = call float @dx.op.binary.f32(i32 36, float %8742, float 3.225500e+04)  ; FMin(a,b)
  %10486 = call float @dx.op.binary.f32(i32 36, float %10477, float 3.225500e+04)  ; FMin(a,b)
  %10487 = call float @dx.op.binary.f32(i32 36, float %10478, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %10485)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %10486)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %10487)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

